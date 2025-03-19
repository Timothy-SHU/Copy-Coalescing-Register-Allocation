; ModuleID = 'arch/x86/kernel/ksysfs.c'
source_filename = "arch/x86/kernel/ksysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_ksysfs__281_401_boot_params_ksysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_ksysfs__281_401_boot_params_ksysfs_init3:\09\09\09"
module asm ".long\09__initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.13, %union.anon.20, i8, i8 }>
%union.anon.13 = type { %struct.anon.16 }
%struct.anon.16 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i8, i8, i16, i32, i64 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.setup_data = type { i64, i32, i32, [0 x i8] }
%struct.setup_indirect = type { i32, i32, i64, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable___initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3282 = internal global ptr @__initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"boot_params\00", align 1, !dbg !121
@kernel_kobj = external dso_local global ptr, align 8
@boot_params_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @boot_params_version_attrs, ptr @boot_params_data_attrs }, align 8, !dbg !127
@boot_params_version_attrs = internal global [2 x ptr] [ptr @boot_params_version_attr, ptr null], align 16, !dbg !3704
@boot_params_data_attrs = internal global [2 x ptr] [ptr @boot_params_data_attr, ptr null], align 16, !dbg !3725
@boot_params_version_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @version_show, ptr null }, align 8, !dbg !3709
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !3707
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1, !dbg !3723
@boot_params = external dso_local global %struct.boot_params, align 1
@boot_params_data_attr = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.3, i16 292 }, i64 4096, ptr null, ptr null, ptr @boot_params_data_read, ptr null, ptr null }, align 8, !dbg !3733
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !3728
@.str.4 = private unnamed_addr constant [11 x i8] c"setup_data\00", align 1, !dbg !3735
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !3740
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !3745
@data_attr = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.3, i16 292 }, i64 0, ptr null, ptr null, ptr @setup_data_data_read, ptr null, ptr null }, section ".data..ro_after_init", align 8, !dbg !3748
@setup_data_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @setup_data_type_attrs, ptr @setup_data_data_attrs }, align 8, !dbg !3750
@setup_data_type_attrs = internal global [2 x ptr] [ptr @type_attr, ptr null], align 16, !dbg !3752
@setup_data_data_attrs = internal global [2 x ptr] [ptr @data_attr, ptr null], align 16, !dbg !3760
@type_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !3756
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !3754
@.str.8 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1, !dbg !3758
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3282], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3() #0 section ".init.text" align 16 !dbg !3771 {
entry:
  %call = call i32 @boot_params_ksysfs_init() #15, !dbg !3774
  ret i32 %call, !dbg !3774
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @boot_params_ksysfs_init() #0 section ".init.text" align 16 !dbg !3775 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %boot_params_kobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3777, metadata !DIExpression()), !dbg !3783
  call void @llvm.lifetime.start.p0(i64 8, ptr %boot_params_kobj) #16, !dbg !3784
  call void @llvm.dbg.declare(metadata ptr %boot_params_kobj, metadata !3778, metadata !DIExpression()), !dbg !3785
  %0 = load ptr, ptr @kernel_kobj, align 8, !dbg !3786
  %call = call ptr @kobject_create_and_add(ptr noundef @.str, ptr noundef %0) #17, !dbg !3787
  store ptr %call, ptr %boot_params_kobj, align 8, !dbg !3788
  %1 = load ptr, ptr %boot_params_kobj, align 8, !dbg !3789
  %tobool = icmp ne ptr %1, null, !dbg !3789
  br i1 %tobool, label %if.end, label %if.then, !dbg !3791

if.then:                                          ; preds = %entry
  store i32 -12, ptr %ret, align 4, !dbg !3792
  br label %out, !dbg !3794

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %boot_params_kobj, align 8, !dbg !3795
  %call1 = call i32 @sysfs_create_group(ptr noundef %2, ptr noundef @boot_params_attr_group) #17, !dbg !3796
  store i32 %call1, ptr %ret, align 4, !dbg !3797
  %3 = load i32, ptr %ret, align 4, !dbg !3798
  %tobool2 = icmp ne i32 %3, 0, !dbg !3798
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3800

if.then3:                                         ; preds = %if.end
  br label %out_boot_params_kobj, !dbg !3801

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %boot_params_kobj, align 8, !dbg !3802
  %call5 = call i32 @create_setup_data_nodes(ptr noundef %4) #15, !dbg !3803
  store i32 %call5, ptr %ret, align 4, !dbg !3804
  %5 = load i32, ptr %ret, align 4, !dbg !3805
  %tobool6 = icmp ne i32 %5, 0, !dbg !3805
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3807

if.then7:                                         ; preds = %if.end4
  br label %out_create_group, !dbg !3808

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !3809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3809

out_create_group:                                 ; preds = %if.then7
  call void @llvm.dbg.label(metadata !3779), !dbg !3810
  %6 = load ptr, ptr %boot_params_kobj, align 8, !dbg !3811
  call void @sysfs_remove_group(ptr noundef %6, ptr noundef @boot_params_attr_group) #17, !dbg !3812
  br label %out_boot_params_kobj, !dbg !3812

out_boot_params_kobj:                             ; preds = %out_create_group, %if.then3
  call void @llvm.dbg.label(metadata !3780), !dbg !3813
  %7 = load ptr, ptr %boot_params_kobj, align 8, !dbg !3814
  call void @kobject_put(ptr noundef %7) #17, !dbg !3815
  br label %out, !dbg !3815

out:                                              ; preds = %out_boot_params_kobj, %if.then
  call void @llvm.dbg.label(metadata !3781), !dbg !3816
  %8 = load i32, ptr %ret, align 4, !dbg !3817
  store i32 %8, ptr %retval, align 4, !dbg !3818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3818

cleanup:                                          ; preds = %out, %if.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %boot_params_kobj) #16, !dbg !3819
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3819
  %9 = load i32, ptr %retval, align 4, !dbg !3819
  ret i32 %9, !dbg !3819
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3820 dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3823 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @create_setup_data_nodes(ptr noundef %parent) #0 section ".init.text" align 16 !dbg !3826 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %setup_data_kobj = alloca ptr, align 8
  %kobjp = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nr = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3830, metadata !DIExpression()), !dbg !3842
  call void @llvm.lifetime.start.p0(i64 8, ptr %setup_data_kobj) #16, !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %setup_data_kobj, metadata !3831, metadata !DIExpression()), !dbg !3844
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobjp) #16, !dbg !3843
  call void @llvm.dbg.declare(metadata ptr %kobjp, metadata !3832, metadata !DIExpression()), !dbg !3845
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #16, !dbg !3846
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !3834, metadata !DIExpression()), !dbg !3847
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3835, metadata !DIExpression()), !dbg !3849
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %j, metadata !3836, metadata !DIExpression()), !dbg !3850
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #16, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !3837, metadata !DIExpression()), !dbg !3851
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !3848
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3838, metadata !DIExpression()), !dbg !3852
  store i32 0, ptr %ret, align 4, !dbg !3852
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !3853
  store i64 %0, ptr %pa_data, align 8, !dbg !3854
  %1 = load i64, ptr %pa_data, align 8, !dbg !3855
  %tobool = icmp ne i64 %1, 0, !dbg !3855
  br i1 %tobool, label %if.end, label %if.then, !dbg !3857

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3858

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !3859
  %call = call ptr @kobject_create_and_add(ptr noundef @.str.4, ptr noundef %2) #17, !dbg !3860
  store ptr %call, ptr %setup_data_kobj, align 8, !dbg !3861
  %3 = load ptr, ptr %setup_data_kobj, align 8, !dbg !3862
  %tobool1 = icmp ne ptr %3, null, !dbg !3862
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3864

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !3865
  br label %out, !dbg !3867

if.end3:                                          ; preds = %if.end
  %4 = load i64, ptr %pa_data, align 8, !dbg !3868
  %call4 = call i32 @get_setup_data_total_num(i64 noundef %4, ptr noundef %nr) #15, !dbg !3869
  store i32 %call4, ptr %ret, align 4, !dbg !3870
  %5 = load i32, ptr %ret, align 4, !dbg !3871
  %tobool5 = icmp ne i32 %5, 0, !dbg !3871
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3873

if.then6:                                         ; preds = %if.end3
  br label %out_setup_data_kobj, !dbg !3874

if.end7:                                          ; preds = %if.end3
  %6 = load i32, ptr %nr, align 4, !dbg !3875
  %conv = sext i32 %6 to i64, !dbg !3875
  %call8 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !3876
  store ptr %call8, ptr %kobjp, align 8, !dbg !3877
  %7 = load ptr, ptr %kobjp, align 8, !dbg !3878
  %tobool9 = icmp ne ptr %7, null, !dbg !3878
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3880

if.then10:                                        ; preds = %if.end7
  store i32 -12, ptr %ret, align 4, !dbg !3881
  br label %out_setup_data_kobj, !dbg !3883

if.end11:                                         ; preds = %if.end7
  store i32 0, ptr %i, align 4, !dbg !3884
  br label %for.cond, !dbg !3886

for.cond:                                         ; preds = %for.inc, %if.end11
  %8 = load i32, ptr %i, align 4, !dbg !3887
  %9 = load i32, ptr %nr, align 4, !dbg !3889
  %cmp = icmp slt i32 %8, %9, !dbg !3890
  br i1 %cmp, label %for.body, label %for.end, !dbg !3891

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %setup_data_kobj, align 8, !dbg !3892
  %11 = load ptr, ptr %kobjp, align 8, !dbg !3894
  %12 = load i32, ptr %i, align 4, !dbg !3895
  %idx.ext = sext i32 %12 to i64, !dbg !3896
  %add.ptr = getelementptr ptr, ptr %11, i64 %idx.ext, !dbg !3896
  %13 = load i32, ptr %i, align 4, !dbg !3897
  %call13 = call i32 @create_setup_data_node(ptr noundef %10, ptr noundef %add.ptr, i32 noundef %13) #15, !dbg !3898
  store i32 %call13, ptr %ret, align 4, !dbg !3899
  %14 = load i32, ptr %ret, align 4, !dbg !3900
  %tobool14 = icmp ne i32 %14, 0, !dbg !3900
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3902

if.then15:                                        ; preds = %for.body
  br label %out_clean_nodes, !dbg !3903

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !3904

for.inc:                                          ; preds = %if.end16
  %15 = load i32, ptr %i, align 4, !dbg !3905
  %inc = add i32 %15, 1, !dbg !3905
  store i32 %inc, ptr %i, align 4, !dbg !3905
  br label %for.cond, !dbg !3906, !llvm.loop !3907

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %kobjp, align 8, !dbg !3911
  call void @kfree(ptr noundef %16) #17, !dbg !3912
  store i32 0, ptr %retval, align 4, !dbg !3913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3913

out_clean_nodes:                                  ; preds = %if.then15
  call void @llvm.dbg.label(metadata !3839), !dbg !3914
  %17 = load i32, ptr %i, align 4, !dbg !3915
  %sub = sub i32 %17, 1, !dbg !3917
  store i32 %sub, ptr %j, align 4, !dbg !3918
  br label %for.cond17, !dbg !3919

for.cond17:                                       ; preds = %for.inc23, %out_clean_nodes
  %18 = load i32, ptr %j, align 4, !dbg !3920
  %cmp18 = icmp sge i32 %18, 0, !dbg !3922
  br i1 %cmp18, label %for.body20, label %for.end24, !dbg !3923

for.body20:                                       ; preds = %for.cond17
  %19 = load ptr, ptr %kobjp, align 8, !dbg !3924
  %20 = load i32, ptr %j, align 4, !dbg !3925
  %idx.ext21 = sext i32 %20 to i64, !dbg !3926
  %add.ptr22 = getelementptr ptr, ptr %19, i64 %idx.ext21, !dbg !3926
  %21 = load ptr, ptr %add.ptr22, align 8, !dbg !3927
  call void @cleanup_setup_data_node(ptr noundef %21) #15, !dbg !3928
  br label %for.inc23, !dbg !3928

for.inc23:                                        ; preds = %for.body20
  %22 = load i32, ptr %j, align 4, !dbg !3929
  %dec = add i32 %22, -1, !dbg !3929
  store i32 %dec, ptr %j, align 4, !dbg !3929
  br label %for.cond17, !dbg !3930, !llvm.loop !3931

for.end24:                                        ; preds = %for.cond17
  %23 = load ptr, ptr %kobjp, align 8, !dbg !3933
  call void @kfree(ptr noundef %23) #17, !dbg !3934
  br label %out_setup_data_kobj, !dbg !3934

out_setup_data_kobj:                              ; preds = %for.end24, %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !3840), !dbg !3935
  %24 = load ptr, ptr %setup_data_kobj, align 8, !dbg !3936
  call void @kobject_put(ptr noundef %24) #17, !dbg !3937
  br label %out, !dbg !3937

out:                                              ; preds = %out_setup_data_kobj, %if.then2
  call void @llvm.dbg.label(metadata !3841), !dbg !3938
  %25 = load i32, ptr %ret, align 4, !dbg !3939
  store i32 %25, ptr %retval, align 4, !dbg !3940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3940

cleanup:                                          ; preds = %out, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #16, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #16, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobjp) #16, !dbg !3941
  call void @llvm.lifetime.end.p0(i64 8, ptr %setup_data_kobj) #16, !dbg !3941
  %26 = load i32, ptr %retval, align 4, !dbg !3941
  ret i32 %26, !dbg !3941
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3942 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3945 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @version_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #4 align 16 !dbg !3946 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3948, metadata !DIExpression()), !dbg !3951
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3949, metadata !DIExpression()), !dbg !3952
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3950, metadata !DIExpression()), !dbg !3953
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3954
  %1 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 9), align 1, !dbg !3955
  %conv = zext i16 %1 to i32, !dbg !3956
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.2, i32 noundef %conv) #17, !dbg !3957
  %conv1 = sext i32 %call to i64, !dbg !3957
  ret i64 %conv1, !dbg !3958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3959 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @boot_params_data_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #4 align 16 !dbg !3963 {
entry:
  %fp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !3965, metadata !DIExpression()), !dbg !3971
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3966, metadata !DIExpression()), !dbg !3972
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !3967, metadata !DIExpression()), !dbg !3973
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3968, metadata !DIExpression()), !dbg !3974
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !3969, metadata !DIExpression()), !dbg !3975
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3970, metadata !DIExpression()), !dbg !3976
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3977
  %1 = load i64, ptr %off.addr, align 8, !dbg !3978
  %add.ptr = getelementptr i8, ptr @boot_params, i64 %1, !dbg !3979
  %2 = load i64, ptr %count.addr, align 8, !dbg !3980
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %add.ptr, i64 %2, i1 false), !dbg !3981
  %3 = load i64, ptr %count.addr, align 8, !dbg !3982
  ret i64 %3, !dbg !3983
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @get_setup_data_total_num(i64 noundef %pa_data, ptr noundef %nr) #0 section ".init.text" align 16 !dbg !3984 {
entry:
  %pa_data.addr = alloca i64, align 8
  %nr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %data = alloca ptr, align 8
  store i64 %pa_data, ptr %pa_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pa_data.addr, metadata !3988, metadata !DIExpression()), !dbg !4001
  store ptr %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3989, metadata !DIExpression()), !dbg !4002
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4003
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3990, metadata !DIExpression()), !dbg !4004
  store i32 0, ptr %ret, align 4, !dbg !4004
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4005
  call void @llvm.dbg.declare(metadata ptr %data, metadata !3991, metadata !DIExpression()), !dbg !4006
  %0 = load ptr, ptr %nr.addr, align 8, !dbg !4007
  store i32 0, ptr %0, align 4, !dbg !4008
  br label %while.cond, !dbg !4009

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %pa_data.addr, align 8, !dbg !4010
  %tobool = icmp ne i64 %1, 0, !dbg !4009
  br i1 %tobool, label %while.body, label %while.end, !dbg !4009

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %nr.addr, align 8, !dbg !4011
  %3 = load i32, ptr %2, align 4, !dbg !4013
  %add = add i32 %3, 1, !dbg !4013
  store i32 %add, ptr %2, align 4, !dbg !4013
  %4 = load i64, ptr %pa_data.addr, align 8, !dbg !4014
  %call = call ptr @memremap(i64 noundef %4, i64 noundef 16, i64 noundef 1) #17, !dbg !4015
  store ptr %call, ptr %data, align 8, !dbg !4016
  %5 = load ptr, ptr %data, align 8, !dbg !4017
  %tobool1 = icmp ne ptr %5, null, !dbg !4017
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4019

if.then:                                          ; preds = %while.body
  store i32 -12, ptr %ret, align 4, !dbg !4020
  br label %out, !dbg !4022

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %data, align 8, !dbg !4023
  %next = getelementptr inbounds %struct.setup_data, ptr %6, i32 0, i32 0, !dbg !4024
  %7 = load i64, ptr %next, align 8, !dbg !4024
  store i64 %7, ptr %pa_data.addr, align 8, !dbg !4025
  %8 = load ptr, ptr %data, align 8, !dbg !4026
  call void @memunmap(ptr noundef %8) #17, !dbg !4027
  br label %while.cond, !dbg !4009, !llvm.loop !4028

while.end:                                        ; preds = %while.cond
  br label %out, !dbg !4009

out:                                              ; preds = %while.end, %if.then
  call void @llvm.dbg.label(metadata !4000), !dbg !4030
  %9 = load i32, ptr %ret, align 4, !dbg !4031
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4032
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4032
  ret i32 %9, !dbg !4033
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4034 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4038, metadata !DIExpression()), !dbg !4042
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4039, metadata !DIExpression()), !dbg !4043
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4040, metadata !DIExpression()), !dbg !4044
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !4045
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !4041, metadata !DIExpression()), !dbg !4046
  %0 = load i64, ptr %n.addr, align 8, !dbg !4047
  %1 = load i64, ptr %size.addr, align 8, !dbg !4047
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !4047
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !4047
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !4047
  store i64 %4, ptr %bytes, align 8, !dbg !4047
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !4047
  %lnot = xor i1 %call, true, !dbg !4047
  %lnot1 = xor i1 %lnot, true, !dbg !4047
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4047
  %conv = sext i32 %lnot.ext to i64, !dbg !4047
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4047
  %tobool = icmp ne i64 %expval, 0, !dbg !4047
  br i1 %tobool, label %if.then, label %if.end, !dbg !4049

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4050
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4050

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4051
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !4053
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !4054

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !4055
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4056
  br i1 %8, label %if.then2, label %if.end4, !dbg !4057

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !4058
  %10 = load i32, ptr %flags.addr, align 4, !dbg !4059
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !4060
  store ptr %call3, ptr %retval, align 8, !dbg !4061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4061

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !4062
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4063
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !4064
  store ptr %call5, ptr %retval, align 8, !dbg !4065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4065

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !4066
  %13 = load ptr, ptr %retval, align 8, !dbg !4066
  ret ptr %13, !dbg !4066
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @create_setup_data_node(ptr noundef %parent, ptr noundef %kobjp, i32 noundef %nr) #0 section ".init.text" align 16 !dbg !4067 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %kobjp.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %size = alloca i64, align 8
  %kobj = alloca ptr, align 8
  %name = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4071, metadata !DIExpression()), !dbg !4079
  store ptr %kobjp, ptr %kobjp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobjp.addr, metadata !4072, metadata !DIExpression()), !dbg !4080
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4073, metadata !DIExpression()), !dbg !4081
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4082
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4074, metadata !DIExpression()), !dbg !4083
  store i32 0, ptr %ret, align 4, !dbg !4083
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !4084
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4075, metadata !DIExpression()), !dbg !4085
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #16, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !4076, metadata !DIExpression()), !dbg !4087
  call void @llvm.lifetime.start.p0(i64 16, ptr %name) #16, !dbg !4088
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4077, metadata !DIExpression()), !dbg !4089
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !4090
  %0 = load i32, ptr %nr.addr, align 4, !dbg !4091
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 16, ptr noundef @.str.6, i32 noundef %0) #17, !dbg !4092
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !4093
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4094
  %call2 = call ptr @kobject_create_and_add(ptr noundef %arraydecay1, ptr noundef %1) #17, !dbg !4095
  store ptr %call2, ptr %kobj, align 8, !dbg !4096
  %2 = load ptr, ptr %kobj, align 8, !dbg !4097
  %tobool = icmp ne ptr %2, null, !dbg !4097
  br i1 %tobool, label %if.end, label %if.then, !dbg !4099

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4100

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nr.addr, align 4, !dbg !4101
  %call3 = call i32 @get_setup_data_size(i32 noundef %3, ptr noundef %size) #15, !dbg !4102
  store i32 %call3, ptr %ret, align 4, !dbg !4103
  %4 = load i32, ptr %ret, align 4, !dbg !4104
  %tobool4 = icmp ne i32 %4, 0, !dbg !4104
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4106

if.then5:                                         ; preds = %if.end
  br label %out_kobj, !dbg !4107

if.end6:                                          ; preds = %if.end
  %5 = load i64, ptr %size, align 8, !dbg !4108
  store i64 %5, ptr getelementptr inbounds (%struct.bin_attribute, ptr @data_attr, i32 0, i32 1), align 8, !dbg !4109
  %6 = load ptr, ptr %kobj, align 8, !dbg !4110
  %call7 = call i32 @sysfs_create_group(ptr noundef %6, ptr noundef @setup_data_attr_group) #17, !dbg !4111
  store i32 %call7, ptr %ret, align 4, !dbg !4112
  %7 = load i32, ptr %ret, align 4, !dbg !4113
  %tobool8 = icmp ne i32 %7, 0, !dbg !4113
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4115

if.then9:                                         ; preds = %if.end6
  br label %out_kobj, !dbg !4116

if.end10:                                         ; preds = %if.end6
  %8 = load ptr, ptr %kobj, align 8, !dbg !4117
  %9 = load ptr, ptr %kobjp.addr, align 8, !dbg !4118
  store ptr %8, ptr %9, align 8, !dbg !4119
  store i32 0, ptr %retval, align 4, !dbg !4120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4120

out_kobj:                                         ; preds = %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !4078), !dbg !4121
  %10 = load ptr, ptr %kobj, align 8, !dbg !4122
  call void @kobject_put(ptr noundef %10) #17, !dbg !4123
  %11 = load i32, ptr %ret, align 4, !dbg !4124
  store i32 %11, ptr %retval, align 4, !dbg !4125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4125

cleanup:                                          ; preds = %out_kobj, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %name) #16, !dbg !4126
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #16, !dbg !4126
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !4126
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4126
  %12 = load i32, ptr %retval, align 4, !dbg !4126
  ret i32 %12, !dbg !4126
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4127 dso_local void @kfree(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cleanup_setup_data_node(ptr noundef %kobj) #0 section ".init.text" align 16 !dbg !4130 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4134
  call void @sysfs_remove_group(ptr noundef %0, ptr noundef @setup_data_attr_group) #17, !dbg !4135
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4136
  call void @kobject_put(ptr noundef %1) #17, !dbg !4137
  ret void, !dbg !4138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4139 dso_local ptr @memremap(i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4143 dso_local void @memunmap(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !4144 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !4151, !range !4152, !noundef !1023
  %tobool = trunc i8 %0 to i1, !dbg !4151
  %lnot = xor i1 %tobool, true, !dbg !4151
  %lnot1 = xor i1 %lnot, true, !dbg !4151
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4151
  %conv = sext i32 %lnot.ext to i64, !dbg !4151
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4151
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4151
  ret i1 %tobool2, !dbg !4153
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !4154 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4158, metadata !DIExpression()), !dbg !4163
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4159, metadata !DIExpression()), !dbg !4164
  %0 = load i64, ptr %size.addr, align 8, !dbg !4165
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4166
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4167

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4168
  %tobool = icmp ne i64 %2, 0, !dbg !4168
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4169

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !4170
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4160, metadata !DIExpression()), !dbg !4171
  %3 = load i64, ptr %size.addr, align 8, !dbg !4172
  %cmp = icmp ugt i64 %3, 8192, !dbg !4174
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4175

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4176
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4177
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !4178
  store ptr %call, ptr %retval, align 8, !dbg !4179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4179

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4180
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4180
  store i32 %call2, ptr %index, align 4, !dbg !4181
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4182
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4183
  %9 = ptrtoint ptr %8 to i64, !dbg !4183
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4184
  %idxprom = zext i32 %call3 to i64, !dbg !4185
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4185
  %10 = load i32, ptr %index, align 4, !dbg !4186
  %idxprom4 = zext i32 %10 to i64, !dbg !4185
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4185
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4185
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4187
  %13 = load i64, ptr %size.addr, align 8, !dbg !4188
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !4189
  store ptr %call6, ptr %retval, align 8, !dbg !4190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4190

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !4191
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4192
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4193
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !4194
  store ptr %call8, ptr %retval, align 8, !dbg !4195
  br label %return, !dbg !4195

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4196
  ret ptr %16, !dbg !4196
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4197 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4198 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !4199 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4203, metadata !DIExpression()), !dbg !4205
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4204, metadata !DIExpression()), !dbg !4206
  %0 = load i64, ptr %size.addr, align 8, !dbg !4207
  %tobool = icmp ne i64 %0, 0, !dbg !4207
  br i1 %tobool, label %if.end, label %if.then, !dbg !4209

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4211
  %cmp = icmp ule i64 %1, 8, !dbg !4213
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4214

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4215
  br label %return, !dbg !4215

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4216
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4218
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4219

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4220
  %cmp4 = icmp ule i64 %3, 96, !dbg !4221
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4222

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4223
  br label %return, !dbg !4223

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4224
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4226
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4227

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4228
  %cmp9 = icmp ule i64 %5, 192, !dbg !4229
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4230

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4231
  br label %return, !dbg !4231

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4232
  %cmp12 = icmp ule i64 %6, 8, !dbg !4234
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4235

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4236
  br label %return, !dbg !4236

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4237
  %cmp15 = icmp ule i64 %7, 16, !dbg !4239
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4240

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4241
  br label %return, !dbg !4241

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4242
  %cmp18 = icmp ule i64 %8, 32, !dbg !4244
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4245

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4246
  br label %return, !dbg !4246

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4247
  %cmp21 = icmp ule i64 %9, 64, !dbg !4249
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4250

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4251
  br label %return, !dbg !4251

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4252
  %cmp24 = icmp ule i64 %10, 128, !dbg !4254
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4255

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4256
  br label %return, !dbg !4256

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4257
  %cmp27 = icmp ule i64 %11, 256, !dbg !4259
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4260

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4261
  br label %return, !dbg !4261

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4262
  %cmp30 = icmp ule i64 %12, 512, !dbg !4264
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4265

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4266
  br label %return, !dbg !4266

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4267
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4269
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4270

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4271
  br label %return, !dbg !4271

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4272
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4274
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4275

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4276
  br label %return, !dbg !4276

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4277
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4279
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4280

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4281
  br label %return, !dbg !4281

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4282
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4284
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4285

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4286
  br label %return, !dbg !4286

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4287
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4289
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4290

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4291
  br label %return, !dbg !4291

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4292
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4294
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4295

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4296
  br label %return, !dbg !4296

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4297
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4299
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4300

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4301
  br label %return, !dbg !4301

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4302
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4304
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4305

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4306
  br label %return, !dbg !4306

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4307
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4309
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4310

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4311
  br label %return, !dbg !4311

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4312
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4314
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4315

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4316
  br label %return, !dbg !4316

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4317
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4319
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4320

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4321
  br label %return, !dbg !4321

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4322
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4324
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4325

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4326
  br label %return, !dbg !4326

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4327, !range !4152, !noundef !1023
  %tobool69 = trunc i8 %25 to i1, !dbg !4327
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4329

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4330

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_190() #21, !dbg !4331, !srcloc !4334
  unreachable, !dbg !4331

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4335

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4336

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4337

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4339

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4337

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !4341, !srcloc !4343
  br label %do.end75, !dbg !4341

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4337

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4344
  br label %return, !dbg !4344

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4345
  ret i32 %26, !dbg !4345
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4346 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !4352 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4356, metadata !DIExpression()), !dbg !4358
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4357, metadata !DIExpression()), !dbg !4359
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4360
  %and = and i32 %0, 17, !dbg !4360
  %cmp = icmp eq i32 %and, 0, !dbg !4360
  %lnot = xor i1 %cmp, true, !dbg !4360
  %lnot1 = xor i1 %lnot, true, !dbg !4360
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4360
  %conv = sext i32 %lnot.ext to i64, !dbg !4360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4360
  %tobool = icmp ne i64 %expval, 0, !dbg !4360
  br i1 %tobool, label %if.then, label %if.end, !dbg !4362

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4364
  %and2 = and i32 %1, 1, !dbg !4366
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4366
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4367

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4368
  br label %return, !dbg !4368

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4369
  br label %return, !dbg !4369

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4371
  ret i32 %2, !dbg !4371
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4372 dso_local void @__compiletime_assert_190() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4373 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @get_setup_data_size(i32 noundef %nr, ptr noundef %size) #0 section ".init.text" align 16 !dbg !4376 {
entry:
  %retval = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %size.addr = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %pa_next = alloca i64, align 8
  %indirect = alloca ptr, align 8
  %data = alloca ptr, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4381, metadata !DIExpression()), !dbg !4389
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4382, metadata !DIExpression()), !dbg !4390
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #16, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !4383, metadata !DIExpression()), !dbg !4392
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !4393
  store i64 %0, ptr %pa_data, align 8, !dbg !4392
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_next) #16, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %pa_next, metadata !4384, metadata !DIExpression()), !dbg !4394
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirect) #16, !dbg !4395
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !4385, metadata !DIExpression()), !dbg !4396
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4397
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4386, metadata !DIExpression()), !dbg !4398
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4387, metadata !DIExpression()), !dbg !4400
  store i32 0, ptr %i, align 4, !dbg !4400
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !4401
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4388, metadata !DIExpression()), !dbg !4402
  br label %while.cond, !dbg !4403

while.cond:                                       ; preds = %if.end25, %entry
  %1 = load i64, ptr %pa_data, align 8, !dbg !4404
  %tobool = icmp ne i64 %1, 0, !dbg !4403
  br i1 %tobool, label %while.body, label %while.end, !dbg !4403

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %pa_data, align 8, !dbg !4405
  %call = call ptr @memremap(i64 noundef %2, i64 noundef 16, i64 noundef 1) #17, !dbg !4407
  store ptr %call, ptr %data, align 8, !dbg !4408
  %3 = load ptr, ptr %data, align 8, !dbg !4409
  %tobool1 = icmp ne ptr %3, null, !dbg !4409
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4411

if.then:                                          ; preds = %while.body
  store i32 -12, ptr %retval, align 4, !dbg !4412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4412

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %data, align 8, !dbg !4413
  %next = getelementptr inbounds %struct.setup_data, ptr %4, i32 0, i32 0, !dbg !4414
  %5 = load i64, ptr %next, align 8, !dbg !4414
  store i64 %5, ptr %pa_next, align 8, !dbg !4415
  %6 = load i32, ptr %nr.addr, align 4, !dbg !4416
  %7 = load i32, ptr %i, align 4, !dbg !4418
  %cmp = icmp eq i32 %6, %7, !dbg !4419
  br i1 %cmp, label %if.then2, label %if.end25, !dbg !4420

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %data, align 8, !dbg !4421
  %type = getelementptr inbounds %struct.setup_data, ptr %8, i32 0, i32 1, !dbg !4424
  %9 = load i32, ptr %type, align 8, !dbg !4424
  %cmp3 = icmp eq i32 %9, -2147483648, !dbg !4425
  br i1 %cmp3, label %if.then4, label %if.else21, !dbg !4426

if.then4:                                         ; preds = %if.then2
  %10 = load ptr, ptr %data, align 8, !dbg !4427
  %len5 = getelementptr inbounds %struct.setup_data, ptr %10, i32 0, i32 2, !dbg !4429
  %11 = load i32, ptr %len5, align 4, !dbg !4429
  %conv = zext i32 %11 to i64, !dbg !4427
  %add = add i64 16, %conv, !dbg !4430
  %conv6 = trunc i64 %add to i32, !dbg !4431
  store i32 %conv6, ptr %len, align 4, !dbg !4432
  %12 = load ptr, ptr %data, align 8, !dbg !4433
  call void @memunmap(ptr noundef %12) #17, !dbg !4434
  %13 = load i64, ptr %pa_data, align 8, !dbg !4435
  %14 = load i32, ptr %len, align 4, !dbg !4436
  %conv7 = zext i32 %14 to i64, !dbg !4436
  %call8 = call ptr @memremap(i64 noundef %13, i64 noundef %conv7, i64 noundef 1) #17, !dbg !4437
  store ptr %call8, ptr %data, align 8, !dbg !4438
  %15 = load ptr, ptr %data, align 8, !dbg !4439
  %tobool9 = icmp ne ptr %15, null, !dbg !4439
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4441

if.then10:                                        ; preds = %if.then4
  store i32 -12, ptr %retval, align 4, !dbg !4442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4442

if.end11:                                         ; preds = %if.then4
  %16 = load ptr, ptr %data, align 8, !dbg !4443
  %data12 = getelementptr inbounds %struct.setup_data, ptr %16, i32 0, i32 3, !dbg !4444
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data12, i64 0, i64 0, !dbg !4443
  store ptr %arraydecay, ptr %indirect, align 8, !dbg !4445
  %17 = load ptr, ptr %indirect, align 8, !dbg !4446
  %type13 = getelementptr inbounds %struct.setup_indirect, ptr %17, i32 0, i32 0, !dbg !4448
  %18 = load i32, ptr %type13, align 8, !dbg !4448
  %cmp14 = icmp ne i32 %18, -2147483648, !dbg !4449
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !4450

if.then16:                                        ; preds = %if.end11
  %19 = load ptr, ptr %indirect, align 8, !dbg !4451
  %len17 = getelementptr inbounds %struct.setup_indirect, ptr %19, i32 0, i32 2, !dbg !4452
  %20 = load i64, ptr %len17, align 8, !dbg !4452
  %21 = load ptr, ptr %size.addr, align 8, !dbg !4453
  store i64 %20, ptr %21, align 8, !dbg !4454
  br label %if.end20, !dbg !4455

if.else:                                          ; preds = %if.end11
  %22 = load ptr, ptr %data, align 8, !dbg !4456
  %len18 = getelementptr inbounds %struct.setup_data, ptr %22, i32 0, i32 2, !dbg !4457
  %23 = load i32, ptr %len18, align 4, !dbg !4457
  %conv19 = zext i32 %23 to i64, !dbg !4456
  %24 = load ptr, ptr %size.addr, align 8, !dbg !4458
  store i64 %conv19, ptr %24, align 8, !dbg !4459
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  br label %if.end24, !dbg !4460

if.else21:                                        ; preds = %if.then2
  %25 = load ptr, ptr %data, align 8, !dbg !4461
  %len22 = getelementptr inbounds %struct.setup_data, ptr %25, i32 0, i32 2, !dbg !4463
  %26 = load i32, ptr %len22, align 4, !dbg !4463
  %conv23 = zext i32 %26 to i64, !dbg !4461
  %27 = load ptr, ptr %size.addr, align 8, !dbg !4464
  store i64 %conv23, ptr %27, align 8, !dbg !4465
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.end20
  %28 = load ptr, ptr %data, align 8, !dbg !4466
  call void @memunmap(ptr noundef %28) #17, !dbg !4467
  store i32 0, ptr %retval, align 4, !dbg !4468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4468

if.end25:                                         ; preds = %if.end
  %29 = load i64, ptr %pa_next, align 8, !dbg !4469
  store i64 %29, ptr %pa_data, align 8, !dbg !4470
  %30 = load ptr, ptr %data, align 8, !dbg !4471
  call void @memunmap(ptr noundef %30) #17, !dbg !4472
  %31 = load i32, ptr %i, align 4, !dbg !4473
  %inc = add i32 %31, 1, !dbg !4473
  store i32 %inc, ptr %i, align 4, !dbg !4473
  br label %while.cond, !dbg !4403, !llvm.loop !4474

while.end:                                        ; preds = %while.cond
  store i32 -22, ptr %retval, align 4, !dbg !4476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4476

cleanup:                                          ; preds = %while.end, %if.end24, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirect) #16, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_next) #16, !dbg !4477
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #16, !dbg !4477
  %32 = load i32, ptr %retval, align 4, !dbg !4477
  ret i32 %32, !dbg !4477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @setup_data_data_read(ptr noundef %fp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %off, i64 noundef %count) #4 align 16 !dbg !4478 {
entry:
  %retval = alloca i64, align 8
  %fp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %indirect = alloca ptr, align 8
  %data = alloca ptr, align 8
  %nr = alloca i32, align 4
  %ret = alloca i32, align 4
  %paddr = alloca i64, align 8
  %len = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !4480, metadata !DIExpression()), !dbg !4494
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4481, metadata !DIExpression()), !dbg !4495
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !4482, metadata !DIExpression()), !dbg !4496
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4483, metadata !DIExpression()), !dbg !4497
  store i64 %off, ptr %off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !4484, metadata !DIExpression()), !dbg !4498
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4485, metadata !DIExpression()), !dbg !4499
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirect) #16, !dbg !4500
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !4486, metadata !DIExpression()), !dbg !4501
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4502
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4487, metadata !DIExpression()), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #16, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !4488, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4489, metadata !DIExpression()), !dbg !4506
  store i32 0, ptr %ret, align 4, !dbg !4506
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #16, !dbg !4507
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !4490, metadata !DIExpression()), !dbg !4508
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #16, !dbg !4507
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4491, metadata !DIExpression()), !dbg !4509
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4510
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4492, metadata !DIExpression()), !dbg !4511
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4512
  %call = call i32 @kobj_to_setup_data_nr(ptr noundef %0, ptr noundef %nr) #17, !dbg !4513
  store i32 %call, ptr %ret, align 4, !dbg !4514
  %1 = load i32, ptr %ret, align 4, !dbg !4515
  %tobool = icmp ne i32 %1, 0, !dbg !4515
  br i1 %tobool, label %if.then, label %if.end, !dbg !4517

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !4518
  %conv = sext i32 %2 to i64, !dbg !4518
  store i64 %conv, ptr %retval, align 8, !dbg !4519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4519

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nr, align 4, !dbg !4520
  %call1 = call i32 @get_setup_data_paddr(i32 noundef %3, ptr noundef %paddr) #17, !dbg !4521
  store i32 %call1, ptr %ret, align 4, !dbg !4522
  %4 = load i32, ptr %ret, align 4, !dbg !4523
  %tobool2 = icmp ne i32 %4, 0, !dbg !4523
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4525

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !4526
  %conv4 = sext i32 %5 to i64, !dbg !4526
  store i64 %conv4, ptr %retval, align 8, !dbg !4527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4527

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %paddr, align 8, !dbg !4528
  %call6 = call ptr @memremap(i64 noundef %6, i64 noundef 16, i64 noundef 1) #17, !dbg !4529
  store ptr %call6, ptr %data, align 8, !dbg !4530
  %7 = load ptr, ptr %data, align 8, !dbg !4531
  %tobool7 = icmp ne ptr %7, null, !dbg !4531
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4533

if.then8:                                         ; preds = %if.end5
  store i64 -12, ptr %retval, align 8, !dbg !4534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4534

if.end9:                                          ; preds = %if.end5
  %8 = load ptr, ptr %data, align 8, !dbg !4535
  %type = getelementptr inbounds %struct.setup_data, ptr %8, i32 0, i32 1, !dbg !4537
  %9 = load i32, ptr %type, align 8, !dbg !4537
  %cmp = icmp eq i32 %9, -2147483648, !dbg !4538
  br i1 %cmp, label %if.then11, label %if.else28, !dbg !4539

if.then11:                                        ; preds = %if.end9
  %10 = load ptr, ptr %data, align 8, !dbg !4540
  %len12 = getelementptr inbounds %struct.setup_data, ptr %10, i32 0, i32 2, !dbg !4542
  %11 = load i32, ptr %len12, align 4, !dbg !4542
  %conv13 = zext i32 %11 to i64, !dbg !4540
  %add = add i64 16, %conv13, !dbg !4543
  store i64 %add, ptr %len, align 8, !dbg !4544
  %12 = load ptr, ptr %data, align 8, !dbg !4545
  call void @memunmap(ptr noundef %12) #17, !dbg !4546
  %13 = load i64, ptr %paddr, align 8, !dbg !4547
  %14 = load i64, ptr %len, align 8, !dbg !4548
  %call14 = call ptr @memremap(i64 noundef %13, i64 noundef %14, i64 noundef 1) #17, !dbg !4549
  store ptr %call14, ptr %data, align 8, !dbg !4550
  %15 = load ptr, ptr %data, align 8, !dbg !4551
  %tobool15 = icmp ne ptr %15, null, !dbg !4551
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4553

if.then16:                                        ; preds = %if.then11
  store i64 -12, ptr %retval, align 8, !dbg !4554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4554

if.end17:                                         ; preds = %if.then11
  %16 = load ptr, ptr %data, align 8, !dbg !4555
  %data18 = getelementptr inbounds %struct.setup_data, ptr %16, i32 0, i32 3, !dbg !4556
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data18, i64 0, i64 0, !dbg !4555
  store ptr %arraydecay, ptr %indirect, align 8, !dbg !4557
  %17 = load ptr, ptr %indirect, align 8, !dbg !4558
  %type19 = getelementptr inbounds %struct.setup_indirect, ptr %17, i32 0, i32 0, !dbg !4560
  %18 = load i32, ptr %type19, align 8, !dbg !4560
  %cmp20 = icmp ne i32 %18, -2147483648, !dbg !4561
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !4562

if.then22:                                        ; preds = %if.end17
  %19 = load ptr, ptr %indirect, align 8, !dbg !4563
  %addr = getelementptr inbounds %struct.setup_indirect, ptr %19, i32 0, i32 3, !dbg !4565
  %20 = load i64, ptr %addr, align 8, !dbg !4565
  store i64 %20, ptr %paddr, align 8, !dbg !4566
  %21 = load ptr, ptr %indirect, align 8, !dbg !4567
  %len23 = getelementptr inbounds %struct.setup_indirect, ptr %21, i32 0, i32 2, !dbg !4568
  %22 = load i64, ptr %len23, align 8, !dbg !4568
  store i64 %22, ptr %len, align 8, !dbg !4569
  br label %if.end27, !dbg !4570

if.else:                                          ; preds = %if.end17
  %23 = load i64, ptr %paddr, align 8, !dbg !4571
  %add24 = add i64 %23, 16, !dbg !4571
  store i64 %add24, ptr %paddr, align 8, !dbg !4571
  %24 = load ptr, ptr %data, align 8, !dbg !4573
  %len25 = getelementptr inbounds %struct.setup_data, ptr %24, i32 0, i32 2, !dbg !4574
  %25 = load i32, ptr %len25, align 4, !dbg !4574
  %conv26 = zext i32 %25 to i64, !dbg !4573
  store i64 %conv26, ptr %len, align 8, !dbg !4575
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  br label %if.end32, !dbg !4576

if.else28:                                        ; preds = %if.end9
  %26 = load i64, ptr %paddr, align 8, !dbg !4577
  %add29 = add i64 %26, 16, !dbg !4577
  store i64 %add29, ptr %paddr, align 8, !dbg !4577
  %27 = load ptr, ptr %data, align 8, !dbg !4579
  %len30 = getelementptr inbounds %struct.setup_data, ptr %27, i32 0, i32 2, !dbg !4580
  %28 = load i32, ptr %len30, align 4, !dbg !4580
  %conv31 = zext i32 %28 to i64, !dbg !4579
  store i64 %conv31, ptr %len, align 8, !dbg !4581
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.end27
  %29 = load i64, ptr %off.addr, align 8, !dbg !4582
  %30 = load i64, ptr %len, align 8, !dbg !4584
  %cmp33 = icmp ugt i64 %29, %30, !dbg !4585
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !4586

if.then35:                                        ; preds = %if.end32
  store i32 -22, ptr %ret, align 4, !dbg !4587
  br label %out, !dbg !4589

if.end36:                                         ; preds = %if.end32
  %31 = load i64, ptr %count.addr, align 8, !dbg !4590
  %32 = load i64, ptr %len, align 8, !dbg !4592
  %33 = load i64, ptr %off.addr, align 8, !dbg !4593
  %sub = sub i64 %32, %33, !dbg !4594
  %cmp37 = icmp ugt i64 %31, %sub, !dbg !4595
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !4596

if.then39:                                        ; preds = %if.end36
  %34 = load i64, ptr %len, align 8, !dbg !4597
  %35 = load i64, ptr %off.addr, align 8, !dbg !4598
  %sub40 = sub i64 %34, %35, !dbg !4599
  store i64 %sub40, ptr %count.addr, align 8, !dbg !4600
  br label %if.end41, !dbg !4601

if.end41:                                         ; preds = %if.then39, %if.end36
  %36 = load i64, ptr %count.addr, align 8, !dbg !4602
  %tobool42 = icmp ne i64 %36, 0, !dbg !4602
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !4604

if.then43:                                        ; preds = %if.end41
  br label %out, !dbg !4605

if.end44:                                         ; preds = %if.end41
  %37 = load i64, ptr %count.addr, align 8, !dbg !4606
  %conv45 = trunc i64 %37 to i32, !dbg !4606
  store i32 %conv45, ptr %ret, align 4, !dbg !4607
  %38 = load i64, ptr %paddr, align 8, !dbg !4608
  %39 = load i64, ptr %len, align 8, !dbg !4609
  %call46 = call ptr @memremap(i64 noundef %38, i64 noundef %39, i64 noundef 1) #17, !dbg !4610
  store ptr %call46, ptr %p, align 8, !dbg !4611
  %40 = load ptr, ptr %p, align 8, !dbg !4612
  %tobool47 = icmp ne ptr %40, null, !dbg !4612
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !4614

if.then48:                                        ; preds = %if.end44
  store i32 -12, ptr %ret, align 4, !dbg !4615
  br label %out, !dbg !4617

if.end49:                                         ; preds = %if.end44
  %41 = load ptr, ptr %buf.addr, align 8, !dbg !4618
  %42 = load ptr, ptr %p, align 8, !dbg !4619
  %43 = load i64, ptr %off.addr, align 8, !dbg !4620
  %add.ptr = getelementptr i8, ptr %42, i64 %43, !dbg !4621
  %44 = load i64, ptr %count.addr, align 8, !dbg !4622
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %add.ptr, i64 %44, i1 false), !dbg !4623
  %45 = load ptr, ptr %p, align 8, !dbg !4624
  call void @memunmap(ptr noundef %45) #17, !dbg !4625
  br label %out, !dbg !4625

out:                                              ; preds = %if.end49, %if.then48, %if.then43, %if.then35
  call void @llvm.dbg.label(metadata !4493), !dbg !4626
  %46 = load ptr, ptr %data, align 8, !dbg !4627
  call void @memunmap(ptr noundef %46) #17, !dbg !4628
  %47 = load i32, ptr %ret, align 4, !dbg !4629
  %conv50 = sext i32 %47 to i64, !dbg !4629
  store i64 %conv50, ptr %retval, align 8, !dbg !4630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4630

cleanup:                                          ; preds = %out, %if.then16, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #16, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #16, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #16, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirect) #16, !dbg !4631
  %48 = load i64, ptr %retval, align 8, !dbg !4631
  ret i64 %48, !dbg !4631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kobj_to_setup_data_nr(ptr noundef %kobj, ptr noundef %nr) #4 align 16 !dbg !4632 {
entry:
  %kobj.addr = alloca ptr, align 8
  %nr.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4636, metadata !DIExpression()), !dbg !4639
  store ptr %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4637, metadata !DIExpression()), !dbg !4640
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4638, metadata !DIExpression()), !dbg !4642
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4643
  %call = call ptr @kobject_name(ptr noundef %0) #17, !dbg !4644
  store ptr %call, ptr %name, align 8, !dbg !4645
  %1 = load ptr, ptr %name, align 8, !dbg !4646
  %2 = load ptr, ptr %nr.addr, align 8, !dbg !4647
  %call1 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 10, ptr noundef %2) #17, !dbg !4648
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !4649
  ret i32 %call1, !dbg !4650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_setup_data_paddr(i32 noundef %nr, ptr noundef %paddr) #4 align 16 !dbg !4651 {
entry:
  %retval = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %paddr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %data = alloca ptr, align 8
  %pa_data = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4656, metadata !DIExpression()), !dbg !4661
  store ptr %paddr, ptr %paddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %paddr.addr, metadata !4657, metadata !DIExpression()), !dbg !4662
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !4663
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4658, metadata !DIExpression()), !dbg !4664
  store i32 0, ptr %i, align 4, !dbg !4664
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4665
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4659, metadata !DIExpression()), !dbg !4666
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa_data) #16, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %pa_data, metadata !4660, metadata !DIExpression()), !dbg !4668
  %0 = load i64, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 34), align 1, !dbg !4669
  store i64 %0, ptr %pa_data, align 8, !dbg !4668
  br label %while.cond, !dbg !4670

while.cond:                                       ; preds = %if.end3, %entry
  %1 = load i64, ptr %pa_data, align 8, !dbg !4671
  %tobool = icmp ne i64 %1, 0, !dbg !4670
  br i1 %tobool, label %while.body, label %while.end, !dbg !4670

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %nr.addr, align 4, !dbg !4672
  %3 = load i32, ptr %i, align 4, !dbg !4675
  %cmp = icmp eq i32 %2, %3, !dbg !4676
  br i1 %cmp, label %if.then, label %if.end, !dbg !4677

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %pa_data, align 8, !dbg !4678
  %5 = load ptr, ptr %paddr.addr, align 8, !dbg !4680
  store i64 %4, ptr %5, align 8, !dbg !4681
  store i32 0, ptr %retval, align 4, !dbg !4682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4682

if.end:                                           ; preds = %while.body
  %6 = load i64, ptr %pa_data, align 8, !dbg !4683
  %call = call ptr @memremap(i64 noundef %6, i64 noundef 16, i64 noundef 1) #17, !dbg !4684
  store ptr %call, ptr %data, align 8, !dbg !4685
  %7 = load ptr, ptr %data, align 8, !dbg !4686
  %tobool1 = icmp ne ptr %7, null, !dbg !4686
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4688

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %data, align 8, !dbg !4690
  %next = getelementptr inbounds %struct.setup_data, ptr %8, i32 0, i32 0, !dbg !4691
  %9 = load i64, ptr %next, align 8, !dbg !4691
  store i64 %9, ptr %pa_data, align 8, !dbg !4692
  %10 = load ptr, ptr %data, align 8, !dbg !4693
  call void @memunmap(ptr noundef %10) #17, !dbg !4694
  %11 = load i32, ptr %i, align 4, !dbg !4695
  %inc = add i32 %11, 1, !dbg !4695
  store i32 %inc, ptr %i, align 4, !dbg !4695
  br label %while.cond, !dbg !4670, !llvm.loop !4696

while.end:                                        ; preds = %while.cond
  store i32 -22, ptr %retval, align 4, !dbg !4698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4698

cleanup:                                          ; preds = %while.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa_data) #16, !dbg !4699
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4699
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !4699
  %12 = load i32, ptr %retval, align 4, !dbg !4699
  ret i32 %12, !dbg !4699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #7 align 16 !dbg !4700 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4702, metadata !DIExpression()), !dbg !4703
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4704
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4705
  %1 = load ptr, ptr %name, align 8, !dbg !4705
  ret ptr %1, !dbg !4706
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4707 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #4 align 16 !dbg !4711 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %indirect = alloca ptr, align 8
  %data = alloca ptr, align 8
  %nr = alloca i32, align 4
  %ret = alloca i32, align 4
  %paddr = alloca i64, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4713, metadata !DIExpression()), !dbg !4722
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4714, metadata !DIExpression()), !dbg !4723
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4715, metadata !DIExpression()), !dbg !4724
  call void @llvm.lifetime.start.p0(i64 8, ptr %indirect) #16, !dbg !4725
  call void @llvm.dbg.declare(metadata ptr %indirect, metadata !4716, metadata !DIExpression()), !dbg !4726
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %data, metadata !4717, metadata !DIExpression()), !dbg !4728
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #16, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !4718, metadata !DIExpression()), !dbg !4730
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4729
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4719, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #16, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !4720, metadata !DIExpression()), !dbg !4733
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4721, metadata !DIExpression()), !dbg !4735
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4736
  %call = call i32 @kobj_to_setup_data_nr(ptr noundef %0, ptr noundef %nr) #17, !dbg !4737
  store i32 %call, ptr %ret, align 4, !dbg !4738
  %1 = load i32, ptr %ret, align 4, !dbg !4739
  %tobool = icmp ne i32 %1, 0, !dbg !4739
  br i1 %tobool, label %if.then, label %if.end, !dbg !4741

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !4742
  %conv = sext i32 %2 to i64, !dbg !4742
  store i64 %conv, ptr %retval, align 8, !dbg !4743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4743

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nr, align 4, !dbg !4744
  %call1 = call i32 @get_setup_data_paddr(i32 noundef %3, ptr noundef %paddr) #17, !dbg !4745
  store i32 %call1, ptr %ret, align 4, !dbg !4746
  %4 = load i32, ptr %ret, align 4, !dbg !4747
  %tobool2 = icmp ne i32 %4, 0, !dbg !4747
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4749

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !4750
  %conv4 = sext i32 %5 to i64, !dbg !4750
  store i64 %conv4, ptr %retval, align 8, !dbg !4751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4751

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %paddr, align 8, !dbg !4752
  %call6 = call ptr @memremap(i64 noundef %6, i64 noundef 16, i64 noundef 1) #17, !dbg !4753
  store ptr %call6, ptr %data, align 8, !dbg !4754
  %7 = load ptr, ptr %data, align 8, !dbg !4755
  %tobool7 = icmp ne ptr %7, null, !dbg !4755
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4757

if.then8:                                         ; preds = %if.end5
  store i64 -12, ptr %retval, align 8, !dbg !4758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4758

if.end9:                                          ; preds = %if.end5
  %8 = load ptr, ptr %data, align 8, !dbg !4759
  %type = getelementptr inbounds %struct.setup_data, ptr %8, i32 0, i32 1, !dbg !4761
  %9 = load i32, ptr %type, align 8, !dbg !4761
  %cmp = icmp eq i32 %9, -2147483648, !dbg !4762
  br i1 %cmp, label %if.then11, label %if.else, !dbg !4763

if.then11:                                        ; preds = %if.end9
  %10 = load ptr, ptr %data, align 8, !dbg !4764
  %len12 = getelementptr inbounds %struct.setup_data, ptr %10, i32 0, i32 2, !dbg !4766
  %11 = load i32, ptr %len12, align 4, !dbg !4766
  %conv13 = zext i32 %11 to i64, !dbg !4764
  %add = add i64 16, %conv13, !dbg !4767
  %conv14 = trunc i64 %add to i32, !dbg !4768
  store i32 %conv14, ptr %len, align 4, !dbg !4769
  %12 = load ptr, ptr %data, align 8, !dbg !4770
  call void @memunmap(ptr noundef %12) #17, !dbg !4771
  %13 = load i64, ptr %paddr, align 8, !dbg !4772
  %14 = load i32, ptr %len, align 4, !dbg !4773
  %conv15 = zext i32 %14 to i64, !dbg !4773
  %call16 = call ptr @memremap(i64 noundef %13, i64 noundef %conv15, i64 noundef 1) #17, !dbg !4774
  store ptr %call16, ptr %data, align 8, !dbg !4775
  %15 = load ptr, ptr %data, align 8, !dbg !4776
  %tobool17 = icmp ne ptr %15, null, !dbg !4776
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4778

if.then18:                                        ; preds = %if.then11
  store i64 -12, ptr %retval, align 8, !dbg !4779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4779

if.end19:                                         ; preds = %if.then11
  %16 = load ptr, ptr %data, align 8, !dbg !4780
  %data20 = getelementptr inbounds %struct.setup_data, ptr %16, i32 0, i32 3, !dbg !4781
  %arraydecay = getelementptr inbounds [0 x i8], ptr %data20, i64 0, i64 0, !dbg !4780
  store ptr %arraydecay, ptr %indirect, align 8, !dbg !4782
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !4783
  %18 = load ptr, ptr %indirect, align 8, !dbg !4784
  %type21 = getelementptr inbounds %struct.setup_indirect, ptr %18, i32 0, i32 0, !dbg !4785
  %19 = load i32, ptr %type21, align 8, !dbg !4785
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef @.str.8, i32 noundef %19) #17, !dbg !4786
  store i32 %call22, ptr %ret, align 4, !dbg !4787
  br label %if.end25, !dbg !4788

if.else:                                          ; preds = %if.end9
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !4789
  %21 = load ptr, ptr %data, align 8, !dbg !4791
  %type23 = getelementptr inbounds %struct.setup_data, ptr %21, i32 0, i32 1, !dbg !4792
  %22 = load i32, ptr %type23, align 8, !dbg !4792
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %20, ptr noundef @.str.8, i32 noundef %22) #17, !dbg !4793
  store i32 %call24, ptr %ret, align 4, !dbg !4794
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end19
  %23 = load ptr, ptr %data, align 8, !dbg !4795
  call void @memunmap(ptr noundef %23) #17, !dbg !4796
  %24 = load i32, ptr %ret, align 4, !dbg !4797
  %conv26 = sext i32 %24 to i64, !dbg !4797
  store i64 %conv26, ptr %retval, align 8, !dbg !4798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4798

cleanup:                                          ; preds = %if.end25, %if.then18, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %indirect) #16, !dbg !4799
  %25 = load i64, ptr %retval, align 8, !dbg !4799
  ret i64 %25, !dbg !4799
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769}
!llvm.ident = !{!3770}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3282", scope: !2, file: !3, line: 401, type: !104, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.ksysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/ksysfs\22 -D KBUILD_BASENAME=\22ksysfs\22 -D KBUILD_MODNAME=\22ksysfs\22 -D __KBUILD_MODNAME=kmod_ksysfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/ksysfs.ll arch/x86/kernel/ksysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/ksysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2cca296ceda36084260389c4b48e53e0")
!4 = !{!5, !11, !17, !22, !30, !46, !54, !60, !67, !74, !80, !88, !93}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !6, line: 2052, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!10 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !12, line: 54, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "USRQUOTA", value: 0)
!15 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!16 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !23, line: 9, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!26 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!27 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!28 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!29 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !31, line: 1325, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!33 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!34 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!35 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!36 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!37 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!38 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!39 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!40 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!41 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!42 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!43 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!44 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!45 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !47, line: 68, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!50 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !55, line: 16, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "TT_NONE", value: 0)
!58 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!59 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !61, line: 51, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!62 = !{!63, !64, !65, !66}
!63 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!64 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!65 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!66 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !68, line: 15, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!72 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!73 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !75, line: 26, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!78 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!79 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 140, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9069a71c5724a11302a774eef2b1f711")
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIEnumerator(name: "MEMREMAP_WB", value: 1)
!84 = !DIEnumerator(name: "MEMREMAP_WT", value: 2)
!85 = !DIEnumerator(name: "MEMREMAP_WC", value: 4)
!86 = !DIEnumerator(name: "MEMREMAP_ENC", value: 8)
!87 = !DIEnumerator(name: "MEMREMAP_DEC", value: 16)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 10, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "false", value: 0)
!92 = !DIEnumerator(name: "true", value: 1)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 364, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!95 = !{!96, !97, !98, !99, !100, !101, !102}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!97 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!101 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!102 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!103 = !{!104, !105, !107, !108}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !106, line: 154, baseType: !7)
!106 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_indirect", file: !110, line: 61, size: 192, elements: !111)
!110 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!111 = !{!112, !115, !116, !119}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !110, line: 62, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !7)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !109, file: !110, line: 63, baseType: !113, size: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !109, file: !110, line: 64, baseType: !117, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !118)
!118 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !109, file: !110, line: 65, baseType: !117, size: 64, offset: 128)
!120 = !{!0, !121, !127, !3704, !3707, !3709, !3723, !3725, !3728, !3733, !3735, !3740, !3745, !3748, !3750, !3752, !3754, !3756, !3758, !3760}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 96, elements: !125)
!124 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!126}
!126 = !DISubrange(count: 12)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "boot_params_attr_group", scope: !2, file: !3, line: 57, type: !129, isLocal: true, isDefinition: true)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !131, line: 84, size: 320, elements: !132)
!131 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!132 = !{!133, !136, !3677, !3700, !3702}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !131, line: 85, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !130, file: !131, line: 86, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !142, !265, !184}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !106, line: 24, baseType: !141)
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !144, line: 64, size: 512, elements: !145)
!144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!145 = !{!146, !147, !153, !154, !242, !338, !3667, !3672, !3673, !3674, !3675, !3676}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 65, baseType: !134, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !143, file: !144, line: 66, baseType: !148, size: 128, offset: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !106, line: 190, size: 128, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !106, line: 191, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !106, line: 191, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 67, baseType: !142, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !143, file: !144, line: 68, baseType: !155, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !144, line: 168, size: 768, elements: !157)
!157 = !{!158, !159, !201, !202}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !156, file: !144, line: 169, baseType: !148, size: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !156, file: !144, line: 170, baseType: !160, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !161, line: 29, baseType: !162)
!161 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !161, line: 17, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !161, line: 18, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !161, line: 18, size: 32, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !165, file: !161, line: 19, baseType: !168, size: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !169, line: 14, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !168, file: !169, line: 15, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !173, line: 44, baseType: !174)
!173 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !173, line: 14, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !173, line: 15, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !173, line: 15, size: 32, elements: !178)
!178 = !{!179, !185, !194}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !173, line: 16, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !106, line: 174, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 172, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !181, file: !106, line: 173, baseType: !184, size: 32)
!184 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !173, line: 24, baseType: !186, size: 16)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !173, line: 24, size: 16, elements: !187)
!187 = !{!188, !193}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !186, file: !173, line: 25, baseType: !189, size: 8)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !190, line: 17, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !192)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !186, file: !173, line: 26, baseType: !189, size: 8, offset: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !173, line: 28, baseType: !195, size: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !173, line: 28, size: 32, elements: !196)
!196 = !{!197, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !195, file: !173, line: 29, baseType: !198, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !190, line: 19, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !141)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !195, file: !173, line: 30, baseType: !198, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !156, file: !144, line: 171, baseType: !143, size: 512, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !156, file: !144, line: 172, baseType: !203, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !144, line: 133, size: 192, elements: !206)
!206 = !{!207, !214, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !205, file: !144, line: 134, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!184, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !144, line: 135, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!134, !212}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !205, file: !144, line: 136, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!184, !212, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !144, line: 125, size: 20736, elements: !226)
!226 = !{!227, !232, !236, !237, !241}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !225, file: !144, line: 126, baseType: !228, size: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !230)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!230 = !{!231}
!231 = !DISubrange(count: 3)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !225, file: !144, line: 127, baseType: !233, size: 4096, offset: 192)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !225, file: !144, line: 128, baseType: !184, size: 32, offset: 4288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !225, file: !144, line: 129, baseType: !238, size: 16384, offset: 4320)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16384, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !225, file: !144, line: 130, baseType: !184, size: 32, offset: 20704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !143, file: !144, line: 69, baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !144, line: 116, size: 384, elements: !246)
!246 = !{!247, !251, !277, !280, !315, !319}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !144, line: 117, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !142}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !144, line: 118, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !131, line: 254, size: 128, elements: !255)
!255 = !{!256, !270}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !131, line: 255, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !142, !265, !229}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !106, line: 66, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !262, line: 73, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !262, line: 15, baseType: !264)
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !131, line: 30, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !131, line: 31, baseType: !134, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !266, file: !131, line: 32, baseType: !140, size: 16, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !131, line: 256, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!260, !142, !265, !134, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 61, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !107)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !144, line: 119, baseType: !278, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !144, line: 120, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !212}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !75, line: 39, size: 384, elements: !287)
!287 = !{!288, !289, !295, !299, !307, !311}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !75, line: 40, baseType: !74, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !286, file: !75, line: 41, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !106, line: 35, baseType: !294)
!294 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !286, file: !75, line: 42, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!104}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !286, file: !75, line: 43, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !75, line: 19, flags: DIFlagFwdDecl)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !286, file: !75, line: 44, baseType: !308, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!303}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !286, file: !75, line: 45, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !104}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !144, line: 121, baseType: !316, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!303, !212}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !144, line: 122, baseType: !320, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !212, !323, !331}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !325, line: 23, baseType: !326)
!325 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 21, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !326, file: !325, line: 22, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !106, line: 37, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !262, line: 49, baseType: !7)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !325, line: 28, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 26, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !333, file: !325, line: 27, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !106, line: 38, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !262, line: 50, baseType: !7)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !143, file: !144, line: 70, baseType: !339, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !341, line: 190, size: 1152, elements: !342)
!341 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!342 = !{!343, !344, !345, !346, !347, !355, !356, !357, !3659, !3660, !3661, !3662, !3663, !3666}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !340, file: !341, line: 191, baseType: !180, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !340, file: !341, line: 192, baseType: !180, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !340, file: !341, line: 202, baseType: !339, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !341, line: 203, baseType: !134, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !340, file: !341, line: 205, baseType: !348, size: 192, align: 64, offset: 192)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !349, line: 5, size: 192, align: 64, elements: !350)
!349 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!350 = !{!351, !352, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !348, file: !349, line: 6, baseType: !107, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !348, file: !349, line: 7, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !348, file: !349, line: 8, baseType: !353, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !340, file: !341, line: 207, baseType: !303, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !340, file: !341, line: 208, baseType: !7, size: 32, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !341, line: 209, baseType: !358, size: 256, offset: 512)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !341, line: 209, size: 256, elements: !359)
!359 = !{!360, !372, !376}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !358, file: !341, line: 210, baseType: !361, size: 256)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !341, line: 153, size: 256, elements: !362)
!362 = !{!363, !364, !368, !371}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !361, file: !341, line: 154, baseType: !107, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !361, file: !341, line: 156, baseType: !365, size: 64, offset: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !349, line: 12, size: 64, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !365, file: !349, line: 13, baseType: !353, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !361, file: !341, line: 162, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !341, line: 162, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !361, file: !341, line: 167, baseType: !107, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !358, file: !341, line: 211, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !341, line: 170, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !373, file: !341, line: 171, baseType: !339, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !358, file: !341, line: 212, baseType: !377, size: 256)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !341, line: 174, size: 256, elements: !378)
!378 = !{!379, !3654, !3657, !3658}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !377, file: !341, line: 175, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !341, line: 271, size: 768, elements: !383)
!383 = !{!384, !3619, !3623, !3627, !3631, !3635, !3639, !3643, !3644, !3645, !3646, !3650}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !382, file: !341, line: 276, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!184, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !341, line: 251, size: 1216, elements: !390)
!390 = !{!391, !392, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !389, file: !341, line: 253, baseType: !339, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !389, file: !341, line: 254, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !6, line: 994, size: 1856, align: 64, elements: !395)
!395 = !{!396, !415, !416, !418, !428, !441, !444, !445, !517, !722, !731, !3598, !3599, !3600, !3601, !3602, !3603, !3605, !3606, !3607}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !6, line: 995, baseType: !397, size: 128)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !6, line: 995, size: 128, elements: !398)
!398 = !{!399, !405, !414}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !397, file: !6, line: 996, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !401, line: 60, size: 64, elements: !402)
!401 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !401, line: 61, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !397, file: !6, line: 997, baseType: !406, size: 128, align: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !106, line: 232, size: 128, align: 64, elements: !407)
!407 = !{!408, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !106, line: 233, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !406, file: !106, line: 234, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !409}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !397, file: !6, line: 998, baseType: !7, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !394, file: !6, line: 1005, baseType: !160, size: 32, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !394, file: !6, line: 1006, baseType: !417, size: 32, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !106, line: 156, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !394, file: !6, line: 1007, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !420, line: 13, baseType: !421)
!420 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !106, line: 181, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 179, size: 64, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !422, file: !106, line: 180, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !190, line: 22, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !427)
!427 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !394, file: !6, line: 1008, baseType: !429, size: 256, offset: 256)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !430, line: 66, size: 256, elements: !431)
!430 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!431 = !{!432, !433, !435, !440}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !429, file: !430, line: 67, baseType: !419, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !429, file: !430, line: 68, baseType: !434, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !169, line: 23, baseType: !168)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !429, file: !430, line: 70, baseType: !436, size: 32, offset: 96)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !437, line: 15, size: 32, elements: !438)
!437 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !436, file: !437, line: 20, baseType: !180, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !429, file: !430, line: 72, baseType: !148, size: 128, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !394, file: !6, line: 1009, baseType: !442, size: 64, offset: 512)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !106, line: 52, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !262, line: 88, baseType: !427)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !394, file: !6, line: 1010, baseType: !7, size: 32, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !394, file: !6, line: 1011, baseType: !446, size: 256, offset: 640)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !6, line: 948, size: 256, elements: !447)
!447 = !{!448, !469, !513, !514, !515, !516}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !446, file: !6, line: 949, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !450, line: 34, baseType: !451)
!450 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 25, size: 64, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !451, file: !450, line: 26, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !455, line: 27, baseType: !456)
!455 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !455, line: 13, size: 64, elements: !457)
!457 = !{!458, !468}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !455, line: 14, baseType: !459, size: 32)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !455, line: 14, size: 32, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !459, file: !455, line: 15, baseType: !180, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !455, line: 16, baseType: !463, size: 32)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !455, line: 16, size: 32, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !463, file: !455, line: 18, baseType: !189, size: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !463, file: !455, line: 19, baseType: !467, size: 24, offset: 8)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 24, elements: !230)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !456, file: !455, line: 26, baseType: !172, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !446, file: !6, line: 950, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !23, line: 59, size: 768, elements: !472)
!472 = !{!473, !479, !480, !481, !494, !495, !502, !503}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !471, file: !23, line: 61, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !475, line: 113, baseType: !476)
!475 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !475, line: 111, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !476, file: !475, line: 112, baseType: !180, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !471, file: !23, line: 62, baseType: !7, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !471, file: !23, line: 63, baseType: !160, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !471, file: !23, line: 65, baseType: !482, size: 256, offset: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 256, elements: !492)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !106, line: 194, size: 64, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !483, file: !106, line: 195, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !106, line: 198, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !106, line: 199, baseType: !486, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !487, file: !106, line: 199, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!492 = !{!493}
!493 = !DISubrange(count: 4)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !471, file: !23, line: 66, baseType: !483, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !471, file: !23, line: 68, baseType: !496, size: 192, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !497, line: 41, baseType: !498)
!497 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !497, line: 37, size: 192, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !498, file: !497, line: 38, baseType: !160, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !498, file: !497, line: 39, baseType: !148, size: 128, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !471, file: !23, line: 69, baseType: !406, size: 128, align: 64, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !471, file: !23, line: 70, baseType: !504, offset: 768)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, elements: !511)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !23, line: 54, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !505, file: !23, line: 55, baseType: !184, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !505, file: !23, line: 56, baseType: !509, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !23, line: 56, flags: DIFlagFwdDecl)
!511 = !{!512}
!512 = !DISubrange(count: -1)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !446, file: !6, line: 951, baseType: !22, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !446, file: !6, line: 952, baseType: !324, size: 32, offset: 160)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !446, file: !6, line: 952, baseType: !324, size: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !446, file: !6, line: 953, baseType: !184, size: 32, offset: 224)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !394, file: !6, line: 1012, baseType: !518, size: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !521, line: 110, size: 1472, elements: !522)
!521 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !540, !541, !542, !543, !544, !545, !667, !668, !669, !670, !671, !702, !705, !709, !717}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !520, file: !521, line: 111, baseType: !419, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !520, file: !521, line: 112, baseType: !324, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !520, file: !521, line: 113, baseType: !332, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !520, file: !521, line: 114, baseType: !324, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !520, file: !521, line: 115, baseType: !332, size: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !520, file: !521, line: 116, baseType: !324, size: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !520, file: !521, line: 117, baseType: !332, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !520, file: !521, line: 118, baseType: !324, size: 32, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !520, file: !521, line: 119, baseType: !332, size: 32, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !520, file: !521, line: 120, baseType: !7, size: 32, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !520, file: !521, line: 121, baseType: !534, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !535, line: 24, baseType: !536)
!535 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !535, line: 24, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !536, file: !535, line: 24, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !190, line: 23, baseType: !117)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !520, file: !521, line: 122, baseType: !534, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !520, file: !521, line: 123, baseType: !534, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !520, file: !521, line: 124, baseType: !534, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !520, file: !521, line: 125, baseType: !534, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !520, file: !521, line: 127, baseType: !192, size: 8, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !520, file: !521, line: 129, baseType: !546, size: 64, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !548, line: 195, size: 1728, elements: !549)
!548 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!549 = !{!550, !551, !556, !561, !570, !573, !574, !581, !582, !583, !584, !588, !589, !590, !592, !593, !631, !652}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !547, file: !548, line: 196, baseType: !474, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !547, file: !548, line: 197, baseType: !552, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !548, line: 28, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !106, line: 104, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !190, line: 20, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !184)
!556 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !548, line: 198, baseType: !557, size: 192, offset: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !548, line: 198, size: 192, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !557, file: !548, line: 199, baseType: !148, size: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !557, file: !548, line: 200, baseType: !348, size: 192, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !547, file: !548, line: 205, baseType: !562, size: 320, offset: 256)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !563, line: 48, size: 320, elements: !564)
!563 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!564 = !{!565, !566, !567, !568, !569}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !562, file: !563, line: 49, baseType: !419, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !562, file: !563, line: 55, baseType: !419, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !562, file: !563, line: 57, baseType: !436, size: 32, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !562, file: !563, line: 59, baseType: !434, size: 32, offset: 160)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !562, file: !563, line: 60, baseType: !148, size: 128, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !547, file: !548, line: 206, baseType: !571, size: 64, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !548, line: 206, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !547, file: !548, line: 207, baseType: !104, size: 64, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !548, line: 208, baseType: !575, size: 64, offset: 704)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !548, line: 208, size: 64, elements: !576)
!576 = !{!577, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !575, file: !548, line: 209, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !579, line: 8, baseType: !426)
!579 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!580 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !575, file: !548, line: 210, baseType: !578, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !547, file: !548, line: 212, baseType: !578, size: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !547, file: !548, line: 213, baseType: !324, size: 32, offset: 832)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !547, file: !548, line: 214, baseType: !332, size: 32, offset: 864)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !547, file: !548, line: 215, baseType: !585, size: 32, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !548, line: 31, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 110, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !190, line: 21, baseType: !113)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !547, file: !548, line: 216, baseType: !141, size: 16, offset: 928)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !547, file: !548, line: 217, baseType: !141, size: 16, offset: 944)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !547, file: !548, line: 221, baseType: !591, size: 16, offset: 960)
!591 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !548, line: 228, baseType: !107, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !548, line: 245, baseType: !594, size: 320, offset: 1088)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !548, line: 245, size: 320, elements: !595)
!595 = !{!596, !623}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !594, file: !548, line: 246, baseType: !597, size: 320)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !548, line: 114, size: 320, elements: !598)
!598 = !{!599, !600, !612, !615, !622}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !597, file: !548, line: 116, baseType: !107, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !548, line: 117, baseType: !601, size: 64, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !548, line: 117, size: 64, elements: !602)
!602 = !{!603, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !548, line: 118, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !548, line: 118, size: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !604, file: !548, line: 120, baseType: !198, size: 16)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !604, file: !548, line: 121, baseType: !608, size: 48, offset: 16)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 48, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 6)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !601, file: !548, line: 127, baseType: !107, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !548, line: 129, baseType: !613, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !548, line: 102, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !597, file: !548, line: 130, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !548, line: 108, size: 192, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !617, file: !548, line: 109, baseType: !406, size: 128, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !617, file: !548, line: 110, baseType: !474, size: 32, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !617, file: !548, line: 111, baseType: !293, size: 8, offset: 160)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !597, file: !548, line: 131, baseType: !134, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !548, line: 247, baseType: !624, size: 320)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !594, file: !548, line: 247, size: 320, elements: !625)
!625 = !{!626, !627, !628, !629, !630}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !624, file: !548, line: 248, baseType: !107, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !624, file: !548, line: 249, baseType: !107, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !548, line: 250, baseType: !613, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !624, file: !548, line: 251, baseType: !616, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !624, file: !548, line: 252, baseType: !229, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !547, file: !548, line: 260, baseType: !632, size: 256, offset: 1408)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !547, file: !548, line: 260, size: 256, elements: !633)
!633 = !{!634, !640}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !632, file: !548, line: 261, baseType: !635, size: 256)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !548, line: 134, size: 256, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !635, file: !548, line: 135, baseType: !104, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !635, file: !548, line: 136, baseType: !639, size: 256)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !492)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !548, line: 262, baseType: !641, size: 256)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !548, line: 262, size: 256, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !641, file: !548, line: 264, baseType: !148, size: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !641, file: !548, line: 265, baseType: !645, size: 128, offset: 128)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !646, line: 22, size: 128, elements: !647)
!646 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!647 = !{!648, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !645, file: !646, line: 23, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !646, line: 23, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !645, file: !646, line: 24, baseType: !107, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !547, file: !548, line: 280, baseType: !653, size: 64, offset: 1664)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !548, line: 176, size: 192, elements: !655)
!655 = !{!656, !665, !666}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !654, file: !548, line: 177, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !548, line: 171, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!184, !546, !661, !663, !546}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !654, file: !548, line: 178, baseType: !546, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !654, file: !548, line: 179, baseType: !613, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !520, file: !521, line: 130, baseType: !546, size: 64, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !520, file: !521, line: 131, baseType: !546, size: 64, offset: 896)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !520, file: !521, line: 132, baseType: !546, size: 64, offset: 960)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !520, file: !521, line: 135, baseType: !104, size: 64, offset: 1024)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !520, file: !521, line: 137, baseType: !672, size: 64, offset: 1088)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !674, line: 14, size: 1088, elements: !675)
!674 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!675 = !{!676, !677, !686, !687, !688, !689, !690, !691}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !673, file: !674, line: 15, baseType: !474, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !673, file: !674, line: 17, baseType: !678, size: 320, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !679, line: 22, size: 320, elements: !680)
!679 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!680 = !{!681, !682, !683, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !678, file: !679, line: 23, baseType: !434, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !678, file: !679, line: 24, baseType: !425, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !678, file: !679, line: 26, baseType: !148, size: 128, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !678, file: !679, line: 28, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !673, file: !674, line: 19, baseType: !107, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !673, file: !674, line: 20, baseType: !419, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !673, file: !674, line: 23, baseType: !487, size: 128, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !673, file: !674, line: 24, baseType: !324, size: 32, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !673, file: !674, line: 29, baseType: !419, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !673, file: !674, line: 36, baseType: !692, size: 320, offset: 768)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !693, line: 15, size: 320, elements: !694)
!693 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!694 = !{!695, !696, !697, !698, !699, !700, !701}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 16, baseType: !434, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !692, file: !693, line: 18, baseType: !184, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !692, file: !693, line: 19, baseType: !184, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !692, file: !693, line: 20, baseType: !184, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !692, file: !693, line: 21, baseType: !184, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !692, file: !693, line: 22, baseType: !107, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !693, line: 23, baseType: !107, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !520, file: !521, line: 138, baseType: !703, size: 64, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !31, line: 901, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !520, file: !521, line: 139, baseType: !706, size: 64, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !708, line: 16, flags: DIFlagFwdDecl)
!708 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !520, file: !521, line: 140, baseType: !710, size: 64, offset: 1280)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !521, line: 25, size: 64, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !711, file: !521, line: 26, baseType: !180, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !711, file: !521, line: 27, baseType: !184, size: 32, offset: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !711, file: !521, line: 28, baseType: !716, offset: 64)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, elements: !511)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !521, line: 142, baseType: !718, size: 128, offset: 1344)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !521, line: 142, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !718, file: !521, line: 143, baseType: !184, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !718, file: !521, line: 144, baseType: !406, size: 128, align: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !394, file: !6, line: 1013, baseType: !723, size: 256, offset: 960)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !6, line: 970, size: 256, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !723, file: !6, line: 971, baseType: !107, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !723, file: !6, line: 972, baseType: !7, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !723, file: !6, line: 973, baseType: !7, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !723, file: !6, line: 974, baseType: !7, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !723, file: !6, line: 975, baseType: !7, size: 32, offset: 160)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !723, file: !6, line: 976, baseType: !442, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !394, file: !6, line: 1014, baseType: !732, size: 128, offset: 1216)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !733, line: 8, size: 128, elements: !734)
!733 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!734 = !{!735, !3597}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !732, file: !733, line: 9, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !738, line: 70, size: 256, elements: !739)
!738 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!739 = !{!740, !3594, !3595, !3596}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !737, file: !738, line: 71, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !743, line: 82, size: 1536, elements: !744)
!743 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!744 = !{!745, !746, !756, !764, !765, !780, !3561, !3563, !3576, !3577, !3578, !3579, !3580, !3586, !3587, !3588}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !742, file: !743, line: 84, baseType: !7, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !742, file: !743, line: 85, baseType: !747, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !748, line: 275, baseType: !749)
!748 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !748, line: 275, size: 32, elements: !750)
!750 = !{!751}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !749, file: !748, line: 275, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !748, line: 69, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !748, line: 64, size: 32, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !753, file: !748, line: 65, baseType: !7, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !742, file: !743, line: 86, baseType: !757, size: 128, offset: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !758, line: 38, size: 128, elements: !759)
!758 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!759 = !{!760, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !757, file: !758, line: 39, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !757, file: !758, line: 39, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !742, file: !743, line: 87, baseType: !741, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !742, file: !743, line: 88, baseType: !766, size: 128, offset: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !743, line: 49, size: 128, elements: !767)
!767 = !{!768, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !743, line: 50, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !743, line: 50, size: 64, elements: !770)
!770 = !{!771, !776}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !743, line: 51, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !743, line: 51, size: 64, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !772, file: !743, line: 52, baseType: !587, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !772, file: !743, line: 52, baseType: !587, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !769, file: !743, line: 54, baseType: !539, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !766, file: !743, line: 56, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !742, file: !743, line: 89, baseType: !781, size: 64, offset: 384)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !6, line: 641, size: 4800, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !793, !794, !981, !3372, !3373, !3374, !3375, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3543, !3546, !3547, !3548, !3557, !3558, !3559, !3560}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !782, file: !6, line: 642, baseType: !140, size: 16)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !782, file: !6, line: 643, baseType: !141, size: 16, offset: 16)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !782, file: !6, line: 644, baseType: !324, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !782, file: !6, line: 645, baseType: !148, size: 128, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !782, file: !6, line: 646, baseType: !332, size: 32, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !782, file: !6, line: 647, baseType: !7, size: 32, offset: 224)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !782, file: !6, line: 650, baseType: !791, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !6, line: 607, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !782, file: !6, line: 651, baseType: !791, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !782, file: !6, line: 654, baseType: !795, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !6, line: 1966, size: 2048, align: 512, elements: !798)
!798 = !{!799, !803, !813, !819, !823, !827, !831, !835, !839, !843, !847, !848, !854, !858, !895, !926, !930, !936, !940, !944, !948, !952, !956, !962, !966}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !797, file: !6, line: 1967, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!741, !781, !741, !7}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !797, file: !6, line: 1968, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!134, !741, !781, !807}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !809, line: 10, size: 128, elements: !810)
!809 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !808, file: !809, line: 11, baseType: !312, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !808, file: !809, line: 12, baseType: !104, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !797, file: !6, line: 1969, baseType: !814, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!184, !817, !781, !184}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !535, line: 42, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !797, file: !6, line: 1970, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!791, !781, !184, !293}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !797, file: !6, line: 1972, baseType: !824, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!184, !741, !229, !184}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !797, file: !6, line: 1974, baseType: !828, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!184, !817, !781, !741, !140, !293}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !797, file: !6, line: 1976, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!184, !741, !781, !741}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !797, file: !6, line: 1977, baseType: !836, size: 64, offset: 448)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!184, !781, !741}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !797, file: !6, line: 1978, baseType: !840, size: 64, offset: 512)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!184, !817, !781, !741, !134}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !797, file: !6, line: 1980, baseType: !844, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!184, !817, !781, !741, !140}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !797, file: !6, line: 1982, baseType: !836, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !797, file: !6, line: 1983, baseType: !849, size: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!184, !817, !781, !741, !140, !852}
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !106, line: 21, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !106, line: 18, baseType: !587)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !797, file: !6, line: 1985, baseType: !855, size: 64, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!184, !817, !781, !741, !781, !741, !7}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !797, file: !6, line: 1987, baseType: !859, size: 64, offset: 832)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!184, !817, !741, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !6, line: 226, size: 640, elements: !864)
!864 = !{!865, !866, !867, !877, !886, !887, !892, !893, !894}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !863, file: !6, line: 227, baseType: !7, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !863, file: !6, line: 228, baseType: !140, size: 16, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !6, line: 241, baseType: !868, size: 32, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !6, line: 241, size: 32, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !868, file: !6, line: 242, baseType: !324, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !868, file: !6, line: 243, baseType: !872, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !873, line: 16, baseType: !874)
!873 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !873, line: 14, size: 32, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !874, file: !873, line: 15, baseType: !329, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !6, line: 245, baseType: !878, size: 32, offset: 96)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !6, line: 245, size: 32, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !878, file: !6, line: 246, baseType: !332, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !878, file: !6, line: 247, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !873, line: 20, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !873, line: 18, size: 32, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !883, file: !873, line: 19, baseType: !336, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !863, file: !6, line: 249, baseType: !442, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !863, file: !6, line: 250, baseType: !888, size: 128, offset: 192)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !579, line: 13, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !888, file: !579, line: 14, baseType: !578, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !888, file: !579, line: 15, baseType: !264, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !863, file: !6, line: 251, baseType: !888, size: 128, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !863, file: !6, line: 252, baseType: !888, size: 128, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !863, file: !6, line: 259, baseType: !393, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !797, file: !6, line: 1988, baseType: !896, size: 64, offset: 896)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!184, !817, !899, !901, !587, !7}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !903, line: 22, size: 1280, elements: !904)
!903 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !902, file: !903, line: 23, baseType: !587, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !902, file: !903, line: 24, baseType: !140, size: 16, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !902, file: !903, line: 25, baseType: !7, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !902, file: !903, line: 26, baseType: !586, size: 32, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !902, file: !903, line: 27, baseType: !539, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !902, file: !903, line: 28, baseType: !539, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !902, file: !903, line: 41, baseType: !539, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !902, file: !903, line: 42, baseType: !852, size: 32, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !902, file: !903, line: 43, baseType: !852, size: 32, offset: 352)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !902, file: !903, line: 44, baseType: !324, size: 32, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !902, file: !903, line: 45, baseType: !332, size: 32, offset: 416)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !902, file: !903, line: 46, baseType: !442, size: 64, offset: 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !902, file: !903, line: 47, baseType: !888, size: 128, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !902, file: !903, line: 48, baseType: !888, size: 128, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !902, file: !903, line: 49, baseType: !888, size: 128, offset: 768)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !902, file: !903, line: 50, baseType: !888, size: 128, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !902, file: !903, line: 51, baseType: !539, size: 64, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !902, file: !903, line: 52, baseType: !539, size: 64, offset: 1088)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !902, file: !903, line: 53, baseType: !587, size: 32, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !902, file: !903, line: 54, baseType: !587, size: 32, offset: 1184)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !902, file: !903, line: 55, baseType: !539, size: 64, offset: 1216)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !797, file: !6, line: 1990, baseType: !927, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!260, !741, !229, !274}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !797, file: !6, line: 1991, baseType: !931, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!184, !781, !934, !539, !539}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !6, line: 55, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !797, file: !6, line: 1993, baseType: !937, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!184, !781, !184}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !797, file: !6, line: 1994, baseType: !941, size: 64, offset: 1152)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!184, !781, !741, !393, !7, !140}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !797, file: !6, line: 1997, baseType: !945, size: 64, offset: 1216)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!184, !817, !781, !393, !140}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !797, file: !6, line: 1999, baseType: !949, size: 64, offset: 1280)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!791, !817, !741, !184}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !797, file: !6, line: 2001, baseType: !953, size: 64, offset: 1344)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!184, !817, !741, !791, !184}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !797, file: !6, line: 2003, baseType: !957, size: 64, offset: 1408)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!184, !817, !741, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !6, line: 76, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !797, file: !6, line: 2005, baseType: !963, size: 64, offset: 1472)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!184, !741, !960}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !797, file: !6, line: 2006, baseType: !967, size: 64, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!970, !781}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !6, line: 3192, size: 192, elements: !972)
!972 = !{!973, !980}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !971, file: !6, line: 3193, baseType: !974, size: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !975, line: 296, size: 128, elements: !976)
!975 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !974, file: !975, line: 297, baseType: !160, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !974, file: !975, line: 299, baseType: !105, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !974, file: !975, line: 300, baseType: !104, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !971, file: !6, line: 3194, baseType: !587, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !782, file: !6, line: 655, baseType: !982, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !6, line: 1190, size: 10752, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !1032, !1170, !1210, !1293, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1310, !1314, !1315, !1318, !1321, !1324, !1327, !1328, !1329, !1370, !3245, !3246, !3247, !3248, !3249, !3250, !3253, !3255, !3262, !3263, !3264, !3265, !3324, !3339, !3340, !3341, !3342, !3343, !3346, !3347, !3348, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !983, file: !6, line: 1191, baseType: !148, size: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !983, file: !6, line: 1192, baseType: !852, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !983, file: !6, line: 1193, baseType: !192, size: 8, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !983, file: !6, line: 1194, baseType: !107, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !983, file: !6, line: 1195, baseType: !442, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !983, file: !6, line: 1196, baseType: !991, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !6, line: 2366, size: 576, elements: !993)
!993 = !{!994, !995, !996, !1002, !1006, !1010, !1014, !1018, !1019, !1020, !1024, !1025, !1026, !1028, !1029, !1030, !1031}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !992, file: !6, line: 2367, baseType: !134, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !992, file: !6, line: 2368, baseType: !184, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !992, file: !6, line: 2376, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!184, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !341, line: 32, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !992, file: !6, line: 2377, baseType: !1003, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !6, line: 75, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !992, file: !6, line: 2378, baseType: !1007, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!741, !991, !184, !134, !104}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !992, file: !6, line: 2380, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !982}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !992, file: !6, line: 2381, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1017, line: 103, flags: DIFlagFwdDecl)
!1017 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !6, line: 2382, baseType: !991, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !992, file: !6, line: 2383, baseType: !483, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !992, file: !6, line: 2385, baseType: !1021, offset: 576)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1022, line: 206, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1023 = !{}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !992, file: !6, line: 2386, baseType: !1021, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !992, file: !6, line: 2387, baseType: !1021, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !992, file: !6, line: 2388, baseType: !1027, offset: 576)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, elements: !230)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !992, file: !6, line: 2390, baseType: !1021, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !992, file: !6, line: 2391, baseType: !1021, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !992, file: !6, line: 2392, baseType: !1021, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !992, file: !6, line: 2393, baseType: !1021, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !983, file: !6, line: 1197, baseType: !1033, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !6, line: 2057, size: 1664, elements: !1036)
!1036 = !{!1037, !1041, !1045, !1046, !1050, !1056, !1060, !1061, !1062, !1066, !1070, !1074, !1075, !1076, !1082, !1087, !1088, !1095, !1096, !1097, !1098, !1102, !1106, !1153, !1168, !1169}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1035, file: !6, line: 2058, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!781, !982}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1035, file: !6, line: 2059, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !781}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1035, file: !6, line: 2060, baseType: !1042, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1035, file: !6, line: 2062, baseType: !1047, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !781, !184}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1035, file: !6, line: 2063, baseType: !1051, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!184, !781, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 309, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1035, file: !6, line: 2064, baseType: !1057, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!184, !781}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1035, file: !6, line: 2065, baseType: !1042, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1035, file: !6, line: 2066, baseType: !1011, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1035, file: !6, line: 2067, baseType: !1063, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!184, !982, !184}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1035, file: !6, line: 2068, baseType: !1067, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!184, !982, !5}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1035, file: !6, line: 2069, baseType: !1071, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!184, !982}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1035, file: !6, line: 2070, baseType: !1067, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1035, file: !6, line: 2071, baseType: !1071, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1035, file: !6, line: 2072, baseType: !1077, size: 64, offset: 832)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!184, !741, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !6, line: 62, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1035, file: !6, line: 2073, baseType: !1083, size: 64, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!184, !982, !1086, !229}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1035, file: !6, line: 2074, baseType: !1011, size: 64, offset: 960)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1035, file: !6, line: 2076, baseType: !1089, size: 64, offset: 1024)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!184, !1092, !741}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1094, line: 66, flags: DIFlagFwdDecl)
!1094 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1035, file: !6, line: 2077, baseType: !1089, size: 64, offset: 1088)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1035, file: !6, line: 2078, baseType: !1089, size: 64, offset: 1152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1035, file: !6, line: 2079, baseType: !1089, size: 64, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1035, file: !6, line: 2081, baseType: !1099, size: 64, offset: 1280)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!260, !982, !184, !229, !274, !442}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1035, file: !6, line: 2082, baseType: !1103, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!260, !982, !184, !134, !274, !442}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1035, file: !6, line: 2083, baseType: !1107, size: 64, offset: 1408)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1110, !781}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !12, line: 296, size: 1664, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1138, !1139, !1140}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1112, file: !12, line: 297, baseType: !487, size: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1112, file: !12, line: 298, baseType: !148, size: 128, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1112, file: !12, line: 299, baseType: !148, size: 128, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1112, file: !12, line: 300, baseType: !148, size: 128, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1112, file: !12, line: 301, baseType: !429, size: 256, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1112, file: !12, line: 302, baseType: !160, size: 32, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1112, file: !12, line: 303, baseType: !180, size: 32, offset: 800)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1112, file: !12, line: 304, baseType: !982, size: 64, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1112, file: !12, line: 305, baseType: !1123, size: 64, offset: 896)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !12, line: 68, size: 64, elements: !1124)
!1124 = !{!1125, !1137}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1123, file: !12, line: 69, baseType: !1126, size: 32)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1123, file: !12, line: 69, size: 32, elements: !1127)
!1127 = !{!1128, !1129, !1130}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1126, file: !12, line: 70, baseType: !324, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1126, file: !12, line: 71, baseType: !332, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1126, file: !12, line: 72, baseType: !1131, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1132, line: 24, baseType: !1133)
!1132 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1132, line: 22, size: 32, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1133, file: !1132, line: 23, baseType: !1136, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1132, line: 20, baseType: !330)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1123, file: !12, line: 74, baseType: !11, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1112, file: !12, line: 306, baseType: !442, size: 64, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1112, file: !12, line: 307, baseType: !107, size: 64, offset: 1024)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1112, file: !12, line: 308, baseType: !1141, size: 576, offset: 1088)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !12, line: 205, size: 576, elements: !1142)
!1142 = !{!1143, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1141, file: !12, line: 206, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !12, line: 66, baseType: !427)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1141, file: !12, line: 207, baseType: !1144, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1141, file: !12, line: 208, baseType: !1144, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1141, file: !12, line: 209, baseType: !1144, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1141, file: !12, line: 210, baseType: !1144, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1141, file: !12, line: 211, baseType: !1144, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1141, file: !12, line: 212, baseType: !1144, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1141, file: !12, line: 213, baseType: !578, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1141, file: !12, line: 214, baseType: !578, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1035, file: !6, line: 2085, baseType: !1154, size: 64, offset: 1472)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!264, !982, !1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1159, line: 15, size: 256, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1160 = !{!1161, !1162, !1163, !1164, !1165}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1158, file: !1159, line: 16, baseType: !105, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1158, file: !1159, line: 19, baseType: !184, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1158, file: !1159, line: 26, baseType: !107, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1158, file: !1159, line: 33, baseType: !107, size: 64, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1158, file: !1159, line: 36, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !31, line: 33, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1035, file: !6, line: 2087, baseType: !1154, size: 64, offset: 1536)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1035, file: !6, line: 2089, baseType: !1011, size: 64, offset: 1600)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !983, file: !6, line: 1198, baseType: !1171, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !12, line: 324, size: 704, elements: !1174)
!1174 = !{!1175, !1179, !1183, !1187, !1188, !1189, !1190, !1191, !1196, !1201, !1205}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1173, file: !12, line: 325, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!184, !1111}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1173, file: !12, line: 326, baseType: !1180, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!1111, !982, !184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1173, file: !12, line: 327, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !1111}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1173, file: !12, line: 328, baseType: !1176, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1173, file: !12, line: 329, baseType: !1176, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1173, file: !12, line: 330, baseType: !1176, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1173, file: !12, line: 331, baseType: !1063, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1173, file: !12, line: 334, baseType: !1192, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!1195, !781}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1173, file: !12, line: 335, baseType: !1197, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!184, !781, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1173, file: !12, line: 337, baseType: !1202, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!184, !781, !1195}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1173, file: !12, line: 339, baseType: !1206, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!184, !982, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !983, file: !6, line: 1199, baseType: !1211, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !12, line: 430, size: 704, elements: !1214)
!1214 = !{!1215, !1219, !1220, !1224, !1225, !1226, !1241, !1264, !1268, !1269, !1292}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1213, file: !12, line: 431, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!184, !982, !184, !184, !899}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1213, file: !12, line: 432, baseType: !1063, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1213, file: !12, line: 433, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!184, !982, !7}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1213, file: !12, line: 434, baseType: !1221, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1213, file: !12, line: 435, baseType: !1063, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1213, file: !12, line: 436, baseType: !1227, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!184, !982, !184, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !12, line: 417, size: 256, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1231, file: !12, line: 418, baseType: !184, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1231, file: !12, line: 419, baseType: !7, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1231, file: !12, line: 420, baseType: !7, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1231, file: !12, line: 422, baseType: !7, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1231, file: !12, line: 423, baseType: !7, size: 32, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1231, file: !12, line: 424, baseType: !7, size: 32, offset: 160)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1231, file: !12, line: 425, baseType: !7, size: 32, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1231, file: !12, line: 426, baseType: !7, size: 32, offset: 224)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1213, file: !12, line: 437, baseType: !1242, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!184, !982, !1123, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !12, line: 345, size: 960, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1246, file: !12, line: 346, baseType: !184, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1246, file: !12, line: 347, baseType: !539, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1246, file: !12, line: 348, baseType: !539, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1246, file: !12, line: 349, baseType: !539, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1246, file: !12, line: 350, baseType: !539, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1246, file: !12, line: 351, baseType: !539, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1246, file: !12, line: 352, baseType: !539, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1246, file: !12, line: 353, baseType: !425, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1246, file: !12, line: 355, baseType: !425, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1246, file: !12, line: 356, baseType: !184, size: 32, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1246, file: !12, line: 357, baseType: !184, size: 32, offset: 608)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1246, file: !12, line: 358, baseType: !539, size: 64, offset: 640)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1246, file: !12, line: 359, baseType: !539, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1246, file: !12, line: 360, baseType: !539, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1246, file: !12, line: 361, baseType: !425, size: 64, offset: 832)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1246, file: !12, line: 362, baseType: !184, size: 32, offset: 896)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1213, file: !12, line: 438, baseType: !1265, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!184, !982, !1209, !1245}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1213, file: !12, line: 440, baseType: !1242, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1213, file: !12, line: 441, baseType: !1270, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!184, !982, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !12, line: 411, size: 1408, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1274, file: !12, line: 412, baseType: !7, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1274, file: !12, line: 413, baseType: !1278, size: 1344, offset: 64)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 1344, elements: !230)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !12, line: 397, size: 448, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !12, line: 398, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1279, file: !12, line: 399, baseType: !7, size: 32, offset: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1279, file: !12, line: 401, baseType: !7, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1279, file: !12, line: 402, baseType: !7, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1279, file: !12, line: 403, baseType: !7, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1279, file: !12, line: 404, baseType: !7, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1279, file: !12, line: 405, baseType: !7, size: 32, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1279, file: !12, line: 406, baseType: !118, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1279, file: !12, line: 407, baseType: !1290, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !106, line: 132, baseType: !539)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1279, file: !12, line: 408, baseType: !1290, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1213, file: !12, line: 442, baseType: !1221, size: 64, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !983, file: !6, line: 1200, baseType: !1294, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !6, line: 54, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !983, file: !6, line: 1201, baseType: !107, size: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !983, file: !6, line: 1202, baseType: !107, size: 64, offset: 704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !983, file: !6, line: 1203, baseType: !107, size: 64, offset: 768)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !983, file: !6, line: 1204, baseType: !741, size: 64, offset: 832)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !983, file: !6, line: 1205, baseType: !562, size: 320, offset: 896)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !983, file: !6, line: 1206, baseType: !184, size: 32, offset: 1216)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !983, file: !6, line: 1207, baseType: !180, size: 32, offset: 1248)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !983, file: !6, line: 1209, baseType: !104, size: 64, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !983, file: !6, line: 1211, baseType: !1306, size: 64, offset: 1344)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !6, line: 1211, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !983, file: !6, line: 1223, baseType: !1311, size: 64, offset: 1408)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !758, line: 34, size: 64, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1311, file: !758, line: 35, baseType: !761, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !983, file: !6, line: 1224, baseType: !148, size: 128, offset: 1472)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !983, file: !6, line: 1225, baseType: !1316, size: 64, offset: 1600)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !6, line: 1225, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !983, file: !6, line: 1226, baseType: !1319, size: 64, offset: 1664)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !6, line: 1226, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !983, file: !6, line: 1227, baseType: !1322, size: 64, offset: 1728)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !6, line: 50, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !983, file: !6, line: 1228, baseType: !1325, size: 64, offset: 1792)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !6, line: 1228, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !983, file: !6, line: 1229, baseType: !487, size: 128, offset: 1856)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !983, file: !6, line: 1230, baseType: !7, size: 32, offset: 1984)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !983, file: !6, line: 1231, baseType: !1330, size: 2496, offset: 2048)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !12, line: 521, size: 2496, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1336, !1368}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !12, line: 522, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1330, file: !12, line: 523, baseType: !562, size: 320, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1330, file: !12, line: 524, baseType: !1335, size: 192, offset: 384)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 192, elements: !230)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1330, file: !12, line: 525, baseType: !1337, size: 1728, offset: 576)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 1728, elements: !230)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !12, line: 222, size: 576, elements: !1339)
!1339 = !{!1340, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1338, file: !12, line: 223, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !12, line: 445, size: 256, elements: !1343)
!1343 = !{!1344, !1345, !1358, !1359}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1342, file: !12, line: 446, baseType: !184, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1342, file: !12, line: 447, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !12, line: 312, size: 512, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1348, file: !12, line: 313, baseType: !1063, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1348, file: !12, line: 314, baseType: !1063, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1348, file: !12, line: 315, baseType: !1063, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1348, file: !12, line: 316, baseType: !1063, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1348, file: !12, line: 317, baseType: !1176, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1348, file: !12, line: 318, baseType: !1176, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1348, file: !12, line: 319, baseType: !1176, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1348, file: !12, line: 320, baseType: !1206, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1342, file: !12, line: 448, baseType: !1015, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1342, file: !12, line: 449, baseType: !1341, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1338, file: !12, line: 224, baseType: !184, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1338, file: !12, line: 226, baseType: !148, size: 128, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1338, file: !12, line: 227, baseType: !107, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1338, file: !12, line: 228, baseType: !7, size: 32, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1338, file: !12, line: 229, baseType: !7, size: 32, offset: 352)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1338, file: !12, line: 230, baseType: !1144, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1338, file: !12, line: 231, baseType: !1144, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1338, file: !12, line: 232, baseType: !104, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1330, file: !12, line: 526, baseType: !1369, size: 192, offset: 2304)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 192, elements: !230)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !983, file: !6, line: 1233, baseType: !1371, size: 2368, offset: 4544)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !6, line: 1184, size: 2368, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1371, file: !6, line: 1185, baseType: !141, size: 16)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1371, file: !6, line: 1186, baseType: !141, size: 16, offset: 16)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1371, file: !6, line: 1187, baseType: !1376, size: 2304, offset: 64)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 2304, elements: !230)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1378, line: 12, size: 768, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1379 = !{!1380, !1388, !1390, !3243, !3244}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1377, file: !1378, line: 13, baseType: !1381, size: 384)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1382, line: 17, size: 384, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1383 = !{!1384, !1385, !1386, !1387}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1381, file: !1382, line: 18, baseType: !184, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1381, file: !1382, line: 19, baseType: !184, size: 32, offset: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1381, file: !1382, line: 20, baseType: !496, size: 192, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1381, file: !1382, line: 22, baseType: !406, size: 128, align: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1377, file: !1378, line: 14, baseType: !1389, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1377, file: !1378, line: 15, baseType: !1391, size: 64, offset: 448)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1392, line: 16, size: 64, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1391, file: !1392, line: 17, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1094, line: 746, size: 58368, elements: !1397)
!1397 = !{!1398, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1478, !1489, !1581, !1585, !1588, !1619, !1620, !1621, !1622, !1633, !1635, !1636, !1637, !1638, !1639, !1640, !1651, !1652, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1669, !1670, !1677, !1678, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1902, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1917, !1918, !1919, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1961, !1967, !1968, !1969, !1970, !1971, !1975, !1978, !1985, !1990, !1993, !1996, !1999, !2002, !2142, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2182, !2183, !2184, !2193, !2201, !2202, !2203, !2204, !2205, !2210, !2211, !2212, !2215, !2216, !2219, !2222, !2225, !2233, !2236, !2237, !2323, !2324, !2325, !2326, !2327, !2333, !2334, !2335, !2336, !2339, !2340, !2343, !2346, !2347, !2350, !2351, !2352, !2355, !2356, !2357, !2360, !2361, !2362, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2394, !2397, !2889, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2901, !2973, !2975, !2976, !2977, !2978, !2979, !2991, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3020, !3021, !3022}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1396, file: !1094, line: 752, baseType: !1399, size: 192)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1400, line: 56, size: 192, elements: !1401)
!1400 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1401 = !{!1402, !1403, !1404, !1405}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !1400, line: 57, baseType: !107, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1399, file: !1400, line: 58, baseType: !107, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1399, file: !1400, line: 59, baseType: !587, size: 32, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1399, file: !1400, line: 61, baseType: !587, size: 32, offset: 160)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1396, file: !1094, line: 754, baseType: !7, size: 32, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1396, file: !1094, line: 767, baseType: !104, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1396, file: !1094, line: 768, baseType: !474, size: 32, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1396, file: !1094, line: 770, baseType: !7, size: 32, offset: 352)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1396, file: !1094, line: 771, baseType: !7, size: 32, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1396, file: !1094, line: 774, baseType: !184, size: 32, offset: 416)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1396, file: !1094, line: 775, baseType: !1413, size: 128, offset: 448)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1414, line: 58, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1415 = !{!1416, !1417, !1422, !1423}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1413, file: !1414, line: 59, baseType: !400, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1414, line: 60, baseType: !1418, size: 32, offset: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1413, file: !1414, line: 60, size: 32, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1418, file: !1414, line: 61, baseType: !7, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1418, file: !1414, line: 62, baseType: !180, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1413, file: !1414, line: 65, baseType: !198, size: 16, offset: 96)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1413, file: !1414, line: 65, baseType: !198, size: 16, offset: 112)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1396, file: !1094, line: 776, baseType: !7, size: 32, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1396, file: !1094, line: 777, baseType: !107, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1396, file: !1094, line: 778, baseType: !1395, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1396, file: !1094, line: 787, baseType: !184, size: 32, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1396, file: !1094, line: 788, baseType: !184, size: 32, offset: 800)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1396, file: !1094, line: 790, baseType: !184, size: 32, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1396, file: !1094, line: 792, baseType: !184, size: 32, offset: 864)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1396, file: !1094, line: 793, baseType: !184, size: 32, offset: 896)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1396, file: !1094, line: 794, baseType: !184, size: 32, offset: 928)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1396, file: !1094, line: 795, baseType: !7, size: 32, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1396, file: !1094, line: 797, baseType: !1435, size: 2048, offset: 1024)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1094, line: 551, size: 2048, elements: !1436)
!1436 = !{!1437, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1457, !1460, !1461, !1462}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1435, file: !1094, line: 553, baseType: !1438, size: 128)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1094, line: 411, size: 128, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1438, file: !1094, line: 412, baseType: !107, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1438, file: !1094, line: 413, baseType: !587, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1435, file: !1094, line: 554, baseType: !348, size: 192, align: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1435, file: !1094, line: 555, baseType: !539, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1435, file: !1094, line: 556, baseType: !539, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1435, file: !1094, line: 558, baseType: !148, size: 128, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1435, file: !1094, line: 559, baseType: !7, size: 32, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1435, file: !1094, line: 561, baseType: !539, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1435, file: !1094, line: 562, baseType: !539, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1435, file: !1094, line: 563, baseType: !539, size: 64, offset: 768)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1435, file: !1094, line: 564, baseType: !539, size: 64, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1435, file: !1094, line: 565, baseType: !425, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1435, file: !1094, line: 566, baseType: !539, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1435, file: !1094, line: 568, baseType: !539, size: 64, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1435, file: !1094, line: 571, baseType: !184, size: 32, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1435, file: !1094, line: 572, baseType: !1456, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1435, file: !1094, line: 574, baseType: !1458, size: 64, offset: 1216)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1094, line: 49, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1435, file: !1094, line: 576, baseType: !1458, size: 64, offset: 1280)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1435, file: !1094, line: 578, baseType: !107, size: 64, offset: 1344)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1435, file: !1094, line: 588, baseType: !1463, size: 512, align: 512, offset: 1536)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1094, line: 497, size: 512, align: 512, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1463, file: !1094, line: 498, baseType: !539, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1463, file: !1094, line: 499, baseType: !539, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1463, file: !1094, line: 500, baseType: !539, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1463, file: !1094, line: 501, baseType: !587, size: 32, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1463, file: !1094, line: 502, baseType: !587, size: 32, offset: 224)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1463, file: !1094, line: 503, baseType: !107, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1463, file: !1094, line: 504, baseType: !107, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1463, file: !1094, line: 505, baseType: !107, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1463, file: !1094, line: 506, baseType: !1474, size: 64, align: 64, offset: 448)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1094, line: 445, size: 64, align: 64, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1474, file: !1094, line: 446, baseType: !7, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1474, file: !1094, line: 447, baseType: !7, size: 32, offset: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1396, file: !1094, line: 798, baseType: !1479, size: 384, offset: 3072)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1094, line: 592, size: 384, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1479, file: !1094, line: 593, baseType: !148, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1479, file: !1094, line: 594, baseType: !107, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1479, file: !1094, line: 595, baseType: !107, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1479, file: !1094, line: 596, baseType: !7, size: 32, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1479, file: !1094, line: 597, baseType: !141, size: 16, offset: 288)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1479, file: !1094, line: 598, baseType: !141, size: 16, offset: 304)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1479, file: !1094, line: 600, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1396, file: !1094, line: 799, baseType: !1490, size: 1792, offset: 3456)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1094, line: 610, size: 1792, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1578, !1579}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1490, file: !1094, line: 611, baseType: !348, size: 192, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1490, file: !1094, line: 618, baseType: !539, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1490, file: !1094, line: 619, baseType: !539, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1490, file: !1094, line: 620, baseType: !539, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1490, file: !1094, line: 621, baseType: !539, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1490, file: !1094, line: 622, baseType: !539, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1490, file: !1094, line: 629, baseType: !425, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1490, file: !1094, line: 630, baseType: !539, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1490, file: !1094, line: 631, baseType: !7, size: 32, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1490, file: !1094, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1490, file: !1094, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1490, file: !1094, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1490, file: !1094, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1490, file: !1094, line: 662, baseType: !1506, size: 512, offset: 704)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1507)
!1507 = !{!1508, !1516, !1517, !1522, !1574, !1575, !1576, !1577}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1506, file: !18, line: 119, baseType: !1509, size: 256)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1510, line: 9, size: 256, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1509, file: !1510, line: 10, baseType: !348, size: 192, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1509, file: !1510, line: 11, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1515, line: 29, baseType: !425)
!1515 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1506, file: !18, line: 120, baseType: !1514, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1506, file: !18, line: 121, baseType: !1518, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!17, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1506, file: !18, line: 122, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1525)
!1525 = !{!1526, !1551, !1552, !1555, !1560, !1561, !1569, !1573}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1524, file: !18, line: 160, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 215, size: 4608, align: 512, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1528, file: !18, line: 216, baseType: !434, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1528, file: !18, line: 217, baseType: !7, size: 32, offset: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1528, file: !18, line: 218, baseType: !7, size: 32, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1528, file: !18, line: 219, baseType: !7, size: 32, offset: 96)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1528, file: !18, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1528, file: !18, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1528, file: !18, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1528, file: !18, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1528, file: !18, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1528, file: !18, line: 226, baseType: !7, size: 32, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1528, file: !18, line: 227, baseType: !141, size: 16, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1528, file: !18, line: 228, baseType: !141, size: 16, offset: 208)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1528, file: !18, line: 229, baseType: !7, size: 32, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1528, file: !18, line: 235, baseType: !1514, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1528, file: !18, line: 236, baseType: !1521, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1528, file: !18, line: 237, baseType: !1514, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1528, file: !18, line: 238, baseType: !1521, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1528, file: !18, line: 239, baseType: !1548, size: 4096, align: 512, offset: 512)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1524, size: 4096, align: 512, elements: !1549)
!1549 = !{!1550}
!1550 = !DISubrange(count: 8)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1524, file: !18, line: 161, baseType: !7, size: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1524, file: !18, line: 162, baseType: !1553, size: 32, offset: 96)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !106, line: 32, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !262, line: 96, baseType: !184)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1524, file: !18, line: 163, baseType: !1556, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !748, line: 274, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !748, line: 274, size: 32, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1557, file: !748, line: 274, baseType: !752, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1524, file: !18, line: 164, baseType: !1521, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1524, file: !18, line: 165, baseType: !1562, size: 128, offset: 256)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1510, line: 14, size: 128, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1562, file: !1510, line: 15, baseType: !1565, size: 128)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !349, line: 26, size: 128, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1565, file: !349, line: 27, baseType: !365, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1565, file: !349, line: 28, baseType: !353, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1524, file: !18, line: 166, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1514}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1524, file: !18, line: 167, baseType: !1514, size: 64, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1506, file: !18, line: 123, baseType: !189, size: 8, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1506, file: !18, line: 124, baseType: !189, size: 8, offset: 456)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1506, file: !18, line: 125, baseType: !189, size: 8, offset: 464)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1506, file: !18, line: 126, baseType: !189, size: 8, offset: 472)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1490, file: !1094, line: 671, baseType: !1506, size: 512, offset: 1216)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1490, file: !1094, line: 679, baseType: !1580, size: 64, offset: 1728)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1396, file: !1094, line: 800, baseType: !1582, size: 64, offset: 5248)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1094, line: 800, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1396, file: !1094, line: 809, baseType: !1586, size: 64, offset: 5312)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1094, line: 70, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1396, file: !1094, line: 825, baseType: !1589, size: 2048, align: 512, offset: 5632)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1094, line: 509, size: 2048, align: 512, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1589, file: !1094, line: 511, baseType: !539, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1589, file: !1094, line: 512, baseType: !539, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1589, file: !1094, line: 513, baseType: !539, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1589, file: !1094, line: 514, baseType: !539, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1589, file: !1094, line: 515, baseType: !539, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1589, file: !1094, line: 516, baseType: !539, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1589, file: !1094, line: 518, baseType: !539, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1589, file: !1094, line: 519, baseType: !539, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1589, file: !1094, line: 520, baseType: !425, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1589, file: !1094, line: 522, baseType: !539, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1589, file: !1094, line: 523, baseType: !539, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1589, file: !1094, line: 524, baseType: !425, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1589, file: !1094, line: 526, baseType: !425, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1589, file: !1094, line: 527, baseType: !539, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1589, file: !1094, line: 529, baseType: !539, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1589, file: !1094, line: 530, baseType: !539, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1589, file: !1094, line: 531, baseType: !539, size: 64, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1589, file: !1094, line: 532, baseType: !539, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1589, file: !1094, line: 533, baseType: !539, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1589, file: !1094, line: 535, baseType: !539, size: 64, offset: 1216)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1589, file: !1094, line: 536, baseType: !539, size: 64, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1589, file: !1094, line: 537, baseType: !539, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1589, file: !1094, line: 538, baseType: !539, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1589, file: !1094, line: 539, baseType: !539, size: 64, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1589, file: !1094, line: 540, baseType: !539, size: 64, offset: 1536)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1589, file: !1094, line: 541, baseType: !539, size: 64, offset: 1600)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1589, file: !1094, line: 542, baseType: !539, size: 64, offset: 1664)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1589, file: !1094, line: 543, baseType: !539, size: 64, offset: 1728)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1396, file: !1094, line: 833, baseType: !7, size: 32, offset: 7680)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1396, file: !1094, line: 836, baseType: !7, size: 32, offset: 7712)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1396, file: !1094, line: 837, baseType: !184, size: 32, offset: 7744)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1396, file: !1094, line: 838, baseType: !1623, size: 64, offset: 7808)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1626, line: 19, baseType: !1627)
!1626 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1626, line: 19, size: 64, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1627, file: !1626, line: 19, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 1)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1396, file: !1094, line: 839, baseType: !1634, size: 64, offset: 7872)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1396, file: !1094, line: 840, baseType: !1625, size: 64, offset: 7936)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1396, file: !1094, line: 841, baseType: !104, size: 64, offset: 8000)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1396, file: !1094, line: 843, baseType: !141, size: 16, offset: 8064)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1396, file: !1094, line: 845, baseType: !141, size: 16, offset: 8080)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1396, file: !1094, line: 848, baseType: !184, size: 32, offset: 8096)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1396, file: !1094, line: 849, baseType: !1641, size: 32, offset: 8128)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1094, line: 718, size: 32, elements: !1642)
!1642 = !{!1643, !1650}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1641, file: !1094, line: 724, baseType: !1644, size: 32)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1641, file: !1094, line: 719, size: 32, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1644, file: !1094, line: 720, baseType: !189, size: 8)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1644, file: !1094, line: 721, baseType: !189, size: 8, offset: 8)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1644, file: !1094, line: 722, baseType: !189, size: 8, offset: 16)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1644, file: !1094, line: 723, baseType: !189, size: 8, offset: 24)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1641, file: !1094, line: 725, baseType: !587, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1396, file: !1094, line: 850, baseType: !148, size: 128, offset: 8192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1396, file: !1094, line: 851, baseType: !1653, size: 64, offset: 8320)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1094, line: 60, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1396, file: !1094, line: 855, baseType: !107, size: 64, offset: 8384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1396, file: !1094, line: 856, baseType: !189, size: 8, offset: 8448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1396, file: !1094, line: 857, baseType: !189, size: 8, offset: 8456)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1396, file: !1094, line: 858, baseType: !184, size: 32, offset: 8480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1396, file: !1094, line: 859, baseType: !148, size: 128, offset: 8512)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1396, file: !1094, line: 860, baseType: !184, size: 32, offset: 8640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1396, file: !1094, line: 861, baseType: !148, size: 128, offset: 8704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1396, file: !1094, line: 873, baseType: !1663, size: 256, offset: 8832)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1094, line: 376, size: 256, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1668}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1663, file: !1094, line: 381, baseType: !107, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1663, file: !1094, line: 384, baseType: !118, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1663, file: !1094, line: 389, baseType: !118, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1663, file: !1094, line: 392, baseType: !118, size: 64, offset: 192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1396, file: !1094, line: 875, baseType: !148, size: 128, offset: 9088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1396, file: !1094, line: 877, baseType: !1671, size: 320, offset: 9216)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1672, line: 86, size: 320, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1671, file: !1672, line: 87, baseType: !184, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1671, file: !1672, line: 88, baseType: !148, size: 128, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1671, file: !1672, line: 89, baseType: !148, size: 128, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1396, file: !1094, line: 878, baseType: !348, size: 192, align: 64, offset: 9536)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1396, file: !1094, line: 881, baseType: !1679, size: 64, offset: 9728)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !31, line: 733, size: 10240, elements: !1681)
!1681 = !{!1682, !1821}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !31, line: 734, baseType: !1683, size: 10240)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !31, line: 734, size: 10240, elements: !1684)
!1684 = !{!1685, !1689, !1702, !1706, !1707, !1708, !1709, !1710, !1711, !1720, !1721, !1722, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1761, !1763, !1766, !1790, !1791, !1792, !1795, !1796, !1797, !1800, !1801, !1802, !1808, !1809}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !31, line: 739, baseType: !1686, size: 512, align: 512)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !31, line: 739, size: 512, align: 512, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1686, file: !31, line: 747, baseType: !180, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1683, file: !31, line: 750, baseType: !1690, size: 128, offset: 512)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1691, line: 218, size: 128, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1692 = !{!1693, !1700, !1701}
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1691, line: 219, baseType: !1694, size: 32)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !1691, line: 219, size: 32, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1694, file: !1691, line: 220, baseType: !160, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1694, file: !1691, line: 221, baseType: !1698)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1691, line: 197, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1691, line: 197, elements: !1023)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1690, file: !1691, line: 223, baseType: !7, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1690, file: !1691, line: 224, baseType: !104, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1683, file: !31, line: 752, baseType: !1703, size: 64, offset: 640)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!107, !393, !107, !107, !107, !107}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1683, file: !31, line: 756, baseType: !107, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1683, file: !31, line: 757, baseType: !107, size: 64, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1683, file: !31, line: 760, baseType: !107, size: 64, offset: 832)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1683, file: !31, line: 761, baseType: !107, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1683, file: !31, line: 763, baseType: !107, size: 64, offset: 960)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1683, file: !31, line: 764, baseType: !1712, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1714, line: 299, baseType: !1715)
!1714 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1714, line: 299, size: 64, elements: !1716)
!1716 = !{!1717}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1715, file: !1714, line: 299, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1719, line: 18, baseType: !107)
!1719 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1683, file: !31, line: 773, baseType: !180, size: 32, offset: 1088)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1683, file: !31, line: 785, baseType: !180, size: 32, offset: 1120)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1683, file: !31, line: 795, baseType: !1723, size: 64, offset: 1152)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !31, line: 726, size: 128, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1724, file: !31, line: 727, baseType: !539, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1724, file: !31, line: 728, baseType: !184, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1683, file: !31, line: 801, baseType: !107, size: 64, offset: 1216)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1683, file: !31, line: 804, baseType: !419, size: 64, offset: 1280)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1683, file: !31, line: 806, baseType: !184, size: 32, offset: 1344)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1683, file: !31, line: 808, baseType: !160, size: 32, offset: 1376)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1683, file: !31, line: 823, baseType: !562, size: 320, offset: 1408)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1683, file: !31, line: 825, baseType: !148, size: 128, offset: 1728)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1683, file: !31, line: 845, baseType: !184, size: 32, offset: 1856)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1683, file: !31, line: 849, baseType: !107, size: 64, offset: 1920)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1683, file: !31, line: 850, baseType: !107, size: 64, offset: 1984)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1683, file: !31, line: 852, baseType: !107, size: 64, offset: 2048)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1683, file: !31, line: 853, baseType: !107, size: 64, offset: 2112)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1683, file: !31, line: 854, baseType: !421, size: 64, offset: 2176)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1683, file: !31, line: 855, baseType: !107, size: 64, offset: 2240)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1683, file: !31, line: 856, baseType: !107, size: 64, offset: 2304)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1683, file: !31, line: 857, baseType: !107, size: 64, offset: 2368)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1683, file: !31, line: 858, baseType: !107, size: 64, offset: 2432)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1683, file: !31, line: 865, baseType: !752, size: 32, offset: 2496)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1683, file: !31, line: 867, baseType: !160, size: 32, offset: 2528)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1683, file: !31, line: 869, baseType: !107, size: 64, offset: 2560)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1683, file: !31, line: 869, baseType: !107, size: 64, offset: 2624)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1683, file: !31, line: 869, baseType: !107, size: 64, offset: 2688)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1683, file: !31, line: 869, baseType: !107, size: 64, offset: 2752)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1683, file: !31, line: 870, baseType: !107, size: 64, offset: 2816)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1683, file: !31, line: 870, baseType: !107, size: 64, offset: 2880)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1683, file: !31, line: 870, baseType: !107, size: 64, offset: 2944)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1683, file: !31, line: 871, baseType: !107, size: 64, offset: 3008)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1683, file: !31, line: 871, baseType: !107, size: 64, offset: 3072)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1683, file: !31, line: 871, baseType: !107, size: 64, offset: 3136)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1683, file: !31, line: 871, baseType: !107, size: 64, offset: 3200)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1683, file: !31, line: 873, baseType: !1758, size: 3328, offset: 3264)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3328, elements: !1759)
!1759 = !{!1760}
!1760 = !DISubrange(count: 52)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1683, file: !31, line: 875, baseType: !1762, size: 1280, offset: 6592)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 1280, elements: !492)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1683, file: !31, line: 877, baseType: !1764, size: 64, offset: 7872)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !31, line: 877, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1683, file: !31, line: 880, baseType: !1767, size: 1088, offset: 7936)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1768, line: 72, baseType: !1769)
!1768 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1768, line: 23, size: 1088, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1778, !1779, !1780, !1781, !1785, !1786, !1787}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1769, file: !1768, line: 28, baseType: !539, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1769, file: !1768, line: 38, baseType: !421, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1769, file: !1768, line: 40, baseType: !107, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1769, file: !1768, line: 43, baseType: !562, size: 320, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1769, file: !1768, line: 44, baseType: !1776, size: 64, offset: 512)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1768, line: 44, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1769, file: !1768, line: 48, baseType: !107, size: 64, offset: 576)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1769, file: !1768, line: 59, baseType: !429, size: 256, offset: 640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1769, file: !1768, line: 60, baseType: !104, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1769, file: !1768, line: 61, baseType: !1782, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1768, line: 61, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1769, file: !1768, line: 63, baseType: !180, size: 32, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1769, file: !1768, line: 69, baseType: !198, size: 16, offset: 1056)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1769, file: !1768, line: 70, baseType: !1788, size: 16, offset: 1072)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !190, line: 18, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !591)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1683, file: !31, line: 882, baseType: !107, size: 64, offset: 9024)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1683, file: !31, line: 885, baseType: !160, size: 32, offset: 9088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1683, file: !31, line: 886, baseType: !1793, size: 64, offset: 9152)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !31, line: 732, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1683, file: !31, line: 901, baseType: !703, size: 64, offset: 9216)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1683, file: !31, line: 904, baseType: !393, size: 64, offset: 9280)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1683, file: !31, line: 906, baseType: !1798, size: 64, offset: 9344)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !31, line: 906, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1683, file: !31, line: 930, baseType: !180, size: 32, offset: 9408)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1683, file: !31, line: 933, baseType: !180, size: 32, offset: 9440)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1683, file: !31, line: 935, baseType: !1803, size: 64, offset: 9472)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !61, line: 103, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1803, file: !61, line: 104, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !61, line: 101, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1683, file: !31, line: 940, baseType: !419, size: 64, offset: 9536)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1683, file: !31, line: 942, baseType: !1810, size: 256, offset: 9600)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1811, line: 98, size: 256, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1810, file: !1811, line: 99, baseType: !419, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1810, file: !1811, line: 100, baseType: !148, size: 128, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1810, file: !1811, line: 101, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1811, line: 21, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1680, file: !31, line: 986, baseType: !1822, offset: 10240)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !511)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1396, file: !1094, line: 882, baseType: !1679, size: 64, offset: 9792)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1396, file: !1094, line: 884, baseType: !184, size: 32, offset: 9856)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1396, file: !1094, line: 885, baseType: !184, size: 32, offset: 9888)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1396, file: !1094, line: 886, baseType: !184, size: 32, offset: 9920)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1396, file: !1094, line: 888, baseType: !184, size: 32, offset: 9952)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1396, file: !1094, line: 890, baseType: !107, size: 64, offset: 9984)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1396, file: !1094, line: 893, baseType: !7, size: 32, offset: 10048)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1396, file: !1094, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1396, file: !1094, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1396, file: !1094, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1396, file: !1094, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1396, file: !1094, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1396, file: !1094, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1396, file: !1094, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1396, file: !1094, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1396, file: !1094, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1396, file: !1094, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1396, file: !1094, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1396, file: !1094, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1396, file: !1094, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1396, file: !1094, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1396, file: !1094, line: 969, baseType: !107, size: 64, offset: 10176)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1396, file: !1094, line: 971, baseType: !1846, size: 448, offset: 10240)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !55, line: 25, size: 448, elements: !1847)
!1847 = !{!1848, !1849, !1854}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1846, file: !55, line: 26, baseType: !107, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1846, file: !55, line: 27, baseType: !1850, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!264, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1846, file: !55, line: 28, baseType: !1855, size: 320, offset: 128)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1846, file: !55, line: 28, size: 320, elements: !1856)
!1856 = !{!1857, !1867, !1892}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1855, file: !55, line: 37, baseType: !1858, size: 320)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !55, line: 30, size: 320, elements: !1859)
!1859 = !{!1860, !1862, !1863, !1864, !1865, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1858, file: !55, line: 31, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1858, file: !55, line: 32, baseType: !587, size: 32, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !55, line: 33, baseType: !587, size: 32, offset: 96)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1858, file: !55, line: 34, baseType: !587, size: 32, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1858, file: !55, line: 35, baseType: !539, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1858, file: !55, line: 36, baseType: !1861, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1855, file: !55, line: 47, baseType: !1868, size: 192)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !55, line: 39, size: 192, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1891}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1868, file: !55, line: 40, baseType: !1553, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1868, file: !55, line: 41, baseType: !54, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !55, line: 42, baseType: !1873, size: 64, offset: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !55, line: 42, size: 64, elements: !1874)
!1874 = !{!1875, !1883}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1873, file: !55, line: 43, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1878, line: 7, size: 128, elements: !1879)
!1878 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1879 = !{!1880, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1877, file: !1878, line: 8, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !262, line: 93, baseType: !427)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1877, file: !1878, line: 9, baseType: !427, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1873, file: !55, line: 44, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1886, line: 7, size: 64, elements: !1887)
!1886 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1887 = !{!1888, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1885, file: !1886, line: 8, baseType: !1889, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1886, line: 5, baseType: !554)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1885, file: !1886, line: 9, baseType: !554, size: 32, offset: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1868, file: !55, line: 46, baseType: !539, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1855, file: !55, line: 55, baseType: !1893, size: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !55, line: 49, size: 256, elements: !1894)
!1894 = !{!1895, !1898, !1899, !1900, !1901}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1893, file: !55, line: 50, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !55, line: 14, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1893, file: !55, line: 51, baseType: !184, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1893, file: !55, line: 52, baseType: !184, size: 32, offset: 96)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1893, file: !55, line: 53, baseType: !107, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1893, file: !55, line: 54, baseType: !107, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1396, file: !1094, line: 973, baseType: !1903, size: 32, offset: 10688)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !106, line: 27, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !262, line: 28, baseType: !184)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1396, file: !1094, line: 974, baseType: !1903, size: 32, offset: 10720)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1396, file: !1094, line: 978, baseType: !107, size: 64, offset: 10752)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1396, file: !1094, line: 987, baseType: !1395, size: 64, offset: 10816)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1396, file: !1094, line: 990, baseType: !1395, size: 64, offset: 10880)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1396, file: !1094, line: 995, baseType: !148, size: 128, offset: 10944)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1396, file: !1094, line: 996, baseType: !148, size: 128, offset: 11072)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1396, file: !1094, line: 997, baseType: !1395, size: 64, offset: 11200)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1396, file: !1094, line: 1005, baseType: !148, size: 128, offset: 11264)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1396, file: !1094, line: 1006, baseType: !148, size: 128, offset: 11392)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1396, file: !1094, line: 1009, baseType: !470, size: 64, offset: 11520)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1396, file: !1094, line: 1010, baseType: !1916, size: 512, offset: 11584)
!1916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 512, elements: !492)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1396, file: !1094, line: 1011, baseType: !148, size: 128, offset: 12096)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1396, file: !1094, line: 1012, baseType: !148, size: 128, offset: 12224)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1396, file: !1094, line: 1014, baseType: !1920, size: 64, offset: 12352)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1922, line: 26, size: 256, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1921, file: !1922, line: 27, baseType: !7, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1921, file: !1922, line: 28, baseType: !1926, size: 192, offset: 64)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1927, line: 43, size: 192, elements: !1928)
!1927 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1926, file: !1927, line: 44, baseType: !434, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1926, file: !1927, line: 45, baseType: !148, size: 128, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1396, file: !1094, line: 1017, baseType: !1086, size: 64, offset: 12416)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1396, file: !1094, line: 1020, baseType: !1086, size: 64, offset: 12480)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1396, file: !1094, line: 1023, baseType: !104, size: 64, offset: 12544)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1396, file: !1094, line: 1025, baseType: !539, size: 64, offset: 12608)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1396, file: !1094, line: 1026, baseType: !539, size: 64, offset: 12672)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1396, file: !1094, line: 1031, baseType: !539, size: 64, offset: 12736)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1396, file: !1094, line: 1032, baseType: !1938, size: 192, offset: 12800)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1094, line: 324, size: 192, elements: !1939)
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1938, file: !1094, line: 326, baseType: !539, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1938, file: !1094, line: 327, baseType: !539, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1938, file: !1094, line: 328, baseType: !434, size: 32, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1396, file: !1094, line: 1041, baseType: !107, size: 64, offset: 12992)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1396, file: !1094, line: 1042, baseType: !107, size: 64, offset: 13056)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1396, file: !1094, line: 1045, baseType: !539, size: 64, offset: 13120)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1396, file: !1094, line: 1048, baseType: !539, size: 64, offset: 13184)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1396, file: !1094, line: 1051, baseType: !107, size: 64, offset: 13248)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1396, file: !1094, line: 1052, baseType: !107, size: 64, offset: 13312)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1396, file: !1094, line: 1055, baseType: !1950, size: 640, offset: 13376)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1951, line: 132, size: 640, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1952 = !{!1953, !1959, !1960}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1950, file: !1951, line: 133, baseType: !1954, size: 576)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1955, size: 576, elements: !230)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1951, line: 117, size: 192, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1955, file: !1951, line: 118, baseType: !539, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1955, file: !1951, line: 119, baseType: !1562, size: 128, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1950, file: !1951, line: 134, baseType: !7, size: 32, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1950, file: !1951, line: 135, baseType: !7, size: 32, offset: 608)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1396, file: !1094, line: 1058, baseType: !1962, size: 448, offset: 14016)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1951, line: 144, size: 448, elements: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1962, file: !1951, line: 145, baseType: !406, size: 128, align: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1962, file: !1951, line: 146, baseType: !429, size: 256, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1962, file: !1951, line: 147, baseType: !7, size: 32, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1396, file: !1094, line: 1064, baseType: !518, size: 64, offset: 14464)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1396, file: !1094, line: 1067, baseType: !518, size: 64, offset: 14528)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1396, file: !1094, line: 1070, baseType: !518, size: 64, offset: 14592)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1396, file: !1094, line: 1074, baseType: !546, size: 64, offset: 14656)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1396, file: !1094, line: 1084, baseType: !1972, size: 128, offset: 14720)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !1973)
!1973 = !{!1974}
!1974 = !DISubrange(count: 16)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1396, file: !1094, line: 1086, baseType: !1976, size: 64, offset: 14848)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1094, line: 55, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1396, file: !1094, line: 1089, baseType: !1979, size: 64, offset: 14912)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1980, line: 12, size: 64, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1981 = !{!1982}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1979, file: !1980, line: 13, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1980, line: 8, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1396, file: !1094, line: 1090, baseType: !1986, size: 128, offset: 14976)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1987, line: 13, size: 128, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1986, file: !1987, line: 14, baseType: !148, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1396, file: !1094, line: 1097, baseType: !1991, size: 64, offset: 15104)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1094, line: 50, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1396, file: !1094, line: 1100, baseType: !1994, size: 64, offset: 15168)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1094, line: 1100, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1396, file: !1094, line: 1103, baseType: !1997, size: 64, offset: 15232)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1094, line: 53, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1396, file: !1094, line: 1107, baseType: !2000, size: 64, offset: 15296)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1094, line: 56, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1396, file: !1094, line: 1110, baseType: !2003, size: 64, offset: 15360)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2005, line: 93, size: 8768, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2056, !2065, !2066, !2068, !2069, !2070, !2073, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2111, !2112, !2119, !2129, !2132, !2133, !2136, !2137, !2138, !2139, !2140, !2141}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2004, file: !2005, line: 94, baseType: !474, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2004, file: !2005, line: 95, baseType: !180, size: 32, offset: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2004, file: !2005, line: 96, baseType: !184, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2004, file: !2005, line: 97, baseType: !184, size: 32, offset: 96)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2004, file: !2005, line: 98, baseType: !148, size: 128, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2004, file: !2005, line: 100, baseType: !496, size: 192, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2004, file: !2005, line: 103, baseType: !1395, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2004, file: !2005, line: 106, baseType: !2015, size: 192, offset: 512)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !708, line: 32, size: 192, elements: !2016)
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2015, file: !708, line: 33, baseType: !148, size: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2015, file: !708, line: 34, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2020, line: 25, baseType: !2021)
!2020 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2020, line: 23, size: 64, elements: !2022)
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2021, file: !2020, line: 24, baseType: !1630, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2004, file: !2005, line: 109, baseType: !483, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2004, file: !2005, line: 112, baseType: !184, size: 32, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2004, file: !2005, line: 114, baseType: !184, size: 32, offset: 800)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2004, file: !2005, line: 115, baseType: !1395, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2004, file: !2005, line: 118, baseType: !184, size: 32, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !2005, line: 119, baseType: !7, size: 32, offset: 928)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2004, file: !2005, line: 121, baseType: !2031, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2005, line: 80, size: 448, elements: !2033)
!2033 = !{!2034, !2035, !2041}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2032, file: !2005, line: 81, baseType: !180, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2032, file: !2005, line: 82, baseType: !2036, size: 128, offset: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2005, line: 75, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2036, file: !2005, line: 76, baseType: !1395, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2036, file: !2005, line: 77, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2032, file: !2005, line: 83, baseType: !1921, size: 256, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2004, file: !2005, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2004, file: !2005, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2004, file: !2005, line: 138, baseType: !7, size: 32, offset: 1056)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2004, file: !2005, line: 139, baseType: !148, size: 128, offset: 1088)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2004, file: !2005, line: 142, baseType: !1506, size: 512, offset: 1216)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2004, file: !2005, line: 143, baseType: !1514, size: 64, offset: 1728)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2004, file: !2005, line: 150, baseType: !2049, size: 256, offset: 1792)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2050, size: 256, elements: !2054)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2005, line: 38, size: 128, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2050, file: !2005, line: 39, baseType: !539, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2050, file: !2005, line: 40, baseType: !539, size: 64, offset: 64)
!2054 = !{!2055}
!2055 = !DISubrange(count: 2)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2004, file: !2005, line: 156, baseType: !2057, size: 192, offset: 2048)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2005, line: 66, size: 192, elements: !2058)
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2057, file: !2005, line: 67, baseType: !2060, size: 192)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2005, line: 47, size: 192, elements: !2061)
!2061 = !{!2062, !2063, !2064}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2060, file: !2005, line: 48, baseType: !421, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2060, file: !2005, line: 49, baseType: !421, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2060, file: !2005, line: 50, baseType: !421, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2004, file: !2005, line: 160, baseType: !1950, size: 640, offset: 2240)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2004, file: !2005, line: 163, baseType: !2067, size: 256, offset: 2880)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !492)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2004, file: !2005, line: 169, baseType: !470, size: 64, offset: 3136)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2004, file: !2005, line: 172, baseType: !184, size: 32, offset: 3200)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2004, file: !2005, line: 174, baseType: !2071, size: 64, offset: 3264)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2005, line: 174, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2004, file: !2005, line: 185, baseType: !2074, size: 64, offset: 3328)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !748, line: 860, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 853, size: 64, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2075, file: !748, line: 858, baseType: !747, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2075, file: !748, line: 859, baseType: !160, size: 32, offset: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2004, file: !2005, line: 186, baseType: !539, size: 64, offset: 3392)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2004, file: !2005, line: 186, baseType: !539, size: 64, offset: 3456)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2004, file: !2005, line: 186, baseType: !539, size: 64, offset: 3520)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2004, file: !2005, line: 186, baseType: !539, size: 64, offset: 3584)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2004, file: !2005, line: 187, baseType: !539, size: 64, offset: 3648)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2004, file: !2005, line: 188, baseType: !539, size: 64, offset: 3712)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2004, file: !2005, line: 189, baseType: !1938, size: 192, offset: 3776)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2004, file: !2005, line: 190, baseType: !107, size: 64, offset: 3968)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2004, file: !2005, line: 190, baseType: !107, size: 64, offset: 4032)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2004, file: !2005, line: 190, baseType: !107, size: 64, offset: 4096)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2004, file: !2005, line: 190, baseType: !107, size: 64, offset: 4160)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2004, file: !2005, line: 191, baseType: !107, size: 64, offset: 4224)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2004, file: !2005, line: 191, baseType: !107, size: 64, offset: 4288)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2004, file: !2005, line: 191, baseType: !107, size: 64, offset: 4352)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2004, file: !2005, line: 191, baseType: !107, size: 64, offset: 4416)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2004, file: !2005, line: 192, baseType: !107, size: 64, offset: 4480)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2004, file: !2005, line: 192, baseType: !107, size: 64, offset: 4544)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2004, file: !2005, line: 192, baseType: !107, size: 64, offset: 4608)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2004, file: !2005, line: 192, baseType: !107, size: 64, offset: 4672)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2004, file: !2005, line: 193, baseType: !107, size: 64, offset: 4736)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2004, file: !2005, line: 193, baseType: !107, size: 64, offset: 4800)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2004, file: !2005, line: 194, baseType: !2101, size: 448, offset: 4864)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2102, line: 12, size: 448, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2101, file: !2102, line: 15, baseType: !539, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2101, file: !2102, line: 17, baseType: !539, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2101, file: !2102, line: 19, baseType: !539, size: 64, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2101, file: !2102, line: 21, baseType: !539, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2101, file: !2102, line: 29, baseType: !539, size: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2101, file: !2102, line: 35, baseType: !539, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2101, file: !2102, line: 44, baseType: !539, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2004, file: !2005, line: 202, baseType: !118, size: 64, offset: 5312)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2004, file: !2005, line: 213, baseType: !2113, size: 2048, offset: 5376)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 2048, elements: !1973)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2115, line: 43, size: 128, elements: !2116)
!2115 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2114, file: !2115, line: 44, baseType: !276, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2114, file: !2115, line: 45, baseType: !276, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2004, file: !2005, line: 216, baseType: !2120, size: 448, offset: 7424)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2005, line: 30, size: 448, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2120, file: !2005, line: 31, baseType: !184, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2120, file: !2005, line: 32, baseType: !264, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2120, file: !2005, line: 33, baseType: !107, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2120, file: !2005, line: 34, baseType: !539, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2120, file: !2005, line: 34, baseType: !539, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2120, file: !2005, line: 35, baseType: !107, size: 64, offset: 320)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2120, file: !2005, line: 35, baseType: !107, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2004, file: !2005, line: 219, baseType: !2130, size: 64, offset: 7872)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2005, line: 219, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2004, file: !2005, line: 222, baseType: !7, size: 32, offset: 7936)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2004, file: !2005, line: 223, baseType: !2134, size: 64, offset: 8000)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2005, line: 223, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2004, file: !2005, line: 230, baseType: !293, size: 8, offset: 8064)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2004, file: !2005, line: 231, baseType: !591, size: 16, offset: 8080)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2004, file: !2005, line: 232, baseType: !591, size: 16, offset: 8096)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2004, file: !2005, line: 234, baseType: !1679, size: 64, offset: 8128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2004, file: !2005, line: 237, baseType: !429, size: 256, offset: 8192)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2004, file: !2005, line: 243, baseType: !562, size: 320, offset: 8448)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1396, file: !1094, line: 1111, baseType: !2143, size: 64, offset: 15424)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2005, line: 20, size: 16640, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2144, file: !2005, line: 21, baseType: !160, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2144, file: !2005, line: 22, baseType: !474, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2144, file: !2005, line: 23, baseType: !496, size: 192, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2144, file: !2005, line: 24, baseType: !2150, size: 16384, offset: 256)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2151, size: 16384, elements: !234)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !708, line: 51, size: 256, elements: !2152)
!2152 = !{!2153}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2151, file: !708, line: 52, baseType: !2154, size: 256)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !708, line: 37, size: 256, elements: !2155)
!2155 = !{!2156, !2163, !2164, !2170}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2154, file: !708, line: 39, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2158, line: 83, baseType: !2159)
!2158 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2158, line: 82, baseType: !2161)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !184}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2154, file: !708, line: 40, baseType: !107, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2154, file: !708, line: 46, baseType: !2165, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2158, line: 86, baseType: !2166)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2158, line: 85, baseType: !2168)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2154, file: !708, line: 48, baseType: !2019, size: 64, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1396, file: !1094, line: 1112, baseType: !2019, size: 64, offset: 15488)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1396, file: !1094, line: 1113, baseType: !2019, size: 64, offset: 15552)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1396, file: !1094, line: 1115, baseType: !2019, size: 64, offset: 15616)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1396, file: !1094, line: 1116, baseType: !2015, size: 192, offset: 15680)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1396, file: !1094, line: 1117, baseType: !107, size: 64, offset: 15872)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1396, file: !1094, line: 1118, baseType: !274, size: 64, offset: 15936)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1396, file: !1094, line: 1119, baseType: !7, size: 32, offset: 16000)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1396, file: !1094, line: 1121, baseType: !409, size: 64, offset: 16064)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1396, file: !1094, line: 1125, baseType: !2180, size: 64, offset: 16128)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1094, line: 43, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1396, file: !1094, line: 1127, baseType: !324, size: 32, offset: 16192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1396, file: !1094, line: 1128, baseType: !7, size: 32, offset: 16224)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1396, file: !1094, line: 1130, baseType: !2185, size: 128, offset: 16256)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2186, line: 37, size: 128, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2185, file: !2186, line: 38, baseType: !184, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2185, file: !2186, line: 39, baseType: !180, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2185, file: !2186, line: 40, baseType: !2191, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2186, line: 24, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1396, file: !1094, line: 1131, baseType: !2194, size: 256, offset: 16384)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2195, line: 12, size: 256, elements: !2196)
!2195 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2196 = !{!2197, !2198, !2199, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2194, file: !2195, line: 13, baseType: !229, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2194, file: !2195, line: 14, baseType: !107, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2194, file: !2195, line: 15, baseType: !107, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2194, file: !2195, line: 16, baseType: !293, size: 8, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1396, file: !1094, line: 1134, baseType: !539, size: 64, offset: 16640)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1396, file: !1094, line: 1135, baseType: !539, size: 64, offset: 16704)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1396, file: !1094, line: 1138, baseType: !160, size: 32, offset: 16768)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1396, file: !1094, line: 1141, baseType: !434, size: 32, offset: 16800)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1396, file: !1094, line: 1143, baseType: !2206, size: 64, offset: 16832)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1094, line: 735, size: 64, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2206, file: !1094, line: 736, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1396, file: !1094, line: 1147, baseType: !1565, size: 128, offset: 16896)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1396, file: !1094, line: 1149, baseType: !1395, size: 64, offset: 17024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1396, file: !1094, line: 1151, baseType: !2213, size: 64, offset: 17088)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1094, line: 1151, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1396, file: !1094, line: 1188, baseType: !104, size: 64, offset: 17152)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1396, file: !1094, line: 1191, baseType: !2217, size: 64, offset: 17216)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1094, line: 44, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1396, file: !1094, line: 1194, baseType: !2220, size: 64, offset: 17280)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1094, line: 45, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1396, file: !1094, line: 1197, baseType: !2223, size: 64, offset: 17344)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1094, line: 61, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1396, file: !1094, line: 1199, baseType: !2226, size: 64, offset: 17408)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2228, line: 99, size: 128, elements: !2229)
!2228 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2227, file: !2228, line: 100, baseType: !419, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2227, file: !2228, line: 101, baseType: !180, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2227, file: !2228, line: 103, baseType: !141, size: 16, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1396, file: !1094, line: 1202, baseType: !2234, size: 64, offset: 17472)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1094, line: 48, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1396, file: !1094, line: 1205, baseType: !107, size: 64, offset: 17536)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1396, file: !1094, line: 1206, baseType: !2238, size: 64, offset: 17600)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !708, line: 14, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !708, line: 12, size: 384, elements: !2241)
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !2240, file: !708, line: 13, baseType: !2243, size: 384)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !708, line: 13, size: 384, elements: !2244)
!2244 = !{!2245, !2246, !2247, !2248}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2243, file: !708, line: 13, baseType: !184, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2243, file: !708, line: 13, baseType: !184, size: 32, offset: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2243, file: !708, line: 13, baseType: !184, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2243, file: !708, line: 13, baseType: !2249, size: 256, offset: 128)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2250, line: 37, size: 256, elements: !2251)
!2250 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2251 = !{!2252, !2257, !2270, !2276, !2285, !2312, !2317}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2249, file: !2250, line: 42, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 39, size: 64, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2253, file: !2250, line: 40, baseType: !1904, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2253, file: !2250, line: 41, baseType: !330, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2249, file: !2250, line: 50, baseType: !2258, size: 192)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 45, size: 192, elements: !2259)
!2259 = !{!2260, !2262, !2263, !2269}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2258, file: !2250, line: 46, baseType: !2261, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !262, line: 95, baseType: !184)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2258, file: !2250, line: 47, baseType: !184, size: 32, offset: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2258, file: !2250, line: 48, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2250, line: 11, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2250, line: 8, size: 64, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2265, file: !2250, line: 9, baseType: !184, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2265, file: !2250, line: 10, baseType: !104, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2258, file: !2250, line: 49, baseType: !184, size: 32, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2249, file: !2250, line: 57, baseType: !2271, size: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 53, size: 128, elements: !2272)
!2272 = !{!2273, !2274, !2275}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2271, file: !2250, line: 54, baseType: !1904, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2271, file: !2250, line: 55, baseType: !330, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2271, file: !2250, line: 56, baseType: !2264, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2249, file: !2250, line: 66, baseType: !2277, size: 256)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 60, size: 256, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2284}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2277, file: !2250, line: 61, baseType: !1904, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2277, file: !2250, line: 62, baseType: !330, size: 32, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2277, file: !2250, line: 63, baseType: !184, size: 32, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2277, file: !2250, line: 64, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !262, line: 94, baseType: !263)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2277, file: !2250, line: 65, baseType: !2283, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2249, file: !2250, line: 105, baseType: !2286, size: 256)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 69, size: 256, elements: !2287)
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2286, file: !2250, line: 70, baseType: !104, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !2250, line: 79, baseType: !2290, size: 192, offset: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !2250, line: 79, size: 192, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2301, !2306}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2290, file: !2250, line: 81, baseType: !184, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2290, file: !2250, line: 86, baseType: !591, size: 16)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2290, file: !2250, line: 92, baseType: !2295, size: 192)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2290, file: !2250, line: 88, size: 192, elements: !2296)
!2296 = !{!2297, !2299, !2300}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2295, file: !2250, line: 89, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !1549)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2295, file: !2250, line: 90, baseType: !104, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2295, file: !2250, line: 91, baseType: !104, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2290, file: !2250, line: 97, baseType: !2302, size: 96)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2290, file: !2250, line: 94, size: 96, elements: !2303)
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2302, file: !2250, line: 95, baseType: !2298, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2302, file: !2250, line: 96, baseType: !113, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2290, file: !2250, line: 103, baseType: !2307, size: 128)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2290, file: !2250, line: 99, size: 128, elements: !2308)
!2308 = !{!2309, !2310, !2311}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2307, file: !2250, line: 100, baseType: !107, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2307, file: !2250, line: 101, baseType: !113, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2307, file: !2250, line: 102, baseType: !113, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2249, file: !2250, line: 111, baseType: !2313, size: 128)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 108, size: 128, elements: !2314)
!2314 = !{!2315, !2316}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2313, file: !2250, line: 109, baseType: !264, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2313, file: !2250, line: 110, baseType: !184, size: 32, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2249, file: !2250, line: 118, baseType: !2318, size: 128)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2249, file: !2250, line: 114, size: 128, elements: !2319)
!2319 = !{!2320, !2321, !2322}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2318, file: !2250, line: 115, baseType: !104, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2318, file: !2250, line: 116, baseType: !184, size: 32, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2318, file: !2250, line: 117, baseType: !7, size: 32, offset: 96)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1396, file: !1094, line: 1208, baseType: !2101, size: 448, offset: 17664)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1396, file: !1094, line: 1215, baseType: !539, size: 64, offset: 18112)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1396, file: !1094, line: 1217, baseType: !539, size: 64, offset: 18176)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1396, file: !1094, line: 1219, baseType: !539, size: 64, offset: 18240)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1396, file: !1094, line: 1223, baseType: !2328, size: 64, offset: 18304)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2329, line: 99, baseType: !2330)
!2329 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2329, line: 99, size: 64, elements: !2331)
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2330, file: !2329, line: 99, baseType: !1630, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1396, file: !1094, line: 1225, baseType: !747, size: 32, offset: 18368)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1396, file: !1094, line: 1226, baseType: !184, size: 32, offset: 18400)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1396, file: !1094, line: 1227, baseType: !184, size: 32, offset: 18432)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1396, file: !1094, line: 1231, baseType: !2337, size: 64, offset: 18496)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1094, line: 1231, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1396, file: !1094, line: 1233, baseType: !148, size: 128, offset: 18560)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1396, file: !1094, line: 1240, baseType: !2341, size: 64, offset: 18688)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1094, line: 62, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1396, file: !1094, line: 1242, baseType: !2344, size: 64, offset: 18752)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1094, line: 1242, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1396, file: !1094, line: 1244, baseType: !148, size: 128, offset: 18816)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1396, file: !1094, line: 1245, baseType: !2348, size: 64, offset: 18944)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1094, line: 51, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1396, file: !1094, line: 1246, baseType: !429, size: 256, offset: 19008)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1396, file: !1094, line: 1247, baseType: !7, size: 32, offset: 19264)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1396, file: !1094, line: 1250, baseType: !2353, size: 64, offset: 19328)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1094, line: 57, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1396, file: !1094, line: 1251, baseType: !429, size: 256, offset: 19392)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1396, file: !1094, line: 1252, baseType: !148, size: 128, offset: 19648)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1396, file: !1094, line: 1259, baseType: !2358, size: 64, offset: 19776)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !31, line: 717, flags: DIFlagFwdDecl)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1396, file: !1094, line: 1260, baseType: !591, size: 16, offset: 19840)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1396, file: !1094, line: 1261, baseType: !591, size: 16, offset: 19856)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1396, file: !1094, line: 1314, baseType: !2363, size: 64, offset: 19904)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2365, line: 62, size: 256, align: 256, elements: !2366)
!2365 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2364, file: !2365, line: 75, baseType: !113, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2364, file: !2365, line: 90, baseType: !113, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2364, file: !2365, line: 112, baseType: !117, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2364, file: !2365, line: 132, baseType: !113, size: 32, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2364, file: !2365, line: 140, baseType: !113, size: 32, offset: 160)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2364, file: !2365, line: 149, baseType: !113, size: 32, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2364, file: !2365, line: 154, baseType: !2374, offset: 224)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !511)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1396, file: !1094, line: 1315, baseType: !587, size: 32, offset: 19968)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1396, file: !1094, line: 1316, baseType: !587, size: 32, offset: 20000)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1396, file: !1094, line: 1321, baseType: !107, size: 64, offset: 20032)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1396, file: !1094, line: 1325, baseType: !184, size: 32, offset: 20096)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1396, file: !1094, line: 1326, baseType: !184, size: 32, offset: 20128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1396, file: !1094, line: 1327, baseType: !184, size: 32, offset: 20160)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1396, file: !1094, line: 1328, baseType: !184, size: 32, offset: 20192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1396, file: !1094, line: 1329, baseType: !406, size: 128, align: 64, offset: 20224)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1396, file: !1094, line: 1332, baseType: !2384, size: 128, offset: 20352)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2385, line: 51, size: 128, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2386 = !{!2387, !2392, !2393}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2384, file: !2385, line: 60, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2389, line: 7, size: 64, elements: !2390)
!2389 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2390 = !{!2391}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2388, file: !2389, line: 12, baseType: !1627, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2384, file: !2385, line: 63, baseType: !293, size: 8, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2384, file: !2385, line: 70, baseType: !293, size: 8, offset: 72)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1396, file: !1094, line: 1335, baseType: !2395, size: 64, offset: 20480)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1094, line: 59, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1396, file: !1094, line: 1337, baseType: !2398, size: 128, offset: 20544)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2385, line: 39, size: 128, elements: !2399)
!2399 = !{!2400, !2887, !2888}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2398, file: !2385, line: 40, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !31, line: 74, size: 512, align: 128, elements: !2403)
!2403 = !{!2404, !2405, !2881, !2886}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2402, file: !31, line: 75, baseType: !107, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !31, line: 83, baseType: !2406, size: 320, offset: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !31, line: 83, size: 320, elements: !2407)
!2407 = !{!2408, !2632, !2646, !2650, !2880}
!2408 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !31, line: 84, baseType: !2409, size: 320)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !31, line: 84, size: 320, elements: !2410)
!2410 = !{!2411, !2422, !2626, !2631}
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !2409, file: !31, line: 90, baseType: !2412, size: 128)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2409, file: !31, line: 90, size: 128, elements: !2413)
!2413 = !{!2414, !2415, !2420, !2421}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2412, file: !31, line: 91, baseType: !148, size: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !31, line: 94, baseType: !2416, size: 128)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2412, file: !31, line: 94, size: 128, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2416, file: !31, line: 96, baseType: !104, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2416, file: !31, line: 98, baseType: !7, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2412, file: !31, line: 102, baseType: !148, size: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2412, file: !31, line: 103, baseType: !148, size: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2409, file: !31, line: 106, baseType: !2423, size: 64, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !6, line: 472, size: 1536, align: 64, elements: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2618, !2619, !2620, !2623, !2624, !2625}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2424, file: !6, line: 473, baseType: !781, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2424, file: !6, line: 474, baseType: !974, size: 128, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2424, file: !6, line: 475, baseType: !562, size: 320, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2424, file: !6, line: 476, baseType: !105, size: 32, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2424, file: !6, line: 477, baseType: !180, size: 32, offset: 544)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2424, file: !6, line: 482, baseType: !1565, size: 128, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2424, file: !6, line: 483, baseType: !107, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2424, file: !6, line: 484, baseType: !107, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2424, file: !6, line: 485, baseType: !2435, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !6, line: 404, size: 1280, elements: !2438)
!2438 = !{!2439, !2443, !2513, !2517, !2521, !2527, !2533, !2537, !2542, !2546, !2550, !2554, !2582, !2586, !2590, !2594, !2599, !2603, !2610, !2614}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2437, file: !6, line: 405, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!184, !2401, !1054}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2437, file: !6, line: 406, baseType: !2444, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!184, !393, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !31, line: 293, size: 1536, elements: !2449)
!2449 = !{!2450, !2480, !2494}
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !31, line: 295, baseType: !2451, size: 512)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !31, line: 295, size: 512, elements: !2452)
!2452 = !{!2453, !2479}
!2453 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !31, line: 296, baseType: !2454, size: 448)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !31, line: 296, size: 448, elements: !2455)
!2455 = !{!2456, !2457, !2466, !2467, !2468, !2477, !2478}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2454, file: !31, line: 298, baseType: !107, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2454, file: !31, line: 299, baseType: !2458, size: 128, offset: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2454, file: !31, line: 299, size: 128, elements: !2459)
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2458, file: !31, line: 300, baseType: !148, size: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, scope: !2458, file: !31, line: 302, baseType: !2462, size: 128)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2458, file: !31, line: 302, size: 128, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2462, file: !31, line: 303, baseType: !104, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2462, file: !31, line: 305, baseType: !7, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2454, file: !31, line: 310, baseType: !2423, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2454, file: !31, line: 311, baseType: !107, size: 64, offset: 256)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2454, file: !31, line: 312, baseType: !2469, size: 64, offset: 320)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2454, file: !31, line: 312, size: 64, elements: !2470)
!2470 = !{!2471, !2472}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2469, file: !31, line: 313, baseType: !104, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2469, file: !31, line: 314, baseType: !2473, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !31, line: 257, baseType: !2474)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 255, size: 64, elements: !2475)
!2475 = !{!2476}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2474, file: !31, line: 256, baseType: !107, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2454, file: !31, line: 316, baseType: !180, size: 32, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2454, file: !31, line: 317, baseType: !180, size: 32, offset: 416)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2451, file: !31, line: 323, baseType: !2402, size: 512, align: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !31, line: 325, baseType: !2481, size: 512, offset: 512)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !31, line: 325, size: 512, elements: !2482)
!2482 = !{!2483, !2493}
!2483 = !DIDerivedType(tag: DW_TAG_member, scope: !2481, file: !31, line: 326, baseType: !2484, size: 320)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !31, line: 326, size: 320, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2484, file: !31, line: 327, baseType: !107, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2484, file: !31, line: 328, baseType: !107, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2484, file: !31, line: 329, baseType: !107, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2484, file: !31, line: 331, baseType: !180, size: 32, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2484, file: !31, line: 332, baseType: !180, size: 32, offset: 224)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2484, file: !31, line: 333, baseType: !180, size: 32, offset: 256)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2484, file: !31, line: 335, baseType: !7, size: 32, offset: 288)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2481, file: !31, line: 339, baseType: !2402, size: 512, align: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !2448, file: !31, line: 341, baseType: !2495, size: 512, offset: 1024)
!2495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !31, line: 341, size: 512, elements: !2496)
!2496 = !{!2497, !2506, !2512}
!2497 = !DIDerivedType(tag: DW_TAG_member, scope: !2495, file: !31, line: 342, baseType: !2498, size: 384)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2495, file: !31, line: 342, size: 384, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2498, file: !31, line: 343, baseType: !107, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2498, file: !31, line: 344, baseType: !107, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2498, file: !31, line: 346, baseType: !104, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2498, file: !31, line: 347, baseType: !104, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2498, file: !31, line: 348, baseType: !104, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2498, file: !31, line: 349, baseType: !104, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2495, file: !31, line: 352, baseType: !2507, size: 256)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2495, file: !31, line: 352, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2507, file: !31, line: 353, baseType: !107, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2507, file: !31, line: 354, baseType: !107, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2507, file: !31, line: 356, baseType: !148, size: 128, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2495, file: !31, line: 359, baseType: !2402, size: 512, align: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2437, file: !6, line: 409, baseType: !2514, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!184, !2423, !1054}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2437, file: !6, line: 412, baseType: !2518, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!293, !2423, !2447}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2437, file: !6, line: 414, baseType: !2522, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2525}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !6, line: 310, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2437, file: !6, line: 416, baseType: !2528, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!184, !393, !2423, !442, !7, !2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2437, file: !6, line: 419, baseType: !2534, size: 64, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!184, !393, !2423, !442, !7, !7, !2401, !104}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2437, file: !6, line: 424, baseType: !2538, size: 64, offset: 448)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!2541, !2423, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !106, line: 131, baseType: !539)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2437, file: !6, line: 425, baseType: !2543, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !2447, !274, !274}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2437, file: !6, line: 426, baseType: !2547, size: 64, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!293, !2447, !105}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2437, file: !6, line: 427, baseType: !2551, size: 64, offset: 640)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2447}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2437, file: !6, line: 428, baseType: !2555, size: 64, offset: 704)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!260, !2558, !2580}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !6, line: 373, size: 384, elements: !2560)
!2560 = !{!2561, !2562, !2563, !2567, !2568, !2569, !2570}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2559, file: !6, line: 374, baseType: !393, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2559, file: !6, line: 375, baseType: !442, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2559, file: !6, line: 376, baseType: !2564, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !2558, !264}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2559, file: !6, line: 377, baseType: !104, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2559, file: !6, line: 378, baseType: !184, size: 32, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2559, file: !6, line: 379, baseType: !198, size: 16, offset: 288)
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !6, line: 380, baseType: !2571, size: 64, offset: 320)
!2571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !6, line: 380, size: 64, elements: !2572)
!2572 = !{!2573, !2576}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2571, file: !6, line: 386, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !6, line: 386, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2571, file: !6, line: 395, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!260, !104}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !6, line: 69, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2437, file: !6, line: 433, baseType: !2583, size: 64, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!184, !2423, !2447, !2447, !67}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2437, file: !6, line: 435, baseType: !2587, size: 64, offset: 832)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!184, !2447}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2437, file: !6, line: 436, baseType: !2591, size: 64, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!293, !2447, !274, !274}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2437, file: !6, line: 438, baseType: !2595, size: 64, offset: 960)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2447, !2598, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2437, file: !6, line: 439, baseType: !2600, size: 64, offset: 1024)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!184, !2423, !2401}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2437, file: !6, line: 442, baseType: !2604, size: 64, offset: 1088)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!184, !2607, !393, !2609}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !6, line: 66, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2437, file: !6, line: 444, baseType: !2611, size: 64, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !393}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2437, file: !6, line: 445, baseType: !2615, size: 64, offset: 1216)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!184, !2558, !2580}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2424, file: !6, line: 486, baseType: !107, size: 64, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2424, file: !6, line: 487, baseType: !562, size: 320, offset: 960)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2424, file: !6, line: 488, baseType: !2621, size: 32, offset: 1280)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2622, line: 8, baseType: !587)
!2622 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2424, file: !6, line: 489, baseType: !160, size: 32, offset: 1312)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2424, file: !6, line: 490, baseType: !148, size: 128, offset: 1344)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2424, file: !6, line: 491, baseType: !104, size: 64, offset: 1472)
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2409, file: !31, line: 107, baseType: !2627, size: 64, offset: 192)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2409, file: !31, line: 107, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2627, file: !31, line: 108, baseType: !107, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2627, file: !31, line: 109, baseType: !107, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2409, file: !31, line: 117, baseType: !107, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !31, line: 119, baseType: !2633, size: 320)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !31, line: 119, size: 320, elements: !2634)
!2634 = !{!2635, !2636, !2639, !2640, !2641}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2633, file: !31, line: 124, baseType: !107, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2633, file: !31, line: 125, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !31, line: 125, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2633, file: !31, line: 126, baseType: !107, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2633, file: !31, line: 127, baseType: !107, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2633, file: !31, line: 128, baseType: !2642, size: 64, offset: 256)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2633, file: !31, line: 128, size: 64, elements: !2643)
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2642, file: !31, line: 133, baseType: !107, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2642, file: !31, line: 138, baseType: !419, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !31, line: 141, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !31, line: 141, size: 64, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2647, file: !31, line: 142, baseType: !107, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !31, line: 144, baseType: !2651, size: 128)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !31, line: 144, size: 128, elements: !2652)
!2652 = !{!2653, !2879}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2651, file: !31, line: 146, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !47, line: 126, size: 1216, elements: !2656)
!2656 = !{!2657, !2667, !2688, !2689, !2690, !2691, !2692, !2861, !2862, !2863}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2655, file: !47, line: 127, baseType: !2658, size: 384)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !47, line: 21, size: 384, elements: !2659)
!2659 = !{!2660, !2661, !2663, !2664, !2665, !2666}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2658, file: !47, line: 22, baseType: !107, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2658, file: !47, line: 23, baseType: !2662, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2658, file: !47, line: 24, baseType: !2662, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2658, file: !47, line: 25, baseType: !107, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2658, file: !47, line: 26, baseType: !107, size: 64, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2658, file: !47, line: 27, baseType: !107, size: 64, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2655, file: !47, line: 128, baseType: !2668, size: 128, offset: 384)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2669, line: 105, size: 128, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2668, file: !2669, line: 110, baseType: !107, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2668, file: !2669, line: 118, baseType: !2673, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2669, line: 95, size: 448, elements: !2675)
!2675 = !{!2676, !2677, !2683, !2684, !2685, !2686, !2687}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2674, file: !2669, line: 96, baseType: !419, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2674, file: !2669, line: 97, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2669, line: 60, baseType: !2680)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{null, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2674, file: !2669, line: 98, baseType: !2678, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2674, file: !2669, line: 99, baseType: !293, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2674, file: !2669, line: 100, baseType: !293, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2674, file: !2669, line: 101, baseType: !406, size: 128, align: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2674, file: !2669, line: 102, baseType: !2682, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2655, file: !47, line: 129, baseType: !1921, size: 256, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2655, file: !47, line: 130, baseType: !46, size: 32, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2655, file: !47, line: 131, baseType: !7, size: 32, offset: 800)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2655, file: !47, line: 132, baseType: !107, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2655, file: !47, line: 133, baseType: !2693, size: 64, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2695)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !47, line: 77, size: 192, elements: !2696)
!2696 = !{!2697, !2701, !2857}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2695, file: !47, line: 83, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{null, !2401}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2695, file: !47, line: 89, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !31, line: 1184, baseType: !7)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2708, line: 512, size: 896, elements: !2709)
!2708 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2709 = !{!2710, !2824, !2825, !2832, !2839, !2849, !2850, !2851, !2853, !2855}
!2710 = !DIDerivedType(tag: DW_TAG_member, scope: !2707, file: !2708, line: 513, baseType: !2711, size: 320)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2707, file: !2708, line: 513, size: 320, elements: !2712)
!2712 = !{!2713, !2820, !2821, !2822, !2823}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2711, file: !2708, line: 514, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !31, line: 625, size: 1344, elements: !2716)
!2716 = !{!2717, !2726, !2727, !2733, !2740, !2741, !2746, !2747, !2752, !2753, !2756, !2813, !2814, !2815, !2816, !2817, !2818}
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !31, line: 628, baseType: !2718, size: 128)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2715, file: !31, line: 628, size: 128, elements: !2719)
!2719 = !{!2720, !2725}
!2720 = !DIDerivedType(tag: DW_TAG_member, scope: !2718, file: !31, line: 629, baseType: !2721, size: 128)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !31, line: 629, size: 128, elements: !2722)
!2722 = !{!2723, !2724}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2721, file: !31, line: 631, baseType: !107, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2721, file: !31, line: 632, baseType: !107, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2718, file: !31, line: 635, baseType: !406, size: 128, align: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2715, file: !31, line: 639, baseType: !1679, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2715, file: !31, line: 640, baseType: !2728, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1714, line: 297, baseType: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1714, line: 297, size: 64, elements: !2730)
!2730 = !{!2731}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2729, file: !1714, line: 297, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1719, line: 19, baseType: !107)
!2733 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !31, line: 646, baseType: !2734, size: 64, offset: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2715, file: !31, line: 646, size: 64, elements: !2735)
!2735 = !{!2736, !2739}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2734, file: !31, line: 647, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2738)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !31, line: 542, baseType: !107)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2734, file: !31, line: 648, baseType: !2738, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2715, file: !31, line: 666, baseType: !184, size: 32, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2715, file: !31, line: 667, baseType: !2742, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !31, line: 579, size: 320, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2743, file: !31, line: 580, baseType: !562, size: 320)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2715, file: !31, line: 670, baseType: !293, size: 8, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2715, file: !31, line: 681, baseType: !2748, size: 256, offset: 512)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2715, file: !31, line: 678, size: 256, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2748, file: !31, line: 679, baseType: !348, size: 192, align: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2748, file: !31, line: 680, baseType: !107, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2715, file: !31, line: 689, baseType: !148, size: 128, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2715, file: !31, line: 691, baseType: !2754, size: 64, offset: 896)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !31, line: 691, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2715, file: !31, line: 694, baseType: !2757, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2759)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2708, line: 563, size: 1024, elements: !2760)
!2760 = !{!2761, !2765, !2766, !2770, !2774, !2778, !2779, !2783, !2787, !2791, !2792, !2793, !2797, !2801, !2805, !2809}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2759, file: !2708, line: 564, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null, !2714}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2759, file: !2708, line: 569, baseType: !2762, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2759, file: !2708, line: 571, baseType: !2767, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!184, !2714, !107}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2759, file: !2708, line: 572, baseType: !2771, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!184, !2714}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2759, file: !2708, line: 578, baseType: !2775, size: 64, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!184, !2714, !107, !107, !107}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2759, file: !2708, line: 580, baseType: !2702, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2759, file: !2708, line: 581, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!2705, !2706, !7}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2759, file: !2708, line: 582, baseType: !2784, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!2705, !2706, !107, !107}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2759, file: !2708, line: 584, baseType: !2788, size: 64, offset: 512)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!107, !2714}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2759, file: !2708, line: 588, baseType: !2702, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2759, file: !2708, line: 591, baseType: !2702, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2759, file: !2708, line: 597, baseType: !2794, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!184, !2714, !107, !104, !184, !184}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2759, file: !2708, line: 603, baseType: !2798, size: 64, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!134, !2714}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2759, file: !2708, line: 613, baseType: !2802, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!184, !2714, !2358}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2759, file: !2708, line: 625, baseType: !2806, size: 64, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!2358, !2714, !107}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2759, file: !2708, line: 633, baseType: !2810, size: 64, offset: 960)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!2401, !2714, !107}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2715, file: !31, line: 697, baseType: !107, size: 64, offset: 1024)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2715, file: !31, line: 699, baseType: !393, size: 64, offset: 1088)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2715, file: !31, line: 700, baseType: !104, size: 64, offset: 1152)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2715, file: !31, line: 711, baseType: !419, size: 64, offset: 1216)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2715, file: !31, line: 717, baseType: !2358, size: 64, offset: 1280)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2715, file: !31, line: 722, baseType: !2819, offset: 1344)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !31, line: 570, elements: !1023)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2711, file: !2708, line: 515, baseType: !105, size: 32, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2711, file: !2708, line: 516, baseType: !107, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2711, file: !2708, line: 517, baseType: !107, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2711, file: !2708, line: 518, baseType: !107, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2707, file: !2708, line: 520, baseType: !30, size: 32, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2707, file: !2708, line: 522, baseType: !2826, size: 64, offset: 384)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1719, line: 22, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1719, line: 22, size: 64, elements: !2829)
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2828, file: !1719, line: 22, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1719, line: 15, baseType: !107)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2707, file: !2708, line: 524, baseType: !2833, size: 64, offset: 448)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1714, line: 372, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1714, line: 372, size: 64, elements: !2836)
!2836 = !{!2837}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2835, file: !1714, line: 372, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1719, line: 16, baseType: !107)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2707, file: !2708, line: 527, baseType: !2840, size: 64, offset: 512)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2707, file: !2708, line: 527, size: 64, elements: !2841)
!2841 = !{!2842, !2848}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2840, file: !2708, line: 528, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1719, line: 21, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1719, line: 21, size: 64, elements: !2845)
!2845 = !{!2846}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2844, file: !1719, line: 21, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1719, line: 14, baseType: !107)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2840, file: !2708, line: 529, baseType: !2827, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2707, file: !2708, line: 534, baseType: !2401, size: 64, offset: 576)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2707, file: !2708, line: 535, baseType: !2401, size: 64, offset: 640)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2707, file: !2708, line: 541, baseType: !2852, size: 64, offset: 704)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2707, file: !2708, line: 545, baseType: !2854, size: 64, offset: 768)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2707, file: !2708, line: 549, baseType: !2856, size: 64, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1714, line: 520, baseType: !2401)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2695, file: !47, line: 100, baseType: !2858, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!184, !2654, !107, !107, !184}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2655, file: !47, line: 134, baseType: !104, size: 64, offset: 960)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2655, file: !47, line: 135, baseType: !184, size: 32, offset: 1024)
!2863 = !DIDerivedType(tag: DW_TAG_member, scope: !2655, file: !47, line: 136, baseType: !2864, size: 128, offset: 1088)
!2864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2655, file: !47, line: 136, size: 128, elements: !2865)
!2865 = !{!2866, !2872}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2864, file: !47, line: 137, baseType: !2867, size: 128)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2868, line: 6, size: 128, elements: !2869)
!2868 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2869 = !{!2870, !2871}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2867, file: !2868, line: 7, baseType: !539, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2867, file: !2868, line: 8, baseType: !539, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2864, file: !47, line: 138, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !47, line: 138, elements: !2874)
!2874 = !{!2875, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2873, file: !47, line: 138, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !47, line: 138, elements: !1023)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2873, file: !47, line: 138, baseType: !2878)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2867, elements: !511)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2651, file: !31, line: 147, baseType: !104, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2406, file: !31, line: 161, baseType: !406, size: 128, align: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2402, file: !31, line: 164, baseType: !2882, size: 32, offset: 384)
!2882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2402, file: !31, line: 164, size: 32, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2882, file: !31, line: 169, baseType: !180, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2882, file: !31, line: 177, baseType: !7, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2402, file: !31, line: 181, baseType: !180, size: 32, offset: 416)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2398, file: !2385, line: 42, baseType: !113, size: 32, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2398, file: !2385, line: 43, baseType: !113, size: 32, offset: 96)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1396, file: !1094, line: 1340, baseType: !2890, size: 64, offset: 20672)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1094, line: 69, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1396, file: !1094, line: 1351, baseType: !184, size: 32, offset: 20736)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1396, file: !1094, line: 1352, baseType: !184, size: 32, offset: 20768)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1396, file: !1094, line: 1354, baseType: !107, size: 64, offset: 20800)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1396, file: !1094, line: 1364, baseType: !539, size: 64, offset: 20864)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1396, file: !1094, line: 1365, baseType: !539, size: 64, offset: 20928)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1396, file: !1094, line: 1412, baseType: !107, size: 64, offset: 20992)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1396, file: !1094, line: 1453, baseType: !2899, size: 64, offset: 21056)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1094, line: 1453, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1396, file: !1094, line: 1457, baseType: !2902, size: 64, offset: 21120)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !61, line: 61, size: 576, elements: !2904)
!2904 = !{!2905, !2906, !2925, !2928, !2929, !2962, !2972}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2903, file: !61, line: 62, baseType: !60, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !61, line: 64, baseType: !2907, size: 192, offset: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2903, file: !61, line: 64, size: 192, elements: !2908)
!2908 = !{!2909, !2920}
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !2907, file: !61, line: 65, baseType: !2910, size: 192)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !61, line: 65, size: 192, elements: !2911)
!2911 = !{!2912, !2919}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2910, file: !61, line: 66, baseType: !2913, size: 128)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2914, line: 50, size: 128, elements: !2915)
!2914 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2915 = !{!2916, !2917, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2913, file: !2914, line: 52, baseType: !107, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2913, file: !2914, line: 54, baseType: !7, size: 32, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2913, file: !2914, line: 55, baseType: !7, size: 32, offset: 96)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2910, file: !61, line: 67, baseType: !107, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2907, file: !61, line: 70, baseType: !2921, size: 192)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !61, line: 70, size: 192, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2921, file: !61, line: 71, baseType: !406, size: 128, align: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2921, file: !61, line: 72, baseType: !107, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2903, file: !61, line: 76, baseType: !2926, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !61, line: 76, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2903, file: !61, line: 77, baseType: !107, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2903, file: !61, line: 79, baseType: !2930, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2914, line: 25, size: 256, elements: !2932)
!2932 = !{!2933, !2939, !2943}
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !2914, line: 26, baseType: !2934, size: 128)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2931, file: !2914, line: 26, size: 128, elements: !2935)
!2935 = !{!2936, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2934, file: !2914, line: 27, baseType: !2937, size: 128)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1973)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2934, file: !2914, line: 28, baseType: !2937, size: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2931, file: !2914, line: 31, baseType: !2940, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2942)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2914, line: 23, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !2914, line: 33, baseType: !2944, size: 64, offset: 192)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2931, file: !2914, line: 33, size: 64, elements: !2945)
!2945 = !{!2946, !2952, !2957}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2944, file: !2914, line: 38, baseType: !2947, size: 64)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !2914, line: 34, size: 64, elements: !2948)
!2948 = !{!2949, !2950, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2947, file: !2914, line: 35, baseType: !554, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2947, file: !2914, line: 36, baseType: !189, size: 8, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2947, file: !2914, line: 37, baseType: !189, size: 8, offset: 40)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2944, file: !2914, line: 42, baseType: !2953, size: 16)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !2914, line: 39, size: 16, elements: !2954)
!2954 = !{!2955, !2956}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2953, file: !2914, line: 40, baseType: !189, size: 8)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2953, file: !2914, line: 41, baseType: !189, size: 8, offset: 8)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2944, file: !2914, line: 46, baseType: !2958, size: 16)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2944, file: !2914, line: 43, size: 16, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2958, file: !2914, line: 44, baseType: !189, size: 8)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2958, file: !2914, line: 45, baseType: !189, size: 8, offset: 8)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2903, file: !61, line: 81, baseType: !2963, size: 64, offset: 448)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !61, line: 85, size: 384, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2964, file: !61, line: 86, baseType: !2926, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2964, file: !61, line: 87, baseType: !107, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2964, file: !61, line: 88, baseType: !107, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2964, file: !61, line: 89, baseType: !107, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2964, file: !61, line: 90, baseType: !293, size: 8, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2964, file: !61, line: 92, baseType: !2963, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2903, file: !61, line: 82, baseType: !7, size: 32, offset: 512)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1396, file: !1094, line: 1463, baseType: !2974, offset: 21184)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1094, line: 739, elements: !1023)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1396, file: !1094, line: 1470, baseType: !406, size: 128, align: 64, offset: 21184)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1396, file: !1094, line: 1471, baseType: !474, size: 32, offset: 21312)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1396, file: !1094, line: 1472, baseType: !184, size: 32, offset: 21344)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1396, file: !1094, line: 1474, baseType: !1395, size: 64, offset: 21376)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1396, file: !1094, line: 1475, baseType: !2980, size: 320, offset: 21440)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2981, line: 11, size: 320, elements: !2982)
!2981 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2982 = !{!2983, !2984, !2985, !2990}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2980, file: !2981, line: 16, baseType: !487, size: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2980, file: !2981, line: 17, baseType: !107, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2980, file: !2981, line: 18, baseType: !2986, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2980, file: !2981, line: 19, baseType: !587, size: 32, offset: 256)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1396, file: !1094, line: 1478, baseType: !2992, size: 64, offset: 21760)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2994, line: 49, size: 512, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2995 = !{!2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3005}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2993, file: !2994, line: 50, baseType: !2992, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2993, file: !2994, line: 51, baseType: !104, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2993, file: !2994, line: 52, baseType: !107, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2993, file: !2994, line: 53, baseType: !107, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2993, file: !2994, line: 54, baseType: !2531, size: 64, offset: 256)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2993, file: !2994, line: 56, baseType: !7, size: 32, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2993, file: !2994, line: 58, baseType: !7, size: 32, offset: 352)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2993, file: !2994, line: 59, baseType: !3004, size: 64, offset: 384)
!3004 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !106, line: 159, baseType: !539)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2993, file: !2994, line: 60, baseType: !303, size: 64, offset: 448)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1396, file: !1094, line: 1482, baseType: !474, size: 32, offset: 21824)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1396, file: !1094, line: 1489, baseType: !104, size: 64, offset: 21888)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1396, file: !1094, line: 1504, baseType: !104, size: 64, offset: 21952)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1396, file: !1094, line: 1505, baseType: !117, size: 64, offset: 22016)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1396, file: !1094, line: 1506, baseType: !539, size: 64, offset: 22080)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1396, file: !1094, line: 1507, baseType: !117, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1396, file: !1094, line: 1508, baseType: !117, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1396, file: !1094, line: 1509, baseType: !117, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1396, file: !1094, line: 1510, baseType: !406, size: 128, align: 64, offset: 22208)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1396, file: !1094, line: 1511, baseType: !184, size: 32, offset: 22336)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1396, file: !1094, line: 1515, baseType: !3017, size: 64, offset: 22400)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !401, line: 56, size: 64, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3017, file: !401, line: 57, baseType: !404, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1396, file: !1094, line: 1518, baseType: !3017, size: 64, offset: 22464)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1396, file: !1094, line: 1528, baseType: !406, size: 128, align: 64, offset: 22528)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1396, file: !1094, line: 1552, baseType: !3023, size: 35328, offset: 23040)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3024, line: 430, size: 35328, elements: !3025)
!3024 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3025 = !{!3026, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3055, !3056, !3057, !3058, !3059, !3060, !3063, !3064, !3065, !3066}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3023, file: !3024, line: 432, baseType: !3027, size: 192)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3028, size: 192, elements: !230)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3029, line: 16, size: 64, elements: !3030)
!3029 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3028, file: !3029, line: 17, baseType: !198, size: 16)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3028, file: !3029, line: 18, baseType: !198, size: 16, offset: 16)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3028, file: !3029, line: 19, baseType: !198, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3028, file: !3029, line: 19, baseType: !198, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3028, file: !3029, line: 19, baseType: !198, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3028, file: !3029, line: 19, baseType: !198, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3028, file: !3029, line: 19, baseType: !198, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3028, file: !3029, line: 20, baseType: !198, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3028, file: !3029, line: 20, baseType: !198, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3028, file: !3029, line: 20, baseType: !198, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3028, file: !3029, line: 20, baseType: !198, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3028, file: !3029, line: 20, baseType: !198, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3028, file: !3029, line: 20, baseType: !198, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3023, file: !3024, line: 436, baseType: !107, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3023, file: !3024, line: 440, baseType: !141, size: 16, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3023, file: !3024, line: 441, baseType: !141, size: 16, offset: 272)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3023, file: !3024, line: 442, baseType: !141, size: 16, offset: 288)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3023, file: !3024, line: 443, baseType: !141, size: 16, offset: 304)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3023, file: !3024, line: 447, baseType: !107, size: 64, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3023, file: !3024, line: 448, baseType: !107, size: 64, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3023, file: !3024, line: 459, baseType: !3052, size: 256, offset: 448)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3053, size: 256, elements: !492)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3024, line: 428, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3023, file: !3024, line: 461, baseType: !107, size: 64, offset: 704)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3023, file: !3024, line: 463, baseType: !107, size: 64, offset: 768)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3023, file: !3024, line: 465, baseType: !107, size: 64, offset: 832)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3023, file: !3024, line: 466, baseType: !107, size: 64, offset: 896)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3023, file: !3024, line: 467, baseType: !107, size: 64, offset: 960)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3023, file: !3024, line: 473, baseType: !3061, size: 64, offset: 1024)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3024, line: 10, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3023, file: !3024, line: 480, baseType: !107, size: 64, offset: 1088)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3023, file: !3024, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3023, file: !3024, line: 491, baseType: !587, size: 32, offset: 1184)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3023, file: !3024, line: 501, baseType: !3067, size: 33792, offset: 1536)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3068, line: 448, size: 33792, elements: !3069)
!3068 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3069 = !{!3070, !3071, !3072, !3234, !3235, !3241, !3242}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3067, file: !3068, line: 461, baseType: !7, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3067, file: !3068, line: 468, baseType: !107, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3067, file: !3068, line: 476, baseType: !3073, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3068, line: 356, size: 33280, align: 512, elements: !3075)
!3075 = !{!3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3074, file: !3068, line: 358, baseType: !7, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3074, file: !3068, line: 361, baseType: !7, size: 32, offset: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3074, file: !3068, line: 364, baseType: !539, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3074, file: !3068, line: 367, baseType: !539, size: 64, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3074, file: !3068, line: 370, baseType: !539, size: 64, offset: 192)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3074, file: !3068, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3074, file: !3068, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3074, file: !3068, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3074, file: !3068, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3074, file: !3068, line: 397, baseType: !3086, size: 32768, offset: 512)
!3086 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3068, line: 348, size: 32768, elements: !3087)
!3087 = !{!3088, !3103, !3140, !3217, !3230}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3086, file: !3068, line: 349, baseType: !3089, size: 896)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3068, line: 12, size: 896, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3102}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3089, file: !3068, line: 13, baseType: !587, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3089, file: !3068, line: 14, baseType: !587, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3089, file: !3068, line: 15, baseType: !587, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3089, file: !3068, line: 16, baseType: !587, size: 32, offset: 96)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3089, file: !3068, line: 17, baseType: !587, size: 32, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3089, file: !3068, line: 18, baseType: !587, size: 32, offset: 160)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3089, file: !3068, line: 19, baseType: !587, size: 32, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3089, file: !3068, line: 22, baseType: !3099, size: 640, offset: 224)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 640, elements: !3100)
!3100 = !{!3101}
!3101 = !DISubrange(count: 20)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3089, file: !3068, line: 25, baseType: !587, size: 32, offset: 864)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3086, file: !3068, line: 350, baseType: !3104, size: 4096, align: 128)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3068, line: 34, size: 4096, align: 128, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3125, !3126, !3127, !3131, !3133, !3135}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3104, file: !3068, line: 35, baseType: !198, size: 16)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3104, file: !3068, line: 36, baseType: !198, size: 16, offset: 16)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3104, file: !3068, line: 37, baseType: !198, size: 16, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3104, file: !3068, line: 38, baseType: !198, size: 16, offset: 48)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3068, line: 39, baseType: !3111, size: 128, offset: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3068, line: 39, size: 128, elements: !3112)
!3112 = !{!3113, !3118}
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3068, line: 40, baseType: !3114, size: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3068, line: 40, size: 128, elements: !3115)
!3115 = !{!3116, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3114, file: !3068, line: 41, baseType: !539, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3114, file: !3068, line: 42, baseType: !539, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3068, line: 44, baseType: !3119, size: 128)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3111, file: !3068, line: 44, size: 128, elements: !3120)
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3119, file: !3068, line: 45, baseType: !587, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3119, file: !3068, line: 46, baseType: !587, size: 32, offset: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3119, file: !3068, line: 47, baseType: !587, size: 32, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3119, file: !3068, line: 48, baseType: !587, size: 32, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3104, file: !3068, line: 51, baseType: !587, size: 32, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3104, file: !3068, line: 52, baseType: !587, size: 32, offset: 224)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3104, file: !3068, line: 55, baseType: !3128, size: 1024, offset: 256)
!3128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 1024, elements: !3129)
!3129 = !{!3130}
!3130 = !DISubrange(count: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3104, file: !3068, line: 58, baseType: !3132, size: 2048, offset: 1280)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 2048, elements: !234)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3104, file: !3068, line: 60, baseType: !3134, size: 384, offset: 3328)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 384, elements: !125)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3068, line: 62, baseType: !3136, size: 384, offset: 3712)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3068, line: 62, size: 384, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3136, file: !3068, line: 63, baseType: !3134, size: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3136, file: !3068, line: 64, baseType: !3134, size: 384)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3086, file: !3068, line: 351, baseType: !3141, size: 1088)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3068, line: 79, size: 1088, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3216}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3141, file: !3068, line: 80, baseType: !587, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3141, file: !3068, line: 81, baseType: !587, size: 32, offset: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3141, file: !3068, line: 82, baseType: !587, size: 32, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3141, file: !3068, line: 83, baseType: !587, size: 32, offset: 96)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3141, file: !3068, line: 84, baseType: !587, size: 32, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3141, file: !3068, line: 85, baseType: !587, size: 32, offset: 160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3141, file: !3068, line: 86, baseType: !587, size: 32, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3141, file: !3068, line: 88, baseType: !3099, size: 640, offset: 224)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3141, file: !3068, line: 89, baseType: !189, size: 8, offset: 864)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3141, file: !3068, line: 90, baseType: !189, size: 8, offset: 872)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3141, file: !3068, line: 91, baseType: !189, size: 8, offset: 880)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3141, file: !3068, line: 92, baseType: !189, size: 8, offset: 888)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3141, file: !3068, line: 93, baseType: !189, size: 8, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3141, file: !3068, line: 94, baseType: !189, size: 8, offset: 904)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3141, file: !3068, line: 95, baseType: !3158, size: 64, offset: 960)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3160, line: 11, size: 128, elements: !3161)
!3160 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3159, file: !3160, line: 12, baseType: !264, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3159, file: !3160, line: 13, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3166, line: 103, size: 1344, elements: !3167)
!3166 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3196, !3197, !3198}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3165, file: !3166, line: 109, baseType: !107, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3165, file: !3166, line: 110, baseType: !107, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3165, file: !3166, line: 111, baseType: !107, size: 64, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3165, file: !3166, line: 112, baseType: !107, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3165, file: !3166, line: 113, baseType: !107, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3165, file: !3166, line: 114, baseType: !107, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3165, file: !3166, line: 117, baseType: !107, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3165, file: !3166, line: 118, baseType: !107, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3165, file: !3166, line: 119, baseType: !107, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3165, file: !3166, line: 120, baseType: !107, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3165, file: !3166, line: 121, baseType: !107, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3165, file: !3166, line: 122, baseType: !107, size: 64, offset: 704)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3165, file: !3166, line: 123, baseType: !107, size: 64, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3165, file: !3166, line: 124, baseType: !107, size: 64, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3165, file: !3166, line: 125, baseType: !107, size: 64, offset: 896)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3165, file: !3166, line: 139, baseType: !107, size: 64, offset: 960)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3165, file: !3166, line: 142, baseType: !107, size: 64, offset: 1024)
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3166, line: 144, baseType: !3186, size: 64, offset: 1088)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !3166, line: 144, size: 64, elements: !3187)
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3186, file: !3166, line: 146, baseType: !198, size: 16)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3186, file: !3166, line: 148, baseType: !539, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3186, file: !3166, line: 150, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3166, line: 59, size: 64, elements: !3192)
!3192 = !{!3193, !3194, !3195}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3191, file: !3166, line: 61, baseType: !539, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3191, file: !3166, line: 63, baseType: !539, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3191, file: !3166, line: 65, baseType: !539, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3165, file: !3166, line: 153, baseType: !107, size: 64, offset: 1152)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3165, file: !3166, line: 154, baseType: !107, size: 64, offset: 1216)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3166, line: 156, baseType: !3199, size: 64, offset: 1280)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !3166, line: 156, size: 64, elements: !3200)
!3200 = !{!3201, !3202, !3203}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3199, file: !3166, line: 158, baseType: !198, size: 16)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3199, file: !3166, line: 160, baseType: !539, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3199, file: !3166, line: 162, baseType: !3204, size: 64)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3166, line: 69, size: 64, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3204, file: !3166, line: 71, baseType: !539, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3204, file: !3166, line: 73, baseType: !539, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3204, file: !3166, line: 75, baseType: !539, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3204, file: !3166, line: 77, baseType: !539, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3204, file: !3166, line: 80, baseType: !539, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3204, file: !3166, line: 83, baseType: !539, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3204, file: !3166, line: 86, baseType: !539, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3204, file: !3166, line: 88, baseType: !539, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3204, file: !3166, line: 93, baseType: !539, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3204, file: !3166, line: 100, baseType: !539, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3141, file: !3068, line: 96, baseType: !587, size: 32, offset: 1024)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3086, file: !3068, line: 352, baseType: !3218, size: 4608, align: 512)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3068, line: 333, size: 4608, align: 512, elements: !3219)
!3219 = !{!3220, !3221, !3228}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3218, file: !3068, line: 334, baseType: !3104, size: 4096, align: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3218, file: !3068, line: 335, baseType: !3222, size: 512, offset: 4096)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3068, line: 312, size: 512, elements: !3223)
!3223 = !{!3224, !3225, !3226}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3222, file: !3068, line: 313, baseType: !539, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3222, file: !3068, line: 314, baseType: !539, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3222, file: !3068, line: 315, baseType: !3227, size: 384, offset: 128)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 384, elements: !609)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3218, file: !3068, line: 336, baseType: !3229, offset: 4608)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, elements: !511)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3086, file: !3068, line: 353, baseType: !3231, size: 32768)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32768, elements: !3232)
!3232 = !{!3233}
!3233 = !DISubrange(count: 4096)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3067, file: !3068, line: 484, baseType: !3073, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3067, file: !3068, line: 491, baseType: !3236, size: 128, offset: 256)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3068, line: 404, size: 128, elements: !3237)
!3237 = !{!3238, !3239, !3240}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3236, file: !3068, line: 424, baseType: !539, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3236, file: !3068, line: 432, baseType: !7, size: 32, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3236, file: !3068, line: 440, baseType: !7, size: 32, offset: 96)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3067, file: !3068, line: 498, baseType: !3236, size: 128, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3067, file: !3068, line: 508, baseType: !3074, size: 33280, align: 512, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1377, file: !1378, line: 16, baseType: !496, size: 192, offset: 512)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1377, file: !1378, line: 17, baseType: !180, size: 32, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !983, file: !6, line: 1240, baseType: !104, size: 64, offset: 6912)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !983, file: !6, line: 1243, baseType: !587, size: 32, offset: 6976)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !983, file: !6, line: 1245, baseType: !578, size: 64, offset: 7040)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !983, file: !6, line: 1246, baseType: !578, size: 64, offset: 7104)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !983, file: !6, line: 1248, baseType: !113, size: 32, offset: 7168)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !983, file: !6, line: 1249, baseType: !3251, size: 64, offset: 7232)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !6, line: 634, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !983, file: !6, line: 1252, baseType: !3254, size: 256, offset: 7296)
!3254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !3129)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !983, file: !6, line: 1253, baseType: !3256, size: 128, offset: 7552)
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3257, line: 21, baseType: !3258)
!3257 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3257, line: 19, size: 128, elements: !3259)
!3259 = !{!3260}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3258, file: !3257, line: 20, baseType: !3261, size: 128)
!3261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 128, elements: !1973)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !983, file: !6, line: 1255, baseType: !7, size: 32, offset: 7680)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !983, file: !6, line: 1261, baseType: !429, size: 256, offset: 7744)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !983, file: !6, line: 1267, baseType: !134, size: 64, offset: 8000)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !983, file: !6, line: 1269, baseType: !3266, size: 64, offset: 8064)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !743, line: 128, size: 1024, align: 512, elements: !3269)
!3269 = !{!3270, !3274, !3275, !3282, !3288, !3292, !3296, !3300, !3301, !3305, !3309, !3314, !3318}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3268, file: !743, line: 129, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!184, !741, !7}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3268, file: !743, line: 130, baseType: !3271, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3268, file: !743, line: 131, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!184, !3279, !3281}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3268, file: !743, line: 132, baseType: !3283, size: 64, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!184, !3279, !7, !134, !3286}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3268, file: !743, line: 134, baseType: !3289, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!184, !3279}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3268, file: !743, line: 135, baseType: !3293, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!184, !741}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3268, file: !743, line: 136, baseType: !3297, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !741}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3268, file: !743, line: 137, baseType: !3297, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3268, file: !743, line: 138, baseType: !3302, size: 64, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !741, !781}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3268, file: !743, line: 139, baseType: !3306, size: 64, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!229, !741, !229, !184}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3268, file: !743, line: 140, baseType: !3310, size: 64, offset: 640)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!736, !3313}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3268, file: !743, line: 141, baseType: !3315, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!184, !899, !293}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3268, file: !743, line: 142, baseType: !3319, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!741, !741, !3322}
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !983, file: !6, line: 1271, baseType: !3325, size: 448, offset: 8128)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1159, line: 63, size: 448, elements: !3326)
!3326 = !{!3327, !3332, !3333, !3334, !3335, !3336, !3337}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3325, file: !1159, line: 64, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!107, !3331, !1157}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3325, file: !1159, line: 66, baseType: !3328, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3325, file: !1159, line: 69, baseType: !264, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3325, file: !1159, line: 70, baseType: !184, size: 32, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3325, file: !1159, line: 71, baseType: !7, size: 32, offset: 224)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3325, file: !1159, line: 74, baseType: !148, size: 128, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3325, file: !1159, line: 85, baseType: !3338, size: 64, offset: 384)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !983, file: !6, line: 1274, baseType: !419, size: 64, offset: 8576)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !983, file: !6, line: 1280, baseType: !419, size: 64, offset: 8640)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !983, file: !6, line: 1283, baseType: !184, size: 32, offset: 8704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !983, file: !6, line: 1286, baseType: !2621, size: 32, offset: 8736)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !983, file: !6, line: 1289, baseType: !3344, size: 64, offset: 8768)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1811, line: 18, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !983, file: !6, line: 1290, baseType: !483, size: 64, offset: 8832)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !983, file: !6, line: 1297, baseType: !703, size: 64, offset: 8896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !983, file: !6, line: 1304, baseType: !3349, size: 64, offset: 8960)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3350, line: 49, size: 64, elements: !3351)
!3350 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3351 = !{!3352}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3349, file: !3350, line: 50, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3350, line: 41, size: 512, align: 512, elements: !3355)
!3355 = !{!3356, !3357, !3362}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3354, file: !3350, line: 43, baseType: !160, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3354, file: !3350, line: 45, baseType: !3358, size: 192, offset: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3350, line: 29, size: 192, elements: !3359)
!3359 = !{!3360, !3361}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3358, file: !3350, line: 30, baseType: !148, size: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3358, file: !3350, line: 32, baseType: !264, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3354, file: !3350, line: 46, baseType: !264, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !983, file: !6, line: 1305, baseType: !3349, size: 64, offset: 9024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !983, file: !6, line: 1306, baseType: !406, size: 128, align: 64, offset: 9088)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !983, file: !6, line: 1307, baseType: !1810, size: 256, offset: 9216)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !983, file: !6, line: 1309, baseType: !429, size: 256, offset: 9472)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !983, file: !6, line: 1314, baseType: !184, size: 32, offset: 9728)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !983, file: !6, line: 1317, baseType: !160, size: 32, align: 512, offset: 10240)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !983, file: !6, line: 1318, baseType: !148, size: 128, offset: 10304)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !983, file: !6, line: 1320, baseType: !160, size: 32, offset: 10432)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !983, file: !6, line: 1321, baseType: !148, size: 128, offset: 10496)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !782, file: !6, line: 656, baseType: !2423, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !782, file: !6, line: 659, baseType: !104, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !782, file: !6, line: 663, baseType: !107, size: 64, offset: 640)
!3375 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !6, line: 671, baseType: !3376, size: 32, offset: 704)
!3376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !6, line: 671, size: 32, elements: !3377)
!3377 = !{!3378, !3380}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3376, file: !6, line: 672, baseType: !3379, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3376, file: !6, line: 673, baseType: !7, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !782, file: !6, line: 675, baseType: !852, size: 32, offset: 736)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !782, file: !6, line: 676, baseType: !442, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !782, file: !6, line: 677, baseType: !888, size: 128, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !782, file: !6, line: 678, baseType: !888, size: 128, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !782, file: !6, line: 679, baseType: !888, size: 128, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !782, file: !6, line: 680, baseType: !160, size: 32, offset: 1216)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !782, file: !6, line: 681, baseType: !141, size: 16, offset: 1248)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !782, file: !6, line: 682, baseType: !189, size: 8, offset: 1264)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !782, file: !6, line: 683, baseType: !189, size: 8, offset: 1272)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !782, file: !6, line: 684, baseType: !1290, size: 64, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !782, file: !6, line: 691, baseType: !107, size: 64, offset: 1344)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !782, file: !6, line: 692, baseType: !562, size: 320, offset: 1408)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !782, file: !6, line: 694, baseType: !107, size: 64, offset: 1728)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !782, file: !6, line: 695, baseType: !107, size: 64, offset: 1792)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !782, file: !6, line: 697, baseType: !487, size: 128, offset: 1856)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !782, file: !6, line: 698, baseType: !148, size: 128, offset: 1984)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !782, file: !6, line: 707, baseType: !148, size: 128, offset: 2112)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !782, file: !6, line: 708, baseType: !148, size: 128, offset: 2240)
!3399 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !6, line: 709, baseType: !3400, size: 128, offset: 2368)
!3400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !6, line: 709, size: 128, elements: !3401)
!3401 = !{!3402, !3403}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3400, file: !6, line: 710, baseType: !483, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3400, file: !6, line: 711, baseType: !406, size: 128, align: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !782, file: !6, line: 713, baseType: !421, size: 64, offset: 2496)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !782, file: !6, line: 714, baseType: !421, size: 64, offset: 2560)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !782, file: !6, line: 715, baseType: !180, size: 32, offset: 2624)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !782, file: !6, line: 716, baseType: !180, size: 32, offset: 2656)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !782, file: !6, line: 717, baseType: !180, size: 32, offset: 2688)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !782, file: !6, line: 719, baseType: !180, size: 32, offset: 2720)
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !6, line: 721, baseType: !3411, size: 64, offset: 2752)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !6, line: 721, size: 64, elements: !3412)
!3412 = !{!3413, !3542}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3411, file: !6, line: 722, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3416)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !6, line: 1914, size: 2112, elements: !3417)
!3417 = !{!3418, !3419, !3423, !3428, !3432, !3433, !3434, !3440, !3453, !3461, !3465, !3466, !3470, !3471, !3475, !3480, !3481, !3485, !3489, !3495, !3496, !3500, !3501, !3505, !3509, !3510, !3515, !3519, !3523, !3527, !3531, !3532, !3538}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3416, file: !6, line: 1915, baseType: !1015, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3416, file: !6, line: 1916, baseType: !3420, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!442, !393, !442, !184}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3416, file: !6, line: 1917, baseType: !3424, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!260, !393, !229, !274, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3416, file: !6, line: 1918, baseType: !3429, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!260, !393, !134, !274, !3427}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3416, file: !6, line: 1919, baseType: !2555, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3416, file: !6, line: 1920, baseType: !2555, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3416, file: !6, line: 1921, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!184, !2558, !3438, !7}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !6, line: 53, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3416, file: !6, line: 1923, baseType: !3441, size: 64, offset: 448)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!184, !393, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !6, line: 1858, size: 128, elements: !3446)
!3446 = !{!3447, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3445, file: !6, line: 1859, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !6, line: 1855, baseType: !3449)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!293, !3444, !134, !184, !442, !539, !7}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3445, file: !6, line: 1860, baseType: !442, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3416, file: !6, line: 1924, baseType: !3454, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!3457, !393, !3459}
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3458, line: 59, baseType: !7)
!3458 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !341, line: 31, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3416, file: !6, line: 1925, baseType: !3462, size: 64, offset: 576)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!264, !393, !7, !107}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3416, file: !6, line: 1926, baseType: !3462, size: 64, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3416, file: !6, line: 1927, baseType: !3467, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!184, !393, !2714}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3416, file: !6, line: 1928, baseType: !107, size: 64, offset: 768)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3416, file: !6, line: 1929, baseType: !3472, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!184, !781, !393}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3416, file: !6, line: 1930, baseType: !3476, size: 64, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!184, !393, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !6, line: 1061, baseType: !104)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3416, file: !6, line: 1931, baseType: !3472, size: 64, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3416, file: !6, line: 1932, baseType: !3482, size: 64, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!184, !393, !442, !442, !184}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3416, file: !6, line: 1933, baseType: !3486, size: 64, offset: 1088)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!184, !184, !393, !184}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3416, file: !6, line: 1934, baseType: !3490, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!184, !393, !184, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !6, line: 1063, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3416, file: !6, line: 1935, baseType: !1703, size: 64, offset: 1216)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3416, file: !6, line: 1936, baseType: !3497, size: 64, offset: 1280)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!184, !184}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3416, file: !6, line: 1937, baseType: !3490, size: 64, offset: 1344)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3416, file: !6, line: 1938, baseType: !3502, size: 64, offset: 1408)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!260, !2395, !393, !3427, !274, !7}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3416, file: !6, line: 1939, baseType: !3506, size: 64, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!260, !393, !3427, !2395, !274, !7}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3416, file: !6, line: 1940, baseType: !2611, size: 64, offset: 1536)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3416, file: !6, line: 1941, baseType: !3511, size: 64, offset: 1600)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!184, !393, !184, !3514, !2532}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3416, file: !6, line: 1942, baseType: !3516, size: 64, offset: 1664)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!264, !393, !184, !442, !442}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3416, file: !6, line: 1944, baseType: !3520, size: 64, offset: 1728)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{null, !1092, !393}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3416, file: !6, line: 1948, baseType: !3524, size: 64, offset: 1792)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!260, !393, !442, !393, !442, !274, !7}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3416, file: !6, line: 1950, baseType: !3528, size: 64, offset: 1856)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!442, !393, !442, !393, !442, !442, !7}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3416, file: !6, line: 1953, baseType: !3482, size: 64, offset: 1920)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3416, file: !6, line: 1954, baseType: !3533, size: 64, offset: 1984)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!184, !3536, !7}
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !6, line: 1911, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3416, file: !6, line: 1955, baseType: !3539, size: 64, offset: 2048)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!184, !3536, !3438, !7}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3411, file: !6, line: 723, baseType: !1042, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !782, file: !6, line: 725, baseType: !3544, size: 64, offset: 2816)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !6, line: 725, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !782, file: !6, line: 726, baseType: !2424, size: 1536, align: 64, offset: 2880)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !782, file: !6, line: 727, baseType: !148, size: 128, offset: 4416)
!3548 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !6, line: 728, baseType: !3549, size: 64, offset: 4544)
!3549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !6, line: 728, size: 64, elements: !3550)
!3550 = !{!3551, !3552, !3555, !3556}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3549, file: !6, line: 729, baseType: !2395, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3549, file: !6, line: 730, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !6, line: 730, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3549, file: !6, line: 731, baseType: !229, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3549, file: !6, line: 732, baseType: !7, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !782, file: !6, line: 735, baseType: !113, size: 32, offset: 4608)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !782, file: !6, line: 738, baseType: !113, size: 32, offset: 4640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !782, file: !6, line: 739, baseType: !3251, size: 64, offset: 4672)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !782, file: !6, line: 750, baseType: !104, size: 64, offset: 4736)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !742, file: !743, line: 91, baseType: !3562, size: 256, offset: 448)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !3129)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !742, file: !743, line: 94, baseType: !3564, size: 64, offset: 704)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3565, line: 25, size: 64, elements: !3566)
!3565 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3566 = !{!3567}
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3564, file: !3565, line: 26, baseType: !3568, size: 64)
!3568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3564, file: !3565, line: 26, size: 64, elements: !3569)
!3569 = !{!3570, !3571}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3568, file: !3565, line: 28, baseType: !117, size: 64, align: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, scope: !3568, file: !3565, line: 30, baseType: !3572, size: 64)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3568, file: !3565, line: 30, size: 64, elements: !3573)
!3573 = !{!3574, !3575}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3572, file: !3565, line: 31, baseType: !160, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3572, file: !3565, line: 32, baseType: !184, size: 32, offset: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !742, file: !743, line: 95, baseType: !3266, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !742, file: !743, line: 96, baseType: !982, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !742, file: !743, line: 97, baseType: !107, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !742, file: !743, line: 98, baseType: !104, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !742, file: !743, line: 100, baseType: !3581, size: 128, offset: 1024)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !743, line: 100, size: 128, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3581, file: !743, line: 101, baseType: !148, size: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3581, file: !743, line: 102, baseType: !3585, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !742, file: !743, line: 104, baseType: !148, size: 128, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !742, file: !743, line: 105, baseType: !148, size: 128, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !742, file: !743, line: 113, baseType: !3589, size: 128, offset: 1408)
!3589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !743, line: 109, size: 128, elements: !3590)
!3590 = !{!3591, !3592, !3593}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3589, file: !743, line: 110, baseType: !487, size: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3589, file: !743, line: 111, baseType: !757, size: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3589, file: !743, line: 112, baseType: !406, size: 128, align: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !737, file: !738, line: 72, baseType: !982, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !737, file: !738, line: 73, baseType: !184, size: 32, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !737, file: !738, line: 74, baseType: !817, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !732, file: !733, line: 10, baseType: !741, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !394, file: !6, line: 1015, baseType: !781, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !394, file: !6, line: 1016, baseType: !3414, size: 64, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !394, file: !6, line: 1018, baseType: !539, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !394, file: !6, line: 1020, baseType: !104, size: 64, offset: 1536)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !394, file: !6, line: 1023, baseType: !104, size: 64, offset: 1600)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !394, file: !6, line: 1027, baseType: !3604, size: 64, offset: 1664)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !394, file: !6, line: 1029, baseType: !2423, size: 64, offset: 1728)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !394, file: !6, line: 1030, baseType: !2621, size: 32, offset: 1792)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !394, file: !6, line: 1031, baseType: !2621, size: 32, offset: 1824)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !389, file: !341, line: 255, baseType: !1092, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !389, file: !341, line: 256, baseType: !104, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !389, file: !341, line: 259, baseType: !429, size: 256, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !389, file: !341, line: 260, baseType: !429, size: 256, offset: 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !389, file: !341, line: 261, baseType: !184, size: 32, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !389, file: !341, line: 262, baseType: !148, size: 128, offset: 832)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !389, file: !341, line: 263, baseType: !229, size: 64, offset: 960)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !389, file: !341, line: 265, baseType: !274, size: 64, offset: 1024)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !389, file: !341, line: 266, baseType: !293, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !389, file: !341, line: 267, baseType: !293, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !389, file: !341, line: 268, baseType: !2757, size: 64, offset: 1152)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !382, file: !341, line: 277, baseType: !3620, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{null, !388}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !382, file: !341, line: 290, baseType: !3624, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!184, !1092, !104}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !382, file: !341, line: 292, baseType: !3628, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!104, !1092, !3427}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !382, file: !341, line: 293, baseType: !3632, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!104, !1092, !104, !3427}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !382, file: !341, line: 294, baseType: !3636, size: 64, offset: 320)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{null, !1092, !104}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !382, file: !341, line: 296, baseType: !3640, size: 64, offset: 384)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!260, !388, !229, !274, !442}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !382, file: !341, line: 306, baseType: !274, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !382, file: !341, line: 313, baseType: !293, size: 8, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !382, file: !341, line: 314, baseType: !3640, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !382, file: !341, line: 317, baseType: !3647, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!3457, !388, !3459}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !382, file: !341, line: 320, baseType: !3651, size: 64, offset: 704)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!184, !388, !2714}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !377, file: !341, line: 176, baseType: !3655, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !341, line: 35, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !377, file: !341, line: 177, baseType: !442, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !377, file: !341, line: 178, baseType: !339, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !340, file: !341, line: 215, baseType: !104, size: 64, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !340, file: !341, line: 221, baseType: !539, size: 64, offset: 832)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !341, line: 223, baseType: !141, size: 16, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !340, file: !341, line: 224, baseType: !140, size: 16, offset: 912)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !340, file: !341, line: 225, baseType: !3664, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !341, line: 36, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !340, file: !341, line: 227, baseType: !406, size: 128, align: 64, offset: 1024)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !143, file: !144, line: 71, baseType: !3668, size: 32, offset: 448)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3669, line: 19, size: 32, elements: !3670)
!3669 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3670 = !{!3671}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3668, file: !3669, line: 20, baseType: !474, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !143, file: !144, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !143, file: !144, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !143, file: !144, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !143, file: !144, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !143, file: !144, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !130, file: !131, line: 88, baseType: !3678, size: 64, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!140, !142, !3681, !184}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !131, line: 175, size: 512, elements: !3683)
!3683 = !{!3684, !3685, !3686, !3687, !3691, !3695, !3696}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3682, file: !131, line: 176, baseType: !266, size: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3682, file: !131, line: 177, baseType: !274, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3682, file: !131, line: 178, baseType: !104, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !3682, file: !131, line: 179, baseType: !3688, size: 64, offset: 256)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!2423}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3682, file: !131, line: 180, baseType: !3692, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!260, !393, !142, !3681, !229, !442, !274}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3682, file: !131, line: 182, baseType: !3692, size: 64, offset: 384)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3682, file: !131, line: 184, baseType: !3697, size: 64, offset: 448)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!184, !393, !142, !3681, !2714}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !130, file: !131, line: 90, baseType: !3701, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !130, file: !131, line: 91, baseType: !3703, size: 64, offset: 256)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3704 = !DIGlobalVariableExpression(var: !3705, expr: !DIExpression())
!3705 = distinct !DIGlobalVariable(name: "boot_params_version_attrs", scope: !2, file: !3, line: 47, type: !3706, isLocal: true, isDefinition: true)
!3706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !2054)
!3707 = !DIGlobalVariableExpression(var: !3708, expr: !DIExpression())
!3708 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !2298, isLocal: true, isDefinition: true)
!3709 = !DIGlobalVariableExpression(var: !3710, expr: !DIExpression())
!3710 = distinct !DIGlobalVariable(name: "boot_params_version_attr", scope: !2, file: !3, line: 28, type: !3711, isLocal: true, isDefinition: true)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !144, line: 139, size: 256, elements: !3712)
!3712 = !{!3713, !3714, !3719}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3711, file: !144, line: 140, baseType: !266, size: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3711, file: !144, line: 141, baseType: !3715, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!260, !142, !3718, !229}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3711, file: !144, line: 143, baseType: !3720, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!260, !142, !3718, !134, !274}
!3723 = !DIGlobalVariableExpression(var: !3724, expr: !DIExpression())
!3724 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !2298, isLocal: true, isDefinition: true)
!3725 = !DIGlobalVariableExpression(var: !3726, expr: !DIExpression())
!3726 = distinct !DIGlobalVariable(name: "boot_params_data_attrs", scope: !2, file: !3, line: 52, type: !3727, isLocal: true, isDefinition: true)
!3727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3681, size: 128, elements: !2054)
!3728 = !DIGlobalVariableExpression(var: !3729, expr: !DIExpression())
!3729 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !3730, isLocal: true, isDefinition: true)
!3730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 40, elements: !3731)
!3731 = !{!3732}
!3732 = !DISubrange(count: 5)
!3733 = !DIGlobalVariableExpression(var: !3734, expr: !DIExpression())
!3734 = distinct !DIGlobalVariable(name: "boot_params_data_attr", scope: !2, file: !3, line: 38, type: !3682, isLocal: true, isDefinition: true)
!3735 = !DIGlobalVariableExpression(var: !3736, expr: !DIExpression())
!3736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !3737, isLocal: true, isDefinition: true)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 88, elements: !3738)
!3738 = !{!3739}
!3739 = !DISubrange(count: 11)
!3740 = !DIGlobalVariableExpression(var: !3741, expr: !DIExpression())
!3741 = distinct !DIGlobalVariable(scope: null, file: !94, line: 480, type: !3742, isLocal: true, isDefinition: true)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 168, elements: !3743)
!3743 = !{!3744}
!3744 = !DISubrange(count: 21)
!3745 = !DIGlobalVariableExpression(var: !3746, expr: !DIExpression())
!3746 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !3747, isLocal: true, isDefinition: true)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 24, elements: !230)
!3748 = !DIGlobalVariableExpression(var: !3749, expr: !DIExpression())
!3749 = distinct !DIGlobalVariable(name: "data_attr", scope: !2, file: !3, line: 248, type: !3682, isLocal: true, isDefinition: true)
!3750 = !DIGlobalVariableExpression(var: !3751, expr: !DIExpression())
!3751 = distinct !DIGlobalVariable(name: "setup_data_attr_group", scope: !2, file: !3, line: 266, type: !129, isLocal: true, isDefinition: true)
!3752 = !DIGlobalVariableExpression(var: !3753, expr: !DIExpression())
!3753 = distinct !DIGlobalVariable(name: "setup_data_type_attrs", scope: !2, file: !3, line: 256, type: !3706, isLocal: true, isDefinition: true)
!3754 = !DIGlobalVariableExpression(var: !3755, expr: !DIExpression())
!3755 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !3730, isLocal: true, isDefinition: true)
!3756 = !DIGlobalVariableExpression(var: !3757, expr: !DIExpression())
!3757 = distinct !DIGlobalVariable(name: "type_attr", scope: !2, file: !3, line: 246, type: !3711, isLocal: true, isDefinition: true)
!3758 = !DIGlobalVariableExpression(var: !3759, expr: !DIExpression())
!3759 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !608, isLocal: true, isDefinition: true)
!3760 = !DIGlobalVariableExpression(var: !3761, expr: !DIExpression())
!3761 = distinct !DIGlobalVariable(name: "setup_data_data_attrs", scope: !2, file: !3, line: 261, type: !3727, isLocal: true, isDefinition: true)
!3762 = !{i32 7, !"Dwarf Version", i32 5}
!3763 = !{i32 2, !"Debug Info Version", i32 3}
!3764 = !{i32 1, !"wchar_size", i32 2}
!3765 = !{i32 8, !"cf-protection-branch", i32 1}
!3766 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3767 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3768 = !{i32 1, !"Code Model", i32 2}
!3769 = !{i32 1, !"override-stack-alignment", i32 8}
!3770 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3771 = distinct !DISubprogram(name: "__initstub__kmod_ksysfs__281_401_boot_params_ksysfs_init3", scope: !3, file: !3, line: 401, type: !3772, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!184}
!3774 = !DILocation(line: 401, column: 1, scope: !3771)
!3775 = distinct !DISubprogram(name: "boot_params_ksysfs_init", scope: !3, file: !3, line: 372, type: !3772, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781}
!3777 = !DILocalVariable(name: "ret", scope: !3775, file: !3, line: 374, type: !184)
!3778 = !DILocalVariable(name: "boot_params_kobj", scope: !3775, file: !3, line: 375, type: !142)
!3779 = !DILabel(scope: !3775, name: "out_create_group", file: !3, line: 393)
!3780 = !DILabel(scope: !3775, name: "out_boot_params_kobj", file: !3, line: 395)
!3781 = !DILabel(scope: !3775, name: "out", file: !3, line: 397)
!3782 = !DILocation(line: 374, column: 2, scope: !3775)
!3783 = !DILocation(line: 374, column: 6, scope: !3775)
!3784 = !DILocation(line: 375, column: 2, scope: !3775)
!3785 = !DILocation(line: 375, column: 18, scope: !3775)
!3786 = !DILocation(line: 378, column: 9, scope: !3775)
!3787 = !DILocation(line: 377, column: 21, scope: !3775)
!3788 = !DILocation(line: 377, column: 19, scope: !3775)
!3789 = !DILocation(line: 379, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 379, column: 6)
!3791 = !DILocation(line: 379, column: 6, scope: !3775)
!3792 = !DILocation(line: 380, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 379, column: 25)
!3794 = !DILocation(line: 381, column: 3, scope: !3793)
!3795 = !DILocation(line: 384, column: 27, scope: !3775)
!3796 = !DILocation(line: 384, column: 8, scope: !3775)
!3797 = !DILocation(line: 384, column: 6, scope: !3775)
!3798 = !DILocation(line: 385, column: 6, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 385, column: 6)
!3800 = !DILocation(line: 385, column: 6, scope: !3775)
!3801 = !DILocation(line: 386, column: 3, scope: !3799)
!3802 = !DILocation(line: 388, column: 32, scope: !3775)
!3803 = !DILocation(line: 388, column: 8, scope: !3775)
!3804 = !DILocation(line: 388, column: 6, scope: !3775)
!3805 = !DILocation(line: 389, column: 6, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 389, column: 6)
!3807 = !DILocation(line: 389, column: 6, scope: !3775)
!3808 = !DILocation(line: 390, column: 3, scope: !3806)
!3809 = !DILocation(line: 392, column: 2, scope: !3775)
!3810 = !DILocation(line: 393, column: 1, scope: !3775)
!3811 = !DILocation(line: 394, column: 21, scope: !3775)
!3812 = !DILocation(line: 394, column: 2, scope: !3775)
!3813 = !DILocation(line: 395, column: 1, scope: !3775)
!3814 = !DILocation(line: 396, column: 14, scope: !3775)
!3815 = !DILocation(line: 396, column: 2, scope: !3775)
!3816 = !DILocation(line: 397, column: 1, scope: !3775)
!3817 = !DILocation(line: 398, column: 9, scope: !3775)
!3818 = !DILocation(line: 398, column: 2, scope: !3775)
!3819 = !DILocation(line: 399, column: 1, scope: !3775)
!3820 = !DISubprogram(name: "kobject_create_and_add", scope: !144, file: !144, line: 103, type: !3821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!142, !134, !142}
!3823 = !DISubprogram(name: "sysfs_create_group", scope: !131, file: !131, line: 307, type: !3824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!184, !142, !279}
!3826 = distinct !DISubprogram(name: "create_setup_data_nodes", scope: !3, file: !3, line: 327, type: !3827, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!184, !142}
!3829 = !{!3830, !3831, !3832, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3830 = !DILocalVariable(name: "parent", arg: 1, scope: !3826, file: !3, line: 327, type: !142)
!3831 = !DILocalVariable(name: "setup_data_kobj", scope: !3826, file: !3, line: 329, type: !142)
!3832 = !DILocalVariable(name: "kobjp", scope: !3826, file: !3, line: 329, type: !3833)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3834 = !DILocalVariable(name: "pa_data", scope: !3826, file: !3, line: 330, type: !539)
!3835 = !DILocalVariable(name: "i", scope: !3826, file: !3, line: 331, type: !184)
!3836 = !DILocalVariable(name: "j", scope: !3826, file: !3, line: 331, type: !184)
!3837 = !DILocalVariable(name: "nr", scope: !3826, file: !3, line: 331, type: !184)
!3838 = !DILocalVariable(name: "ret", scope: !3826, file: !3, line: 331, type: !184)
!3839 = !DILabel(scope: !3826, name: "out_clean_nodes", file: !3, line: 362)
!3840 = !DILabel(scope: !3826, name: "out_setup_data_kobj", file: !3, line: 366)
!3841 = !DILabel(scope: !3826, name: "out", file: !3, line: 368)
!3842 = !DILocation(line: 327, column: 59, scope: !3826)
!3843 = !DILocation(line: 329, column: 2, scope: !3826)
!3844 = !DILocation(line: 329, column: 18, scope: !3826)
!3845 = !DILocation(line: 329, column: 37, scope: !3826)
!3846 = !DILocation(line: 330, column: 2, scope: !3826)
!3847 = !DILocation(line: 330, column: 6, scope: !3826)
!3848 = !DILocation(line: 331, column: 2, scope: !3826)
!3849 = !DILocation(line: 331, column: 6, scope: !3826)
!3850 = !DILocation(line: 331, column: 9, scope: !3826)
!3851 = !DILocation(line: 331, column: 12, scope: !3826)
!3852 = !DILocation(line: 331, column: 16, scope: !3826)
!3853 = !DILocation(line: 333, column: 28, scope: !3826)
!3854 = !DILocation(line: 333, column: 10, scope: !3826)
!3855 = !DILocation(line: 334, column: 7, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 334, column: 6)
!3857 = !DILocation(line: 334, column: 6, scope: !3826)
!3858 = !DILocation(line: 335, column: 3, scope: !3856)
!3859 = !DILocation(line: 337, column: 57, scope: !3826)
!3860 = !DILocation(line: 337, column: 20, scope: !3826)
!3861 = !DILocation(line: 337, column: 18, scope: !3826)
!3862 = !DILocation(line: 338, column: 7, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 338, column: 6)
!3864 = !DILocation(line: 338, column: 6, scope: !3826)
!3865 = !DILocation(line: 339, column: 7, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 338, column: 24)
!3867 = !DILocation(line: 340, column: 3, scope: !3866)
!3868 = !DILocation(line: 343, column: 33, scope: !3826)
!3869 = !DILocation(line: 343, column: 8, scope: !3826)
!3870 = !DILocation(line: 343, column: 6, scope: !3826)
!3871 = !DILocation(line: 344, column: 6, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 344, column: 6)
!3873 = !DILocation(line: 344, column: 6, scope: !3826)
!3874 = !DILocation(line: 345, column: 3, scope: !3872)
!3875 = !DILocation(line: 347, column: 24, scope: !3826)
!3876 = !DILocation(line: 347, column: 10, scope: !3826)
!3877 = !DILocation(line: 347, column: 8, scope: !3826)
!3878 = !DILocation(line: 348, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 348, column: 6)
!3880 = !DILocation(line: 348, column: 6, scope: !3826)
!3881 = !DILocation(line: 349, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 348, column: 14)
!3883 = !DILocation(line: 350, column: 3, scope: !3882)
!3884 = !DILocation(line: 353, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 353, column: 2)
!3886 = !DILocation(line: 353, column: 7, scope: !3885)
!3887 = !DILocation(line: 353, column: 14, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 353, column: 2)
!3889 = !DILocation(line: 353, column: 18, scope: !3888)
!3890 = !DILocation(line: 353, column: 16, scope: !3888)
!3891 = !DILocation(line: 353, column: 2, scope: !3885)
!3892 = !DILocation(line: 354, column: 32, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 353, column: 27)
!3894 = !DILocation(line: 354, column: 49, scope: !3893)
!3895 = !DILocation(line: 354, column: 57, scope: !3893)
!3896 = !DILocation(line: 354, column: 55, scope: !3893)
!3897 = !DILocation(line: 354, column: 60, scope: !3893)
!3898 = !DILocation(line: 354, column: 9, scope: !3893)
!3899 = !DILocation(line: 354, column: 7, scope: !3893)
!3900 = !DILocation(line: 355, column: 7, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 355, column: 7)
!3902 = !DILocation(line: 355, column: 7, scope: !3893)
!3903 = !DILocation(line: 356, column: 4, scope: !3901)
!3904 = !DILocation(line: 357, column: 2, scope: !3893)
!3905 = !DILocation(line: 353, column: 23, scope: !3888)
!3906 = !DILocation(line: 353, column: 2, scope: !3888)
!3907 = distinct !{!3907, !3891, !3908, !3909, !3910}
!3908 = !DILocation(line: 357, column: 2, scope: !3885)
!3909 = !{!"llvm.loop.mustprogress"}
!3910 = !{!"llvm.loop.unroll.disable"}
!3911 = !DILocation(line: 359, column: 8, scope: !3826)
!3912 = !DILocation(line: 359, column: 2, scope: !3826)
!3913 = !DILocation(line: 360, column: 2, scope: !3826)
!3914 = !DILocation(line: 362, column: 1, scope: !3826)
!3915 = !DILocation(line: 363, column: 11, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 363, column: 2)
!3917 = !DILocation(line: 363, column: 13, scope: !3916)
!3918 = !DILocation(line: 363, column: 9, scope: !3916)
!3919 = !DILocation(line: 363, column: 7, scope: !3916)
!3920 = !DILocation(line: 363, column: 18, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 363, column: 2)
!3922 = !DILocation(line: 363, column: 20, scope: !3921)
!3923 = !DILocation(line: 363, column: 2, scope: !3916)
!3924 = !DILocation(line: 364, column: 29, scope: !3921)
!3925 = !DILocation(line: 364, column: 37, scope: !3921)
!3926 = !DILocation(line: 364, column: 35, scope: !3921)
!3927 = !DILocation(line: 364, column: 27, scope: !3921)
!3928 = !DILocation(line: 364, column: 3, scope: !3921)
!3929 = !DILocation(line: 363, column: 27, scope: !3921)
!3930 = !DILocation(line: 363, column: 2, scope: !3921)
!3931 = distinct !{!3931, !3923, !3932, !3909, !3910}
!3932 = !DILocation(line: 364, column: 39, scope: !3916)
!3933 = !DILocation(line: 365, column: 8, scope: !3826)
!3934 = !DILocation(line: 365, column: 2, scope: !3826)
!3935 = !DILocation(line: 366, column: 1, scope: !3826)
!3936 = !DILocation(line: 367, column: 14, scope: !3826)
!3937 = !DILocation(line: 367, column: 2, scope: !3826)
!3938 = !DILocation(line: 368, column: 1, scope: !3826)
!3939 = !DILocation(line: 369, column: 9, scope: !3826)
!3940 = !DILocation(line: 369, column: 2, scope: !3826)
!3941 = !DILocation(line: 370, column: 1, scope: !3826)
!3942 = !DISubprogram(name: "sysfs_remove_group", scope: !131, file: !131, line: 315, type: !3943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !142, !279}
!3945 = !DISubprogram(name: "kobject_put", scope: !144, file: !144, line: 110, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3946 = distinct !DISubprogram(name: "version_show", scope: !3, file: !3, line: 22, type: !3716, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3947)
!3947 = !{!3948, !3949, !3950}
!3948 = !DILocalVariable(name: "kobj", arg: 1, scope: !3946, file: !3, line: 22, type: !142)
!3949 = !DILocalVariable(name: "attr", arg: 2, scope: !3946, file: !3, line: 23, type: !3718)
!3950 = !DILocalVariable(name: "buf", arg: 3, scope: !3946, file: !3, line: 23, type: !229)
!3951 = !DILocation(line: 22, column: 45, scope: !3946)
!3952 = !DILocation(line: 23, column: 31, scope: !3946)
!3953 = !DILocation(line: 23, column: 43, scope: !3946)
!3954 = !DILocation(line: 25, column: 17, scope: !3946)
!3955 = !DILocation(line: 25, column: 50, scope: !3946)
!3956 = !DILocation(line: 25, column: 34, scope: !3946)
!3957 = !DILocation(line: 25, column: 9, scope: !3946)
!3958 = !DILocation(line: 25, column: 2, scope: !3946)
!3959 = !DISubprogram(name: "sprintf", scope: !3960, file: !3960, line: 10, type: !3961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3960 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!184, !229, !134, null}
!3963 = distinct !DISubprogram(name: "boot_params_data_read", scope: !3, file: !3, line: 30, type: !3693, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3964)
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970}
!3965 = !DILocalVariable(name: "fp", arg: 1, scope: !3963, file: !3, line: 30, type: !393)
!3966 = !DILocalVariable(name: "kobj", arg: 2, scope: !3963, file: !3, line: 30, type: !142)
!3967 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !3963, file: !3, line: 31, type: !3681)
!3968 = !DILocalVariable(name: "buf", arg: 4, scope: !3963, file: !3, line: 32, type: !229)
!3969 = !DILocalVariable(name: "off", arg: 5, scope: !3963, file: !3, line: 32, type: !442)
!3970 = !DILocalVariable(name: "count", arg: 6, scope: !3963, file: !3, line: 32, type: !274)
!3971 = !DILocation(line: 30, column: 51, scope: !3963)
!3972 = !DILocation(line: 30, column: 71, scope: !3963)
!3973 = !DILocation(line: 31, column: 32, scope: !3963)
!3974 = !DILocation(line: 32, column: 16, scope: !3963)
!3975 = !DILocation(line: 32, column: 28, scope: !3963)
!3976 = !DILocation(line: 32, column: 40, scope: !3963)
!3977 = !DILocation(line: 34, column: 9, scope: !3963)
!3978 = !DILocation(line: 34, column: 37, scope: !3963)
!3979 = !DILocation(line: 34, column: 35, scope: !3963)
!3980 = !DILocation(line: 34, column: 42, scope: !3963)
!3981 = !DILocation(line: 34, column: 2, scope: !3963)
!3982 = !DILocation(line: 35, column: 9, scope: !3963)
!3983 = !DILocation(line: 35, column: 2, scope: !3963)
!3984 = distinct !DISubprogram(name: "get_setup_data_total_num", scope: !3, file: !3, line: 306, type: !3985, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!184, !539, !1086}
!3987 = !{!3988, !3989, !3990, !3991, !4000}
!3988 = !DILocalVariable(name: "pa_data", arg: 1, scope: !3984, file: !3, line: 306, type: !539)
!3989 = !DILocalVariable(name: "nr", arg: 2, scope: !3984, file: !3, line: 306, type: !1086)
!3990 = !DILocalVariable(name: "ret", scope: !3984, file: !3, line: 308, type: !184)
!3991 = !DILocalVariable(name: "data", scope: !3984, file: !3, line: 309, type: !3992)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "setup_data", file: !110, line: 53, size: 128, elements: !3994)
!3994 = !{!3995, !3996, !3997, !3998}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3993, file: !110, line: 54, baseType: !117, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3993, file: !110, line: 55, baseType: !113, size: 32, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3993, file: !110, line: 56, baseType: !113, size: 32, offset: 96)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3993, file: !110, line: 57, baseType: !3999, offset: 128)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, elements: !511)
!4000 = !DILabel(scope: !3984, name: "out", file: !3, line: 323)
!4001 = !DILocation(line: 306, column: 48, scope: !3984)
!4002 = !DILocation(line: 306, column: 62, scope: !3984)
!4003 = !DILocation(line: 308, column: 2, scope: !3984)
!4004 = !DILocation(line: 308, column: 6, scope: !3984)
!4005 = !DILocation(line: 309, column: 2, scope: !3984)
!4006 = !DILocation(line: 309, column: 21, scope: !3984)
!4007 = !DILocation(line: 311, column: 3, scope: !3984)
!4008 = !DILocation(line: 311, column: 6, scope: !3984)
!4009 = !DILocation(line: 312, column: 2, scope: !3984)
!4010 = !DILocation(line: 312, column: 9, scope: !3984)
!4011 = !DILocation(line: 313, column: 4, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3984, file: !3, line: 312, column: 18)
!4013 = !DILocation(line: 313, column: 7, scope: !4012)
!4014 = !DILocation(line: 314, column: 19, scope: !4012)
!4015 = !DILocation(line: 314, column: 10, scope: !4012)
!4016 = !DILocation(line: 314, column: 8, scope: !4012)
!4017 = !DILocation(line: 315, column: 8, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 315, column: 7)
!4019 = !DILocation(line: 315, column: 7, scope: !4012)
!4020 = !DILocation(line: 316, column: 8, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 315, column: 14)
!4022 = !DILocation(line: 317, column: 4, scope: !4021)
!4023 = !DILocation(line: 319, column: 13, scope: !4012)
!4024 = !DILocation(line: 319, column: 19, scope: !4012)
!4025 = !DILocation(line: 319, column: 11, scope: !4012)
!4026 = !DILocation(line: 320, column: 12, scope: !4012)
!4027 = !DILocation(line: 320, column: 3, scope: !4012)
!4028 = distinct !{!4028, !4009, !4029, !3909, !3910}
!4029 = !DILocation(line: 321, column: 2, scope: !3984)
!4030 = !DILocation(line: 323, column: 1, scope: !3984)
!4031 = !DILocation(line: 324, column: 9, scope: !3984)
!4032 = !DILocation(line: 325, column: 1, scope: !3984)
!4033 = !DILocation(line: 324, column: 2, scope: !3984)
!4034 = distinct !DISubprogram(name: "kmalloc_array", scope: !94, file: !94, line: 629, type: !4035, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!104, !274, !274, !105}
!4037 = !{!4038, !4039, !4040, !4041}
!4038 = !DILocalVariable(name: "n", arg: 1, scope: !4034, file: !94, line: 629, type: !274)
!4039 = !DILocalVariable(name: "size", arg: 2, scope: !4034, file: !94, line: 629, type: !274)
!4040 = !DILocalVariable(name: "flags", arg: 3, scope: !4034, file: !94, line: 629, type: !105)
!4041 = !DILocalVariable(name: "bytes", scope: !4034, file: !94, line: 631, type: !274)
!4042 = !DILocation(line: 629, column: 61, scope: !4034)
!4043 = !DILocation(line: 629, column: 71, scope: !4034)
!4044 = !DILocation(line: 629, column: 83, scope: !4034)
!4045 = !DILocation(line: 631, column: 2, scope: !4034)
!4046 = !DILocation(line: 631, column: 9, scope: !4034)
!4047 = !DILocation(line: 633, column: 6, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4034, file: !94, line: 633, column: 6)
!4049 = !DILocation(line: 633, column: 6, scope: !4034)
!4050 = !DILocation(line: 634, column: 3, scope: !4048)
!4051 = !DILocation(line: 635, column: 27, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4034, file: !94, line: 635, column: 6)
!4053 = !DILocation(line: 635, column: 6, scope: !4052)
!4054 = !DILocation(line: 635, column: 30, scope: !4052)
!4055 = !DILocation(line: 635, column: 54, scope: !4052)
!4056 = !DILocation(line: 635, column: 33, scope: !4052)
!4057 = !DILocation(line: 635, column: 6, scope: !4034)
!4058 = !DILocation(line: 636, column: 18, scope: !4052)
!4059 = !DILocation(line: 636, column: 25, scope: !4052)
!4060 = !DILocation(line: 636, column: 10, scope: !4052)
!4061 = !DILocation(line: 636, column: 3, scope: !4052)
!4062 = !DILocation(line: 637, column: 19, scope: !4034)
!4063 = !DILocation(line: 637, column: 26, scope: !4034)
!4064 = !DILocation(line: 637, column: 9, scope: !4034)
!4065 = !DILocation(line: 637, column: 2, scope: !4034)
!4066 = !DILocation(line: 638, column: 1, scope: !4034)
!4067 = distinct !DISubprogram(name: "create_setup_data_node", scope: !3, file: !3, line: 271, type: !4068, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!184, !142, !3833, !184}
!4070 = !{!4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078}
!4071 = !DILocalVariable(name: "parent", arg: 1, scope: !4067, file: !3, line: 271, type: !142)
!4072 = !DILocalVariable(name: "kobjp", arg: 2, scope: !4067, file: !3, line: 272, type: !3833)
!4073 = !DILocalVariable(name: "nr", arg: 3, scope: !4067, file: !3, line: 272, type: !184)
!4074 = !DILocalVariable(name: "ret", scope: !4067, file: !3, line: 274, type: !184)
!4075 = !DILocalVariable(name: "size", scope: !4067, file: !3, line: 275, type: !274)
!4076 = !DILocalVariable(name: "kobj", scope: !4067, file: !3, line: 276, type: !142)
!4077 = !DILocalVariable(name: "name", scope: !4067, file: !3, line: 277, type: !1972)
!4078 = !DILabel(scope: !4067, name: "out_kobj", file: !3, line: 295)
!4079 = !DILocation(line: 271, column: 58, scope: !4067)
!4080 = !DILocation(line: 272, column: 24, scope: !4067)
!4081 = !DILocation(line: 272, column: 35, scope: !4067)
!4082 = !DILocation(line: 274, column: 2, scope: !4067)
!4083 = !DILocation(line: 274, column: 6, scope: !4067)
!4084 = !DILocation(line: 275, column: 2, scope: !4067)
!4085 = !DILocation(line: 275, column: 9, scope: !4067)
!4086 = !DILocation(line: 276, column: 2, scope: !4067)
!4087 = !DILocation(line: 276, column: 18, scope: !4067)
!4088 = !DILocation(line: 277, column: 2, scope: !4067)
!4089 = !DILocation(line: 277, column: 7, scope: !4067)
!4090 = !DILocation(line: 278, column: 11, scope: !4067)
!4091 = !DILocation(line: 278, column: 27, scope: !4067)
!4092 = !DILocation(line: 278, column: 2, scope: !4067)
!4093 = !DILocation(line: 280, column: 32, scope: !4067)
!4094 = !DILocation(line: 280, column: 38, scope: !4067)
!4095 = !DILocation(line: 280, column: 9, scope: !4067)
!4096 = !DILocation(line: 280, column: 7, scope: !4067)
!4097 = !DILocation(line: 281, column: 7, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 281, column: 6)
!4099 = !DILocation(line: 281, column: 6, scope: !4067)
!4100 = !DILocation(line: 282, column: 3, scope: !4098)
!4101 = !DILocation(line: 284, column: 28, scope: !4067)
!4102 = !DILocation(line: 284, column: 8, scope: !4067)
!4103 = !DILocation(line: 284, column: 6, scope: !4067)
!4104 = !DILocation(line: 285, column: 6, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 285, column: 6)
!4106 = !DILocation(line: 285, column: 6, scope: !4067)
!4107 = !DILocation(line: 286, column: 3, scope: !4105)
!4108 = !DILocation(line: 288, column: 19, scope: !4067)
!4109 = !DILocation(line: 288, column: 17, scope: !4067)
!4110 = !DILocation(line: 289, column: 27, scope: !4067)
!4111 = !DILocation(line: 289, column: 8, scope: !4067)
!4112 = !DILocation(line: 289, column: 6, scope: !4067)
!4113 = !DILocation(line: 290, column: 6, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 290, column: 6)
!4115 = !DILocation(line: 290, column: 6, scope: !4067)
!4116 = !DILocation(line: 291, column: 3, scope: !4114)
!4117 = !DILocation(line: 292, column: 11, scope: !4067)
!4118 = !DILocation(line: 292, column: 3, scope: !4067)
!4119 = !DILocation(line: 292, column: 9, scope: !4067)
!4120 = !DILocation(line: 294, column: 2, scope: !4067)
!4121 = !DILocation(line: 295, column: 1, scope: !4067)
!4122 = !DILocation(line: 296, column: 14, scope: !4067)
!4123 = !DILocation(line: 296, column: 2, scope: !4067)
!4124 = !DILocation(line: 297, column: 9, scope: !4067)
!4125 = !DILocation(line: 297, column: 2, scope: !4067)
!4126 = !DILocation(line: 298, column: 1, scope: !4067)
!4127 = !DISubprogram(name: "kfree", scope: !94, file: !94, line: 227, type: !4128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{null, !303}
!4130 = distinct !DISubprogram(name: "cleanup_setup_data_node", scope: !3, file: !3, line: 300, type: !249, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4131)
!4131 = !{!4132}
!4132 = !DILocalVariable(name: "kobj", arg: 1, scope: !4130, file: !3, line: 300, type: !142)
!4133 = !DILocation(line: 300, column: 60, scope: !4130)
!4134 = !DILocation(line: 302, column: 21, scope: !4130)
!4135 = !DILocation(line: 302, column: 2, scope: !4130)
!4136 = !DILocation(line: 303, column: 14, scope: !4130)
!4137 = !DILocation(line: 303, column: 2, scope: !4130)
!4138 = !DILocation(line: 304, column: 1, scope: !4130)
!4139 = !DISubprogram(name: "memremap", scope: !81, file: !81, line: 149, type: !4140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!104, !4142, !274, !107}
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !106, line: 164, baseType: !3004)
!4143 = !DISubprogram(name: "memunmap", scope: !81, file: !81, line: 150, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4144 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4145, file: !4145, line: 51, type: !4146, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4148)
!4145 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!293, !293}
!4148 = !{!4149}
!4149 = !DILocalVariable(name: "overflow", arg: 1, scope: !4144, file: !4145, line: 51, type: !293)
!4150 = !DILocation(line: 51, column: 60, scope: !4144)
!4151 = !DILocation(line: 53, column: 9, scope: !4144)
!4152 = !{i8 0, i8 2}
!4153 = !DILocation(line: 53, column: 2, scope: !4144)
!4154 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 591, type: !4155, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4157)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!104, !274, !105}
!4157 = !{!4158, !4159, !4160}
!4158 = !DILocalVariable(name: "size", arg: 1, scope: !4154, file: !94, line: 591, type: !274)
!4159 = !DILocalVariable(name: "flags", arg: 2, scope: !4154, file: !94, line: 591, type: !105)
!4160 = !DILocalVariable(name: "index", scope: !4161, file: !94, line: 594, type: !7)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !94, line: 593, column: 42)
!4162 = distinct !DILexicalBlock(scope: !4154, file: !94, line: 593, column: 6)
!4163 = !DILocation(line: 591, column: 61, scope: !4154)
!4164 = !DILocation(line: 591, column: 73, scope: !4154)
!4165 = !DILocation(line: 593, column: 27, scope: !4162)
!4166 = !DILocation(line: 593, column: 6, scope: !4162)
!4167 = !DILocation(line: 593, column: 33, scope: !4162)
!4168 = !DILocation(line: 593, column: 36, scope: !4162)
!4169 = !DILocation(line: 593, column: 6, scope: !4154)
!4170 = !DILocation(line: 594, column: 3, scope: !4161)
!4171 = !DILocation(line: 594, column: 16, scope: !4161)
!4172 = !DILocation(line: 596, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4161, file: !94, line: 596, column: 7)
!4174 = !DILocation(line: 596, column: 12, scope: !4173)
!4175 = !DILocation(line: 596, column: 7, scope: !4161)
!4176 = !DILocation(line: 597, column: 25, scope: !4173)
!4177 = !DILocation(line: 597, column: 31, scope: !4173)
!4178 = !DILocation(line: 597, column: 11, scope: !4173)
!4179 = !DILocation(line: 597, column: 4, scope: !4173)
!4180 = !DILocation(line: 599, column: 11, scope: !4161)
!4181 = !DILocation(line: 599, column: 9, scope: !4161)
!4182 = !DILocation(line: 601, column: 33, scope: !4161)
!4183 = !DILocation(line: 601, column: 40, scope: !4161)
!4184 = !DILocation(line: 601, column: 20, scope: !4161)
!4185 = !DILocation(line: 601, column: 5, scope: !4161)
!4186 = !DILocation(line: 601, column: 51, scope: !4161)
!4187 = !DILocation(line: 602, column: 5, scope: !4161)
!4188 = !DILocation(line: 602, column: 12, scope: !4161)
!4189 = !DILocation(line: 600, column: 10, scope: !4161)
!4190 = !DILocation(line: 600, column: 3, scope: !4161)
!4191 = !DILocation(line: 603, column: 2, scope: !4162)
!4192 = !DILocation(line: 604, column: 19, scope: !4154)
!4193 = !DILocation(line: 604, column: 25, scope: !4154)
!4194 = !DILocation(line: 604, column: 9, scope: !4154)
!4195 = !DILocation(line: 604, column: 2, scope: !4154)
!4196 = !DILocation(line: 605, column: 1, scope: !4154)
!4197 = !DISubprogram(name: "__kmalloc", scope: !94, file: !94, line: 488, type: !4155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4198 = !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 531, type: !4155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4199 = distinct !DISubprogram(name: "__kmalloc_index", scope: !94, file: !94, line: 444, type: !4200, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!7, !274, !293}
!4202 = !{!4203, !4204}
!4203 = !DILocalVariable(name: "size", arg: 1, scope: !4199, file: !94, line: 444, type: !274)
!4204 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4199, file: !94, line: 445, type: !293)
!4205 = !DILocation(line: 444, column: 60, scope: !4199)
!4206 = !DILocation(line: 445, column: 16, scope: !4199)
!4207 = !DILocation(line: 447, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 447, column: 6)
!4209 = !DILocation(line: 447, column: 6, scope: !4199)
!4210 = !DILocation(line: 448, column: 3, scope: !4208)
!4211 = !DILocation(line: 450, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 450, column: 6)
!4213 = !DILocation(line: 450, column: 11, scope: !4212)
!4214 = !DILocation(line: 450, column: 6, scope: !4199)
!4215 = !DILocation(line: 451, column: 3, scope: !4212)
!4216 = !DILocation(line: 453, column: 32, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 453, column: 6)
!4218 = !DILocation(line: 453, column: 37, scope: !4217)
!4219 = !DILocation(line: 453, column: 42, scope: !4217)
!4220 = !DILocation(line: 453, column: 45, scope: !4217)
!4221 = !DILocation(line: 453, column: 50, scope: !4217)
!4222 = !DILocation(line: 453, column: 6, scope: !4199)
!4223 = !DILocation(line: 454, column: 3, scope: !4217)
!4224 = !DILocation(line: 455, column: 32, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 455, column: 6)
!4226 = !DILocation(line: 455, column: 37, scope: !4225)
!4227 = !DILocation(line: 455, column: 43, scope: !4225)
!4228 = !DILocation(line: 455, column: 46, scope: !4225)
!4229 = !DILocation(line: 455, column: 51, scope: !4225)
!4230 = !DILocation(line: 455, column: 6, scope: !4199)
!4231 = !DILocation(line: 456, column: 3, scope: !4225)
!4232 = !DILocation(line: 457, column: 6, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 457, column: 6)
!4234 = !DILocation(line: 457, column: 11, scope: !4233)
!4235 = !DILocation(line: 457, column: 6, scope: !4199)
!4236 = !DILocation(line: 457, column: 26, scope: !4233)
!4237 = !DILocation(line: 458, column: 6, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 458, column: 6)
!4239 = !DILocation(line: 458, column: 11, scope: !4238)
!4240 = !DILocation(line: 458, column: 6, scope: !4199)
!4241 = !DILocation(line: 458, column: 26, scope: !4238)
!4242 = !DILocation(line: 459, column: 6, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 459, column: 6)
!4244 = !DILocation(line: 459, column: 11, scope: !4243)
!4245 = !DILocation(line: 459, column: 6, scope: !4199)
!4246 = !DILocation(line: 459, column: 26, scope: !4243)
!4247 = !DILocation(line: 460, column: 6, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 460, column: 6)
!4249 = !DILocation(line: 460, column: 11, scope: !4248)
!4250 = !DILocation(line: 460, column: 6, scope: !4199)
!4251 = !DILocation(line: 460, column: 26, scope: !4248)
!4252 = !DILocation(line: 461, column: 6, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 461, column: 6)
!4254 = !DILocation(line: 461, column: 11, scope: !4253)
!4255 = !DILocation(line: 461, column: 6, scope: !4199)
!4256 = !DILocation(line: 461, column: 26, scope: !4253)
!4257 = !DILocation(line: 462, column: 6, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 462, column: 6)
!4259 = !DILocation(line: 462, column: 11, scope: !4258)
!4260 = !DILocation(line: 462, column: 6, scope: !4199)
!4261 = !DILocation(line: 462, column: 26, scope: !4258)
!4262 = !DILocation(line: 463, column: 6, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 463, column: 6)
!4264 = !DILocation(line: 463, column: 11, scope: !4263)
!4265 = !DILocation(line: 463, column: 6, scope: !4199)
!4266 = !DILocation(line: 463, column: 26, scope: !4263)
!4267 = !DILocation(line: 464, column: 6, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 464, column: 6)
!4269 = !DILocation(line: 464, column: 11, scope: !4268)
!4270 = !DILocation(line: 464, column: 6, scope: !4199)
!4271 = !DILocation(line: 464, column: 26, scope: !4268)
!4272 = !DILocation(line: 465, column: 6, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 465, column: 6)
!4274 = !DILocation(line: 465, column: 11, scope: !4273)
!4275 = !DILocation(line: 465, column: 6, scope: !4199)
!4276 = !DILocation(line: 465, column: 26, scope: !4273)
!4277 = !DILocation(line: 466, column: 6, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 466, column: 6)
!4279 = !DILocation(line: 466, column: 11, scope: !4278)
!4280 = !DILocation(line: 466, column: 6, scope: !4199)
!4281 = !DILocation(line: 466, column: 26, scope: !4278)
!4282 = !DILocation(line: 467, column: 6, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 467, column: 6)
!4284 = !DILocation(line: 467, column: 11, scope: !4283)
!4285 = !DILocation(line: 467, column: 6, scope: !4199)
!4286 = !DILocation(line: 467, column: 26, scope: !4283)
!4287 = !DILocation(line: 468, column: 6, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 468, column: 6)
!4289 = !DILocation(line: 468, column: 11, scope: !4288)
!4290 = !DILocation(line: 468, column: 6, scope: !4199)
!4291 = !DILocation(line: 468, column: 26, scope: !4288)
!4292 = !DILocation(line: 469, column: 6, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 469, column: 6)
!4294 = !DILocation(line: 469, column: 11, scope: !4293)
!4295 = !DILocation(line: 469, column: 6, scope: !4199)
!4296 = !DILocation(line: 469, column: 26, scope: !4293)
!4297 = !DILocation(line: 470, column: 6, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 470, column: 6)
!4299 = !DILocation(line: 470, column: 11, scope: !4298)
!4300 = !DILocation(line: 470, column: 6, scope: !4199)
!4301 = !DILocation(line: 470, column: 26, scope: !4298)
!4302 = !DILocation(line: 471, column: 6, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 471, column: 6)
!4304 = !DILocation(line: 471, column: 11, scope: !4303)
!4305 = !DILocation(line: 471, column: 6, scope: !4199)
!4306 = !DILocation(line: 471, column: 26, scope: !4303)
!4307 = !DILocation(line: 472, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 472, column: 6)
!4309 = !DILocation(line: 472, column: 11, scope: !4308)
!4310 = !DILocation(line: 472, column: 6, scope: !4199)
!4311 = !DILocation(line: 472, column: 26, scope: !4308)
!4312 = !DILocation(line: 473, column: 6, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 473, column: 6)
!4314 = !DILocation(line: 473, column: 11, scope: !4313)
!4315 = !DILocation(line: 473, column: 6, scope: !4199)
!4316 = !DILocation(line: 473, column: 26, scope: !4313)
!4317 = !DILocation(line: 474, column: 6, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 474, column: 6)
!4319 = !DILocation(line: 474, column: 11, scope: !4318)
!4320 = !DILocation(line: 474, column: 6, scope: !4199)
!4321 = !DILocation(line: 474, column: 27, scope: !4318)
!4322 = !DILocation(line: 475, column: 6, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 475, column: 6)
!4324 = !DILocation(line: 475, column: 11, scope: !4323)
!4325 = !DILocation(line: 475, column: 6, scope: !4199)
!4326 = !DILocation(line: 475, column: 32, scope: !4323)
!4327 = !DILocation(line: 477, column: 50, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4199, file: !94, line: 477, column: 6)
!4329 = !DILocation(line: 477, column: 6, scope: !4199)
!4330 = !DILocation(line: 478, column: 3, scope: !4328)
!4331 = !DILocation(line: 478, column: 3, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !94, line: 478, column: 3)
!4333 = distinct !DILexicalBlock(scope: !4328, file: !94, line: 478, column: 3)
!4334 = !{i32 -2142791409}
!4335 = !DILocation(line: 478, column: 3, scope: !4333)
!4336 = !DILocation(line: 480, column: 3, scope: !4328)
!4337 = !DILocation(line: 480, column: 3, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4328, file: !94, line: 480, column: 3)
!4339 = !DILocation(line: 480, column: 3, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4338, file: !94, line: 480, column: 3)
!4341 = !DILocation(line: 480, column: 3, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !94, line: 480, column: 3)
!4343 = !{i64 2152176090, i64 2152176119, i64 2152176165, i64 2152176223, i64 2152176277, i64 2152176331, i64 2152176386, i64 2152176417}
!4344 = !DILocation(line: 483, column: 2, scope: !4199)
!4345 = !DILocation(line: 484, column: 1, scope: !4199)
!4346 = !DISubprogram(name: "kmalloc_trace", scope: !94, file: !94, line: 525, type: !4347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!104, !4349, !105, !274}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4351, line: 11, flags: DIFlagFwdDecl)
!4351 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4352 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 401, type: !4353, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!93, !105, !107}
!4355 = !{!4356, !4357}
!4356 = !DILocalVariable(name: "flags", arg: 1, scope: !4352, file: !94, line: 401, type: !105)
!4357 = !DILocalVariable(name: "caller", arg: 2, scope: !4352, file: !94, line: 401, type: !107)
!4358 = !DILocation(line: 401, column: 67, scope: !4352)
!4359 = !DILocation(line: 401, column: 88, scope: !4352)
!4360 = !DILocation(line: 407, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4352, file: !94, line: 407, column: 6)
!4362 = !DILocation(line: 407, column: 6, scope: !4352)
!4363 = !DILocation(line: 413, column: 3, scope: !4361)
!4364 = !DILocation(line: 423, column: 38, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4352, file: !94, line: 423, column: 6)
!4366 = !DILocation(line: 423, column: 44, scope: !4365)
!4367 = !DILocation(line: 423, column: 6, scope: !4352)
!4368 = !DILocation(line: 424, column: 3, scope: !4365)
!4369 = !DILocation(line: 426, column: 3, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4352, file: !94, line: 425, column: 6)
!4371 = !DILocation(line: 429, column: 1, scope: !4352)
!4372 = !DISubprogram(name: "__compiletime_assert_190", scope: !94, file: !94, line: 478, type: !2168, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4373 = !DISubprogram(name: "snprintf", scope: !3960, file: !3960, line: 12, type: !4374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{!184, !229, !274, !134, null}
!4376 = distinct !DISubprogram(name: "get_setup_data_size", scope: !3, file: !3, line: 92, type: !4377, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4380)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!184, !184, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388}
!4381 = !DILocalVariable(name: "nr", arg: 1, scope: !4376, file: !3, line: 92, type: !184)
!4382 = !DILocalVariable(name: "size", arg: 2, scope: !4376, file: !3, line: 92, type: !4379)
!4383 = !DILocalVariable(name: "pa_data", scope: !4376, file: !3, line: 94, type: !539)
!4384 = !DILocalVariable(name: "pa_next", scope: !4376, file: !3, line: 94, type: !539)
!4385 = !DILocalVariable(name: "indirect", scope: !4376, file: !3, line: 95, type: !108)
!4386 = !DILocalVariable(name: "data", scope: !4376, file: !3, line: 96, type: !3992)
!4387 = !DILocalVariable(name: "i", scope: !4376, file: !3, line: 97, type: !184)
!4388 = !DILocalVariable(name: "len", scope: !4376, file: !3, line: 98, type: !587)
!4389 = !DILocation(line: 92, column: 43, scope: !4376)
!4390 = !DILocation(line: 92, column: 55, scope: !4376)
!4391 = !DILocation(line: 94, column: 2, scope: !4376)
!4392 = !DILocation(line: 94, column: 6, scope: !4376)
!4393 = !DILocation(line: 94, column: 32, scope: !4376)
!4394 = !DILocation(line: 94, column: 44, scope: !4376)
!4395 = !DILocation(line: 95, column: 2, scope: !4376)
!4396 = !DILocation(line: 95, column: 25, scope: !4376)
!4397 = !DILocation(line: 96, column: 2, scope: !4376)
!4398 = !DILocation(line: 96, column: 21, scope: !4376)
!4399 = !DILocation(line: 97, column: 2, scope: !4376)
!4400 = !DILocation(line: 97, column: 6, scope: !4376)
!4401 = !DILocation(line: 98, column: 2, scope: !4376)
!4402 = !DILocation(line: 98, column: 6, scope: !4376)
!4403 = !DILocation(line: 100, column: 2, scope: !4376)
!4404 = !DILocation(line: 100, column: 9, scope: !4376)
!4405 = !DILocation(line: 101, column: 19, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 100, column: 18)
!4407 = !DILocation(line: 101, column: 10, scope: !4406)
!4408 = !DILocation(line: 101, column: 8, scope: !4406)
!4409 = !DILocation(line: 102, column: 8, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 102, column: 7)
!4411 = !DILocation(line: 102, column: 7, scope: !4406)
!4412 = !DILocation(line: 103, column: 4, scope: !4410)
!4413 = !DILocation(line: 104, column: 13, scope: !4406)
!4414 = !DILocation(line: 104, column: 19, scope: !4406)
!4415 = !DILocation(line: 104, column: 11, scope: !4406)
!4416 = !DILocation(line: 106, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 106, column: 7)
!4418 = !DILocation(line: 106, column: 13, scope: !4417)
!4419 = !DILocation(line: 106, column: 10, scope: !4417)
!4420 = !DILocation(line: 106, column: 7, scope: !4406)
!4421 = !DILocation(line: 107, column: 8, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 107, column: 8)
!4423 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 106, column: 16)
!4424 = !DILocation(line: 107, column: 14, scope: !4422)
!4425 = !DILocation(line: 107, column: 19, scope: !4422)
!4426 = !DILocation(line: 107, column: 8, scope: !4423)
!4427 = !DILocation(line: 108, column: 27, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 107, column: 38)
!4429 = !DILocation(line: 108, column: 33, scope: !4428)
!4430 = !DILocation(line: 108, column: 25, scope: !4428)
!4431 = !DILocation(line: 108, column: 11, scope: !4428)
!4432 = !DILocation(line: 108, column: 9, scope: !4428)
!4433 = !DILocation(line: 109, column: 14, scope: !4428)
!4434 = !DILocation(line: 109, column: 5, scope: !4428)
!4435 = !DILocation(line: 110, column: 21, scope: !4428)
!4436 = !DILocation(line: 110, column: 30, scope: !4428)
!4437 = !DILocation(line: 110, column: 12, scope: !4428)
!4438 = !DILocation(line: 110, column: 10, scope: !4428)
!4439 = !DILocation(line: 111, column: 10, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 111, column: 9)
!4441 = !DILocation(line: 111, column: 9, scope: !4428)
!4442 = !DILocation(line: 112, column: 6, scope: !4440)
!4443 = !DILocation(line: 114, column: 41, scope: !4428)
!4444 = !DILocation(line: 114, column: 47, scope: !4428)
!4445 = !DILocation(line: 114, column: 14, scope: !4428)
!4446 = !DILocation(line: 116, column: 9, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 116, column: 9)
!4448 = !DILocation(line: 116, column: 19, scope: !4447)
!4449 = !DILocation(line: 116, column: 24, scope: !4447)
!4450 = !DILocation(line: 116, column: 9, scope: !4428)
!4451 = !DILocation(line: 117, column: 14, scope: !4447)
!4452 = !DILocation(line: 117, column: 24, scope: !4447)
!4453 = !DILocation(line: 117, column: 7, scope: !4447)
!4454 = !DILocation(line: 117, column: 12, scope: !4447)
!4455 = !DILocation(line: 117, column: 6, scope: !4447)
!4456 = !DILocation(line: 119, column: 14, scope: !4447)
!4457 = !DILocation(line: 119, column: 20, scope: !4447)
!4458 = !DILocation(line: 119, column: 7, scope: !4447)
!4459 = !DILocation(line: 119, column: 12, scope: !4447)
!4460 = !DILocation(line: 120, column: 4, scope: !4428)
!4461 = !DILocation(line: 121, column: 13, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 120, column: 11)
!4463 = !DILocation(line: 121, column: 19, scope: !4462)
!4464 = !DILocation(line: 121, column: 6, scope: !4462)
!4465 = !DILocation(line: 121, column: 11, scope: !4462)
!4466 = !DILocation(line: 124, column: 13, scope: !4423)
!4467 = !DILocation(line: 124, column: 4, scope: !4423)
!4468 = !DILocation(line: 125, column: 4, scope: !4423)
!4469 = !DILocation(line: 128, column: 13, scope: !4406)
!4470 = !DILocation(line: 128, column: 11, scope: !4406)
!4471 = !DILocation(line: 129, column: 12, scope: !4406)
!4472 = !DILocation(line: 129, column: 3, scope: !4406)
!4473 = !DILocation(line: 130, column: 4, scope: !4406)
!4474 = distinct !{!4474, !4403, !4475, !3909, !3910}
!4475 = !DILocation(line: 131, column: 2, scope: !4376)
!4476 = !DILocation(line: 132, column: 2, scope: !4376)
!4477 = !DILocation(line: 133, column: 1, scope: !4376)
!4478 = distinct !DISubprogram(name: "setup_data_data_read", scope: !3, file: !3, line: 173, type: !3693, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4479)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493}
!4480 = !DILocalVariable(name: "fp", arg: 1, scope: !4478, file: !3, line: 173, type: !393)
!4481 = !DILocalVariable(name: "kobj", arg: 2, scope: !4478, file: !3, line: 174, type: !142)
!4482 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4478, file: !3, line: 175, type: !3681)
!4483 = !DILocalVariable(name: "buf", arg: 4, scope: !4478, file: !3, line: 176, type: !229)
!4484 = !DILocalVariable(name: "off", arg: 5, scope: !4478, file: !3, line: 177, type: !442)
!4485 = !DILocalVariable(name: "count", arg: 6, scope: !4478, file: !3, line: 177, type: !274)
!4486 = !DILocalVariable(name: "indirect", scope: !4478, file: !3, line: 179, type: !108)
!4487 = !DILocalVariable(name: "data", scope: !4478, file: !3, line: 180, type: !3992)
!4488 = !DILocalVariable(name: "nr", scope: !4478, file: !3, line: 181, type: !184)
!4489 = !DILocalVariable(name: "ret", scope: !4478, file: !3, line: 181, type: !184)
!4490 = !DILocalVariable(name: "paddr", scope: !4478, file: !3, line: 182, type: !539)
!4491 = !DILocalVariable(name: "len", scope: !4478, file: !3, line: 182, type: !539)
!4492 = !DILocalVariable(name: "p", scope: !4478, file: !3, line: 183, type: !104)
!4493 = !DILabel(scope: !4478, name: "out", file: !3, line: 241)
!4494 = !DILocation(line: 173, column: 50, scope: !4478)
!4495 = !DILocation(line: 174, column: 25, scope: !4478)
!4496 = !DILocation(line: 175, column: 31, scope: !4478)
!4497 = !DILocation(line: 176, column: 15, scope: !4478)
!4498 = !DILocation(line: 177, column: 16, scope: !4478)
!4499 = !DILocation(line: 177, column: 28, scope: !4478)
!4500 = !DILocation(line: 179, column: 2, scope: !4478)
!4501 = !DILocation(line: 179, column: 25, scope: !4478)
!4502 = !DILocation(line: 180, column: 2, scope: !4478)
!4503 = !DILocation(line: 180, column: 21, scope: !4478)
!4504 = !DILocation(line: 181, column: 2, scope: !4478)
!4505 = !DILocation(line: 181, column: 6, scope: !4478)
!4506 = !DILocation(line: 181, column: 10, scope: !4478)
!4507 = !DILocation(line: 182, column: 2, scope: !4478)
!4508 = !DILocation(line: 182, column: 6, scope: !4478)
!4509 = !DILocation(line: 182, column: 13, scope: !4478)
!4510 = !DILocation(line: 183, column: 2, scope: !4478)
!4511 = !DILocation(line: 183, column: 8, scope: !4478)
!4512 = !DILocation(line: 185, column: 30, scope: !4478)
!4513 = !DILocation(line: 185, column: 8, scope: !4478)
!4514 = !DILocation(line: 185, column: 6, scope: !4478)
!4515 = !DILocation(line: 186, column: 6, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 186, column: 6)
!4517 = !DILocation(line: 186, column: 6, scope: !4478)
!4518 = !DILocation(line: 187, column: 10, scope: !4516)
!4519 = !DILocation(line: 187, column: 3, scope: !4516)
!4520 = !DILocation(line: 189, column: 29, scope: !4478)
!4521 = !DILocation(line: 189, column: 8, scope: !4478)
!4522 = !DILocation(line: 189, column: 6, scope: !4478)
!4523 = !DILocation(line: 190, column: 6, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 190, column: 6)
!4525 = !DILocation(line: 190, column: 6, scope: !4478)
!4526 = !DILocation(line: 191, column: 10, scope: !4524)
!4527 = !DILocation(line: 191, column: 3, scope: !4524)
!4528 = !DILocation(line: 192, column: 18, scope: !4478)
!4529 = !DILocation(line: 192, column: 9, scope: !4478)
!4530 = !DILocation(line: 192, column: 7, scope: !4478)
!4531 = !DILocation(line: 193, column: 7, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 193, column: 6)
!4533 = !DILocation(line: 193, column: 6, scope: !4478)
!4534 = !DILocation(line: 194, column: 3, scope: !4532)
!4535 = !DILocation(line: 196, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 196, column: 6)
!4537 = !DILocation(line: 196, column: 12, scope: !4536)
!4538 = !DILocation(line: 196, column: 17, scope: !4536)
!4539 = !DILocation(line: 196, column: 6, scope: !4478)
!4540 = !DILocation(line: 197, column: 25, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 196, column: 36)
!4542 = !DILocation(line: 197, column: 31, scope: !4541)
!4543 = !DILocation(line: 197, column: 23, scope: !4541)
!4544 = !DILocation(line: 197, column: 7, scope: !4541)
!4545 = !DILocation(line: 198, column: 12, scope: !4541)
!4546 = !DILocation(line: 198, column: 3, scope: !4541)
!4547 = !DILocation(line: 199, column: 19, scope: !4541)
!4548 = !DILocation(line: 199, column: 26, scope: !4541)
!4549 = !DILocation(line: 199, column: 10, scope: !4541)
!4550 = !DILocation(line: 199, column: 8, scope: !4541)
!4551 = !DILocation(line: 200, column: 8, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 200, column: 7)
!4553 = !DILocation(line: 200, column: 7, scope: !4541)
!4554 = !DILocation(line: 201, column: 4, scope: !4552)
!4555 = !DILocation(line: 203, column: 39, scope: !4541)
!4556 = !DILocation(line: 203, column: 45, scope: !4541)
!4557 = !DILocation(line: 203, column: 12, scope: !4541)
!4558 = !DILocation(line: 205, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 205, column: 7)
!4560 = !DILocation(line: 205, column: 17, scope: !4559)
!4561 = !DILocation(line: 205, column: 22, scope: !4559)
!4562 = !DILocation(line: 205, column: 7, scope: !4541)
!4563 = !DILocation(line: 206, column: 12, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 205, column: 41)
!4565 = !DILocation(line: 206, column: 22, scope: !4564)
!4566 = !DILocation(line: 206, column: 10, scope: !4564)
!4567 = !DILocation(line: 207, column: 10, scope: !4564)
!4568 = !DILocation(line: 207, column: 20, scope: !4564)
!4569 = !DILocation(line: 207, column: 8, scope: !4564)
!4570 = !DILocation(line: 208, column: 3, scope: !4564)
!4571 = !DILocation(line: 214, column: 10, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 208, column: 10)
!4573 = !DILocation(line: 215, column: 10, scope: !4572)
!4574 = !DILocation(line: 215, column: 16, scope: !4572)
!4575 = !DILocation(line: 215, column: 8, scope: !4572)
!4576 = !DILocation(line: 217, column: 2, scope: !4541)
!4577 = !DILocation(line: 218, column: 9, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 217, column: 9)
!4579 = !DILocation(line: 219, column: 9, scope: !4578)
!4580 = !DILocation(line: 219, column: 15, scope: !4578)
!4581 = !DILocation(line: 219, column: 7, scope: !4578)
!4582 = !DILocation(line: 222, column: 6, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 222, column: 6)
!4584 = !DILocation(line: 222, column: 12, scope: !4583)
!4585 = !DILocation(line: 222, column: 10, scope: !4583)
!4586 = !DILocation(line: 222, column: 6, scope: !4478)
!4587 = !DILocation(line: 223, column: 7, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 222, column: 17)
!4589 = !DILocation(line: 224, column: 3, scope: !4588)
!4590 = !DILocation(line: 227, column: 6, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 227, column: 6)
!4592 = !DILocation(line: 227, column: 14, scope: !4591)
!4593 = !DILocation(line: 227, column: 20, scope: !4591)
!4594 = !DILocation(line: 227, column: 18, scope: !4591)
!4595 = !DILocation(line: 227, column: 12, scope: !4591)
!4596 = !DILocation(line: 227, column: 6, scope: !4478)
!4597 = !DILocation(line: 228, column: 11, scope: !4591)
!4598 = !DILocation(line: 228, column: 17, scope: !4591)
!4599 = !DILocation(line: 228, column: 15, scope: !4591)
!4600 = !DILocation(line: 228, column: 9, scope: !4591)
!4601 = !DILocation(line: 228, column: 3, scope: !4591)
!4602 = !DILocation(line: 230, column: 7, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 230, column: 6)
!4604 = !DILocation(line: 230, column: 6, scope: !4478)
!4605 = !DILocation(line: 231, column: 3, scope: !4603)
!4606 = !DILocation(line: 233, column: 8, scope: !4478)
!4607 = !DILocation(line: 233, column: 6, scope: !4478)
!4608 = !DILocation(line: 234, column: 15, scope: !4478)
!4609 = !DILocation(line: 234, column: 22, scope: !4478)
!4610 = !DILocation(line: 234, column: 6, scope: !4478)
!4611 = !DILocation(line: 234, column: 4, scope: !4478)
!4612 = !DILocation(line: 235, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 235, column: 6)
!4614 = !DILocation(line: 235, column: 6, scope: !4478)
!4615 = !DILocation(line: 236, column: 7, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 235, column: 10)
!4617 = !DILocation(line: 237, column: 3, scope: !4616)
!4618 = !DILocation(line: 239, column: 9, scope: !4478)
!4619 = !DILocation(line: 239, column: 14, scope: !4478)
!4620 = !DILocation(line: 239, column: 18, scope: !4478)
!4621 = !DILocation(line: 239, column: 16, scope: !4478)
!4622 = !DILocation(line: 239, column: 23, scope: !4478)
!4623 = !DILocation(line: 239, column: 2, scope: !4478)
!4624 = !DILocation(line: 240, column: 11, scope: !4478)
!4625 = !DILocation(line: 240, column: 2, scope: !4478)
!4626 = !DILocation(line: 241, column: 1, scope: !4478)
!4627 = !DILocation(line: 242, column: 11, scope: !4478)
!4628 = !DILocation(line: 242, column: 2, scope: !4478)
!4629 = !DILocation(line: 243, column: 9, scope: !4478)
!4630 = !DILocation(line: 243, column: 2, scope: !4478)
!4631 = !DILocation(line: 244, column: 1, scope: !4478)
!4632 = distinct !DISubprogram(name: "kobj_to_setup_data_nr", scope: !3, file: !3, line: 62, type: !4633, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!184, !142, !1086}
!4635 = !{!4636, !4637, !4638}
!4636 = !DILocalVariable(name: "kobj", arg: 1, scope: !4632, file: !3, line: 62, type: !142)
!4637 = !DILocalVariable(name: "nr", arg: 2, scope: !4632, file: !3, line: 62, type: !1086)
!4638 = !DILocalVariable(name: "name", scope: !4632, file: !3, line: 64, type: !134)
!4639 = !DILocation(line: 62, column: 50, scope: !4632)
!4640 = !DILocation(line: 62, column: 61, scope: !4632)
!4641 = !DILocation(line: 64, column: 2, scope: !4632)
!4642 = !DILocation(line: 64, column: 14, scope: !4632)
!4643 = !DILocation(line: 66, column: 22, scope: !4632)
!4644 = !DILocation(line: 66, column: 9, scope: !4632)
!4645 = !DILocation(line: 66, column: 7, scope: !4632)
!4646 = !DILocation(line: 67, column: 19, scope: !4632)
!4647 = !DILocation(line: 67, column: 29, scope: !4632)
!4648 = !DILocation(line: 67, column: 9, scope: !4632)
!4649 = !DILocation(line: 68, column: 1, scope: !4632)
!4650 = !DILocation(line: 67, column: 2, scope: !4632)
!4651 = distinct !DISubprogram(name: "get_setup_data_paddr", scope: !3, file: !3, line: 70, type: !4652, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4655)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!184, !184, !4654}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!4655 = !{!4656, !4657, !4658, !4659, !4660}
!4656 = !DILocalVariable(name: "nr", arg: 1, scope: !4651, file: !3, line: 70, type: !184)
!4657 = !DILocalVariable(name: "paddr", arg: 2, scope: !4651, file: !3, line: 70, type: !4654)
!4658 = !DILocalVariable(name: "i", scope: !4651, file: !3, line: 72, type: !184)
!4659 = !DILocalVariable(name: "data", scope: !4651, file: !3, line: 73, type: !3992)
!4660 = !DILocalVariable(name: "pa_data", scope: !4651, file: !3, line: 74, type: !539)
!4661 = !DILocation(line: 70, column: 37, scope: !4651)
!4662 = !DILocation(line: 70, column: 46, scope: !4651)
!4663 = !DILocation(line: 72, column: 2, scope: !4651)
!4664 = !DILocation(line: 72, column: 6, scope: !4651)
!4665 = !DILocation(line: 73, column: 2, scope: !4651)
!4666 = !DILocation(line: 73, column: 21, scope: !4651)
!4667 = !DILocation(line: 74, column: 2, scope: !4651)
!4668 = !DILocation(line: 74, column: 6, scope: !4651)
!4669 = !DILocation(line: 74, column: 32, scope: !4651)
!4670 = !DILocation(line: 76, column: 2, scope: !4651)
!4671 = !DILocation(line: 76, column: 9, scope: !4651)
!4672 = !DILocation(line: 77, column: 7, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 77, column: 7)
!4674 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 76, column: 18)
!4675 = !DILocation(line: 77, column: 13, scope: !4673)
!4676 = !DILocation(line: 77, column: 10, scope: !4673)
!4677 = !DILocation(line: 77, column: 7, scope: !4674)
!4678 = !DILocation(line: 78, column: 13, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 77, column: 16)
!4680 = !DILocation(line: 78, column: 5, scope: !4679)
!4681 = !DILocation(line: 78, column: 11, scope: !4679)
!4682 = !DILocation(line: 79, column: 4, scope: !4679)
!4683 = !DILocation(line: 81, column: 19, scope: !4674)
!4684 = !DILocation(line: 81, column: 10, scope: !4674)
!4685 = !DILocation(line: 81, column: 8, scope: !4674)
!4686 = !DILocation(line: 82, column: 8, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 82, column: 7)
!4688 = !DILocation(line: 82, column: 7, scope: !4674)
!4689 = !DILocation(line: 83, column: 4, scope: !4687)
!4690 = !DILocation(line: 85, column: 13, scope: !4674)
!4691 = !DILocation(line: 85, column: 19, scope: !4674)
!4692 = !DILocation(line: 85, column: 11, scope: !4674)
!4693 = !DILocation(line: 86, column: 12, scope: !4674)
!4694 = !DILocation(line: 86, column: 3, scope: !4674)
!4695 = !DILocation(line: 87, column: 4, scope: !4674)
!4696 = distinct !{!4696, !4670, !4697, !3909, !3910}
!4697 = !DILocation(line: 88, column: 2, scope: !4651)
!4698 = !DILocation(line: 89, column: 2, scope: !4651)
!4699 = !DILocation(line: 90, column: 1, scope: !4651)
!4700 = distinct !DISubprogram(name: "kobject_name", scope: !144, file: !144, line: 87, type: !217, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4701)
!4701 = !{!4702}
!4702 = !DILocalVariable(name: "kobj", arg: 1, scope: !4700, file: !144, line: 87, type: !212)
!4703 = !DILocation(line: 87, column: 62, scope: !4700)
!4704 = !DILocation(line: 89, column: 9, scope: !4700)
!4705 = !DILocation(line: 89, column: 15, scope: !4700)
!4706 = !DILocation(line: 89, column: 2, scope: !4700)
!4707 = !DISubprogram(name: "kstrtoint", scope: !4708, file: !4708, line: 72, type: !4709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4708 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!184, !134, !7, !1086}
!4711 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 135, type: !3716, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4712 = !{!4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721}
!4713 = !DILocalVariable(name: "kobj", arg: 1, scope: !4711, file: !3, line: 135, type: !142)
!4714 = !DILocalVariable(name: "attr", arg: 2, scope: !4711, file: !3, line: 136, type: !3718)
!4715 = !DILocalVariable(name: "buf", arg: 3, scope: !4711, file: !3, line: 136, type: !229)
!4716 = !DILocalVariable(name: "indirect", scope: !4711, file: !3, line: 138, type: !108)
!4717 = !DILocalVariable(name: "data", scope: !4711, file: !3, line: 139, type: !3992)
!4718 = !DILocalVariable(name: "nr", scope: !4711, file: !3, line: 140, type: !184)
!4719 = !DILocalVariable(name: "ret", scope: !4711, file: !3, line: 140, type: !184)
!4720 = !DILocalVariable(name: "paddr", scope: !4711, file: !3, line: 141, type: !539)
!4721 = !DILocalVariable(name: "len", scope: !4711, file: !3, line: 142, type: !587)
!4722 = !DILocation(line: 135, column: 42, scope: !4711)
!4723 = !DILocation(line: 136, column: 28, scope: !4711)
!4724 = !DILocation(line: 136, column: 40, scope: !4711)
!4725 = !DILocation(line: 138, column: 2, scope: !4711)
!4726 = !DILocation(line: 138, column: 25, scope: !4711)
!4727 = !DILocation(line: 139, column: 2, scope: !4711)
!4728 = !DILocation(line: 139, column: 21, scope: !4711)
!4729 = !DILocation(line: 140, column: 2, scope: !4711)
!4730 = !DILocation(line: 140, column: 6, scope: !4711)
!4731 = !DILocation(line: 140, column: 10, scope: !4711)
!4732 = !DILocation(line: 141, column: 2, scope: !4711)
!4733 = !DILocation(line: 141, column: 6, scope: !4711)
!4734 = !DILocation(line: 142, column: 2, scope: !4711)
!4735 = !DILocation(line: 142, column: 6, scope: !4711)
!4736 = !DILocation(line: 144, column: 30, scope: !4711)
!4737 = !DILocation(line: 144, column: 8, scope: !4711)
!4738 = !DILocation(line: 144, column: 6, scope: !4711)
!4739 = !DILocation(line: 145, column: 6, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 145, column: 6)
!4741 = !DILocation(line: 145, column: 6, scope: !4711)
!4742 = !DILocation(line: 146, column: 10, scope: !4740)
!4743 = !DILocation(line: 146, column: 3, scope: !4740)
!4744 = !DILocation(line: 148, column: 29, scope: !4711)
!4745 = !DILocation(line: 148, column: 8, scope: !4711)
!4746 = !DILocation(line: 148, column: 6, scope: !4711)
!4747 = !DILocation(line: 149, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 149, column: 6)
!4749 = !DILocation(line: 149, column: 6, scope: !4711)
!4750 = !DILocation(line: 150, column: 10, scope: !4748)
!4751 = !DILocation(line: 150, column: 3, scope: !4748)
!4752 = !DILocation(line: 151, column: 18, scope: !4711)
!4753 = !DILocation(line: 151, column: 9, scope: !4711)
!4754 = !DILocation(line: 151, column: 7, scope: !4711)
!4755 = !DILocation(line: 152, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 152, column: 6)
!4757 = !DILocation(line: 152, column: 6, scope: !4711)
!4758 = !DILocation(line: 153, column: 3, scope: !4756)
!4759 = !DILocation(line: 155, column: 6, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 155, column: 6)
!4761 = !DILocation(line: 155, column: 12, scope: !4760)
!4762 = !DILocation(line: 155, column: 17, scope: !4760)
!4763 = !DILocation(line: 155, column: 6, scope: !4711)
!4764 = !DILocation(line: 156, column: 25, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 155, column: 36)
!4766 = !DILocation(line: 156, column: 31, scope: !4765)
!4767 = !DILocation(line: 156, column: 23, scope: !4765)
!4768 = !DILocation(line: 156, column: 9, scope: !4765)
!4769 = !DILocation(line: 156, column: 7, scope: !4765)
!4770 = !DILocation(line: 157, column: 12, scope: !4765)
!4771 = !DILocation(line: 157, column: 3, scope: !4765)
!4772 = !DILocation(line: 158, column: 19, scope: !4765)
!4773 = !DILocation(line: 158, column: 26, scope: !4765)
!4774 = !DILocation(line: 158, column: 10, scope: !4765)
!4775 = !DILocation(line: 158, column: 8, scope: !4765)
!4776 = !DILocation(line: 159, column: 8, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 159, column: 7)
!4778 = !DILocation(line: 159, column: 7, scope: !4765)
!4779 = !DILocation(line: 160, column: 4, scope: !4777)
!4780 = !DILocation(line: 162, column: 39, scope: !4765)
!4781 = !DILocation(line: 162, column: 45, scope: !4765)
!4782 = !DILocation(line: 162, column: 12, scope: !4765)
!4783 = !DILocation(line: 164, column: 17, scope: !4765)
!4784 = !DILocation(line: 164, column: 32, scope: !4765)
!4785 = !DILocation(line: 164, column: 42, scope: !4765)
!4786 = !DILocation(line: 164, column: 9, scope: !4765)
!4787 = !DILocation(line: 164, column: 7, scope: !4765)
!4788 = !DILocation(line: 165, column: 2, scope: !4765)
!4789 = !DILocation(line: 166, column: 17, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 165, column: 9)
!4791 = !DILocation(line: 166, column: 32, scope: !4790)
!4792 = !DILocation(line: 166, column: 38, scope: !4790)
!4793 = !DILocation(line: 166, column: 9, scope: !4790)
!4794 = !DILocation(line: 166, column: 7, scope: !4790)
!4795 = !DILocation(line: 169, column: 11, scope: !4711)
!4796 = !DILocation(line: 169, column: 2, scope: !4711)
!4797 = !DILocation(line: 170, column: 9, scope: !4711)
!4798 = !DILocation(line: 170, column: 2, scope: !4711)
!4799 = !DILocation(line: 171, column: 1, scope: !4711)
