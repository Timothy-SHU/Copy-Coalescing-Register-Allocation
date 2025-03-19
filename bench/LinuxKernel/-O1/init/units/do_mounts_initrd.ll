; ModuleID = 'init/do_mounts_initrd.c'
source_filename = "init/do_mounts_initrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init\22, \22a\22\09\09"
module asm "__initcall__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7:\09\09\09"
module asm ".long\09__initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7363 = internal global ptr @__initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7, section ".discard.addressable", align 8, !dbg !0
@__setup_str_no_initrd = internal constant [9 x i8] c"noinitrd\00", section ".init.rodata", align 1, !dbg !176
@__setup_no_initrd = internal global %struct.obs_kernel_param { ptr @__setup_str_no_initrd, ptr @no_initrd, i32 0 }, section ".init.setup", align 8, !dbg !117
@__setup_str_early_initrdmem = internal constant [10 x i8] c"initrdmem\00", section ".init.rodata", align 1, !dbg !179
@__setup_early_initrdmem = internal global %struct.obs_kernel_param { ptr @__setup_str_early_initrdmem, ptr @early_initrdmem, i32 1 }, section ".init.setup", align 8, !dbg !129
@__setup_str_early_initrd = internal constant [7 x i8] c"initrd\00", section ".init.rodata", align 1, !dbg !184
@__setup_early_initrd = internal global %struct.obs_kernel_param { ptr @__setup_str_early_initrd, ptr @early_initrd, i32 1 }, section ".init.setup", align 8, !dbg !131
@mount_initrd = internal global i32 1, section ".init.data", align 4, !dbg !187
@.str = private unnamed_addr constant [9 x i8] c"/dev/ram\00", align 1, !dbg !133
@.str.1 = private unnamed_addr constant [14 x i8] c"/initrd.image\00", align 1, !dbg !138
@ROOT_DEV = external dso_local global i32, align 4
@initrd_start = hidden global i64 0, align 8, !dbg !143
@initrd_end = hidden global i64 0, align 8, !dbg !145
@initrd_below_start_ok = hidden global i32 0, align 4, !dbg !147
@phys_initrd_start = hidden global i64 0, section ".init.data", align 8, !dbg !149
@phys_initrd_size = hidden global i64 0, section ".init.data", align 8, !dbg !155
@.str.2 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !157
@kern_do_mounts_initrd_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.4, ptr @real_root_dev, i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !169
@.str.3 = private unnamed_addr constant [28 x i8] c"kern_do_mounts_initrd_table\00", align 1, !dbg !162
@.str.4 = private unnamed_addr constant [14 x i8] c"real-root-dev\00", align 1, !dbg !167
@real_root_dev = internal global i32 0, align 4, !dbg !174
@handle_initrd.argv = internal global [2 x ptr] [ptr @.str.5, ptr null], align 16, !dbg !194
@.str.5 = private unnamed_addr constant [8 x i8] c"linuxrc\00", align 1, !dbg !189
@.str.6 = private unnamed_addr constant [61 x i8] c"\014using deprecated initrd support, will be removed in 2021.\0A\00", align 1, !dbg !635
@.str.7 = private unnamed_addr constant [14 x i8] c"/dev/root.old\00", align 1, !dbg !640
@root_mountflags = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"/old\00", align 1, !dbg !642
@.str.9 = private unnamed_addr constant [9 x i8] c"/linuxrc\00", align 1, !dbg !645
@envp_init = external dso_local global [0 x ptr], align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"..\00", align 1, !dbg !647
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !652
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !655
@.str.13 = private unnamed_addr constant [42 x i8] c"\015Trying to move old root to /initrd ... \00", align 1, !dbg !657
@.str.14 = private unnamed_addr constant [13 x i8] c"/root/initrd\00", align 1, !dbg !662
@.str.15 = private unnamed_addr constant [6 x i8] c"okay\0A\00", align 1, !dbg !667
@.str.16 = private unnamed_addr constant [34 x i8] c"/initrd does not exist. Ignored.\0A\00", align 1, !dbg !669
@.str.17 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1, !dbg !674
@.str.18 = private unnamed_addr constant [23 x i8] c"\015Unmounting old root\0A\00", align 1, !dbg !676
@.str.19 = private unnamed_addr constant [6 x i8] c"/root\00", align 1, !dbg !681
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7363, ptr @__setup_no_initrd, ptr @__setup_early_initrdmem, ptr @__setup_early_initrd], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7() #0 section ".init.text" align 16 !dbg !692 {
entry:
  %call = call i32 @kernel_do_mounts_initrd_sysctls_init() #8, !dbg !695
  ret i32 %call, !dbg !695
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @kernel_do_mounts_initrd_sysctls_init() #0 section ".init.text" align 16 !dbg !696 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str.2, ptr noundef @kern_do_mounts_initrd_table, ptr noundef @.str.3, i64 noundef 2) #9, !dbg !697
  ret i32 0, !dbg !698
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @no_initrd(ptr noundef %str) #0 section ".init.text" align 16 !dbg !699 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !701, metadata !DIExpression()), !dbg !702
  store i32 0, ptr @mount_initrd, align 4, !dbg !703
  ret i32 1, !dbg !704
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_initrdmem(ptr noundef %p) #0 section ".init.text" align 16 !dbg !705 {
entry:
  %p.addr = alloca ptr, align 8
  %start = alloca i64, align 8
  %size = alloca i64, align 8
  %endp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !707, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !712
  call void @llvm.dbg.declare(metadata ptr %start, metadata !708, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %size, metadata !709, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #10, !dbg !716
  call void @llvm.dbg.declare(metadata ptr %endp, metadata !710, metadata !DIExpression()), !dbg !717
  %0 = load ptr, ptr %p.addr, align 8, !dbg !718
  %call = call i64 @memparse(ptr noundef %0, ptr noundef %endp) #9, !dbg !719
  store i64 %call, ptr %start, align 8, !dbg !720
  %1 = load ptr, ptr %endp, align 8, !dbg !721
  %2 = load i8, ptr %1, align 1, !dbg !723
  %conv = zext i8 %2 to i32, !dbg !723
  %cmp = icmp eq i32 %conv, 44, !dbg !724
  br i1 %cmp, label %if.then, label %if.end, !dbg !725

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %endp, align 8, !dbg !726
  %add.ptr = getelementptr i8, ptr %3, i64 1, !dbg !728
  %call2 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef null) #9, !dbg !729
  store i64 %call2, ptr %size, align 8, !dbg !730
  %4 = load i64, ptr %start, align 8, !dbg !731
  store i64 %4, ptr @phys_initrd_start, align 8, !dbg !732
  %5 = load i64, ptr %size, align 8, !dbg !733
  store i64 %5, ptr @phys_initrd_size, align 8, !dbg !734
  br label %if.end, !dbg !735

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %endp) #10, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !736
  ret i32 0, !dbg !737
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @early_initrd(ptr noundef %p) #0 section ".init.text" align 16 !dbg !738 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !740, metadata !DIExpression()), !dbg !741
  %0 = load ptr, ptr %p.addr, align 8, !dbg !742
  %call = call i32 @early_initrdmem(ptr noundef %0) #8, !dbg !743
  ret i32 %call, !dbg !744
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @initrd_load(ptr noundef %root_device_name) #0 section ".init.text" align 16 !dbg !745 {
entry:
  %retval = alloca i1, align 1
  %root_device_name.addr = alloca ptr, align 8
  store ptr %root_device_name, ptr %root_device_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root_device_name.addr, metadata !749, metadata !DIExpression()), !dbg !750
  %0 = load i32, ptr @mount_initrd, align 4, !dbg !751
  %tobool = icmp ne i32 %0, 0, !dbg !751
  br i1 %tobool, label %if.then, label %if.end5, !dbg !753

if.then:                                          ; preds = %entry
  %call = call i32 @create_dev(ptr noundef @.str, i32 noundef 1048576) #8, !dbg !754
  %call1 = call i32 @rd_load_image(ptr noundef @.str.1) #9, !dbg !756
  %tobool2 = icmp ne i32 %call1, 0, !dbg !756
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !758

land.lhs.true:                                    ; preds = %if.then
  %1 = load i32, ptr @ROOT_DEV, align 4, !dbg !759
  %cmp = icmp ne i32 %1, 1048576, !dbg !760
  br i1 %cmp, label %if.then3, label %if.end, !dbg !761

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call i32 @init_unlink(ptr noundef @.str.1) #8, !dbg !762
  %2 = load ptr, ptr %root_device_name.addr, align 8, !dbg !764
  call void @handle_initrd(ptr noundef %2) #8, !dbg !765
  store i1 true, ptr %retval, align 1, !dbg !766
  br label %return, !dbg !766

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end5, !dbg !767

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @init_unlink(ptr noundef @.str.1) #8, !dbg !768
  store i1 false, ptr %retval, align 1, !dbg !769
  br label %return, !dbg !769

return:                                           ; preds = %if.end5, %if.then3
  %3 = load i1, ptr %retval, align 1, !dbg !770
  ret i1 %3, !dbg !770
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @create_dev(ptr noundef %name, i32 noundef %dev) #2 section ".init.text" align 16 !dbg !771 {
entry:
  %name.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !778, metadata !DIExpression()), !dbg !780
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !779, metadata !DIExpression()), !dbg !781
  %0 = load ptr, ptr %name.addr, align 8, !dbg !782
  %call = call i32 @init_unlink(ptr noundef %0) #8, !dbg !783
  %1 = load ptr, ptr %name.addr, align 8, !dbg !784
  %2 = load i32, ptr %dev.addr, align 4, !dbg !785
  %call1 = call i32 @new_encode_dev(i32 noundef %2) #9, !dbg !786
  %call2 = call i32 @init_mknod(ptr noundef %1, i16 noundef zeroext 24960, i32 noundef %call1) #8, !dbg !787
  ret i32 %call2, !dbg !788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rd_load_image(ptr noundef %from) #3 align 16 !dbg !789 {
entry:
  %from.addr = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !791, metadata !DIExpression()), !dbg !792
  ret i32 0, !dbg !793
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !794 dso_local i32 @init_unlink(ptr noundef) #4 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @handle_initrd(ptr noundef %root_device_name) #0 section ".init.text" align 16 !dbg !196 {
entry:
  %root_device_name.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store ptr %root_device_name, ptr %root_device_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root_device_name.addr, metadata !200, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #10, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %info, metadata !201, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %error, metadata !633, metadata !DIExpression()), !dbg !802
  br label %do.body, !dbg !803

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !805

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !805

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #8, !dbg !803
  store i32 %call, ptr %tmp, align 4, !dbg !805
  %0 = load i32, ptr %tmp, align 4, !dbg !803
  %1 = load i32, ptr @ROOT_DEV, align 4, !dbg !807
  %call1 = call i32 @new_encode_dev(i32 noundef %1) #9, !dbg !808
  store i32 %call1, ptr @real_root_dev, align 4, !dbg !809
  %call2 = call i32 @create_dev(ptr noundef @.str.7, i32 noundef 1048576) #8, !dbg !810
  %2 = load ptr, ptr %root_device_name.addr, align 8, !dbg !811
  %3 = load i32, ptr @root_mountflags, align 4, !dbg !812
  %and = and i32 %3, -2, !dbg !813
  call void @mount_root_generic(ptr noundef @.str.7, ptr noundef %2, i32 noundef %and) #9, !dbg !814
  %call3 = call i32 @init_mkdir(ptr noundef @.str.8, i16 noundef zeroext 448) #8, !dbg !815
  %call4 = call i32 @init_chdir(ptr noundef @.str.8) #8, !dbg !816
  %call5 = call ptr @call_usermodehelper_setup(ptr noundef @.str.9, ptr noundef @handle_initrd.argv, ptr noundef @envp_init, i32 noundef 3264, ptr noundef @init_linuxrc, ptr noundef null, ptr noundef null) #9, !dbg !817
  store ptr %call5, ptr %info, align 8, !dbg !818
  %4 = load ptr, ptr %info, align 8, !dbg !819
  %tobool = icmp ne ptr %4, null, !dbg !819
  br i1 %tobool, label %if.end, label %if.then, !dbg !821

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !822

if.end:                                           ; preds = %do.end
  %5 = load ptr, ptr %info, align 8, !dbg !823
  %call6 = call i32 @call_usermodehelper_exec(ptr noundef %5, i32 noundef 10) #9, !dbg !824
  %call7 = call i32 @init_mount(ptr noundef @.str.10, ptr noundef @.str.11, ptr noundef null, i64 noundef 8192, ptr noundef null) #8, !dbg !825
  %call8 = call i32 @init_chroot(ptr noundef @.str.10) #8, !dbg !826
  %6 = load i32, ptr @real_root_dev, align 4, !dbg !827
  %call9 = call i32 @new_decode_dev(i32 noundef %6) #9, !dbg !829
  %cmp = icmp eq i32 %call9, 1048576, !dbg !830
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !831

if.then10:                                        ; preds = %if.end
  %call11 = call i32 @init_chdir(ptr noundef @.str.8) #8, !dbg !832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !834

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @init_chdir(ptr noundef @.str.12) #8, !dbg !835
  %7 = load i32, ptr @real_root_dev, align 4, !dbg !836
  %call14 = call i32 @new_decode_dev(i32 noundef %7) #9, !dbg !837
  store i32 %call14, ptr @ROOT_DEV, align 4, !dbg !838
  %8 = load ptr, ptr %root_device_name.addr, align 8, !dbg !839
  call void @mount_root(ptr noundef %8) #9, !dbg !840
  br label %do.body15, !dbg !841

do.body15:                                        ; preds = %if.end12
  br label %do.cond16, !dbg !843

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !843

do.end17:                                         ; preds = %do.cond16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #8, !dbg !841
  store i32 %call19, ptr %tmp18, align 4, !dbg !843
  %9 = load i32, ptr %tmp18, align 4, !dbg !841
  %call20 = call i32 @init_mount(ptr noundef @.str.8, ptr noundef @.str.14, ptr noundef null, i64 noundef 8192, ptr noundef null) #8, !dbg !845
  store i32 %call20, ptr %error, align 4, !dbg !846
  %10 = load i32, ptr %error, align 4, !dbg !847
  %tobool21 = icmp ne i32 %10, 0, !dbg !847
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !849

if.then22:                                        ; preds = %do.end17
  br label %do.body23, !dbg !850

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !852

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !852

do.end25:                                         ; preds = %do.cond24
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15) #8, !dbg !850
  store i32 %call27, ptr %tmp26, align 4, !dbg !852
  %11 = load i32, ptr %tmp26, align 4, !dbg !850
  br label %if.end48, !dbg !854

if.else:                                          ; preds = %do.end17
  %12 = load i32, ptr %error, align 4, !dbg !855
  %cmp28 = icmp eq i32 %12, -2, !dbg !858
  br i1 %cmp28, label %if.then29, label %if.else35, !dbg !859

if.then29:                                        ; preds = %if.else
  br label %do.body30, !dbg !860

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !862

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !862

do.end32:                                         ; preds = %do.cond31
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16) #8, !dbg !860
  store i32 %call34, ptr %tmp33, align 4, !dbg !862
  %13 = load i32, ptr %tmp33, align 4, !dbg !860
  br label %if.end41, !dbg !864

if.else35:                                        ; preds = %if.else
  br label %do.body36, !dbg !865

do.body36:                                        ; preds = %if.else35
  br label %do.cond37, !dbg !867

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !867

do.end38:                                         ; preds = %do.cond37
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17) #8, !dbg !865
  store i32 %call40, ptr %tmp39, align 4, !dbg !867
  %14 = load i32, ptr %tmp39, align 4, !dbg !865
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %do.end32
  br label %do.body42, !dbg !869

do.body42:                                        ; preds = %if.end41
  br label %do.cond43, !dbg !871

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !871

do.end44:                                         ; preds = %do.cond43
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18) #8, !dbg !869
  store i32 %call46, ptr %tmp45, align 4, !dbg !871
  %15 = load i32, ptr %tmp45, align 4, !dbg !869
  %call47 = call i32 @init_umount(ptr noundef @.str.8, i32 noundef 2) #8, !dbg !873
  br label %if.end48

if.end48:                                         ; preds = %do.end44, %do.end25
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !874
  br label %cleanup, !dbg !874

cleanup:                                          ; preds = %if.end48, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #10, !dbg !874
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !874

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !875 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !878 dso_local i64 @memparse(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !882 dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) #4 section ".init.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_encode_dev(i32 noundef %dev) #7 align 16 !dbg !885 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !890, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #10, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %major, metadata !891, metadata !DIExpression()), !dbg !895
  %0 = load i32, ptr %dev.addr, align 4, !dbg !896
  %shr = lshr i32 %0, 20, !dbg !896
  store i32 %shr, ptr %major, align 4, !dbg !895
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #10, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !892, metadata !DIExpression()), !dbg !898
  %1 = load i32, ptr %dev.addr, align 4, !dbg !899
  %and = and i32 %1, 1048575, !dbg !899
  store i32 %and, ptr %minor, align 4, !dbg !898
  %2 = load i32, ptr %minor, align 4, !dbg !900
  %and1 = and i32 %2, 255, !dbg !901
  %3 = load i32, ptr %major, align 4, !dbg !902
  %shl = shl i32 %3, 8, !dbg !903
  %or = or i32 %and1, %shl, !dbg !904
  %4 = load i32, ptr %minor, align 4, !dbg !905
  %and2 = and i32 %4, -256, !dbg !906
  %shl3 = shl i32 %and2, 12, !dbg !907
  %or4 = or i32 %or, %shl3, !dbg !908
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #10, !dbg !909
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #10, !dbg !909
  ret i32 %or4, !dbg !910
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !911 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !915 dso_local void @mount_root_generic(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !918 dso_local i32 @init_mkdir(ptr noundef, i16 noundef zeroext) #4 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !921 dso_local i32 @init_chdir(ptr noundef) #4 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_linuxrc(ptr noundef %info, ptr noundef %new) #0 section ".init.text" align 16 !dbg !925 {
entry:
  %info.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !927, metadata !DIExpression()), !dbg !929
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !928, metadata !DIExpression()), !dbg !930
  %call = call i32 @ksys_unshare(i64 noundef 1536) #9, !dbg !931
  call void @console_on_rootfs() #9, !dbg !932
  %call1 = call i32 @init_chdir(ptr noundef @.str.19) #8, !dbg !933
  %call2 = call i32 @init_mount(ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef null, i64 noundef 8192, ptr noundef null) #8, !dbg !934
  %call3 = call i32 @init_chroot(ptr noundef @.str.11) #8, !dbg !935
  %call4 = call i32 @ksys_setsid() #9, !dbg !936
  ret i32 0, !dbg !937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !938 dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !941 dso_local i32 @init_mount(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4 section ".init.text"

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !944 dso_local i32 @init_chroot(ptr noundef) #4 section ".init.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_decode_dev(i32 noundef %dev) #7 align 16 !dbg !945 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !949, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #10, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %major, metadata !950, metadata !DIExpression()), !dbg !954
  %0 = load i32, ptr %dev.addr, align 4, !dbg !955
  %and = and i32 %0, 1048320, !dbg !956
  %shr = lshr i32 %and, 8, !dbg !957
  store i32 %shr, ptr %major, align 4, !dbg !954
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #10, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !951, metadata !DIExpression()), !dbg !959
  %1 = load i32, ptr %dev.addr, align 4, !dbg !960
  %and1 = and i32 %1, 255, !dbg !961
  %2 = load i32, ptr %dev.addr, align 4, !dbg !962
  %shr2 = lshr i32 %2, 12, !dbg !963
  %and3 = and i32 %shr2, 1048320, !dbg !964
  %or = or i32 %and1, %and3, !dbg !965
  store i32 %or, ptr %minor, align 4, !dbg !959
  %3 = load i32, ptr %major, align 4, !dbg !966
  %shl = shl i32 %3, 20, !dbg !966
  %4 = load i32, ptr %minor, align 4, !dbg !966
  %or4 = or i32 %shl, %4, !dbg !966
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #10, !dbg !967
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #10, !dbg !967
  ret i32 %or4, !dbg !968
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !969 dso_local void @mount_root(ptr noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !970 dso_local i32 @init_umount(ptr noundef, i32 noundef) #4 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !973 dso_local i32 @ksys_unshare(i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !977 dso_local void @console_on_rootfs() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !981 dso_local i32 @ksys_setsid() #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!683, !684, !685, !686, !687, !688, !689, !690}
!llvm.ident = !{!691}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7363", scope: !2, file: !3, line: 40, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF init/.do_mounts_initrd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -fno-function-sections -fno-data-sections -D KBUILD_MODFILE=\22init/mounts\22 -D KBUILD_BASENAME=\22do_mounts_initrd\22 -D KBUILD_MODNAME=\22mounts\22 -D __KBUILD_MODNAME=kmod_mounts -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o init/do_mounts_initrd.ll init/do_mounts_initrd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !114, globals: !116, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "init/do_mounts_initrd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9618a5d8e06750af0bfdd7124bfb4dff")
!4 = !{!5, !13, !18}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/root_dev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7be09b40a0965eb12d8d12baab0befeb")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "Root_NFS", value: 255)
!10 = !DIEnumerator(name: "Root_CIFS", value: 254)
!11 = !DIEnumerator(name: "Root_Generic", value: 253)
!12 = !DIEnumerator(name: "Root_RAM0", value: 1048576)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !20, file: !19, line: 147, baseType: !7, size: 32, elements: !111)
!19 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !19, line: 135, size: 512, elements: !21)
!21 = !{!22, !26, !28, !30, !34, !35, !51, !109, !110}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !20, file: !19, line: 136, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !19, line: 137, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !20, file: !19, line: 138, baseType: !29, size: 32, offset: 128)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !20, file: !19, line: 139, baseType: !31, size: 16, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 150, baseType: !18, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !20, file: !19, line: 151, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !19, line: 64, baseType: !38)
!38 = !DISubroutineType(types: !39)
!39 = !{!29, !40, !29, !27, !41, !47}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 61, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !44, line: 72, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !44, line: 16, baseType: !46)
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !32, line: 52, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !44, line: 88, baseType: !50)
!50 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !20, file: !19, line: 152, baseType: !52, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !19, line: 117, size: 256, elements: !54)
!54 = !{!55, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !53, file: !19, line: 118, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !32, line: 174, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 172, size: 32, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !57, file: !32, line: 173, baseType: !29, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !53, file: !19, line: 119, baseType: !61, size: 192, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !62, line: 41, baseType: !63)
!62 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !62, line: 37, size: 192, elements: !64)
!64 = !{!65, !103}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !63, file: !62, line: 38, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !67, line: 29, baseType: !68)
!67 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !67, line: 17, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !67, line: 18, baseType: !71, size: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !67, line: 18, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !71, file: !67, line: 19, baseType: !74, size: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !75, line: 14, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !74, file: !75, line: 15, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !79, line: 44, baseType: !80)
!79 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !79, line: 14, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !79, line: 15, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !79, line: 15, size: 32, elements: !84)
!84 = !{!85, !86, !96}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !79, line: 16, baseType: !56, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !79, line: 24, baseType: !87, size: 16)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 24, size: 16, elements: !88)
!88 = !{!89, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !87, file: !79, line: 25, baseType: !90, size: 8)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !91, line: 17, baseType: !92)
!91 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !93, line: 21, baseType: !94)
!93 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !87, file: !79, line: 26, baseType: !90, size: 8, offset: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !79, line: 28, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !79, line: 28, size: 32, elements: !98)
!98 = !{!99, !102}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !97, file: !79, line: 29, baseType: !100, size: 16)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !91, line: 19, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !93, line: 24, baseType: !33)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !97, file: !79, line: 30, baseType: !100, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !63, file: !62, line: 39, baseType: !104, size: 128, offset: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !32, line: 190, size: 128, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !32, line: 191, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !32, line: 191, baseType: !107, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !20, file: !19, line: 153, baseType: !27, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !20, file: !19, line: 154, baseType: !27, size: 64, offset: 448)
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!113 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!114 = !{!27, !29, !7, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !32, line: 154, baseType: !7)
!116 = !{!0, !117, !129, !131, !133, !138, !143, !145, !147, !149, !155, !157, !162, !167, !169, !174, !176, !179, !184, !187, !189, !194, !635, !640, !642, !645, !647, !652, !655, !657, !662, !667, !669, !674, !676, !681}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__setup_no_initrd", scope: !2, file: !3, line: 49, type: !119, isLocal: true, isDefinition: true, align: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !120, line: 324, size: 192, elements: !121)
!120 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!121 = !{!122, !123, !128}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !119, file: !120, line: 325, baseType: !23, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !119, file: !120, line: 326, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!29, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !119, file: !120, line: 327, baseType: !29, size: 32, offset: 128)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "__setup_early_initrdmem", scope: !2, file: !3, line: 66, type: !119, isLocal: true, isDefinition: true, align: 64)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__setup_early_initrd", scope: !2, file: !3, line: 72, type: !119, isLocal: true, isDefinition: true, align: 64)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 72, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 9)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 112, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 14)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "initrd_start", scope: !2, file: !3, line: 15, type: !46, isLocal: false, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "initrd_end", scope: !2, file: !3, line: 15, type: !46, isLocal: false, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "initrd_below_start_ok", scope: !2, file: !3, line: 16, type: !29, isLocal: false, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "phys_initrd_start", scope: !2, file: !3, line: 20, type: !151, isLocal: false, isDefinition: true)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !32, line: 159, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !91, line: 23, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !93, line: 31, baseType: !154)
!154 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "phys_initrd_size", scope: !2, file: !3, line: 21, type: !46, isLocal: false, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 56, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 7)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 224, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 28)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !140, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "kern_do_mounts_initrd_table", scope: !2, file: !3, line: 24, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1024, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "real_root_dev", scope: !2, file: !3, line: 17, type: !7, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__setup_str_no_initrd", scope: !2, file: !3, line: 49, type: !178, isLocal: true, isDefinition: true, align: 8)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 72, elements: !136)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "__setup_str_early_initrdmem", scope: !2, file: !3, line: 66, type: !181, isLocal: true, isDefinition: true, align: 8)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 80, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 10)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "__setup_str_early_initrd", scope: !2, file: !3, line: 72, type: !186, isLocal: true, isDefinition: true, align: 8)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 56, elements: !160)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "mount_initrd", scope: !2, file: !3, line: 18, type: !29, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "argv", scope: !196, file: !3, line: 89, type: !634, isLocal: true, isDefinition: true)
!196 = distinct !DISubprogram(name: "handle_initrd", scope: !3, file: !3, line: 86, type: !197, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !127}
!199 = !{!200, !201, !633}
!200 = !DILocalVariable(name: "root_device_name", arg: 1, scope: !196, file: !3, line: 86, type: !127)
!201 = !DILocalVariable(name: "info", scope: !196, file: !3, line: 88, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subprocess_info", file: !204, line: 20, size: 768, elements: !205)
!204 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!205 = !{!206, !226, !239, !240, !242, !243, !244, !245, !628, !632}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !203, file: !204, line: 21, baseType: !207, size: 256)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !208, line: 98, size: 256, elements: !209)
!208 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!209 = !{!210, !219, !220}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !208, line: 99, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !212, line: 13, baseType: !213)
!212 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !32, line: 181, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !32, line: 179, size: 64, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !214, file: !32, line: 180, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !91, line: 22, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !93, line: 30, baseType: !50)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !207, file: !208, line: 100, baseType: !104, size: 128, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !207, file: !208, line: 101, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !208, line: 21, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !203, file: !204, line: 22, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !229, line: 26, size: 256, elements: !230)
!229 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !228, file: !229, line: 27, baseType: !7, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !228, file: !229, line: 28, baseType: !233, size: 192, offset: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !234, line: 43, size: 192, elements: !235)
!234 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !233, file: !234, line: 44, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !75, line: 23, baseType: !74)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !233, file: !234, line: 45, baseType: !104, size: 128, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !203, file: !204, line: 23, baseType: !23, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !203, file: !204, line: 24, baseType: !241, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !203, file: !204, line: 25, baseType: !241, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !203, file: !204, line: 26, baseType: !29, size: 32, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !203, file: !204, line: 27, baseType: !29, size: 32, offset: 544)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !203, file: !204, line: 28, baseType: !246, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!29, !202, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !251, line: 110, size: 1472, elements: !252)
!251 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!252 = !{!253, !254, !262, !269, !270, !271, !272, !273, !274, !275, !276, !282, !283, !284, !285, !286, !287, !438, !439, !440, !441, !442, !479, !612, !613, !623}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !250, file: !251, line: 111, baseType: !211, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !250, file: !251, line: 112, baseType: !255, size: 32, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !256, line: 23, baseType: !257)
!256 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 21, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !257, file: !256, line: 22, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !32, line: 37, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !44, line: 49, baseType: !7)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !250, file: !251, line: 113, baseType: !263, size: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !256, line: 28, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 26, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !264, file: !256, line: 27, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !32, line: 38, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !44, line: 50, baseType: !7)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !250, file: !251, line: 114, baseType: !255, size: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !250, file: !251, line: 115, baseType: !263, size: 32, offset: 160)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !250, file: !251, line: 116, baseType: !255, size: 32, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !250, file: !251, line: 117, baseType: !263, size: 32, offset: 224)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !250, file: !251, line: 118, baseType: !255, size: 32, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !250, file: !251, line: 119, baseType: !263, size: 32, offset: 288)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !250, file: !251, line: 120, baseType: !7, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !250, file: !251, line: 121, baseType: !277, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !278, line: 24, baseType: !279)
!278 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !278, line: 24, size: 64, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !279, file: !278, line: 24, baseType: !152, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !250, file: !251, line: 122, baseType: !277, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !250, file: !251, line: 123, baseType: !277, size: 64, offset: 512)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !250, file: !251, line: 124, baseType: !277, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !250, file: !251, line: 125, baseType: !277, size: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !250, file: !251, line: 127, baseType: !94, size: 8, offset: 704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !250, file: !251, line: 129, baseType: !288, size: 64, offset: 768)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !290, line: 195, size: 1728, elements: !291)
!290 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!291 = !{!292, !298, !303, !315, !328, !331, !332, !339, !340, !341, !342, !347, !348, !349, !351, !352, !400, !423}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !289, file: !290, line: 196, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !294, line: 113, baseType: !295)
!294 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !294, line: 111, size: 32, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !295, file: !294, line: 112, baseType: !56, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !289, file: !290, line: 197, baseType: !299, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !290, line: 28, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !32, line: 104, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !91, line: 20, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !93, line: 26, baseType: !29)
!303 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !290, line: 198, baseType: !304, size: 192, offset: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !290, line: 198, size: 192, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !304, file: !290, line: 199, baseType: !104, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !304, file: !290, line: 200, baseType: !308, size: 192, align: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !309, line: 5, size: 192, align: 64, elements: !310)
!309 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!310 = !{!311, !312, !314}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !308, file: !309, line: 6, baseType: !46, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !308, file: !309, line: 7, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !308, file: !309, line: 8, baseType: !313, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !289, file: !290, line: 205, baseType: !316, size: 320, offset: 256)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !317, line: 48, size: 320, elements: !318)
!317 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!318 = !{!319, !320, !321, !326, !327}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !316, file: !317, line: 49, baseType: !211, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !316, file: !317, line: 55, baseType: !211, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !316, file: !317, line: 57, baseType: !322, size: 32, offset: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !323, line: 15, size: 32, elements: !324)
!323 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !322, file: !323, line: 20, baseType: !56, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !316, file: !317, line: 59, baseType: !237, size: 32, offset: 160)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !316, file: !317, line: 60, baseType: !104, size: 128, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !289, file: !290, line: 206, baseType: !329, size: 64, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !290, line: 206, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !289, file: !290, line: 207, baseType: !27, size: 64, offset: 640)
!332 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !290, line: 208, baseType: !333, size: 64, offset: 704)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !290, line: 208, size: 64, elements: !334)
!334 = !{!335, !338}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !333, file: !290, line: 209, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !337, line: 8, baseType: !218)
!337 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !333, file: !290, line: 210, baseType: !336, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !289, file: !290, line: 212, baseType: !336, size: 64, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !289, file: !290, line: 213, baseType: !255, size: 32, offset: 832)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !289, file: !290, line: 214, baseType: !263, size: 32, offset: 864)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !289, file: !290, line: 215, baseType: !343, size: 32, offset: 896)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !290, line: 31, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 110, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !91, line: 21, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !93, line: 27, baseType: !7)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !289, file: !290, line: 216, baseType: !33, size: 16, offset: 928)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !289, file: !290, line: 217, baseType: !33, size: 16, offset: 944)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !290, line: 221, baseType: !350, size: 16, offset: 960)
!350 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !290, line: 228, baseType: !46, size: 64, offset: 1024)
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !290, line: 245, baseType: !353, size: 320, offset: 1088)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !290, line: 245, size: 320, elements: !354)
!354 = !{!355, !392}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !353, file: !290, line: 246, baseType: !356, size: 320)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !290, line: 114, size: 320, elements: !357)
!357 = !{!358, !359, !371, !374, !391}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !356, file: !290, line: 116, baseType: !46, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !290, line: 117, baseType: !360, size: 64, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !290, line: 117, size: 64, elements: !361)
!361 = !{!362, !370}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !290, line: 118, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !290, line: 118, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !363, file: !290, line: 120, baseType: !100, size: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !363, file: !290, line: 121, baseType: !367, size: 48, offset: 16)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 48, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 6)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !360, file: !290, line: 127, baseType: !46, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !356, file: !290, line: 129, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !290, line: 102, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !356, file: !290, line: 130, baseType: !375, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !290, line: 108, size: 192, elements: !377)
!377 = !{!378, !387, !388}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !376, file: !290, line: 109, baseType: !379, size: 128, align: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !32, line: 232, size: 128, align: 64, elements: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !32, line: 233, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !379, file: !32, line: 234, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !382}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !376, file: !290, line: 110, baseType: !293, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !376, file: !290, line: 111, baseType: !389, size: 8, offset: 160)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !32, line: 35, baseType: !390)
!390 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !356, file: !290, line: 131, baseType: !23, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !290, line: 247, baseType: !393, size: 320)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !290, line: 247, size: 320, elements: !394)
!394 = !{!395, !396, !397, !398, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !393, file: !290, line: 248, baseType: !46, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !393, file: !290, line: 249, baseType: !46, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !393, file: !290, line: 250, baseType: !372, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !393, file: !290, line: 251, baseType: !375, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !393, file: !290, line: 252, baseType: !127, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !290, line: 260, baseType: !401, size: 256, offset: 1408)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !290, line: 260, size: 256, elements: !402)
!402 = !{!403, !411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !401, file: !290, line: 261, baseType: !404, size: 256)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !290, line: 134, size: 256, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !404, file: !290, line: 135, baseType: !27, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !404, file: !290, line: 136, baseType: !408, size: 256)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 4)
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !290, line: 262, baseType: !412, size: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !290, line: 262, size: 256, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !412, file: !290, line: 264, baseType: !104, size: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !412, file: !290, line: 265, baseType: !416, size: 128, offset: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !417, line: 22, size: 128, elements: !418)
!417 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!418 = !{!419, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !416, file: !417, line: 23, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !417, line: 23, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !416, file: !417, line: 24, baseType: !46, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !289, file: !290, line: 280, baseType: !424, size: 64, offset: 1664)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !290, line: 176, size: 192, elements: !426)
!426 = !{!427, !436, !437}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !425, file: !290, line: 177, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !290, line: 171, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!29, !288, !432, !434, !288}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !425, file: !290, line: 178, baseType: !288, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !425, file: !290, line: 179, baseType: !372, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !250, file: !251, line: 130, baseType: !288, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !250, file: !251, line: 131, baseType: !288, size: 64, offset: 896)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !250, file: !251, line: 132, baseType: !288, size: 64, offset: 960)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !250, file: !251, line: 135, baseType: !27, size: 64, offset: 1024)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !250, file: !251, line: 137, baseType: !443, size: 64, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !445, line: 14, size: 1088, elements: !446)
!445 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!446 = !{!447, !448, !457, !458, !459, !466, !467, !468}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !444, file: !445, line: 15, baseType: !293, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !444, file: !445, line: 17, baseType: !449, size: 320, offset: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !450, line: 22, size: 320, elements: !451)
!450 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!451 = !{!452, !453, !454, !455}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !449, file: !450, line: 23, baseType: !237, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !449, file: !450, line: 24, baseType: !217, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !449, file: !450, line: 26, baseType: !104, size: 128, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !449, file: !450, line: 28, baseType: !456, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !444, file: !445, line: 19, baseType: !46, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !444, file: !445, line: 20, baseType: !211, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !444, file: !445, line: 23, baseType: !460, size: 128, offset: 512)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !32, line: 198, size: 128, elements: !461)
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !32, line: 199, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !460, file: !32, line: 199, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !444, file: !445, line: 24, baseType: !255, size: 32, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !444, file: !445, line: 29, baseType: !211, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !444, file: !445, line: 36, baseType: !469, size: 320, offset: 768)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !470, line: 15, size: 320, elements: !471)
!470 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !470, line: 16, baseType: !237, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !469, file: !470, line: 18, baseType: !29, size: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !469, file: !470, line: 19, baseType: !29, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !469, file: !470, line: 20, baseType: !29, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !469, file: !470, line: 21, baseType: !29, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !469, file: !470, line: 22, baseType: !46, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !470, line: 23, baseType: !46, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !250, file: !251, line: 138, baseType: !480, size: 64, offset: 1152)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !482, line: 68, size: 4800, elements: !483)
!482 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!483 = !{!484, !506, !507, !508, !509, !510, !511, !512, !523, !524, !525, !526, !527, !528, !529, !594, !595, !607, !610}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !481, file: !482, line: 69, baseType: !485, size: 576)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !482, line: 23, size: 576, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !485, file: !482, line: 24, baseType: !345, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !482, line: 25, baseType: !489, size: 512, offset: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !482, line: 25, size: 512, elements: !490)
!490 = !{!491, !500}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !489, file: !482, line: 26, baseType: !492, size: 480)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 480, elements: !498)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !482, line: 17, size: 96, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !493, file: !482, line: 18, baseType: !345, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !493, file: !482, line: 19, baseType: !345, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !493, file: !482, line: 20, baseType: !345, size: 32, offset: 64)
!498 = !{!499}
!499 = !DISubrange(count: 5)
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !482, line: 27, baseType: !501, size: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !482, line: 27, size: 128, elements: !502)
!502 = !{!503, !505}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !501, file: !482, line: 28, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !501, file: !482, line: 29, baseType: !504, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !481, file: !482, line: 70, baseType: !485, size: 576, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !481, file: !482, line: 71, baseType: !485, size: 576, offset: 1152)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !481, file: !482, line: 72, baseType: !480, size: 64, offset: 1728)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !481, file: !482, line: 73, baseType: !29, size: 32, offset: 1792)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !481, file: !482, line: 74, baseType: !255, size: 32, offset: 1824)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !481, file: !482, line: 75, baseType: !263, size: 32, offset: 1856)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !481, file: !482, line: 76, baseType: !513, size: 192, offset: 1920)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !514, line: 9, size: 192, elements: !515)
!514 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!515 = !{!516, !517, !521, !522}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !513, file: !514, line: 10, baseType: !211, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !513, file: !514, line: 11, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !514, line: 7, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !513, file: !514, line: 12, baseType: !7, size: 32, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !513, file: !514, line: 13, baseType: !293, size: 32, offset: 160)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !482, line: 77, baseType: !46, size: 64, offset: 2112)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !481, file: !482, line: 80, baseType: !389, size: 8, offset: 2176)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !481, file: !482, line: 88, baseType: !104, size: 128, offset: 2240)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !481, file: !482, line: 89, baseType: !288, size: 64, offset: 2368)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !481, file: !482, line: 90, baseType: !316, size: 320, offset: 2432)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !481, file: !482, line: 97, baseType: !207, size: 256, offset: 2752)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !481, file: !482, line: 99, baseType: !530, size: 768, offset: 3008)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !19, line: 199, size: 768, elements: !531)
!531 = !{!532, !537}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !530, file: !19, line: 200, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!29, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !530, file: !19, line: 201, baseType: !538, size: 704, offset: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !19, line: 193, size: 704, elements: !539)
!539 = !{!540, !590}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !538, file: !19, line: 195, baseType: !541, size: 640)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !19, line: 173, size: 640, elements: !542)
!542 = !{!543, !555, !556, !557, !577, !578, !580, !586}
!543 = !DIDerivedType(tag: DW_TAG_member, scope: !541, file: !19, line: 174, baseType: !544, size: 192)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !541, file: !19, line: 174, size: 192, elements: !545)
!545 = !{!546, !554}
!546 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !19, line: 175, baseType: !547, size: 192)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !544, file: !19, line: 175, size: 192, elements: !548)
!548 = !{!549, !550, !551, !552, !553}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !547, file: !19, line: 176, baseType: !40, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !547, file: !19, line: 177, baseType: !29, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !547, file: !19, line: 178, baseType: !29, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !19, line: 179, baseType: !29, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !547, file: !19, line: 180, baseType: !29, size: 32, offset: 160)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !544, file: !19, line: 182, baseType: !379, size: 128, align: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !541, file: !19, line: 184, baseType: !227, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !541, file: !19, line: 185, baseType: !40, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !541, file: !19, line: 186, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !19, line: 204, size: 960, elements: !560)
!560 = !{!561, !562, !566, !573}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !559, file: !19, line: 205, baseType: !530, size: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !559, file: !19, line: 206, baseType: !563, size: 64, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!536, !558}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !559, file: !19, line: 207, baseType: !567, size: 64, offset: 832)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !559, file: !19, line: 209, baseType: !574, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!29, !570, !40}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !541, file: !19, line: 187, baseType: !536, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !541, file: !19, line: 188, baseType: !579, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !541, file: !19, line: 189, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !19, line: 157, size: 256, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !582, file: !19, line: 158, baseType: !308, size: 192, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !582, file: !19, line: 159, baseType: !570, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !541, file: !19, line: 190, baseType: !587, size: 64, offset: 576)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !32, line: 194, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !587, file: !32, line: 195, baseType: !463, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !538, file: !19, line: 196, baseType: !591, size: 64, offset: 640)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !309, line: 12, size: 64, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !591, file: !309, line: 13, baseType: !313, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !481, file: !482, line: 100, baseType: !570, size: 64, offset: 3776)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !481, file: !482, line: 102, baseType: !596, size: 64, offset: 3840)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !482, line: 107, size: 1152, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !605}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !597, file: !482, line: 108, baseType: !460, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !597, file: !482, line: 109, baseType: !480, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !597, file: !482, line: 110, baseType: !255, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !597, file: !482, line: 111, baseType: !56, size: 32, offset: 224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !597, file: !482, line: 112, baseType: !604, size: 640, offset: 256)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 640, elements: !182)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !597, file: !482, line: 113, baseType: !606, size: 256, offset: 896)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !409)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !481, file: !482, line: 103, baseType: !608, size: 640, offset: 3904)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 640, elements: !182)
!609 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !481, file: !482, line: 104, baseType: !611, size: 256, offset: 4544)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 256, elements: !409)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !250, file: !251, line: 139, baseType: !596, size: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !250, file: !251, line: 140, baseType: !614, size: 64, offset: 1280)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !251, line: 25, size: 64, elements: !616)
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !615, file: !251, line: 26, baseType: !56, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !615, file: !251, line: 27, baseType: !29, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !615, file: !251, line: 28, baseType: !620, offset: 64)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: -1)
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !251, line: 142, baseType: !624, size: 128, offset: 1344)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !251, line: 142, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !624, file: !251, line: 143, baseType: !29, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !624, file: !251, line: 144, baseType: !379, size: 128, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !203, file: !204, line: 29, baseType: !629, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !202}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !204, line: 30, baseType: !27, size: 64, offset: 704)
!633 = !DILocalVariable(name: "error", scope: !196, file: !3, line: 91, type: !29)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !172)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !637, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 488, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 61)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !140, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 40, elements: !498)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !135, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 3)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !654, isLocal: true, isDefinition: true)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 16, elements: !172)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !654, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !659, isLocal: true, isDefinition: true)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 336, elements: !660)
!660 = !{!661}
!661 = !DISubrange(count: 42)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !664, isLocal: true, isDefinition: true)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 104, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 13)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !3, line: 126, type: !367, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !671, isLocal: true, isDefinition: true)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 272, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 34)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !191, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !678, isLocal: true, isDefinition: true)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 184, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 23)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !367, isLocal: true, isDefinition: true)
!683 = !{i32 7, !"Dwarf Version", i32 5}
!684 = !{i32 2, !"Debug Info Version", i32 3}
!685 = !{i32 1, !"wchar_size", i32 2}
!686 = !{i32 8, !"cf-protection-branch", i32 1}
!687 = !{i32 4, !"function_return_thunk_extern", i32 1}
!688 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!689 = !{i32 1, !"Code Model", i32 2}
!690 = !{i32 1, !"override-stack-alignment", i32 8}
!691 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!692 = distinct !DISubprogram(name: "__initstub__kmod_mounts__362_40_kernel_do_mounts_initrd_sysctls_init7", scope: !3, file: !3, line: 40, type: !693, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!693 = !DISubroutineType(types: !694)
!694 = !{!29}
!695 = !DILocation(line: 40, column: 1, scope: !692)
!696 = distinct !DISubprogram(name: "kernel_do_mounts_initrd_sysctls_init", scope: !3, file: !3, line: 35, type: !693, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!697 = !DILocation(line: 37, column: 2, scope: !696)
!698 = !DILocation(line: 38, column: 2, scope: !696)
!699 = distinct !DISubprogram(name: "no_initrd", scope: !3, file: !3, line: 43, type: !125, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!700 = !{!701}
!701 = !DILocalVariable(name: "str", arg: 1, scope: !699, file: !3, line: 43, type: !127)
!702 = !DILocation(line: 43, column: 35, scope: !699)
!703 = !DILocation(line: 45, column: 15, scope: !699)
!704 = !DILocation(line: 46, column: 2, scope: !699)
!705 = distinct !DISubprogram(name: "early_initrdmem", scope: !3, file: !3, line: 51, type: !125, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!706 = !{!707, !708, !709, !710}
!707 = !DILocalVariable(name: "p", arg: 1, scope: !705, file: !3, line: 51, type: !127)
!708 = !DILocalVariable(name: "start", scope: !705, file: !3, line: 53, type: !151)
!709 = !DILocalVariable(name: "size", scope: !705, file: !3, line: 54, type: !46)
!710 = !DILocalVariable(name: "endp", scope: !705, file: !3, line: 55, type: !127)
!711 = !DILocation(line: 51, column: 41, scope: !705)
!712 = !DILocation(line: 53, column: 2, scope: !705)
!713 = !DILocation(line: 53, column: 14, scope: !705)
!714 = !DILocation(line: 54, column: 2, scope: !705)
!715 = !DILocation(line: 54, column: 16, scope: !705)
!716 = !DILocation(line: 55, column: 2, scope: !705)
!717 = !DILocation(line: 55, column: 8, scope: !705)
!718 = !DILocation(line: 57, column: 19, scope: !705)
!719 = !DILocation(line: 57, column: 10, scope: !705)
!720 = !DILocation(line: 57, column: 8, scope: !705)
!721 = !DILocation(line: 58, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !705, file: !3, line: 58, column: 6)
!723 = !DILocation(line: 58, column: 6, scope: !722)
!724 = !DILocation(line: 58, column: 12, scope: !722)
!725 = !DILocation(line: 58, column: 6, scope: !705)
!726 = !DILocation(line: 59, column: 19, scope: !727)
!727 = distinct !DILexicalBlock(scope: !722, file: !3, line: 58, column: 20)
!728 = !DILocation(line: 59, column: 24, scope: !727)
!729 = !DILocation(line: 59, column: 10, scope: !727)
!730 = !DILocation(line: 59, column: 8, scope: !727)
!731 = !DILocation(line: 61, column: 23, scope: !727)
!732 = !DILocation(line: 61, column: 21, scope: !727)
!733 = !DILocation(line: 62, column: 22, scope: !727)
!734 = !DILocation(line: 62, column: 20, scope: !727)
!735 = !DILocation(line: 63, column: 2, scope: !727)
!736 = !DILocation(line: 65, column: 1, scope: !705)
!737 = !DILocation(line: 64, column: 2, scope: !705)
!738 = distinct !DISubprogram(name: "early_initrd", scope: !3, file: !3, line: 68, type: !125, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !739)
!739 = !{!740}
!740 = !DILocalVariable(name: "p", arg: 1, scope: !738, file: !3, line: 68, type: !127)
!741 = !DILocation(line: 68, column: 38, scope: !738)
!742 = !DILocation(line: 70, column: 25, scope: !738)
!743 = !DILocation(line: 70, column: 9, scope: !738)
!744 = !DILocation(line: 70, column: 2, scope: !738)
!745 = distinct !DISubprogram(name: "initrd_load", scope: !3, file: !3, line: 137, type: !746, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!389, !127}
!748 = !{!749}
!749 = !DILocalVariable(name: "root_device_name", arg: 1, scope: !745, file: !3, line: 137, type: !127)
!750 = !DILocation(line: 137, column: 31, scope: !745)
!751 = !DILocation(line: 139, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !3, line: 139, column: 6)
!753 = !DILocation(line: 139, column: 6, scope: !745)
!754 = !DILocation(line: 140, column: 3, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !3, line: 139, column: 20)
!756 = !DILocation(line: 147, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !755, file: !3, line: 147, column: 7)
!758 = !DILocation(line: 147, column: 38, scope: !757)
!759 = !DILocation(line: 147, column: 41, scope: !757)
!760 = !DILocation(line: 147, column: 50, scope: !757)
!761 = !DILocation(line: 147, column: 7, scope: !755)
!762 = !DILocation(line: 148, column: 4, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !3, line: 147, column: 64)
!764 = !DILocation(line: 149, column: 18, scope: !763)
!765 = !DILocation(line: 149, column: 4, scope: !763)
!766 = !DILocation(line: 150, column: 4, scope: !763)
!767 = !DILocation(line: 152, column: 2, scope: !755)
!768 = !DILocation(line: 153, column: 2, scope: !745)
!769 = !DILocation(line: 154, column: 2, scope: !745)
!770 = !DILocation(line: 155, column: 1, scope: !745)
!771 = distinct !DISubprogram(name: "create_dev", scope: !772, file: !772, line: 17, type: !773, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!772 = !DIFile(filename: "init/do_mounts.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a24e58d65308211c4b9503714c2240ec")
!773 = !DISubroutineType(types: !774)
!774 = !{!29, !127, !775}
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !32, line: 21, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !32, line: 18, baseType: !345)
!777 = !{!778, !779}
!778 = !DILocalVariable(name: "name", arg: 1, scope: !771, file: !772, line: 17, type: !127)
!779 = !DILocalVariable(name: "dev", arg: 2, scope: !771, file: !772, line: 17, type: !775)
!780 = !DILocation(line: 17, column: 43, scope: !771)
!781 = !DILocation(line: 17, column: 55, scope: !771)
!782 = !DILocation(line: 19, column: 14, scope: !771)
!783 = !DILocation(line: 19, column: 2, scope: !771)
!784 = !DILocation(line: 20, column: 20, scope: !771)
!785 = !DILocation(line: 20, column: 57, scope: !771)
!786 = !DILocation(line: 20, column: 42, scope: !771)
!787 = !DILocation(line: 20, column: 9, scope: !771)
!788 = !DILocation(line: 20, column: 2, scope: !771)
!789 = distinct !DISubprogram(name: "rd_load_image", scope: !772, file: !772, line: 31, type: !125, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!790 = !{!791}
!791 = !DILocalVariable(name: "from", arg: 1, scope: !789, file: !772, line: 31, type: !127)
!792 = !DILocation(line: 31, column: 39, scope: !789)
!793 = !DILocation(line: 31, column: 47, scope: !789)
!794 = !DISubprogram(name: "init_unlink", scope: !795, file: !795, line: 15, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DIFile(filename: "./include/linux/init_syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c2ea3f10dbae0e95b95de60e2f54921")
!796 = !DISubroutineType(types: !797)
!797 = !{!29, !23}
!798 = !DILocation(line: 86, column: 40, scope: !196)
!799 = !DILocation(line: 88, column: 2, scope: !196)
!800 = !DILocation(line: 88, column: 26, scope: !196)
!801 = !DILocation(line: 91, column: 2, scope: !196)
!802 = !DILocation(line: 91, column: 6, scope: !196)
!803 = !DILocation(line: 93, column: 2, scope: !804)
!804 = distinct !DILexicalBlock(scope: !196, file: !3, line: 93, column: 2)
!805 = !DILocation(line: 93, column: 2, scope: !806)
!806 = distinct !DILexicalBlock(scope: !804, file: !3, line: 93, column: 2)
!807 = !DILocation(line: 95, column: 33, scope: !196)
!808 = !DILocation(line: 95, column: 18, scope: !196)
!809 = !DILocation(line: 95, column: 16, scope: !196)
!810 = !DILocation(line: 96, column: 2, scope: !196)
!811 = !DILocation(line: 98, column: 38, scope: !196)
!812 = !DILocation(line: 99, column: 7, scope: !196)
!813 = !DILocation(line: 99, column: 23, scope: !196)
!814 = !DILocation(line: 98, column: 2, scope: !196)
!815 = !DILocation(line: 100, column: 2, scope: !196)
!816 = !DILocation(line: 101, column: 2, scope: !196)
!817 = !DILocation(line: 103, column: 9, scope: !196)
!818 = !DILocation(line: 103, column: 7, scope: !196)
!819 = !DILocation(line: 105, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !196, file: !3, line: 105, column: 6)
!821 = !DILocation(line: 105, column: 6, scope: !196)
!822 = !DILocation(line: 106, column: 3, scope: !820)
!823 = !DILocation(line: 107, column: 27, scope: !196)
!824 = !DILocation(line: 107, column: 2, scope: !196)
!825 = !DILocation(line: 110, column: 2, scope: !196)
!826 = !DILocation(line: 112, column: 2, scope: !196)
!827 = !DILocation(line: 114, column: 21, scope: !828)
!828 = distinct !DILexicalBlock(scope: !196, file: !3, line: 114, column: 6)
!829 = !DILocation(line: 114, column: 6, scope: !828)
!830 = !DILocation(line: 114, column: 36, scope: !828)
!831 = !DILocation(line: 114, column: 6, scope: !196)
!832 = !DILocation(line: 115, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !828, file: !3, line: 114, column: 50)
!834 = !DILocation(line: 116, column: 3, scope: !833)
!835 = !DILocation(line: 119, column: 2, scope: !196)
!836 = !DILocation(line: 120, column: 28, scope: !196)
!837 = !DILocation(line: 120, column: 13, scope: !196)
!838 = !DILocation(line: 120, column: 11, scope: !196)
!839 = !DILocation(line: 121, column: 13, scope: !196)
!840 = !DILocation(line: 121, column: 2, scope: !196)
!841 = !DILocation(line: 123, column: 2, scope: !842)
!842 = distinct !DILexicalBlock(scope: !196, file: !3, line: 123, column: 2)
!843 = !DILocation(line: 123, column: 2, scope: !844)
!844 = distinct !DILexicalBlock(scope: !842, file: !3, line: 123, column: 2)
!845 = !DILocation(line: 124, column: 10, scope: !196)
!846 = !DILocation(line: 124, column: 8, scope: !196)
!847 = !DILocation(line: 125, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !196, file: !3, line: 125, column: 6)
!849 = !DILocation(line: 125, column: 6, scope: !196)
!850 = !DILocation(line: 126, column: 3, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 126, column: 3)
!852 = !DILocation(line: 126, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !851, file: !3, line: 126, column: 3)
!854 = !DILocation(line: 126, column: 3, scope: !848)
!855 = !DILocation(line: 128, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 128, column: 7)
!857 = distinct !DILexicalBlock(scope: !848, file: !3, line: 127, column: 7)
!858 = !DILocation(line: 128, column: 13, scope: !856)
!859 = !DILocation(line: 128, column: 7, scope: !857)
!860 = !DILocation(line: 129, column: 4, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 129, column: 4)
!862 = !DILocation(line: 129, column: 4, scope: !863)
!863 = distinct !DILexicalBlock(scope: !861, file: !3, line: 129, column: 4)
!864 = !DILocation(line: 129, column: 4, scope: !856)
!865 = !DILocation(line: 131, column: 4, scope: !866)
!866 = distinct !DILexicalBlock(scope: !856, file: !3, line: 131, column: 4)
!867 = !DILocation(line: 131, column: 4, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !3, line: 131, column: 4)
!869 = !DILocation(line: 132, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !857, file: !3, line: 132, column: 3)
!871 = !DILocation(line: 132, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !870, file: !3, line: 132, column: 3)
!873 = !DILocation(line: 133, column: 3, scope: !857)
!874 = !DILocation(line: 135, column: 1, scope: !196)
!875 = !DISubprogram(name: "__register_sysctl_init", scope: !19, file: !19, line: 237, type: !876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !23, !40, !23, !42}
!878 = !DISubprogram(name: "memparse", scope: !879, file: !879, line: 209, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!880 = !DISubroutineType(types: !881)
!881 = !{!154, !23, !241}
!882 = !DISubprogram(name: "init_mknod", scope: !795, file: !795, line: 12, type: !883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DISubroutineType(types: !884)
!884 = !{!29, !23, !31, !7}
!885 = distinct !DISubprogram(name: "new_encode_dev", scope: !886, file: !886, line: 39, type: !887, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!886 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!887 = !DISubroutineType(types: !888)
!888 = !{!345, !775}
!889 = !{!890, !891, !892}
!890 = !DILocalVariable(name: "dev", arg: 1, scope: !885, file: !886, line: 39, type: !775)
!891 = !DILocalVariable(name: "major", scope: !885, file: !886, line: 41, type: !7)
!892 = !DILocalVariable(name: "minor", scope: !885, file: !886, line: 42, type: !7)
!893 = !DILocation(line: 39, column: 49, scope: !885)
!894 = !DILocation(line: 41, column: 2, scope: !885)
!895 = !DILocation(line: 41, column: 11, scope: !885)
!896 = !DILocation(line: 41, column: 19, scope: !885)
!897 = !DILocation(line: 42, column: 2, scope: !885)
!898 = !DILocation(line: 42, column: 11, scope: !885)
!899 = !DILocation(line: 42, column: 19, scope: !885)
!900 = !DILocation(line: 43, column: 10, scope: !885)
!901 = !DILocation(line: 43, column: 16, scope: !885)
!902 = !DILocation(line: 43, column: 27, scope: !885)
!903 = !DILocation(line: 43, column: 33, scope: !885)
!904 = !DILocation(line: 43, column: 24, scope: !885)
!905 = !DILocation(line: 43, column: 43, scope: !885)
!906 = !DILocation(line: 43, column: 49, scope: !885)
!907 = !DILocation(line: 43, column: 58, scope: !885)
!908 = !DILocation(line: 43, column: 39, scope: !885)
!909 = !DILocation(line: 44, column: 1, scope: !885)
!910 = !DILocation(line: 43, column: 2, scope: !885)
!911 = !DISubprogram(name: "_printk", scope: !912, file: !912, line: 153, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!913 = !DISubroutineType(types: !914)
!914 = !{!29, !23, null}
!915 = !DISubprogram(name: "mount_root_generic", scope: !772, file: !772, line: 13, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !127, !127, !29}
!918 = !DISubprogram(name: "init_mkdir", scope: !795, file: !795, line: 16, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DISubroutineType(types: !920)
!920 = !{!29, !23, !31}
!921 = !DISubprogram(name: "init_chdir", scope: !795, file: !795, line: 6, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubprogram(name: "call_usermodehelper_setup", scope: !204, file: !204, line: 37, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubroutineType(types: !924)
!924 = !{!202, !23, !241, !241, !115, !246, !629, !27}
!925 = distinct !DISubprogram(name: "init_linuxrc", scope: !3, file: !3, line: 74, type: !247, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !926)
!926 = !{!927, !928}
!927 = !DILocalVariable(name: "info", arg: 1, scope: !925, file: !3, line: 74, type: !202)
!928 = !DILocalVariable(name: "new", arg: 2, scope: !925, file: !3, line: 74, type: !249)
!929 = !DILocation(line: 74, column: 56, scope: !925)
!930 = !DILocation(line: 74, column: 75, scope: !925)
!931 = !DILocation(line: 76, column: 2, scope: !925)
!932 = !DILocation(line: 77, column: 2, scope: !925)
!933 = !DILocation(line: 79, column: 2, scope: !925)
!934 = !DILocation(line: 80, column: 2, scope: !925)
!935 = !DILocation(line: 81, column: 2, scope: !925)
!936 = !DILocation(line: 82, column: 2, scope: !925)
!937 = !DILocation(line: 83, column: 2, scope: !925)
!938 = !DISubprogram(name: "call_usermodehelper_exec", scope: !204, file: !204, line: 43, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{!29, !202, !29}
!941 = !DISubprogram(name: "init_mount", scope: !795, file: !795, line: 3, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!29, !23, !23, !23, !46, !27}
!944 = !DISubprogram(name: "init_chroot", scope: !795, file: !795, line: 7, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = distinct !DISubprogram(name: "new_decode_dev", scope: !886, file: !886, line: 46, type: !946, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!775, !345}
!948 = !{!949, !950, !951}
!949 = !DILocalVariable(name: "dev", arg: 1, scope: !945, file: !886, line: 46, type: !345)
!950 = !DILocalVariable(name: "major", scope: !945, file: !886, line: 48, type: !7)
!951 = !DILocalVariable(name: "minor", scope: !945, file: !886, line: 49, type: !7)
!952 = !DILocation(line: 46, column: 49, scope: !945)
!953 = !DILocation(line: 48, column: 2, scope: !945)
!954 = !DILocation(line: 48, column: 11, scope: !945)
!955 = !DILocation(line: 48, column: 20, scope: !945)
!956 = !DILocation(line: 48, column: 24, scope: !945)
!957 = !DILocation(line: 48, column: 35, scope: !945)
!958 = !DILocation(line: 49, column: 2, scope: !945)
!959 = !DILocation(line: 49, column: 11, scope: !945)
!960 = !DILocation(line: 49, column: 20, scope: !945)
!961 = !DILocation(line: 49, column: 24, scope: !945)
!962 = !DILocation(line: 49, column: 36, scope: !945)
!963 = !DILocation(line: 49, column: 40, scope: !945)
!964 = !DILocation(line: 49, column: 47, scope: !945)
!965 = !DILocation(line: 49, column: 32, scope: !945)
!966 = !DILocation(line: 50, column: 9, scope: !945)
!967 = !DILocation(line: 51, column: 1, scope: !945)
!968 = !DILocation(line: 50, column: 2, scope: !945)
!969 = !DISubprogram(name: "mount_root", scope: !772, file: !772, line: 14, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubprogram(name: "init_umount", scope: !795, file: !795, line: 5, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{!29, !23, !29}
!973 = !DISubprogram(name: "ksys_unshare", scope: !974, file: !974, line: 1183, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DIFile(filename: "./include/linux/syscalls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dab99c2b3f99363182fad69da25bf5f3")
!975 = !DISubroutineType(types: !976)
!976 = !{!29, !46}
!977 = !DISubprogram(name: "console_on_rootfs", scope: !978, file: !978, line: 35, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DIFile(filename: "./include/linux/initrd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "445f4457d3f494083de3e7e5b8cf8893")
!979 = !DISubroutineType(types: !980)
!980 = !{null}
!981 = !DISubprogram(name: "ksys_setsid", scope: !974, file: !974, line: 1184, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
