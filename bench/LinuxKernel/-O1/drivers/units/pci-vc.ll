; ModuleID = 'drivers/pci/vc.c'
source_filename = "drivers/pci/vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.14 = type { i16, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@vc_caps = internal global [3 x %struct.anon.14] [%struct.anon.14 { i16 8, ptr @.str.3 }, %struct.anon.14 { i16 2, ptr @.str.4 }, %struct.anon.14 { i16 9, ptr @.str.5 }], align 16, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"%s buffer not found in %s\0A\00", align 1, !dbg !161
@__func__.pci_save_vc_state = private unnamed_addr constant [18 x i8] c"pci_save_vc_state\00", align 1, !dbg !167
@.str.1 = private unnamed_addr constant [25 x i8] c"%s save unsuccessful %s\0A\00", align 1, !dbg !173
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to preallocate %s save buffer\0A\00", align 1, !dbg !178
@.str.3 = private unnamed_addr constant [5 x i8] c"MFVC\00", align 1, !dbg !183
@.str.4 = private unnamed_addr constant [3 x i8] c"VC\00", align 1, !dbg !188
@.str.5 = private unnamed_addr constant [4 x i8] c"VC9\00", align 1, !dbg !193
@.str.6 = private unnamed_addr constant [42 x i8] c"VC save buffer size does not match @0x%x\0A\00", align 1, !dbg !198
@.str.7 = private unnamed_addr constant [37 x i8] c"VC arbitration table failed to load\0A\00", align 1, !dbg !203
@.str.8 = private unnamed_addr constant [44 x i8] c"VC%d port arbitration table failed to load\0A\00", align 1, !dbg !208
@.str.9 = private unnamed_addr constant [32 x i8] c"VC%d negotiation stuck pending\0A\00", align 1, !dbg !213

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_save_vc_state(ptr noundef %dev) #0 align 16 !dbg !233 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %ret = alloca i32, align 4
  %save_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4957, metadata !DIExpression()), !dbg !4977
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4958, metadata !DIExpression()), !dbg !4979
  store i32 0, ptr %i, align 4, !dbg !4980
  br label %for.cond, !dbg !4981

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4982
  %conv = sext i32 %0 to i64, !dbg !4982
  %cmp = icmp ult i64 %conv, 3, !dbg !4983
  br i1 %cmp, label %for.body, label %for.end, !dbg !4984

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6, !dbg !4985
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4959, metadata !DIExpression()), !dbg !4986
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !4985
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4963, metadata !DIExpression()), !dbg !4987
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_state) #6, !dbg !4988
  call void @llvm.dbg.declare(metadata ptr %save_state, metadata !4964, metadata !DIExpression()), !dbg !4989
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4990
  %2 = load i32, ptr %i, align 4, !dbg !4991
  %idxprom = sext i32 %2 to i64, !dbg !4992
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom, !dbg !4992
  %id = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !4993
  %3 = load i16, ptr %id, align 16, !dbg !4993
  %conv2 = zext i16 %3 to i32, !dbg !4992
  %call = call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef %conv2) #7, !dbg !4994
  %conv3 = zext i16 %call to i32, !dbg !4994
  store i32 %conv3, ptr %pos, align 4, !dbg !4995
  %4 = load i32, ptr %pos, align 4, !dbg !4996
  %tobool = icmp ne i32 %4, 0, !dbg !4996
  br i1 %tobool, label %if.end, label %if.then, !dbg !4998

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4999

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %6 = load i32, ptr %i, align 4, !dbg !5001
  %idxprom4 = sext i32 %6 to i64, !dbg !5002
  %arrayidx5 = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom4, !dbg !5002
  %id6 = getelementptr inbounds %struct.anon.14, ptr %arrayidx5, i32 0, i32 0, !dbg !5003
  %7 = load i16, ptr %id6, align 16, !dbg !5003
  %call7 = call ptr @pci_find_saved_ext_cap(ptr noundef %5, i16 noundef zeroext %7) #7, !dbg !5004
  store ptr %call7, ptr %save_state, align 8, !dbg !5005
  %8 = load ptr, ptr %save_state, align 8, !dbg !5006
  %tobool8 = icmp ne ptr %8, null, !dbg !5006
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !5008

if.then9:                                         ; preds = %if.end
  br label %do.body, !dbg !5009

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !5012

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5012

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5009
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 37, !dbg !5009
  %10 = load i32, ptr %i, align 4, !dbg !5009
  %idxprom11 = sext i32 %10 to i64, !dbg !5009
  %arrayidx12 = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom11, !dbg !5009
  %name = getelementptr inbounds %struct.anon.14, ptr %arrayidx12, i32 0, i32 1, !dbg !5009
  %11 = load ptr, ptr %name, align 8, !dbg !5009
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef @.str, ptr noundef %11, ptr noundef @__func__.pci_save_vc_state) #8, !dbg !5009
  store i32 -12, ptr %retval, align 4, !dbg !5014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5014

if.end13:                                         ; preds = %if.end
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5015
  %13 = load i32, ptr %pos, align 4, !dbg !5016
  %14 = load ptr, ptr %save_state, align 8, !dbg !5017
  %call14 = call i32 @pci_vc_do_save_buffer(ptr noundef %12, i32 noundef %13, ptr noundef %14, i1 noundef zeroext true) #7, !dbg !5018
  store i32 %call14, ptr %ret, align 4, !dbg !5019
  %15 = load i32, ptr %ret, align 4, !dbg !5020
  %tobool15 = icmp ne i32 %15, 0, !dbg !5020
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !5022

if.then16:                                        ; preds = %if.end13
  br label %do.body17, !dbg !5023

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !5026

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5026

do.end19:                                         ; preds = %do.cond18
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5023
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 37, !dbg !5023
  %17 = load i32, ptr %i, align 4, !dbg !5023
  %idxprom21 = sext i32 %17 to i64, !dbg !5023
  %arrayidx22 = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom21, !dbg !5023
  %name23 = getelementptr inbounds %struct.anon.14, ptr %arrayidx22, i32 0, i32 1, !dbg !5023
  %18 = load ptr, ptr %name23, align 8, !dbg !5023
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef @.str.1, ptr noundef %18, ptr noundef @__func__.pci_save_vc_state) #8, !dbg !5023
  %19 = load i32, ptr %ret, align 4, !dbg !5028
  store i32 %19, ptr %retval, align 4, !dbg !5029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5029

if.end24:                                         ; preds = %if.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5030
  br label %cleanup, !dbg !5030

cleanup:                                          ; preds = %if.end24, %do.end19, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_state) #6, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !5030
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6, !dbg !5030
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5031

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, ptr %i, align 4, !dbg !5032
  %inc = add i32 %20, 1, !dbg !5032
  store i32 %inc, ptr %i, align 4, !dbg !5032
  br label %for.cond, !dbg !5033, !llvm.loop !5034

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !5038

cleanup27:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5039
  %21 = load i32, ptr %retval, align 4, !dbg !5039
  ret i32 %21, !dbg !5039
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5040 dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5043 dso_local ptr @pci_find_saved_ext_cap(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5046 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_vc_do_save_buffer(ptr noundef %dev, i32 noundef %pos, ptr noundef %save_state, i1 noundef zeroext %save) #0 align 16 !dbg !5050 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %save_state.addr = alloca ptr, align 8
  %save.addr = alloca i8, align 1
  %cap1 = alloca i32, align 4
  %evcc = alloca i8, align 1
  %lpevcc = alloca i8, align 1
  %parb_size = alloca i8, align 1
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cap224 = alloca i32, align 4
  %vcarb_offset = alloca i32, align 4
  %size31 = alloca i32, align 4
  %vcarb_phases = alloca i32, align 4
  %cap69 = alloca i32, align 4
  %parb_offset = alloca i32, align 4
  %size79 = alloca i32, align 4
  %parb_phases = alloca i32, align 4
  %ctrl_pos = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ctrl = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5054, metadata !DIExpression()), !dbg !5089
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5055, metadata !DIExpression()), !dbg !5090
  store ptr %save_state, ptr %save_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %save_state.addr, metadata !5056, metadata !DIExpression()), !dbg !5091
  %frombool = zext i1 %save to i8
  store i8 %frombool, ptr %save.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %save.addr, metadata !5057, metadata !DIExpression()), !dbg !5092
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap1) #6, !dbg !5093
  call void @llvm.dbg.declare(metadata ptr %cap1, metadata !5058, metadata !DIExpression()), !dbg !5094
  call void @llvm.lifetime.start.p0(i64 1, ptr %evcc) #6, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %evcc, metadata !5059, metadata !DIExpression()), !dbg !5096
  call void @llvm.lifetime.start.p0(i64 1, ptr %lpevcc) #6, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %lpevcc, metadata !5060, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 1, ptr %parb_size) #6, !dbg !5095
  call void @llvm.dbg.declare(metadata ptr %parb_size, metadata !5061, metadata !DIExpression()), !dbg !5098
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5062, metadata !DIExpression()), !dbg !5100
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5063, metadata !DIExpression()), !dbg !5101
  store i32 0, ptr %len, align 4, !dbg !5101
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5064, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %save_state.addr, align 8, !dbg !5104
  %tobool = icmp ne ptr %0, null, !dbg !5104
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5104

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %save_state.addr, align 8, !dbg !5105
  %cap = getelementptr inbounds %struct.pci_cap_saved_state, ptr %1, i32 0, i32 1, !dbg !5106
  %data = getelementptr inbounds %struct.pci_cap_saved_data, ptr %cap, i32 0, i32 3, !dbg !5107
  %arraydecay = getelementptr inbounds [0 x i32], ptr %data, i64 0, i64 0, !dbg !5105
  br label %cond.end, !dbg !5104

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay, %cond.true ], [ null, %cond.false ], !dbg !5104
  store ptr %cond, ptr %buf, align 8, !dbg !5103
  %2 = load ptr, ptr %buf, align 8, !dbg !5108
  %tobool1 = icmp ne ptr %2, null, !dbg !5108
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !5110

land.lhs.true:                                    ; preds = %cond.end
  %3 = load ptr, ptr %save_state.addr, align 8, !dbg !5111
  %cap2 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %3, i32 0, i32 1, !dbg !5112
  %size = getelementptr inbounds %struct.pci_cap_saved_data, ptr %cap2, i32 0, i32 2, !dbg !5113
  %4 = load i32, ptr %size, align 4, !dbg !5113
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5114
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5115
  %7 = load i8, ptr %save.addr, align 1, !dbg !5116, !range !5117, !noundef !1018
  %tobool3 = trunc i8 %7 to i1, !dbg !5116
  %call = call i32 @pci_vc_do_save_buffer(ptr noundef %5, i32 noundef %6, ptr noundef null, i1 noundef zeroext %tobool3) #7, !dbg !5118
  %cmp = icmp ne i32 %4, %call, !dbg !5119
  br i1 %cmp, label %if.then, label %if.end, !dbg !5120

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !5121

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5124

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5124

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5121
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 37, !dbg !5121
  %9 = load i32, ptr %pos.addr, align 4, !dbg !5121
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef @.str.6, i32 noundef %9) #8, !dbg !5121
  store i32 -12, ptr %retval, align 4, !dbg !5126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5126

if.end:                                           ; preds = %land.lhs.true, %cond.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5127
  %11 = load i32, ptr %pos.addr, align 4, !dbg !5128
  %add = add i32 %11, 4, !dbg !5129
  %call5 = call i32 @pci_read_config_dword(ptr noundef %10, i32 noundef %add, ptr noundef %cap1) #7, !dbg !5130
  %12 = load i32, ptr %cap1, align 4, !dbg !5131
  %and = and i32 %12, 7, !dbg !5132
  %conv = trunc i32 %and to i8, !dbg !5131
  store i8 %conv, ptr %evcc, align 1, !dbg !5133
  %13 = load i32, ptr %cap1, align 4, !dbg !5134
  %and6 = and i32 %13, 112, !dbg !5135
  %shr = lshr i32 %and6, 4, !dbg !5136
  %conv7 = trunc i32 %shr to i8, !dbg !5137
  store i8 %conv7, ptr %lpevcc, align 1, !dbg !5138
  %14 = load i32, ptr %cap1, align 4, !dbg !5139
  %and8 = and i32 %14, 3072, !dbg !5140
  %shr9 = lshr i32 %and8, 10, !dbg !5141
  %shl = shl i32 1, %shr9, !dbg !5142
  %conv10 = trunc i32 %shl to i8, !dbg !5143
  store i8 %conv10, ptr %parb_size, align 1, !dbg !5144
  %15 = load ptr, ptr %buf, align 8, !dbg !5145
  %tobool11 = icmp ne ptr %15, null, !dbg !5145
  br i1 %tobool11, label %if.then12, label %if.end20, !dbg !5147

if.then12:                                        ; preds = %if.end
  %16 = load i8, ptr %save.addr, align 1, !dbg !5148, !range !5117, !noundef !1018
  %tobool13 = trunc i8 %16 to i1, !dbg !5148
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !5151

if.then14:                                        ; preds = %if.then12
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5152
  %18 = load i32, ptr %pos.addr, align 4, !dbg !5153
  %add15 = add i32 %18, 12, !dbg !5154
  %19 = load ptr, ptr %buf, align 8, !dbg !5155
  %call16 = call i32 @pci_read_config_word(ptr noundef %17, i32 noundef %add15, ptr noundef %19) #7, !dbg !5156
  br label %if.end19, !dbg !5156

if.else:                                          ; preds = %if.then12
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5157
  %21 = load i32, ptr %pos.addr, align 4, !dbg !5158
  %add17 = add i32 %21, 12, !dbg !5159
  %22 = load ptr, ptr %buf, align 8, !dbg !5160
  %23 = load i16, ptr %22, align 2, !dbg !5161
  %call18 = call i32 @pci_write_config_word(ptr noundef %20, i32 noundef %add17, i16 noundef zeroext %23) #7, !dbg !5162
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %24 = load ptr, ptr %buf, align 8, !dbg !5163
  %add.ptr = getelementptr i8, ptr %24, i64 4, !dbg !5163
  store ptr %add.ptr, ptr %buf, align 8, !dbg !5163
  br label %if.end20, !dbg !5164

if.end20:                                         ; preds = %if.end19, %if.end
  %25 = load i32, ptr %len, align 4, !dbg !5165
  %add21 = add i32 %25, 4, !dbg !5165
  store i32 %add21, ptr %len, align 4, !dbg !5165
  %26 = load i8, ptr %lpevcc, align 1, !dbg !5166
  %tobool22 = icmp ne i8 %26, 0, !dbg !5166
  br i1 %tobool22, label %if.then23, label %if.end64, !dbg !5167

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap224) #6, !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %cap224, metadata !5065, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 4, ptr %vcarb_offset) #6, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %vcarb_offset, metadata !5068, metadata !DIExpression()), !dbg !5171
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5172
  %28 = load i32, ptr %pos.addr, align 4, !dbg !5173
  %add25 = add i32 %28, 8, !dbg !5174
  %call26 = call i32 @pci_read_config_dword(ptr noundef %27, i32 noundef %add25, ptr noundef %cap224) #7, !dbg !5175
  %29 = load i32, ptr %cap224, align 4, !dbg !5176
  %and27 = and i32 %29, -16777216, !dbg !5177
  %shr28 = lshr i32 %and27, 24, !dbg !5178
  %mul = mul i32 %shr28, 16, !dbg !5179
  store i32 %mul, ptr %vcarb_offset, align 4, !dbg !5180
  %30 = load i32, ptr %vcarb_offset, align 4, !dbg !5181
  %tobool29 = icmp ne i32 %30, 0, !dbg !5181
  br i1 %tobool29, label %if.then30, label %if.end63, !dbg !5182

if.then30:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 4, ptr %size31) #6, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %size31, metadata !5069, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 4, ptr %vcarb_phases) #6, !dbg !5183
  call void @llvm.dbg.declare(metadata ptr %vcarb_phases, metadata !5072, metadata !DIExpression()), !dbg !5185
  store i32 0, ptr %vcarb_phases, align 4, !dbg !5185
  %31 = load i32, ptr %cap224, align 4, !dbg !5186
  %and32 = and i32 %31, 8, !dbg !5188
  %tobool33 = icmp ne i32 %and32, 0, !dbg !5188
  br i1 %tobool33, label %if.then34, label %if.else35, !dbg !5189

if.then34:                                        ; preds = %if.then30
  store i32 128, ptr %vcarb_phases, align 4, !dbg !5190
  br label %if.end45, !dbg !5191

if.else35:                                        ; preds = %if.then30
  %32 = load i32, ptr %cap224, align 4, !dbg !5192
  %and36 = and i32 %32, 4, !dbg !5194
  %tobool37 = icmp ne i32 %and36, 0, !dbg !5194
  br i1 %tobool37, label %if.then38, label %if.else39, !dbg !5195

if.then38:                                        ; preds = %if.else35
  store i32 64, ptr %vcarb_phases, align 4, !dbg !5196
  br label %if.end44, !dbg !5197

if.else39:                                        ; preds = %if.else35
  %33 = load i32, ptr %cap224, align 4, !dbg !5198
  %and40 = and i32 %33, 2, !dbg !5200
  %tobool41 = icmp ne i32 %and40, 0, !dbg !5200
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !5201

if.then42:                                        ; preds = %if.else39
  store i32 32, ptr %vcarb_phases, align 4, !dbg !5202
  br label %if.end43, !dbg !5203

if.end43:                                         ; preds = %if.then42, %if.else39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then38
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then34
  %34 = load i8, ptr %lpevcc, align 1, !dbg !5204
  %conv46 = zext i8 %34 to i32, !dbg !5204
  %add47 = add i32 %conv46, 1, !dbg !5205
  %35 = load i32, ptr %vcarb_phases, align 4, !dbg !5206
  %mul48 = mul i32 %add47, %35, !dbg !5207
  %mul49 = mul i32 %mul48, 4, !dbg !5208
  %div = sdiv i32 %mul49, 8, !dbg !5209
  store i32 %div, ptr %size31, align 4, !dbg !5210
  %36 = load i32, ptr %size31, align 4, !dbg !5211
  %tobool50 = icmp ne i32 %36, 0, !dbg !5211
  br i1 %tobool50, label %land.lhs.true51, label %if.end61, !dbg !5213

land.lhs.true51:                                  ; preds = %if.end45
  %37 = load ptr, ptr %buf, align 8, !dbg !5214
  %tobool52 = icmp ne ptr %37, null, !dbg !5214
  br i1 %tobool52, label %if.then53, label %if.end61, !dbg !5215

if.then53:                                        ; preds = %land.lhs.true51
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !5216
  %39 = load i32, ptr %pos.addr, align 4, !dbg !5218
  %40 = load i32, ptr %vcarb_offset, align 4, !dbg !5219
  %add54 = add i32 %39, %40, !dbg !5220
  %41 = load ptr, ptr %buf, align 8, !dbg !5221
  %42 = load i32, ptr %size31, align 4, !dbg !5222
  %div55 = sdiv i32 %42, 4, !dbg !5223
  %43 = load i8, ptr %save.addr, align 1, !dbg !5224, !range !5117, !noundef !1018
  %tobool56 = trunc i8 %43 to i1, !dbg !5224
  call void @pci_vc_save_restore_dwords(ptr noundef %38, i32 noundef %add54, ptr noundef %41, i32 noundef %div55, i1 noundef zeroext %tobool56) #7, !dbg !5225
  %44 = load i8, ptr %save.addr, align 1, !dbg !5226, !range !5117, !noundef !1018
  %tobool57 = trunc i8 %44 to i1, !dbg !5226
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !5228

if.then58:                                        ; preds = %if.then53
  %45 = load ptr, ptr %dev.addr, align 8, !dbg !5229
  %46 = load i32, ptr %pos.addr, align 4, !dbg !5230
  call void @pci_vc_load_arb_table(ptr noundef %45, i32 noundef %46) #7, !dbg !5231
  br label %if.end59, !dbg !5231

if.end59:                                         ; preds = %if.then58, %if.then53
  %47 = load i32, ptr %size31, align 4, !dbg !5232
  %48 = load ptr, ptr %buf, align 8, !dbg !5233
  %idx.ext = sext i32 %47 to i64, !dbg !5233
  %add.ptr60 = getelementptr i8, ptr %48, i64 %idx.ext, !dbg !5233
  store ptr %add.ptr60, ptr %buf, align 8, !dbg !5233
  br label %if.end61, !dbg !5234

if.end61:                                         ; preds = %if.end59, %land.lhs.true51, %if.end45
  %49 = load i32, ptr %size31, align 4, !dbg !5235
  %50 = load i32, ptr %len, align 4, !dbg !5236
  %add62 = add i32 %50, %49, !dbg !5236
  store i32 %add62, ptr %len, align 4, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 4, ptr %vcarb_phases) #6, !dbg !5237
  call void @llvm.lifetime.end.p0(i64 4, ptr %size31) #6, !dbg !5237
  br label %if.end63, !dbg !5238

if.end63:                                         ; preds = %if.end61, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %vcarb_offset) #6, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap224) #6, !dbg !5239
  br label %if.end64, !dbg !5240

if.end64:                                         ; preds = %if.end63, %if.end20
  store i32 0, ptr %i, align 4, !dbg !5241
  br label %for.cond, !dbg !5242

for.cond:                                         ; preds = %for.inc, %if.end64
  %51 = load i32, ptr %i, align 4, !dbg !5243
  %52 = load i8, ptr %evcc, align 1, !dbg !5244
  %conv65 = zext i8 %52 to i32, !dbg !5244
  %add66 = add i32 %conv65, 1, !dbg !5245
  %cmp67 = icmp slt i32 %51, %add66, !dbg !5246
  br i1 %cmp67, label %for.body, label %for.end, !dbg !5247

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap69) #6, !dbg !5248
  call void @llvm.dbg.declare(metadata ptr %cap69, metadata !5073, metadata !DIExpression()), !dbg !5249
  call void @llvm.lifetime.start.p0(i64 4, ptr %parb_offset) #6, !dbg !5250
  call void @llvm.dbg.declare(metadata ptr %parb_offset, metadata !5077, metadata !DIExpression()), !dbg !5251
  %53 = load ptr, ptr %dev.addr, align 8, !dbg !5252
  %54 = load i32, ptr %pos.addr, align 4, !dbg !5253
  %add70 = add i32 %54, 16, !dbg !5254
  %55 = load i32, ptr %i, align 4, !dbg !5255
  %mul71 = mul i32 %55, 12, !dbg !5256
  %add72 = add i32 %add70, %mul71, !dbg !5257
  %call73 = call i32 @pci_read_config_dword(ptr noundef %53, i32 noundef %add72, ptr noundef %cap69) #7, !dbg !5258
  %56 = load i32, ptr %cap69, align 4, !dbg !5259
  %and74 = and i32 %56, -16777216, !dbg !5260
  %shr75 = lshr i32 %and74, 24, !dbg !5261
  %mul76 = mul i32 %shr75, 16, !dbg !5262
  store i32 %mul76, ptr %parb_offset, align 4, !dbg !5263
  %57 = load i32, ptr %parb_offset, align 4, !dbg !5264
  %tobool77 = icmp ne i32 %57, 0, !dbg !5264
  br i1 %tobool77, label %if.then78, label %if.end113, !dbg !5265

if.then78:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %size79) #6, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %size79, metadata !5078, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 4, ptr %parb_phases) #6, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %parb_phases, metadata !5081, metadata !DIExpression()), !dbg !5268
  store i32 0, ptr %parb_phases, align 4, !dbg !5268
  %58 = load i32, ptr %cap69, align 4, !dbg !5269
  %and80 = and i32 %58, 32, !dbg !5271
  %tobool81 = icmp ne i32 %and80, 0, !dbg !5271
  br i1 %tobool81, label %if.then82, label %if.else83, !dbg !5272

if.then82:                                        ; preds = %if.then78
  store i32 256, ptr %parb_phases, align 4, !dbg !5273
  br label %if.end98, !dbg !5274

if.else83:                                        ; preds = %if.then78
  %59 = load i32, ptr %cap69, align 4, !dbg !5275
  %and84 = and i32 %59, 24, !dbg !5277
  %tobool85 = icmp ne i32 %and84, 0, !dbg !5277
  br i1 %tobool85, label %if.then86, label %if.else87, !dbg !5278

if.then86:                                        ; preds = %if.else83
  store i32 128, ptr %parb_phases, align 4, !dbg !5279
  br label %if.end97, !dbg !5280

if.else87:                                        ; preds = %if.else83
  %60 = load i32, ptr %cap69, align 4, !dbg !5281
  %and88 = and i32 %60, 4, !dbg !5283
  %tobool89 = icmp ne i32 %and88, 0, !dbg !5283
  br i1 %tobool89, label %if.then90, label %if.else91, !dbg !5284

if.then90:                                        ; preds = %if.else87
  store i32 64, ptr %parb_phases, align 4, !dbg !5285
  br label %if.end96, !dbg !5286

if.else91:                                        ; preds = %if.else87
  %61 = load i32, ptr %cap69, align 4, !dbg !5287
  %and92 = and i32 %61, 2, !dbg !5289
  %tobool93 = icmp ne i32 %and92, 0, !dbg !5289
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !5290

if.then94:                                        ; preds = %if.else91
  store i32 32, ptr %parb_phases, align 4, !dbg !5291
  br label %if.end95, !dbg !5292

if.end95:                                         ; preds = %if.then94, %if.else91
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then90
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then86
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then82
  %62 = load i8, ptr %parb_size, align 1, !dbg !5293
  %conv99 = zext i8 %62 to i32, !dbg !5293
  %63 = load i32, ptr %parb_phases, align 4, !dbg !5294
  %mul100 = mul i32 %conv99, %63, !dbg !5295
  %div101 = sdiv i32 %mul100, 8, !dbg !5296
  store i32 %div101, ptr %size79, align 4, !dbg !5297
  %64 = load i32, ptr %size79, align 4, !dbg !5298
  %tobool102 = icmp ne i32 %64, 0, !dbg !5298
  br i1 %tobool102, label %land.lhs.true103, label %if.end111, !dbg !5300

land.lhs.true103:                                 ; preds = %if.end98
  %65 = load ptr, ptr %buf, align 8, !dbg !5301
  %tobool104 = icmp ne ptr %65, null, !dbg !5301
  br i1 %tobool104, label %if.then105, label %if.end111, !dbg !5302

if.then105:                                       ; preds = %land.lhs.true103
  %66 = load ptr, ptr %dev.addr, align 8, !dbg !5303
  %67 = load i32, ptr %pos.addr, align 4, !dbg !5305
  %68 = load i32, ptr %parb_offset, align 4, !dbg !5306
  %add106 = add i32 %67, %68, !dbg !5307
  %69 = load ptr, ptr %buf, align 8, !dbg !5308
  %70 = load i32, ptr %size79, align 4, !dbg !5309
  %div107 = sdiv i32 %70, 4, !dbg !5310
  %71 = load i8, ptr %save.addr, align 1, !dbg !5311, !range !5117, !noundef !1018
  %tobool108 = trunc i8 %71 to i1, !dbg !5311
  call void @pci_vc_save_restore_dwords(ptr noundef %66, i32 noundef %add106, ptr noundef %69, i32 noundef %div107, i1 noundef zeroext %tobool108) #7, !dbg !5312
  %72 = load i32, ptr %size79, align 4, !dbg !5313
  %73 = load ptr, ptr %buf, align 8, !dbg !5314
  %idx.ext109 = sext i32 %72 to i64, !dbg !5314
  %add.ptr110 = getelementptr i8, ptr %73, i64 %idx.ext109, !dbg !5314
  store ptr %add.ptr110, ptr %buf, align 8, !dbg !5314
  br label %if.end111, !dbg !5315

if.end111:                                        ; preds = %if.then105, %land.lhs.true103, %if.end98
  %74 = load i32, ptr %size79, align 4, !dbg !5316
  %75 = load i32, ptr %len, align 4, !dbg !5317
  %add112 = add i32 %75, %74, !dbg !5317
  store i32 %add112, ptr %len, align 4, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 4, ptr %parb_phases) #6, !dbg !5318
  call void @llvm.lifetime.end.p0(i64 4, ptr %size79) #6, !dbg !5318
  br label %if.end113, !dbg !5319

if.end113:                                        ; preds = %if.end111, %for.body
  %76 = load ptr, ptr %buf, align 8, !dbg !5320
  %tobool114 = icmp ne ptr %76, null, !dbg !5320
  br i1 %tobool114, label %if.then115, label %if.end137, !dbg !5321

if.then115:                                       ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl_pos) #6, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %ctrl_pos, metadata !5082, metadata !DIExpression()), !dbg !5323
  %77 = load i32, ptr %pos.addr, align 4, !dbg !5324
  %add116 = add i32 %77, 20, !dbg !5325
  %78 = load i32, ptr %i, align 4, !dbg !5326
  %mul117 = mul i32 %78, 12, !dbg !5327
  %add118 = add i32 %add116, %mul117, !dbg !5328
  store i32 %add118, ptr %ctrl_pos, align 4, !dbg !5323
  %79 = load i8, ptr %save.addr, align 1, !dbg !5329, !range !5117, !noundef !1018
  %tobool119 = trunc i8 %79 to i1, !dbg !5329
  br i1 %tobool119, label %if.then120, label %if.else122, !dbg !5330

if.then120:                                       ; preds = %if.then115
  %80 = load ptr, ptr %dev.addr, align 8, !dbg !5331
  %81 = load i32, ptr %ctrl_pos, align 4, !dbg !5332
  %82 = load ptr, ptr %buf, align 8, !dbg !5333
  %call121 = call i32 @pci_read_config_dword(ptr noundef %80, i32 noundef %81, ptr noundef %82) #7, !dbg !5334
  br label %if.end135, !dbg !5334

if.else122:                                       ; preds = %if.then115
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5085, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #6, !dbg !5335
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5088, metadata !DIExpression()), !dbg !5337
  %83 = load ptr, ptr %buf, align 8, !dbg !5338
  %84 = load i32, ptr %83, align 4, !dbg !5339
  store i32 %84, ptr %ctrl, align 4, !dbg !5337
  %85 = load ptr, ptr %dev.addr, align 8, !dbg !5340
  %86 = load i32, ptr %ctrl_pos, align 4, !dbg !5341
  %call123 = call i32 @pci_read_config_dword(ptr noundef %85, i32 noundef %86, ptr noundef %tmp) #7, !dbg !5342
  %87 = load i32, ptr %tmp, align 4, !dbg !5343
  %and124 = and i32 %87, -2147483648, !dbg !5343
  store i32 %and124, ptr %tmp, align 4, !dbg !5343
  %88 = load i32, ptr %ctrl, align 4, !dbg !5344
  %and125 = and i32 %88, 2147483647, !dbg !5345
  %89 = load i32, ptr %tmp, align 4, !dbg !5346
  %or = or i32 %89, %and125, !dbg !5346
  store i32 %or, ptr %tmp, align 4, !dbg !5346
  %90 = load ptr, ptr %dev.addr, align 8, !dbg !5347
  %91 = load i32, ptr %ctrl_pos, align 4, !dbg !5348
  %92 = load i32, ptr %tmp, align 4, !dbg !5349
  %call126 = call i32 @pci_write_config_dword(ptr noundef %90, i32 noundef %91, i32 noundef %92) #7, !dbg !5350
  %93 = load i32, ptr %ctrl, align 4, !dbg !5351
  %and127 = and i32 %93, 917504, !dbg !5353
  %tobool128 = icmp ne i32 %and127, 0, !dbg !5353
  br i1 %tobool128, label %if.then129, label %if.end130, !dbg !5354

if.then129:                                       ; preds = %if.else122
  %94 = load ptr, ptr %dev.addr, align 8, !dbg !5355
  %95 = load i32, ptr %pos.addr, align 4, !dbg !5356
  %96 = load i32, ptr %i, align 4, !dbg !5357
  call void @pci_vc_load_port_arb_table(ptr noundef %94, i32 noundef %95, i32 noundef %96) #7, !dbg !5358
  br label %if.end130, !dbg !5358

if.end130:                                        ; preds = %if.then129, %if.else122
  %97 = load i32, ptr %ctrl, align 4, !dbg !5359
  %98 = load i32, ptr %tmp, align 4, !dbg !5361
  %xor = xor i32 %97, %98, !dbg !5362
  %and131 = and i32 %xor, -2147483648, !dbg !5363
  %tobool132 = icmp ne i32 %and131, 0, !dbg !5363
  br i1 %tobool132, label %if.then133, label %if.end134, !dbg !5364

if.then133:                                       ; preds = %if.end130
  %99 = load ptr, ptr %dev.addr, align 8, !dbg !5365
  %100 = load i32, ptr %pos.addr, align 4, !dbg !5366
  %101 = load i32, ptr %i, align 4, !dbg !5367
  call void @pci_vc_enable(ptr noundef %99, i32 noundef %100, i32 noundef %101) #7, !dbg !5368
  br label %if.end134, !dbg !5368

if.end134:                                        ; preds = %if.then133, %if.end130
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #6, !dbg !5369
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6, !dbg !5369
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then120
  %102 = load ptr, ptr %buf, align 8, !dbg !5370
  %add.ptr136 = getelementptr i8, ptr %102, i64 4, !dbg !5370
  store ptr %add.ptr136, ptr %buf, align 8, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl_pos) #6, !dbg !5371
  br label %if.end137, !dbg !5372

if.end137:                                        ; preds = %if.end135, %if.end113
  %103 = load i32, ptr %len, align 4, !dbg !5373
  %add138 = add i32 %103, 4, !dbg !5373
  store i32 %add138, ptr %len, align 4, !dbg !5373
  call void @llvm.lifetime.end.p0(i64 4, ptr %parb_offset) #6, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap69) #6, !dbg !5374
  br label %for.inc, !dbg !5375

for.inc:                                          ; preds = %if.end137
  %104 = load i32, ptr %i, align 4, !dbg !5376
  %inc = add i32 %104, 1, !dbg !5376
  store i32 %inc, ptr %i, align 4, !dbg !5376
  br label %for.cond, !dbg !5377, !llvm.loop !5378

for.end:                                          ; preds = %for.cond
  %105 = load ptr, ptr %buf, align 8, !dbg !5380
  %tobool139 = icmp ne ptr %105, null, !dbg !5380
  br i1 %tobool139, label %cond.true140, label %cond.false141, !dbg !5380

cond.true140:                                     ; preds = %for.end
  br label %cond.end142, !dbg !5380

cond.false141:                                    ; preds = %for.end
  %106 = load i32, ptr %len, align 4, !dbg !5381
  br label %cond.end142, !dbg !5380

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi i32 [ 0, %cond.true140 ], [ %106, %cond.false141 ], !dbg !5380
  store i32 %cond143, ptr %retval, align 4, !dbg !5382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5382

cleanup:                                          ; preds = %cond.end142, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 1, ptr %parb_size) #6, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 1, ptr %lpevcc) #6, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 1, ptr %evcc) #6, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap1) #6, !dbg !5383
  %107 = load i32, ptr %retval, align 4, !dbg !5383
  ret i32 %107, !dbg !5383
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_restore_vc_state(ptr noundef %dev) #0 align 16 !dbg !5384 {
entry:
  %dev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %save_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5386, metadata !DIExpression()), !dbg !5393
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5394
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5387, metadata !DIExpression()), !dbg !5395
  store i32 0, ptr %i, align 4, !dbg !5396
  br label %for.cond, !dbg !5397

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5398
  %conv = sext i32 %0 to i64, !dbg !5398
  %cmp = icmp ult i64 %conv, 3, !dbg !5399
  br i1 %cmp, label %for.body, label %for.end, !dbg !5400

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5388, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_state) #6, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %save_state, metadata !5392, metadata !DIExpression()), !dbg !5404
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5405
  %2 = load i32, ptr %i, align 4, !dbg !5406
  %idxprom = sext i32 %2 to i64, !dbg !5407
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom, !dbg !5407
  %id = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !5408
  %3 = load i16, ptr %id, align 16, !dbg !5408
  %conv2 = zext i16 %3 to i32, !dbg !5407
  %call = call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef %conv2) #7, !dbg !5409
  %conv3 = zext i16 %call to i32, !dbg !5409
  store i32 %conv3, ptr %pos, align 4, !dbg !5410
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5411
  %5 = load i32, ptr %i, align 4, !dbg !5412
  %idxprom4 = sext i32 %5 to i64, !dbg !5413
  %arrayidx5 = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom4, !dbg !5413
  %id6 = getelementptr inbounds %struct.anon.14, ptr %arrayidx5, i32 0, i32 0, !dbg !5414
  %6 = load i16, ptr %id6, align 16, !dbg !5414
  %call7 = call ptr @pci_find_saved_ext_cap(ptr noundef %4, i16 noundef zeroext %6) #7, !dbg !5415
  store ptr %call7, ptr %save_state, align 8, !dbg !5416
  %7 = load ptr, ptr %save_state, align 8, !dbg !5417
  %tobool = icmp ne ptr %7, null, !dbg !5417
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5419

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, ptr %pos, align 4, !dbg !5420
  %tobool8 = icmp ne i32 %8, 0, !dbg !5420
  br i1 %tobool8, label %if.end, label %if.then, !dbg !5421

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5422

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5423
  %10 = load i32, ptr %pos, align 4, !dbg !5424
  %11 = load ptr, ptr %save_state, align 8, !dbg !5425
  %call9 = call i32 @pci_vc_do_save_buffer(ptr noundef %9, i32 noundef %10, ptr noundef %11, i1 noundef zeroext false) #7, !dbg !5426
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5427
  br label %cleanup, !dbg !5427

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_state) #6, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6, !dbg !5427
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5428

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %12 = load i32, ptr %i, align 4, !dbg !5429
  %inc = add i32 %12, 1, !dbg !5429
  store i32 %inc, ptr %i, align 4, !dbg !5429
  br label %for.cond, !dbg !5430, !llvm.loop !5431

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5433
  ret void, !dbg !5433

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_allocate_vc_save_buffers(ptr noundef %dev) #0 align 16 !dbg !5434 {
entry:
  %dev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5436, metadata !DIExpression()), !dbg !5443
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5444
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5437, metadata !DIExpression()), !dbg !5445
  store i32 0, ptr %i, align 4, !dbg !5446
  br label %for.cond, !dbg !5447

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5448
  %conv = sext i32 %0 to i64, !dbg !5448
  %cmp = icmp ult i64 %conv, 3, !dbg !5449
  br i1 %cmp, label %for.body, label %for.end, !dbg !5450

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5438, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6, !dbg !5451
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5442, metadata !DIExpression()), !dbg !5453
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5454
  %2 = load i32, ptr %i, align 4, !dbg !5455
  %idxprom = sext i32 %2 to i64, !dbg !5456
  %arrayidx = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom, !dbg !5456
  %id = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !5457
  %3 = load i16, ptr %id, align 16, !dbg !5457
  %conv2 = zext i16 %3 to i32, !dbg !5456
  %call = call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef %conv2) #7, !dbg !5458
  %conv3 = zext i16 %call to i32, !dbg !5458
  store i32 %conv3, ptr %pos, align 4, !dbg !5453
  %4 = load i32, ptr %pos, align 4, !dbg !5459
  %tobool = icmp ne i32 %4, 0, !dbg !5459
  br i1 %tobool, label %if.end, label %if.then, !dbg !5461

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5462

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5463
  %6 = load i32, ptr %pos, align 4, !dbg !5464
  %call4 = call i32 @pci_vc_do_save_buffer(ptr noundef %5, i32 noundef %6, ptr noundef null, i1 noundef zeroext false) #7, !dbg !5465
  store i32 %call4, ptr %len, align 4, !dbg !5466
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5467
  %8 = load i32, ptr %i, align 4, !dbg !5469
  %idxprom5 = sext i32 %8 to i64, !dbg !5470
  %arrayidx6 = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom5, !dbg !5470
  %id7 = getelementptr inbounds %struct.anon.14, ptr %arrayidx6, i32 0, i32 0, !dbg !5471
  %9 = load i16, ptr %id7, align 16, !dbg !5471
  %10 = load i32, ptr %len, align 4, !dbg !5472
  %call8 = call i32 @pci_add_ext_cap_save_buffer(ptr noundef %7, i16 noundef zeroext %9, i32 noundef %10) #7, !dbg !5473
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5473
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !5474

if.then10:                                        ; preds = %if.end
  br label %do.body, !dbg !5475

do.body:                                          ; preds = %if.then10
  br label %do.cond, !dbg !5477

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5477

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5475
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5475
  %12 = load i32, ptr %i, align 4, !dbg !5475
  %idxprom12 = sext i32 %12 to i64, !dbg !5475
  %arrayidx13 = getelementptr [3 x %struct.anon.14], ptr @vc_caps, i64 0, i64 %idxprom12, !dbg !5475
  %name = getelementptr inbounds %struct.anon.14, ptr %arrayidx13, i32 0, i32 1, !dbg !5475
  %13 = load ptr, ptr %name, align 8, !dbg !5475
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef @.str.2, ptr noundef %13) #8, !dbg !5475
  br label %if.end14, !dbg !5479

if.end14:                                         ; preds = %do.end, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5480
  br label %cleanup, !dbg !5480

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6, !dbg !5480
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !5480
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5481

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i32, ptr %i, align 4, !dbg !5482
  %inc = add i32 %14, 1, !dbg !5482
  store i32 %inc, ptr %i, align 4, !dbg !5482
  br label %for.cond, !dbg !5483, !llvm.loop !5484

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5486
  ret void, !dbg !5486

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5487 dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef, i16 noundef zeroext, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5490 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5495 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5498 dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_vc_save_restore_dwords(ptr noundef %dev, i32 noundef %pos, ptr noundef %buf, i32 noundef %dwords, i1 noundef zeroext %save) #0 align 16 !dbg !5501 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %dwords.addr = alloca i32, align 4
  %save.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5505, metadata !DIExpression()), !dbg !5511
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5506, metadata !DIExpression()), !dbg !5512
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5507, metadata !DIExpression()), !dbg !5513
  store i32 %dwords, ptr %dwords.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dwords.addr, metadata !5508, metadata !DIExpression()), !dbg !5514
  %frombool = zext i1 %save to i8
  store i8 %frombool, ptr %save.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %save.addr, metadata !5509, metadata !DIExpression()), !dbg !5515
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5516
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5510, metadata !DIExpression()), !dbg !5517
  store i32 0, ptr %i, align 4, !dbg !5518
  br label %for.cond, !dbg !5520

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5521
  %1 = load i32, ptr %dwords.addr, align 4, !dbg !5523
  %cmp = icmp slt i32 %0, %1, !dbg !5524
  br i1 %cmp, label %for.body, label %for.end, !dbg !5525

for.body:                                         ; preds = %for.cond
  %2 = load i8, ptr %save.addr, align 1, !dbg !5526, !range !5117, !noundef !1018
  %tobool = trunc i8 %2 to i1, !dbg !5526
  br i1 %tobool, label %if.then, label %if.else, !dbg !5529

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5530
  %4 = load i32, ptr %pos.addr, align 4, !dbg !5531
  %5 = load i32, ptr %i, align 4, !dbg !5532
  %mul = mul i32 %5, 4, !dbg !5533
  %add = add i32 %4, %mul, !dbg !5534
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5535
  %call = call i32 @pci_read_config_dword(ptr noundef %3, i32 noundef %add, ptr noundef %6) #7, !dbg !5536
  br label %if.end, !dbg !5536

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5537
  %8 = load i32, ptr %pos.addr, align 4, !dbg !5538
  %9 = load i32, ptr %i, align 4, !dbg !5539
  %mul1 = mul i32 %9, 4, !dbg !5540
  %add2 = add i32 %8, %mul1, !dbg !5541
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !5542
  %11 = load i32, ptr %10, align 4, !dbg !5543
  %call3 = call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef %add2, i32 noundef %11) #7, !dbg !5544
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !5545

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !5546
  %inc = add i32 %12, 1, !dbg !5546
  store i32 %inc, ptr %i, align 4, !dbg !5546
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !5547
  %incdec.ptr = getelementptr i32, ptr %13, i32 1, !dbg !5547
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !5547
  br label %for.cond, !dbg !5548, !llvm.loop !5549

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5551
  ret void, !dbg !5551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_vc_load_arb_table(ptr noundef %dev, i32 noundef %pos) #0 align 16 !dbg !5552 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %ctrl = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5556, metadata !DIExpression()), !dbg !5559
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5557, metadata !DIExpression()), !dbg !5560
  call void @llvm.lifetime.start.p0(i64 2, ptr %ctrl) #6, !dbg !5561
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5558, metadata !DIExpression()), !dbg !5562
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5563
  %1 = load i32, ptr %pos.addr, align 4, !dbg !5564
  %add = add i32 %1, 12, !dbg !5565
  %call = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %add, ptr noundef %ctrl) #7, !dbg !5566
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5567
  %3 = load i32, ptr %pos.addr, align 4, !dbg !5568
  %add1 = add i32 %3, 12, !dbg !5569
  %4 = load i16, ptr %ctrl, align 2, !dbg !5570
  %conv = zext i16 %4 to i32, !dbg !5570
  %or = or i32 %conv, 1, !dbg !5571
  %conv2 = trunc i32 %or to i16, !dbg !5570
  %call3 = call i32 @pci_write_config_word(ptr noundef %2, i32 noundef %add1, i16 noundef zeroext %conv2) #7, !dbg !5572
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5573
  %6 = load i32, ptr %pos.addr, align 4, !dbg !5575
  %add4 = add i32 %6, 14, !dbg !5576
  %call5 = call i32 @pci_wait_for_pending(ptr noundef %5, i32 noundef %add4, i16 noundef zeroext 1) #7, !dbg !5577
  %tobool = icmp ne i32 %call5, 0, !dbg !5577
  br i1 %tobool, label %if.then, label %if.end, !dbg !5578

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5579

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5580

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5582

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5582

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5580
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 37, !dbg !5580
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef @.str.7) #8, !dbg !5580
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5584
  br label %cleanup, !dbg !5584

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %ctrl) #6, !dbg !5584
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5584

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5585 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_vc_load_port_arb_table(ptr noundef %dev, i32 noundef %pos, i32 noundef %res) #0 align 16 !dbg !5588 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %res.addr = alloca i32, align 4
  %ctrl_pos = alloca i32, align 4
  %status_pos = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5592, metadata !DIExpression()), !dbg !5598
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5593, metadata !DIExpression()), !dbg !5599
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5594, metadata !DIExpression()), !dbg !5600
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl_pos) #6, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %ctrl_pos, metadata !5595, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 4, ptr %status_pos) #6, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %status_pos, metadata !5596, metadata !DIExpression()), !dbg !5603
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #6, !dbg !5604
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5597, metadata !DIExpression()), !dbg !5605
  %0 = load i32, ptr %pos.addr, align 4, !dbg !5606
  %add = add i32 %0, 20, !dbg !5607
  %1 = load i32, ptr %res.addr, align 4, !dbg !5608
  %mul = mul i32 %1, 12, !dbg !5609
  %add1 = add i32 %add, %mul, !dbg !5610
  store i32 %add1, ptr %ctrl_pos, align 4, !dbg !5611
  %2 = load i32, ptr %pos.addr, align 4, !dbg !5612
  %add2 = add i32 %2, 26, !dbg !5613
  %3 = load i32, ptr %res.addr, align 4, !dbg !5614
  %mul3 = mul i32 %3, 12, !dbg !5615
  %add4 = add i32 %add2, %mul3, !dbg !5616
  store i32 %add4, ptr %status_pos, align 4, !dbg !5617
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5618
  %5 = load i32, ptr %ctrl_pos, align 4, !dbg !5619
  %call = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef %5, ptr noundef %ctrl) #7, !dbg !5620
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5621
  %7 = load i32, ptr %ctrl_pos, align 4, !dbg !5622
  %8 = load i32, ptr %ctrl, align 4, !dbg !5623
  %or = or i32 %8, 65536, !dbg !5624
  %call5 = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef %7, i32 noundef %or) #7, !dbg !5625
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5626
  %10 = load i32, ptr %status_pos, align 4, !dbg !5628
  %call6 = call i32 @pci_wait_for_pending(ptr noundef %9, i32 noundef %10, i16 noundef zeroext 1) #7, !dbg !5629
  %tobool = icmp ne i32 %call6, 0, !dbg !5629
  br i1 %tobool, label %if.then, label %if.end, !dbg !5630

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5631

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5632

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5634

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5634

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5632
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5632
  %12 = load i32, ptr %res.addr, align 4, !dbg !5632
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef @.str.8, i32 noundef %12) #8, !dbg !5632
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5636
  br label %cleanup, !dbg !5636

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #6, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 4, ptr %status_pos) #6, !dbg !5636
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl_pos) #6, !dbg !5636
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5636

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_vc_enable(ptr noundef %dev, i32 noundef %pos, i32 noundef %res) #0 align 16 !dbg !5637 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %res.addr = alloca i32, align 4
  %ctrl_pos = alloca i32, align 4
  %status_pos = alloca i32, align 4
  %id = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %evcc = alloca i32, align 4
  %i = alloca i32, align 4
  %ctrl_pos2 = alloca i32, align 4
  %status_pos2 = alloca i32, align 4
  %ctrl = alloca i32, align 4
  %header = alloca i32, align 4
  %cap1 = alloca i32, align 4
  %ctrl2 = alloca i32, align 4
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5639, metadata !DIExpression()), !dbg !5656
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5640, metadata !DIExpression()), !dbg !5657
  store i32 %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5641, metadata !DIExpression()), !dbg !5658
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl_pos) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %ctrl_pos, metadata !5642, metadata !DIExpression()), !dbg !5660
  call void @llvm.lifetime.start.p0(i64 4, ptr %status_pos) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %status_pos, metadata !5643, metadata !DIExpression()), !dbg !5661
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5644, metadata !DIExpression()), !dbg !5662
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos2) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %pos2, metadata !5645, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 4, ptr %evcc) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %evcc, metadata !5646, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5647, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl_pos2) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %ctrl_pos2, metadata !5648, metadata !DIExpression()), !dbg !5666
  call void @llvm.lifetime.start.p0(i64 4, ptr %status_pos2) #6, !dbg !5659
  call void @llvm.dbg.declare(metadata ptr %status_pos2, metadata !5649, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl) #6, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5650, metadata !DIExpression()), !dbg !5669
  call void @llvm.lifetime.start.p0(i64 4, ptr %header) #6, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %header, metadata !5651, metadata !DIExpression()), !dbg !5670
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap1) #6, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %cap1, metadata !5652, metadata !DIExpression()), !dbg !5671
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctrl2) #6, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %ctrl2, metadata !5653, metadata !DIExpression()), !dbg !5672
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #6, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5654, metadata !DIExpression()), !dbg !5674
  store ptr null, ptr %link, align 8, !dbg !5674
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5675
  %call = call zeroext i1 @pci_is_pcie(ptr noundef %0) #7, !dbg !5677
  br i1 %call, label %lor.lhs.false, label %if.then, !dbg !5678

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5679
  %call1 = call zeroext i1 @pcie_downstream_port(ptr noundef %1) #7, !dbg !5680
  br i1 %call1, label %if.end, label %if.then, !dbg !5681

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5682

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %pos.addr, align 4, !dbg !5683
  %add = add i32 %2, 20, !dbg !5684
  %3 = load i32, ptr %res.addr, align 4, !dbg !5685
  %mul = mul i32 %3, 12, !dbg !5686
  %add2 = add i32 %add, %mul, !dbg !5687
  store i32 %add2, ptr %ctrl_pos, align 4, !dbg !5688
  %4 = load i32, ptr %pos.addr, align 4, !dbg !5689
  %add3 = add i32 %4, 26, !dbg !5690
  %5 = load i32, ptr %res.addr, align 4, !dbg !5691
  %mul4 = mul i32 %5, 12, !dbg !5692
  %add5 = add i32 %add3, %mul4, !dbg !5693
  store i32 %add5, ptr %status_pos, align 4, !dbg !5694
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5695
  %7 = load i32, ptr %ctrl_pos, align 4, !dbg !5696
  %call6 = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %7, ptr noundef %ctrl) #7, !dbg !5697
  %8 = load i32, ptr %ctrl, align 4, !dbg !5698
  %and = and i32 %8, 117440512, !dbg !5699
  store i32 %and, ptr %id, align 4, !dbg !5700
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5701
  %10 = load i32, ptr %pos.addr, align 4, !dbg !5702
  %call7 = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef %10, ptr noundef %header) #7, !dbg !5703
  %11 = load i32, ptr %header, align 4, !dbg !5704
  %and8 = and i32 %11, 65535, !dbg !5704
  %cmp = icmp eq i32 %and8, 9, !dbg !5706
  br i1 %cmp, label %if.then11, label %lor.lhs.false9, !dbg !5707

lor.lhs.false9:                                   ; preds = %if.end
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5708
  %bus = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 1, !dbg !5709
  %13 = load ptr, ptr %bus, align 8, !dbg !5709
  %call10 = call zeroext i1 @pci_is_root_bus(ptr noundef %13) #7, !dbg !5710
  br i1 %call10, label %if.then11, label %if.end12, !dbg !5711

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  br label %enable, !dbg !5712

if.end12:                                         ; preds = %lor.lhs.false9
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5713
  %bus13 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 1, !dbg !5714
  %15 = load ptr, ptr %bus13, align 8, !dbg !5714
  %self = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4, !dbg !5715
  %16 = load ptr, ptr %self, align 8, !dbg !5715
  %call14 = call zeroext i16 @pci_find_ext_capability(ptr noundef %16, i32 noundef 2) #7, !dbg !5716
  %conv = zext i16 %call14 to i32, !dbg !5716
  store i32 %conv, ptr %pos2, align 4, !dbg !5717
  %17 = load i32, ptr %pos2, align 4, !dbg !5718
  %tobool = icmp ne i32 %17, 0, !dbg !5718
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !5720

if.then15:                                        ; preds = %if.end12
  br label %enable, !dbg !5721

if.end16:                                         ; preds = %if.end12
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5722
  %bus17 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 1, !dbg !5723
  %19 = load ptr, ptr %bus17, align 8, !dbg !5723
  %self18 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 4, !dbg !5724
  %20 = load ptr, ptr %self18, align 8, !dbg !5724
  %21 = load i32, ptr %pos2, align 4, !dbg !5725
  %add19 = add i32 %21, 4, !dbg !5726
  %call20 = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef %add19, ptr noundef %cap1) #7, !dbg !5727
  %22 = load i32, ptr %cap1, align 4, !dbg !5728
  %and21 = and i32 %22, 7, !dbg !5729
  store i32 %and21, ptr %evcc, align 4, !dbg !5730
  store i32 1, ptr %i, align 4, !dbg !5731
  br label %for.cond, !dbg !5733

for.cond:                                         ; preds = %for.inc, %if.end16
  %23 = load i32, ptr %i, align 4, !dbg !5734
  %24 = load i32, ptr %evcc, align 4, !dbg !5736
  %add22 = add i32 %24, 1, !dbg !5737
  %cmp23 = icmp slt i32 %23, %add22, !dbg !5738
  br i1 %cmp23, label %for.body, label %for.end, !dbg !5739

for.body:                                         ; preds = %for.cond
  %25 = load i32, ptr %pos2, align 4, !dbg !5740
  %add25 = add i32 %25, 20, !dbg !5742
  %26 = load i32, ptr %i, align 4, !dbg !5743
  %mul26 = mul i32 %26, 12, !dbg !5744
  %add27 = add i32 %add25, %mul26, !dbg !5745
  store i32 %add27, ptr %ctrl_pos2, align 4, !dbg !5746
  %27 = load i32, ptr %pos2, align 4, !dbg !5747
  %add28 = add i32 %27, 26, !dbg !5748
  %28 = load i32, ptr %i, align 4, !dbg !5749
  %mul29 = mul i32 %28, 12, !dbg !5750
  %add30 = add i32 %add28, %mul29, !dbg !5751
  store i32 %add30, ptr %status_pos2, align 4, !dbg !5752
  %29 = load ptr, ptr %dev.addr, align 8, !dbg !5753
  %bus31 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 1, !dbg !5754
  %30 = load ptr, ptr %bus31, align 8, !dbg !5754
  %self32 = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 4, !dbg !5755
  %31 = load ptr, ptr %self32, align 8, !dbg !5755
  %32 = load i32, ptr %ctrl_pos2, align 4, !dbg !5756
  %call33 = call i32 @pci_read_config_dword(ptr noundef %31, i32 noundef %32, ptr noundef %ctrl2) #7, !dbg !5757
  %33 = load i32, ptr %ctrl2, align 4, !dbg !5758
  %and34 = and i32 %33, 117440512, !dbg !5760
  %34 = load i32, ptr %id, align 4, !dbg !5761
  %cmp35 = icmp eq i32 %and34, %34, !dbg !5762
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !5763

if.then37:                                        ; preds = %for.body
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !5764
  %bus38 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 1, !dbg !5766
  %36 = load ptr, ptr %bus38, align 8, !dbg !5766
  %self39 = getelementptr inbounds %struct.pci_bus, ptr %36, i32 0, i32 4, !dbg !5767
  %37 = load ptr, ptr %self39, align 8, !dbg !5767
  store ptr %37, ptr %link, align 8, !dbg !5768
  br label %for.end, !dbg !5769

if.end40:                                         ; preds = %for.body
  br label %for.inc, !dbg !5770

for.inc:                                          ; preds = %if.end40
  %38 = load i32, ptr %i, align 4, !dbg !5771
  %inc = add i32 %38, 1, !dbg !5771
  store i32 %inc, ptr %i, align 4, !dbg !5771
  br label %for.cond, !dbg !5772, !llvm.loop !5773

for.end:                                          ; preds = %if.then37, %for.cond
  %39 = load ptr, ptr %link, align 8, !dbg !5775
  %tobool41 = icmp ne ptr %39, null, !dbg !5775
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !5777

if.then42:                                        ; preds = %for.end
  br label %enable, !dbg !5778

if.end43:                                         ; preds = %for.end
  %40 = load i32, ptr %ctrl2, align 4, !dbg !5779
  %and44 = and i32 %40, -2147483648, !dbg !5781
  %tobool45 = icmp ne i32 %and44, 0, !dbg !5781
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !5782

if.then46:                                        ; preds = %if.end43
  %41 = load i32, ptr %ctrl2, align 4, !dbg !5783
  %and47 = and i32 %41, 2147483647, !dbg !5783
  store i32 %and47, ptr %ctrl2, align 4, !dbg !5783
  %42 = load ptr, ptr %link, align 8, !dbg !5785
  %43 = load i32, ptr %ctrl_pos2, align 4, !dbg !5786
  %44 = load i32, ptr %ctrl2, align 4, !dbg !5787
  %call48 = call i32 @pci_write_config_dword(ptr noundef %42, i32 noundef %43, i32 noundef %44) #7, !dbg !5788
  br label %if.end49, !dbg !5789

if.end49:                                         ; preds = %if.then46, %if.end43
  %45 = load i32, ptr %ctrl2, align 4, !dbg !5790
  %or = or i32 %45, -2147483648, !dbg !5790
  store i32 %or, ptr %ctrl2, align 4, !dbg !5790
  %46 = load ptr, ptr %link, align 8, !dbg !5791
  %47 = load i32, ptr %ctrl_pos2, align 4, !dbg !5792
  %48 = load i32, ptr %ctrl2, align 4, !dbg !5793
  %call50 = call i32 @pci_write_config_dword(ptr noundef %46, i32 noundef %47, i32 noundef %48) #7, !dbg !5794
  br label %enable, !dbg !5794

enable:                                           ; preds = %if.end49, %if.then42, %if.then15, %if.then11
  call void @llvm.dbg.label(metadata !5655), !dbg !5795
  %49 = load i32, ptr %ctrl, align 4, !dbg !5796
  %or51 = or i32 %49, -2147483648, !dbg !5796
  store i32 %or51, ptr %ctrl, align 4, !dbg !5796
  %50 = load ptr, ptr %dev.addr, align 8, !dbg !5797
  %51 = load i32, ptr %ctrl_pos, align 4, !dbg !5798
  %52 = load i32, ptr %ctrl, align 4, !dbg !5799
  %call52 = call i32 @pci_write_config_dword(ptr noundef %50, i32 noundef %51, i32 noundef %52) #7, !dbg !5800
  %53 = load ptr, ptr %dev.addr, align 8, !dbg !5801
  %54 = load i32, ptr %status_pos, align 4, !dbg !5803
  %call53 = call i32 @pci_wait_for_pending(ptr noundef %53, i32 noundef %54, i16 noundef zeroext 2) #7, !dbg !5804
  %tobool54 = icmp ne i32 %call53, 0, !dbg !5804
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !5805

if.then55:                                        ; preds = %enable
  br label %do.body, !dbg !5806

do.body:                                          ; preds = %if.then55
  br label %do.cond, !dbg !5808

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5808

do.end:                                           ; preds = %do.cond
  %55 = load ptr, ptr %dev.addr, align 8, !dbg !5806
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 37, !dbg !5806
  %56 = load i32, ptr %id, align 4, !dbg !5806
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef @.str.9, i32 noundef %56) #8, !dbg !5806
  br label %if.end57, !dbg !5810

if.end57:                                         ; preds = %do.end, %enable
  %57 = load ptr, ptr %link, align 8, !dbg !5811
  %tobool58 = icmp ne ptr %57, null, !dbg !5811
  br i1 %tobool58, label %land.lhs.true, label %if.end66, !dbg !5813

land.lhs.true:                                    ; preds = %if.end57
  %58 = load ptr, ptr %link, align 8, !dbg !5814
  %59 = load i32, ptr %status_pos2, align 4, !dbg !5815
  %call59 = call i32 @pci_wait_for_pending(ptr noundef %58, i32 noundef %59, i16 noundef zeroext 2) #7, !dbg !5816
  %tobool60 = icmp ne i32 %call59, 0, !dbg !5816
  br i1 %tobool60, label %if.end66, label %if.then61, !dbg !5817

if.then61:                                        ; preds = %land.lhs.true
  br label %do.body62, !dbg !5818

do.body62:                                        ; preds = %if.then61
  br label %do.cond63, !dbg !5820

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !5820

do.end64:                                         ; preds = %do.cond63
  %60 = load ptr, ptr %link, align 8, !dbg !5818
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 37, !dbg !5818
  %61 = load i32, ptr %id, align 4, !dbg !5818
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef @.str.9, i32 noundef %61) #8, !dbg !5818
  br label %if.end66, !dbg !5822

if.end66:                                         ; preds = %do.end64, %land.lhs.true, %if.end57
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5823
  br label %cleanup, !dbg !5823

cleanup:                                          ; preds = %if.end66, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl2) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap1) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %header) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %status_pos2) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl_pos2) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %evcc) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos2) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %status_pos) #6, !dbg !5823
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctrl_pos) #6, !dbg !5823
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5823

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5824 dso_local i32 @pci_wait_for_pending(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_pcie(ptr noundef %dev) #5 align 16 !dbg !5827 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5831, metadata !DIExpression()), !dbg !5832
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5833
  %call = call i32 @pci_pcie_cap(ptr noundef %0) #7, !dbg !5834
  %tobool = icmp ne i32 %call, 0, !dbg !5834
  ret i1 %tobool, !dbg !5835
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pcie_downstream_port(ptr noundef %dev) #5 align 16 !dbg !5836 {
entry:
  %dev.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5840, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #6, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5841, metadata !DIExpression()), !dbg !5844
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5845
  %call = call i32 @pci_pcie_type(ptr noundef %0) #7, !dbg !5846
  store i32 %call, ptr %type, align 4, !dbg !5844
  %1 = load i32, ptr %type, align 4, !dbg !5847
  %cmp = icmp eq i32 %1, 4, !dbg !5848
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5849

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %type, align 4, !dbg !5850
  %cmp1 = icmp eq i32 %2, 6, !dbg !5851
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !5852

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !5853
  %cmp2 = icmp eq i32 %3, 8, !dbg !5854
  br label %lor.end, !dbg !5852

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #6, !dbg !5855
  ret i1 %4, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_root_bus(ptr noundef %pbus) #5 align 16 !dbg !5857 {
entry:
  %pbus.addr = alloca ptr, align 8
  store ptr %pbus, ptr %pbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pbus.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  %0 = load ptr, ptr %pbus.addr, align 8, !dbg !5863
  %parent = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1, !dbg !5864
  %1 = load ptr, ptr %parent, align 8, !dbg !5864
  %tobool = icmp ne ptr %1, null, !dbg !5865
  %lnot = xor i1 %tobool, true, !dbg !5865
  ret i1 %lnot, !dbg !5866
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_cap(ptr noundef %dev) #5 align 16 !dbg !5867 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5871
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17, !dbg !5872
  %1 = load i8, ptr %pcie_cap, align 4, !dbg !5872
  %conv = zext i8 %1 to i32, !dbg !5871
  ret i32 %conv, !dbg !5873
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_type(ptr noundef %dev) #5 align 16 !dbg !5874 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5880
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #7, !dbg !5881
  %conv = zext i16 %call to i32, !dbg !5881
  %and = and i32 %conv, 240, !dbg !5882
  %shr = ashr i32 %and, 4, !dbg !5883
  ret i32 %shr, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pcie_caps_reg(ptr noundef %dev) #5 align 16 !dbg !5885 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5891
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23, !dbg !5892
  %1 = load i16, ptr %pcie_flags_reg, align 2, !dbg !5892
  ret i16 %1, !dbg !5893
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vc_caps", scope: !2, file: !3, line: 341, type: !218, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.vc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/vc\22 -D KBUILD_BASENAME=\22vc\22 -D KBUILD_MODNAME=\22vc\22 -D __KBUILD_MODNAME=kmod_vc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/vc.ll drivers/pci/vc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !160, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/vc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee4c54f0eaef729a3e5693ce8cb891e7")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !30, line: 9, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!33 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!34 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!35 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!36 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !38, line: 1325, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!41 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!42 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!43 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!44 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!45 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!46 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!47 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!48 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!49 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!50 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!51 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!52 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !54, line: 68, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !{!109, !147, !153, !157}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !149, line: 17, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !151, line: 21, baseType: !152)
!151 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !149, line: 19, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !151, line: 24, baseType: !156)
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !149, line: 21, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !151, line: 27, baseType: !7)
!160 = !{!161, !167, !173, !178, !183, !188, !193, !0, !198, !203, !208, !213}
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 216, elements: !165)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !{!166}
!166 = !DISubrange(count: 27)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 144, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!171 = !{!172}
!172 = !DISubrange(count: 18)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 373, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 200, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 25)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 425, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 304, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 38)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 341, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 40, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 5)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 24, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 3)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 4)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 336, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 42)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 296, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 37)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 352, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 44)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 32)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !191)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 338, size: 128, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !219, file: !3, line: 339, baseType: !154, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !3, line: 340, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!224 = !{i32 7, !"Dwarf Version", i32 5}
!225 = !{i32 2, !"Debug Info Version", i32 3}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 8, !"cf-protection-branch", i32 1}
!228 = !{i32 4, !"function_return_thunk_extern", i32 1}
!229 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!230 = !{i32 1, !"Code Model", i32 2}
!231 = !{i32 1, !"override-stack-alignment", i32 8}
!232 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!233 = distinct !DISubprogram(name: "pci_save_vc_state", scope: !3, file: !3, line: 352, type: !234, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4956)
!234 = !DISubroutineType(types: !235)
!235 = !{!109, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !238, line: 322, size: 16640, elements: !239)
!238 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!239 = !{!240, !247, !4704, !4705, !4706, !4707, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4816, !4817, !4818, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4895, !4896, !4897, !4899, !4900, !4902, !4903, !4904, !4905, !4911, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !237, file: !238, line: 323, baseType: !241, size: 128)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !242, line: 190, size: 128, elements: !243)
!242 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!243 = !{!244, !246}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !242, line: 191, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !241, file: !242, line: 191, baseType: !245, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !237, file: !238, line: 324, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !238, line: 647, size: 8256, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !277, !278, !279, !304, !305, !309, !310, !311, !312, !313, !317, !318, !320, !4699, !4700, !4701, !4702, !4703}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !249, file: !238, line: 648, baseType: !241, size: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !249, file: !238, line: 649, baseType: !248, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !249, file: !238, line: 650, baseType: !241, size: 128, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !249, file: !238, line: 651, baseType: !241, size: 128, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !249, file: !238, line: 652, baseType: !236, size: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !249, file: !238, line: 653, baseType: !241, size: 128, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !249, file: !238, line: 655, baseType: !258, size: 256, offset: 640)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !196)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !261, line: 21, size: 512, elements: !262)
!261 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!262 = !{!263, !269, !270, !271, !273, !274, !275, !276}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !260, file: !261, line: 22, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !242, line: 164, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !242, line: 159, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !149, line: 23, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !151, line: 31, baseType: !268)
!268 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !260, file: !261, line: 23, baseType: !264, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !261, line: 24, baseType: !223, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !261, line: 25, baseType: !272, size: 64, offset: 192)
!272 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !260, file: !261, line: 26, baseType: !272, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !260, file: !261, line: 27, baseType: !259, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !260, file: !261, line: 27, baseType: !259, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !260, file: !261, line: 27, baseType: !259, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !249, file: !238, line: 656, baseType: !241, size: 128, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !249, file: !238, line: 657, baseType: !260, size: 512, offset: 1024)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !249, file: !238, line: 659, baseType: !280, size: 64, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !238, line: 773, size: 320, elements: !282)
!282 = !{!283, !287, !291, !296, !300}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !281, file: !238, line: 774, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!109, !248}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !281, file: !238, line: 775, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !248}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !281, file: !238, line: 776, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !248, !7, !109}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !281, file: !238, line: 777, baseType: !297, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!109, !248, !7, !109, !109, !157}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !281, file: !238, line: 778, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!109, !248, !7, !109, !109, !158}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !249, file: !238, line: 660, baseType: !295, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !249, file: !238, line: 661, baseType: !306, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !308, line: 131, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !249, file: !238, line: 663, baseType: !152, size: 8, offset: 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !249, file: !238, line: 664, baseType: !152, size: 8, offset: 1736)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !249, file: !238, line: 665, baseType: !152, size: 8, offset: 1744)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !249, file: !238, line: 666, baseType: !152, size: 8, offset: 1752)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !249, file: !238, line: 671, baseType: !314, size: 384, offset: 1760)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 384, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 48)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !249, file: !238, line: 673, baseType: !156, size: 16, offset: 2144)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !249, file: !238, line: 674, baseType: !319, size: 16, offset: 2160)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !238, line: 255, baseType: !156)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !249, file: !238, line: 675, baseType: !321, size: 64, offset: 2176)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !323)
!323 = !{!324, !4238, !4239, !4242, !4243, !4296, !4381, !4382, !4383, !4384, !4385, !4392, !4484, !4497, !4507, !4511, !4513, !4514, !4515, !4519, !4526, !4527, !4530, !4533, !4537, !4641, !4642, !4643, !4644, !4645, !4646, !4676, !4677, !4678, !4681, !4684, !4693, !4694, !4695, !4696, !4697, !4698}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !322, file: !94, line: 706, baseType: !325, size: 512)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !326, line: 64, size: 512, elements: !327)
!326 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!327 = !{!328, !329, !330, !332, !411, !4125, !4228, !4233, !4234, !4235, !4236, !4237}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !326, line: 65, baseType: !223, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !325, file: !326, line: 66, baseType: !241, size: 128, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !325, file: !326, line: 67, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !325, file: !326, line: 68, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !326, line: 168, size: 768, elements: !335)
!335 = !{!336, !337, !372, !373}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !334, file: !326, line: 169, baseType: !241, size: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !334, file: !326, line: 170, baseType: !338, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !339, line: 29, baseType: !340)
!339 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !339, line: 17, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !339, line: 18, baseType: !343, size: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !339, line: 18, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !343, file: !339, line: 19, baseType: !346, size: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !347, line: 14, size: 32, elements: !348)
!347 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !346, file: !347, line: 15, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !351, line: 44, baseType: !352)
!351 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !351, line: 14, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !351, line: 15, baseType: !355, size: 32)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !351, line: 15, size: 32, elements: !356)
!356 = !{!357, !362, !367}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !351, line: 16, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !242, line: 174, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 172, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !359, file: !242, line: 173, baseType: !109, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !351, line: 24, baseType: !363, size: 16)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !351, line: 24, size: 16, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !363, file: !351, line: 25, baseType: !148, size: 8)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !363, file: !351, line: 26, baseType: !148, size: 8, offset: 8)
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !351, line: 28, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !351, line: 28, size: 32, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !368, file: !351, line: 29, baseType: !154, size: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !368, file: !351, line: 30, baseType: !154, size: 16, offset: 16)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !334, file: !326, line: 171, baseType: !325, size: 512, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !334, file: !326, line: 172, baseType: !374, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !326, line: 133, size: 192, elements: !377)
!377 = !{!378, !385, !390}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !376, file: !326, line: 134, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!109, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !326, line: 135, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!223, !383}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !376, file: !326, line: 136, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!109, !383, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !326, line: 125, size: 20736, elements: !397)
!397 = !{!398, !401, !405, !406, !410}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !396, file: !326, line: 126, baseType: !399, size: 192)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 192, elements: !191)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !396, file: !326, line: 127, baseType: !402, size: 4096, offset: 192)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 4096, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !396, file: !326, line: 128, baseType: !109, size: 32, offset: 4288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !396, file: !326, line: 129, baseType: !407, size: 16384, offset: 4320)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 16384, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 2048)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !396, file: !326, line: 130, baseType: !109, size: 32, offset: 20704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !325, file: !326, line: 69, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !326, line: 116, size: 384, elements: !415)
!415 = !{!416, !420, !448, !4087, !4115, !4119}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !414, file: !326, line: 117, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !331}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !414, file: !326, line: 118, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !424, line: 254, size: 128, elements: !425)
!424 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!425 = !{!426, !441}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !423, file: !424, line: 255, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !331, !435, !400}
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !242, line: 66, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !432, line: 73, baseType: !433)
!432 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !432, line: 15, baseType: !434)
!434 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !424, line: 30, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !424, line: 31, baseType: !223, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !436, file: !424, line: 32, baseType: !440, size: 16, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !242, line: 24, baseType: !156)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !423, file: !424, line: 256, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!430, !331, !435, !223, !445}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !242, line: 61, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !432, line: 72, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !432, line: 16, baseType: !272)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !414, file: !326, line: 119, baseType: !449, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !424, line: 84, size: 320, elements: !453)
!453 = !{!454, !455, !459, !4083, !4085}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !424, line: 85, baseType: !223, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !452, file: !424, line: 86, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!440, !331, !435, !109}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !452, file: !424, line: 88, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!440, !331, !463, !109}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !424, line: 175, size: 512, elements: !465)
!465 = !{!466, !467, !468, !469, !4074, !4078, !4079}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !464, file: !424, line: 176, baseType: !436, size: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !464, file: !424, line: 177, baseType: !445, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !464, file: !424, line: 178, baseType: !295, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !464, file: !424, line: 179, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !475)
!475 = !{!476, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !4068, !4069, !4070, !4071, !4072, !4073}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !474, file: !14, line: 473, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !479)
!479 = !{!480, !481, !482, !490, !491, !498, !499, !502, !503, !3847, !3848, !3849, !3850, !3851, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3891, !3894, !3895, !3896, !3905, !3906, !3907, !3908}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !478, file: !14, line: 642, baseType: !440, size: 16)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !478, file: !14, line: 643, baseType: !156, size: 16, offset: 16)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !478, file: !14, line: 644, baseType: !483, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !484, line: 23, baseType: !485)
!484 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 21, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !485, file: !484, line: 22, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !242, line: 37, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !432, line: 49, baseType: !7)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !478, file: !14, line: 645, baseType: !241, size: 128, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !478, file: !14, line: 646, baseType: !492, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !484, line: 28, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 26, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !493, file: !484, line: 27, baseType: !496, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !242, line: 38, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !432, line: 50, baseType: !7)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !478, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !478, file: !14, line: 650, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !478, file: !14, line: 651, baseType: !500, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !478, file: !14, line: 654, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !507)
!507 = !{!508, !3675, !3685, !3689, !3693, !3697, !3701, !3705, !3709, !3713, !3717, !3718, !3722, !3726, !3763, !3792, !3796, !3802, !3806, !3810, !3814, !3818, !3822, !3828, !3832}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !506, file: !14, line: 1967, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!512, !477, !512, !7}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !514, line: 82, size: 1536, elements: !515)
!514 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!515 = !{!516, !517, !527, !535, !536, !551, !552, !554, !567, !3658, !3659, !3660, !3661, !3667, !3668, !3669}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !513, file: !514, line: 84, baseType: !7, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !513, file: !514, line: 85, baseType: !518, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !519, line: 275, baseType: !520)
!519 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !519, line: 275, size: 32, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !520, file: !519, line: 275, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !519, line: 69, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !519, line: 64, size: 32, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !524, file: !519, line: 65, baseType: !7, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !513, file: !514, line: 86, baseType: !528, size: 128, offset: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !529, line: 38, size: 128, elements: !530)
!529 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!530 = !{!531, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !529, line: 39, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !528, file: !529, line: 39, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !513, file: !514, line: 87, baseType: !512, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !513, file: !514, line: 88, baseType: !537, size: 128, offset: 256)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !514, line: 49, size: 128, elements: !538)
!538 = !{!539, !548}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !514, line: 50, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !514, line: 50, size: 64, elements: !541)
!541 = !{!542, !547}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !514, line: 51, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !540, file: !514, line: 51, size: 64, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !543, file: !514, line: 52, baseType: !158, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !543, file: !514, line: 52, baseType: !158, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !540, file: !514, line: 54, baseType: !266, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !537, file: !514, line: 56, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !513, file: !514, line: 89, baseType: !477, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !513, file: !514, line: 91, baseType: !553, size: 256, offset: 448)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !216)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !513, file: !514, line: 94, baseType: !555, size: 64, offset: 704)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !556, line: 25, size: 64, elements: !557)
!556 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !556, line: 26, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !556, line: 26, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !559, file: !556, line: 28, baseType: !267, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !556, line: 30, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !559, file: !556, line: 30, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !563, file: !556, line: 31, baseType: !338, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !563, file: !556, line: 32, baseType: !109, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !513, file: !514, line: 95, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !514, line: 128, size: 1024, align: 512, elements: !571)
!571 = !{!572, !576, !577, !584, !590, !594, !598, !602, !603, !607, !611, !3648, !3652}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !570, file: !514, line: 129, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!109, !512, !7}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !570, file: !514, line: 130, baseType: !573, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !570, file: !514, line: 131, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!109, !581, !583}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !570, file: !514, line: 132, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!109, !581, !7, !223, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !570, file: !514, line: 134, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!109, !581}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !570, file: !514, line: 135, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!109, !512}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !570, file: !514, line: 136, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !512}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !570, file: !514, line: 137, baseType: !599, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !570, file: !514, line: 138, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !512, !477}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !570, file: !514, line: 139, baseType: !608, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!400, !512, !400, !109}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !570, file: !514, line: 140, baseType: !612, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!615, !3647}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !617, line: 70, size: 256, elements: !618)
!617 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!618 = !{!619, !620, !3643, !3644}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !616, file: !617, line: 71, baseType: !512, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !616, file: !617, line: 72, baseType: !621, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !623)
!623 = !{!624, !625, !628, !629, !630, !634, !1112, !1252, !1292, !1382, !1386, !1387, !1388, !1389, !1390, !1399, !1400, !1401, !1402, !1407, !1411, !1412, !1415, !1418, !1421, !1424, !1425, !1426, !1467, !3577, !3578, !3579, !3580, !3581, !3582, !3585, !3586, !3593, !3594, !3595, !3596, !3597, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !622, file: !14, line: 1191, baseType: !241, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !622, file: !14, line: 1192, baseType: !626, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !242, line: 21, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !242, line: 18, baseType: !158)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !622, file: !14, line: 1193, baseType: !152, size: 8, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !622, file: !14, line: 1194, baseType: !272, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !622, file: !14, line: 1195, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !242, line: 52, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !432, line: 88, baseType: !633)
!633 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !622, file: !14, line: 1196, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !637)
!637 = !{!638, !639, !640, !647, !651, !655, !659, !1097, !1098, !1102, !1104, !1105, !1106, !1108, !1109, !1110, !1111}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !14, line: 2367, baseType: !223, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !636, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !636, file: !14, line: 2376, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!109, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !646, line: 32, flags: DIFlagFwdDecl)
!646 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !636, file: !14, line: 2377, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !636, file: !14, line: 2378, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!512, !635, !109, !223, !295}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !636, file: !14, line: 2380, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !621}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !636, file: !14, line: 2381, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !662)
!662 = !{!663, !664, !665, !669, !691, !717, !718, !719, !720, !724, !729, !730, !750, !806, !807, !808, !809, !810, !813, !814, !815, !823, !827, !854, !875, !876, !877, !878, !887, !910, !911, !914, !917, !918, !919, !920, !921, !922, !923, !928, !929, !1055, !1063, !1064, !1065, !1067, !1071, !1072, !1076, !1077, !1078, !1079, !1081, !1082, !1083, !1090, !1091, !1092, !1096}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !661, file: !6, line: 403, baseType: !5, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !661, file: !6, line: 406, baseType: !241, size: 128, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !6, line: 409, baseType: !666, size: 448, offset: 192)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 448, elements: !667)
!667 = !{!668}
!668 = !DISubrange(count: 56)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !661, file: !6, line: 417, baseType: !670, size: 768, offset: 640)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !671)
!671 = !{!672, !673, !674, !675, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !670, file: !6, line: 46, baseType: !325, size: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !670, file: !6, line: 47, baseType: !660, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !670, file: !6, line: 48, baseType: !331, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !670, file: !6, line: 49, baseType: !676, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !670, file: !6, line: 50, baseType: !679, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !681, line: 26, size: 256, elements: !682)
!681 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !680, file: !681, line: 27, baseType: !7, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !680, file: !681, line: 28, baseType: !685, size: 192, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !686, line: 43, size: 192, elements: !687)
!686 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!687 = !{!688, !690}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !685, file: !686, line: 44, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !347, line: 23, baseType: !346)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !685, file: !686, line: 45, baseType: !241, size: 128, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !661, file: !6, line: 418, baseType: !692, size: 64, offset: 1408)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !694)
!694 = !{!695, !696, !701, !705, !709, !713}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !693, file: !6, line: 54, baseType: !436, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !693, file: !6, line: 55, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!430, !692, !700, !400}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !693, file: !6, line: 57, baseType: !702, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!430, !692, !700, !223, !445}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !693, file: !6, line: 59, baseType: !706, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !660, !223}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !693, file: !6, line: 60, baseType: !710, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!109, !660}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !693, file: !6, line: 61, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !660}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !661, file: !6, line: 419, baseType: !223, size: 64, offset: 1472)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !661, file: !6, line: 420, baseType: !223, size: 64, offset: 1536)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !661, file: !6, line: 421, baseType: !331, size: 64, offset: 1600)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !661, file: !6, line: 424, baseType: !721, size: 64, offset: 1664)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !661, file: !6, line: 425, baseType: !725, size: 64, offset: 1728)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !149, line: 20, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !151, line: 26, baseType: !109)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !661, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !661, file: !6, line: 435, baseType: !731, size: 256, offset: 1856)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !732, line: 66, size: 256, elements: !733)
!732 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!733 = !{!734, !743, !744, !749}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !731, file: !732, line: 67, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !736, line: 13, baseType: !737)
!736 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !242, line: 181, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 179, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !738, file: !242, line: 180, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !149, line: 22, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !151, line: 30, baseType: !633)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !731, file: !732, line: 68, baseType: !689, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !731, file: !732, line: 70, baseType: !745, size: 32, offset: 96)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !746, line: 15, size: 32, elements: !747)
!746 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !745, file: !746, line: 20, baseType: !358, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !731, file: !732, line: 72, baseType: !241, size: 128, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !661, file: !6, line: 437, baseType: !751, size: 64, offset: 2112)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !753, line: 69, size: 320, elements: !754)
!753 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!754 = !{!755, !756, !757, !777, !779, !783, !784}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !752, file: !753, line: 70, baseType: !223, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !752, file: !753, line: 71, baseType: !660, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !752, file: !753, line: 72, baseType: !758, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !753, line: 47, size: 256, elements: !761)
!761 = !{!762, !763, !769, !773}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !753, line: 49, baseType: !7, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !760, file: !753, line: 51, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!109, !223, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !760, file: !753, line: 53, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!109, !400, !767}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !760, file: !753, line: 55, baseType: !774, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !295}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !752, file: !753, line: 73, baseType: !778, size: 16, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !752, file: !753, line: 74, baseType: !780, size: 8, offset: 208)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !149, line: 16, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !151, line: 20, baseType: !782)
!782 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !753, line: 75, baseType: !148, size: 8, offset: 216)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !753, line: 76, baseType: !785, size: 64, offset: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !753, line: 76, size: 64, elements: !786)
!786 = !{!787, !788, !795}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !785, file: !753, line: 77, baseType: !295, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !785, file: !753, line: 78, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !753, line: 86, size: 128, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !791, file: !753, line: 87, baseType: !7, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !791, file: !753, line: 88, baseType: !400, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !785, file: !753, line: 79, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !753, line: 92, size: 256, elements: !799)
!799 = !{!800, !801, !802, !804, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !798, file: !753, line: 94, baseType: !7, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !798, file: !753, line: 95, baseType: !7, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !798, file: !753, line: 96, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !798, file: !753, line: 97, baseType: !758, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !798, file: !753, line: 98, baseType: !295, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !661, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !661, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !661, file: !6, line: 442, baseType: !721, size: 64, offset: 2240)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !661, file: !6, line: 443, baseType: !725, size: 64, offset: 2304)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !661, file: !6, line: 444, baseType: !811, size: 8, offset: 2368)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !242, line: 35, baseType: !812)
!812 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !661, file: !6, line: 451, baseType: !811, size: 8, offset: 2376)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !661, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !661, file: !6, line: 455, baseType: !816, size: 64, offset: 2432)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !818, line: 23, size: 96, elements: !819)
!818 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!819 = !{!820, !821, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !817, file: !818, line: 24, baseType: !109, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !817, file: !818, line: 24, baseType: !109, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !817, file: !818, line: 24, baseType: !109, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !661, file: !6, line: 458, baseType: !824, size: 64, offset: 2496)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!109}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !661, file: !6, line: 460, baseType: !828, size: 4032, align: 512, offset: 2560)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 4032, elements: !852)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !829, file: !6, line: 363, baseType: !295, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !829, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !829, file: !6, line: 367, baseType: !834, size: 448, offset: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !834, file: !6, line: 320, baseType: !660, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !834, file: !6, line: 321, baseType: !838, size: 384, offset: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !839, line: 40, size: 384, elements: !840)
!839 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !838, file: !839, line: 41, baseType: !842, size: 384, align: 64)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 384, align: 64, elements: !850)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !844, line: 5, size: 192, align: 64, elements: !845)
!844 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!845 = !{!846, !847, !849}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !843, file: !844, line: 6, baseType: !272, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !843, file: !844, line: 7, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !843, file: !844, line: 8, baseType: !848, size: 64, offset: 128)
!850 = !{!851}
!851 = !DISubrange(count: 2)
!852 = !{!853}
!853 = !DISubrange(count: 7)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !661, file: !6, line: 463, baseType: !855, size: 192, offset: 6592)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !856, line: 8, size: 192, elements: !857)
!856 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!857 = !{!858, !859, !861}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !855, file: !856, line: 10, baseType: !7, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !855, file: !856, line: 11, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !855, file: !856, line: 12, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !864, line: 59, size: 48, elements: !865)
!864 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!865 = !{!866, !870, !871, !872, !873, !874}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !863, file: !864, line: 60, baseType: !867, size: 16)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !149, line: 18, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !151, line: 23, baseType: !869)
!869 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !863, file: !864, line: 61, baseType: !867, size: 16, offset: 16)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !863, file: !864, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !863, file: !864, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !863, file: !864, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !863, file: !864, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !661, file: !6, line: 465, baseType: !272, size: 64, offset: 6784)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !661, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !661, file: !6, line: 470, baseType: !241, size: 128, offset: 6912)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !661, file: !6, line: 471, baseType: !879, size: 64, offset: 7040)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !881, line: 33, size: 96, elements: !882)
!881 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!882 = !{!883, !884, !885, !886}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !880, file: !881, line: 37, baseType: !109, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !880, file: !881, line: 43, baseType: !109, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !880, file: !881, line: 45, baseType: !156, size: 16, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !880, file: !881, line: 47, baseType: !156, size: 16, offset: 80)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !661, file: !6, line: 476, baseType: !888, size: 64, offset: 7104)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !890)
!890 = !{!891, !907, !908, !909}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !889, file: !6, line: 379, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !894, line: 204, baseType: !895)
!894 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !894, line: 197, size: 192, elements: !896)
!896 = !{!897, !899, !900, !901, !903, !905}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !895, file: !894, line: 198, baseType: !898, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !894, line: 21, baseType: !159)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !895, file: !894, line: 199, baseType: !152, size: 8, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !895, file: !894, line: 200, baseType: !152, size: 8, offset: 40)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !895, file: !894, line: 201, baseType: !902, size: 16, offset: 48)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !894, line: 17, baseType: !155)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !895, file: !894, line: 202, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !894, line: 16, baseType: !267)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !895, file: !894, line: 203, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !894, line: 22, baseType: !267)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !889, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !889, file: !6, line: 381, baseType: !400, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !889, file: !6, line: 382, baseType: !400, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !661, file: !6, line: 477, baseType: !889, size: 256, offset: 7168)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !661, file: !6, line: 480, baseType: !912, size: 64, offset: 7424)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !661, file: !6, line: 483, baseType: !915, size: 64, offset: 7488)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !661, file: !6, line: 488, baseType: !400, size: 64, offset: 7552)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !661, file: !6, line: 492, baseType: !295, size: 64, offset: 7616)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !661, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !661, file: !6, line: 495, baseType: !295, size: 64, offset: 7744)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !661, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !661, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !661, file: !6, line: 500, baseType: !924, size: 64, offset: 7872)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !926, line: 45, baseType: !927)
!926 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !661, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !661, file: !6, line: 504, baseType: !930, size: 64, offset: 8000)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !933, line: 96, size: 192, elements: !934)
!933 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!934 = !{!935, !936, !1015, !1019}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !932, file: !933, line: 97, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !932, file: !933, line: 98, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !933, line: 24, size: 3072, elements: !939)
!939 = !{!940, !942, !943, !944, !945, !967, !968, !969, !970, !988, !1000, !1001, !1012, !1013, !1014}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !938, file: !933, line: 26, baseType: !941, size: 128)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 128, elements: !850)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !938, file: !933, line: 27, baseType: !941, size: 128, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !938, file: !933, line: 28, baseType: !109, size: 32, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !933, line: 31, baseType: !338, size: 32, align: 512, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !938, file: !933, line: 32, baseType: !946, size: 960, offset: 576)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !947, line: 206, size: 960, elements: !948)
!947 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!948 = !{!949, !958, !961, !963, !964, !966}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !946, file: !947, line: 207, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !242, line: 232, size: 128, align: 64, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !242, line: 233, baseType: !950, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !951, file: !242, line: 234, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !950}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !946, file: !947, line: 208, baseType: !959, size: 256, offset: 64)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 256, elements: !196)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !946, file: !947, line: 209, baseType: !962, size: 256, offset: 320)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !196)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !946, file: !947, line: 213, baseType: !434, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !946, file: !947, line: 215, baseType: !965, size: 256, offset: 640)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 256, elements: !196)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 216, baseType: !148, size: 8, offset: 896)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !938, file: !933, line: 33, baseType: !272, size: 64, offset: 1536)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !938, file: !933, line: 34, baseType: !272, size: 64, offset: 1600)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !938, file: !933, line: 35, baseType: !811, size: 8, offset: 1664)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !938, file: !933, line: 36, baseType: !971, size: 320, offset: 1728)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !972, line: 11, size: 320, elements: !973)
!972 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!973 = !{!974, !981, !982, !987}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !971, file: !972, line: 16, baseType: !975, size: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !242, line: 198, size: 128, elements: !976)
!976 = !{!977, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !975, file: !242, line: 199, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !975, file: !242, line: 199, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !971, file: !972, line: 17, baseType: !272, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !971, file: !972, line: 18, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !971, file: !972, line: 19, baseType: !158, size: 32, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !938, file: !933, line: 37, baseType: !989, size: 256, offset: 2048)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !990, line: 98, size: 256, elements: !991)
!990 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!991 = !{!992, !993, !994}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !989, file: !990, line: 99, baseType: !735, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !989, file: !990, line: 100, baseType: !241, size: 128, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !989, file: !990, line: 101, baseType: !995, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !990, line: 21, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !938, file: !933, line: 38, baseType: !951, size: 128, align: 64, offset: 2304)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !938, file: !933, line: 39, baseType: !1002, size: 64, offset: 2432)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !933, line: 49, size: 768, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1003, file: !933, line: 50, baseType: !338, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1003, file: !933, line: 51, baseType: !962, size: 256, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1003, file: !933, line: 53, baseType: !962, size: 256, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1003, file: !933, line: 54, baseType: !272, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1003, file: !933, line: 55, baseType: !1002, size: 64, offset: 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1003, file: !933, line: 56, baseType: !109, size: 32, offset: 704)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1003, file: !933, line: 57, baseType: !109, size: 32, offset: 736)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !938, file: !933, line: 40, baseType: !272, size: 64, offset: 2496)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !938, file: !933, line: 42, baseType: !109, size: 32, offset: 2560)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !938, file: !933, line: 43, baseType: !931, size: 64, offset: 2624)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !932, file: !933, line: 99, baseType: !1016, offset: 128)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1017, line: 211, elements: !1018)
!1017 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1018 = !{}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !932, file: !933, line: 100, baseType: !1020, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !933, line: 63, size: 3008, elements: !1022)
!1022 = !{!1023, !1024, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1054}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1021, file: !933, line: 64, baseType: !1002, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1021, file: !933, line: 65, baseType: !1025, size: 192, offset: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1002, size: 192, elements: !191)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1021, file: !933, line: 67, baseType: !109, size: 32, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1021, file: !933, line: 68, baseType: !731, size: 256, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1021, file: !933, line: 69, baseType: !338, size: 32, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1021, file: !933, line: 70, baseType: !731, size: 256, offset: 640)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1021, file: !933, line: 71, baseType: !272, size: 64, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1021, file: !933, line: 72, baseType: !272, size: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1021, file: !933, line: 73, baseType: !272, size: 64, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1021, file: !933, line: 74, baseType: !272, size: 64, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1021, file: !933, line: 75, baseType: !272, size: 64, offset: 1152)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1021, file: !933, line: 76, baseType: !272, size: 64, offset: 1216)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1021, file: !933, line: 77, baseType: !272, size: 64, offset: 1280)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1021, file: !933, line: 78, baseType: !272, size: 64, offset: 1344)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1021, file: !933, line: 79, baseType: !811, size: 8, offset: 1408)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1021, file: !933, line: 80, baseType: !272, size: 64, offset: 1472)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1021, file: !933, line: 81, baseType: !731, size: 256, offset: 1536)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1021, file: !933, line: 82, baseType: !680, size: 256, offset: 1792)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1021, file: !933, line: 84, baseType: !358, size: 32, offset: 2048)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1021, file: !933, line: 87, baseType: !272, size: 64, offset: 2112)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1021, file: !933, line: 88, baseType: !272, size: 64, offset: 2176)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1021, file: !933, line: 89, baseType: !1046, size: 704, offset: 2240)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !990, line: 111, size: 704, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1053}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1046, file: !990, line: 112, baseType: !989, size: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1046, file: !990, line: 113, baseType: !971, size: 320, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1046, file: !990, line: 116, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !990, line: 18, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1046, file: !990, line: 117, baseType: !109, size: 32, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1021, file: !933, line: 90, baseType: !931, size: 64, offset: 2944)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !661, file: !6, line: 515, baseType: !1056, size: 64, offset: 8064)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1058, line: 117, size: 128, elements: !1059)
!1058 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1057, file: !1058, line: 118, baseType: !727, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1057, file: !1058, line: 119, baseType: !727, size: 32, offset: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1057, file: !1058, line: 120, baseType: !434, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !661, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !661, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !661, file: !6, line: 520, baseType: !1066, size: 64, offset: 8192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !661, file: !6, line: 523, baseType: !1068, size: 64, offset: 8256)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !661, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !661, file: !6, line: 525, baseType: !1073, size: 64, offset: 8384)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !661, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !661, file: !6, line: 533, baseType: !295, size: 64, offset: 8512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !661, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !661, file: !6, line: 535, baseType: !1080, size: 64, offset: 8640)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !661, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !661, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !661, file: !6, line: 540, baseType: !1084, size: 64, offset: 8768)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1086, line: 32, size: 64, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1085, file: !1086, line: 33, baseType: !727, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1085, file: !1086, line: 34, baseType: !727, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !661, file: !6, line: 563, baseType: !241, size: 128, offset: 8832)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !661, file: !6, line: 565, baseType: !241, size: 128, offset: 8960)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !661, file: !6, line: 568, baseType: !1093, size: 64, offset: 9088)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !661, file: !6, line: 570, baseType: !358, size: 32, offset: 9152)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !14, line: 2382, baseType: !635, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !636, file: !14, line: 2383, baseType: !1099, size: 64, offset: 512)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !242, line: 194, size: 64, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1099, file: !242, line: 195, baseType: !978, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !636, file: !14, line: 2385, baseType: !1103, offset: 576)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1017, line: 206, elements: !1018)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !636, file: !14, line: 2386, baseType: !1103, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !636, file: !14, line: 2387, baseType: !1103, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !636, file: !14, line: 2388, baseType: !1107, offset: 576)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1103, elements: !191)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !636, file: !14, line: 2390, baseType: !1103, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !636, file: !14, line: 2391, baseType: !1103, offset: 576)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !636, file: !14, line: 2392, baseType: !1103, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !636, file: !14, line: 2393, baseType: !1103, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !622, file: !14, line: 1197, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1116)
!1116 = !{!1117, !1121, !1125, !1126, !1130, !1136, !1140, !1141, !1142, !1146, !1150, !1154, !1155, !1156, !1162, !1166, !1167, !1174, !1175, !1176, !1177, !1181, !1185, !1234, !1250, !1251}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1115, file: !14, line: 2058, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!477, !621}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1115, file: !14, line: 2059, baseType: !1122, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !477}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1115, file: !14, line: 2060, baseType: !1122, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1115, file: !14, line: 2062, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !477, !109}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1115, file: !14, line: 2063, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!109, !477, !1134}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1115, file: !14, line: 2064, baseType: !1137, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!109, !477}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1115, file: !14, line: 2065, baseType: !1122, size: 64, offset: 384)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1115, file: !14, line: 2066, baseType: !656, size: 64, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1115, file: !14, line: 2067, baseType: !1143, size: 64, offset: 512)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!109, !621, !109}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1115, file: !14, line: 2068, baseType: !1147, size: 64, offset: 576)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!109, !621, !13}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1115, file: !14, line: 2069, baseType: !1151, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!109, !621}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1115, file: !14, line: 2070, baseType: !1147, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1115, file: !14, line: 2071, baseType: !1151, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1115, file: !14, line: 2072, baseType: !1157, size: 64, offset: 832)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!109, !512, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1115, file: !14, line: 2073, baseType: !1163, size: 64, offset: 896)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!109, !621, !860, !400}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1115, file: !14, line: 2074, baseType: !656, size: 64, offset: 960)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1115, file: !14, line: 2076, baseType: !1168, size: 64, offset: 1024)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!109, !1171, !512}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1173, line: 66, flags: DIFlagFwdDecl)
!1173 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1115, file: !14, line: 2077, baseType: !1168, size: 64, offset: 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1115, file: !14, line: 2078, baseType: !1168, size: 64, offset: 1152)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1115, file: !14, line: 2079, baseType: !1168, size: 64, offset: 1216)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1115, file: !14, line: 2081, baseType: !1178, size: 64, offset: 1280)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!430, !621, !109, !400, !445, !631}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1115, file: !14, line: 2082, baseType: !1182, size: 64, offset: 1344)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!430, !621, !109, !223, !445, !631}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1115, file: !14, line: 2083, baseType: !1186, size: 64, offset: 1408)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1189, !477}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1217, !1218, !1219}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1191, file: !19, line: 297, baseType: !975, size: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1191, file: !19, line: 298, baseType: !241, size: 128, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1191, file: !19, line: 299, baseType: !241, size: 128, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1191, file: !19, line: 300, baseType: !241, size: 128, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1191, file: !19, line: 301, baseType: !731, size: 256, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1191, file: !19, line: 302, baseType: !338, size: 32, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1191, file: !19, line: 303, baseType: !358, size: 32, offset: 800)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1191, file: !19, line: 304, baseType: !621, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1191, file: !19, line: 305, baseType: !1202, size: 64, offset: 896)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1203)
!1203 = !{!1204, !1216}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !19, line: 69, baseType: !1205, size: 32)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1202, file: !19, line: 69, size: 32, elements: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1205, file: !19, line: 70, baseType: !483, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1205, file: !19, line: 71, baseType: !492, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1205, file: !19, line: 72, baseType: !1210, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1211, line: 24, baseType: !1212)
!1211 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1211, line: 22, size: 32, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1212, file: !1211, line: 23, baseType: !1215, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1211, line: 20, baseType: !489)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1202, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1191, file: !19, line: 306, baseType: !631, size: 64, offset: 960)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1191, file: !19, line: 307, baseType: !272, size: 64, offset: 1024)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1191, file: !19, line: 308, baseType: !1220, size: 576, offset: 1088)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1221)
!1221 = !{!1222, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1233}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1220, file: !19, line: 206, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !633)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1220, file: !19, line: 207, baseType: !1223, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1220, file: !19, line: 208, baseType: !1223, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1220, file: !19, line: 209, baseType: !1223, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1220, file: !19, line: 210, baseType: !1223, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1220, file: !19, line: 211, baseType: !1223, size: 64, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1220, file: !19, line: 212, baseType: !1223, size: 64, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1220, file: !19, line: 213, baseType: !1231, size: 64, offset: 448)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1232, line: 8, baseType: !742)
!1232 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1220, file: !19, line: 214, baseType: !1231, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1115, file: !14, line: 2085, baseType: !1235, size: 64, offset: 1472)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!434, !621, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1240, line: 15, size: 256, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1241 = !{!1242, !1244, !1245, !1246, !1247}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1239, file: !1240, line: 16, baseType: !1243, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !242, line: 154, baseType: !7)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1239, file: !1240, line: 19, baseType: !109, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1239, file: !1240, line: 26, baseType: !272, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1239, file: !1240, line: 33, baseType: !272, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1239, file: !1240, line: 36, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1115, file: !14, line: 2087, baseType: !1235, size: 64, offset: 1536)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1115, file: !14, line: 2089, baseType: !656, size: 64, offset: 1600)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !622, file: !14, line: 1198, baseType: !1253, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1256)
!1256 = !{!1257, !1261, !1265, !1269, !1270, !1271, !1272, !1273, !1278, !1283, !1287}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1255, file: !19, line: 325, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !1190}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1255, file: !19, line: 326, baseType: !1262, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1190, !621, !109}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1255, file: !19, line: 327, baseType: !1266, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1190}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1255, file: !19, line: 328, baseType: !1258, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1255, file: !19, line: 329, baseType: !1258, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1255, file: !19, line: 330, baseType: !1258, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1255, file: !19, line: 331, baseType: !1143, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1255, file: !19, line: 334, baseType: !1274, size: 64, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1277, !477}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1255, file: !19, line: 335, baseType: !1279, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!109, !477, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1255, file: !19, line: 337, baseType: !1284, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!109, !477, !1277}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1255, file: !19, line: 339, baseType: !1288, size: 64, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!109, !621, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !622, file: !14, line: 1199, baseType: !1293, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1296)
!1296 = !{!1297, !1308, !1309, !1313, !1314, !1315, !1330, !1353, !1357, !1358, !1381}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1295, file: !19, line: 431, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!109, !621, !109, !109, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1304, line: 8, size: 128, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1303, file: !1304, line: 9, baseType: !615, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1303, file: !1304, line: 10, baseType: !512, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1295, file: !19, line: 432, baseType: !1143, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1295, file: !19, line: 433, baseType: !1310, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!109, !621, !7}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1295, file: !19, line: 434, baseType: !1310, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1295, file: !19, line: 435, baseType: !1143, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1295, file: !19, line: 436, baseType: !1316, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!109, !621, !109, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1320, file: !19, line: 418, baseType: !109, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1320, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1320, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1320, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1320, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1320, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1320, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1320, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1295, file: !19, line: 437, baseType: !1331, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!109, !621, !1202, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1335, file: !19, line: 346, baseType: !109, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1335, file: !19, line: 347, baseType: !266, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1335, file: !19, line: 348, baseType: !266, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1335, file: !19, line: 349, baseType: !266, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1335, file: !19, line: 350, baseType: !266, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1335, file: !19, line: 351, baseType: !266, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1335, file: !19, line: 352, baseType: !266, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1335, file: !19, line: 353, baseType: !741, size: 64, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1335, file: !19, line: 355, baseType: !741, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1335, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1335, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1335, file: !19, line: 358, baseType: !266, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1335, file: !19, line: 359, baseType: !266, size: 64, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1335, file: !19, line: 360, baseType: !266, size: 64, offset: 768)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1335, file: !19, line: 361, baseType: !741, size: 64, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1335, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1295, file: !19, line: 438, baseType: !1354, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!109, !621, !1291, !1334}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1295, file: !19, line: 440, baseType: !1331, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1295, file: !19, line: 441, baseType: !1359, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!109, !621, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1363, file: !19, line: 412, baseType: !7, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1363, file: !19, line: 413, baseType: !1367, size: 1344, offset: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1368, size: 1344, elements: !191)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1380}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !19, line: 398, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1368, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1368, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1368, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1368, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1368, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1368, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1368, file: !19, line: 406, baseType: !268, size: 64, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1368, file: !19, line: 407, baseType: !1379, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !242, line: 132, baseType: !266)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1368, file: !19, line: 408, baseType: !1379, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1295, file: !19, line: 442, baseType: !1310, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !622, file: !14, line: 1200, baseType: !1383, size: 64, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !622, file: !14, line: 1201, baseType: !272, size: 64, offset: 640)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !622, file: !14, line: 1202, baseType: !272, size: 64, offset: 704)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !622, file: !14, line: 1203, baseType: !272, size: 64, offset: 768)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !622, file: !14, line: 1204, baseType: !512, size: 64, offset: 832)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !622, file: !14, line: 1205, baseType: !1391, size: 320, offset: 896)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1392, line: 48, size: 320, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1393 = !{!1394, !1395, !1396, !1397, !1398}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1391, file: !1392, line: 49, baseType: !735, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1391, file: !1392, line: 55, baseType: !735, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1391, file: !1392, line: 57, baseType: !745, size: 32, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1391, file: !1392, line: 59, baseType: !689, size: 32, offset: 160)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1391, file: !1392, line: 60, baseType: !241, size: 128, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !622, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !622, file: !14, line: 1207, baseType: !358, size: 32, offset: 1248)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !622, file: !14, line: 1209, baseType: !295, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !622, file: !14, line: 1211, baseType: !1403, size: 64, offset: 1344)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !622, file: !14, line: 1223, baseType: !1408, size: 64, offset: 1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !529, line: 34, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1408, file: !529, line: 35, baseType: !532, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !622, file: !14, line: 1224, baseType: !241, size: 128, offset: 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !622, file: !14, line: 1225, baseType: !1413, size: 64, offset: 1600)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !622, file: !14, line: 1226, baseType: !1416, size: 64, offset: 1664)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !622, file: !14, line: 1227, baseType: !1419, size: 64, offset: 1728)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !622, file: !14, line: 1228, baseType: !1422, size: 64, offset: 1792)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !622, file: !14, line: 1229, baseType: !975, size: 128, offset: 1856)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !622, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !622, file: !14, line: 1231, baseType: !1427, size: 2496, offset: 2048)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1433, !1465}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !19, line: 522, baseType: !7, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1427, file: !19, line: 523, baseType: !1391, size: 320, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1427, file: !19, line: 524, baseType: !1432, size: 192, offset: 384)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 192, elements: !191)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1427, file: !19, line: 525, baseType: !1434, size: 1728, offset: 576)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 1728, elements: !191)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1436)
!1436 = !{!1437, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1435, file: !19, line: 223, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1440)
!1440 = !{!1441, !1442, !1455, !1456}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1439, file: !19, line: 446, baseType: !109, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1439, file: !19, line: 447, baseType: !1443, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1445, file: !19, line: 313, baseType: !1143, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1445, file: !19, line: 314, baseType: !1143, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1445, file: !19, line: 315, baseType: !1143, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1445, file: !19, line: 316, baseType: !1143, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1445, file: !19, line: 317, baseType: !1258, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1445, file: !19, line: 318, baseType: !1258, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1445, file: !19, line: 319, baseType: !1258, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1445, file: !19, line: 320, baseType: !1288, size: 64, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1439, file: !19, line: 448, baseType: !660, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1439, file: !19, line: 449, baseType: !1438, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1435, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1435, file: !19, line: 226, baseType: !241, size: 128, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1435, file: !19, line: 227, baseType: !272, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1435, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1435, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1435, file: !19, line: 230, baseType: !1223, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1435, file: !19, line: 231, baseType: !1223, size: 64, offset: 448)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1435, file: !19, line: 232, baseType: !295, size: 64, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1427, file: !19, line: 526, baseType: !1466, size: 192, offset: 2304)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 192, elements: !191)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !622, file: !14, line: 1233, baseType: !1468, size: 2368, offset: 4544)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1468, file: !14, line: 1185, baseType: !156, size: 16)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1468, file: !14, line: 1186, baseType: !156, size: 16, offset: 16)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1468, file: !14, line: 1187, baseType: !1473, size: 2304, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1474, size: 2304, elements: !191)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1475, line: 12, size: 768, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1476 = !{!1477, !1491, !1492, !3575, !3576}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1474, file: !1475, line: 13, baseType: !1478, size: 384)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1479, line: 17, size: 384, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1480 = !{!1481, !1482, !1483, !1490}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1478, file: !1479, line: 18, baseType: !109, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1478, file: !1479, line: 19, baseType: !109, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1478, file: !1479, line: 20, baseType: !1484, size: 192, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1485, line: 41, baseType: !1486)
!1485 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1485, line: 37, size: 192, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !1485, line: 38, baseType: !338, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1486, file: !1485, line: 39, baseType: !241, size: 128, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1478, file: !1479, line: 22, baseType: !951, size: 128, align: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1474, file: !1475, line: 14, baseType: !803, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1474, file: !1475, line: 15, baseType: !1493, size: 64, offset: 448)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1494, line: 16, size: 64, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1493, file: !1494, line: 17, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1173, line: 746, size: 58368, elements: !1499)
!1499 = !{!1500, !1508, !1509, !1510, !1516, !1517, !1518, !1519, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1590, !1601, !1696, !1700, !1703, !1734, !1735, !1736, !1737, !1748, !1750, !1751, !1752, !1753, !1754, !1755, !1766, !1767, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1784, !1785, !1792, !1793, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2751, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2799, !2805, !2806, !2807, !2808, !2809, !2813, !2816, !2823, !2828, !2831, !2834, !2837, !2840, !2978, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3016, !3017, !3018, !3027, !3035, !3036, !3037, !3038, !3039, !3044, !3045, !3046, !3049, !3050, !3053, !3056, !3059, !3067, !3070, !3071, !3157, !3158, !3159, !3160, !3161, !3167, !3168, !3169, !3170, !3173, !3174, !3177, !3180, !3181, !3184, !3185, !3186, !3189, !3190, !3191, !3192, !3193, !3194, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3226, !3227, !3233, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3245, !3317, !3319, !3320, !3321, !3322, !3323, !3324, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3352, !3353, !3354}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1498, file: !1173, line: 752, baseType: !1501, size: 192)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1502, line: 56, size: 192, elements: !1503)
!1502 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1503 = !{!1504, !1505, !1506, !1507}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1501, file: !1502, line: 57, baseType: !272, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1501, file: !1502, line: 58, baseType: !272, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1501, file: !1502, line: 59, baseType: !158, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1501, file: !1502, line: 61, baseType: !158, size: 32, offset: 160)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1498, file: !1173, line: 754, baseType: !7, size: 32, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1498, file: !1173, line: 767, baseType: !295, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1498, file: !1173, line: 768, baseType: !1511, size: 32, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1512, line: 113, baseType: !1513)
!1512 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1512, line: 111, size: 32, elements: !1514)
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1513, file: !1512, line: 112, baseType: !358, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1173, line: 770, baseType: !7, size: 32, offset: 352)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1498, file: !1173, line: 771, baseType: !7, size: 32, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1498, file: !1173, line: 774, baseType: !109, size: 32, offset: 416)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1498, file: !1173, line: 775, baseType: !1520, size: 128, offset: 448)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1521, line: 58, size: 128, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1522 = !{!1523, !1529, !1534, !1535}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1520, file: !1521, line: 59, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1525, line: 60, size: 64, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1524, file: !1525, line: 61, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 60, baseType: !1530, size: 32, offset: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 60, size: 32, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1530, file: !1521, line: 61, baseType: !7, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1530, file: !1521, line: 62, baseType: !358, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1520, file: !1521, line: 65, baseType: !154, size: 16, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1520, file: !1521, line: 65, baseType: !154, size: 16, offset: 112)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1498, file: !1173, line: 776, baseType: !7, size: 32, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1498, file: !1173, line: 777, baseType: !272, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1498, file: !1173, line: 778, baseType: !1497, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1498, file: !1173, line: 787, baseType: !109, size: 32, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1498, file: !1173, line: 788, baseType: !109, size: 32, offset: 800)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1498, file: !1173, line: 790, baseType: !109, size: 32, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1498, file: !1173, line: 792, baseType: !109, size: 32, offset: 864)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1498, file: !1173, line: 793, baseType: !109, size: 32, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1498, file: !1173, line: 794, baseType: !109, size: 32, offset: 928)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1498, file: !1173, line: 795, baseType: !7, size: 32, offset: 960)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1498, file: !1173, line: 797, baseType: !1547, size: 2048, offset: 1024)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1173, line: 551, size: 2048, elements: !1548)
!1548 = !{!1549, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1569, !1572, !1573, !1574}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1547, file: !1173, line: 553, baseType: !1550, size: 128)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1173, line: 411, size: 128, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1550, file: !1173, line: 412, baseType: !272, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1550, file: !1173, line: 413, baseType: !158, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1547, file: !1173, line: 554, baseType: !843, size: 192, align: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1547, file: !1173, line: 555, baseType: !266, size: 64, offset: 320)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1547, file: !1173, line: 556, baseType: !266, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1547, file: !1173, line: 558, baseType: !241, size: 128, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1547, file: !1173, line: 559, baseType: !7, size: 32, offset: 576)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1547, file: !1173, line: 561, baseType: !266, size: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1547, file: !1173, line: 562, baseType: !266, size: 64, offset: 704)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1547, file: !1173, line: 563, baseType: !266, size: 64, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1547, file: !1173, line: 564, baseType: !266, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1547, file: !1173, line: 565, baseType: !741, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1547, file: !1173, line: 566, baseType: !266, size: 64, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1547, file: !1173, line: 568, baseType: !266, size: 64, offset: 1024)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1547, file: !1173, line: 571, baseType: !109, size: 32, offset: 1088)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1547, file: !1173, line: 572, baseType: !1568, size: 64, offset: 1152)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1547, file: !1173, line: 574, baseType: !1570, size: 64, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1173, line: 49, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1547, file: !1173, line: 576, baseType: !1570, size: 64, offset: 1280)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1547, file: !1173, line: 578, baseType: !272, size: 64, offset: 1344)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1547, file: !1173, line: 588, baseType: !1575, size: 512, align: 512, offset: 1536)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1173, line: 497, size: 512, align: 512, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1575, file: !1173, line: 498, baseType: !266, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1575, file: !1173, line: 499, baseType: !266, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1575, file: !1173, line: 500, baseType: !266, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1575, file: !1173, line: 501, baseType: !158, size: 32, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1575, file: !1173, line: 502, baseType: !158, size: 32, offset: 224)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1575, file: !1173, line: 503, baseType: !272, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1575, file: !1173, line: 504, baseType: !272, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1575, file: !1173, line: 505, baseType: !272, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1575, file: !1173, line: 506, baseType: !1586, size: 64, align: 64, offset: 448)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1173, line: 445, size: 64, align: 64, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1586, file: !1173, line: 446, baseType: !7, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1586, file: !1173, line: 447, baseType: !7, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1498, file: !1173, line: 798, baseType: !1591, size: 384, offset: 3072)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1173, line: 592, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1591, file: !1173, line: 593, baseType: !241, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1591, file: !1173, line: 594, baseType: !272, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1591, file: !1173, line: 595, baseType: !272, size: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1591, file: !1173, line: 596, baseType: !7, size: 32, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1591, file: !1173, line: 597, baseType: !156, size: 16, offset: 288)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1591, file: !1173, line: 598, baseType: !156, size: 16, offset: 304)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1591, file: !1173, line: 600, baseType: !1600, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1498, file: !1173, line: 799, baseType: !1602, size: 1792, offset: 3456)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1173, line: 610, size: 1792, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1693, !1694}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1602, file: !1173, line: 611, baseType: !843, size: 192, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1602, file: !1173, line: 618, baseType: !266, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1602, file: !1173, line: 619, baseType: !266, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1602, file: !1173, line: 620, baseType: !266, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1602, file: !1173, line: 621, baseType: !266, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1602, file: !1173, line: 622, baseType: !266, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1602, file: !1173, line: 629, baseType: !741, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1602, file: !1173, line: 630, baseType: !266, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !1173, line: 631, baseType: !7, size: 32, offset: 640)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1602, file: !1173, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1602, file: !1173, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1602, file: !1173, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1602, file: !1173, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1602, file: !1173, line: 662, baseType: !1618, size: 512, offset: 704)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1619)
!1619 = !{!1620, !1628, !1629, !1634, !1689, !1690, !1691, !1692}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1618, file: !25, line: 119, baseType: !1621, size: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1622, line: 9, size: 256, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1621, file: !1622, line: 10, baseType: !843, size: 192, align: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1621, file: !1622, line: 11, baseType: !1626, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1627, line: 29, baseType: !741)
!1627 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1618, file: !25, line: 120, baseType: !1626, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1618, file: !25, line: 121, baseType: !1630, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!24, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1618, file: !25, line: 122, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1637)
!1637 = !{!1638, !1663, !1664, !1667, !1672, !1673, !1684, !1688}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1636, file: !25, line: 160, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1640, file: !25, line: 216, baseType: !689, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1640, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1640, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1640, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1640, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1640, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1640, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1640, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1640, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1640, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1640, file: !25, line: 227, baseType: !156, size: 16, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1640, file: !25, line: 228, baseType: !156, size: 16, offset: 208)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1640, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1640, file: !25, line: 235, baseType: !1626, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1640, file: !25, line: 236, baseType: !1633, size: 64, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1640, file: !25, line: 237, baseType: !1626, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1640, file: !25, line: 238, baseType: !1633, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1640, file: !25, line: 239, baseType: !1660, size: 4096, align: 512, offset: 512)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1636, size: 4096, align: 512, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 8)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1636, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1636, file: !25, line: 162, baseType: !1665, size: 32, offset: 96)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !242, line: 32, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !432, line: 96, baseType: !109)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1636, file: !25, line: 163, baseType: !1668, size: 32, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !519, line: 274, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !519, line: 274, size: 32, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1669, file: !519, line: 274, baseType: !523, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1636, file: !25, line: 164, baseType: !1633, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1636, file: !25, line: 165, baseType: !1674, size: 128, offset: 256)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1622, line: 14, size: 128, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1674, file: !1622, line: 15, baseType: !1677, size: 128)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !844, line: 26, size: 128, elements: !1678)
!1678 = !{!1679, !1683}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1677, file: !844, line: 27, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !844, line: 12, size: 64, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1680, file: !844, line: 13, baseType: !848, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1677, file: !844, line: 28, baseType: !848, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1636, file: !25, line: 166, baseType: !1685, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1626}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1636, file: !25, line: 167, baseType: !1626, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1618, file: !25, line: 123, baseType: !148, size: 8, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1618, file: !25, line: 124, baseType: !148, size: 8, offset: 456)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1618, file: !25, line: 125, baseType: !148, size: 8, offset: 464)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1618, file: !25, line: 126, baseType: !148, size: 8, offset: 472)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1602, file: !1173, line: 671, baseType: !1618, size: 512, offset: 1216)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1602, file: !1173, line: 679, baseType: !1695, size: 64, offset: 1728)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1498, file: !1173, line: 800, baseType: !1697, size: 64, offset: 5248)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1173, line: 800, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1498, file: !1173, line: 809, baseType: !1701, size: 64, offset: 5312)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1173, line: 70, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1498, file: !1173, line: 825, baseType: !1704, size: 2048, align: 512, offset: 5632)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1173, line: 509, size: 2048, align: 512, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1704, file: !1173, line: 511, baseType: !266, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1704, file: !1173, line: 512, baseType: !266, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1704, file: !1173, line: 513, baseType: !266, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1704, file: !1173, line: 514, baseType: !266, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1704, file: !1173, line: 515, baseType: !266, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1704, file: !1173, line: 516, baseType: !266, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1704, file: !1173, line: 518, baseType: !266, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1704, file: !1173, line: 519, baseType: !266, size: 64, offset: 448)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1704, file: !1173, line: 520, baseType: !741, size: 64, offset: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1704, file: !1173, line: 522, baseType: !266, size: 64, offset: 576)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1704, file: !1173, line: 523, baseType: !266, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1704, file: !1173, line: 524, baseType: !741, size: 64, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1704, file: !1173, line: 526, baseType: !741, size: 64, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1704, file: !1173, line: 527, baseType: !266, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1704, file: !1173, line: 529, baseType: !266, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1704, file: !1173, line: 530, baseType: !266, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1704, file: !1173, line: 531, baseType: !266, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1704, file: !1173, line: 532, baseType: !266, size: 64, offset: 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1704, file: !1173, line: 533, baseType: !266, size: 64, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1704, file: !1173, line: 535, baseType: !266, size: 64, offset: 1216)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1704, file: !1173, line: 536, baseType: !266, size: 64, offset: 1280)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1704, file: !1173, line: 537, baseType: !266, size: 64, offset: 1344)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1704, file: !1173, line: 538, baseType: !266, size: 64, offset: 1408)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1704, file: !1173, line: 539, baseType: !266, size: 64, offset: 1472)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1704, file: !1173, line: 540, baseType: !266, size: 64, offset: 1536)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1704, file: !1173, line: 541, baseType: !266, size: 64, offset: 1600)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1704, file: !1173, line: 542, baseType: !266, size: 64, offset: 1664)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1704, file: !1173, line: 543, baseType: !266, size: 64, offset: 1728)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1498, file: !1173, line: 833, baseType: !7, size: 32, offset: 7680)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1498, file: !1173, line: 836, baseType: !7, size: 32, offset: 7712)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1498, file: !1173, line: 837, baseType: !109, size: 32, offset: 7744)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1498, file: !1173, line: 838, baseType: !1738, size: 64, offset: 7808)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1741, line: 19, baseType: !1742)
!1741 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1741, line: 19, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1742, file: !1741, line: 19, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 1)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1498, file: !1173, line: 839, baseType: !1749, size: 64, offset: 7872)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1498, file: !1173, line: 840, baseType: !1740, size: 64, offset: 7936)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1498, file: !1173, line: 841, baseType: !295, size: 64, offset: 8000)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1498, file: !1173, line: 843, baseType: !156, size: 16, offset: 8064)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1498, file: !1173, line: 845, baseType: !156, size: 16, offset: 8080)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1498, file: !1173, line: 848, baseType: !109, size: 32, offset: 8096)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1498, file: !1173, line: 849, baseType: !1756, size: 32, offset: 8128)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1173, line: 718, size: 32, elements: !1757)
!1757 = !{!1758, !1765}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1756, file: !1173, line: 724, baseType: !1759, size: 32)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1756, file: !1173, line: 719, size: 32, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1759, file: !1173, line: 720, baseType: !148, size: 8)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1759, file: !1173, line: 721, baseType: !148, size: 8, offset: 8)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1759, file: !1173, line: 722, baseType: !148, size: 8, offset: 16)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1759, file: !1173, line: 723, baseType: !148, size: 8, offset: 24)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1756, file: !1173, line: 725, baseType: !158, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1498, file: !1173, line: 850, baseType: !241, size: 128, offset: 8192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1498, file: !1173, line: 851, baseType: !1768, size: 64, offset: 8320)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1173, line: 60, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1498, file: !1173, line: 855, baseType: !272, size: 64, offset: 8384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1498, file: !1173, line: 856, baseType: !148, size: 8, offset: 8448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1498, file: !1173, line: 857, baseType: !148, size: 8, offset: 8456)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1498, file: !1173, line: 858, baseType: !109, size: 32, offset: 8480)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1498, file: !1173, line: 859, baseType: !241, size: 128, offset: 8512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1498, file: !1173, line: 860, baseType: !109, size: 32, offset: 8640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1498, file: !1173, line: 861, baseType: !241, size: 128, offset: 8704)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1498, file: !1173, line: 873, baseType: !1778, size: 256, offset: 8832)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1173, line: 376, size: 256, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1778, file: !1173, line: 381, baseType: !272, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1778, file: !1173, line: 384, baseType: !268, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1778, file: !1173, line: 389, baseType: !268, size: 64, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1778, file: !1173, line: 392, baseType: !268, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1498, file: !1173, line: 875, baseType: !241, size: 128, offset: 9088)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1498, file: !1173, line: 877, baseType: !1786, size: 320, offset: 9216)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1787, line: 86, size: 320, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1788 = !{!1789, !1790, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1786, file: !1787, line: 87, baseType: !109, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1786, file: !1787, line: 88, baseType: !241, size: 128, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1786, file: !1787, line: 89, baseType: !241, size: 128, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1498, file: !1173, line: 878, baseType: !843, size: 192, align: 64, offset: 9536)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1498, file: !1173, line: 881, baseType: !1794, size: 64, offset: 9728)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1796)
!1796 = !{!1797, !2671}
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !38, line: 734, baseType: !1798, size: 10240)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !38, line: 734, size: 10240, elements: !1799)
!1799 = !{!1800, !1804, !1817, !2548, !2549, !2550, !2551, !2552, !2553, !2560, !2561, !2562, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2601, !2603, !2606, !2651, !2652, !2653, !2656, !2657, !2658, !2661, !2662, !2663, !2669, !2670}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !38, line: 739, baseType: !1801, size: 512, align: 512)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !38, line: 739, size: 512, align: 512, elements: !1802)
!1802 = !{!1803}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1801, file: !38, line: 747, baseType: !358, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1798, file: !38, line: 750, baseType: !1805, size: 128, offset: 512)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1806, line: 218, size: 128, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1807 = !{!1808, !1815, !1816}
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1806, line: 219, baseType: !1809, size: 32)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1805, file: !1806, line: 219, size: 32, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1809, file: !1806, line: 220, baseType: !338, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1809, file: !1806, line: 221, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1806, line: 197, baseType: !1814)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1806, line: 197, elements: !1018)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1805, file: !1806, line: 223, baseType: !7, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1805, file: !1806, line: 224, baseType: !295, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1798, file: !38, line: 752, baseType: !1818, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!272, !1821, !272, !272, !272, !272}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1823)
!1823 = !{!1824, !1830, !1831, !1833, !1834, !1835, !1836, !1837, !1887, !2077, !2086, !2087, !2088, !2538, !2539, !2540, !2541, !2543, !2544, !2547}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !14, line: 995, baseType: !1825, size: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !14, line: 995, size: 128, elements: !1826)
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1825, file: !14, line: 996, baseType: !1524, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1825, file: !14, line: 997, baseType: !951, size: 128, align: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1825, file: !14, line: 998, baseType: !7, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1822, file: !14, line: 1005, baseType: !338, size: 32, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1822, file: !14, line: 1006, baseType: !1832, size: 32, offset: 160)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !242, line: 156, baseType: !7)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1822, file: !14, line: 1007, baseType: !735, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1822, file: !14, line: 1008, baseType: !731, size: 256, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1822, file: !14, line: 1009, baseType: !631, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1822, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1822, file: !14, line: 1011, baseType: !1838, size: 256, offset: 640)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1839)
!1839 = !{!1840, !1861, !1883, !1884, !1885, !1886}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1838, file: !14, line: 949, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1842, line: 34, baseType: !1843)
!1842 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1842, line: 25, size: 64, elements: !1844)
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1843, file: !1842, line: 26, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1847, line: 27, baseType: !1848)
!1847 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1847, line: 13, size: 64, elements: !1849)
!1849 = !{!1850, !1860}
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1847, line: 14, baseType: !1851, size: 32)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1847, line: 14, size: 32, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1851, file: !1847, line: 15, baseType: !358, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1851, file: !1847, line: 16, baseType: !1855, size: 32)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !1847, line: 16, size: 32, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1855, file: !1847, line: 18, baseType: !148, size: 8)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1855, file: !1847, line: 19, baseType: !1859, size: 24, offset: 8)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 24, elements: !191)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1848, file: !1847, line: 26, baseType: !350, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1838, file: !14, line: 950, baseType: !1862, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1864)
!1864 = !{!1865, !1866, !1867, !1868, !1870, !1871, !1872, !1873}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1863, file: !30, line: 61, baseType: !1511, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1863, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1863, file: !30, line: 63, baseType: !338, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1863, file: !30, line: 65, baseType: !1869, size: 256, offset: 128)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 256, elements: !196)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1863, file: !30, line: 66, baseType: !1099, size: 64, offset: 384)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1863, file: !30, line: 68, baseType: !1484, size: 192, offset: 448)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1863, file: !30, line: 69, baseType: !951, size: 128, align: 64, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1863, file: !30, line: 70, baseType: !1874, offset: 768)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1875, elements: !1881)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1875, file: !30, line: 55, baseType: !109, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1875, file: !30, line: 56, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1881 = !{!1882}
!1882 = !DISubrange(count: -1)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1838, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1838, file: !14, line: 952, baseType: !483, size: 32, offset: 160)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1838, file: !14, line: 952, baseType: !483, size: 32, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1838, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1822, file: !14, line: 1012, baseType: !1888, size: 64, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1891, line: 110, size: 1472, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1909, !1910, !1911, !1912, !1913, !1914, !2022, !2023, !2024, !2025, !2026, !2057, !2060, !2064, !2072}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1890, file: !1891, line: 111, baseType: !735, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1890, file: !1891, line: 112, baseType: !483, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1890, file: !1891, line: 113, baseType: !492, size: 32, offset: 96)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1890, file: !1891, line: 114, baseType: !483, size: 32, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1890, file: !1891, line: 115, baseType: !492, size: 32, offset: 160)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1890, file: !1891, line: 116, baseType: !483, size: 32, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1890, file: !1891, line: 117, baseType: !492, size: 32, offset: 224)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1890, file: !1891, line: 118, baseType: !483, size: 32, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1890, file: !1891, line: 119, baseType: !492, size: 32, offset: 288)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1890, file: !1891, line: 120, baseType: !7, size: 32, offset: 320)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1890, file: !1891, line: 121, baseType: !1904, size: 64, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1905, line: 24, baseType: !1906)
!1905 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1905, line: 24, size: 64, elements: !1907)
!1907 = !{!1908}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1906, file: !1905, line: 24, baseType: !266, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1890, file: !1891, line: 122, baseType: !1904, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1890, file: !1891, line: 123, baseType: !1904, size: 64, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1890, file: !1891, line: 124, baseType: !1904, size: 64, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1890, file: !1891, line: 125, baseType: !1904, size: 64, offset: 640)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1890, file: !1891, line: 127, baseType: !152, size: 8, offset: 704)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1890, file: !1891, line: 129, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1917, line: 195, size: 1728, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1918 = !{!1919, !1920, !1923, !1928, !1929, !1932, !1933, !1938, !1939, !1940, !1941, !1944, !1945, !1946, !1947, !1948, !1986, !2007}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1916, file: !1917, line: 196, baseType: !1511, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1916, file: !1917, line: 197, baseType: !1921, size: 32, offset: 32)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1917, line: 28, baseType: !1922)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !242, line: 104, baseType: !727)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !1917, line: 198, baseType: !1924, size: 192, offset: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !1917, line: 198, size: 192, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1924, file: !1917, line: 199, baseType: !241, size: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1924, file: !1917, line: 200, baseType: !843, size: 192, align: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1916, file: !1917, line: 205, baseType: !1391, size: 320, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1916, file: !1917, line: 206, baseType: !1930, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1917, line: 206, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1916, file: !1917, line: 207, baseType: !295, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !1917, line: 208, baseType: !1934, size: 64, offset: 704)
!1934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !1917, line: 208, size: 64, elements: !1935)
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1934, file: !1917, line: 209, baseType: !1231, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1934, file: !1917, line: 210, baseType: !1231, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1916, file: !1917, line: 212, baseType: !1231, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1916, file: !1917, line: 213, baseType: !483, size: 32, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1916, file: !1917, line: 214, baseType: !492, size: 32, offset: 864)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1916, file: !1917, line: 215, baseType: !1942, size: 32, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1917, line: 31, baseType: !1943)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !242, line: 110, baseType: !158)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1916, file: !1917, line: 216, baseType: !156, size: 16, offset: 928)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1916, file: !1917, line: 217, baseType: !156, size: 16, offset: 944)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1916, file: !1917, line: 221, baseType: !869, size: 16, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !1917, line: 228, baseType: !272, size: 64, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !1917, line: 245, baseType: !1949, size: 320, offset: 1088)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !1917, line: 245, size: 320, elements: !1950)
!1950 = !{!1951, !1978}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1949, file: !1917, line: 246, baseType: !1952, size: 320)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1917, line: 114, size: 320, elements: !1953)
!1953 = !{!1954, !1955, !1967, !1970, !1977}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1952, file: !1917, line: 116, baseType: !272, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1917, line: 117, baseType: !1956, size: 64, offset: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1917, line: 117, size: 64, elements: !1957)
!1957 = !{!1958, !1966}
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !1917, line: 118, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1917, line: 118, size: 64, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1959, file: !1917, line: 120, baseType: !154, size: 16)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1959, file: !1917, line: 121, baseType: !1963, size: 48, offset: 16)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !1964)
!1964 = !{!1965}
!1965 = !DISubrange(count: 6)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1956, file: !1917, line: 127, baseType: !272, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1952, file: !1917, line: 129, baseType: !1968, size: 64, offset: 128)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1917, line: 102, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1952, file: !1917, line: 130, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1917, line: 108, size: 192, elements: !1973)
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1972, file: !1917, line: 109, baseType: !951, size: 128, align: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1972, file: !1917, line: 110, baseType: !1511, size: 32, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1972, file: !1917, line: 111, baseType: !811, size: 8, offset: 160)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1952, file: !1917, line: 131, baseType: !223, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1917, line: 247, baseType: !1979, size: 320)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1949, file: !1917, line: 247, size: 320, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1979, file: !1917, line: 248, baseType: !272, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1979, file: !1917, line: 249, baseType: !272, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1979, file: !1917, line: 250, baseType: !1968, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1979, file: !1917, line: 251, baseType: !1971, size: 64, offset: 192)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1979, file: !1917, line: 252, baseType: !400, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1916, file: !1917, line: 260, baseType: !1987, size: 256, offset: 1408)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1916, file: !1917, line: 260, size: 256, elements: !1988)
!1988 = !{!1989, !1995}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1987, file: !1917, line: 261, baseType: !1990, size: 256)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1917, line: 134, size: 256, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1990, file: !1917, line: 135, baseType: !295, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1990, file: !1917, line: 136, baseType: !1994, size: 256)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !196)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !1917, line: 262, baseType: !1996, size: 256)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1917, line: 262, size: 256, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1996, file: !1917, line: 264, baseType: !241, size: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1996, file: !1917, line: 265, baseType: !2000, size: 128, offset: 128)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2001, line: 22, size: 128, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2002 = !{!2003, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2000, file: !2001, line: 23, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2001, line: 23, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2000, file: !2001, line: 24, baseType: !272, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1916, file: !1917, line: 280, baseType: !2008, size: 64, offset: 1664)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1917, line: 176, size: 192, elements: !2010)
!2010 = !{!2011, !2020, !2021}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2009, file: !1917, line: 177, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1917, line: 171, baseType: !2013)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!109, !1915, !2016, !2018, !1915}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2009, file: !1917, line: 178, baseType: !1915, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2009, file: !1917, line: 179, baseType: !1968, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1890, file: !1891, line: 130, baseType: !1915, size: 64, offset: 832)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1890, file: !1891, line: 131, baseType: !1915, size: 64, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1890, file: !1891, line: 132, baseType: !1915, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1890, file: !1891, line: 135, baseType: !295, size: 64, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1890, file: !1891, line: 137, baseType: !2027, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2029, line: 14, size: 1088, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2030 = !{!2031, !2032, !2041, !2042, !2043, !2044, !2045, !2046}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2028, file: !2029, line: 15, baseType: !1511, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2028, file: !2029, line: 17, baseType: !2033, size: 320, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2034, line: 22, size: 320, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2035 = !{!2036, !2037, !2038, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2033, file: !2034, line: 23, baseType: !689, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2033, file: !2034, line: 24, baseType: !741, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2033, file: !2034, line: 26, baseType: !241, size: 128, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2033, file: !2034, line: 28, baseType: !2040, size: 64, offset: 256)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2028, file: !2029, line: 19, baseType: !272, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2028, file: !2029, line: 20, baseType: !735, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2028, file: !2029, line: 23, baseType: !975, size: 128, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2028, file: !2029, line: 24, baseType: !483, size: 32, offset: 640)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2028, file: !2029, line: 29, baseType: !735, size: 64, offset: 704)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2028, file: !2029, line: 36, baseType: !2047, size: 320, offset: 768)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2048, line: 15, size: 320, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2047, file: !2048, line: 16, baseType: !689, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2047, file: !2048, line: 18, baseType: !109, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2047, file: !2048, line: 19, baseType: !109, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2047, file: !2048, line: 20, baseType: !109, size: 32, offset: 96)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2047, file: !2048, line: 21, baseType: !109, size: 32, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2047, file: !2048, line: 22, baseType: !272, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2047, file: !2048, line: 23, baseType: !272, size: 64, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1890, file: !1891, line: 138, baseType: !2058, size: 64, offset: 1152)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !484, line: 18, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1890, file: !1891, line: 139, baseType: !2061, size: 64, offset: 1216)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2063, line: 16, flags: DIFlagFwdDecl)
!2063 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1890, file: !1891, line: 140, baseType: !2065, size: 64, offset: 1280)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1891, line: 25, size: 64, elements: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2066, file: !1891, line: 26, baseType: !358, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2066, file: !1891, line: 27, baseType: !109, size: 32, offset: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2066, file: !1891, line: 28, baseType: !2071, offset: 64)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, elements: !1881)
!2072 = !DIDerivedType(tag: DW_TAG_member, scope: !1890, file: !1891, line: 142, baseType: !2073, size: 128, offset: 1344)
!2073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1890, file: !1891, line: 142, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2073, file: !1891, line: 143, baseType: !109, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2073, file: !1891, line: 144, baseType: !951, size: 128, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1822, file: !14, line: 1013, baseType: !2078, size: 256, offset: 960)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2078, file: !14, line: 971, baseType: !272, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2078, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2078, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2078, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2078, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2078, file: !14, line: 976, baseType: !631, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1822, file: !14, line: 1014, baseType: !1303, size: 128, offset: 1216)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1822, file: !14, line: 1015, baseType: !477, size: 64, offset: 1344)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1822, file: !14, line: 1016, baseType: !2089, size: 64, offset: 1408)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2092)
!2092 = !{!2093, !2094, !2098, !2103, !2107, !2136, !2137, !2143, !2156, !2164, !2168, !2169, !2460, !2461, !2465, !2470, !2471, !2475, !2479, !2485, !2486, !2490, !2491, !2497, !2501, !2505, !2511, !2515, !2519, !2523, !2527, !2528, !2534}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2091, file: !14, line: 1915, baseType: !660, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2091, file: !14, line: 1916, baseType: !2095, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!631, !1821, !631, !109}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2091, file: !14, line: 1917, baseType: !2099, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!430, !1821, !400, !445, !2102}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2091, file: !14, line: 1918, baseType: !2104, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!430, !1821, !223, !445, !2102}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2091, file: !14, line: 1919, baseType: !2108, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!430, !2111, !2133}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2120, !2121, !2122, !2123}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2112, file: !14, line: 374, baseType: !1821, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2112, file: !14, line: 375, baseType: !631, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2112, file: !14, line: 376, baseType: !2117, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2111, !434}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2112, file: !14, line: 377, baseType: !295, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2112, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2112, file: !14, line: 379, baseType: !154, size: 16, offset: 288)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !14, line: 380, baseType: !2124, size: 64, offset: 320)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !14, line: 380, size: 64, elements: !2125)
!2125 = !{!2126, !2129}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2124, file: !14, line: 386, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2124, file: !14, line: 395, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!430, !295}
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2135, line: 17, flags: DIFlagFwdDecl)
!2135 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2091, file: !14, line: 1920, baseType: !2108, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2091, file: !14, line: 1921, baseType: !2138, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!109, !2111, !2141, !7}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2091, file: !14, line: 1923, baseType: !2144, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!109, !1821, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2149)
!2149 = !{!2150, !2155}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2148, file: !14, line: 1859, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2152)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!811, !2147, !223, !109, !631, !266, !7}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2148, file: !14, line: 1860, baseType: !631, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2091, file: !14, line: 1924, baseType: !2157, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!2160, !1821, !2162}
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2161, line: 59, baseType: !7)
!2161 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !646, line: 31, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2091, file: !14, line: 1925, baseType: !2165, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!434, !1821, !7, !272}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2091, file: !14, line: 1926, baseType: !2165, size: 64, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2091, file: !14, line: 1927, baseType: !2170, size: 64, offset: 704)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!109, !1821, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2175)
!2175 = !{!2176, !2185, !2186, !2194, !2201, !2202, !2207, !2208, !2213, !2214, !2217, !2453, !2454, !2455, !2456, !2457, !2458}
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !38, line: 628, baseType: !2177, size: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !38, line: 628, size: 128, elements: !2178)
!2178 = !{!2179, !2184}
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !38, line: 629, baseType: !2180, size: 128)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2177, file: !38, line: 629, size: 128, elements: !2181)
!2181 = !{!2182, !2183}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2180, file: !38, line: 631, baseType: !272, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2180, file: !38, line: 632, baseType: !272, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2177, file: !38, line: 635, baseType: !951, size: 128, align: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2174, file: !38, line: 639, baseType: !1794, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2174, file: !38, line: 640, baseType: !2187, size: 64, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2188, line: 297, baseType: !2189)
!2188 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2188, line: 297, size: 64, elements: !2190)
!2190 = !{!2191}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2189, file: !2188, line: 297, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2193, line: 19, baseType: !272)
!2193 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !38, line: 646, baseType: !2195, size: 64, offset: 256)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !38, line: 646, size: 64, elements: !2196)
!2196 = !{!2197, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2195, file: !38, line: 647, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !272)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2195, file: !38, line: 648, baseType: !2199, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2174, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2174, file: !38, line: 667, baseType: !2203, size: 64, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !38, line: 580, baseType: !1391, size: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2174, file: !38, line: 670, baseType: !811, size: 8, offset: 448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2174, file: !38, line: 681, baseType: !2209, size: 256, offset: 512)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !38, line: 678, size: 256, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2209, file: !38, line: 679, baseType: !843, size: 192, align: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2209, file: !38, line: 680, baseType: !272, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2174, file: !38, line: 689, baseType: !241, size: 128, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2174, file: !38, line: 691, baseType: !2215, size: 64, offset: 896)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2174, file: !38, line: 694, baseType: !2218, size: 64, offset: 960)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2221, line: 563, size: 1024, elements: !2222)
!2221 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2222 = !{!2223, !2227, !2228, !2232, !2236, !2240, !2417, !2421, !2425, !2429, !2430, !2431, !2435, !2439, !2445, !2449}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2220, file: !2221, line: 564, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2173}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2220, file: !2221, line: 569, baseType: !2224, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2220, file: !2221, line: 571, baseType: !2229, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!109, !2173, !272}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2220, file: !2221, line: 572, baseType: !2233, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!109, !2173}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2220, file: !2221, line: 578, baseType: !2237, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!109, !2173, !272, !272, !272}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2220, file: !2221, line: 580, baseType: !2241, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2221, line: 512, size: 896, elements: !2247)
!2247 = !{!2248, !2256, !2257, !2264, !2271, !2281, !2410, !2411, !2413, !2415}
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !2221, line: 513, baseType: !2249, size: 320)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2246, file: !2221, line: 513, size: 320, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2249, file: !2221, line: 514, baseType: !2173, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2249, file: !2221, line: 515, baseType: !1243, size: 32, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2249, file: !2221, line: 516, baseType: !272, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2249, file: !2221, line: 517, baseType: !272, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2249, file: !2221, line: 518, baseType: !272, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2246, file: !2221, line: 520, baseType: !37, size: 32, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2246, file: !2221, line: 522, baseType: !2258, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2193, line: 22, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2193, line: 22, size: 64, elements: !2261)
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2260, file: !2193, line: 22, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2193, line: 15, baseType: !272)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2246, file: !2221, line: 524, baseType: !2265, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2188, line: 372, baseType: !2267)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2188, line: 372, size: 64, elements: !2268)
!2268 = !{!2269}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2267, file: !2188, line: 372, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2193, line: 16, baseType: !272)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !2221, line: 527, baseType: !2272, size: 64, offset: 512)
!2272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2246, file: !2221, line: 527, size: 64, elements: !2273)
!2273 = !{!2274, !2280}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2272, file: !2221, line: 528, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2193, line: 21, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2193, line: 21, size: 64, elements: !2277)
!2277 = !{!2278}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2276, file: !2193, line: 21, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2193, line: 14, baseType: !272)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2272, file: !2221, line: 529, baseType: !2259, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2246, file: !2221, line: 534, baseType: !2282, size: 64, offset: 576)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2284)
!2284 = !{!2285, !2286, !2404, !2409}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !38, line: 75, baseType: !272, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !38, line: 83, baseType: !2287, size: 320, offset: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !38, line: 83, size: 320, elements: !2288)
!2288 = !{!2289, !2310, !2324, !2328, !2403}
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 84, baseType: !2290, size: 320)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !38, line: 84, size: 320, elements: !2291)
!2291 = !{!2292, !2303, !2304, !2309}
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2290, file: !38, line: 90, baseType: !2293, size: 128)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2290, file: !38, line: 90, size: 128, elements: !2294)
!2294 = !{!2295, !2296, !2301, !2302}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2293, file: !38, line: 91, baseType: !241, size: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !38, line: 94, baseType: !2297, size: 128)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !38, line: 94, size: 128, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2297, file: !38, line: 96, baseType: !295, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2297, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2293, file: !38, line: 102, baseType: !241, size: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2293, file: !38, line: 103, baseType: !241, size: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2290, file: !38, line: 106, baseType: !473, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2290, file: !38, line: 107, baseType: !2305, size: 64, offset: 192)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2290, file: !38, line: 107, size: 64, elements: !2306)
!2306 = !{!2307, !2308}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2305, file: !38, line: 108, baseType: !272, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2305, file: !38, line: 109, baseType: !272, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2290, file: !38, line: 117, baseType: !272, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 119, baseType: !2311, size: 320)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !38, line: 119, size: 320, elements: !2312)
!2312 = !{!2313, !2314, !2317, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2311, file: !38, line: 124, baseType: !272, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2311, file: !38, line: 125, baseType: !2315, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2311, file: !38, line: 126, baseType: !272, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2311, file: !38, line: 127, baseType: !272, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !38, line: 128, baseType: !2320, size: 64, offset: 256)
!2320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !38, line: 128, size: 64, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2320, file: !38, line: 133, baseType: !272, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2320, file: !38, line: 138, baseType: !735, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 141, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !38, line: 141, size: 64, elements: !2326)
!2326 = !{!2327}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2325, file: !38, line: 142, baseType: !272, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !38, line: 144, baseType: !2329, size: 128)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !38, line: 144, size: 128, elements: !2330)
!2330 = !{!2331, !2402}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2329, file: !38, line: 146, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2334)
!2334 = !{!2335, !2345, !2366, !2367, !2368, !2369, !2370, !2384, !2385, !2386}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2333, file: !54, line: 127, baseType: !2336, size: 384)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2337)
!2337 = !{!2338, !2339, !2341, !2342, !2343, !2344}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2336, file: !54, line: 22, baseType: !272, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2336, file: !54, line: 23, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2336, file: !54, line: 24, baseType: !2340, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2336, file: !54, line: 25, baseType: !272, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2336, file: !54, line: 26, baseType: !272, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2336, file: !54, line: 27, baseType: !272, size: 64, offset: 320)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2333, file: !54, line: 128, baseType: !2346, size: 128, offset: 384)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2347, line: 105, size: 128, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2346, file: !2347, line: 110, baseType: !272, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2346, file: !2347, line: 118, baseType: !2351, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2347, line: 95, size: 448, elements: !2353)
!2353 = !{!2354, !2355, !2361, !2362, !2363, !2364, !2365}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2352, file: !2347, line: 96, baseType: !735, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2352, file: !2347, line: 97, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2347, line: 60, baseType: !2358)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2352, file: !2347, line: 98, baseType: !2356, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2352, file: !2347, line: 99, baseType: !811, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2352, file: !2347, line: 100, baseType: !811, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2352, file: !2347, line: 101, baseType: !951, size: 128, align: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2352, file: !2347, line: 102, baseType: !2360, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2333, file: !54, line: 129, baseType: !680, size: 256, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2333, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2333, file: !54, line: 132, baseType: !272, size: 64, offset: 832)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2333, file: !54, line: 133, baseType: !2371, size: 64, offset: 896)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2373)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2374)
!2374 = !{!2375, !2379, !2380}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2373, file: !54, line: 83, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2282}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2373, file: !54, line: 89, baseType: !2241, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2373, file: !54, line: 100, baseType: !2381, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!109, !2332, !272, !272, !109}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2333, file: !54, line: 134, baseType: !295, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2333, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2333, file: !54, line: 136, baseType: !2387, size: 128, offset: 1088)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2333, file: !54, line: 136, size: 128, elements: !2388)
!2388 = !{!2389, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2387, file: !54, line: 137, baseType: !2390, size: 128)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2391, line: 6, size: 128, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2390, file: !2391, line: 7, baseType: !266, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2390, file: !2391, line: 8, baseType: !266, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, scope: !2387, file: !54, line: 138, baseType: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2387, file: !54, line: 138, elements: !2397)
!2397 = !{!2398, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2396, file: !54, line: 138, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !54, line: 138, elements: !1018)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2396, file: !54, line: 138, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2390, elements: !1881)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2329, file: !38, line: 147, baseType: !295, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2287, file: !38, line: 161, baseType: !951, size: 128, align: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !38, line: 164, baseType: !2405, size: 32, offset: 384)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !38, line: 164, size: 32, elements: !2406)
!2406 = !{!2407, !2408}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2405, file: !38, line: 169, baseType: !358, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2405, file: !38, line: 177, baseType: !7, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2283, file: !38, line: 181, baseType: !358, size: 32, offset: 416)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2246, file: !2221, line: 535, baseType: !2282, size: 64, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2246, file: !2221, line: 541, baseType: !2412, size: 64, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2246, file: !2221, line: 545, baseType: !2414, size: 64, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2246, file: !2221, line: 549, baseType: !2416, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2188, line: 520, baseType: !2282)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2220, file: !2221, line: 581, baseType: !2418, size: 64, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!2244, !2245, !7}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2220, file: !2221, line: 582, baseType: !2422, size: 64, offset: 448)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2244, !2245, !272, !272}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2220, file: !2221, line: 584, baseType: !2426, size: 64, offset: 512)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!272, !2173}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2220, file: !2221, line: 588, baseType: !2241, size: 64, offset: 576)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2220, file: !2221, line: 591, baseType: !2241, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2220, file: !2221, line: 597, baseType: !2432, size: 64, offset: 704)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!109, !2173, !272, !295, !109, !109}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2220, file: !2221, line: 603, baseType: !2436, size: 64, offset: 768)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!223, !2173}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2220, file: !2221, line: 613, baseType: !2440, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!109, !2173, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1173, line: 54, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2220, file: !2221, line: 625, baseType: !2446, size: 64, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!2443, !2173, !272}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2220, file: !2221, line: 633, baseType: !2450, size: 64, offset: 960)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2282, !2173, !272}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2174, file: !38, line: 697, baseType: !272, size: 64, offset: 1024)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2174, file: !38, line: 699, baseType: !1821, size: 64, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2174, file: !38, line: 700, baseType: !295, size: 64, offset: 1152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2174, file: !38, line: 711, baseType: !735, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2174, file: !38, line: 717, baseType: !2443, size: 64, offset: 1280)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2174, file: !38, line: 722, baseType: !2459, offset: 1344)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1018)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2091, file: !14, line: 1928, baseType: !272, size: 64, offset: 768)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2091, file: !14, line: 1929, baseType: !2462, size: 64, offset: 832)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!109, !477, !1821}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2091, file: !14, line: 1930, baseType: !2466, size: 64, offset: 896)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!109, !1821, !2469}
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !295)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2091, file: !14, line: 1931, baseType: !2462, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2091, file: !14, line: 1932, baseType: !2472, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!109, !1821, !631, !631, !109}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2091, file: !14, line: 1933, baseType: !2476, size: 64, offset: 1088)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!109, !109, !1821, !109}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2091, file: !14, line: 1934, baseType: !2480, size: 64, offset: 1152)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!109, !1821, !109, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2091, file: !14, line: 1935, baseType: !1818, size: 64, offset: 1216)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2091, file: !14, line: 1936, baseType: !2487, size: 64, offset: 1280)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!109, !109}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2091, file: !14, line: 1937, baseType: !2480, size: 64, offset: 1344)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2091, file: !14, line: 1938, baseType: !2492, size: 64, offset: 1408)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!430, !2495, !1821, !2102, !445, !7}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1173, line: 59, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2091, file: !14, line: 1939, baseType: !2498, size: 64, offset: 1472)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!430, !1821, !2102, !2495, !445, !7}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2091, file: !14, line: 1940, baseType: !2502, size: 64, offset: 1536)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !1821}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2091, file: !14, line: 1941, baseType: !2506, size: 64, offset: 1600)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!109, !1821, !109, !2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2091, file: !14, line: 1942, baseType: !2512, size: 64, offset: 1664)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!434, !1821, !109, !631, !631}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2091, file: !14, line: 1944, baseType: !2516, size: 64, offset: 1728)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{null, !1171, !1821}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2091, file: !14, line: 1948, baseType: !2520, size: 64, offset: 1792)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!430, !1821, !631, !1821, !631, !445, !7}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2091, file: !14, line: 1950, baseType: !2524, size: 64, offset: 1856)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!631, !1821, !631, !1821, !631, !631, !7}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2091, file: !14, line: 1953, baseType: !2472, size: 64, offset: 1920)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2091, file: !14, line: 1954, baseType: !2529, size: 64, offset: 1984)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!109, !2532, !7}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2091, file: !14, line: 1955, baseType: !2535, size: 64, offset: 2048)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!109, !2532, !2141, !7}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1822, file: !14, line: 1018, baseType: !266, size: 64, offset: 1472)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1822, file: !14, line: 1020, baseType: !295, size: 64, offset: 1536)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1822, file: !14, line: 1023, baseType: !295, size: 64, offset: 1600)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1822, file: !14, line: 1027, baseType: !2542, size: 64, offset: 1664)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1822, file: !14, line: 1029, baseType: !473, size: 64, offset: 1728)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1822, file: !14, line: 1030, baseType: !2545, size: 32, offset: 1792)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2546, line: 8, baseType: !158)
!2546 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1822, file: !14, line: 1031, baseType: !2545, size: 32, offset: 1824)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1798, file: !38, line: 756, baseType: !272, size: 64, offset: 704)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1798, file: !38, line: 757, baseType: !272, size: 64, offset: 768)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1798, file: !38, line: 760, baseType: !272, size: 64, offset: 832)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1798, file: !38, line: 761, baseType: !272, size: 64, offset: 896)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1798, file: !38, line: 763, baseType: !272, size: 64, offset: 960)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1798, file: !38, line: 764, baseType: !2554, size: 64, offset: 1024)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2188, line: 299, baseType: !2556)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2188, line: 299, size: 64, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2556, file: !2188, line: 299, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2193, line: 18, baseType: !272)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1798, file: !38, line: 773, baseType: !358, size: 32, offset: 1088)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1798, file: !38, line: 785, baseType: !358, size: 32, offset: 1120)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1798, file: !38, line: 795, baseType: !2563, size: 64, offset: 1152)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2564, file: !38, line: 727, baseType: !266, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2564, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1798, file: !38, line: 801, baseType: !272, size: 64, offset: 1216)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1798, file: !38, line: 804, baseType: !735, size: 64, offset: 1280)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1798, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1798, file: !38, line: 808, baseType: !338, size: 32, offset: 1376)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1798, file: !38, line: 823, baseType: !1391, size: 320, offset: 1408)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1798, file: !38, line: 825, baseType: !241, size: 128, offset: 1728)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1798, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1798, file: !38, line: 849, baseType: !272, size: 64, offset: 1920)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1798, file: !38, line: 850, baseType: !272, size: 64, offset: 1984)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1798, file: !38, line: 852, baseType: !272, size: 64, offset: 2048)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1798, file: !38, line: 853, baseType: !272, size: 64, offset: 2112)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1798, file: !38, line: 854, baseType: !737, size: 64, offset: 2176)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1798, file: !38, line: 855, baseType: !272, size: 64, offset: 2240)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1798, file: !38, line: 856, baseType: !272, size: 64, offset: 2304)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1798, file: !38, line: 857, baseType: !272, size: 64, offset: 2368)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1798, file: !38, line: 858, baseType: !272, size: 64, offset: 2432)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1798, file: !38, line: 865, baseType: !523, size: 32, offset: 2496)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1798, file: !38, line: 867, baseType: !338, size: 32, offset: 2528)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1798, file: !38, line: 869, baseType: !272, size: 64, offset: 2560)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1798, file: !38, line: 869, baseType: !272, size: 64, offset: 2624)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1798, file: !38, line: 869, baseType: !272, size: 64, offset: 2688)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1798, file: !38, line: 869, baseType: !272, size: 64, offset: 2752)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1798, file: !38, line: 870, baseType: !272, size: 64, offset: 2816)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1798, file: !38, line: 870, baseType: !272, size: 64, offset: 2880)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1798, file: !38, line: 870, baseType: !272, size: 64, offset: 2944)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1798, file: !38, line: 871, baseType: !272, size: 64, offset: 3008)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1798, file: !38, line: 871, baseType: !272, size: 64, offset: 3072)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1798, file: !38, line: 871, baseType: !272, size: 64, offset: 3136)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1798, file: !38, line: 871, baseType: !272, size: 64, offset: 3200)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1798, file: !38, line: 873, baseType: !2598, size: 3328, offset: 3264)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 3328, elements: !2599)
!2599 = !{!2600}
!2600 = !DISubrange(count: 52)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1798, file: !38, line: 875, baseType: !2602, size: 1280, offset: 6592)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 1280, elements: !196)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1798, file: !38, line: 877, baseType: !2604, size: 64, offset: 7872)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1798, file: !38, line: 880, baseType: !2607, size: 1088, offset: 7936)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2608, line: 72, baseType: !2609)
!2608 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2608, line: 23, size: 1088, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2618, !2619, !2620, !2621, !2648, !2649, !2650}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2609, file: !2608, line: 28, baseType: !266, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2609, file: !2608, line: 38, baseType: !737, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2609, file: !2608, line: 40, baseType: !272, size: 64, offset: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2609, file: !2608, line: 43, baseType: !1391, size: 320, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2609, file: !2608, line: 44, baseType: !2616, size: 64, offset: 512)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2608, line: 44, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2609, file: !2608, line: 48, baseType: !272, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2609, file: !2608, line: 59, baseType: !731, size: 256, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2609, file: !2608, line: 60, baseType: !295, size: 64, offset: 896)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2609, file: !2608, line: 61, baseType: !2622, size: 64, offset: 960)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2625, line: 13, size: 1216, elements: !2626)
!2625 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632, !2633, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2624, file: !2625, line: 14, baseType: !295, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2624, file: !2625, line: 15, baseType: !272, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2624, file: !2625, line: 17, baseType: !272, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2624, file: !2625, line: 17, baseType: !272, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2624, file: !2625, line: 18, baseType: !272, size: 64, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2624, file: !2625, line: 18, baseType: !272, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2624, file: !2625, line: 19, baseType: !2634, size: 64, offset: 384)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2624, file: !2625, line: 21, baseType: !434, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2624, file: !2625, line: 23, baseType: !434, size: 64, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2624, file: !2625, line: 24, baseType: !434, size: 64, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2624, file: !2625, line: 25, baseType: !434, size: 64, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2624, file: !2625, line: 26, baseType: !434, size: 64, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2624, file: !2625, line: 27, baseType: !434, size: 64, offset: 768)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2624, file: !2625, line: 28, baseType: !434, size: 64, offset: 832)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2624, file: !2625, line: 29, baseType: !434, size: 64, offset: 896)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2624, file: !2625, line: 30, baseType: !434, size: 64, offset: 960)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2624, file: !2625, line: 31, baseType: !434, size: 64, offset: 1024)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2624, file: !2625, line: 32, baseType: !434, size: 64, offset: 1088)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2624, file: !2625, line: 33, baseType: !434, size: 64, offset: 1152)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2609, file: !2608, line: 63, baseType: !358, size: 32, offset: 1024)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2609, file: !2608, line: 69, baseType: !154, size: 16, offset: 1056)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2609, file: !2608, line: 70, baseType: !867, size: 16, offset: 1072)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !38, line: 882, baseType: !272, size: 64, offset: 9024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1798, file: !38, line: 885, baseType: !338, size: 32, offset: 9088)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1798, file: !38, line: 886, baseType: !2654, size: 64, offset: 9152)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1798, file: !38, line: 901, baseType: !2058, size: 64, offset: 9216)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1798, file: !38, line: 904, baseType: !1821, size: 64, offset: 9280)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1798, file: !38, line: 906, baseType: !2659, size: 64, offset: 9344)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1798, file: !38, line: 930, baseType: !358, size: 32, offset: 9408)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1798, file: !38, line: 933, baseType: !358, size: 32, offset: 9440)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1798, file: !38, line: 935, baseType: !2664, size: 64, offset: 9472)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2665)
!2665 = !{!2666}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2664, file: !68, line: 104, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1798, file: !38, line: 940, baseType: !735, size: 64, offset: 9536)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1798, file: !38, line: 942, baseType: !989, size: 256, offset: 9600)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1795, file: !38, line: 986, baseType: !2672, offset: 10240)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !1881)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1498, file: !1173, line: 882, baseType: !1794, size: 64, offset: 9792)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1498, file: !1173, line: 884, baseType: !109, size: 32, offset: 9856)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1498, file: !1173, line: 885, baseType: !109, size: 32, offset: 9888)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1498, file: !1173, line: 886, baseType: !109, size: 32, offset: 9920)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1498, file: !1173, line: 888, baseType: !109, size: 32, offset: 9952)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1498, file: !1173, line: 890, baseType: !272, size: 64, offset: 9984)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1498, file: !1173, line: 893, baseType: !7, size: 32, offset: 10048)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1498, file: !1173, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1498, file: !1173, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1498, file: !1173, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1498, file: !1173, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1498, file: !1173, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1498, file: !1173, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1498, file: !1173, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1498, file: !1173, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1498, file: !1173, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1498, file: !1173, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1498, file: !1173, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1498, file: !1173, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1498, file: !1173, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1498, file: !1173, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1498, file: !1173, line: 969, baseType: !272, size: 64, offset: 10176)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1498, file: !1173, line: 971, baseType: !2696, size: 448, offset: 10240)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2697)
!2697 = !{!2698, !2699, !2704}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2696, file: !62, line: 26, baseType: !272, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2696, file: !62, line: 27, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!434, !2703}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2696, file: !62, line: 28, baseType: !2705, size: 320, offset: 128)
!2705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2696, file: !62, line: 28, size: 320, elements: !2706)
!2706 = !{!2707, !2716, !2741}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2705, file: !62, line: 37, baseType: !2708, size: 320)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2705, file: !62, line: 30, size: 320, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2708, file: !62, line: 31, baseType: !157, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2708, file: !62, line: 32, baseType: !158, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2708, file: !62, line: 33, baseType: !158, size: 32, offset: 96)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2708, file: !62, line: 34, baseType: !158, size: 32, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2708, file: !62, line: 35, baseType: !266, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2708, file: !62, line: 36, baseType: !157, size: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2705, file: !62, line: 47, baseType: !2717, size: 192)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2705, file: !62, line: 39, size: 192, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2740}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2717, file: !62, line: 40, baseType: !1665, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2717, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !62, line: 42, baseType: !2722, size: 64, offset: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2717, file: !62, line: 42, size: 64, elements: !2723)
!2723 = !{!2724, !2732}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2722, file: !62, line: 43, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2727, line: 7, size: 128, elements: !2728)
!2727 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2728 = !{!2729, !2731}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2726, file: !2727, line: 8, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !432, line: 93, baseType: !633)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2726, file: !2727, line: 9, baseType: !633, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2722, file: !62, line: 44, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2735, line: 7, size: 64, elements: !2736)
!2735 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2736 = !{!2737, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2734, file: !2735, line: 8, baseType: !2738, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2735, line: 5, baseType: !727)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2734, file: !2735, line: 9, baseType: !727, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2717, file: !62, line: 46, baseType: !266, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2705, file: !62, line: 55, baseType: !2742, size: 256)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2705, file: !62, line: 49, size: 256, elements: !2743)
!2743 = !{!2744, !2747, !2748, !2749, !2750}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2742, file: !62, line: 50, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2742, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2742, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2742, file: !62, line: 53, baseType: !272, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2742, file: !62, line: 54, baseType: !272, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1498, file: !1173, line: 973, baseType: !2752, size: 32, offset: 10688)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !242, line: 27, baseType: !2753)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !432, line: 28, baseType: !109)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1498, file: !1173, line: 974, baseType: !2752, size: 32, offset: 10720)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1498, file: !1173, line: 978, baseType: !272, size: 64, offset: 10752)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1498, file: !1173, line: 987, baseType: !1497, size: 64, offset: 10816)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1498, file: !1173, line: 990, baseType: !1497, size: 64, offset: 10880)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1498, file: !1173, line: 995, baseType: !241, size: 128, offset: 10944)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1498, file: !1173, line: 996, baseType: !241, size: 128, offset: 11072)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1498, file: !1173, line: 997, baseType: !1497, size: 64, offset: 11200)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1498, file: !1173, line: 1005, baseType: !241, size: 128, offset: 11264)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1498, file: !1173, line: 1006, baseType: !241, size: 128, offset: 11392)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1498, file: !1173, line: 1009, baseType: !1862, size: 64, offset: 11520)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1498, file: !1173, line: 1010, baseType: !2765, size: 512, offset: 11584)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 512, elements: !196)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1498, file: !1173, line: 1011, baseType: !241, size: 128, offset: 12096)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1498, file: !1173, line: 1012, baseType: !241, size: 128, offset: 12224)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1498, file: !1173, line: 1014, baseType: !679, size: 64, offset: 12352)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1498, file: !1173, line: 1017, baseType: !860, size: 64, offset: 12416)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1498, file: !1173, line: 1020, baseType: !860, size: 64, offset: 12480)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1498, file: !1173, line: 1023, baseType: !295, size: 64, offset: 12544)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1498, file: !1173, line: 1025, baseType: !266, size: 64, offset: 12608)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1498, file: !1173, line: 1026, baseType: !266, size: 64, offset: 12672)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1498, file: !1173, line: 1031, baseType: !266, size: 64, offset: 12736)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1498, file: !1173, line: 1032, baseType: !2776, size: 192, offset: 12800)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1173, line: 324, size: 192, elements: !2777)
!2777 = !{!2778, !2779, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2776, file: !1173, line: 326, baseType: !266, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2776, file: !1173, line: 327, baseType: !266, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2776, file: !1173, line: 328, baseType: !689, size: 32, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1498, file: !1173, line: 1041, baseType: !272, size: 64, offset: 12992)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1498, file: !1173, line: 1042, baseType: !272, size: 64, offset: 13056)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1498, file: !1173, line: 1045, baseType: !266, size: 64, offset: 13120)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1498, file: !1173, line: 1048, baseType: !266, size: 64, offset: 13184)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1498, file: !1173, line: 1051, baseType: !272, size: 64, offset: 13248)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1498, file: !1173, line: 1052, baseType: !272, size: 64, offset: 13312)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1498, file: !1173, line: 1055, baseType: !2788, size: 640, offset: 13376)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2789, line: 132, size: 640, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2790 = !{!2791, !2797, !2798}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2788, file: !2789, line: 133, baseType: !2792, size: 576)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2793, size: 576, elements: !191)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2789, line: 117, size: 192, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2793, file: !2789, line: 118, baseType: !266, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2793, file: !2789, line: 119, baseType: !1674, size: 128, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2788, file: !2789, line: 134, baseType: !7, size: 32, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2788, file: !2789, line: 135, baseType: !7, size: 32, offset: 608)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1498, file: !1173, line: 1058, baseType: !2800, size: 448, offset: 14016)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2789, line: 144, size: 448, elements: !2801)
!2801 = !{!2802, !2803, !2804}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2800, file: !2789, line: 145, baseType: !951, size: 128, align: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2800, file: !2789, line: 146, baseType: !731, size: 256, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2800, file: !2789, line: 147, baseType: !7, size: 32, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1498, file: !1173, line: 1064, baseType: !1888, size: 64, offset: 14464)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1498, file: !1173, line: 1067, baseType: !1888, size: 64, offset: 14528)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1498, file: !1173, line: 1070, baseType: !1888, size: 64, offset: 14592)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1498, file: !1173, line: 1074, baseType: !1915, size: 64, offset: 14656)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1498, file: !1173, line: 1084, baseType: !2810, size: 128, offset: 14720)
!2810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 128, elements: !2811)
!2811 = !{!2812}
!2812 = !DISubrange(count: 16)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1498, file: !1173, line: 1086, baseType: !2814, size: 64, offset: 14848)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1173, line: 55, flags: DIFlagFwdDecl)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1498, file: !1173, line: 1089, baseType: !2817, size: 64, offset: 14912)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2818, line: 12, size: 64, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2819 = !{!2820}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2817, file: !2818, line: 13, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2818, line: 8, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1498, file: !1173, line: 1090, baseType: !2824, size: 128, offset: 14976)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2825, line: 13, size: 128, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2824, file: !2825, line: 14, baseType: !241, size: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1498, file: !1173, line: 1097, baseType: !2829, size: 64, offset: 15104)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1173, line: 50, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1498, file: !1173, line: 1100, baseType: !2832, size: 64, offset: 15168)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1173, line: 1100, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1498, file: !1173, line: 1103, baseType: !2835, size: 64, offset: 15232)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1173, line: 53, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1498, file: !1173, line: 1107, baseType: !2838, size: 64, offset: 15296)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1173, line: 56, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1498, file: !1173, line: 1110, baseType: !2841, size: 64, offset: 15360)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2843, line: 93, size: 8768, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2892, !2901, !2902, !2904, !2905, !2906, !2909, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2947, !2948, !2955, !2965, !2968, !2969, !2972, !2973, !2974, !2975, !2976, !2977}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2842, file: !2843, line: 94, baseType: !1511, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2842, file: !2843, line: 95, baseType: !358, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2842, file: !2843, line: 96, baseType: !109, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2842, file: !2843, line: 97, baseType: !109, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2842, file: !2843, line: 98, baseType: !241, size: 128, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2842, file: !2843, line: 100, baseType: !1484, size: 192, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2842, file: !2843, line: 103, baseType: !1497, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2842, file: !2843, line: 106, baseType: !2853, size: 192, offset: 512)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2063, line: 32, size: 192, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2853, file: !2063, line: 33, baseType: !241, size: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2853, file: !2063, line: 34, baseType: !2857, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2858, line: 25, baseType: !2859)
!2858 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2858, line: 23, size: 64, elements: !2860)
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2859, file: !2858, line: 24, baseType: !1745, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2842, file: !2843, line: 109, baseType: !1099, size: 64, offset: 704)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2842, file: !2843, line: 112, baseType: !109, size: 32, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2842, file: !2843, line: 114, baseType: !109, size: 32, offset: 800)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2842, file: !2843, line: 115, baseType: !1497, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2842, file: !2843, line: 118, baseType: !109, size: 32, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2842, file: !2843, line: 119, baseType: !7, size: 32, offset: 928)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2842, file: !2843, line: 121, baseType: !2869, size: 64, offset: 960)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2843, line: 80, size: 448, elements: !2871)
!2871 = !{!2872, !2873, !2879}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2870, file: !2843, line: 81, baseType: !358, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2870, file: !2843, line: 82, baseType: !2874, size: 128, offset: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2843, line: 75, size: 128, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2874, file: !2843, line: 76, baseType: !1497, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2874, file: !2843, line: 77, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2870, file: !2843, line: 83, baseType: !680, size: 256, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2842, file: !2843, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2842, file: !2843, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2842, file: !2843, line: 138, baseType: !7, size: 32, offset: 1056)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2842, file: !2843, line: 139, baseType: !241, size: 128, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2842, file: !2843, line: 142, baseType: !1618, size: 512, offset: 1216)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2842, file: !2843, line: 143, baseType: !1626, size: 64, offset: 1728)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2842, file: !2843, line: 150, baseType: !2887, size: 256, offset: 1792)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2888, size: 256, elements: !850)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2843, line: 38, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2888, file: !2843, line: 39, baseType: !266, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2888, file: !2843, line: 40, baseType: !266, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2842, file: !2843, line: 156, baseType: !2893, size: 192, offset: 2048)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2843, line: 66, size: 192, elements: !2894)
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2893, file: !2843, line: 67, baseType: !2896, size: 192)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2843, line: 47, size: 192, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2896, file: !2843, line: 48, baseType: !737, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2896, file: !2843, line: 49, baseType: !737, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2896, file: !2843, line: 50, baseType: !737, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2842, file: !2843, line: 160, baseType: !2788, size: 640, offset: 2240)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2842, file: !2843, line: 163, baseType: !2903, size: 256, offset: 2880)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1862, size: 256, elements: !196)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2842, file: !2843, line: 169, baseType: !1862, size: 64, offset: 3136)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2842, file: !2843, line: 172, baseType: !109, size: 32, offset: 3200)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2842, file: !2843, line: 174, baseType: !2907, size: 64, offset: 3264)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2843, line: 174, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2842, file: !2843, line: 185, baseType: !2910, size: 64, offset: 3328)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !519, line: 860, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 853, size: 64, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2911, file: !519, line: 858, baseType: !518, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2911, file: !519, line: 859, baseType: !338, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2842, file: !2843, line: 186, baseType: !266, size: 64, offset: 3392)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2842, file: !2843, line: 186, baseType: !266, size: 64, offset: 3456)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2842, file: !2843, line: 186, baseType: !266, size: 64, offset: 3520)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2842, file: !2843, line: 186, baseType: !266, size: 64, offset: 3584)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2842, file: !2843, line: 187, baseType: !266, size: 64, offset: 3648)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2842, file: !2843, line: 188, baseType: !266, size: 64, offset: 3712)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2842, file: !2843, line: 189, baseType: !2776, size: 192, offset: 3776)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2842, file: !2843, line: 190, baseType: !272, size: 64, offset: 3968)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2842, file: !2843, line: 190, baseType: !272, size: 64, offset: 4032)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2842, file: !2843, line: 190, baseType: !272, size: 64, offset: 4096)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2842, file: !2843, line: 190, baseType: !272, size: 64, offset: 4160)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2842, file: !2843, line: 191, baseType: !272, size: 64, offset: 4224)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2842, file: !2843, line: 191, baseType: !272, size: 64, offset: 4288)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2842, file: !2843, line: 191, baseType: !272, size: 64, offset: 4352)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2842, file: !2843, line: 191, baseType: !272, size: 64, offset: 4416)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2842, file: !2843, line: 192, baseType: !272, size: 64, offset: 4480)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2842, file: !2843, line: 192, baseType: !272, size: 64, offset: 4544)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2842, file: !2843, line: 192, baseType: !272, size: 64, offset: 4608)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2842, file: !2843, line: 192, baseType: !272, size: 64, offset: 4672)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2842, file: !2843, line: 193, baseType: !272, size: 64, offset: 4736)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2842, file: !2843, line: 193, baseType: !272, size: 64, offset: 4800)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2842, file: !2843, line: 194, baseType: !2937, size: 448, offset: 4864)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2938, line: 12, size: 448, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2939 = !{!2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2937, file: !2938, line: 15, baseType: !266, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2937, file: !2938, line: 17, baseType: !266, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2937, file: !2938, line: 19, baseType: !266, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2937, file: !2938, line: 21, baseType: !266, size: 64, offset: 192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2937, file: !2938, line: 29, baseType: !266, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2937, file: !2938, line: 35, baseType: !266, size: 64, offset: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2937, file: !2938, line: 44, baseType: !266, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2842, file: !2843, line: 202, baseType: !268, size: 64, offset: 5312)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2842, file: !2843, line: 213, baseType: !2949, size: 2048, offset: 5376)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2950, size: 2048, elements: !2811)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2951, line: 43, size: 128, elements: !2952)
!2951 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2950, file: !2951, line: 44, baseType: !447, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2950, file: !2951, line: 45, baseType: !447, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2842, file: !2843, line: 216, baseType: !2956, size: 448, offset: 7424)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2843, line: 30, size: 448, elements: !2957)
!2957 = !{!2958, !2959, !2960, !2961, !2962, !2963, !2964}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2956, file: !2843, line: 31, baseType: !109, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2956, file: !2843, line: 32, baseType: !434, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2956, file: !2843, line: 33, baseType: !272, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2956, file: !2843, line: 34, baseType: !266, size: 64, offset: 192)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2956, file: !2843, line: 34, baseType: !266, size: 64, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2956, file: !2843, line: 35, baseType: !272, size: 64, offset: 320)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2956, file: !2843, line: 35, baseType: !272, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2842, file: !2843, line: 219, baseType: !2966, size: 64, offset: 7872)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2843, line: 219, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2842, file: !2843, line: 222, baseType: !7, size: 32, offset: 7936)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2842, file: !2843, line: 223, baseType: !2970, size: 64, offset: 8000)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2843, line: 223, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2842, file: !2843, line: 230, baseType: !811, size: 8, offset: 8064)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2842, file: !2843, line: 231, baseType: !869, size: 16, offset: 8080)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2842, file: !2843, line: 232, baseType: !869, size: 16, offset: 8096)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2842, file: !2843, line: 234, baseType: !1794, size: 64, offset: 8128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2842, file: !2843, line: 237, baseType: !731, size: 256, offset: 8192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2842, file: !2843, line: 243, baseType: !1391, size: 320, offset: 8448)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1498, file: !1173, line: 1111, baseType: !2979, size: 64, offset: 15424)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2843, line: 20, size: 16640, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2980, file: !2843, line: 21, baseType: !338, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2980, file: !2843, line: 22, baseType: !1511, size: 32, offset: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2980, file: !2843, line: 23, baseType: !1484, size: 192, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2980, file: !2843, line: 24, baseType: !2986, size: 16384, offset: 256)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2987, size: 16384, elements: !403)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2063, line: 51, size: 256, elements: !2988)
!2988 = !{!2989}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2987, file: !2063, line: 52, baseType: !2990, size: 256)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2063, line: 37, size: 256, elements: !2991)
!2991 = !{!2992, !2999, !3000, !3004}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2990, file: !2063, line: 39, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2994, line: 83, baseType: !2995)
!2994 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2994, line: 82, baseType: !2997)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !109}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2990, file: !2063, line: 40, baseType: !272, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2990, file: !2063, line: 46, baseType: !3001, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2994, line: 86, baseType: !3002)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2994, line: 85, baseType: !1094)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2990, file: !2063, line: 48, baseType: !2857, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1498, file: !1173, line: 1112, baseType: !2857, size: 64, offset: 15488)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1498, file: !1173, line: 1113, baseType: !2857, size: 64, offset: 15552)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1498, file: !1173, line: 1115, baseType: !2857, size: 64, offset: 15616)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1498, file: !1173, line: 1116, baseType: !2853, size: 192, offset: 15680)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1498, file: !1173, line: 1117, baseType: !272, size: 64, offset: 15872)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1498, file: !1173, line: 1118, baseType: !445, size: 64, offset: 15936)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1498, file: !1173, line: 1119, baseType: !7, size: 32, offset: 16000)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1498, file: !1173, line: 1121, baseType: !950, size: 64, offset: 16064)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1498, file: !1173, line: 1125, baseType: !3014, size: 64, offset: 16128)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1173, line: 43, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1498, file: !1173, line: 1127, baseType: !483, size: 32, offset: 16192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1498, file: !1173, line: 1128, baseType: !7, size: 32, offset: 16224)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1498, file: !1173, line: 1130, baseType: !3019, size: 128, offset: 16256)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3020, line: 37, size: 128, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3019, file: !3020, line: 38, baseType: !109, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3019, file: !3020, line: 39, baseType: !358, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3019, file: !3020, line: 40, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3020, line: 24, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1498, file: !1173, line: 1131, baseType: !3028, size: 256, offset: 16384)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3029, line: 12, size: 256, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3030 = !{!3031, !3032, !3033, !3034}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3028, file: !3029, line: 13, baseType: !400, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3028, file: !3029, line: 14, baseType: !272, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3028, file: !3029, line: 15, baseType: !272, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3028, file: !3029, line: 16, baseType: !811, size: 8, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1498, file: !1173, line: 1134, baseType: !266, size: 64, offset: 16640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1498, file: !1173, line: 1135, baseType: !266, size: 64, offset: 16704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1498, file: !1173, line: 1138, baseType: !338, size: 32, offset: 16768)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1498, file: !1173, line: 1141, baseType: !689, size: 32, offset: 16800)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1498, file: !1173, line: 1143, baseType: !3040, size: 64, offset: 16832)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1173, line: 735, size: 64, elements: !3041)
!3041 = !{!3042}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3040, file: !1173, line: 736, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1498, file: !1173, line: 1147, baseType: !1677, size: 128, offset: 16896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1498, file: !1173, line: 1149, baseType: !1497, size: 64, offset: 17024)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1498, file: !1173, line: 1151, baseType: !3047, size: 64, offset: 17088)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1173, line: 1151, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1498, file: !1173, line: 1188, baseType: !295, size: 64, offset: 17152)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1498, file: !1173, line: 1191, baseType: !3051, size: 64, offset: 17216)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1173, line: 44, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1498, file: !1173, line: 1194, baseType: !3054, size: 64, offset: 17280)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1173, line: 45, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1498, file: !1173, line: 1197, baseType: !3057, size: 64, offset: 17344)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1173, line: 61, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1498, file: !1173, line: 1199, baseType: !3060, size: 64, offset: 17408)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3062, line: 99, size: 128, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3063 = !{!3064, !3065, !3066}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3061, file: !3062, line: 100, baseType: !735, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3061, file: !3062, line: 101, baseType: !358, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3061, file: !3062, line: 103, baseType: !156, size: 16, offset: 96)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1498, file: !1173, line: 1202, baseType: !3068, size: 64, offset: 17472)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1173, line: 48, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1498, file: !1173, line: 1205, baseType: !272, size: 64, offset: 17536)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1498, file: !1173, line: 1206, baseType: !3072, size: 64, offset: 17600)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2063, line: 14, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2063, line: 12, size: 384, elements: !3075)
!3075 = !{!3076}
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3074, file: !2063, line: 13, baseType: !3077, size: 384)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !2063, line: 13, size: 384, elements: !3078)
!3078 = !{!3079, !3080, !3081, !3082}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3077, file: !2063, line: 13, baseType: !109, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3077, file: !2063, line: 13, baseType: !109, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3077, file: !2063, line: 13, baseType: !109, size: 32, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3077, file: !2063, line: 13, baseType: !3083, size: 256, offset: 128)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3084, line: 37, size: 256, elements: !3085)
!3084 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3085 = !{!3086, !3091, !3104, !3110, !3119, !3146, !3151}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3083, file: !3084, line: 42, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 39, size: 64, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3087, file: !3084, line: 40, baseType: !2753, size: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3087, file: !3084, line: 41, baseType: !489, size: 32, offset: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3083, file: !3084, line: 50, baseType: !3092, size: 192)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 45, size: 192, elements: !3093)
!3093 = !{!3094, !3096, !3097, !3103}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3092, file: !3084, line: 46, baseType: !3095, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !432, line: 95, baseType: !109)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3092, file: !3084, line: 47, baseType: !109, size: 32, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3092, file: !3084, line: 48, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3084, line: 11, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3084, line: 8, size: 64, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3099, file: !3084, line: 9, baseType: !109, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3099, file: !3084, line: 10, baseType: !295, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3092, file: !3084, line: 49, baseType: !109, size: 32, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3083, file: !3084, line: 57, baseType: !3105, size: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 53, size: 128, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3105, file: !3084, line: 54, baseType: !2753, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3105, file: !3084, line: 55, baseType: !489, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3105, file: !3084, line: 56, baseType: !3098, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3083, file: !3084, line: 66, baseType: !3111, size: 256)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 60, size: 256, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116, !3118}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3111, file: !3084, line: 61, baseType: !2753, size: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3111, file: !3084, line: 62, baseType: !489, size: 32, offset: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3111, file: !3084, line: 63, baseType: !109, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3111, file: !3084, line: 64, baseType: !3117, size: 64, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !432, line: 94, baseType: !433)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3111, file: !3084, line: 65, baseType: !3117, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3083, file: !3084, line: 105, baseType: !3120, size: 256)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 69, size: 256, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3120, file: !3084, line: 70, baseType: !295, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3084, line: 79, baseType: !3124, size: 192, offset: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3084, line: 79, size: 192, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3135, !3140}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3124, file: !3084, line: 81, baseType: !109, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3124, file: !3084, line: 86, baseType: !869, size: 16)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3124, file: !3084, line: 92, baseType: !3129, size: 192)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3084, line: 88, size: 192, elements: !3130)
!3130 = !{!3131, !3133, !3134}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3129, file: !3084, line: 89, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !1661)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3129, file: !3084, line: 90, baseType: !295, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3129, file: !3084, line: 91, baseType: !295, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3124, file: !3084, line: 97, baseType: !3136, size: 96)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3084, line: 94, size: 96, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3136, file: !3084, line: 95, baseType: !3132, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3136, file: !3084, line: 96, baseType: !159, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3124, file: !3084, line: 103, baseType: !3141, size: 128)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3084, line: 99, size: 128, elements: !3142)
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3141, file: !3084, line: 100, baseType: !272, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3141, file: !3084, line: 101, baseType: !159, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3141, file: !3084, line: 102, baseType: !159, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3083, file: !3084, line: 111, baseType: !3147, size: 128)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 108, size: 128, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3147, file: !3084, line: 109, baseType: !434, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3147, file: !3084, line: 110, baseType: !109, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3083, file: !3084, line: 118, baseType: !3152, size: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3084, line: 114, size: 128, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3152, file: !3084, line: 115, baseType: !295, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3152, file: !3084, line: 116, baseType: !109, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3152, file: !3084, line: 117, baseType: !7, size: 32, offset: 96)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1498, file: !1173, line: 1208, baseType: !2937, size: 448, offset: 17664)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1498, file: !1173, line: 1215, baseType: !266, size: 64, offset: 18112)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1498, file: !1173, line: 1217, baseType: !266, size: 64, offset: 18176)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1498, file: !1173, line: 1219, baseType: !266, size: 64, offset: 18240)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1498, file: !1173, line: 1223, baseType: !3162, size: 64, offset: 18304)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3163, line: 99, baseType: !3164)
!3163 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3163, line: 99, size: 64, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3164, file: !3163, line: 99, baseType: !1745, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1498, file: !1173, line: 1225, baseType: !518, size: 32, offset: 18368)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1498, file: !1173, line: 1226, baseType: !109, size: 32, offset: 18400)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1498, file: !1173, line: 1227, baseType: !109, size: 32, offset: 18432)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1498, file: !1173, line: 1231, baseType: !3171, size: 64, offset: 18496)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1173, line: 1231, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1498, file: !1173, line: 1233, baseType: !241, size: 128, offset: 18560)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1498, file: !1173, line: 1240, baseType: !3175, size: 64, offset: 18688)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1173, line: 62, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1498, file: !1173, line: 1242, baseType: !3178, size: 64, offset: 18752)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1173, line: 1242, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1498, file: !1173, line: 1244, baseType: !241, size: 128, offset: 18816)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1498, file: !1173, line: 1245, baseType: !3182, size: 64, offset: 18944)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1173, line: 51, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1498, file: !1173, line: 1246, baseType: !731, size: 256, offset: 19008)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1498, file: !1173, line: 1247, baseType: !7, size: 32, offset: 19264)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1498, file: !1173, line: 1250, baseType: !3187, size: 64, offset: 19328)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1173, line: 57, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1498, file: !1173, line: 1251, baseType: !731, size: 256, offset: 19392)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1498, file: !1173, line: 1252, baseType: !241, size: 128, offset: 19648)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1498, file: !1173, line: 1259, baseType: !2443, size: 64, offset: 19776)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1498, file: !1173, line: 1260, baseType: !869, size: 16, offset: 19840)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1498, file: !1173, line: 1261, baseType: !869, size: 16, offset: 19856)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1498, file: !1173, line: 1314, baseType: !3195, size: 64, offset: 19904)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3197, line: 62, size: 256, align: 256, elements: !3198)
!3197 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3196, file: !3197, line: 75, baseType: !159, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3196, file: !3197, line: 90, baseType: !159, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3196, file: !3197, line: 112, baseType: !267, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !3197, line: 132, baseType: !159, size: 32, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3196, file: !3197, line: 140, baseType: !159, size: 32, offset: 160)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3196, file: !3197, line: 149, baseType: !159, size: 32, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3196, file: !3197, line: 154, baseType: !3206, offset: 224)
!3206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, elements: !1881)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1498, file: !1173, line: 1315, baseType: !158, size: 32, offset: 19968)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1498, file: !1173, line: 1316, baseType: !158, size: 32, offset: 20000)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1498, file: !1173, line: 1321, baseType: !272, size: 64, offset: 20032)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1498, file: !1173, line: 1325, baseType: !109, size: 32, offset: 20096)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1498, file: !1173, line: 1326, baseType: !109, size: 32, offset: 20128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1498, file: !1173, line: 1327, baseType: !109, size: 32, offset: 20160)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1498, file: !1173, line: 1328, baseType: !109, size: 32, offset: 20192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1498, file: !1173, line: 1329, baseType: !951, size: 128, align: 64, offset: 20224)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1498, file: !1173, line: 1332, baseType: !3216, size: 128, offset: 20352)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3217, line: 51, size: 128, elements: !3218)
!3217 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3218 = !{!3219, !3224, !3225}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3216, file: !3217, line: 60, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3221, line: 7, size: 64, elements: !3222)
!3221 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3220, file: !3221, line: 12, baseType: !1742, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3216, file: !3217, line: 63, baseType: !811, size: 8, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3216, file: !3217, line: 70, baseType: !811, size: 8, offset: 72)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1498, file: !1173, line: 1335, baseType: !2495, size: 64, offset: 20480)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1498, file: !1173, line: 1337, baseType: !3228, size: 128, offset: 20544)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3217, line: 39, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3228, file: !3217, line: 40, baseType: !2282, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3228, file: !3217, line: 42, baseType: !159, size: 32, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3228, file: !3217, line: 43, baseType: !159, size: 32, offset: 96)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1498, file: !1173, line: 1340, baseType: !3234, size: 64, offset: 20672)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1173, line: 69, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1498, file: !1173, line: 1351, baseType: !109, size: 32, offset: 20736)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1498, file: !1173, line: 1352, baseType: !109, size: 32, offset: 20768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1498, file: !1173, line: 1354, baseType: !272, size: 64, offset: 20800)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1498, file: !1173, line: 1364, baseType: !266, size: 64, offset: 20864)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1498, file: !1173, line: 1365, baseType: !266, size: 64, offset: 20928)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1498, file: !1173, line: 1412, baseType: !272, size: 64, offset: 20992)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1498, file: !1173, line: 1453, baseType: !3243, size: 64, offset: 21056)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1173, line: 1453, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1498, file: !1173, line: 1457, baseType: !3246, size: 64, offset: 21120)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3248)
!3248 = !{!3249, !3250, !3269, !3272, !3273, !3306, !3316}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3247, file: !68, line: 62, baseType: !67, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, scope: !3247, file: !68, line: 64, baseType: !3251, size: 192, offset: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !68, line: 64, size: 192, elements: !3252)
!3252 = !{!3253, !3264}
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !68, line: 65, baseType: !3254, size: 192)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !68, line: 65, size: 192, elements: !3255)
!3255 = !{!3256, !3263}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3254, file: !68, line: 66, baseType: !3257, size: 128)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3258, line: 50, size: 128, elements: !3259)
!3258 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3259 = !{!3260, !3261, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3257, file: !3258, line: 52, baseType: !272, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3257, file: !3258, line: 54, baseType: !7, size: 32, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3257, file: !3258, line: 55, baseType: !7, size: 32, offset: 96)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3254, file: !68, line: 67, baseType: !272, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3251, file: !68, line: 70, baseType: !3265, size: 192)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3251, file: !68, line: 70, size: 192, elements: !3266)
!3266 = !{!3267, !3268}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3265, file: !68, line: 71, baseType: !951, size: 128, align: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3265, file: !68, line: 72, baseType: !272, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3247, file: !68, line: 76, baseType: !3270, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3247, file: !68, line: 77, baseType: !272, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3247, file: !68, line: 79, baseType: !3274, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3258, line: 25, size: 256, elements: !3276)
!3276 = !{!3277, !3283, !3287}
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3258, line: 26, baseType: !3278, size: 128)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3258, line: 26, size: 128, elements: !3279)
!3279 = !{!3280, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3278, file: !3258, line: 27, baseType: !3281, size: 128)
!3281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !2811)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3278, file: !3258, line: 28, baseType: !3281, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3275, file: !3258, line: 31, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3286)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3258, line: 23, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3258, line: 33, baseType: !3288, size: 64, offset: 192)
!3288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3258, line: 33, size: 64, elements: !3289)
!3289 = !{!3290, !3296, !3301}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3288, file: !3258, line: 38, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3288, file: !3258, line: 34, size: 64, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3291, file: !3258, line: 35, baseType: !727, size: 32)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3291, file: !3258, line: 36, baseType: !148, size: 8, offset: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3291, file: !3258, line: 37, baseType: !148, size: 8, offset: 40)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3288, file: !3258, line: 42, baseType: !3297, size: 16)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3288, file: !3258, line: 39, size: 16, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3297, file: !3258, line: 40, baseType: !148, size: 8)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3297, file: !3258, line: 41, baseType: !148, size: 8, offset: 8)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3288, file: !3258, line: 46, baseType: !3302, size: 16)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3288, file: !3258, line: 43, size: 16, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3302, file: !3258, line: 44, baseType: !148, size: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3302, file: !3258, line: 45, baseType: !148, size: 8, offset: 8)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3247, file: !68, line: 81, baseType: !3307, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3315}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3308, file: !68, line: 86, baseType: !3270, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3308, file: !68, line: 87, baseType: !272, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3308, file: !68, line: 88, baseType: !272, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3308, file: !68, line: 89, baseType: !272, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3308, file: !68, line: 90, baseType: !811, size: 8, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3308, file: !68, line: 92, baseType: !3307, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3247, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1498, file: !1173, line: 1463, baseType: !3318, offset: 21184)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1173, line: 739, elements: !1018)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1498, file: !1173, line: 1470, baseType: !951, size: 128, align: 64, offset: 21184)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1498, file: !1173, line: 1471, baseType: !1511, size: 32, offset: 21312)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1498, file: !1173, line: 1472, baseType: !109, size: 32, offset: 21344)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1498, file: !1173, line: 1474, baseType: !1497, size: 64, offset: 21376)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1498, file: !1173, line: 1475, baseType: !971, size: 320, offset: 21440)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1498, file: !1173, line: 1478, baseType: !3325, size: 64, offset: 21760)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2135, line: 49, size: 512, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3334, !3335, !3336, !3337}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3326, file: !2135, line: 50, baseType: !3325, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3326, file: !2135, line: 51, baseType: !295, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3326, file: !2135, line: 52, baseType: !272, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3326, file: !2135, line: 53, baseType: !272, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3326, file: !2135, line: 54, baseType: !3333, size: 64, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3326, file: !2135, line: 56, baseType: !7, size: 32, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3326, file: !2135, line: 58, baseType: !7, size: 32, offset: 352)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3326, file: !2135, line: 59, baseType: !265, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3326, file: !2135, line: 60, baseType: !2634, size: 64, offset: 448)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1498, file: !1173, line: 1482, baseType: !1511, size: 32, offset: 21824)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1498, file: !1173, line: 1489, baseType: !295, size: 64, offset: 21888)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1498, file: !1173, line: 1504, baseType: !295, size: 64, offset: 21952)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1498, file: !1173, line: 1505, baseType: !267, size: 64, offset: 22016)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1498, file: !1173, line: 1506, baseType: !266, size: 64, offset: 22080)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1498, file: !1173, line: 1507, baseType: !267, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1498, file: !1173, line: 1508, baseType: !267, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1498, file: !1173, line: 1509, baseType: !267, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1498, file: !1173, line: 1510, baseType: !951, size: 128, align: 64, offset: 22208)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1498, file: !1173, line: 1511, baseType: !109, size: 32, offset: 22336)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1498, file: !1173, line: 1515, baseType: !3349, size: 64, offset: 22400)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1525, line: 56, size: 64, elements: !3350)
!3350 = !{!3351}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3349, file: !1525, line: 57, baseType: !1528, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1498, file: !1173, line: 1518, baseType: !3349, size: 64, offset: 22464)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1498, file: !1173, line: 1528, baseType: !951, size: 128, align: 64, offset: 22528)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1498, file: !1173, line: 1552, baseType: !3355, size: 35328, offset: 23040)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3356, line: 430, size: 35328, elements: !3357)
!3356 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3357 = !{!3358, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3387, !3388, !3389, !3390, !3391, !3392, !3395, !3396, !3397, !3398}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3355, file: !3356, line: 432, baseType: !3359, size: 192)
!3359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3360, size: 192, elements: !191)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3361, line: 16, size: 64, elements: !3362)
!3361 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3360, file: !3361, line: 17, baseType: !154, size: 16)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3360, file: !3361, line: 18, baseType: !154, size: 16, offset: 16)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3360, file: !3361, line: 19, baseType: !154, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3360, file: !3361, line: 19, baseType: !154, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3360, file: !3361, line: 19, baseType: !154, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3360, file: !3361, line: 19, baseType: !154, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3360, file: !3361, line: 19, baseType: !154, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3360, file: !3361, line: 20, baseType: !154, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3360, file: !3361, line: 20, baseType: !154, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3360, file: !3361, line: 20, baseType: !154, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3360, file: !3361, line: 20, baseType: !154, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3360, file: !3361, line: 20, baseType: !154, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3360, file: !3361, line: 20, baseType: !154, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3355, file: !3356, line: 436, baseType: !272, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3355, file: !3356, line: 440, baseType: !156, size: 16, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3355, file: !3356, line: 441, baseType: !156, size: 16, offset: 272)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3355, file: !3356, line: 442, baseType: !156, size: 16, offset: 288)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3355, file: !3356, line: 443, baseType: !156, size: 16, offset: 304)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3355, file: !3356, line: 447, baseType: !272, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3355, file: !3356, line: 448, baseType: !272, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3355, file: !3356, line: 459, baseType: !3384, size: 256, offset: 448)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3385, size: 256, elements: !196)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3356, line: 428, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3355, file: !3356, line: 461, baseType: !272, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3355, file: !3356, line: 463, baseType: !272, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3355, file: !3356, line: 465, baseType: !272, size: 64, offset: 832)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3355, file: !3356, line: 466, baseType: !272, size: 64, offset: 896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3355, file: !3356, line: 467, baseType: !272, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3355, file: !3356, line: 473, baseType: !3393, size: 64, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3356, line: 10, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3355, file: !3356, line: 480, baseType: !272, size: 64, offset: 1088)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3355, file: !3356, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3355, file: !3356, line: 491, baseType: !158, size: 32, offset: 1184)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3355, file: !3356, line: 501, baseType: !3399, size: 33792, offset: 1536)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3400, line: 448, size: 33792, elements: !3401)
!3400 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3401 = !{!3402, !3403, !3404, !3566, !3567, !3573, !3574}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3399, file: !3400, line: 461, baseType: !7, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3399, file: !3400, line: 468, baseType: !272, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3399, file: !3400, line: 476, baseType: !3405, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3400, line: 356, size: 33280, align: 512, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3406, file: !3400, line: 358, baseType: !7, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3406, file: !3400, line: 361, baseType: !7, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3406, file: !3400, line: 364, baseType: !266, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3406, file: !3400, line: 367, baseType: !266, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3406, file: !3400, line: 370, baseType: !266, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3406, file: !3400, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3406, file: !3400, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3406, file: !3400, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3406, file: !3400, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3406, file: !3400, line: 397, baseType: !3418, size: 32768, offset: 512)
!3418 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3400, line: 348, size: 32768, elements: !3419)
!3419 = !{!3420, !3435, !3472, !3549, !3562}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3418, file: !3400, line: 349, baseType: !3421, size: 896)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3400, line: 12, size: 896, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3434}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3421, file: !3400, line: 13, baseType: !158, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3421, file: !3400, line: 14, baseType: !158, size: 32, offset: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3421, file: !3400, line: 15, baseType: !158, size: 32, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3421, file: !3400, line: 16, baseType: !158, size: 32, offset: 96)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3421, file: !3400, line: 17, baseType: !158, size: 32, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3421, file: !3400, line: 18, baseType: !158, size: 32, offset: 160)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3421, file: !3400, line: 19, baseType: !158, size: 32, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3421, file: !3400, line: 22, baseType: !3431, size: 640, offset: 224)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 640, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 20)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3421, file: !3400, line: 25, baseType: !158, size: 32, offset: 864)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3418, file: !3400, line: 350, baseType: !3436, size: 4096, align: 128)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3400, line: 34, size: 4096, align: 128, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3441, !3442, !3457, !3458, !3459, !3461, !3463, !3467}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3436, file: !3400, line: 35, baseType: !154, size: 16)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3436, file: !3400, line: 36, baseType: !154, size: 16, offset: 16)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3436, file: !3400, line: 37, baseType: !154, size: 16, offset: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3436, file: !3400, line: 38, baseType: !154, size: 16, offset: 48)
!3442 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3400, line: 39, baseType: !3443, size: 128, offset: 64)
!3443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3400, line: 39, size: 128, elements: !3444)
!3444 = !{!3445, !3450}
!3445 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !3400, line: 40, baseType: !3446, size: 128)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3443, file: !3400, line: 40, size: 128, elements: !3447)
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3446, file: !3400, line: 41, baseType: !266, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3446, file: !3400, line: 42, baseType: !266, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3443, file: !3400, line: 44, baseType: !3451, size: 128)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3443, file: !3400, line: 44, size: 128, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3451, file: !3400, line: 45, baseType: !158, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3451, file: !3400, line: 46, baseType: !158, size: 32, offset: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3451, file: !3400, line: 47, baseType: !158, size: 32, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3451, file: !3400, line: 48, baseType: !158, size: 32, offset: 96)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3436, file: !3400, line: 51, baseType: !158, size: 32, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3436, file: !3400, line: 52, baseType: !158, size: 32, offset: 224)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3436, file: !3400, line: 55, baseType: !3460, size: 1024, offset: 256)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !216)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3436, file: !3400, line: 58, baseType: !3462, size: 2048, offset: 1280)
!3462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2048, elements: !403)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3436, file: !3400, line: 60, baseType: !3464, size: 384, offset: 3328)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 384, elements: !3465)
!3465 = !{!3466}
!3466 = !DISubrange(count: 12)
!3467 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3400, line: 62, baseType: !3468, size: 384, offset: 3712)
!3468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3400, line: 62, size: 384, elements: !3469)
!3469 = !{!3470, !3471}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3468, file: !3400, line: 63, baseType: !3464, size: 384)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3468, file: !3400, line: 64, baseType: !3464, size: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3418, file: !3400, line: 351, baseType: !3473, size: 1088)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3400, line: 79, size: 1088, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3548}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3473, file: !3400, line: 80, baseType: !158, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3473, file: !3400, line: 81, baseType: !158, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3473, file: !3400, line: 82, baseType: !158, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3473, file: !3400, line: 83, baseType: !158, size: 32, offset: 96)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3473, file: !3400, line: 84, baseType: !158, size: 32, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3473, file: !3400, line: 85, baseType: !158, size: 32, offset: 160)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3473, file: !3400, line: 86, baseType: !158, size: 32, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3473, file: !3400, line: 88, baseType: !3431, size: 640, offset: 224)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3473, file: !3400, line: 89, baseType: !148, size: 8, offset: 864)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3473, file: !3400, line: 90, baseType: !148, size: 8, offset: 872)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3473, file: !3400, line: 91, baseType: !148, size: 8, offset: 880)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3473, file: !3400, line: 92, baseType: !148, size: 8, offset: 888)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3473, file: !3400, line: 93, baseType: !148, size: 8, offset: 896)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3473, file: !3400, line: 94, baseType: !148, size: 8, offset: 904)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3473, file: !3400, line: 95, baseType: !3490, size: 64, offset: 960)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3492, line: 11, size: 128, elements: !3493)
!3492 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3493 = !{!3494, !3495}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3491, file: !3492, line: 12, baseType: !434, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3491, file: !3492, line: 13, baseType: !3496, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3498, line: 103, size: 1344, elements: !3499)
!3498 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3528, !3529, !3530}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3497, file: !3498, line: 109, baseType: !272, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3497, file: !3498, line: 110, baseType: !272, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3497, file: !3498, line: 111, baseType: !272, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3497, file: !3498, line: 112, baseType: !272, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3497, file: !3498, line: 113, baseType: !272, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3497, file: !3498, line: 114, baseType: !272, size: 64, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3497, file: !3498, line: 117, baseType: !272, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3497, file: !3498, line: 118, baseType: !272, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3497, file: !3498, line: 119, baseType: !272, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3497, file: !3498, line: 120, baseType: !272, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3497, file: !3498, line: 121, baseType: !272, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3497, file: !3498, line: 122, baseType: !272, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3497, file: !3498, line: 123, baseType: !272, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3497, file: !3498, line: 124, baseType: !272, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3497, file: !3498, line: 125, baseType: !272, size: 64, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3497, file: !3498, line: 139, baseType: !272, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3497, file: !3498, line: 142, baseType: !272, size: 64, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !3498, line: 144, baseType: !3518, size: 64, offset: 1088)
!3518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !3498, line: 144, size: 64, elements: !3519)
!3519 = !{!3520, !3521, !3522}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3518, file: !3498, line: 146, baseType: !154, size: 16)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3518, file: !3498, line: 148, baseType: !266, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3518, file: !3498, line: 150, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3498, line: 59, size: 64, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3523, file: !3498, line: 61, baseType: !266, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3523, file: !3498, line: 63, baseType: !266, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3523, file: !3498, line: 65, baseType: !266, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3497, file: !3498, line: 153, baseType: !272, size: 64, offset: 1152)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3497, file: !3498, line: 154, baseType: !272, size: 64, offset: 1216)
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !3498, line: 156, baseType: !3531, size: 64, offset: 1280)
!3531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !3498, line: 156, size: 64, elements: !3532)
!3532 = !{!3533, !3534, !3535}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3531, file: !3498, line: 158, baseType: !154, size: 16)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3531, file: !3498, line: 160, baseType: !266, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3531, file: !3498, line: 162, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3498, line: 69, size: 64, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3536, file: !3498, line: 71, baseType: !266, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3536, file: !3498, line: 73, baseType: !266, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3536, file: !3498, line: 75, baseType: !266, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3536, file: !3498, line: 77, baseType: !266, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3536, file: !3498, line: 80, baseType: !266, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3536, file: !3498, line: 83, baseType: !266, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3536, file: !3498, line: 86, baseType: !266, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3536, file: !3498, line: 88, baseType: !266, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3536, file: !3498, line: 93, baseType: !266, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3536, file: !3498, line: 100, baseType: !266, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3473, file: !3400, line: 96, baseType: !158, size: 32, offset: 1024)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3418, file: !3400, line: 352, baseType: !3550, size: 4608, align: 512)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3400, line: 333, size: 4608, align: 512, elements: !3551)
!3551 = !{!3552, !3553, !3560}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3550, file: !3400, line: 334, baseType: !3436, size: 4096, align: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3550, file: !3400, line: 335, baseType: !3554, size: 512, offset: 4096)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3400, line: 312, size: 512, elements: !3555)
!3555 = !{!3556, !3557, !3558}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3554, file: !3400, line: 313, baseType: !266, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3554, file: !3400, line: 314, baseType: !266, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3554, file: !3400, line: 315, baseType: !3559, size: 384, offset: 128)
!3559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 384, elements: !1964)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3550, file: !3400, line: 336, baseType: !3561, offset: 4608)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, elements: !1881)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3418, file: !3400, line: 353, baseType: !3563, size: 32768)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 32768, elements: !3564)
!3564 = !{!3565}
!3565 = !DISubrange(count: 4096)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3399, file: !3400, line: 484, baseType: !3405, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3399, file: !3400, line: 491, baseType: !3568, size: 128, offset: 256)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3400, line: 404, size: 128, elements: !3569)
!3569 = !{!3570, !3571, !3572}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3568, file: !3400, line: 424, baseType: !266, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3568, file: !3400, line: 432, baseType: !7, size: 32, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3568, file: !3400, line: 440, baseType: !7, size: 32, offset: 96)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3399, file: !3400, line: 498, baseType: !3568, size: 128, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3399, file: !3400, line: 508, baseType: !3406, size: 33280, align: 512, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1474, file: !1475, line: 16, baseType: !1484, size: 192, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1474, file: !1475, line: 17, baseType: !358, size: 32, offset: 704)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !622, file: !14, line: 1240, baseType: !295, size: 64, offset: 6912)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !622, file: !14, line: 1243, baseType: !158, size: 32, offset: 6976)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !622, file: !14, line: 1245, baseType: !1231, size: 64, offset: 7040)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !622, file: !14, line: 1246, baseType: !1231, size: 64, offset: 7104)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !622, file: !14, line: 1248, baseType: !159, size: 32, offset: 7168)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !622, file: !14, line: 1249, baseType: !3583, size: 64, offset: 7232)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !622, file: !14, line: 1252, baseType: !215, size: 256, offset: 7296)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !622, file: !14, line: 1253, baseType: !3587, size: 128, offset: 7552)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3588, line: 21, baseType: !3589)
!3588 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3588, line: 19, size: 128, elements: !3590)
!3590 = !{!3591}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3589, file: !3588, line: 20, baseType: !3592, size: 128)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !2811)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !622, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !622, file: !14, line: 1261, baseType: !731, size: 256, offset: 7744)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !622, file: !14, line: 1267, baseType: !223, size: 64, offset: 8000)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !622, file: !14, line: 1269, baseType: !568, size: 64, offset: 8064)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !622, file: !14, line: 1271, baseType: !3598, size: 448, offset: 8128)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1240, line: 63, size: 448, elements: !3599)
!3599 = !{!3600, !3605, !3606, !3607, !3608, !3609, !3610}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3598, file: !1240, line: 64, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!272, !3604, !1238}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3598, file: !1240, line: 66, baseType: !3601, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3598, file: !1240, line: 69, baseType: !434, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3598, file: !1240, line: 70, baseType: !109, size: 32, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3598, file: !1240, line: 71, baseType: !7, size: 32, offset: 224)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3598, file: !1240, line: 74, baseType: !241, size: 128, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3598, file: !1240, line: 85, baseType: !3611, size: 64, offset: 384)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !622, file: !14, line: 1274, baseType: !735, size: 64, offset: 8576)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !622, file: !14, line: 1280, baseType: !735, size: 64, offset: 8640)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !622, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !622, file: !14, line: 1286, baseType: !2545, size: 32, offset: 8736)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !622, file: !14, line: 1289, baseType: !1051, size: 64, offset: 8768)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !622, file: !14, line: 1290, baseType: !1099, size: 64, offset: 8832)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !622, file: !14, line: 1297, baseType: !2058, size: 64, offset: 8896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !622, file: !14, line: 1304, baseType: !3620, size: 64, offset: 8960)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3621, line: 49, size: 64, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3622 = !{!3623}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3620, file: !3621, line: 50, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3621, line: 41, size: 512, align: 512, elements: !3626)
!3626 = !{!3627, !3628, !3633}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3625, file: !3621, line: 43, baseType: !338, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3625, file: !3621, line: 45, baseType: !3629, size: 192, offset: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3621, line: 29, size: 192, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3629, file: !3621, line: 30, baseType: !241, size: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3629, file: !3621, line: 32, baseType: !434, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3625, file: !3621, line: 46, baseType: !434, size: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !622, file: !14, line: 1305, baseType: !3620, size: 64, offset: 9024)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !14, line: 1306, baseType: !951, size: 128, align: 64, offset: 9088)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !622, file: !14, line: 1307, baseType: !989, size: 256, offset: 9216)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !622, file: !14, line: 1309, baseType: !731, size: 256, offset: 9472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !622, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !622, file: !14, line: 1317, baseType: !338, size: 32, align: 512, offset: 10240)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !622, file: !14, line: 1318, baseType: !241, size: 128, offset: 10304)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !622, file: !14, line: 1320, baseType: !338, size: 32, offset: 10432)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !622, file: !14, line: 1321, baseType: !241, size: 128, offset: 10496)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !616, file: !617, line: 73, baseType: !109, size: 32, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !616, file: !617, line: 74, baseType: !3645, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1905, line: 42, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !570, file: !514, line: 141, baseType: !3649, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!109, !1301, !811}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !570, file: !514, line: 142, baseType: !3653, size: 64, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!512, !512, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !513, file: !514, line: 96, baseType: !621, size: 64, offset: 832)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !513, file: !514, line: 97, baseType: !272, size: 64, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !513, file: !514, line: 98, baseType: !295, size: 64, offset: 960)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !513, file: !514, line: 100, baseType: !3662, size: 128, offset: 1024)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !514, line: 100, size: 128, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3662, file: !514, line: 101, baseType: !241, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3662, file: !514, line: 102, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !513, file: !514, line: 104, baseType: !241, size: 128, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !513, file: !514, line: 105, baseType: !241, size: 128, offset: 1280)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !513, file: !514, line: 113, baseType: !3670, size: 128, offset: 1408)
!3670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !513, file: !514, line: 109, size: 128, elements: !3671)
!3671 = !{!3672, !3673, !3674}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3670, file: !514, line: 110, baseType: !975, size: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3670, file: !514, line: 111, baseType: !528, size: 128)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3670, file: !514, line: 112, baseType: !951, size: 128, align: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !506, file: !14, line: 1968, baseType: !3676, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!223, !512, !477, !3679}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3681, line: 10, size: 128, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3682 = !{!3683, !3684}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3680, file: !3681, line: 11, baseType: !774, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3680, file: !3681, line: 12, baseType: !295, size: 64, offset: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !506, file: !14, line: 1969, baseType: !3686, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !3645, !477, !109}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !506, file: !14, line: 1970, baseType: !3690, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!500, !477, !109, !811}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !506, file: !14, line: 1972, baseType: !3694, size: 64, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !512, !400, !109}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !506, file: !14, line: 1974, baseType: !3698, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !3645, !477, !512, !440, !811}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !506, file: !14, line: 1976, baseType: !3702, size: 64, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !512, !477, !512}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !506, file: !14, line: 1977, baseType: !3706, size: 64, offset: 448)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!109, !477, !512}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !506, file: !14, line: 1978, baseType: !3710, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!109, !3645, !477, !512, !223}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !506, file: !14, line: 1980, baseType: !3714, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!109, !3645, !477, !512, !440}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !506, file: !14, line: 1982, baseType: !3706, size: 64, offset: 640)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !506, file: !14, line: 1983, baseType: !3719, size: 64, offset: 704)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!109, !3645, !477, !512, !440, !626}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !506, file: !14, line: 1985, baseType: !3723, size: 64, offset: 768)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!109, !3645, !477, !512, !477, !512, !7}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !506, file: !14, line: 1987, baseType: !3727, size: 64, offset: 832)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!109, !3645, !512, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3745, !3754, !3755, !3760, !3761, !3762}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3731, file: !14, line: 227, baseType: !7, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3731, file: !14, line: 228, baseType: !440, size: 16, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !14, line: 241, baseType: !3736, size: 32, offset: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !14, line: 241, size: 32, elements: !3737)
!3737 = !{!3738, !3739}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3736, file: !14, line: 242, baseType: !483, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3736, file: !14, line: 243, baseType: !3740, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3741, line: 16, baseType: !3742)
!3741 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3741, line: 14, size: 32, elements: !3743)
!3743 = !{!3744}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3742, file: !3741, line: 15, baseType: !488, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, scope: !3731, file: !14, line: 245, baseType: !3746, size: 32, offset: 96)
!3746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3731, file: !14, line: 245, size: 32, elements: !3747)
!3747 = !{!3748, !3749}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3746, file: !14, line: 246, baseType: !492, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3746, file: !14, line: 247, baseType: !3750, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3741, line: 20, baseType: !3751)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3741, line: 18, size: 32, elements: !3752)
!3752 = !{!3753}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3751, file: !3741, line: 19, baseType: !496, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3731, file: !14, line: 249, baseType: !631, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3731, file: !14, line: 250, baseType: !3756, size: 128, offset: 192)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1232, line: 13, size: 128, elements: !3757)
!3757 = !{!3758, !3759}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3756, file: !1232, line: 14, baseType: !1231, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3756, file: !1232, line: 15, baseType: !434, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3731, file: !14, line: 251, baseType: !3756, size: 128, offset: 320)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3731, file: !14, line: 252, baseType: !3756, size: 128, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3731, file: !14, line: 259, baseType: !1821, size: 64, offset: 576)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !506, file: !14, line: 1988, baseType: !3764, size: 64, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!109, !3645, !1301, !3767, !158, !7}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3769, line: 22, size: 1280, elements: !3770)
!3769 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3768, file: !3769, line: 23, baseType: !158, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3768, file: !3769, line: 24, baseType: !440, size: 16, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3768, file: !3769, line: 25, baseType: !7, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3768, file: !3769, line: 26, baseType: !1943, size: 32, offset: 96)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3768, file: !3769, line: 27, baseType: !266, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3768, file: !3769, line: 28, baseType: !266, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3768, file: !3769, line: 41, baseType: !266, size: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3768, file: !3769, line: 42, baseType: !626, size: 32, offset: 320)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3768, file: !3769, line: 43, baseType: !626, size: 32, offset: 352)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3768, file: !3769, line: 44, baseType: !483, size: 32, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3768, file: !3769, line: 45, baseType: !492, size: 32, offset: 416)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3768, file: !3769, line: 46, baseType: !631, size: 64, offset: 448)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3768, file: !3769, line: 47, baseType: !3756, size: 128, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3768, file: !3769, line: 48, baseType: !3756, size: 128, offset: 640)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3768, file: !3769, line: 49, baseType: !3756, size: 128, offset: 768)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3768, file: !3769, line: 50, baseType: !3756, size: 128, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3768, file: !3769, line: 51, baseType: !266, size: 64, offset: 1024)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3768, file: !3769, line: 52, baseType: !266, size: 64, offset: 1088)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3768, file: !3769, line: 53, baseType: !158, size: 32, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3768, file: !3769, line: 54, baseType: !158, size: 32, offset: 1184)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3768, file: !3769, line: 55, baseType: !266, size: 64, offset: 1216)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !506, file: !14, line: 1990, baseType: !3793, size: 64, offset: 960)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!430, !512, !400, !445}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !506, file: !14, line: 1991, baseType: !3797, size: 64, offset: 1024)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!109, !477, !3800, !266, !266}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !506, file: !14, line: 1993, baseType: !3803, size: 64, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!109, !477, !109}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !506, file: !14, line: 1994, baseType: !3807, size: 64, offset: 1152)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!109, !477, !512, !1821, !7, !440}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !506, file: !14, line: 1997, baseType: !3811, size: 64, offset: 1216)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!109, !3645, !477, !1821, !440}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !506, file: !14, line: 1999, baseType: !3815, size: 64, offset: 1280)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!500, !3645, !512, !109}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !506, file: !14, line: 2001, baseType: !3819, size: 64, offset: 1344)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!109, !3645, !512, !500, !109}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !506, file: !14, line: 2003, baseType: !3823, size: 64, offset: 1408)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!109, !3645, !512, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !506, file: !14, line: 2005, baseType: !3829, size: 64, offset: 1472)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!109, !512, !3826}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !506, file: !14, line: 2006, baseType: !3833, size: 64, offset: 1536)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!3836, !477}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3838)
!3838 = !{!3839, !3846}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3837, file: !14, line: 3193, baseType: !3840, size: 128)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3841, line: 296, size: 128, elements: !3842)
!3841 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3842 = !{!3843, !3844, !3845}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3840, file: !3841, line: 297, baseType: !338, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3840, file: !3841, line: 299, baseType: !1243, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3840, file: !3841, line: 300, baseType: !295, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3837, file: !14, line: 3194, baseType: !158, size: 32, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !478, file: !14, line: 655, baseType: !621, size: 64, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !478, file: !14, line: 656, baseType: !473, size: 64, offset: 512)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !478, file: !14, line: 659, baseType: !295, size: 64, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !478, file: !14, line: 663, baseType: !272, size: 64, offset: 640)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !14, line: 671, baseType: !3852, size: 32, offset: 704)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !14, line: 671, size: 32, elements: !3853)
!3853 = !{!3854, !3856}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3852, file: !14, line: 672, baseType: !3855, size: 32)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3852, file: !14, line: 673, baseType: !7, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !478, file: !14, line: 675, baseType: !626, size: 32, offset: 736)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !478, file: !14, line: 676, baseType: !631, size: 64, offset: 768)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !478, file: !14, line: 677, baseType: !3756, size: 128, offset: 832)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !478, file: !14, line: 678, baseType: !3756, size: 128, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !478, file: !14, line: 679, baseType: !3756, size: 128, offset: 1088)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !478, file: !14, line: 680, baseType: !338, size: 32, offset: 1216)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !478, file: !14, line: 681, baseType: !156, size: 16, offset: 1248)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !478, file: !14, line: 682, baseType: !148, size: 8, offset: 1264)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !478, file: !14, line: 683, baseType: !148, size: 8, offset: 1272)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !478, file: !14, line: 684, baseType: !1379, size: 64, offset: 1280)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !478, file: !14, line: 691, baseType: !272, size: 64, offset: 1344)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !478, file: !14, line: 692, baseType: !1391, size: 320, offset: 1408)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !478, file: !14, line: 694, baseType: !272, size: 64, offset: 1728)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !478, file: !14, line: 695, baseType: !272, size: 64, offset: 1792)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !478, file: !14, line: 697, baseType: !975, size: 128, offset: 1856)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !478, file: !14, line: 698, baseType: !241, size: 128, offset: 1984)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !478, file: !14, line: 707, baseType: !241, size: 128, offset: 2112)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !478, file: !14, line: 708, baseType: !241, size: 128, offset: 2240)
!3875 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !14, line: 709, baseType: !3876, size: 128, offset: 2368)
!3876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !14, line: 709, size: 128, elements: !3877)
!3877 = !{!3878, !3879}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3876, file: !14, line: 710, baseType: !1099, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3876, file: !14, line: 711, baseType: !951, size: 128, align: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !478, file: !14, line: 713, baseType: !737, size: 64, offset: 2496)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !478, file: !14, line: 714, baseType: !737, size: 64, offset: 2560)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !478, file: !14, line: 715, baseType: !358, size: 32, offset: 2624)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !478, file: !14, line: 716, baseType: !358, size: 32, offset: 2656)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !478, file: !14, line: 717, baseType: !358, size: 32, offset: 2688)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !478, file: !14, line: 719, baseType: !358, size: 32, offset: 2720)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !14, line: 721, baseType: !3887, size: 64, offset: 2752)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !14, line: 721, size: 64, elements: !3888)
!3888 = !{!3889, !3890}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3887, file: !14, line: 722, baseType: !2089, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3887, file: !14, line: 723, baseType: !1122, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !478, file: !14, line: 725, baseType: !3892, size: 64, offset: 2816)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !478, file: !14, line: 726, baseType: !474, size: 1536, align: 64, offset: 2880)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !478, file: !14, line: 727, baseType: !241, size: 128, offset: 4416)
!3896 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !14, line: 728, baseType: !3897, size: 64, offset: 4544)
!3897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !14, line: 728, size: 64, elements: !3898)
!3898 = !{!3899, !3900, !3903, !3904}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3897, file: !14, line: 729, baseType: !2495, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3897, file: !14, line: 730, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3897, file: !14, line: 731, baseType: !400, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3897, file: !14, line: 732, baseType: !7, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !478, file: !14, line: 735, baseType: !159, size: 32, offset: 4608)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !478, file: !14, line: 738, baseType: !159, size: 32, offset: 4640)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !478, file: !14, line: 739, baseType: !3583, size: 64, offset: 4672)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !478, file: !14, line: 750, baseType: !295, size: 64, offset: 4736)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !474, file: !14, line: 474, baseType: !3840, size: 128, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !474, file: !14, line: 475, baseType: !1391, size: 320, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !474, file: !14, line: 476, baseType: !1243, size: 32, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !474, file: !14, line: 477, baseType: !358, size: 32, offset: 544)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !474, file: !14, line: 482, baseType: !1677, size: 128, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !474, file: !14, line: 483, baseType: !272, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !474, file: !14, line: 484, baseType: !272, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !474, file: !14, line: 485, baseType: !3917, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3919)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3920)
!3920 = !{!3921, !3925, !3995, !3999, !4003, !4009, !4013, !4017, !4022, !4026, !4030, !4034, !4035, !4039, !4043, !4047, !4052, !4056, !4063, !4064}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3919, file: !14, line: 405, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!109, !2282, !1134}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3919, file: !14, line: 406, baseType: !3926, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!109, !1821, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3931)
!3931 = !{!3932, !3962, !3976}
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 295, baseType: !3933, size: 512)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 295, size: 512, elements: !3934)
!3934 = !{!3935, !3961}
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3933, file: !38, line: 296, baseType: !3936, size: 448)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3933, file: !38, line: 296, size: 448, elements: !3937)
!3937 = !{!3938, !3939, !3948, !3949, !3950, !3959, !3960}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3936, file: !38, line: 298, baseType: !272, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !38, line: 299, baseType: !3940, size: 128, offset: 64)
!3940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !38, line: 299, size: 128, elements: !3941)
!3941 = !{!3942, !3943}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3940, file: !38, line: 300, baseType: !241, size: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3940, file: !38, line: 302, baseType: !3944, size: 128)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3940, file: !38, line: 302, size: 128, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3944, file: !38, line: 303, baseType: !295, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3944, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3936, file: !38, line: 310, baseType: !473, size: 64, offset: 192)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3936, file: !38, line: 311, baseType: !272, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !38, line: 312, baseType: !3951, size: 64, offset: 320)
!3951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !38, line: 312, size: 64, elements: !3952)
!3952 = !{!3953, !3954}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3951, file: !38, line: 313, baseType: !295, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3951, file: !38, line: 314, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3956)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3957)
!3957 = !{!3958}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3956, file: !38, line: 256, baseType: !272, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3936, file: !38, line: 316, baseType: !358, size: 32, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3936, file: !38, line: 317, baseType: !358, size: 32, offset: 416)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3933, file: !38, line: 323, baseType: !2283, size: 512, align: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 325, baseType: !3963, size: 512, offset: 512)
!3963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 325, size: 512, elements: !3964)
!3964 = !{!3965, !3975}
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !38, line: 326, baseType: !3966, size: 320)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3963, file: !38, line: 326, size: 320, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971, !3972, !3973, !3974}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3966, file: !38, line: 327, baseType: !272, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3966, file: !38, line: 328, baseType: !272, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3966, file: !38, line: 329, baseType: !272, size: 64, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3966, file: !38, line: 331, baseType: !358, size: 32, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3966, file: !38, line: 332, baseType: !358, size: 32, offset: 224)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3966, file: !38, line: 333, baseType: !358, size: 32, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3966, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3963, file: !38, line: 339, baseType: !2283, size: 512, align: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, scope: !3930, file: !38, line: 341, baseType: !3977, size: 512, offset: 1024)
!3977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3930, file: !38, line: 341, size: 512, elements: !3978)
!3978 = !{!3979, !3988, !3994}
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3977, file: !38, line: 342, baseType: !3980, size: 384)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3977, file: !38, line: 342, size: 384, elements: !3981)
!3981 = !{!3982, !3983, !3984, !3985, !3986, !3987}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3980, file: !38, line: 343, baseType: !272, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3980, file: !38, line: 344, baseType: !272, size: 64, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3980, file: !38, line: 346, baseType: !295, size: 64, offset: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3980, file: !38, line: 347, baseType: !295, size: 64, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3980, file: !38, line: 348, baseType: !295, size: 64, offset: 256)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3980, file: !38, line: 349, baseType: !295, size: 64, offset: 320)
!3988 = !DIDerivedType(tag: DW_TAG_member, scope: !3977, file: !38, line: 352, baseType: !3989, size: 256)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3977, file: !38, line: 352, size: 256, elements: !3990)
!3990 = !{!3991, !3992, !3993}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3989, file: !38, line: 353, baseType: !272, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3989, file: !38, line: 354, baseType: !272, size: 64, offset: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3989, file: !38, line: 356, baseType: !241, size: 128, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3977, file: !38, line: 359, baseType: !2283, size: 512, align: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3919, file: !14, line: 409, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!109, !473, !1134}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3919, file: !14, line: 412, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!811, !473, !3929}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3919, file: !14, line: 414, baseType: !4004, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3919, file: !14, line: 416, baseType: !4010, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!109, !1821, !473, !631, !7, !3333, !2510}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3919, file: !14, line: 419, baseType: !4014, size: 64, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!109, !1821, !473, !631, !7, !7, !2282, !295}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3919, file: !14, line: 424, baseType: !4018, size: 64, offset: 448)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!4021, !473, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !242, line: 131, baseType: !266)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3919, file: !14, line: 425, baseType: !4023, size: 64, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !3929, !445, !445}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3919, file: !14, line: 426, baseType: !4027, size: 64, offset: 576)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!811, !3929, !1243}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3919, file: !14, line: 427, baseType: !4031, size: 64, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{null, !3929}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3919, file: !14, line: 428, baseType: !2108, size: 64, offset: 704)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3919, file: !14, line: 433, baseType: !4036, size: 64, offset: 768)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!109, !473, !3929, !3929, !74}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3919, file: !14, line: 435, baseType: !4040, size: 64, offset: 832)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!109, !3929}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3919, file: !14, line: 436, baseType: !4044, size: 64, offset: 896)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!811, !3929, !445, !445}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3919, file: !14, line: 438, baseType: !4048, size: 64, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !3929, !4051, !4051}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3919, file: !14, line: 439, baseType: !4053, size: 64, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!109, !473, !2282}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3919, file: !14, line: 442, baseType: !4057, size: 64, offset: 1088)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!109, !4060, !1821, !4062}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3919, file: !14, line: 444, baseType: !2502, size: 64, offset: 1152)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3919, file: !14, line: 445, baseType: !4065, size: 64, offset: 1216)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!109, !2111, !2133}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !14, line: 486, baseType: !272, size: 64, offset: 896)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !474, file: !14, line: 487, baseType: !1391, size: 320, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !474, file: !14, line: 488, baseType: !2545, size: 32, offset: 1280)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !474, file: !14, line: 489, baseType: !338, size: 32, offset: 1312)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !474, file: !14, line: 490, baseType: !241, size: 128, offset: 1344)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !474, file: !14, line: 491, baseType: !295, size: 64, offset: 1472)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !464, file: !424, line: 180, baseType: !4075, size: 64, offset: 320)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!430, !1821, !331, !463, !400, !631, !445}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !464, file: !424, line: 182, baseType: !4075, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !464, file: !424, line: 184, baseType: !4080, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!109, !1821, !331, !463, !2173}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !452, file: !424, line: 90, baseType: !4084, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !452, file: !424, line: 91, baseType: !4086, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !414, file: !326, line: 120, baseType: !4088, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!4091, !383}
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4093)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4094)
!4094 = !{!4095, !4096, !4100, !4104, !4110, !4114}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4093, file: !82, line: 40, baseType: !81, size: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4093, file: !82, line: 41, baseType: !4097, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!811}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4093, file: !82, line: 42, baseType: !4101, size: 64, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!295}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4093, file: !82, line: 43, baseType: !4105, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!2634, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4093, file: !82, line: 44, baseType: !4111, size: 64, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!2634}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4093, file: !82, line: 45, baseType: !774, size: 64, offset: 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !414, file: !326, line: 121, baseType: !4116, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!2634, !383}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !414, file: !326, line: 122, baseType: !4120, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !383, !4123, !4124}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !325, file: !326, line: 70, baseType: !4126, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !646, line: 190, size: 1152, elements: !4128)
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4220, !4221, !4222, !4223, !4224, !4227}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4127, file: !646, line: 191, baseType: !358, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4127, file: !646, line: 192, baseType: !358, size: 32, offset: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4127, file: !646, line: 202, baseType: !4126, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4127, file: !646, line: 203, baseType: !223, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4127, file: !646, line: 205, baseType: !843, size: 192, align: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4127, file: !646, line: 207, baseType: !2634, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4127, file: !646, line: 208, baseType: !7, size: 32, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !646, line: 209, baseType: !4137, size: 256, offset: 512)
!4137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4127, file: !646, line: 209, size: 256, elements: !4138)
!4138 = !{!4139, !4148, !4152}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4137, file: !646, line: 210, baseType: !4140, size: 256)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !646, line: 153, size: 256, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4147}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4140, file: !646, line: 154, baseType: !272, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4140, file: !646, line: 156, baseType: !1680, size: 64, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4140, file: !646, line: 162, baseType: !4145, size: 64, offset: 128)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !646, line: 162, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4140, file: !646, line: 167, baseType: !272, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4137, file: !646, line: 211, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !646, line: 170, size: 64, elements: !4150)
!4150 = !{!4151}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4149, file: !646, line: 171, baseType: !4126, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4137, file: !646, line: 212, baseType: !4153, size: 256)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !646, line: 174, size: 256, elements: !4154)
!4154 = !{!4155, !4215, !4218, !4219}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4153, file: !646, line: 175, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4158)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !646, line: 271, size: 768, elements: !4159)
!4159 = !{!4160, !4180, !4184, !4188, !4192, !4196, !4200, !4204, !4205, !4206, !4207, !4211}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4158, file: !646, line: 276, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!109, !4164}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !646, line: 251, size: 1216, elements: !4166)
!4166 = !{!4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4165, file: !646, line: 253, baseType: !4126, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4165, file: !646, line: 254, baseType: !1821, size: 64, offset: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4165, file: !646, line: 255, baseType: !1171, size: 64, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4165, file: !646, line: 256, baseType: !295, size: 64, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4165, file: !646, line: 259, baseType: !731, size: 256, offset: 256)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4165, file: !646, line: 260, baseType: !731, size: 256, offset: 512)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4165, file: !646, line: 261, baseType: !109, size: 32, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4165, file: !646, line: 262, baseType: !241, size: 128, offset: 832)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4165, file: !646, line: 263, baseType: !400, size: 64, offset: 960)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4165, file: !646, line: 265, baseType: !445, size: 64, offset: 1024)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4165, file: !646, line: 266, baseType: !811, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4165, file: !646, line: 267, baseType: !811, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4165, file: !646, line: 268, baseType: !2218, size: 64, offset: 1152)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4158, file: !646, line: 277, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !4164}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4158, file: !646, line: 290, baseType: !4185, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!109, !1171, !295}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4158, file: !646, line: 292, baseType: !4189, size: 64, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!295, !1171, !2102}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4158, file: !646, line: 293, baseType: !4193, size: 64, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!295, !1171, !295, !2102}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4158, file: !646, line: 294, baseType: !4197, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !1171, !295}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4158, file: !646, line: 296, baseType: !4201, size: 64, offset: 384)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!430, !4164, !400, !445, !631}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4158, file: !646, line: 306, baseType: !445, size: 64, offset: 448)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4158, file: !646, line: 313, baseType: !811, size: 8, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4158, file: !646, line: 314, baseType: !4201, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4158, file: !646, line: 317, baseType: !4208, size: 64, offset: 640)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!2160, !4164, !2162}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4158, file: !646, line: 320, baseType: !4212, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!109, !4164, !2173}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4153, file: !646, line: 176, baseType: !4216, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !646, line: 35, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4153, file: !646, line: 177, baseType: !631, size: 64, offset: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4153, file: !646, line: 178, baseType: !4126, size: 64, offset: 192)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4127, file: !646, line: 215, baseType: !295, size: 64, offset: 768)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4127, file: !646, line: 221, baseType: !266, size: 64, offset: 832)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4127, file: !646, line: 223, baseType: !156, size: 16, offset: 896)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4127, file: !646, line: 224, baseType: !440, size: 16, offset: 912)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4127, file: !646, line: 225, baseType: !4225, size: 64, offset: 960)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !646, line: 36, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4127, file: !646, line: 227, baseType: !951, size: 128, align: 64, offset: 1024)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !325, file: !326, line: 71, baseType: !4229, size: 32, offset: 448)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4230, line: 19, size: 32, elements: !4231)
!4230 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4231 = !{!4232}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4229, file: !4230, line: 20, baseType: !1511, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !325, file: !326, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !325, file: !326, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !325, file: !326, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !325, file: !326, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !325, file: !326, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !322, file: !94, line: 707, baseType: !321, size: 64, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !322, file: !94, line: 709, baseType: !4240, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !322, file: !94, line: 711, baseType: !223, size: 64, offset: 640)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !322, file: !94, line: 712, baseType: !4244, size: 64, offset: 704)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4256, !4261, !4265}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4246, file: !94, line: 90, baseType: !223, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4246, file: !94, line: 91, baseType: !449, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4246, file: !94, line: 92, baseType: !4251, size: 64, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!109, !4254, !395}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4246, file: !94, line: 93, baseType: !4257, size: 64, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!400, !4254, !4260, !4123, !4124}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4246, file: !94, line: 95, baseType: !4262, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !321}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4246, file: !94, line: 97, baseType: !4266, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4268)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4269)
!4269 = !{!4270, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4268, file: !101, line: 287, baseType: !4271, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!109, !321}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4268, file: !101, line: 288, baseType: !4262, size: 64, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4268, file: !101, line: 289, baseType: !4271, size: 64, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4268, file: !101, line: 290, baseType: !4271, size: 64, offset: 192)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4268, file: !101, line: 291, baseType: !4271, size: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4268, file: !101, line: 292, baseType: !4271, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4268, file: !101, line: 293, baseType: !4271, size: 64, offset: 384)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4268, file: !101, line: 294, baseType: !4271, size: 64, offset: 448)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4268, file: !101, line: 295, baseType: !4271, size: 64, offset: 512)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4268, file: !101, line: 296, baseType: !4271, size: 64, offset: 576)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4268, file: !101, line: 297, baseType: !4271, size: 64, offset: 640)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4268, file: !101, line: 298, baseType: !4271, size: 64, offset: 704)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4268, file: !101, line: 299, baseType: !4271, size: 64, offset: 768)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4268, file: !101, line: 300, baseType: !4271, size: 64, offset: 832)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4268, file: !101, line: 301, baseType: !4271, size: 64, offset: 896)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4268, file: !101, line: 302, baseType: !4271, size: 64, offset: 960)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4268, file: !101, line: 303, baseType: !4271, size: 64, offset: 1024)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4268, file: !101, line: 304, baseType: !4271, size: 64, offset: 1088)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4268, file: !101, line: 305, baseType: !4271, size: 64, offset: 1152)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4268, file: !101, line: 306, baseType: !4271, size: 64, offset: 1216)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4268, file: !101, line: 307, baseType: !4271, size: 64, offset: 1280)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4268, file: !101, line: 308, baseType: !4271, size: 64, offset: 1344)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4268, file: !101, line: 309, baseType: !4271, size: 64, offset: 1408)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !322, file: !94, line: 714, baseType: !4297, size: 64, offset: 768)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4299)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4300, line: 80, size: 1344, elements: !4301)
!4300 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4301 = !{!4302, !4303, !4304, !4305, !4306, !4307, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4380}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4299, file: !4300, line: 81, baseType: !223, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4299, file: !4300, line: 82, baseType: !223, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4299, file: !4300, line: 83, baseType: !449, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4299, file: !4300, line: 84, baseType: !449, size: 64, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4299, file: !4300, line: 85, baseType: !449, size: 64, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4299, file: !4300, line: 87, baseType: !4308, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!109, !321, !4311}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4313)
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319, !4320, !4333, !4343, !4344, !4345, !4346, !4347, !4355, !4356, !4357, !4358, !4359, !4360}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4312, file: !88, line: 97, baseType: !223, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4312, file: !88, line: 98, baseType: !4297, size: 64, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4312, file: !88, line: 100, baseType: !660, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4312, file: !88, line: 101, baseType: !223, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4312, file: !88, line: 103, baseType: !811, size: 8, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4312, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4312, file: !88, line: 106, baseType: !4321, size: 64, offset: 320)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4323)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4324, line: 282, size: 1600, elements: !4325)
!4324 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4325 = !{!4326, !4327, !4328, !4332}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4323, file: !4324, line: 283, baseType: !215, size: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4323, file: !4324, line: 284, baseType: !215, size: 256, offset: 256)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4323, file: !4324, line: 285, baseType: !4329, size: 1024, offset: 512)
!4329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !4330)
!4330 = !{!4331}
!4331 = !DISubrange(count: 128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4323, file: !4324, line: 286, baseType: !2634, size: 64, offset: 1536)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4312, file: !88, line: 107, baseType: !4334, size: 64, offset: 384)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4336)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4324, line: 217, size: 256, elements: !4337)
!4337 = !{!4338, !4339, !4341, !4342}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4336, file: !4324, line: 218, baseType: !3592, size: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4336, file: !4324, line: 219, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4324, line: 15, baseType: !272)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4336, file: !4324, line: 220, baseType: !159, size: 32, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4336, file: !4324, line: 221, baseType: !159, size: 32, offset: 224)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4312, file: !88, line: 109, baseType: !4271, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4312, file: !88, line: 110, baseType: !4262, size: 64, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4312, file: !88, line: 111, baseType: !4271, size: 64, offset: 576)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4312, file: !88, line: 112, baseType: !4262, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4312, file: !88, line: 113, baseType: !4348, size: 64, offset: 704)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!109, !321, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4353)
!4353 = !{!4354}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4352, file: !101, line: 59, baseType: !109, size: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4312, file: !88, line: 114, baseType: !4271, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4312, file: !88, line: 115, baseType: !449, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4312, file: !88, line: 116, baseType: !449, size: 64, offset: 896)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4312, file: !88, line: 118, baseType: !4266, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4312, file: !88, line: 119, baseType: !4262, size: 64, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4312, file: !88, line: 121, baseType: !4361, size: 64, offset: 1088)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4299, file: !4300, line: 88, baseType: !4251, size: 64, offset: 384)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4299, file: !4300, line: 89, baseType: !4271, size: 64, offset: 448)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4299, file: !4300, line: 90, baseType: !4262, size: 64, offset: 512)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4299, file: !4300, line: 91, baseType: !4262, size: 64, offset: 576)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4299, file: !4300, line: 92, baseType: !4262, size: 64, offset: 640)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4299, file: !4300, line: 94, baseType: !4271, size: 64, offset: 704)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4299, file: !4300, line: 95, baseType: !4271, size: 64, offset: 768)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4299, file: !4300, line: 97, baseType: !4348, size: 64, offset: 832)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4299, file: !4300, line: 98, baseType: !4271, size: 64, offset: 896)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4299, file: !4300, line: 100, baseType: !4271, size: 64, offset: 960)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4299, file: !4300, line: 102, baseType: !4271, size: 64, offset: 1024)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4299, file: !4300, line: 103, baseType: !4262, size: 64, offset: 1088)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4299, file: !4300, line: 105, baseType: !4266, size: 64, offset: 1152)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4299, file: !4300, line: 107, baseType: !4377, size: 64, offset: 1216)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4379)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4300, line: 107, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4299, file: !4300, line: 109, baseType: !811, size: 8, offset: 1280)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !322, file: !94, line: 715, baseType: !4311, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !322, file: !94, line: 717, baseType: !295, size: 64, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !322, file: !94, line: 719, baseType: !295, size: 64, offset: 960)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !322, file: !94, line: 721, baseType: !731, size: 256, offset: 1024)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !322, file: !94, line: 725, baseType: !4386, size: 448, offset: 1280)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4387)
!4387 = !{!4388, !4389, !4390, !4391}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4386, file: !94, line: 518, baseType: !241, size: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4386, file: !94, line: 519, baseType: !241, size: 128, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4386, file: !94, line: 520, baseType: !241, size: 128, offset: 256)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4386, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !322, file: !94, line: 726, baseType: !4393, size: 2496, offset: 1728)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4477, !4481}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4393, file: !101, line: 664, baseType: !4351, size: 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4393, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4393, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4393, file: !101, line: 667, baseType: !811, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4393, file: !101, line: 668, baseType: !811, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4393, file: !101, line: 669, baseType: !811, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4393, file: !101, line: 670, baseType: !811, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4393, file: !101, line: 671, baseType: !811, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4393, file: !101, line: 672, baseType: !811, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4393, file: !101, line: 673, baseType: !811, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4393, file: !101, line: 674, baseType: !811, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4393, file: !101, line: 675, baseType: !158, size: 32, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4393, file: !101, line: 676, baseType: !338, size: 32, offset: 96)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4393, file: !101, line: 678, baseType: !241, size: 128, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4393, file: !101, line: 679, baseType: !680, size: 256, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4393, file: !101, line: 680, baseType: !4411, size: 64, offset: 512)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4413, line: 43, size: 1536, elements: !4414)
!4413 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4412, file: !4413, line: 44, baseType: !223, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4412, file: !4413, line: 45, baseType: !109, size: 32, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4412, file: !4413, line: 46, baseType: !241, size: 128, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4412, file: !4413, line: 47, baseType: !338, size: 32, offset: 256)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4412, file: !4413, line: 48, baseType: !4420, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4412, file: !4413, line: 49, baseType: !971, size: 320, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4412, file: !4413, line: 50, baseType: !272, size: 64, offset: 704)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4412, file: !4413, line: 51, baseType: !1626, size: 64, offset: 768)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4412, file: !4413, line: 52, baseType: !1626, size: 64, offset: 832)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4412, file: !4413, line: 53, baseType: !1626, size: 64, offset: 896)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4412, file: !4413, line: 54, baseType: !1626, size: 64, offset: 960)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4412, file: !4413, line: 55, baseType: !1626, size: 64, offset: 1024)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4412, file: !4413, line: 56, baseType: !272, size: 64, offset: 1088)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4412, file: !4413, line: 57, baseType: !272, size: 64, offset: 1152)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4412, file: !4413, line: 58, baseType: !272, size: 64, offset: 1216)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4412, file: !4413, line: 59, baseType: !272, size: 64, offset: 1280)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4412, file: !4413, line: 60, baseType: !272, size: 64, offset: 1344)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4412, file: !4413, line: 61, baseType: !321, size: 64, offset: 1408)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4412, file: !4413, line: 62, baseType: !811, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4412, file: !4413, line: 63, baseType: !811, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4393, file: !101, line: 681, baseType: !811, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4393, file: !101, line: 682, baseType: !811, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4393, file: !101, line: 683, baseType: !811, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4393, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4393, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4393, file: !101, line: 690, baseType: !1618, size: 512, offset: 640)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4393, file: !101, line: 691, baseType: !266, size: 64, offset: 1152)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4393, file: !101, line: 692, baseType: !989, size: 256, offset: 1216)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4393, file: !101, line: 693, baseType: !1484, size: 192, offset: 1472)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4393, file: !101, line: 694, baseType: !4420, size: 64, offset: 1664)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4393, file: !101, line: 695, baseType: !358, size: 32, offset: 1728)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4393, file: !101, line: 696, baseType: !358, size: 32, offset: 1760)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4393, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4393, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4393, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4393, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4393, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4393, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4393, file: !101, line: 703, baseType: !811, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4393, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4393, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4393, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4393, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4393, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4393, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4393, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4393, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4393, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4393, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4393, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4393, file: !101, line: 715, baseType: !266, size: 64, offset: 2048)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4393, file: !101, line: 716, baseType: !266, size: 64, offset: 2112)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4393, file: !101, line: 717, baseType: !266, size: 64, offset: 2176)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4393, file: !101, line: 718, baseType: !266, size: 64, offset: 2240)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4393, file: !101, line: 720, baseType: !4472, size: 64, offset: 2304)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4474)
!4474 = !{!4475, !4476}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4473, file: !101, line: 633, baseType: !338, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4473, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4393, file: !101, line: 721, baseType: !4478, size: 64, offset: 2368)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{null, !321, !727}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4393, file: !101, line: 722, baseType: !4482, size: 64, offset: 2432)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !322, file: !94, line: 727, baseType: !4485, size: 64, offset: 4224)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4487)
!4487 = !{!4488, !4489, !4490, !4494, !4495, !4496}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4486, file: !101, line: 743, baseType: !4268, size: 1472)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4486, file: !101, line: 744, baseType: !4271, size: 64, offset: 1472)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4486, file: !101, line: 745, baseType: !4491, size: 64, offset: 1536)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{null, !321, !811}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4486, file: !101, line: 746, baseType: !4271, size: 64, offset: 1600)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4486, file: !101, line: 747, baseType: !4262, size: 64, offset: 1664)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4486, file: !101, line: 748, baseType: !4262, size: 64, offset: 1728)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !322, file: !94, line: 736, baseType: !4498, size: 128, offset: 4288)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4499)
!4499 = !{!4500, !4504}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4498, file: !94, line: 531, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4503, line: 13, flags: DIFlagFwdDecl)
!4503 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4498, file: !94, line: 532, baseType: !4505, size: 64, offset: 64)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !322, file: !94, line: 738, baseType: !4508, size: 64, offset: 4416)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4510)
!4510 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !322, file: !94, line: 740, baseType: !4512, size: 64, offset: 4480)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !322, file: !94, line: 741, baseType: !266, size: 64, offset: 4544)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !322, file: !94, line: 746, baseType: !266, size: 64, offset: 4608)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !322, file: !94, line: 747, baseType: !4516, size: 64, offset: 4672)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4518)
!4518 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !322, file: !94, line: 749, baseType: !4520, size: 64, offset: 4736)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4522)
!4522 = !{!4523, !4524, !4525}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4521, file: !94, line: 433, baseType: !7, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4521, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4521, file: !94, line: 435, baseType: !272, size: 64, offset: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !322, file: !94, line: 751, baseType: !241, size: 128, offset: 4800)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !322, file: !94, line: 762, baseType: !4528, size: 64, offset: 4928)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !322, file: !94, line: 770, baseType: !4531, offset: 4992)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4532, line: 5, elements: !1018)
!4532 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !322, file: !94, line: 772, baseType: !4534, size: 64, offset: 4992)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4536, line: 18, flags: DIFlagFwdDecl)
!4536 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !322, file: !94, line: 773, baseType: !4538, size: 64, offset: 5056)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4540, line: 41, size: 512, elements: !4541)
!4540 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4541 = !{!4542, !4543, !4637, !4638, !4639, !4640}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4539, file: !4540, line: 42, baseType: !4538, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4539, file: !4540, line: 43, baseType: !4544, size: 64, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4546)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4540, line: 125, size: 1408, elements: !4547)
!4547 = !{!4548, !4552, !4556, !4562, !4566, !4567, !4572, !4576, !4580, !4584, !4588, !4589, !4593, !4597, !4601, !4612, !4613, !4614, !4615, !4625, !4629, !4633}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4546, file: !4540, line: 126, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!4538, !4538}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4546, file: !4540, line: 127, baseType: !4553, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !4538}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4546, file: !4540, line: 128, baseType: !4557, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!811, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4539)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4546, file: !4540, line: 129, baseType: !4563, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!2634, !4560, !4254}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4546, file: !4540, line: 131, baseType: !4557, size: 64, offset: 256)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4546, file: !4540, line: 133, baseType: !4568, size: 64, offset: 320)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!4571, !4560}
!4571 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4540, line: 132, flags: DIFlagFwdDecl)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4546, file: !4540, line: 134, baseType: !4573, size: 64, offset: 384)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!811, !4560, !223}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4546, file: !4540, line: 136, baseType: !4577, size: 64, offset: 448)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!109, !4560, !223, !7, !295, !445}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4546, file: !4540, line: 141, baseType: !4581, size: 64, offset: 512)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!109, !4560, !223, !1066, !445}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4546, file: !4540, line: 144, baseType: !4585, size: 64, offset: 576)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!223, !4560}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4546, file: !4540, line: 145, baseType: !4585, size: 64, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4546, file: !4540, line: 146, baseType: !4590, size: 64, offset: 704)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!4538, !4560}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4546, file: !4540, line: 148, baseType: !4594, size: 64, offset: 768)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!4538, !4560, !4538}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4546, file: !4540, line: 151, baseType: !4598, size: 64, offset: 832)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!4538, !4560, !223}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4546, file: !4540, line: 153, baseType: !4602, size: 64, offset: 896)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!109, !4560, !223, !223, !7, !7, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4540, line: 94, size: 640, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4606, file: !4540, line: 95, baseType: !4538, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4606, file: !4540, line: 96, baseType: !7, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4606, file: !4540, line: 97, baseType: !4611, size: 512, offset: 128)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 512, elements: !1661)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4546, file: !4540, line: 158, baseType: !4594, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4546, file: !4540, line: 161, baseType: !4590, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4546, file: !4540, line: 163, baseType: !4549, size: 64, offset: 1088)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4546, file: !4540, line: 164, baseType: !4616, size: 64, offset: 1152)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!109, !4560, !4619}
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4540, line: 73, size: 128, elements: !4621)
!4621 = !{!4622, !4623, !4624}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4620, file: !4540, line: 74, baseType: !7, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4620, file: !4540, line: 75, baseType: !7, size: 32, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4620, file: !4540, line: 76, baseType: !4560, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4546, file: !4540, line: 166, baseType: !4626, size: 64, offset: 1216)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!295, !4538, !109}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4546, file: !4540, line: 167, baseType: !4630, size: 64, offset: 1280)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!109, !4560, !7}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4546, file: !4540, line: 168, baseType: !4634, size: 64, offset: 1344)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!109, !4538}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4539, file: !4540, line: 44, baseType: !321, size: 64, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4539, file: !4540, line: 45, baseType: !241, size: 128, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4539, file: !4540, line: 46, baseType: !241, size: 128, offset: 320)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4539, file: !4540, line: 47, baseType: !148, size: 8, offset: 448)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !322, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !322, file: !94, line: 778, baseType: !626, size: 32, offset: 5152)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !322, file: !94, line: 779, baseType: !158, size: 32, offset: 5184)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !322, file: !94, line: 781, baseType: !338, size: 32, offset: 5216)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !322, file: !94, line: 782, baseType: !241, size: 128, offset: 5248)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !322, file: !94, line: 784, baseType: !4647, size: 64, offset: 5376)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4650, line: 52, size: 768, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4660, !4664, !4665, !4666, !4667, !4671, !4675}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4649, file: !4650, line: 53, baseType: !223, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4649, file: !4650, line: 55, baseType: !449, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4649, file: !4650, line: 56, baseType: !449, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4649, file: !4650, line: 58, baseType: !4251, size: 64, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4649, file: !4650, line: 59, baseType: !4657, size: 64, offset: 256)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!400, !4254, !4260}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4649, file: !4650, line: 61, baseType: !4661, size: 64, offset: 320)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !4647}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4649, file: !4650, line: 62, baseType: !4262, size: 64, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4649, file: !4650, line: 64, baseType: !4271, size: 64, offset: 448)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4649, file: !4650, line: 66, baseType: !4091, size: 64, offset: 512)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4649, file: !4650, line: 67, baseType: !4668, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!2634, !4254}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4649, file: !4650, line: 69, baseType: !4672, size: 64, offset: 640)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !4254, !4123, !4124}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4649, file: !4650, line: 71, baseType: !4266, size: 64, offset: 704)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !322, file: !94, line: 785, baseType: !449, size: 64, offset: 5440)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !322, file: !94, line: 787, baseType: !4262, size: 64, offset: 5504)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !322, file: !94, line: 788, baseType: !4679, size: 64, offset: 5568)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !322, file: !94, line: 789, baseType: !4682, size: 64, offset: 5632)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !322, file: !94, line: 791, baseType: !4685, size: 64, offset: 5696)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691, !4692}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4686, file: !94, line: 598, baseType: !116, size: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4686, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4686, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4686, file: !94, line: 601, baseType: !811, size: 8, offset: 96)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4686, file: !94, line: 602, baseType: !811, size: 8, offset: 104)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !322, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !322, file: !94, line: 795, baseType: !811, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !322, file: !94, line: 796, baseType: !811, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !322, file: !94, line: 797, baseType: !811, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !322, file: !94, line: 798, baseType: !811, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !322, file: !94, line: 799, baseType: !811, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !249, file: !238, line: 676, baseType: !322, size: 5824, offset: 2240)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !249, file: !238, line: 677, baseType: !463, size: 64, offset: 8064)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !249, file: !238, line: 678, baseType: !463, size: 64, offset: 8128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !249, file: !238, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !249, file: !238, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !237, file: !238, line: 325, baseType: !248, size: 64, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !237, file: !238, line: 327, baseType: !295, size: 64, offset: 256)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !237, file: !238, line: 328, baseType: !306, size: 64, offset: 320)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !237, file: !238, line: 329, baseType: !4708, size: 64, offset: 384)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !238, line: 76, size: 832, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4716, !4717}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4709, file: !238, line: 77, baseType: !248, size: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4709, file: !238, line: 78, baseType: !241, size: 128, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4709, file: !238, line: 79, baseType: !4714, size: 64, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !238, line: 79, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4709, file: !238, line: 80, baseType: !152, size: 8, offset: 256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4709, file: !238, line: 81, baseType: !325, size: 512, offset: 320)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !237, file: !238, line: 331, baseType: !7, size: 32, offset: 448)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !237, file: !238, line: 332, baseType: !156, size: 16, offset: 480)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !237, file: !238, line: 333, baseType: !156, size: 16, offset: 496)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !237, file: !238, line: 334, baseType: !156, size: 16, offset: 512)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !237, file: !238, line: 335, baseType: !156, size: 16, offset: 528)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !237, file: !238, line: 336, baseType: !7, size: 32, offset: 544)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !237, file: !238, line: 337, baseType: !148, size: 8, offset: 576)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !237, file: !238, line: 338, baseType: !148, size: 8, offset: 584)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !237, file: !238, line: 344, baseType: !4727, size: 64, offset: 640)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4729, line: 415, size: 64, elements: !4730)
!4729 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4730 = !{!4731, !4732, !4733}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4728, file: !4729, line: 416, baseType: !148, size: 8)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4728, file: !4729, line: 417, baseType: !148, size: 8, offset: 8)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4728, file: !4729, line: 418, baseType: !158, size: 32, offset: 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !237, file: !238, line: 345, baseType: !236, size: 64, offset: 704)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !237, file: !238, line: 347, baseType: !158, size: 32, offset: 768)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !237, file: !238, line: 348, baseType: !148, size: 8, offset: 800)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !237, file: !238, line: 349, baseType: !148, size: 8, offset: 808)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !237, file: !238, line: 350, baseType: !148, size: 8, offset: 816)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !237, file: !238, line: 351, baseType: !148, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !237, file: !238, line: 352, baseType: !148, size: 8, offset: 832)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !237, file: !238, line: 353, baseType: !148, size: 8, offset: 840)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !237, file: !238, line: 354, baseType: !154, size: 16, offset: 848)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !237, file: !238, line: 355, baseType: !1080, size: 64, offset: 896)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !237, file: !238, line: 357, baseType: !4745, size: 64, offset: 960)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !238, line: 918, size: 2368, elements: !4747)
!4747 = !{!4748, !4749, !4750, !4763, !4767, !4771, !4775, !4777, !4778, !4782, !4783, !4787, !4807, !4808, !4809, !4810, !4815}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4746, file: !238, line: 919, baseType: !241, size: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4746, file: !238, line: 920, baseType: !223, size: 64, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4746, file: !238, line: 921, baseType: !4751, size: 64, offset: 192)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4753)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4324, line: 44, size: 320, elements: !4754)
!4754 = !{!4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4753, file: !4324, line: 45, baseType: !159, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4753, file: !4324, line: 45, baseType: !159, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4753, file: !4324, line: 46, baseType: !159, size: 32, offset: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4753, file: !4324, line: 46, baseType: !159, size: 32, offset: 96)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4753, file: !4324, line: 47, baseType: !159, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4753, file: !4324, line: 47, baseType: !159, size: 32, offset: 160)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4753, file: !4324, line: 48, baseType: !4340, size: 64, offset: 192)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4753, file: !4324, line: 49, baseType: !159, size: 32, offset: 256)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4746, file: !238, line: 922, baseType: !4764, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!109, !236, !4751}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4746, file: !238, line: 923, baseType: !4768, size: 64, offset: 320)
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4769, size: 64)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !236}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4746, file: !238, line: 924, baseType: !4772, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!109, !236, !4351}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4746, file: !238, line: 925, baseType: !4776, size: 64, offset: 448)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4746, file: !238, line: 926, baseType: !4768, size: 64, offset: 512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4746, file: !238, line: 927, baseType: !4779, size: 64, offset: 576)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!109, !236, !109}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4746, file: !238, line: 928, baseType: !4779, size: 64, offset: 640)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4746, file: !238, line: 929, baseType: !4784, size: 64, offset: 704)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!158, !236}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4746, file: !238, line: 930, baseType: !4788, size: 64, offset: 768)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4790)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !238, line: 837, size: 448, elements: !4791)
!4791 = !{!4792, !4798, !4802, !4803, !4804, !4805, !4806}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4790, file: !238, line: 839, baseType: !4793, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!4796, !236, !4797}
!4796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !238, line: 814, baseType: !7)
!4797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !238, line: 196, baseType: !7)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4790, file: !238, line: 843, baseType: !4799, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!4796, !236}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4790, file: !238, line: 846, baseType: !4799, size: 64, offset: 128)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4790, file: !238, line: 849, baseType: !4768, size: 64, offset: 192)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4790, file: !238, line: 850, baseType: !4768, size: 64, offset: 256)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4790, file: !238, line: 853, baseType: !4768, size: 64, offset: 320)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4790, file: !238, line: 856, baseType: !4768, size: 64, offset: 384)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4746, file: !238, line: 931, baseType: !449, size: 64, offset: 832)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4746, file: !238, line: 932, baseType: !449, size: 64, offset: 896)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4746, file: !238, line: 933, baseType: !4312, size: 1152, offset: 960)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4746, file: !238, line: 934, baseType: !4811, size: 192, offset: 2112)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !238, line: 801, size: 192, elements: !4812)
!4812 = !{!4813, !4814}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4811, file: !238, line: 802, baseType: !338, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4811, file: !238, line: 803, baseType: !241, size: 128, offset: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4746, file: !238, line: 935, baseType: !811, size: 8, offset: 2304)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !237, file: !238, line: 358, baseType: !266, size: 64, offset: 1024)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !237, file: !238, line: 364, baseType: !4521, size: 128, offset: 1088)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !237, file: !238, line: 366, baseType: !4819, size: 32, offset: 1216)
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !238, line: 171, baseType: !109)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !237, file: !238, line: 369, baseType: !148, size: 8, offset: 1248)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !237, file: !238, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !237, file: !238, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !237, file: !238, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !237, file: !238, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !237, file: !238, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !237, file: !238, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !237, file: !238, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !237, file: !238, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !237, file: !238, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !237, file: !238, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !237, file: !238, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !237, file: !238, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !237, file: !238, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !237, file: !238, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !237, file: !238, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !237, file: !238, line: 390, baseType: !7, size: 32, offset: 1280)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !237, file: !238, line: 391, baseType: !7, size: 32, offset: 1312)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !237, file: !238, line: 394, baseType: !4839, size: 64, offset: 1344)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !238, line: 316, flags: DIFlagFwdDecl)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !237, file: !238, line: 395, baseType: !154, size: 16, offset: 1408)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !237, file: !238, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !237, file: !238, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !237, file: !238, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !237, file: !238, line: 402, baseType: !4797, size: 32, offset: 1440)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !237, file: !238, line: 403, baseType: !322, size: 5824, offset: 1472)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !237, file: !238, line: 405, baseType: !109, size: 32, offset: 7296)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !237, file: !238, line: 411, baseType: !7, size: 32, offset: 7328)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !237, file: !238, line: 412, baseType: !4850, size: 5632, offset: 7360)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 5632, elements: !4851)
!4851 = !{!4852}
!4852 = !DISubrange(count: 11)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !237, file: !238, line: 413, baseType: !260, size: 512, offset: 12992)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !237, file: !238, line: 415, baseType: !811, size: 8, offset: 13504)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !237, file: !238, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !237, file: !238, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !237, file: !238, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !237, file: !238, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !237, file: !238, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !237, file: !238, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !237, file: !238, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !237, file: !238, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !237, file: !238, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !237, file: !238, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !237, file: !238, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !237, file: !238, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !237, file: !238, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !237, file: !238, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !237, file: !238, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !237, file: !238, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !237, file: !238, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !237, file: !238, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !237, file: !238, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !237, file: !238, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !237, file: !238, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !237, file: !238, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !237, file: !238, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !237, file: !238, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !237, file: !238, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !237, file: !238, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !237, file: !238, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !237, file: !238, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !237, file: !238, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !237, file: !238, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !237, file: !238, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !237, file: !238, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !237, file: !238, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !237, file: !238, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !237, file: !238, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !237, file: !238, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !237, file: !238, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !237, file: !238, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !237, file: !238, line: 468, baseType: !4894, size: 16, offset: 13552)
!4894 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !238, line: 222, baseType: !156)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !237, file: !238, line: 469, baseType: !358, size: 32, offset: 13568)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !237, file: !238, line: 471, baseType: !338, size: 32, offset: 13600)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !237, file: !238, line: 472, baseType: !4898, size: 512, offset: 13632)
!4898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 512, elements: !2811)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !237, file: !238, line: 473, baseType: !1099, size: 64, offset: 14144)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !237, file: !238, line: 474, baseType: !4901, size: 704, offset: 14208)
!4901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !463, size: 704, elements: !4851)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !237, file: !238, line: 475, baseType: !4901, size: 704, offset: 14912)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !237, file: !238, line: 487, baseType: !295, size: 64, offset: 15616)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !237, file: !238, line: 488, baseType: !689, size: 32, offset: 15680)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !237, file: !238, line: 490, baseType: !4906, size: 320, offset: 15744)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !238, line: 309, size: 320, elements: !4907)
!4907 = !{!4908, !4909, !4910}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4906, file: !238, line: 310, baseType: !731, size: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4906, file: !238, line: 311, baseType: !7, size: 32, offset: 256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4906, file: !238, line: 312, baseType: !148, size: 8, offset: 288)
!4911 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !238, line: 497, baseType: !4912, size: 64, offset: 16064)
!4912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !238, line: 497, size: 64, elements: !4913)
!4913 = !{!4914, !4941}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4912, file: !238, line: 498, baseType: !4915, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4729, line: 294, size: 1024, elements: !4917)
!4917 = !{!4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4940}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4916, file: !4729, line: 295, baseType: !109, size: 32)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4916, file: !4729, line: 296, baseType: !109, size: 32, offset: 32)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4916, file: !4729, line: 297, baseType: !158, size: 32, offset: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4916, file: !4729, line: 298, baseType: !154, size: 16, offset: 96)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4916, file: !4729, line: 299, baseType: !154, size: 16, offset: 112)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4916, file: !4729, line: 300, baseType: !154, size: 16, offset: 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4916, file: !4729, line: 301, baseType: !154, size: 16, offset: 144)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4916, file: !4729, line: 302, baseType: !154, size: 16, offset: 160)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4916, file: !4729, line: 303, baseType: !154, size: 16, offset: 176)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4916, file: !4729, line: 304, baseType: !154, size: 16, offset: 192)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4916, file: !4729, line: 305, baseType: !158, size: 32, offset: 224)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4916, file: !4729, line: 306, baseType: !148, size: 8, offset: 256)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4916, file: !4729, line: 307, baseType: !148, size: 8, offset: 264)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4916, file: !4729, line: 308, baseType: !154, size: 16, offset: 272)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4916, file: !4729, line: 309, baseType: !236, size: 64, offset: 320)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4916, file: !4729, line: 310, baseType: !236, size: 64, offset: 384)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4916, file: !4729, line: 311, baseType: !158, size: 32, offset: 448)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4916, file: !4729, line: 312, baseType: !148, size: 8, offset: 480)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4916, file: !4729, line: 313, baseType: !154, size: 16, offset: 496)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4916, file: !4729, line: 314, baseType: !154, size: 16, offset: 512)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4916, file: !4729, line: 315, baseType: !4939, size: 384, offset: 576)
!4939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 384, elements: !1964)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4916, file: !4729, line: 316, baseType: !811, size: 8, offset: 960)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4912, file: !238, line: 499, baseType: !236, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !237, file: !238, line: 501, baseType: !154, size: 16, offset: 16128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !237, file: !238, line: 502, baseType: !148, size: 8, offset: 16144)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !237, file: !238, line: 505, baseType: !154, size: 16, offset: 16160)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !237, file: !238, line: 506, baseType: !158, size: 32, offset: 16192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !237, file: !238, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !237, file: !238, line: 510, baseType: !154, size: 16, offset: 16240)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !237, file: !238, line: 511, baseType: !154, size: 16, offset: 16256)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !237, file: !238, line: 519, baseType: !154, size: 16, offset: 16272)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !237, file: !238, line: 520, baseType: !265, size: 64, offset: 16320)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !237, file: !238, line: 521, baseType: !445, size: 64, offset: 16384)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !237, file: !238, line: 526, baseType: !223, size: 64, offset: 16448)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !237, file: !238, line: 528, baseType: !272, size: 64, offset: 16512)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !237, file: !238, line: 531, baseType: !4955, size: 56, offset: 16576)
!4955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 56, elements: !852)
!4956 = !{!4957, !4958, !4959, !4963, !4964}
!4957 = !DILocalVariable(name: "dev", arg: 1, scope: !233, file: !3, line: 352, type: !236)
!4958 = !DILocalVariable(name: "i", scope: !233, file: !3, line: 354, type: !109)
!4959 = !DILocalVariable(name: "pos", scope: !4960, file: !3, line: 357, type: !109)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 356, column: 44)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 356, column: 2)
!4962 = distinct !DILexicalBlock(scope: !233, file: !3, line: 356, column: 2)
!4963 = !DILocalVariable(name: "ret", scope: !4960, file: !3, line: 357, type: !109)
!4964 = !DILocalVariable(name: "save_state", scope: !4960, file: !3, line: 358, type: !4965)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_cap_saved_state", file: !4729, line: 61, size: 192, elements: !4967)
!4967 = !{!4968, !4969}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4966, file: !4729, line: 62, baseType: !975, size: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4966, file: !4729, line: 63, baseType: !4970, size: 64, offset: 128)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_cap_saved_data", file: !4729, line: 54, size: 64, elements: !4971)
!4971 = !{!4972, !4973, !4974, !4975}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "cap_nr", scope: !4970, file: !4729, line: 55, baseType: !154, size: 16)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "cap_extended", scope: !4970, file: !4729, line: 56, baseType: !811, size: 8, offset: 16)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4970, file: !4729, line: 57, baseType: !7, size: 32, offset: 32)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4970, file: !4729, line: 58, baseType: !4976, offset: 64)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, elements: !1881)
!4977 = !DILocation(line: 352, column: 39, scope: !233)
!4978 = !DILocation(line: 354, column: 2, scope: !233)
!4979 = !DILocation(line: 354, column: 6, scope: !233)
!4980 = !DILocation(line: 356, column: 9, scope: !4962)
!4981 = !DILocation(line: 356, column: 7, scope: !4962)
!4982 = !DILocation(line: 356, column: 14, scope: !4961)
!4983 = !DILocation(line: 356, column: 16, scope: !4961)
!4984 = !DILocation(line: 356, column: 2, scope: !4962)
!4985 = !DILocation(line: 357, column: 3, scope: !4960)
!4986 = !DILocation(line: 357, column: 7, scope: !4960)
!4987 = !DILocation(line: 357, column: 12, scope: !4960)
!4988 = !DILocation(line: 358, column: 3, scope: !4960)
!4989 = !DILocation(line: 358, column: 31, scope: !4960)
!4990 = !DILocation(line: 360, column: 33, scope: !4960)
!4991 = !DILocation(line: 360, column: 46, scope: !4960)
!4992 = !DILocation(line: 360, column: 38, scope: !4960)
!4993 = !DILocation(line: 360, column: 49, scope: !4960)
!4994 = !DILocation(line: 360, column: 9, scope: !4960)
!4995 = !DILocation(line: 360, column: 7, scope: !4960)
!4996 = !DILocation(line: 361, column: 8, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 361, column: 7)
!4998 = !DILocation(line: 361, column: 7, scope: !4960)
!4999 = !DILocation(line: 362, column: 4, scope: !4997)
!5000 = !DILocation(line: 364, column: 39, scope: !4960)
!5001 = !DILocation(line: 364, column: 52, scope: !4960)
!5002 = !DILocation(line: 364, column: 44, scope: !4960)
!5003 = !DILocation(line: 364, column: 55, scope: !4960)
!5004 = !DILocation(line: 364, column: 16, scope: !4960)
!5005 = !DILocation(line: 364, column: 14, scope: !4960)
!5006 = !DILocation(line: 365, column: 8, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 365, column: 7)
!5008 = !DILocation(line: 365, column: 7, scope: !4960)
!5009 = !DILocation(line: 366, column: 4, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 366, column: 4)
!5011 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 365, column: 20)
!5012 = !DILocation(line: 366, column: 4, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 366, column: 4)
!5014 = !DILocation(line: 368, column: 4, scope: !5011)
!5015 = !DILocation(line: 371, column: 31, scope: !4960)
!5016 = !DILocation(line: 371, column: 36, scope: !4960)
!5017 = !DILocation(line: 371, column: 41, scope: !4960)
!5018 = !DILocation(line: 371, column: 9, scope: !4960)
!5019 = !DILocation(line: 371, column: 7, scope: !4960)
!5020 = !DILocation(line: 372, column: 7, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 372, column: 7)
!5022 = !DILocation(line: 372, column: 7, scope: !4960)
!5023 = !DILocation(line: 373, column: 4, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 373, column: 4)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 372, column: 12)
!5026 = !DILocation(line: 373, column: 4, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 373, column: 4)
!5028 = !DILocation(line: 375, column: 11, scope: !5025)
!5029 = !DILocation(line: 375, column: 4, scope: !5025)
!5030 = !DILocation(line: 377, column: 2, scope: !4961)
!5031 = !DILocation(line: 377, column: 2, scope: !4960)
!5032 = !DILocation(line: 356, column: 40, scope: !4961)
!5033 = !DILocation(line: 356, column: 2, scope: !4961)
!5034 = distinct !{!5034, !4984, !5035, !5036, !5037}
!5035 = !DILocation(line: 377, column: 2, scope: !4962)
!5036 = !{!"llvm.loop.mustprogress"}
!5037 = !{!"llvm.loop.unroll.disable"}
!5038 = !DILocation(line: 379, column: 2, scope: !233)
!5039 = !DILocation(line: 380, column: 1, scope: !233)
!5040 = !DISubprogram(name: "pci_find_ext_capability", scope: !238, file: !238, line: 1168, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!154, !236, !109}
!5043 = !DISubprogram(name: "pci_find_saved_ext_cap", scope: !4729, file: !4729, line: 72, type: !5044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!4965, !236, !154}
!5046 = !DISubprogram(name: "_dev_err", scope: !5047, file: !5047, line: 50, type: !5048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5047 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5048 = !DISubroutineType(types: !5049)
!5049 = !{null, !4254, !223, null}
!5050 = distinct !DISubprogram(name: "pci_vc_do_save_buffer", scope: !3, file: !3, line: 184, type: !5051, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5053)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!109, !236, !109, !4965, !811}
!5053 = !{!5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5068, !5069, !5072, !5073, !5077, !5078, !5081, !5082, !5085, !5088}
!5054 = !DILocalVariable(name: "dev", arg: 1, scope: !5050, file: !3, line: 184, type: !236)
!5055 = !DILocalVariable(name: "pos", arg: 2, scope: !5050, file: !3, line: 184, type: !109)
!5056 = !DILocalVariable(name: "save_state", arg: 3, scope: !5050, file: !3, line: 185, type: !4965)
!5057 = !DILocalVariable(name: "save", arg: 4, scope: !5050, file: !3, line: 186, type: !811)
!5058 = !DILocalVariable(name: "cap1", scope: !5050, file: !3, line: 188, type: !158)
!5059 = !DILocalVariable(name: "evcc", scope: !5050, file: !3, line: 189, type: !164)
!5060 = !DILocalVariable(name: "lpevcc", scope: !5050, file: !3, line: 189, type: !164)
!5061 = !DILocalVariable(name: "parb_size", scope: !5050, file: !3, line: 189, type: !164)
!5062 = !DILocalVariable(name: "i", scope: !5050, file: !3, line: 190, type: !109)
!5063 = !DILocalVariable(name: "len", scope: !5050, file: !3, line: 190, type: !109)
!5064 = !DILocalVariable(name: "buf", scope: !5050, file: !3, line: 191, type: !147)
!5065 = !DILocalVariable(name: "cap2", scope: !5066, file: !3, line: 230, type: !158)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 229, column: 14)
!5067 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 229, column: 6)
!5068 = !DILocalVariable(name: "vcarb_offset", scope: !5066, file: !3, line: 231, type: !109)
!5069 = !DILocalVariable(name: "size", scope: !5070, file: !3, line: 237, type: !109)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 236, column: 21)
!5071 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 236, column: 7)
!5072 = !DILocalVariable(name: "vcarb_phases", scope: !5070, file: !3, line: 237, type: !109)
!5073 = !DILocalVariable(name: "cap", scope: !5074, file: !3, line: 275, type: !158)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 274, column: 33)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 274, column: 2)
!5076 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 274, column: 2)
!5077 = !DILocalVariable(name: "parb_offset", scope: !5074, file: !3, line: 276, type: !109)
!5078 = !DILocalVariable(name: "size", scope: !5079, file: !3, line: 282, type: !109)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 281, column: 20)
!5080 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 281, column: 7)
!5081 = !DILocalVariable(name: "parb_phases", scope: !5079, file: !3, line: 282, type: !109)
!5082 = !DILocalVariable(name: "ctrl_pos", scope: !5083, file: !3, line: 308, type: !109)
!5083 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 307, column: 12)
!5084 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 307, column: 7)
!5085 = !DILocalVariable(name: "tmp", scope: !5086, file: !3, line: 314, type: !158)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 313, column: 9)
!5087 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 310, column: 8)
!5088 = !DILocalVariable(name: "ctrl", scope: !5086, file: !3, line: 314, type: !158)
!5089 = !DILocation(line: 184, column: 50, scope: !5050)
!5090 = !DILocation(line: 184, column: 59, scope: !5050)
!5091 = !DILocation(line: 185, column: 34, scope: !5050)
!5092 = !DILocation(line: 186, column: 11, scope: !5050)
!5093 = !DILocation(line: 188, column: 2, scope: !5050)
!5094 = !DILocation(line: 188, column: 6, scope: !5050)
!5095 = !DILocation(line: 189, column: 2, scope: !5050)
!5096 = !DILocation(line: 189, column: 7, scope: !5050)
!5097 = !DILocation(line: 189, column: 13, scope: !5050)
!5098 = !DILocation(line: 189, column: 21, scope: !5050)
!5099 = !DILocation(line: 190, column: 2, scope: !5050)
!5100 = !DILocation(line: 190, column: 6, scope: !5050)
!5101 = !DILocation(line: 190, column: 9, scope: !5050)
!5102 = !DILocation(line: 191, column: 2, scope: !5050)
!5103 = !DILocation(line: 191, column: 6, scope: !5050)
!5104 = !DILocation(line: 191, column: 12, scope: !5050)
!5105 = !DILocation(line: 191, column: 31, scope: !5050)
!5106 = !DILocation(line: 191, column: 43, scope: !5050)
!5107 = !DILocation(line: 191, column: 47, scope: !5050)
!5108 = !DILocation(line: 194, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 194, column: 6)
!5110 = !DILocation(line: 194, column: 10, scope: !5109)
!5111 = !DILocation(line: 194, column: 13, scope: !5109)
!5112 = !DILocation(line: 194, column: 25, scope: !5109)
!5113 = !DILocation(line: 194, column: 29, scope: !5109)
!5114 = !DILocation(line: 195, column: 28, scope: !5109)
!5115 = !DILocation(line: 195, column: 33, scope: !5109)
!5116 = !DILocation(line: 195, column: 44, scope: !5109)
!5117 = !{i8 0, i8 2}
!5118 = !DILocation(line: 195, column: 6, scope: !5109)
!5119 = !DILocation(line: 194, column: 34, scope: !5109)
!5120 = !DILocation(line: 194, column: 6, scope: !5050)
!5121 = !DILocation(line: 196, column: 3, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 196, column: 3)
!5123 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 195, column: 51)
!5124 = !DILocation(line: 196, column: 3, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 196, column: 3)
!5126 = !DILocation(line: 197, column: 3, scope: !5123)
!5127 = !DILocation(line: 200, column: 24, scope: !5050)
!5128 = !DILocation(line: 200, column: 29, scope: !5050)
!5129 = !DILocation(line: 200, column: 33, scope: !5050)
!5130 = !DILocation(line: 200, column: 2, scope: !5050)
!5131 = !DILocation(line: 202, column: 9, scope: !5050)
!5132 = !DILocation(line: 202, column: 14, scope: !5050)
!5133 = !DILocation(line: 202, column: 7, scope: !5050)
!5134 = !DILocation(line: 204, column: 12, scope: !5050)
!5135 = !DILocation(line: 204, column: 17, scope: !5050)
!5136 = !DILocation(line: 204, column: 39, scope: !5050)
!5137 = !DILocation(line: 204, column: 11, scope: !5050)
!5138 = !DILocation(line: 204, column: 9, scope: !5050)
!5139 = !DILocation(line: 206, column: 21, scope: !5050)
!5140 = !DILocation(line: 206, column: 26, scope: !5050)
!5141 = !DILocation(line: 206, column: 50, scope: !5050)
!5142 = !DILocation(line: 206, column: 16, scope: !5050)
!5143 = !DILocation(line: 206, column: 14, scope: !5050)
!5144 = !DILocation(line: 206, column: 12, scope: !5050)
!5145 = !DILocation(line: 214, column: 6, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 214, column: 6)
!5147 = !DILocation(line: 214, column: 6, scope: !5050)
!5148 = !DILocation(line: 215, column: 7, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 215, column: 7)
!5150 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 214, column: 11)
!5151 = !DILocation(line: 215, column: 7, scope: !5150)
!5152 = !DILocation(line: 216, column: 25, scope: !5149)
!5153 = !DILocation(line: 216, column: 30, scope: !5149)
!5154 = !DILocation(line: 216, column: 34, scope: !5149)
!5155 = !DILocation(line: 217, column: 18, scope: !5149)
!5156 = !DILocation(line: 216, column: 4, scope: !5149)
!5157 = !DILocation(line: 219, column: 26, scope: !5149)
!5158 = !DILocation(line: 219, column: 31, scope: !5149)
!5159 = !DILocation(line: 219, column: 35, scope: !5149)
!5160 = !DILocation(line: 220, column: 20, scope: !5149)
!5161 = !DILocation(line: 220, column: 12, scope: !5149)
!5162 = !DILocation(line: 219, column: 4, scope: !5149)
!5163 = !DILocation(line: 221, column: 7, scope: !5150)
!5164 = !DILocation(line: 222, column: 2, scope: !5150)
!5165 = !DILocation(line: 223, column: 6, scope: !5050)
!5166 = !DILocation(line: 229, column: 6, scope: !5067)
!5167 = !DILocation(line: 229, column: 6, scope: !5050)
!5168 = !DILocation(line: 230, column: 3, scope: !5066)
!5169 = !DILocation(line: 230, column: 7, scope: !5066)
!5170 = !DILocation(line: 231, column: 3, scope: !5066)
!5171 = !DILocation(line: 231, column: 7, scope: !5066)
!5172 = !DILocation(line: 233, column: 25, scope: !5066)
!5173 = !DILocation(line: 233, column: 30, scope: !5066)
!5174 = !DILocation(line: 233, column: 34, scope: !5066)
!5175 = !DILocation(line: 233, column: 3, scope: !5066)
!5176 = !DILocation(line: 234, column: 20, scope: !5066)
!5177 = !DILocation(line: 234, column: 25, scope: !5066)
!5178 = !DILocation(line: 234, column: 48, scope: !5066)
!5179 = !DILocation(line: 234, column: 55, scope: !5066)
!5180 = !DILocation(line: 234, column: 16, scope: !5066)
!5181 = !DILocation(line: 236, column: 7, scope: !5071)
!5182 = !DILocation(line: 236, column: 7, scope: !5066)
!5183 = !DILocation(line: 237, column: 4, scope: !5070)
!5184 = !DILocation(line: 237, column: 8, scope: !5070)
!5185 = !DILocation(line: 237, column: 14, scope: !5070)
!5186 = !DILocation(line: 239, column: 8, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 239, column: 8)
!5188 = !DILocation(line: 239, column: 13, scope: !5187)
!5189 = !DILocation(line: 239, column: 8, scope: !5070)
!5190 = !DILocation(line: 240, column: 18, scope: !5187)
!5191 = !DILocation(line: 240, column: 5, scope: !5187)
!5192 = !DILocation(line: 241, column: 13, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 241, column: 13)
!5194 = !DILocation(line: 241, column: 18, scope: !5193)
!5195 = !DILocation(line: 241, column: 13, scope: !5187)
!5196 = !DILocation(line: 242, column: 18, scope: !5193)
!5197 = !DILocation(line: 242, column: 5, scope: !5193)
!5198 = !DILocation(line: 243, column: 13, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 243, column: 13)
!5200 = !DILocation(line: 243, column: 18, scope: !5199)
!5201 = !DILocation(line: 243, column: 13, scope: !5193)
!5202 = !DILocation(line: 244, column: 18, scope: !5199)
!5203 = !DILocation(line: 244, column: 5, scope: !5199)
!5204 = !DILocation(line: 247, column: 13, scope: !5070)
!5205 = !DILocation(line: 247, column: 20, scope: !5070)
!5206 = !DILocation(line: 247, column: 27, scope: !5070)
!5207 = !DILocation(line: 247, column: 25, scope: !5070)
!5208 = !DILocation(line: 247, column: 40, scope: !5070)
!5209 = !DILocation(line: 247, column: 45, scope: !5070)
!5210 = !DILocation(line: 247, column: 9, scope: !5070)
!5211 = !DILocation(line: 249, column: 8, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 249, column: 8)
!5213 = !DILocation(line: 249, column: 13, scope: !5212)
!5214 = !DILocation(line: 249, column: 16, scope: !5212)
!5215 = !DILocation(line: 249, column: 8, scope: !5070)
!5216 = !DILocation(line: 250, column: 32, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 249, column: 21)
!5218 = !DILocation(line: 251, column: 11, scope: !5217)
!5219 = !DILocation(line: 251, column: 17, scope: !5217)
!5220 = !DILocation(line: 251, column: 15, scope: !5217)
!5221 = !DILocation(line: 252, column: 18, scope: !5217)
!5222 = !DILocation(line: 253, column: 11, scope: !5217)
!5223 = !DILocation(line: 253, column: 16, scope: !5217)
!5224 = !DILocation(line: 253, column: 21, scope: !5217)
!5225 = !DILocation(line: 250, column: 5, scope: !5217)
!5226 = !DILocation(line: 258, column: 10, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 258, column: 9)
!5228 = !DILocation(line: 258, column: 9, scope: !5217)
!5229 = !DILocation(line: 259, column: 28, scope: !5227)
!5230 = !DILocation(line: 259, column: 33, scope: !5227)
!5231 = !DILocation(line: 259, column: 6, scope: !5227)
!5232 = !DILocation(line: 261, column: 12, scope: !5217)
!5233 = !DILocation(line: 261, column: 9, scope: !5217)
!5234 = !DILocation(line: 262, column: 4, scope: !5217)
!5235 = !DILocation(line: 263, column: 11, scope: !5070)
!5236 = !DILocation(line: 263, column: 8, scope: !5070)
!5237 = !DILocation(line: 264, column: 3, scope: !5071)
!5238 = !DILocation(line: 264, column: 3, scope: !5070)
!5239 = !DILocation(line: 265, column: 2, scope: !5067)
!5240 = !DILocation(line: 265, column: 2, scope: !5066)
!5241 = !DILocation(line: 274, column: 9, scope: !5076)
!5242 = !DILocation(line: 274, column: 7, scope: !5076)
!5243 = !DILocation(line: 274, column: 14, scope: !5075)
!5244 = !DILocation(line: 274, column: 18, scope: !5075)
!5245 = !DILocation(line: 274, column: 23, scope: !5075)
!5246 = !DILocation(line: 274, column: 16, scope: !5075)
!5247 = !DILocation(line: 274, column: 2, scope: !5076)
!5248 = !DILocation(line: 275, column: 3, scope: !5074)
!5249 = !DILocation(line: 275, column: 7, scope: !5074)
!5250 = !DILocation(line: 276, column: 3, scope: !5074)
!5251 = !DILocation(line: 276, column: 7, scope: !5074)
!5252 = !DILocation(line: 278, column: 25, scope: !5074)
!5253 = !DILocation(line: 278, column: 30, scope: !5074)
!5254 = !DILocation(line: 278, column: 34, scope: !5074)
!5255 = !DILocation(line: 279, column: 12, scope: !5074)
!5256 = !DILocation(line: 279, column: 14, scope: !5074)
!5257 = !DILocation(line: 278, column: 51, scope: !5074)
!5258 = !DILocation(line: 278, column: 3, scope: !5074)
!5259 = !DILocation(line: 280, column: 19, scope: !5074)
!5260 = !DILocation(line: 280, column: 23, scope: !5074)
!5261 = !DILocation(line: 280, column: 49, scope: !5074)
!5262 = !DILocation(line: 280, column: 56, scope: !5074)
!5263 = !DILocation(line: 280, column: 15, scope: !5074)
!5264 = !DILocation(line: 281, column: 7, scope: !5080)
!5265 = !DILocation(line: 281, column: 7, scope: !5074)
!5266 = !DILocation(line: 282, column: 4, scope: !5079)
!5267 = !DILocation(line: 282, column: 8, scope: !5079)
!5268 = !DILocation(line: 282, column: 14, scope: !5079)
!5269 = !DILocation(line: 284, column: 8, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 284, column: 8)
!5271 = !DILocation(line: 284, column: 12, scope: !5270)
!5272 = !DILocation(line: 284, column: 8, scope: !5079)
!5273 = !DILocation(line: 285, column: 17, scope: !5270)
!5274 = !DILocation(line: 285, column: 5, scope: !5270)
!5275 = !DILocation(line: 286, column: 13, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 286, column: 13)
!5277 = !DILocation(line: 286, column: 17, scope: !5276)
!5278 = !DILocation(line: 286, column: 13, scope: !5270)
!5279 = !DILocation(line: 288, column: 17, scope: !5276)
!5280 = !DILocation(line: 288, column: 5, scope: !5276)
!5281 = !DILocation(line: 289, column: 13, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 289, column: 13)
!5283 = !DILocation(line: 289, column: 17, scope: !5282)
!5284 = !DILocation(line: 289, column: 13, scope: !5276)
!5285 = !DILocation(line: 290, column: 17, scope: !5282)
!5286 = !DILocation(line: 290, column: 5, scope: !5282)
!5287 = !DILocation(line: 291, column: 13, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 291, column: 13)
!5289 = !DILocation(line: 291, column: 17, scope: !5288)
!5290 = !DILocation(line: 291, column: 13, scope: !5282)
!5291 = !DILocation(line: 292, column: 17, scope: !5288)
!5292 = !DILocation(line: 292, column: 5, scope: !5288)
!5293 = !DILocation(line: 294, column: 12, scope: !5079)
!5294 = !DILocation(line: 294, column: 24, scope: !5079)
!5295 = !DILocation(line: 294, column: 22, scope: !5079)
!5296 = !DILocation(line: 294, column: 37, scope: !5079)
!5297 = !DILocation(line: 294, column: 9, scope: !5079)
!5298 = !DILocation(line: 296, column: 8, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 296, column: 8)
!5300 = !DILocation(line: 296, column: 13, scope: !5299)
!5301 = !DILocation(line: 296, column: 16, scope: !5299)
!5302 = !DILocation(line: 296, column: 8, scope: !5079)
!5303 = !DILocation(line: 297, column: 32, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 296, column: 21)
!5305 = !DILocation(line: 298, column: 11, scope: !5304)
!5306 = !DILocation(line: 298, column: 17, scope: !5304)
!5307 = !DILocation(line: 298, column: 15, scope: !5304)
!5308 = !DILocation(line: 299, column: 18, scope: !5304)
!5309 = !DILocation(line: 300, column: 11, scope: !5304)
!5310 = !DILocation(line: 300, column: 16, scope: !5304)
!5311 = !DILocation(line: 300, column: 21, scope: !5304)
!5312 = !DILocation(line: 297, column: 5, scope: !5304)
!5313 = !DILocation(line: 301, column: 12, scope: !5304)
!5314 = !DILocation(line: 301, column: 9, scope: !5304)
!5315 = !DILocation(line: 302, column: 4, scope: !5304)
!5316 = !DILocation(line: 303, column: 11, scope: !5079)
!5317 = !DILocation(line: 303, column: 8, scope: !5079)
!5318 = !DILocation(line: 304, column: 3, scope: !5080)
!5319 = !DILocation(line: 304, column: 3, scope: !5079)
!5320 = !DILocation(line: 307, column: 7, scope: !5084)
!5321 = !DILocation(line: 307, column: 7, scope: !5074)
!5322 = !DILocation(line: 308, column: 4, scope: !5083)
!5323 = !DILocation(line: 308, column: 8, scope: !5083)
!5324 = !DILocation(line: 308, column: 19, scope: !5083)
!5325 = !DILocation(line: 308, column: 23, scope: !5083)
!5326 = !DILocation(line: 309, column: 8, scope: !5083)
!5327 = !DILocation(line: 309, column: 10, scope: !5083)
!5328 = !DILocation(line: 308, column: 41, scope: !5083)
!5329 = !DILocation(line: 310, column: 8, scope: !5087)
!5330 = !DILocation(line: 310, column: 8, scope: !5083)
!5331 = !DILocation(line: 311, column: 27, scope: !5087)
!5332 = !DILocation(line: 311, column: 32, scope: !5087)
!5333 = !DILocation(line: 312, column: 20, scope: !5087)
!5334 = !DILocation(line: 311, column: 5, scope: !5087)
!5335 = !DILocation(line: 314, column: 5, scope: !5086)
!5336 = !DILocation(line: 314, column: 9, scope: !5086)
!5337 = !DILocation(line: 314, column: 14, scope: !5086)
!5338 = !DILocation(line: 314, column: 29, scope: !5086)
!5339 = !DILocation(line: 314, column: 21, scope: !5086)
!5340 = !DILocation(line: 319, column: 27, scope: !5086)
!5341 = !DILocation(line: 319, column: 32, scope: !5086)
!5342 = !DILocation(line: 319, column: 5, scope: !5086)
!5343 = !DILocation(line: 320, column: 9, scope: !5086)
!5344 = !DILocation(line: 321, column: 12, scope: !5086)
!5345 = !DILocation(line: 321, column: 17, scope: !5086)
!5346 = !DILocation(line: 321, column: 9, scope: !5086)
!5347 = !DILocation(line: 322, column: 28, scope: !5086)
!5348 = !DILocation(line: 322, column: 33, scope: !5086)
!5349 = !DILocation(line: 322, column: 43, scope: !5086)
!5350 = !DILocation(line: 322, column: 5, scope: !5086)
!5351 = !DILocation(line: 324, column: 9, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 324, column: 9)
!5353 = !DILocation(line: 324, column: 14, scope: !5352)
!5354 = !DILocation(line: 324, column: 9, scope: !5086)
!5355 = !DILocation(line: 325, column: 33, scope: !5352)
!5356 = !DILocation(line: 325, column: 38, scope: !5352)
!5357 = !DILocation(line: 325, column: 43, scope: !5352)
!5358 = !DILocation(line: 325, column: 6, scope: !5352)
!5359 = !DILocation(line: 327, column: 10, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 327, column: 9)
!5361 = !DILocation(line: 327, column: 17, scope: !5360)
!5362 = !DILocation(line: 327, column: 15, scope: !5360)
!5363 = !DILocation(line: 327, column: 22, scope: !5360)
!5364 = !DILocation(line: 327, column: 9, scope: !5086)
!5365 = !DILocation(line: 328, column: 20, scope: !5360)
!5366 = !DILocation(line: 328, column: 25, scope: !5360)
!5367 = !DILocation(line: 328, column: 30, scope: !5360)
!5368 = !DILocation(line: 328, column: 6, scope: !5360)
!5369 = !DILocation(line: 329, column: 4, scope: !5087)
!5370 = !DILocation(line: 330, column: 8, scope: !5083)
!5371 = !DILocation(line: 331, column: 3, scope: !5084)
!5372 = !DILocation(line: 331, column: 3, scope: !5083)
!5373 = !DILocation(line: 332, column: 7, scope: !5074)
!5374 = !DILocation(line: 333, column: 2, scope: !5075)
!5375 = !DILocation(line: 333, column: 2, scope: !5074)
!5376 = !DILocation(line: 274, column: 29, scope: !5075)
!5377 = !DILocation(line: 274, column: 2, scope: !5075)
!5378 = distinct !{!5378, !5247, !5379, !5036, !5037}
!5379 = !DILocation(line: 333, column: 2, scope: !5076)
!5380 = !DILocation(line: 335, column: 9, scope: !5050)
!5381 = !DILocation(line: 335, column: 19, scope: !5050)
!5382 = !DILocation(line: 335, column: 2, scope: !5050)
!5383 = !DILocation(line: 336, column: 1, scope: !5050)
!5384 = distinct !DISubprogram(name: "pci_restore_vc_state", scope: !3, file: !3, line: 389, type: !4769, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5385)
!5385 = !{!5386, !5387, !5388, !5392}
!5386 = !DILocalVariable(name: "dev", arg: 1, scope: !5384, file: !3, line: 389, type: !236)
!5387 = !DILocalVariable(name: "i", scope: !5384, file: !3, line: 391, type: !109)
!5388 = !DILocalVariable(name: "pos", scope: !5389, file: !3, line: 394, type: !109)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 393, column: 44)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 393, column: 2)
!5391 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 393, column: 2)
!5392 = !DILocalVariable(name: "save_state", scope: !5389, file: !3, line: 395, type: !4965)
!5393 = !DILocation(line: 389, column: 43, scope: !5384)
!5394 = !DILocation(line: 391, column: 2, scope: !5384)
!5395 = !DILocation(line: 391, column: 6, scope: !5384)
!5396 = !DILocation(line: 393, column: 9, scope: !5391)
!5397 = !DILocation(line: 393, column: 7, scope: !5391)
!5398 = !DILocation(line: 393, column: 14, scope: !5390)
!5399 = !DILocation(line: 393, column: 16, scope: !5390)
!5400 = !DILocation(line: 393, column: 2, scope: !5391)
!5401 = !DILocation(line: 394, column: 3, scope: !5389)
!5402 = !DILocation(line: 394, column: 7, scope: !5389)
!5403 = !DILocation(line: 395, column: 3, scope: !5389)
!5404 = !DILocation(line: 395, column: 31, scope: !5389)
!5405 = !DILocation(line: 397, column: 33, scope: !5389)
!5406 = !DILocation(line: 397, column: 46, scope: !5389)
!5407 = !DILocation(line: 397, column: 38, scope: !5389)
!5408 = !DILocation(line: 397, column: 49, scope: !5389)
!5409 = !DILocation(line: 397, column: 9, scope: !5389)
!5410 = !DILocation(line: 397, column: 7, scope: !5389)
!5411 = !DILocation(line: 398, column: 39, scope: !5389)
!5412 = !DILocation(line: 398, column: 52, scope: !5389)
!5413 = !DILocation(line: 398, column: 44, scope: !5389)
!5414 = !DILocation(line: 398, column: 55, scope: !5389)
!5415 = !DILocation(line: 398, column: 16, scope: !5389)
!5416 = !DILocation(line: 398, column: 14, scope: !5389)
!5417 = !DILocation(line: 399, column: 8, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 399, column: 7)
!5419 = !DILocation(line: 399, column: 19, scope: !5418)
!5420 = !DILocation(line: 399, column: 23, scope: !5418)
!5421 = !DILocation(line: 399, column: 7, scope: !5389)
!5422 = !DILocation(line: 400, column: 4, scope: !5418)
!5423 = !DILocation(line: 402, column: 25, scope: !5389)
!5424 = !DILocation(line: 402, column: 30, scope: !5389)
!5425 = !DILocation(line: 402, column: 35, scope: !5389)
!5426 = !DILocation(line: 402, column: 3, scope: !5389)
!5427 = !DILocation(line: 403, column: 2, scope: !5390)
!5428 = !DILocation(line: 403, column: 2, scope: !5389)
!5429 = !DILocation(line: 393, column: 40, scope: !5390)
!5430 = !DILocation(line: 393, column: 2, scope: !5390)
!5431 = distinct !{!5431, !5400, !5432, !5036, !5037}
!5432 = !DILocation(line: 403, column: 2, scope: !5391)
!5433 = !DILocation(line: 404, column: 1, scope: !5384)
!5434 = distinct !DISubprogram(name: "pci_allocate_vc_save_buffers", scope: !3, file: !3, line: 413, type: !4769, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5435)
!5435 = !{!5436, !5437, !5438, !5442}
!5436 = !DILocalVariable(name: "dev", arg: 1, scope: !5434, file: !3, line: 413, type: !236)
!5437 = !DILocalVariable(name: "i", scope: !5434, file: !3, line: 415, type: !109)
!5438 = !DILocalVariable(name: "len", scope: !5439, file: !3, line: 418, type: !109)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 417, column: 44)
!5440 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 417, column: 2)
!5441 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 417, column: 2)
!5442 = !DILocalVariable(name: "pos", scope: !5439, file: !3, line: 418, type: !109)
!5443 = !DILocation(line: 413, column: 51, scope: !5434)
!5444 = !DILocation(line: 415, column: 2, scope: !5434)
!5445 = !DILocation(line: 415, column: 6, scope: !5434)
!5446 = !DILocation(line: 417, column: 9, scope: !5441)
!5447 = !DILocation(line: 417, column: 7, scope: !5441)
!5448 = !DILocation(line: 417, column: 14, scope: !5440)
!5449 = !DILocation(line: 417, column: 16, scope: !5440)
!5450 = !DILocation(line: 417, column: 2, scope: !5441)
!5451 = !DILocation(line: 418, column: 3, scope: !5439)
!5452 = !DILocation(line: 418, column: 7, scope: !5439)
!5453 = !DILocation(line: 418, column: 12, scope: !5439)
!5454 = !DILocation(line: 418, column: 42, scope: !5439)
!5455 = !DILocation(line: 418, column: 55, scope: !5439)
!5456 = !DILocation(line: 418, column: 47, scope: !5439)
!5457 = !DILocation(line: 418, column: 58, scope: !5439)
!5458 = !DILocation(line: 418, column: 18, scope: !5439)
!5459 = !DILocation(line: 420, column: 8, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 420, column: 7)
!5461 = !DILocation(line: 420, column: 7, scope: !5439)
!5462 = !DILocation(line: 421, column: 4, scope: !5460)
!5463 = !DILocation(line: 423, column: 31, scope: !5439)
!5464 = !DILocation(line: 423, column: 36, scope: !5439)
!5465 = !DILocation(line: 423, column: 9, scope: !5439)
!5466 = !DILocation(line: 423, column: 7, scope: !5439)
!5467 = !DILocation(line: 424, column: 35, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 424, column: 7)
!5469 = !DILocation(line: 424, column: 48, scope: !5468)
!5470 = !DILocation(line: 424, column: 40, scope: !5468)
!5471 = !DILocation(line: 424, column: 51, scope: !5468)
!5472 = !DILocation(line: 424, column: 55, scope: !5468)
!5473 = !DILocation(line: 424, column: 7, scope: !5468)
!5474 = !DILocation(line: 424, column: 7, scope: !5439)
!5475 = !DILocation(line: 425, column: 4, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 425, column: 4)
!5477 = !DILocation(line: 425, column: 4, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 425, column: 4)
!5479 = !DILocation(line: 425, column: 4, scope: !5468)
!5480 = !DILocation(line: 427, column: 2, scope: !5440)
!5481 = !DILocation(line: 427, column: 2, scope: !5439)
!5482 = !DILocation(line: 417, column: 40, scope: !5440)
!5483 = !DILocation(line: 417, column: 2, scope: !5440)
!5484 = distinct !{!5484, !5450, !5485, !5036, !5037}
!5485 = !DILocation(line: 427, column: 2, scope: !5441)
!5486 = !DILocation(line: 428, column: 1, scope: !5434)
!5487 = !DISubprogram(name: "pci_add_ext_cap_save_buffer", scope: !4729, file: !4729, line: 69, type: !5488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!109, !236, !154, !7}
!5490 = !DISubprogram(name: "pci_read_config_dword", scope: !238, file: !238, line: 1215, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!109, !5493, !109, !157}
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!5495 = !DISubprogram(name: "pci_read_config_word", scope: !238, file: !238, line: 1214, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!109, !5493, !109, !153}
!5498 = !DISubprogram(name: "pci_write_config_word", scope: !238, file: !238, line: 1217, type: !5499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!109, !5493, !109, !154}
!5501 = distinct !DISubprogram(name: "pci_vc_save_restore_dwords", scope: !3, file: !3, line: 26, type: !5502, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5504)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{null, !236, !109, !157, !109, !811}
!5504 = !{!5505, !5506, !5507, !5508, !5509, !5510}
!5505 = !DILocalVariable(name: "dev", arg: 1, scope: !5501, file: !3, line: 26, type: !236)
!5506 = !DILocalVariable(name: "pos", arg: 2, scope: !5501, file: !3, line: 26, type: !109)
!5507 = !DILocalVariable(name: "buf", arg: 3, scope: !5501, file: !3, line: 27, type: !157)
!5508 = !DILocalVariable(name: "dwords", arg: 4, scope: !5501, file: !3, line: 27, type: !109)
!5509 = !DILocalVariable(name: "save", arg: 5, scope: !5501, file: !3, line: 27, type: !811)
!5510 = !DILocalVariable(name: "i", scope: !5501, file: !3, line: 29, type: !109)
!5511 = !DILocation(line: 26, column: 56, scope: !5501)
!5512 = !DILocation(line: 26, column: 65, scope: !5501)
!5513 = !DILocation(line: 27, column: 17, scope: !5501)
!5514 = !DILocation(line: 27, column: 26, scope: !5501)
!5515 = !DILocation(line: 27, column: 39, scope: !5501)
!5516 = !DILocation(line: 29, column: 2, scope: !5501)
!5517 = !DILocation(line: 29, column: 6, scope: !5501)
!5518 = !DILocation(line: 31, column: 9, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 31, column: 2)
!5520 = !DILocation(line: 31, column: 7, scope: !5519)
!5521 = !DILocation(line: 31, column: 14, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 31, column: 2)
!5523 = !DILocation(line: 31, column: 18, scope: !5522)
!5524 = !DILocation(line: 31, column: 16, scope: !5522)
!5525 = !DILocation(line: 31, column: 2, scope: !5519)
!5526 = !DILocation(line: 32, column: 7, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 32, column: 7)
!5528 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 31, column: 38)
!5529 = !DILocation(line: 32, column: 7, scope: !5528)
!5530 = !DILocation(line: 33, column: 26, scope: !5527)
!5531 = !DILocation(line: 33, column: 31, scope: !5527)
!5532 = !DILocation(line: 33, column: 38, scope: !5527)
!5533 = !DILocation(line: 33, column: 40, scope: !5527)
!5534 = !DILocation(line: 33, column: 35, scope: !5527)
!5535 = !DILocation(line: 33, column: 46, scope: !5527)
!5536 = !DILocation(line: 33, column: 4, scope: !5527)
!5537 = !DILocation(line: 35, column: 27, scope: !5527)
!5538 = !DILocation(line: 35, column: 32, scope: !5527)
!5539 = !DILocation(line: 35, column: 39, scope: !5527)
!5540 = !DILocation(line: 35, column: 41, scope: !5527)
!5541 = !DILocation(line: 35, column: 36, scope: !5527)
!5542 = !DILocation(line: 35, column: 48, scope: !5527)
!5543 = !DILocation(line: 35, column: 47, scope: !5527)
!5544 = !DILocation(line: 35, column: 4, scope: !5527)
!5545 = !DILocation(line: 36, column: 2, scope: !5528)
!5546 = !DILocation(line: 31, column: 27, scope: !5522)
!5547 = !DILocation(line: 31, column: 34, scope: !5522)
!5548 = !DILocation(line: 31, column: 2, scope: !5522)
!5549 = distinct !{!5549, !5525, !5550, !5036, !5037}
!5550 = !DILocation(line: 36, column: 2, scope: !5519)
!5551 = !DILocation(line: 37, column: 1, scope: !5501)
!5552 = distinct !DISubprogram(name: "pci_vc_load_arb_table", scope: !3, file: !3, line: 48, type: !5553, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5555)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !236, !109}
!5555 = !{!5556, !5557, !5558}
!5556 = !DILocalVariable(name: "dev", arg: 1, scope: !5552, file: !3, line: 48, type: !236)
!5557 = !DILocalVariable(name: "pos", arg: 2, scope: !5552, file: !3, line: 48, type: !109)
!5558 = !DILocalVariable(name: "ctrl", scope: !5552, file: !3, line: 50, type: !154)
!5559 = !DILocation(line: 48, column: 51, scope: !5552)
!5560 = !DILocation(line: 48, column: 60, scope: !5552)
!5561 = !DILocation(line: 50, column: 2, scope: !5552)
!5562 = !DILocation(line: 50, column: 6, scope: !5552)
!5563 = !DILocation(line: 52, column: 23, scope: !5552)
!5564 = !DILocation(line: 52, column: 28, scope: !5552)
!5565 = !DILocation(line: 52, column: 32, scope: !5552)
!5566 = !DILocation(line: 52, column: 2, scope: !5552)
!5567 = !DILocation(line: 53, column: 24, scope: !5552)
!5568 = !DILocation(line: 53, column: 29, scope: !5552)
!5569 = !DILocation(line: 53, column: 33, scope: !5552)
!5570 = !DILocation(line: 54, column: 10, scope: !5552)
!5571 = !DILocation(line: 54, column: 15, scope: !5552)
!5572 = !DILocation(line: 53, column: 2, scope: !5552)
!5573 = !DILocation(line: 55, column: 27, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 55, column: 6)
!5575 = !DILocation(line: 55, column: 32, scope: !5574)
!5576 = !DILocation(line: 55, column: 36, scope: !5574)
!5577 = !DILocation(line: 55, column: 6, scope: !5574)
!5578 = !DILocation(line: 55, column: 6, scope: !5552)
!5579 = !DILocation(line: 57, column: 3, scope: !5574)
!5580 = !DILocation(line: 59, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 59, column: 2)
!5582 = !DILocation(line: 59, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 59, column: 2)
!5584 = !DILocation(line: 60, column: 1, scope: !5552)
!5585 = !DISubprogram(name: "pci_write_config_dword", scope: !238, file: !238, line: 1218, type: !5586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5586 = !DISubroutineType(types: !5587)
!5587 = !{!109, !5493, !109, !158}
!5588 = distinct !DISubprogram(name: "pci_vc_load_port_arb_table", scope: !3, file: !3, line: 72, type: !5589, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5591)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{null, !236, !109, !109}
!5591 = !{!5592, !5593, !5594, !5595, !5596, !5597}
!5592 = !DILocalVariable(name: "dev", arg: 1, scope: !5588, file: !3, line: 72, type: !236)
!5593 = !DILocalVariable(name: "pos", arg: 2, scope: !5588, file: !3, line: 72, type: !109)
!5594 = !DILocalVariable(name: "res", arg: 3, scope: !5588, file: !3, line: 72, type: !109)
!5595 = !DILocalVariable(name: "ctrl_pos", scope: !5588, file: !3, line: 74, type: !109)
!5596 = !DILocalVariable(name: "status_pos", scope: !5588, file: !3, line: 74, type: !109)
!5597 = !DILocalVariable(name: "ctrl", scope: !5588, file: !3, line: 75, type: !158)
!5598 = !DILocation(line: 72, column: 56, scope: !5588)
!5599 = !DILocation(line: 72, column: 65, scope: !5588)
!5600 = !DILocation(line: 72, column: 74, scope: !5588)
!5601 = !DILocation(line: 74, column: 2, scope: !5588)
!5602 = !DILocation(line: 74, column: 6, scope: !5588)
!5603 = !DILocation(line: 74, column: 16, scope: !5588)
!5604 = !DILocation(line: 75, column: 2, scope: !5588)
!5605 = !DILocation(line: 75, column: 6, scope: !5588)
!5606 = !DILocation(line: 77, column: 13, scope: !5588)
!5607 = !DILocation(line: 77, column: 17, scope: !5588)
!5608 = !DILocation(line: 77, column: 38, scope: !5588)
!5609 = !DILocation(line: 77, column: 42, scope: !5588)
!5610 = !DILocation(line: 77, column: 35, scope: !5588)
!5611 = !DILocation(line: 77, column: 11, scope: !5588)
!5612 = !DILocation(line: 78, column: 15, scope: !5588)
!5613 = !DILocation(line: 78, column: 19, scope: !5588)
!5614 = !DILocation(line: 78, column: 42, scope: !5588)
!5615 = !DILocation(line: 78, column: 46, scope: !5588)
!5616 = !DILocation(line: 78, column: 39, scope: !5588)
!5617 = !DILocation(line: 78, column: 13, scope: !5588)
!5618 = !DILocation(line: 80, column: 24, scope: !5588)
!5619 = !DILocation(line: 80, column: 29, scope: !5588)
!5620 = !DILocation(line: 80, column: 2, scope: !5588)
!5621 = !DILocation(line: 81, column: 25, scope: !5588)
!5622 = !DILocation(line: 81, column: 30, scope: !5588)
!5623 = !DILocation(line: 82, column: 11, scope: !5588)
!5624 = !DILocation(line: 82, column: 16, scope: !5588)
!5625 = !DILocation(line: 81, column: 2, scope: !5588)
!5626 = !DILocation(line: 84, column: 27, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 84, column: 6)
!5628 = !DILocation(line: 84, column: 32, scope: !5627)
!5629 = !DILocation(line: 84, column: 6, scope: !5627)
!5630 = !DILocation(line: 84, column: 6, scope: !5588)
!5631 = !DILocation(line: 85, column: 3, scope: !5627)
!5632 = !DILocation(line: 87, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 87, column: 2)
!5634 = !DILocation(line: 87, column: 2, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 87, column: 2)
!5636 = !DILocation(line: 88, column: 1, scope: !5588)
!5637 = distinct !DISubprogram(name: "pci_vc_enable", scope: !3, file: !3, line: 103, type: !5589, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5638)
!5638 = !{!5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655}
!5639 = !DILocalVariable(name: "dev", arg: 1, scope: !5637, file: !3, line: 103, type: !236)
!5640 = !DILocalVariable(name: "pos", arg: 2, scope: !5637, file: !3, line: 103, type: !109)
!5641 = !DILocalVariable(name: "res", arg: 3, scope: !5637, file: !3, line: 103, type: !109)
!5642 = !DILocalVariable(name: "ctrl_pos", scope: !5637, file: !3, line: 105, type: !109)
!5643 = !DILocalVariable(name: "status_pos", scope: !5637, file: !3, line: 105, type: !109)
!5644 = !DILocalVariable(name: "id", scope: !5637, file: !3, line: 105, type: !109)
!5645 = !DILocalVariable(name: "pos2", scope: !5637, file: !3, line: 105, type: !109)
!5646 = !DILocalVariable(name: "evcc", scope: !5637, file: !3, line: 105, type: !109)
!5647 = !DILocalVariable(name: "i", scope: !5637, file: !3, line: 105, type: !109)
!5648 = !DILocalVariable(name: "ctrl_pos2", scope: !5637, file: !3, line: 105, type: !109)
!5649 = !DILocalVariable(name: "status_pos2", scope: !5637, file: !3, line: 105, type: !109)
!5650 = !DILocalVariable(name: "ctrl", scope: !5637, file: !3, line: 106, type: !158)
!5651 = !DILocalVariable(name: "header", scope: !5637, file: !3, line: 106, type: !158)
!5652 = !DILocalVariable(name: "cap1", scope: !5637, file: !3, line: 106, type: !158)
!5653 = !DILocalVariable(name: "ctrl2", scope: !5637, file: !3, line: 106, type: !158)
!5654 = !DILocalVariable(name: "link", scope: !5637, file: !3, line: 107, type: !236)
!5655 = !DILabel(scope: !5637, name: "enable", file: !3, line: 158)
!5656 = !DILocation(line: 103, column: 43, scope: !5637)
!5657 = !DILocation(line: 103, column: 52, scope: !5637)
!5658 = !DILocation(line: 103, column: 61, scope: !5637)
!5659 = !DILocation(line: 105, column: 2, scope: !5637)
!5660 = !DILocation(line: 105, column: 6, scope: !5637)
!5661 = !DILocation(line: 105, column: 16, scope: !5637)
!5662 = !DILocation(line: 105, column: 28, scope: !5637)
!5663 = !DILocation(line: 105, column: 32, scope: !5637)
!5664 = !DILocation(line: 105, column: 38, scope: !5637)
!5665 = !DILocation(line: 105, column: 44, scope: !5637)
!5666 = !DILocation(line: 105, column: 47, scope: !5637)
!5667 = !DILocation(line: 105, column: 58, scope: !5637)
!5668 = !DILocation(line: 106, column: 2, scope: !5637)
!5669 = !DILocation(line: 106, column: 6, scope: !5637)
!5670 = !DILocation(line: 106, column: 12, scope: !5637)
!5671 = !DILocation(line: 106, column: 20, scope: !5637)
!5672 = !DILocation(line: 106, column: 26, scope: !5637)
!5673 = !DILocation(line: 107, column: 2, scope: !5637)
!5674 = !DILocation(line: 107, column: 18, scope: !5637)
!5675 = !DILocation(line: 110, column: 19, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 110, column: 6)
!5677 = !DILocation(line: 110, column: 7, scope: !5676)
!5678 = !DILocation(line: 110, column: 24, scope: !5676)
!5679 = !DILocation(line: 110, column: 49, scope: !5676)
!5680 = !DILocation(line: 110, column: 28, scope: !5676)
!5681 = !DILocation(line: 110, column: 6, scope: !5637)
!5682 = !DILocation(line: 111, column: 3, scope: !5676)
!5683 = !DILocation(line: 113, column: 13, scope: !5637)
!5684 = !DILocation(line: 113, column: 17, scope: !5637)
!5685 = !DILocation(line: 113, column: 38, scope: !5637)
!5686 = !DILocation(line: 113, column: 42, scope: !5637)
!5687 = !DILocation(line: 113, column: 35, scope: !5637)
!5688 = !DILocation(line: 113, column: 11, scope: !5637)
!5689 = !DILocation(line: 114, column: 15, scope: !5637)
!5690 = !DILocation(line: 114, column: 19, scope: !5637)
!5691 = !DILocation(line: 114, column: 42, scope: !5637)
!5692 = !DILocation(line: 114, column: 46, scope: !5637)
!5693 = !DILocation(line: 114, column: 39, scope: !5637)
!5694 = !DILocation(line: 114, column: 13, scope: !5637)
!5695 = !DILocation(line: 116, column: 24, scope: !5637)
!5696 = !DILocation(line: 116, column: 29, scope: !5637)
!5697 = !DILocation(line: 116, column: 2, scope: !5637)
!5698 = !DILocation(line: 117, column: 7, scope: !5637)
!5699 = !DILocation(line: 117, column: 12, scope: !5637)
!5700 = !DILocation(line: 117, column: 5, scope: !5637)
!5701 = !DILocation(line: 119, column: 24, scope: !5637)
!5702 = !DILocation(line: 119, column: 29, scope: !5637)
!5703 = !DILocation(line: 119, column: 2, scope: !5637)
!5704 = !DILocation(line: 122, column: 6, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 122, column: 6)
!5706 = !DILocation(line: 122, column: 29, scope: !5705)
!5707 = !DILocation(line: 122, column: 51, scope: !5705)
!5708 = !DILocation(line: 123, column: 22, scope: !5705)
!5709 = !DILocation(line: 123, column: 27, scope: !5705)
!5710 = !DILocation(line: 123, column: 6, scope: !5705)
!5711 = !DILocation(line: 122, column: 6, scope: !5637)
!5712 = !DILocation(line: 124, column: 3, scope: !5705)
!5713 = !DILocation(line: 126, column: 33, scope: !5637)
!5714 = !DILocation(line: 126, column: 38, scope: !5637)
!5715 = !DILocation(line: 126, column: 43, scope: !5637)
!5716 = !DILocation(line: 126, column: 9, scope: !5637)
!5717 = !DILocation(line: 126, column: 7, scope: !5637)
!5718 = !DILocation(line: 127, column: 7, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 127, column: 6)
!5720 = !DILocation(line: 127, column: 6, scope: !5637)
!5721 = !DILocation(line: 128, column: 3, scope: !5719)
!5722 = !DILocation(line: 130, column: 24, scope: !5637)
!5723 = !DILocation(line: 130, column: 29, scope: !5637)
!5724 = !DILocation(line: 130, column: 34, scope: !5637)
!5725 = !DILocation(line: 130, column: 40, scope: !5637)
!5726 = !DILocation(line: 130, column: 45, scope: !5637)
!5727 = !DILocation(line: 130, column: 2, scope: !5637)
!5728 = !DILocation(line: 131, column: 9, scope: !5637)
!5729 = !DILocation(line: 131, column: 14, scope: !5637)
!5730 = !DILocation(line: 131, column: 7, scope: !5637)
!5731 = !DILocation(line: 134, column: 9, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 134, column: 2)
!5733 = !DILocation(line: 134, column: 7, scope: !5732)
!5734 = !DILocation(line: 134, column: 14, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 134, column: 2)
!5736 = !DILocation(line: 134, column: 18, scope: !5735)
!5737 = !DILocation(line: 134, column: 23, scope: !5735)
!5738 = !DILocation(line: 134, column: 16, scope: !5735)
!5739 = !DILocation(line: 134, column: 2, scope: !5732)
!5740 = !DILocation(line: 135, column: 15, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 134, column: 33)
!5742 = !DILocation(line: 135, column: 20, scope: !5741)
!5743 = !DILocation(line: 136, column: 6, scope: !5741)
!5744 = !DILocation(line: 136, column: 8, scope: !5741)
!5745 = !DILocation(line: 135, column: 38, scope: !5741)
!5746 = !DILocation(line: 135, column: 13, scope: !5741)
!5747 = !DILocation(line: 137, column: 17, scope: !5741)
!5748 = !DILocation(line: 137, column: 22, scope: !5741)
!5749 = !DILocation(line: 138, column: 6, scope: !5741)
!5750 = !DILocation(line: 138, column: 8, scope: !5741)
!5751 = !DILocation(line: 137, column: 42, scope: !5741)
!5752 = !DILocation(line: 137, column: 15, scope: !5741)
!5753 = !DILocation(line: 139, column: 25, scope: !5741)
!5754 = !DILocation(line: 139, column: 30, scope: !5741)
!5755 = !DILocation(line: 139, column: 35, scope: !5741)
!5756 = !DILocation(line: 139, column: 41, scope: !5741)
!5757 = !DILocation(line: 139, column: 3, scope: !5741)
!5758 = !DILocation(line: 140, column: 8, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 140, column: 7)
!5760 = !DILocation(line: 140, column: 14, scope: !5759)
!5761 = !DILocation(line: 140, column: 39, scope: !5759)
!5762 = !DILocation(line: 140, column: 36, scope: !5759)
!5763 = !DILocation(line: 140, column: 7, scope: !5741)
!5764 = !DILocation(line: 141, column: 11, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 140, column: 43)
!5766 = !DILocation(line: 141, column: 16, scope: !5765)
!5767 = !DILocation(line: 141, column: 21, scope: !5765)
!5768 = !DILocation(line: 141, column: 9, scope: !5765)
!5769 = !DILocation(line: 142, column: 4, scope: !5765)
!5770 = !DILocation(line: 144, column: 2, scope: !5741)
!5771 = !DILocation(line: 134, column: 29, scope: !5735)
!5772 = !DILocation(line: 134, column: 2, scope: !5735)
!5773 = distinct !{!5773, !5739, !5774, !5036, !5037}
!5774 = !DILocation(line: 144, column: 2, scope: !5732)
!5775 = !DILocation(line: 146, column: 7, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 146, column: 6)
!5777 = !DILocation(line: 146, column: 6, scope: !5637)
!5778 = !DILocation(line: 147, column: 3, scope: !5776)
!5779 = !DILocation(line: 150, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 150, column: 6)
!5781 = !DILocation(line: 150, column: 12, scope: !5780)
!5782 = !DILocation(line: 150, column: 6, scope: !5637)
!5783 = !DILocation(line: 151, column: 9, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 150, column: 38)
!5785 = !DILocation(line: 152, column: 26, scope: !5784)
!5786 = !DILocation(line: 152, column: 32, scope: !5784)
!5787 = !DILocation(line: 152, column: 43, scope: !5784)
!5788 = !DILocation(line: 152, column: 3, scope: !5784)
!5789 = !DILocation(line: 153, column: 2, scope: !5784)
!5790 = !DILocation(line: 156, column: 8, scope: !5637)
!5791 = !DILocation(line: 157, column: 25, scope: !5637)
!5792 = !DILocation(line: 157, column: 31, scope: !5637)
!5793 = !DILocation(line: 157, column: 42, scope: !5637)
!5794 = !DILocation(line: 157, column: 2, scope: !5637)
!5795 = !DILocation(line: 158, column: 1, scope: !5637)
!5796 = !DILocation(line: 159, column: 7, scope: !5637)
!5797 = !DILocation(line: 160, column: 25, scope: !5637)
!5798 = !DILocation(line: 160, column: 30, scope: !5637)
!5799 = !DILocation(line: 160, column: 40, scope: !5637)
!5800 = !DILocation(line: 160, column: 2, scope: !5637)
!5801 = !DILocation(line: 162, column: 28, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 162, column: 6)
!5803 = !DILocation(line: 162, column: 33, scope: !5802)
!5804 = !DILocation(line: 162, column: 7, scope: !5802)
!5805 = !DILocation(line: 162, column: 6, scope: !5637)
!5806 = !DILocation(line: 163, column: 3, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 163, column: 3)
!5808 = !DILocation(line: 163, column: 3, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 163, column: 3)
!5810 = !DILocation(line: 163, column: 3, scope: !5802)
!5811 = !DILocation(line: 165, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 165, column: 6)
!5813 = !DILocation(line: 165, column: 11, scope: !5812)
!5814 = !DILocation(line: 165, column: 36, scope: !5812)
!5815 = !DILocation(line: 165, column: 42, scope: !5812)
!5816 = !DILocation(line: 165, column: 15, scope: !5812)
!5817 = !DILocation(line: 165, column: 6, scope: !5637)
!5818 = !DILocation(line: 167, column: 3, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 167, column: 3)
!5820 = !DILocation(line: 167, column: 3, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 167, column: 3)
!5822 = !DILocation(line: 167, column: 3, scope: !5812)
!5823 = !DILocation(line: 168, column: 1, scope: !5637)
!5824 = !DISubprogram(name: "pci_wait_for_pending", scope: !238, file: !238, line: 1332, type: !5825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!109, !236, !109, !154}
!5827 = distinct !DISubprogram(name: "pci_is_pcie", scope: !238, file: !238, line: 2424, type: !5828, scopeLine: 2425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5830)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{!811, !236}
!5830 = !{!5831}
!5831 = !DILocalVariable(name: "dev", arg: 1, scope: !5827, file: !238, line: 2424, type: !236)
!5832 = !DILocation(line: 2424, column: 48, scope: !5827)
!5833 = !DILocation(line: 2426, column: 22, scope: !5827)
!5834 = !DILocation(line: 2426, column: 9, scope: !5827)
!5835 = !DILocation(line: 2426, column: 2, scope: !5827)
!5836 = distinct !DISubprogram(name: "pcie_downstream_port", scope: !4729, file: !4729, line: 124, type: !5837, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5839)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{!811, !5493}
!5839 = !{!5840, !5841}
!5840 = !DILocalVariable(name: "dev", arg: 1, scope: !5836, file: !4729, line: 124, type: !5493)
!5841 = !DILocalVariable(name: "type", scope: !5836, file: !4729, line: 126, type: !109)
!5842 = !DILocation(line: 124, column: 63, scope: !5836)
!5843 = !DILocation(line: 126, column: 2, scope: !5836)
!5844 = !DILocation(line: 126, column: 6, scope: !5836)
!5845 = !DILocation(line: 126, column: 27, scope: !5836)
!5846 = !DILocation(line: 126, column: 13, scope: !5836)
!5847 = !DILocation(line: 128, column: 9, scope: !5836)
!5848 = !DILocation(line: 128, column: 14, scope: !5836)
!5849 = !DILocation(line: 128, column: 40, scope: !5836)
!5850 = !DILocation(line: 129, column: 9, scope: !5836)
!5851 = !DILocation(line: 129, column: 14, scope: !5836)
!5852 = !DILocation(line: 129, column: 41, scope: !5836)
!5853 = !DILocation(line: 130, column: 9, scope: !5836)
!5854 = !DILocation(line: 130, column: 14, scope: !5836)
!5855 = !DILocation(line: 131, column: 1, scope: !5836)
!5856 = !DILocation(line: 128, column: 2, scope: !5836)
!5857 = distinct !DISubprogram(name: "pci_is_root_bus", scope: !238, file: !238, line: 698, type: !5858, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!811, !248}
!5860 = !{!5861}
!5861 = !DILocalVariable(name: "pbus", arg: 1, scope: !5857, file: !238, line: 698, type: !248)
!5862 = !DILocation(line: 698, column: 52, scope: !5857)
!5863 = !DILocation(line: 700, column: 11, scope: !5857)
!5864 = !DILocation(line: 700, column: 17, scope: !5857)
!5865 = !DILocation(line: 700, column: 9, scope: !5857)
!5866 = !DILocation(line: 700, column: 2, scope: !5857)
!5867 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !238, file: !238, line: 2413, type: !234, scopeLine: 2414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5868)
!5868 = !{!5869}
!5869 = !DILocalVariable(name: "dev", arg: 1, scope: !5867, file: !238, line: 2413, type: !236)
!5870 = !DILocation(line: 2413, column: 48, scope: !5867)
!5871 = !DILocation(line: 2415, column: 9, scope: !5867)
!5872 = !DILocation(line: 2415, column: 14, scope: !5867)
!5873 = !DILocation(line: 2415, column: 2, scope: !5867)
!5874 = distinct !DISubprogram(name: "pci_pcie_type", scope: !238, file: !238, line: 2442, type: !5875, scopeLine: 2443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!109, !5493}
!5877 = !{!5878}
!5878 = !DILocalVariable(name: "dev", arg: 1, scope: !5874, file: !238, line: 2442, type: !5493)
!5879 = !DILocation(line: 2442, column: 55, scope: !5874)
!5880 = !DILocation(line: 2444, column: 24, scope: !5874)
!5881 = !DILocation(line: 2444, column: 10, scope: !5874)
!5882 = !DILocation(line: 2444, column: 29, scope: !5874)
!5883 = !DILocation(line: 2444, column: 51, scope: !5874)
!5884 = !DILocation(line: 2444, column: 2, scope: !5874)
!5885 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !238, file: !238, line: 2433, type: !5886, scopeLine: 2434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5888)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!154, !5493}
!5888 = !{!5889}
!5889 = !DILocalVariable(name: "dev", arg: 1, scope: !5885, file: !238, line: 2433, type: !5493)
!5890 = !DILocation(line: 2433, column: 55, scope: !5885)
!5891 = !DILocation(line: 2435, column: 9, scope: !5885)
!5892 = !DILocation(line: 2435, column: 14, scope: !5885)
!5893 = !DILocation(line: 2435, column: 2, scope: !5885)
