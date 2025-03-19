; ModuleID = 'drivers/scsi/sr_ioctl.c'
source_filename = "drivers/scsi/sr_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_exec_args = type { ptr, i32, ptr, i32, i32, ptr }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.scsi_cd = type { i32, ptr, i32, i64, i8, i32, i8, %struct.cdrom_device_info, %struct.mutex, ptr }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, ptr, i32, i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, [4 x i8], %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i32, i32, i64, i32, i32, ptr, i8, i8, i8, [5 x i8], %struct.mutex, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i8, [3 x i8], %struct.atomic_t, [1 x i64], [1 x i64], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.work_struct, ptr, ptr, i64, ptr, i32, i32, ptr, i8, [7 x i8], %struct.mutex, i32, [4 x i8], ptr, [0 x i64] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.media_event_desc = type { i16, i8, i8 }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_msf0 = type { i8, i8, i8 }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
%struct.cdrom_mcn = type { [14 x i8] }
%struct.cdrom_ti = type { i8, i8, i8, i8 }

@__param_str_xa_test = internal constant [15 x i8] c"sr_mod.xa_test\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@xa_test = internal global i32 0, align 4, !dbg !5579
@__param_xa_test = internal constant %struct.kernel_param { ptr @__param_str_xa_test, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @xa_test } }, section "__param", align 8, !dbg !5554
@__UNIQUE_ID_xa_testtype348 = internal constant [28 x i8] c"sr_mod.parmtype=xa_test:int\00", section ".modinfo", align 1, !dbg !5556
@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !5561
@.str.1 = private unnamed_addr constant [23 x i8] c"disc change detected.\0A\00", align 1, !dbg !5564
@.str.2 = private unnamed_addr constant [22 x i8] c"CDROM not ready yet.\0A\00", align 1, !dbg !5569
@.str.3 = private unnamed_addr constant [59 x i8] c"CDROM not ready.  Make sure there is a disc in the drive.\0A\00", align 1, !dbg !5574
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5581
@.str.5 = private unnamed_addr constant [46 x i8] c"CDROM doesn't support READ CD (0xbe) command\0A\00", align 1, !dbg !5586
@llvm.compiler.used = appending global [2 x ptr] [ptr @__param_xa_test, ptr @__UNIQUE_ID_xa_testtype348], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_do_ioctl(ptr noundef %cd, ptr noundef %cgc) #0 align 16 !dbg !5603 {
entry:
  %cd.addr = alloca ptr, align 8
  %cgc.addr = alloca ptr, align 8
  %SDev = alloca ptr, align 8
  %local_sshdr = alloca %struct.scsi_sense_hdr, align 1
  %sshdr = alloca ptr, align 8
  %result = alloca i32, align 4
  %err = alloca i32, align 4
  %retries = alloca i32, align 4
  %exec_args = alloca %struct.scsi_exec_args, align 8
  store ptr %cd, ptr %cd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !6036, metadata !DIExpression()), !dbg !6057
  store ptr %cgc, ptr %cgc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cgc.addr, metadata !6037, metadata !DIExpression()), !dbg !6058
  call void @llvm.lifetime.start.p0(i64 8, ptr %SDev) #15, !dbg !6059
  call void @llvm.dbg.declare(metadata ptr %SDev, metadata !6038, metadata !DIExpression()), !dbg !6060
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_sshdr) #15, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %local_sshdr, metadata !6039, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %sshdr) #15, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %sshdr, metadata !6040, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6041, metadata !DIExpression()), !dbg !6065
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6042, metadata !DIExpression()), !dbg !6066
  store i32 0, ptr %err, align 4, !dbg !6066
  call void @llvm.lifetime.start.p0(i64 4, ptr %retries) #15, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %retries, metadata !6043, metadata !DIExpression()), !dbg !6067
  store i32 0, ptr %retries, align 4, !dbg !6067
  call void @llvm.lifetime.start.p0(i64 40, ptr %exec_args) #15, !dbg !6068
  call void @llvm.dbg.declare(metadata ptr %exec_args, metadata !6044, metadata !DIExpression()), !dbg !6069
  call void @llvm.memset.p0.i64(ptr align 8 %exec_args, i8 0, i64 40, i1 false), !dbg !6069
  %sshdr1 = getelementptr inbounds %struct.scsi_exec_args, ptr %exec_args, i32 0, i32 2, !dbg !6070
  %0 = load ptr, ptr %cgc.addr, align 8, !dbg !6071
  %sshdr2 = getelementptr inbounds %struct.packet_command, ptr %0, i32 0, i32 4, !dbg !6072
  %1 = load ptr, ptr %sshdr2, align 8, !dbg !6072
  %tobool = icmp ne ptr %1, null, !dbg !6071
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6071

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6071

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6071

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ %local_sshdr, %cond.false ], !dbg !6071
  store ptr %cond, ptr %sshdr1, align 8, !dbg !6070
  %2 = load ptr, ptr %cd.addr, align 8, !dbg !6073
  %device = getelementptr inbounds %struct.scsi_cd, ptr %2, i32 0, i32 1, !dbg !6074
  %3 = load ptr, ptr %device, align 8, !dbg !6074
  store ptr %3, ptr %SDev, align 8, !dbg !6075
  %sshdr3 = getelementptr inbounds %struct.scsi_exec_args, ptr %exec_args, i32 0, i32 2, !dbg !6076
  %4 = load ptr, ptr %sshdr3, align 8, !dbg !6076
  store ptr %4, ptr %sshdr, align 8, !dbg !6077
  br label %retry, !dbg !6078

retry:                                            ; preds = %if.then44, %if.then23, %cond.end
  call void @llvm.dbg.label(metadata !6055), !dbg !6079
  %5 = load ptr, ptr %SDev, align 8, !dbg !6080
  %call = call i32 @scsi_block_when_processing_errors(ptr noundef %5) #16, !dbg !6082
  %tobool4 = icmp ne i32 %call, 0, !dbg !6082
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6083

if.then:                                          ; preds = %retry
  store i32 -19, ptr %err, align 4, !dbg !6084
  br label %out, !dbg !6086

if.end:                                           ; preds = %retry
  %6 = load ptr, ptr %SDev, align 8, !dbg !6087
  %7 = load ptr, ptr %cgc.addr, align 8, !dbg !6088
  %cmd = getelementptr inbounds %struct.packet_command, ptr %7, i32 0, i32 0, !dbg !6089
  %arraydecay = getelementptr inbounds [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6088
  %8 = load ptr, ptr %cgc.addr, align 8, !dbg !6090
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %8, i32 0, i32 5, !dbg !6091
  %9 = load i8, ptr %data_direction, align 8, !dbg !6091
  %conv = zext i8 %9 to i32, !dbg !6090
  %cmp = icmp eq i32 %conv, 1, !dbg !6092
  %10 = zext i1 %cmp to i64, !dbg !6090
  %cond6 = select i1 %cmp, i32 35, i32 34, !dbg !6090
  %11 = load ptr, ptr %cgc.addr, align 8, !dbg !6093
  %buffer = getelementptr inbounds %struct.packet_command, ptr %11, i32 0, i32 1, !dbg !6094
  %12 = load ptr, ptr %buffer, align 8, !dbg !6094
  %13 = load ptr, ptr %cgc.addr, align 8, !dbg !6095
  %buflen = getelementptr inbounds %struct.packet_command, ptr %13, i32 0, i32 2, !dbg !6096
  %14 = load i32, ptr %buflen, align 8, !dbg !6096
  %15 = load ptr, ptr %cgc.addr, align 8, !dbg !6097
  %timeout = getelementptr inbounds %struct.packet_command, ptr %15, i32 0, i32 7, !dbg !6098
  %16 = load i32, ptr %timeout, align 8, !dbg !6098
  %call7 = call i32 @scsi_execute_cmd(ptr noundef %6, ptr noundef %arraydecay, i32 noundef %cond6, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 3, ptr noundef %exec_args) #16, !dbg !6099
  store i32 %call7, ptr %result, align 4, !dbg !6100
  %17 = load i32, ptr %result, align 4, !dbg !6101
  %cmp8 = icmp slt i32 %17, 0, !dbg !6103
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6104

if.then10:                                        ; preds = %if.end
  %18 = load i32, ptr %result, align 4, !dbg !6105
  store i32 %18, ptr %err, align 4, !dbg !6107
  br label %out, !dbg !6108

if.end11:                                         ; preds = %if.end
  %19 = load i32, ptr %result, align 4, !dbg !6109
  %call12 = call i32 @scsi_status_is_check_condition(i32 noundef %19) #16, !dbg !6111
  %tobool13 = icmp ne i32 %call12, 0, !dbg !6111
  br i1 %tobool13, label %if.then14, label %if.end66, !dbg !6112

if.then14:                                        ; preds = %if.end11
  %20 = load ptr, ptr %sshdr, align 8, !dbg !6113
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %20, i32 0, i32 1, !dbg !6115
  %21 = load i8, ptr %sense_key, align 1, !dbg !6115
  %conv15 = zext i8 %21 to i32, !dbg !6113
  switch i32 %conv15, label %sw.default [
    i32 6, label %sw.bb
    i32 2, label %sw.bb25
    i32 5, label %sw.bb54
  ], !dbg !6116

sw.bb:                                            ; preds = %if.then14
  %22 = load ptr, ptr %SDev, align 8, !dbg !6117
  %changed = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 44, !dbg !6119
  %bf.load = load i64, ptr %changed, align 4, !dbg !6120
  %bf.clear = and i64 %bf.load, -33, !dbg !6120
  %bf.set = or i64 %bf.clear, 32, !dbg !6120
  store i64 %bf.set, ptr %changed, align 4, !dbg !6120
  %23 = load ptr, ptr %cgc.addr, align 8, !dbg !6121
  %quiet = getelementptr inbounds %struct.packet_command, ptr %23, i32 0, i32 6, !dbg !6123
  %24 = load i32, ptr %quiet, align 4, !dbg !6123
  %tobool16 = icmp ne i32 %24, 0, !dbg !6121
  br i1 %tobool16, label %if.end20, label %if.then17, !dbg !6124

if.then17:                                        ; preds = %sw.bb
  %25 = load ptr, ptr %cd.addr, align 8, !dbg !6125
  %device18 = getelementptr inbounds %struct.scsi_cd, ptr %25, i32 0, i32 1, !dbg !6125
  %26 = load ptr, ptr %device18, align 8, !dbg !6125
  %27 = load ptr, ptr %cd.addr, align 8, !dbg !6125
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %27, i32 0, i32 7, !dbg !6125
  %name = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 11, !dbg !6125
  %arraydecay19 = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0, !dbg !6125
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef @.str, ptr noundef %26, ptr noundef %arraydecay19, ptr noundef @.str.1) #16, !dbg !6125
  br label %if.end20, !dbg !6125

if.end20:                                         ; preds = %if.then17, %sw.bb
  %28 = load i32, ptr %retries, align 4, !dbg !6126
  %inc = add i32 %28, 1, !dbg !6126
  store i32 %inc, ptr %retries, align 4, !dbg !6126
  %cmp21 = icmp slt i32 %28, 10, !dbg !6128
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6129

if.then23:                                        ; preds = %if.end20
  br label %retry, !dbg !6130

if.end24:                                         ; preds = %if.end20
  store i32 -123, ptr %err, align 4, !dbg !6131
  br label %sw.epilog, !dbg !6132

sw.bb25:                                          ; preds = %if.then14
  %29 = load ptr, ptr %sshdr, align 8, !dbg !6133
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %29, i32 0, i32 2, !dbg !6135
  %30 = load i8, ptr %asc, align 1, !dbg !6135
  %conv26 = zext i8 %30 to i32, !dbg !6133
  %cmp27 = icmp eq i32 %conv26, 4, !dbg !6136
  br i1 %cmp27, label %land.lhs.true, label %if.end45, !dbg !6137

land.lhs.true:                                    ; preds = %sw.bb25
  %31 = load ptr, ptr %sshdr, align 8, !dbg !6138
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %31, i32 0, i32 3, !dbg !6139
  %32 = load i8, ptr %ascq, align 1, !dbg !6139
  %conv29 = zext i8 %32 to i32, !dbg !6138
  %cmp30 = icmp eq i32 %conv29, 1, !dbg !6140
  br i1 %cmp30, label %if.then32, label %if.end45, !dbg !6141

if.then32:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %cgc.addr, align 8, !dbg !6142
  %quiet33 = getelementptr inbounds %struct.packet_command, ptr %33, i32 0, i32 6, !dbg !6145
  %34 = load i32, ptr %quiet33, align 4, !dbg !6145
  %tobool34 = icmp ne i32 %34, 0, !dbg !6142
  br i1 %tobool34, label %if.end40, label %if.then35, !dbg !6146

if.then35:                                        ; preds = %if.then32
  %35 = load ptr, ptr %cd.addr, align 8, !dbg !6147
  %device36 = getelementptr inbounds %struct.scsi_cd, ptr %35, i32 0, i32 1, !dbg !6147
  %36 = load ptr, ptr %device36, align 8, !dbg !6147
  %37 = load ptr, ptr %cd.addr, align 8, !dbg !6147
  %cdi37 = getelementptr inbounds %struct.scsi_cd, ptr %37, i32 0, i32 7, !dbg !6147
  %name38 = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi37, i32 0, i32 11, !dbg !6147
  %arraydecay39 = getelementptr inbounds [20 x i8], ptr %name38, i64 0, i64 0, !dbg !6147
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef @.str, ptr noundef %36, ptr noundef %arraydecay39, ptr noundef @.str.2) #16, !dbg !6147
  br label %if.end40, !dbg !6147

if.end40:                                         ; preds = %if.then35, %if.then32
  %38 = load i32, ptr %retries, align 4, !dbg !6148
  %inc41 = add i32 %38, 1, !dbg !6148
  store i32 %inc41, ptr %retries, align 4, !dbg !6148
  %cmp42 = icmp slt i32 %38, 10, !dbg !6150
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !6151

if.then44:                                        ; preds = %if.end40
  call void @ssleep(i32 noundef 2) #16, !dbg !6152
  br label %retry, !dbg !6154

if.else:                                          ; preds = %if.end40
  store i32 -123, ptr %err, align 4, !dbg !6155
  br label %sw.epilog, !dbg !6157

if.end45:                                         ; preds = %land.lhs.true, %sw.bb25
  %39 = load ptr, ptr %cgc.addr, align 8, !dbg !6158
  %quiet46 = getelementptr inbounds %struct.packet_command, ptr %39, i32 0, i32 6, !dbg !6160
  %40 = load i32, ptr %quiet46, align 4, !dbg !6160
  %tobool47 = icmp ne i32 %40, 0, !dbg !6158
  br i1 %tobool47, label %if.end53, label %if.then48, !dbg !6161

if.then48:                                        ; preds = %if.end45
  %41 = load ptr, ptr %cd.addr, align 8, !dbg !6162
  %device49 = getelementptr inbounds %struct.scsi_cd, ptr %41, i32 0, i32 1, !dbg !6162
  %42 = load ptr, ptr %device49, align 8, !dbg !6162
  %43 = load ptr, ptr %cd.addr, align 8, !dbg !6162
  %cdi50 = getelementptr inbounds %struct.scsi_cd, ptr %43, i32 0, i32 7, !dbg !6162
  %name51 = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi50, i32 0, i32 11, !dbg !6162
  %arraydecay52 = getelementptr inbounds [20 x i8], ptr %name51, i64 0, i64 0, !dbg !6162
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef @.str, ptr noundef %42, ptr noundef %arraydecay52, ptr noundef @.str.3) #16, !dbg !6162
  br label %if.end53, !dbg !6162

if.end53:                                         ; preds = %if.then48, %if.end45
  store i32 -123, ptr %err, align 4, !dbg !6163
  br label %sw.epilog, !dbg !6164

sw.bb54:                                          ; preds = %if.then14
  store i32 -5, ptr %err, align 4, !dbg !6165
  %44 = load ptr, ptr %sshdr, align 8, !dbg !6166
  %asc55 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %44, i32 0, i32 2, !dbg !6168
  %45 = load i8, ptr %asc55, align 1, !dbg !6168
  %conv56 = zext i8 %45 to i32, !dbg !6166
  %cmp57 = icmp eq i32 %conv56, 32, !dbg !6169
  br i1 %cmp57, label %land.lhs.true59, label %if.end65, !dbg !6170

land.lhs.true59:                                  ; preds = %sw.bb54
  %46 = load ptr, ptr %sshdr, align 8, !dbg !6171
  %ascq60 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %46, i32 0, i32 3, !dbg !6172
  %47 = load i8, ptr %ascq60, align 1, !dbg !6172
  %conv61 = zext i8 %47 to i32, !dbg !6171
  %cmp62 = icmp eq i32 %conv61, 0, !dbg !6173
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !6174

if.then64:                                        ; preds = %land.lhs.true59
  store i32 -95, ptr %err, align 4, !dbg !6175
  br label %if.end65, !dbg !6176

if.end65:                                         ; preds = %if.then64, %land.lhs.true59, %sw.bb54
  br label %sw.epilog, !dbg !6177

sw.default:                                       ; preds = %if.then14
  store i32 -5, ptr %err, align 4, !dbg !6178
  br label %sw.epilog, !dbg !6179

sw.epilog:                                        ; preds = %sw.default, %if.end65, %if.end53, %if.else, %if.end24
  br label %if.end66, !dbg !6180

if.end66:                                         ; preds = %sw.epilog, %if.end11
  br label %out, !dbg !6181

out:                                              ; preds = %if.end66, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !6056), !dbg !6182
  %48 = load i32, ptr %err, align 4, !dbg !6183
  %49 = load ptr, ptr %cgc.addr, align 8, !dbg !6184
  %stat = getelementptr inbounds %struct.packet_command, ptr %49, i32 0, i32 3, !dbg !6185
  store i32 %48, ptr %stat, align 4, !dbg !6186
  %50 = load i32, ptr %err, align 4, !dbg !6187
  call void @llvm.lifetime.end.p0(i64 40, ptr %exec_args) #15, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 4, ptr %retries) #15, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 8, ptr %sshdr) #15, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_sshdr) #15, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 8, ptr %SDev) #15, !dbg !6188
  ret i32 %50, !dbg !6189
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6190 dso_local i32 @scsi_block_when_processing_errors(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6192 dso_local i32 @scsi_execute_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @scsi_status_is_check_condition(i32 noundef %status) #5 align 16 !dbg !6196 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !6199, metadata !DIExpression()), !dbg !6200
  %0 = load i32, ptr %status.addr, align 4, !dbg !6201
  %cmp = icmp slt i32 %0, 0, !dbg !6203
  br i1 %cmp, label %if.then, label %if.end, !dbg !6204

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6205
  br label %return, !dbg !6205

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4, !dbg !6206
  %and = and i32 %1, 254, !dbg !6206
  store i32 %and, ptr %status.addr, align 4, !dbg !6206
  %2 = load i32, ptr %status.addr, align 4, !dbg !6207
  %cmp1 = icmp eq i32 %2, 2, !dbg !6208
  %conv = zext i1 %cmp1 to i32, !dbg !6208
  store i32 %conv, ptr %retval, align 4, !dbg !6209
  br label %return, !dbg !6209

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6210
  ret i32 %3, !dbg !6210
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6211 dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ssleep(i32 noundef %seconds) #5 align 16 !dbg !6216 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seconds.addr, metadata !6221, metadata !DIExpression()), !dbg !6222
  %0 = load i32, ptr %seconds.addr, align 4, !dbg !6223
  %mul = mul i32 %0, 1000, !dbg !6224
  call void @msleep(i32 noundef %mul) #16, !dbg !6225
  ret void, !dbg !6226
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_tray_move(ptr noundef %cdi, i32 noundef %pos) #0 align 16 !dbg !6227 {
entry:
  %cdi.addr = alloca ptr, align 8
  %pos.addr = alloca i32, align 4
  %cd = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6229, metadata !DIExpression()), !dbg !6233
  store i32 %pos, ptr %pos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6230, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6231, metadata !DIExpression()), !dbg !6236
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6237
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6238
  %1 = load ptr, ptr %handle, align 8, !dbg !6238
  store ptr %1, ptr %cd, align 8, !dbg !6236
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !6232, metadata !DIExpression()), !dbg !6240
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !6241
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6242
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6243
  store i8 27, ptr %arrayidx, align 8, !dbg !6244
  %2 = load i32, ptr %pos.addr, align 4, !dbg !6245
  %cmp = icmp eq i32 %2, 0, !dbg !6246
  %3 = zext i1 %cmp to i64, !dbg !6247
  %cond = select i1 %cmp, i32 3, i32 2, !dbg !6247
  %conv = trunc i32 %cond to i8, !dbg !6247
  %cmd1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6248
  %arrayidx2 = getelementptr [12 x i8], ptr %cmd1, i64 0, i64 4, !dbg !6249
  store i8 %conv, ptr %arrayidx2, align 4, !dbg !6250
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !6251
  store i8 3, ptr %data_direction, align 8, !dbg !6252
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !6253
  store i32 30000, ptr %timeout, align 8, !dbg !6254
  %4 = load ptr, ptr %cd, align 8, !dbg !6255
  %call = call i32 @sr_do_ioctl(ptr noundef %4, ptr noundef %cgc) #16, !dbg !6256
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !6257
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6257
  ret i32 %call, !dbg !6258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_lock_door(ptr noundef %cdi, i32 noundef %lock) #0 align 16 !dbg !6259 {
entry:
  %cdi.addr = alloca ptr, align 8
  %lock.addr = alloca i32, align 4
  %cd = alloca ptr, align 8
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6261, metadata !DIExpression()), !dbg !6264
  store i32 %lock, ptr %lock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6262, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6263, metadata !DIExpression()), !dbg !6267
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6268
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6269
  %1 = load ptr, ptr %handle, align 8, !dbg !6269
  store ptr %1, ptr %cd, align 8, !dbg !6267
  %2 = load ptr, ptr %cd, align 8, !dbg !6270
  %device = getelementptr inbounds %struct.scsi_cd, ptr %2, i32 0, i32 1, !dbg !6271
  %3 = load ptr, ptr %device, align 8, !dbg !6271
  %4 = load i32, ptr %lock.addr, align 4, !dbg !6272
  %tobool = icmp ne i32 %4, 0, !dbg !6272
  %5 = zext i1 %tobool to i64, !dbg !6272
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !6272
  %conv = trunc i32 %cond to i8, !dbg !6272
  %call = call i32 @scsi_set_medium_removal(ptr noundef %3, i8 noundef zeroext %conv) #16, !dbg !6273
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6274
  ret i32 %call, !dbg !6275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6276 dso_local i32 @scsi_set_medium_removal(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_drive_status(ptr noundef %cdi, i32 noundef %slot) #0 align 16 !dbg !6279 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %slot.addr = alloca i32, align 4
  %cd = alloca ptr, align 8
  %sshdr = alloca %struct.scsi_sense_hdr, align 1
  %med = alloca %struct.media_event_desc, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6281, metadata !DIExpression()), !dbg !6296
  store i32 %slot, ptr %slot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6282, metadata !DIExpression()), !dbg !6297
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6298
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6283, metadata !DIExpression()), !dbg !6299
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6300
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6301
  %1 = load ptr, ptr %handle, align 8, !dbg !6301
  store ptr %1, ptr %cd, align 8, !dbg !6299
  call void @llvm.lifetime.start.p0(i64 8, ptr %sshdr) #15, !dbg !6302
  call void @llvm.dbg.declare(metadata ptr %sshdr, metadata !6285, metadata !DIExpression()), !dbg !6303
  call void @llvm.lifetime.start.p0(i64 4, ptr %med) #15, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %med, metadata !6286, metadata !DIExpression()), !dbg !6305
  %2 = load i32, ptr %slot.addr, align 4, !dbg !6306
  %cmp = icmp ne i32 2147483647, %2, !dbg !6308
  br i1 %cmp, label %if.then, label %if.end, !dbg !6309

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6310

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cd, align 8, !dbg !6312
  %device = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 1, !dbg !6314
  %4 = load ptr, ptr %device, align 8, !dbg !6314
  %call = call i32 @scsi_test_unit_ready(ptr noundef %4, i32 noundef 30000, i32 noundef 3, ptr noundef %sshdr) #16, !dbg !6315
  %tobool = icmp ne i32 %call, 0, !dbg !6315
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6316

if.then1:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !6317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6317

if.end2:                                          ; preds = %if.end
  %call3 = call zeroext i1 @scsi_sense_valid(ptr noundef %sshdr) #16, !dbg !6318
  br i1 %call3, label %land.lhs.true, label %if.end15, !dbg !6320

land.lhs.true:                                    ; preds = %if.end2
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1, !dbg !6321
  %5 = load i8, ptr %sense_key, align 1, !dbg !6321
  %conv = zext i8 %5 to i32, !dbg !6322
  %cmp4 = icmp eq i32 %conv, 2, !dbg !6323
  br i1 %cmp4, label %land.lhs.true6, label %if.end15, !dbg !6324

land.lhs.true6:                                   ; preds = %land.lhs.true
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2, !dbg !6325
  %6 = load i8, ptr %asc, align 1, !dbg !6325
  %conv7 = zext i8 %6 to i32, !dbg !6326
  %cmp8 = icmp eq i32 %conv7, 4, !dbg !6327
  br i1 %cmp8, label %land.lhs.true10, label %if.end15, !dbg !6328

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3, !dbg !6329
  %7 = load i8, ptr %ascq, align 1, !dbg !6329
  %conv11 = zext i8 %7 to i32, !dbg !6330
  %cmp12 = icmp eq i32 %conv11, 1, !dbg !6331
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6332

if.then14:                                        ; preds = %land.lhs.true10
  store i32 3, ptr %retval, align 4, !dbg !6333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6333

if.end15:                                         ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %if.end2
  %8 = load ptr, ptr %cdi.addr, align 8, !dbg !6334
  %call16 = call i32 @cdrom_get_media_event(ptr noundef %8, ptr noundef %med) #16, !dbg !6336
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6336
  br i1 %tobool17, label %if.end28, label %if.then18, !dbg !6337

if.then18:                                        ; preds = %if.end15
  %bf.load = load i16, ptr %med, align 1, !dbg !6338
  %bf.lshr = lshr i16 %bf.load, 9, !dbg !6338
  %bf.clear = and i16 %bf.lshr, 1, !dbg !6338
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !6338
  %tobool19 = icmp ne i8 %bf.cast, 0, !dbg !6341
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !6342

if.then20:                                        ; preds = %if.then18
  store i32 4, ptr %retval, align 4, !dbg !6343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6343

if.else:                                          ; preds = %if.then18
  %bf.load21 = load i16, ptr %med, align 1, !dbg !6344
  %bf.lshr22 = lshr i16 %bf.load21, 8, !dbg !6344
  %bf.clear23 = and i16 %bf.lshr22, 1, !dbg !6344
  %bf.cast24 = trunc i16 %bf.clear23 to i8, !dbg !6344
  %tobool25 = icmp ne i8 %bf.cast24, 0, !dbg !6346
  br i1 %tobool25, label %if.then26, label %if.else27, !dbg !6347

if.then26:                                        ; preds = %if.else
  store i32 2, ptr %retval, align 4, !dbg !6348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6348

if.else27:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4, !dbg !6349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6349

if.end28:                                         ; preds = %if.end15
  %call29 = call zeroext i1 @scsi_sense_valid(ptr noundef %sshdr) #16, !dbg !6350
  br i1 %call29, label %land.lhs.true31, label %if.end47, !dbg !6352

land.lhs.true31:                                  ; preds = %if.end28
  %sense_key32 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1, !dbg !6353
  %9 = load i8, ptr %sense_key32, align 1, !dbg !6353
  %conv33 = zext i8 %9 to i32, !dbg !6354
  %cmp34 = icmp eq i32 %conv33, 2, !dbg !6355
  br i1 %cmp34, label %land.lhs.true36, label %if.end47, !dbg !6356

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %asc37 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2, !dbg !6357
  %10 = load i8, ptr %asc37, align 1, !dbg !6357
  %conv38 = zext i8 %10 to i32, !dbg !6358
  %cmp39 = icmp eq i32 %conv38, 4, !dbg !6359
  br i1 %cmp39, label %land.lhs.true41, label %if.end47, !dbg !6360

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %ascq42 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3, !dbg !6361
  %11 = load i8, ptr %ascq42, align 1, !dbg !6361
  %conv43 = zext i8 %11 to i32, !dbg !6362
  %cmp44 = icmp eq i32 %conv43, 2, !dbg !6363
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !6364

if.then46:                                        ; preds = %land.lhs.true41
  store i32 2, ptr %retval, align 4, !dbg !6365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6365

if.end47:                                         ; preds = %land.lhs.true41, %land.lhs.true36, %land.lhs.true31, %if.end28
  %sense_key48 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1, !dbg !6366
  %12 = load i8, ptr %sense_key48, align 1, !dbg !6366
  %conv49 = zext i8 %12 to i32, !dbg !6368
  %cmp50 = icmp eq i32 %conv49, 2, !dbg !6369
  br i1 %cmp50, label %land.lhs.true52, label %if.end58, !dbg !6370

land.lhs.true52:                                  ; preds = %if.end47
  %asc53 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2, !dbg !6371
  %13 = load i8, ptr %asc53, align 1, !dbg !6371
  %conv54 = zext i8 %13 to i32, !dbg !6372
  %cmp55 = icmp eq i32 %conv54, 4, !dbg !6373
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !6374

if.then57:                                        ; preds = %land.lhs.true52
  store i32 4, ptr %retval, align 4, !dbg !6375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6375

if.end58:                                         ; preds = %land.lhs.true52, %if.end47
  %call59 = call zeroext i1 @scsi_sense_valid(ptr noundef %sshdr) #16, !dbg !6376
  br i1 %call59, label %land.lhs.true61, label %if.else67, !dbg !6378

land.lhs.true61:                                  ; preds = %if.end58
  %asc62 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2, !dbg !6379
  %14 = load i8, ptr %asc62, align 1, !dbg !6379
  %conv63 = zext i8 %14 to i32, !dbg !6380
  %cmp64 = icmp eq i32 %conv63, 58, !dbg !6381
  br i1 %cmp64, label %if.then66, label %if.else67, !dbg !6382

if.then66:                                        ; preds = %land.lhs.true61
  store i32 1, ptr %retval, align 4, !dbg !6383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6383

if.else67:                                        ; preds = %land.lhs.true61, %if.end58
  store i32 2, ptr %retval, align 4, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

cleanup:                                          ; preds = %if.else67, %if.then66, %if.then57, %if.then46, %if.else27, %if.then26, %if.then20, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %med) #15, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %sshdr) #15, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6385
  %15 = load i32, ptr %retval, align 4, !dbg !6385
  ret i32 %15, !dbg !6385
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6386 dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @scsi_sense_valid(ptr noundef %sshdr) #5 align 16 !dbg !6389 {
entry:
  %retval = alloca i1, align 1
  %sshdr.addr = alloca ptr, align 8
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !6395, metadata !DIExpression()), !dbg !6396
  %0 = load ptr, ptr %sshdr.addr, align 8, !dbg !6397
  %tobool = icmp ne ptr %0, null, !dbg !6397
  br i1 %tobool, label %if.end, label %if.then, !dbg !6399

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6400
  br label %return, !dbg !6400

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %sshdr.addr, align 8, !dbg !6401
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, ptr %1, i32 0, i32 0, !dbg !6402
  %2 = load i8, ptr %response_code, align 1, !dbg !6402
  %conv = zext i8 %2 to i32, !dbg !6401
  %and = and i32 %conv, 112, !dbg !6403
  %cmp = icmp eq i32 %and, 112, !dbg !6404
  store i1 %cmp, ptr %retval, align 1, !dbg !6405
  br label %return, !dbg !6405

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !6406
  ret i1 %3, !dbg !6406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6407 dso_local i32 @cdrom_get_media_event(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_disk_status(ptr noundef %cdi) #0 align 16 !dbg !6411 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %toc_h = alloca %struct.cdrom_tochdr, align 1
  %toc_e = alloca %struct.cdrom_tocentry, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %have_datatracks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6413, metadata !DIExpression()), !dbg !6432
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6433
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6414, metadata !DIExpression()), !dbg !6434
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6435
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6436
  %1 = load ptr, ptr %handle, align 8, !dbg !6436
  store ptr %1, ptr %cd, align 8, !dbg !6434
  call void @llvm.lifetime.start.p0(i64 2, ptr %toc_h) #15, !dbg !6437
  call void @llvm.dbg.declare(metadata ptr %toc_h, metadata !6415, metadata !DIExpression()), !dbg !6438
  call void @llvm.lifetime.start.p0(i64 12, ptr %toc_e) #15, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %toc_e, metadata !6420, metadata !DIExpression()), !dbg !6440
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6429, metadata !DIExpression()), !dbg !6442
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6430, metadata !DIExpression()), !dbg !6443
  call void @llvm.lifetime.start.p0(i64 4, ptr %have_datatracks) #15, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %have_datatracks, metadata !6431, metadata !DIExpression()), !dbg !6444
  store i32 0, ptr %have_datatracks, align 4, !dbg !6444
  %2 = load ptr, ptr %cdi.addr, align 8, !dbg !6445
  %call = call i32 @sr_read_tochdr(ptr noundef %2, ptr noundef %toc_h) #16, !dbg !6446
  store i32 %call, ptr %rc, align 4, !dbg !6447
  %3 = load i32, ptr %rc, align 4, !dbg !6448
  %tobool = icmp ne i32 %3, 0, !dbg !6448
  br i1 %tobool, label %if.then, label %if.end, !dbg !6450

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4, !dbg !6451
  %cmp = icmp eq i32 %4, -123, !dbg !6452
  %5 = zext i1 %cmp to i64, !dbg !6453
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !6453
  store i32 %cond, ptr %retval, align 4, !dbg !6454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6454

if.end:                                           ; preds = %entry
  %cdth_trk0 = getelementptr inbounds %struct.cdrom_tochdr, ptr %toc_h, i32 0, i32 0, !dbg !6455
  %6 = load i8, ptr %cdth_trk0, align 1, !dbg !6455
  %conv = zext i8 %6 to i32, !dbg !6457
  store i32 %conv, ptr %i, align 4, !dbg !6458
  br label %for.cond, !dbg !6459

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !6460
  %cdth_trk1 = getelementptr inbounds %struct.cdrom_tochdr, ptr %toc_h, i32 0, i32 1, !dbg !6462
  %8 = load i8, ptr %cdth_trk1, align 1, !dbg !6462
  %conv1 = zext i8 %8 to i32, !dbg !6463
  %cmp2 = icmp sle i32 %7, %conv1, !dbg !6464
  br i1 %cmp2, label %for.body, label %for.end, !dbg !6465

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !dbg !6466
  %conv4 = trunc i32 %9 to i8, !dbg !6466
  %cdte_track = getelementptr inbounds %struct.cdrom_tocentry, ptr %toc_e, i32 0, i32 0, !dbg !6468
  store i8 %conv4, ptr %cdte_track, align 4, !dbg !6469
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, ptr %toc_e, i32 0, i32 2, !dbg !6470
  store i8 1, ptr %cdte_format, align 2, !dbg !6471
  %10 = load ptr, ptr %cdi.addr, align 8, !dbg !6472
  %call5 = call i32 @sr_read_tocentry(ptr noundef %10, ptr noundef %toc_e) #16, !dbg !6474
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6474
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6475

if.then7:                                         ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !6476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6476

if.end8:                                          ; preds = %for.body
  %cdte_ctrl = getelementptr inbounds %struct.cdrom_tocentry, ptr %toc_e, i32 0, i32 1, !dbg !6477
  %bf.load = load i8, ptr %cdte_ctrl, align 1, !dbg !6477
  %bf.lshr = lshr i8 %bf.load, 4, !dbg !6477
  %conv9 = zext i8 %bf.lshr to i32, !dbg !6479
  %and = and i32 %conv9, 4, !dbg !6480
  %tobool10 = icmp ne i32 %and, 0, !dbg !6480
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6481

if.then11:                                        ; preds = %if.end8
  store i32 1, ptr %have_datatracks, align 4, !dbg !6482
  br label %for.end, !dbg !6484

if.end12:                                         ; preds = %if.end8
  br label %for.inc, !dbg !6485

for.inc:                                          ; preds = %if.end12
  %11 = load i32, ptr %i, align 4, !dbg !6486
  %inc = add i32 %11, 1, !dbg !6486
  store i32 %inc, ptr %i, align 4, !dbg !6486
  br label %for.cond, !dbg !6487, !llvm.loop !6488

for.end:                                          ; preds = %if.then11, %for.cond
  %12 = load i32, ptr %have_datatracks, align 4, !dbg !6492
  %tobool13 = icmp ne i32 %12, 0, !dbg !6492
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6494

if.then14:                                        ; preds = %for.end
  store i32 100, ptr %retval, align 4, !dbg !6495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6495

if.end15:                                         ; preds = %for.end
  %13 = load ptr, ptr %cd, align 8, !dbg !6496
  %xa_flag = getelementptr inbounds %struct.scsi_cd, ptr %13, i32 0, i32 4, !dbg !6498
  %bf.load16 = load i8, ptr %xa_flag, align 8, !dbg !6498
  %bf.lshr17 = lshr i8 %bf.load16, 2, !dbg !6498
  %bf.clear = and i8 %bf.lshr17, 1, !dbg !6498
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6498
  %tobool18 = icmp ne i32 %bf.cast, 0, !dbg !6496
  br i1 %tobool18, label %if.then19, label %if.else, !dbg !6499

if.then19:                                        ; preds = %if.end15
  store i32 103, ptr %retval, align 4, !dbg !6500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6500

if.else:                                          ; preds = %if.end15
  store i32 101, ptr %retval, align 4, !dbg !6501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6501

cleanup:                                          ; preds = %if.else, %if.then19, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %have_datatracks) #15, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 12, ptr %toc_e) #15, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 2, ptr %toc_h) #15, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6502
  %14 = load i32, ptr %retval, align 4, !dbg !6502
  ret i32 %14, !dbg !6502
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sr_read_tochdr(ptr noundef %cdi, ptr noundef %tochdr) #0 align 16 !dbg !6503 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %tochdr.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  %result = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6508, metadata !DIExpression()), !dbg !6515
  store ptr %tochdr, ptr %tochdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tochdr.addr, metadata !6509, metadata !DIExpression()), !dbg !6516
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6517
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6510, metadata !DIExpression()), !dbg !6518
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6519
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6520
  %1 = load ptr, ptr %handle, align 8, !dbg !6520
  store ptr %1, ptr %cd, align 8, !dbg !6518
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !6511, metadata !DIExpression()), !dbg !6522
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6512, metadata !DIExpression()), !dbg !6524
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !6525
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !6513, metadata !DIExpression()), !dbg !6526
  %call = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #17, !dbg !6527
  store ptr %call, ptr %buffer, align 8, !dbg !6528
  %2 = load ptr, ptr %buffer, align 8, !dbg !6529
  %tobool = icmp ne ptr %2, null, !dbg !6529
  br i1 %tobool, label %if.end, label %if.then, !dbg !6531

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6532

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !6533
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !6534
  store i32 30000, ptr %timeout, align 8, !dbg !6535
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6536
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6537
  store i8 67, ptr %arrayidx, align 8, !dbg !6538
  %cmd1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6539
  %arrayidx2 = getelementptr [12 x i8], ptr %cmd1, i64 0, i64 8, !dbg !6540
  store i8 12, ptr %arrayidx2, align 8, !dbg !6541
  %3 = load ptr, ptr %buffer, align 8, !dbg !6542
  %buffer3 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1, !dbg !6543
  store ptr %3, ptr %buffer3, align 8, !dbg !6544
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2, !dbg !6545
  store i32 12, ptr %buflen, align 8, !dbg !6546
  %quiet = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6, !dbg !6547
  store i32 1, ptr %quiet, align 4, !dbg !6548
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !6549
  store i8 2, ptr %data_direction, align 8, !dbg !6550
  %4 = load ptr, ptr %cd, align 8, !dbg !6551
  %call4 = call i32 @sr_do_ioctl(ptr noundef %4, ptr noundef %cgc) #16, !dbg !6552
  store i32 %call4, ptr %result, align 4, !dbg !6553
  %5 = load i32, ptr %result, align 4, !dbg !6554
  %tobool5 = icmp ne i32 %5, 0, !dbg !6554
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6556

if.then6:                                         ; preds = %if.end
  br label %err, !dbg !6557

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %buffer, align 8, !dbg !6558
  %arrayidx8 = getelementptr i8, ptr %6, i64 2, !dbg !6558
  %7 = load i8, ptr %arrayidx8, align 1, !dbg !6558
  %8 = load ptr, ptr %tochdr.addr, align 8, !dbg !6559
  %cdth_trk0 = getelementptr inbounds %struct.cdrom_tochdr, ptr %8, i32 0, i32 0, !dbg !6560
  store i8 %7, ptr %cdth_trk0, align 1, !dbg !6561
  %9 = load ptr, ptr %buffer, align 8, !dbg !6562
  %arrayidx9 = getelementptr i8, ptr %9, i64 3, !dbg !6562
  %10 = load i8, ptr %arrayidx9, align 1, !dbg !6562
  %11 = load ptr, ptr %tochdr.addr, align 8, !dbg !6563
  %cdth_trk1 = getelementptr inbounds %struct.cdrom_tochdr, ptr %11, i32 0, i32 1, !dbg !6564
  store i8 %10, ptr %cdth_trk1, align 1, !dbg !6565
  br label %err, !dbg !6563

err:                                              ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !6514), !dbg !6566
  %12 = load ptr, ptr %buffer, align 8, !dbg !6567
  call void @kfree(ptr noundef %12) #16, !dbg !6568
  %13 = load i32, ptr %result, align 4, !dbg !6569
  store i32 %13, ptr %retval, align 4, !dbg !6570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6570

cleanup:                                          ; preds = %err, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6571
  %14 = load i32, ptr %retval, align 4, !dbg !6571
  ret i32 %14, !dbg !6571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sr_read_tocentry(ptr noundef %cdi, ptr noundef %tocentry) #0 align 16 !dbg !6572 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %tocentry.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  %result = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6577, metadata !DIExpression()), !dbg !6584
  store ptr %tocentry, ptr %tocentry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tocentry.addr, metadata !6578, metadata !DIExpression()), !dbg !6585
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6586
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6579, metadata !DIExpression()), !dbg !6587
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6588
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6589
  %1 = load ptr, ptr %handle, align 8, !dbg !6589
  store ptr %1, ptr %cd, align 8, !dbg !6587
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !6590
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !6580, metadata !DIExpression()), !dbg !6591
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !6592
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6581, metadata !DIExpression()), !dbg !6593
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !6594
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !6582, metadata !DIExpression()), !dbg !6595
  %call = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #17, !dbg !6596
  store ptr %call, ptr %buffer, align 8, !dbg !6597
  %2 = load ptr, ptr %buffer, align 8, !dbg !6598
  %tobool = icmp ne ptr %2, null, !dbg !6598
  br i1 %tobool, label %if.end, label %if.then, !dbg !6600

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6601
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6601

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !6602
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !6603
  store i32 30000, ptr %timeout, align 8, !dbg !6604
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6605
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6606
  store i8 67, ptr %arrayidx, align 8, !dbg !6607
  %3 = load ptr, ptr %tocentry.addr, align 8, !dbg !6608
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, ptr %3, i32 0, i32 2, !dbg !6609
  %4 = load i8, ptr %cdte_format, align 2, !dbg !6609
  %conv = zext i8 %4 to i32, !dbg !6608
  %cmp = icmp eq i32 %conv, 2, !dbg !6610
  %5 = zext i1 %cmp to i64, !dbg !6611
  %cond = select i1 %cmp, i32 2, i32 0, !dbg !6611
  %cmd2 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6612
  %arrayidx3 = getelementptr [12 x i8], ptr %cmd2, i64 0, i64 1, !dbg !6613
  %6 = load i8, ptr %arrayidx3, align 1, !dbg !6614
  %conv4 = zext i8 %6 to i32, !dbg !6614
  %or = or i32 %conv4, %cond, !dbg !6614
  %conv5 = trunc i32 %or to i8, !dbg !6614
  store i8 %conv5, ptr %arrayidx3, align 1, !dbg !6614
  %7 = load ptr, ptr %tocentry.addr, align 8, !dbg !6615
  %cdte_track = getelementptr inbounds %struct.cdrom_tocentry, ptr %7, i32 0, i32 0, !dbg !6616
  %8 = load i8, ptr %cdte_track, align 4, !dbg !6616
  %cmd6 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6617
  %arrayidx7 = getelementptr [12 x i8], ptr %cmd6, i64 0, i64 6, !dbg !6618
  store i8 %8, ptr %arrayidx7, align 2, !dbg !6619
  %cmd8 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6620
  %arrayidx9 = getelementptr [12 x i8], ptr %cmd8, i64 0, i64 8, !dbg !6621
  store i8 12, ptr %arrayidx9, align 8, !dbg !6622
  %9 = load ptr, ptr %buffer, align 8, !dbg !6623
  %buffer10 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1, !dbg !6624
  store ptr %9, ptr %buffer10, align 8, !dbg !6625
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2, !dbg !6626
  store i32 12, ptr %buflen, align 8, !dbg !6627
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !6628
  store i8 2, ptr %data_direction, align 8, !dbg !6629
  %10 = load ptr, ptr %cd, align 8, !dbg !6630
  %call11 = call i32 @sr_do_ioctl(ptr noundef %10, ptr noundef %cgc) #16, !dbg !6631
  store i32 %call11, ptr %result, align 4, !dbg !6632
  %11 = load i32, ptr %result, align 4, !dbg !6633
  %tobool12 = icmp ne i32 %11, 0, !dbg !6633
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6635

if.then13:                                        ; preds = %if.end
  br label %err, !dbg !6636

if.end14:                                         ; preds = %if.end
  %12 = load ptr, ptr %buffer, align 8, !dbg !6637
  %arrayidx15 = getelementptr i8, ptr %12, i64 5, !dbg !6637
  %13 = load i8, ptr %arrayidx15, align 1, !dbg !6637
  %conv16 = zext i8 %13 to i32, !dbg !6637
  %and = and i32 %conv16, 15, !dbg !6638
  %conv17 = trunc i32 %and to i8, !dbg !6637
  %14 = load ptr, ptr %tocentry.addr, align 8, !dbg !6639
  %cdte_ctrl = getelementptr inbounds %struct.cdrom_tocentry, ptr %14, i32 0, i32 1, !dbg !6640
  %bf.load = load i8, ptr %cdte_ctrl, align 1, !dbg !6641
  %bf.value = and i8 %conv17, 15, !dbg !6641
  %bf.shl = shl i8 %bf.value, 4, !dbg !6641
  %bf.clear = and i8 %bf.load, 15, !dbg !6641
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !6641
  store i8 %bf.set, ptr %cdte_ctrl, align 1, !dbg !6641
  %15 = load ptr, ptr %buffer, align 8, !dbg !6642
  %arrayidx18 = getelementptr i8, ptr %15, i64 5, !dbg !6642
  %16 = load i8, ptr %arrayidx18, align 1, !dbg !6642
  %conv19 = zext i8 %16 to i32, !dbg !6642
  %shr = ashr i32 %conv19, 4, !dbg !6643
  %conv20 = trunc i32 %shr to i8, !dbg !6642
  %17 = load ptr, ptr %tocentry.addr, align 8, !dbg !6644
  %cdte_adr = getelementptr inbounds %struct.cdrom_tocentry, ptr %17, i32 0, i32 1, !dbg !6645
  %bf.load21 = load i8, ptr %cdte_adr, align 1, !dbg !6646
  %bf.value22 = and i8 %conv20, 15, !dbg !6646
  %bf.clear23 = and i8 %bf.load21, -16, !dbg !6646
  %bf.set24 = or i8 %bf.clear23, %bf.value22, !dbg !6646
  store i8 %bf.set24, ptr %cdte_adr, align 1, !dbg !6646
  %18 = load ptr, ptr %tocentry.addr, align 8, !dbg !6647
  %cdte_ctrl25 = getelementptr inbounds %struct.cdrom_tocentry, ptr %18, i32 0, i32 1, !dbg !6648
  %bf.load26 = load i8, ptr %cdte_ctrl25, align 1, !dbg !6648
  %bf.lshr = lshr i8 %bf.load26, 4, !dbg !6648
  %conv27 = zext i8 %bf.lshr to i32, !dbg !6647
  %and28 = and i32 %conv27, 4, !dbg !6649
  %tobool29 = icmp ne i32 %and28, 0, !dbg !6650
  %19 = zext i1 %tobool29 to i64, !dbg !6650
  %cond30 = select i1 %tobool29, i32 1, i32 0, !dbg !6650
  %conv31 = trunc i32 %cond30 to i8, !dbg !6650
  %20 = load ptr, ptr %tocentry.addr, align 8, !dbg !6651
  %cdte_datamode = getelementptr inbounds %struct.cdrom_tocentry, ptr %20, i32 0, i32 4, !dbg !6652
  store i8 %conv31, ptr %cdte_datamode, align 4, !dbg !6653
  %21 = load ptr, ptr %tocentry.addr, align 8, !dbg !6654
  %cdte_format32 = getelementptr inbounds %struct.cdrom_tocentry, ptr %21, i32 0, i32 2, !dbg !6656
  %22 = load i8, ptr %cdte_format32, align 2, !dbg !6656
  %conv33 = zext i8 %22 to i32, !dbg !6654
  %cmp34 = icmp eq i32 %conv33, 2, !dbg !6657
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !6658

if.then36:                                        ; preds = %if.end14
  %23 = load ptr, ptr %buffer, align 8, !dbg !6659
  %arrayidx37 = getelementptr i8, ptr %23, i64 9, !dbg !6659
  %24 = load i8, ptr %arrayidx37, align 1, !dbg !6659
  %25 = load ptr, ptr %tocentry.addr, align 8, !dbg !6661
  %cdte_addr = getelementptr inbounds %struct.cdrom_tocentry, ptr %25, i32 0, i32 3, !dbg !6662
  %minute = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr, i32 0, i32 0, !dbg !6663
  store i8 %24, ptr %minute, align 4, !dbg !6664
  %26 = load ptr, ptr %buffer, align 8, !dbg !6665
  %arrayidx38 = getelementptr i8, ptr %26, i64 10, !dbg !6665
  %27 = load i8, ptr %arrayidx38, align 1, !dbg !6665
  %28 = load ptr, ptr %tocentry.addr, align 8, !dbg !6666
  %cdte_addr39 = getelementptr inbounds %struct.cdrom_tocentry, ptr %28, i32 0, i32 3, !dbg !6667
  %second = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr39, i32 0, i32 1, !dbg !6668
  store i8 %27, ptr %second, align 1, !dbg !6669
  %29 = load ptr, ptr %buffer, align 8, !dbg !6670
  %arrayidx40 = getelementptr i8, ptr %29, i64 11, !dbg !6670
  %30 = load i8, ptr %arrayidx40, align 1, !dbg !6670
  %31 = load ptr, ptr %tocentry.addr, align 8, !dbg !6671
  %cdte_addr41 = getelementptr inbounds %struct.cdrom_tocentry, ptr %31, i32 0, i32 3, !dbg !6672
  %frame = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr41, i32 0, i32 2, !dbg !6673
  store i8 %30, ptr %frame, align 2, !dbg !6674
  br label %if.end55, !dbg !6675

if.else:                                          ; preds = %if.end14
  %32 = load ptr, ptr %buffer, align 8, !dbg !6676
  %arrayidx42 = getelementptr i8, ptr %32, i64 8, !dbg !6676
  %33 = load i8, ptr %arrayidx42, align 1, !dbg !6676
  %conv43 = zext i8 %33 to i32, !dbg !6676
  %shl = shl i32 %conv43, 8, !dbg !6677
  %34 = load ptr, ptr %buffer, align 8, !dbg !6678
  %arrayidx44 = getelementptr i8, ptr %34, i64 9, !dbg !6678
  %35 = load i8, ptr %arrayidx44, align 1, !dbg !6678
  %conv45 = zext i8 %35 to i32, !dbg !6678
  %add = add i32 %shl, %conv45, !dbg !6679
  %shl46 = shl i32 %add, 8, !dbg !6680
  %36 = load ptr, ptr %buffer, align 8, !dbg !6681
  %arrayidx47 = getelementptr i8, ptr %36, i64 10, !dbg !6681
  %37 = load i8, ptr %arrayidx47, align 1, !dbg !6681
  %conv48 = zext i8 %37 to i32, !dbg !6681
  %add49 = add i32 %shl46, %conv48, !dbg !6682
  %shl50 = shl i32 %add49, 8, !dbg !6683
  %38 = load ptr, ptr %buffer, align 8, !dbg !6684
  %arrayidx51 = getelementptr i8, ptr %38, i64 11, !dbg !6684
  %39 = load i8, ptr %arrayidx51, align 1, !dbg !6684
  %conv52 = zext i8 %39 to i32, !dbg !6684
  %add53 = add i32 %shl50, %conv52, !dbg !6685
  %40 = load ptr, ptr %tocentry.addr, align 8, !dbg !6686
  %cdte_addr54 = getelementptr inbounds %struct.cdrom_tocentry, ptr %40, i32 0, i32 3, !dbg !6687
  store i32 %add53, ptr %cdte_addr54, align 4, !dbg !6688
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then36
  br label %err, !dbg !6689

err:                                              ; preds = %if.end55, %if.then13
  call void @llvm.dbg.label(metadata !6583), !dbg !6690
  %41 = load ptr, ptr %buffer, align 8, !dbg !6691
  call void @kfree(ptr noundef %41) #16, !dbg !6692
  %42 = load i32, ptr %result, align 4, !dbg !6693
  store i32 %42, ptr %retval, align 4, !dbg !6694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6694

cleanup:                                          ; preds = %err, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !6695
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6695
  %43 = load i32, ptr %retval, align 4, !dbg !6695
  ret i32 %43, !dbg !6695
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_get_last_session(ptr noundef %cdi, ptr noundef %ms_info) #0 align 16 !dbg !6696 {
entry:
  %cdi.addr = alloca ptr, align 8
  %ms_info.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6698, metadata !DIExpression()), !dbg !6701
  store ptr %ms_info, ptr %ms_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ms_info.addr, metadata !6699, metadata !DIExpression()), !dbg !6702
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6703
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6700, metadata !DIExpression()), !dbg !6704
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6705
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6706
  %1 = load ptr, ptr %handle, align 8, !dbg !6706
  store ptr %1, ptr %cd, align 8, !dbg !6704
  %2 = load ptr, ptr %cd, align 8, !dbg !6707
  %ms_offset = getelementptr inbounds %struct.scsi_cd, ptr %2, i32 0, i32 3, !dbg !6708
  %3 = load i64, ptr %ms_offset, align 8, !dbg !6708
  %conv = trunc i64 %3 to i32, !dbg !6707
  %4 = load ptr, ptr %ms_info.addr, align 8, !dbg !6709
  %addr = getelementptr inbounds %struct.cdrom_multisession, ptr %4, i32 0, i32 0, !dbg !6710
  store i32 %conv, ptr %addr, align 4, !dbg !6711
  %5 = load ptr, ptr %cd, align 8, !dbg !6712
  %xa_flag = getelementptr inbounds %struct.scsi_cd, ptr %5, i32 0, i32 4, !dbg !6713
  %bf.load = load i8, ptr %xa_flag, align 8, !dbg !6713
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !6713
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6713
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6713
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6712
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6714

lor.rhs:                                          ; preds = %entry
  %6 = load ptr, ptr %cd, align 8, !dbg !6715
  %ms_offset1 = getelementptr inbounds %struct.scsi_cd, ptr %6, i32 0, i32 3, !dbg !6716
  %7 = load i64, ptr %ms_offset1, align 8, !dbg !6716
  %cmp = icmp ugt i64 %7, 0, !dbg !6717
  br label %lor.end, !dbg !6714

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32, !dbg !6714
  %conv3 = trunc i32 %lor.ext to i8, !dbg !6712
  %9 = load ptr, ptr %ms_info.addr, align 8, !dbg !6718
  %xa_flag4 = getelementptr inbounds %struct.cdrom_multisession, ptr %9, i32 0, i32 1, !dbg !6719
  store i8 %conv3, ptr %xa_flag4, align 4, !dbg !6720
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6721
  ret i32 0, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_get_mcn(ptr noundef %cdi, ptr noundef %mcn) #0 align 16 !dbg !6723 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %mcn.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  %buffer = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6725, metadata !DIExpression()), !dbg !6732
  store ptr %mcn, ptr %mcn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mcn.addr, metadata !6726, metadata !DIExpression()), !dbg !6733
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6734
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6727, metadata !DIExpression()), !dbg !6735
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6736
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6737
  %1 = load ptr, ptr %handle, align 8, !dbg !6737
  store ptr %1, ptr %cd, align 8, !dbg !6735
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !6738
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !6728, metadata !DIExpression()), !dbg !6739
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !6729, metadata !DIExpression()), !dbg !6741
  %call = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #17, !dbg !6742
  store ptr %call, ptr %buffer, align 8, !dbg !6741
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !6743
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6730, metadata !DIExpression()), !dbg !6744
  %2 = load ptr, ptr %buffer, align 8, !dbg !6745
  %tobool = icmp ne ptr %2, null, !dbg !6745
  br i1 %tobool, label %if.end, label %if.then, !dbg !6747

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6748

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !6749
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6750
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6751
  store i8 66, ptr %arrayidx, align 8, !dbg !6752
  %cmd1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6753
  %arrayidx2 = getelementptr [12 x i8], ptr %cmd1, i64 0, i64 2, !dbg !6754
  store i8 64, ptr %arrayidx2, align 2, !dbg !6755
  %cmd3 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6756
  %arrayidx4 = getelementptr [12 x i8], ptr %cmd3, i64 0, i64 3, !dbg !6757
  store i8 2, ptr %arrayidx4, align 1, !dbg !6758
  %cmd5 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6759
  %arrayidx6 = getelementptr [12 x i8], ptr %cmd5, i64 0, i64 8, !dbg !6760
  store i8 24, ptr %arrayidx6, align 8, !dbg !6761
  %3 = load ptr, ptr %buffer, align 8, !dbg !6762
  %buffer7 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1, !dbg !6763
  store ptr %3, ptr %buffer7, align 8, !dbg !6764
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2, !dbg !6765
  store i32 24, ptr %buflen, align 8, !dbg !6766
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !6767
  store i8 2, ptr %data_direction, align 8, !dbg !6768
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !6769
  store i32 30000, ptr %timeout, align 8, !dbg !6770
  %4 = load ptr, ptr %cd, align 8, !dbg !6771
  %call8 = call i32 @sr_do_ioctl(ptr noundef %4, ptr noundef %cgc) #16, !dbg !6772
  store i32 %call8, ptr %result, align 4, !dbg !6773
  %5 = load i32, ptr %result, align 4, !dbg !6774
  %tobool9 = icmp ne i32 %5, 0, !dbg !6774
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6776

if.then10:                                        ; preds = %if.end
  br label %err, !dbg !6777

if.end11:                                         ; preds = %if.end
  %6 = load ptr, ptr %mcn.addr, align 8, !dbg !6778
  %medium_catalog_number = getelementptr inbounds %struct.cdrom_mcn, ptr %6, i32 0, i32 0, !dbg !6779
  %arraydecay = getelementptr inbounds [14 x i8], ptr %medium_catalog_number, i64 0, i64 0, !dbg !6780
  %7 = load ptr, ptr %buffer, align 8, !dbg !6781
  %add.ptr = getelementptr i8, ptr %7, i64 9, !dbg !6782
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %add.ptr, i64 13, i1 false), !dbg !6780
  %8 = load ptr, ptr %mcn.addr, align 8, !dbg !6783
  %medium_catalog_number12 = getelementptr inbounds %struct.cdrom_mcn, ptr %8, i32 0, i32 0, !dbg !6784
  %arrayidx13 = getelementptr [14 x i8], ptr %medium_catalog_number12, i64 0, i64 13, !dbg !6783
  store i8 0, ptr %arrayidx13, align 1, !dbg !6785
  br label %err, !dbg !6783

err:                                              ; preds = %if.end11, %if.then10
  call void @llvm.dbg.label(metadata !6731), !dbg !6786
  %9 = load ptr, ptr %buffer, align 8, !dbg !6787
  call void @kfree(ptr noundef %9) #16, !dbg !6788
  %10 = load i32, ptr %result, align 4, !dbg !6789
  store i32 %10, ptr %retval, align 4, !dbg !6790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6790

cleanup:                                          ; preds = %err, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !6791
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6791
  %11 = load i32, ptr %retval, align 4, !dbg !6791
  ret i32 %11, !dbg !6791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6792 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6796, metadata !DIExpression()), !dbg !6798
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6797, metadata !DIExpression()), !dbg !6799
  %0 = load i64, ptr %size.addr, align 8, !dbg !6800
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6801
  %or = or i32 %1, 256, !dbg !6802
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !6803
  ret ptr %call, !dbg !6804
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6805 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_reset(ptr noundef %cdi) #0 align 16 !dbg !6808 {
entry:
  %cdi.addr = alloca ptr, align 8
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6810, metadata !DIExpression()), !dbg !6811
  ret i32 0, !dbg !6812
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_select_speed(ptr noundef %cdi, i64 noundef %speed) #0 align 16 !dbg !6813 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %speed.addr = alloca i64, align 8
  %cd = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___val349 = alloca i64, align 8
  %__UNIQUE_ID___lo350 = alloca i32, align 4
  %__UNIQUE_ID___hi351 = alloca i32, align 4
  %tmp1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6815, metadata !DIExpression()), !dbg !6824
  store i64 %speed, ptr %speed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !6816, metadata !DIExpression()), !dbg !6825
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6826
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6817, metadata !DIExpression()), !dbg !6827
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6828
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6829
  %1 = load ptr, ptr %handle, align 8, !dbg !6829
  store ptr %1, ptr %cd, align 8, !dbg !6827
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !6830
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !6818, metadata !DIExpression()), !dbg !6831
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val349) #15, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val349, metadata !6819, metadata !DIExpression()), !dbg !6832
  %2 = load i64, ptr %speed.addr, align 8, !dbg !6832
  store i64 %2, ptr %__UNIQUE_ID___val349, align 8, !dbg !6832
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo350) #15, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo350, metadata !6822, metadata !DIExpression()), !dbg !6832
  store i32 0, ptr %__UNIQUE_ID___lo350, align 4, !dbg !6832
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi351) #15, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi351, metadata !6823, metadata !DIExpression()), !dbg !6832
  store i32 370, ptr %__UNIQUE_ID___hi351, align 4, !dbg !6832
  %3 = load i64, ptr %__UNIQUE_ID___val349, align 8, !dbg !6832
  %4 = load i32, ptr %__UNIQUE_ID___hi351, align 4, !dbg !6832
  %conv = sext i32 %4 to i64, !dbg !6832
  %cmp = icmp uge i64 %3, %conv, !dbg !6832
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6832

cond.true:                                        ; preds = %entry
  %5 = load i32, ptr %__UNIQUE_ID___hi351, align 4, !dbg !6832
  %conv3 = sext i32 %5 to i64, !dbg !6832
  br label %cond.end10, !dbg !6832

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___val349, align 8, !dbg !6832
  %7 = load i32, ptr %__UNIQUE_ID___lo350, align 4, !dbg !6832
  %conv4 = sext i32 %7 to i64, !dbg !6832
  %cmp5 = icmp ule i64 %6, %conv4, !dbg !6832
  br i1 %cmp5, label %cond.true7, label %cond.false9, !dbg !6832

cond.true7:                                       ; preds = %cond.false
  %8 = load i32, ptr %__UNIQUE_ID___lo350, align 4, !dbg !6832
  %conv8 = sext i32 %8 to i64, !dbg !6832
  br label %cond.end, !dbg !6832

cond.false9:                                      ; preds = %cond.false
  %9 = load i64, ptr %__UNIQUE_ID___val349, align 8, !dbg !6832
  br label %cond.end, !dbg !6832

cond.end:                                         ; preds = %cond.false9, %cond.true7
  %cond = phi i64 [ %conv8, %cond.true7 ], [ %9, %cond.false9 ], !dbg !6832
  br label %cond.end10, !dbg !6832

cond.end10:                                       ; preds = %cond.end, %cond.true
  %cond11 = phi i64 [ %conv3, %cond.true ], [ %cond, %cond.end ], !dbg !6832
  store i64 %cond11, ptr %tmp1, align 8, !dbg !6832
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi351) #15, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo350) #15, !dbg !6833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val349) #15, !dbg !6833
  %10 = load i64, ptr %tmp1, align 8, !dbg !6832
  store i64 %10, ptr %tmp, align 8, !dbg !6834
  %11 = load i64, ptr %tmp, align 8, !dbg !6833
  store i64 %11, ptr %speed.addr, align 8, !dbg !6835
  %12 = load i64, ptr %speed.addr, align 8, !dbg !6836
  %cmp12 = icmp eq i64 %12, 0, !dbg !6838
  br i1 %cmp12, label %if.then, label %if.else, !dbg !6839

if.then:                                          ; preds = %cond.end10
  store i64 65535, ptr %speed.addr, align 8, !dbg !6840
  br label %if.end, !dbg !6841

if.else:                                          ; preds = %cond.end10
  %13 = load i64, ptr %speed.addr, align 8, !dbg !6842
  %mul = mul i64 %13, 177, !dbg !6842
  store i64 %mul, ptr %speed.addr, align 8, !dbg !6842
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !6843
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6844
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6845
  store i8 -69, ptr %arrayidx, align 8, !dbg !6846
  %14 = load i64, ptr %speed.addr, align 8, !dbg !6847
  %shr = lshr i64 %14, 8, !dbg !6848
  %and = and i64 %shr, 255, !dbg !6849
  %conv14 = trunc i64 %and to i8, !dbg !6850
  %cmd15 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6851
  %arrayidx16 = getelementptr [12 x i8], ptr %cmd15, i64 0, i64 2, !dbg !6852
  store i8 %conv14, ptr %arrayidx16, align 2, !dbg !6853
  %15 = load i64, ptr %speed.addr, align 8, !dbg !6854
  %and17 = and i64 %15, 255, !dbg !6855
  %conv18 = trunc i64 %and17 to i8, !dbg !6854
  %cmd19 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6856
  %arrayidx20 = getelementptr [12 x i8], ptr %cmd19, i64 0, i64 3, !dbg !6857
  store i8 %conv18, ptr %arrayidx20, align 1, !dbg !6858
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !6859
  store i8 3, ptr %data_direction, align 8, !dbg !6860
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !6861
  store i32 30000, ptr %timeout, align 8, !dbg !6862
  %16 = load ptr, ptr %cd, align 8, !dbg !6863
  %call = call i32 @sr_do_ioctl(ptr noundef %16, ptr noundef %cgc) #16, !dbg !6865
  %tobool = icmp ne i32 %call, 0, !dbg !6865
  br i1 %tobool, label %if.then21, label %if.end22, !dbg !6866

if.then21:                                        ; preds = %if.end
  store i32 -5, ptr %retval, align 4, !dbg !6867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6867

if.end22:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6868

cleanup:                                          ; preds = %if.end22, %if.then21
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !6869
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6869
  %17 = load i32, ptr %retval, align 4, !dbg !6869
  ret i32 %17, !dbg !6869
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_audio_ioctl(ptr noundef %cdi, i32 noundef %cmd, ptr noundef %arg) #0 align 16 !dbg !6870 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6872, metadata !DIExpression()), !dbg !6875
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6873, metadata !DIExpression()), !dbg !6876
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6874, metadata !DIExpression()), !dbg !6877
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !6878
  switch i32 %0, label %sw.default [
    i32 21253, label %sw.bb
    i32 21254, label %sw.bb1
    i32 21252, label %sw.bb3
  ], !dbg !6879

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %cdi.addr, align 8, !dbg !6880
  %2 = load ptr, ptr %arg.addr, align 8, !dbg !6882
  %call = call i32 @sr_read_tochdr(ptr noundef %1, ptr noundef %2) #16, !dbg !6883
  store i32 %call, ptr %retval, align 4, !dbg !6884
  br label %return, !dbg !6884

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %cdi.addr, align 8, !dbg !6885
  %4 = load ptr, ptr %arg.addr, align 8, !dbg !6886
  %call2 = call i32 @sr_read_tocentry(ptr noundef %3, ptr noundef %4) #16, !dbg !6887
  store i32 %call2, ptr %retval, align 4, !dbg !6888
  br label %return, !dbg !6888

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %cdi.addr, align 8, !dbg !6889
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !6890
  %call4 = call i32 @sr_play_trkind(ptr noundef %5, ptr noundef %6) #16, !dbg !6891
  store i32 %call4, ptr %retval, align 4, !dbg !6892
  br label %return, !dbg !6892

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6893
  br label %return, !dbg !6893

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %7 = load i32, ptr %retval, align 4, !dbg !6894
  ret i32 %7, !dbg !6894
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sr_play_trkind(ptr noundef %cdi, ptr noundef %ti) #0 align 16 !dbg !6895 {
entry:
  %cdi.addr = alloca ptr, align 8
  %ti.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  %result = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !6906, metadata !DIExpression()), !dbg !6911
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6907, metadata !DIExpression()), !dbg !6912
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #15, !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6908, metadata !DIExpression()), !dbg !6914
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !6915
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %0, i32 0, i32 3, !dbg !6916
  %1 = load ptr, ptr %handle, align 8, !dbg !6916
  store ptr %1, ptr %cd, align 8, !dbg !6914
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !6917
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !6909, metadata !DIExpression()), !dbg !6918
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !6919
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6910, metadata !DIExpression()), !dbg !6920
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !6921
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !6922
  store i32 30000, ptr %timeout, align 8, !dbg !6923
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6924
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !6925
  store i8 72, ptr %arrayidx, align 8, !dbg !6926
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !6927
  %cdti_trk0 = getelementptr inbounds %struct.cdrom_ti, ptr %2, i32 0, i32 0, !dbg !6928
  %3 = load i8, ptr %cdti_trk0, align 1, !dbg !6928
  %cmd1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6929
  %arrayidx2 = getelementptr [12 x i8], ptr %cmd1, i64 0, i64 4, !dbg !6930
  store i8 %3, ptr %arrayidx2, align 4, !dbg !6931
  %4 = load ptr, ptr %ti.addr, align 8, !dbg !6932
  %cdti_ind0 = getelementptr inbounds %struct.cdrom_ti, ptr %4, i32 0, i32 1, !dbg !6933
  %5 = load i8, ptr %cdti_ind0, align 1, !dbg !6933
  %cmd3 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6934
  %arrayidx4 = getelementptr [12 x i8], ptr %cmd3, i64 0, i64 5, !dbg !6935
  store i8 %5, ptr %arrayidx4, align 1, !dbg !6936
  %6 = load ptr, ptr %ti.addr, align 8, !dbg !6937
  %cdti_trk1 = getelementptr inbounds %struct.cdrom_ti, ptr %6, i32 0, i32 2, !dbg !6938
  %7 = load i8, ptr %cdti_trk1, align 1, !dbg !6938
  %cmd5 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6939
  %arrayidx6 = getelementptr [12 x i8], ptr %cmd5, i64 0, i64 7, !dbg !6940
  store i8 %7, ptr %arrayidx6, align 1, !dbg !6941
  %8 = load ptr, ptr %ti.addr, align 8, !dbg !6942
  %cdti_ind1 = getelementptr inbounds %struct.cdrom_ti, ptr %8, i32 0, i32 3, !dbg !6943
  %9 = load i8, ptr %cdti_ind1, align 1, !dbg !6943
  %cmd7 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !6944
  %arrayidx8 = getelementptr [12 x i8], ptr %cmd7, i64 0, i64 8, !dbg !6945
  store i8 %9, ptr %arrayidx8, align 8, !dbg !6946
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !6947
  store i8 3, ptr %data_direction, align 8, !dbg !6948
  %10 = load ptr, ptr %cd, align 8, !dbg !6949
  %call = call i32 @sr_do_ioctl(ptr noundef %10, ptr noundef %cgc) #16, !dbg !6950
  store i32 %call, ptr %result, align 4, !dbg !6951
  %11 = load i32, ptr %result, align 4, !dbg !6952
  %cmp = icmp eq i32 %11, -95, !dbg !6954
  br i1 %cmp, label %if.then, label %if.end, !dbg !6955

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %cdi.addr, align 8, !dbg !6956
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !6957
  %call9 = call i32 @sr_fake_playtrkind(ptr noundef %12, ptr noundef %13) #16, !dbg !6958
  store i32 %call9, ptr %result, align 4, !dbg !6959
  br label %if.end, !dbg !6960

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, ptr %result, align 4, !dbg !6961
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !6962
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !6962
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #15, !dbg !6962
  ret i32 %14, !dbg !6963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sr_is_xa(ptr noundef %cd) #0 align 16 !dbg !6964 {
entry:
  %retval = alloca i32, align 4
  %cd.addr = alloca ptr, align 8
  %raw_sector = alloca ptr, align 8
  %is_xa = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cd, ptr %cd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !6968, metadata !DIExpression()), !dbg !6971
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw_sector) #15, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %raw_sector, metadata !6969, metadata !DIExpression()), !dbg !6973
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_xa) #15, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %is_xa, metadata !6970, metadata !DIExpression()), !dbg !6975
  %0 = load i32, ptr @xa_test, align 4, !dbg !6976
  %tobool = icmp ne i32 %0, 0, !dbg !6976
  br i1 %tobool, label %if.end, label %if.then, !dbg !6978

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6979

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kmalloc(i64 noundef 2048, i32 noundef 3264) #17, !dbg !6980
  store ptr %call, ptr %raw_sector, align 8, !dbg !6981
  %1 = load ptr, ptr %raw_sector, align 8, !dbg !6982
  %tobool1 = icmp ne ptr %1, null, !dbg !6982
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6984

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6985

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %cd.addr, align 8, !dbg !6986
  %3 = load ptr, ptr %cd.addr, align 8, !dbg !6988
  %ms_offset = getelementptr inbounds %struct.scsi_cd, ptr %3, i32 0, i32 3, !dbg !6989
  %4 = load i64, ptr %ms_offset, align 8, !dbg !6989
  %add = add i64 %4, 16, !dbg !6990
  %conv = trunc i64 %add to i32, !dbg !6988
  %5 = load ptr, ptr %raw_sector, align 8, !dbg !6991
  %call4 = call i32 @sr_read_sector(ptr noundef %2, i32 noundef %conv, i32 noundef 2340, ptr noundef %5) #16, !dbg !6992
  %cmp = icmp eq i32 0, %call4, !dbg !6993
  br i1 %cmp, label %if.then6, label %if.else, !dbg !6994

if.then6:                                         ; preds = %if.end3
  %6 = load ptr, ptr %raw_sector, align 8, !dbg !6995
  %arrayidx = getelementptr i8, ptr %6, i64 3, !dbg !6995
  %7 = load i8, ptr %arrayidx, align 1, !dbg !6995
  %conv7 = zext i8 %7 to i32, !dbg !6995
  %cmp8 = icmp eq i32 %conv7, 2, !dbg !6997
  %8 = zext i1 %cmp8 to i64, !dbg !6998
  %cond = select i1 %cmp8, i32 1, i32 0, !dbg !6998
  store i32 %cond, ptr %is_xa, align 4, !dbg !6999
  br label %if.end10, !dbg !7000

if.else:                                          ; preds = %if.end3
  store i32 -1, ptr %is_xa, align 4, !dbg !7001
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %9 = load ptr, ptr %raw_sector, align 8, !dbg !7003
  call void @kfree(ptr noundef %9) #16, !dbg !7004
  %10 = load i32, ptr %is_xa, align 4, !dbg !7005
  store i32 %10, ptr %retval, align 4, !dbg !7006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7006

cleanup:                                          ; preds = %if.end10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_xa) #15, !dbg !7007
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw_sector) #15, !dbg !7007
  %11 = load i32, ptr %retval, align 4, !dbg !7007
  ret i32 %11, !dbg !7007
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !7008 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7010, metadata !DIExpression()), !dbg !7015
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7011, metadata !DIExpression()), !dbg !7016
  %0 = load i64, ptr %size.addr, align 8, !dbg !7017
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7018
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7019

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7020
  %tobool = icmp ne i64 %2, 0, !dbg !7020
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7021

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !7022
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7012, metadata !DIExpression()), !dbg !7023
  %3 = load i64, ptr %size.addr, align 8, !dbg !7024
  %cmp = icmp ugt i64 %3, 8192, !dbg !7026
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7027

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7028
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7029
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !7030
  store ptr %call, ptr %retval, align 8, !dbg !7031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7031

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7032
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !7032
  store i32 %call2, ptr %index, align 4, !dbg !7033
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7034
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7035
  %9 = ptrtoint ptr %8 to i64, !dbg !7035
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !7036
  %idxprom = zext i32 %call3 to i64, !dbg !7037
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7037
  %10 = load i32, ptr %index, align 4, !dbg !7038
  %idxprom4 = zext i32 %10 to i64, !dbg !7037
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7037
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7037
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7039
  %13 = load i64, ptr %size.addr, align 8, !dbg !7040
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !7041
  store ptr %call6, ptr %retval, align 8, !dbg !7042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7042

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !7043
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7044
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7045
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !7046
  store ptr %call8, ptr %retval, align 8, !dbg !7047
  br label %return, !dbg !7047

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7048
  ret ptr %16, !dbg !7048
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sr_read_sector(ptr noundef %cd, i32 noundef %lba, i32 noundef %blksize, ptr noundef %dest) #0 align 16 !dbg !7049 {
entry:
  %retval = alloca i32, align 4
  %cd.addr = alloca ptr, align 8
  %lba.addr = alloca i32, align 4
  %blksize.addr = alloca i32, align 4
  %dest.addr = alloca ptr, align 8
  %cgc = alloca %struct.packet_command, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cd, ptr %cd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !7053, metadata !DIExpression()), !dbg !7059
  store i32 %lba, ptr %lba.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lba.addr, metadata !7054, metadata !DIExpression()), !dbg !7060
  store i32 %blksize, ptr %blksize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blksize.addr, metadata !7055, metadata !DIExpression()), !dbg !7061
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !7056, metadata !DIExpression()), !dbg !7062
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !7063
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !7057, metadata !DIExpression()), !dbg !7064
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !7065
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !7058, metadata !DIExpression()), !dbg !7066
  %0 = load ptr, ptr %cd.addr, align 8, !dbg !7067
  %readcd_known = getelementptr inbounds %struct.scsi_cd, ptr %0, i32 0, i32 4, !dbg !7069
  %bf.load = load i8, ptr %readcd_known, align 8, !dbg !7069
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !7069
  %bf.clear = and i8 %bf.lshr, 1, !dbg !7069
  %bf.cast = zext i8 %bf.clear to i32, !dbg !7069
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !7067
  br i1 %tobool, label %if.then, label %if.end5, !dbg !7070

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cd.addr, align 8, !dbg !7071
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !7073
  %3 = load i32, ptr %lba.addr, align 4, !dbg !7074
  %4 = load i32, ptr %blksize.addr, align 4, !dbg !7075
  %call = call i32 @sr_read_cd(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef %4) #16, !dbg !7076
  store i32 %call, ptr %rc, align 4, !dbg !7077
  %5 = load i32, ptr %rc, align 4, !dbg !7078
  %cmp = icmp ne i32 -95, %5, !dbg !7080
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7081

if.then1:                                         ; preds = %if.then
  %6 = load i32, ptr %rc, align 4, !dbg !7082
  store i32 %6, ptr %retval, align 4, !dbg !7083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7083

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %cd.addr, align 8, !dbg !7084
  %readcd_known2 = getelementptr inbounds %struct.scsi_cd, ptr %7, i32 0, i32 4, !dbg !7085
  %bf.load3 = load i8, ptr %readcd_known2, align 8, !dbg !7086
  %bf.clear4 = and i8 %bf.load3, -9, !dbg !7086
  %bf.set = or i8 %bf.clear4, 0, !dbg !7086
  store i8 %bf.set, ptr %readcd_known2, align 8, !dbg !7086
  %8 = load ptr, ptr %cd.addr, align 8, !dbg !7087
  %device = getelementptr inbounds %struct.scsi_cd, ptr %8, i32 0, i32 1, !dbg !7087
  %9 = load ptr, ptr %device, align 8, !dbg !7087
  %10 = load ptr, ptr %cd.addr, align 8, !dbg !7087
  %cdi = getelementptr inbounds %struct.scsi_cd, ptr %10, i32 0, i32 7, !dbg !7087
  %name = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 11, !dbg !7087
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0, !dbg !7087
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef @.str, ptr noundef %9, ptr noundef %arraydecay, ptr noundef @.str.5) #16, !dbg !7087
  br label %if.end5, !dbg !7088

if.end5:                                          ; preds = %if.end, %entry
  %11 = load i32, ptr %blksize.addr, align 4, !dbg !7089
  %12 = load ptr, ptr %cd.addr, align 8, !dbg !7091
  %device6 = getelementptr inbounds %struct.scsi_cd, ptr %12, i32 0, i32 1, !dbg !7092
  %13 = load ptr, ptr %device6, align 8, !dbg !7092
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 21, !dbg !7093
  %14 = load i32, ptr %sector_size, align 4, !dbg !7093
  %cmp7 = icmp ne i32 %11, %14, !dbg !7094
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !7095

if.then8:                                         ; preds = %if.end5
  %15 = load ptr, ptr %cd.addr, align 8, !dbg !7096
  %16 = load i32, ptr %blksize.addr, align 4, !dbg !7099
  %call9 = call i32 @sr_set_blocklength(ptr noundef %15, i32 noundef %16) #16, !dbg !7100
  store i32 %call9, ptr %rc, align 4, !dbg !7101
  %cmp10 = icmp ne i32 0, %call9, !dbg !7102
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !7103

if.then11:                                        ; preds = %if.then8
  %17 = load i32, ptr %rc, align 4, !dbg !7104
  store i32 %17, ptr %retval, align 4, !dbg !7105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7105

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !7106

if.end13:                                         ; preds = %if.end12, %if.end5
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !7107
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7108
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !7109
  store i8 40, ptr %arrayidx, align 8, !dbg !7110
  %18 = load i32, ptr %lba.addr, align 4, !dbg !7111
  %shr = ashr i32 %18, 24, !dbg !7112
  %conv = trunc i32 %shr to i8, !dbg !7113
  %conv14 = zext i8 %conv to i32, !dbg !7113
  %and = and i32 %conv14, 255, !dbg !7114
  %conv15 = trunc i32 %and to i8, !dbg !7113
  %cmd16 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7115
  %arrayidx17 = getelementptr [12 x i8], ptr %cmd16, i64 0, i64 2, !dbg !7116
  store i8 %conv15, ptr %arrayidx17, align 2, !dbg !7117
  %19 = load i32, ptr %lba.addr, align 4, !dbg !7118
  %shr18 = ashr i32 %19, 16, !dbg !7119
  %conv19 = trunc i32 %shr18 to i8, !dbg !7120
  %conv20 = zext i8 %conv19 to i32, !dbg !7120
  %and21 = and i32 %conv20, 255, !dbg !7121
  %conv22 = trunc i32 %and21 to i8, !dbg !7120
  %cmd23 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7122
  %arrayidx24 = getelementptr [12 x i8], ptr %cmd23, i64 0, i64 3, !dbg !7123
  store i8 %conv22, ptr %arrayidx24, align 1, !dbg !7124
  %20 = load i32, ptr %lba.addr, align 4, !dbg !7125
  %shr25 = ashr i32 %20, 8, !dbg !7126
  %conv26 = trunc i32 %shr25 to i8, !dbg !7127
  %conv27 = zext i8 %conv26 to i32, !dbg !7127
  %and28 = and i32 %conv27, 255, !dbg !7128
  %conv29 = trunc i32 %and28 to i8, !dbg !7127
  %cmd30 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7129
  %arrayidx31 = getelementptr [12 x i8], ptr %cmd30, i64 0, i64 4, !dbg !7130
  store i8 %conv29, ptr %arrayidx31, align 4, !dbg !7131
  %21 = load i32, ptr %lba.addr, align 4, !dbg !7132
  %conv32 = trunc i32 %21 to i8, !dbg !7133
  %conv33 = zext i8 %conv32 to i32, !dbg !7133
  %and34 = and i32 %conv33, 255, !dbg !7134
  %conv35 = trunc i32 %and34 to i8, !dbg !7133
  %cmd36 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7135
  %arrayidx37 = getelementptr [12 x i8], ptr %cmd36, i64 0, i64 5, !dbg !7136
  store i8 %conv35, ptr %arrayidx37, align 1, !dbg !7137
  %cmd38 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7138
  %arrayidx39 = getelementptr [12 x i8], ptr %cmd38, i64 0, i64 8, !dbg !7139
  store i8 1, ptr %arrayidx39, align 8, !dbg !7140
  %22 = load ptr, ptr %dest.addr, align 8, !dbg !7141
  %buffer = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1, !dbg !7142
  store ptr %22, ptr %buffer, align 8, !dbg !7143
  %23 = load i32, ptr %blksize.addr, align 4, !dbg !7144
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2, !dbg !7145
  store i32 %23, ptr %buflen, align 8, !dbg !7146
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !7147
  store i8 2, ptr %data_direction, align 8, !dbg !7148
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !7149
  store i32 30000, ptr %timeout, align 8, !dbg !7150
  %24 = load ptr, ptr %cd.addr, align 8, !dbg !7151
  %call40 = call i32 @sr_do_ioctl(ptr noundef %24, ptr noundef %cgc) #16, !dbg !7152
  store i32 %call40, ptr %rc, align 4, !dbg !7153
  %25 = load i32, ptr %blksize.addr, align 4, !dbg !7154
  %cmp41 = icmp ne i32 %25, 2048, !dbg !7156
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !7157

if.then43:                                        ; preds = %if.end13
  %26 = load ptr, ptr %cd.addr, align 8, !dbg !7158
  %call44 = call i32 @sr_set_blocklength(ptr noundef %26, i32 noundef 2048) #16, !dbg !7159
  %27 = load i32, ptr %rc, align 4, !dbg !7160
  %or = or i32 %27, %call44, !dbg !7160
  store i32 %or, ptr %rc, align 4, !dbg !7160
  br label %if.end45, !dbg !7161

if.end45:                                         ; preds = %if.then43, %if.end13
  %28 = load i32, ptr %rc, align 4, !dbg !7162
  store i32 %28, ptr %retval, align 4, !dbg !7163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7163

cleanup:                                          ; preds = %if.end45, %if.then11, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !7164
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !7164
  %29 = load i32, ptr %retval, align 4, !dbg !7164
  ret i32 %29, !dbg !7164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7165 dso_local void @msleep(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sr_fake_playtrkind(ptr noundef %cdi, ptr noundef %ti) #0 align 16 !dbg !7166 {
entry:
  %retval = alloca i32, align 4
  %cdi.addr = alloca ptr, align 8
  %ti.addr = alloca ptr, align 8
  %trk0_te = alloca %struct.cdrom_tocentry, align 4
  %trk1_te = alloca %struct.cdrom_tocentry, align 4
  %tochdr = alloca %struct.cdrom_tochdr, align 1
  %cgc = alloca %struct.packet_command, align 8
  %ntracks = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdi, ptr %cdi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdi.addr, metadata !7168, metadata !DIExpression()), !dbg !7176
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !7169, metadata !DIExpression()), !dbg !7177
  call void @llvm.lifetime.start.p0(i64 12, ptr %trk0_te) #15, !dbg !7178
  call void @llvm.dbg.declare(metadata ptr %trk0_te, metadata !7170, metadata !DIExpression()), !dbg !7179
  call void @llvm.lifetime.start.p0(i64 12, ptr %trk1_te) #15, !dbg !7178
  call void @llvm.dbg.declare(metadata ptr %trk1_te, metadata !7171, metadata !DIExpression()), !dbg !7180
  call void @llvm.lifetime.start.p0(i64 2, ptr %tochdr) #15, !dbg !7181
  call void @llvm.dbg.declare(metadata ptr %tochdr, metadata !7172, metadata !DIExpression()), !dbg !7182
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !7183
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !7173, metadata !DIExpression()), !dbg !7184
  call void @llvm.lifetime.start.p0(i64 4, ptr %ntracks) #15, !dbg !7185
  call void @llvm.dbg.declare(metadata ptr %ntracks, metadata !7174, metadata !DIExpression()), !dbg !7186
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !7185
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7175, metadata !DIExpression()), !dbg !7187
  %0 = load ptr, ptr %cdi.addr, align 8, !dbg !7188
  %call = call i32 @sr_read_tochdr(ptr noundef %0, ptr noundef %tochdr) #16, !dbg !7189
  store i32 %call, ptr %ret, align 4, !dbg !7190
  %1 = load i32, ptr %ret, align 4, !dbg !7191
  %tobool = icmp ne i32 %1, 0, !dbg !7191
  br i1 %tobool, label %if.then, label %if.end, !dbg !7193

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !7194
  store i32 %2, ptr %retval, align 4, !dbg !7195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7195

if.end:                                           ; preds = %entry
  %cdth_trk1 = getelementptr inbounds %struct.cdrom_tochdr, ptr %tochdr, i32 0, i32 1, !dbg !7196
  %3 = load i8, ptr %cdth_trk1, align 1, !dbg !7196
  %conv = zext i8 %3 to i32, !dbg !7197
  %cdth_trk0 = getelementptr inbounds %struct.cdrom_tochdr, ptr %tochdr, i32 0, i32 0, !dbg !7198
  %4 = load i8, ptr %cdth_trk0, align 1, !dbg !7198
  %conv1 = zext i8 %4 to i32, !dbg !7199
  %sub = sub i32 %conv, %conv1, !dbg !7200
  %add = add i32 %sub, 1, !dbg !7201
  store i32 %add, ptr %ntracks, align 4, !dbg !7202
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !7203
  %cdti_trk1 = getelementptr inbounds %struct.cdrom_ti, ptr %5, i32 0, i32 2, !dbg !7205
  %6 = load i8, ptr %cdti_trk1, align 1, !dbg !7205
  %conv2 = zext i8 %6 to i32, !dbg !7203
  %7 = load i32, ptr %ntracks, align 4, !dbg !7206
  %cmp = icmp eq i32 %conv2, %7, !dbg !7207
  br i1 %cmp, label %if.then4, label %if.else, !dbg !7208

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %ti.addr, align 8, !dbg !7209
  %cdti_trk15 = getelementptr inbounds %struct.cdrom_ti, ptr %8, i32 0, i32 2, !dbg !7210
  store i8 -86, ptr %cdti_trk15, align 1, !dbg !7211
  br label %if.end13, !dbg !7209

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %ti.addr, align 8, !dbg !7212
  %cdti_trk16 = getelementptr inbounds %struct.cdrom_ti, ptr %9, i32 0, i32 2, !dbg !7214
  %10 = load i8, ptr %cdti_trk16, align 1, !dbg !7214
  %conv7 = zext i8 %10 to i32, !dbg !7212
  %cmp8 = icmp ne i32 %conv7, 170, !dbg !7215
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !7216

if.then10:                                        ; preds = %if.else
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !7217
  %cdti_trk111 = getelementptr inbounds %struct.cdrom_ti, ptr %11, i32 0, i32 2, !dbg !7218
  %12 = load i8, ptr %cdti_trk111, align 1, !dbg !7219
  %inc = add i8 %12, 1, !dbg !7219
  store i8 %inc, ptr %cdti_trk111, align 1, !dbg !7219
  br label %if.end12, !dbg !7217

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then4
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !7220
  %cdti_trk0 = getelementptr inbounds %struct.cdrom_ti, ptr %13, i32 0, i32 0, !dbg !7221
  %14 = load i8, ptr %cdti_trk0, align 1, !dbg !7221
  %cdte_track = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te, i32 0, i32 0, !dbg !7222
  store i8 %14, ptr %cdte_track, align 4, !dbg !7223
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te, i32 0, i32 2, !dbg !7224
  store i8 2, ptr %cdte_format, align 2, !dbg !7225
  %15 = load ptr, ptr %ti.addr, align 8, !dbg !7226
  %cdti_trk114 = getelementptr inbounds %struct.cdrom_ti, ptr %15, i32 0, i32 2, !dbg !7227
  %16 = load i8, ptr %cdti_trk114, align 1, !dbg !7227
  %cdte_track15 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te, i32 0, i32 0, !dbg !7228
  store i8 %16, ptr %cdte_track15, align 4, !dbg !7229
  %cdte_format16 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te, i32 0, i32 2, !dbg !7230
  store i8 2, ptr %cdte_format16, align 2, !dbg !7231
  %17 = load ptr, ptr %cdi.addr, align 8, !dbg !7232
  %call17 = call i32 @sr_read_tocentry(ptr noundef %17, ptr noundef %trk0_te) #16, !dbg !7233
  store i32 %call17, ptr %ret, align 4, !dbg !7234
  %18 = load i32, ptr %ret, align 4, !dbg !7235
  %tobool18 = icmp ne i32 %18, 0, !dbg !7235
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !7237

if.then19:                                        ; preds = %if.end13
  %19 = load i32, ptr %ret, align 4, !dbg !7238
  store i32 %19, ptr %retval, align 4, !dbg !7239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7239

if.end20:                                         ; preds = %if.end13
  %20 = load ptr, ptr %cdi.addr, align 8, !dbg !7240
  %call21 = call i32 @sr_read_tocentry(ptr noundef %20, ptr noundef %trk1_te) #16, !dbg !7241
  store i32 %call21, ptr %ret, align 4, !dbg !7242
  %21 = load i32, ptr %ret, align 4, !dbg !7243
  %tobool22 = icmp ne i32 %21, 0, !dbg !7243
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !7245

if.then23:                                        ; preds = %if.end20
  %22 = load i32, ptr %ret, align 4, !dbg !7246
  store i32 %22, ptr %retval, align 4, !dbg !7247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7247

if.end24:                                         ; preds = %if.end20
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !7248
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7249
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !7250
  store i8 71, ptr %arrayidx, align 8, !dbg !7251
  %cdte_addr = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te, i32 0, i32 3, !dbg !7252
  %minute = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr, i32 0, i32 0, !dbg !7253
  %23 = load i8, ptr %minute, align 4, !dbg !7253
  %cmd25 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7254
  %arrayidx26 = getelementptr [12 x i8], ptr %cmd25, i64 0, i64 3, !dbg !7255
  store i8 %23, ptr %arrayidx26, align 1, !dbg !7256
  %cdte_addr27 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te, i32 0, i32 3, !dbg !7257
  %second = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr27, i32 0, i32 1, !dbg !7258
  %24 = load i8, ptr %second, align 1, !dbg !7258
  %cmd28 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7259
  %arrayidx29 = getelementptr [12 x i8], ptr %cmd28, i64 0, i64 4, !dbg !7260
  store i8 %24, ptr %arrayidx29, align 4, !dbg !7261
  %cdte_addr30 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te, i32 0, i32 3, !dbg !7262
  %frame = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr30, i32 0, i32 2, !dbg !7263
  %25 = load i8, ptr %frame, align 2, !dbg !7263
  %cmd31 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7264
  %arrayidx32 = getelementptr [12 x i8], ptr %cmd31, i64 0, i64 5, !dbg !7265
  store i8 %25, ptr %arrayidx32, align 1, !dbg !7266
  %cdte_addr33 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te, i32 0, i32 3, !dbg !7267
  %minute34 = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr33, i32 0, i32 0, !dbg !7268
  %26 = load i8, ptr %minute34, align 4, !dbg !7268
  %cmd35 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7269
  %arrayidx36 = getelementptr [12 x i8], ptr %cmd35, i64 0, i64 6, !dbg !7270
  store i8 %26, ptr %arrayidx36, align 2, !dbg !7271
  %cdte_addr37 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te, i32 0, i32 3, !dbg !7272
  %second38 = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr37, i32 0, i32 1, !dbg !7273
  %27 = load i8, ptr %second38, align 1, !dbg !7273
  %cmd39 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7274
  %arrayidx40 = getelementptr [12 x i8], ptr %cmd39, i64 0, i64 7, !dbg !7275
  store i8 %27, ptr %arrayidx40, align 1, !dbg !7276
  %cdte_addr41 = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te, i32 0, i32 3, !dbg !7277
  %frame42 = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr41, i32 0, i32 2, !dbg !7278
  %28 = load i8, ptr %frame42, align 2, !dbg !7278
  %cmd43 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7279
  %arrayidx44 = getelementptr [12 x i8], ptr %cmd43, i64 0, i64 8, !dbg !7280
  store i8 %28, ptr %arrayidx44, align 8, !dbg !7281
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !7282
  store i8 3, ptr %data_direction, align 8, !dbg !7283
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !7284
  store i32 30000, ptr %timeout, align 8, !dbg !7285
  %29 = load ptr, ptr %cdi.addr, align 8, !dbg !7286
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %29, i32 0, i32 3, !dbg !7287
  %30 = load ptr, ptr %handle, align 8, !dbg !7287
  %call45 = call i32 @sr_do_ioctl(ptr noundef %30, ptr noundef %cgc) #16, !dbg !7288
  store i32 %call45, ptr %retval, align 4, !dbg !7289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7289

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !7290
  call void @llvm.lifetime.end.p0(i64 4, ptr %ntracks) #15, !dbg !7290
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !7290
  call void @llvm.lifetime.end.p0(i64 2, ptr %tochdr) #15, !dbg !7290
  call void @llvm.lifetime.end.p0(i64 12, ptr %trk1_te) #15, !dbg !7290
  call void @llvm.lifetime.end.p0(i64 12, ptr %trk0_te) #15, !dbg !7290
  %31 = load i32, ptr %retval, align 4, !dbg !7290
  ret i32 %31, !dbg !7290
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7291 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !7292 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7296, metadata !DIExpression()), !dbg !7298
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7297, metadata !DIExpression()), !dbg !7299
  %0 = load i64, ptr %size.addr, align 8, !dbg !7300
  %tobool = icmp ne i64 %0, 0, !dbg !7300
  br i1 %tobool, label %if.end, label %if.then, !dbg !7302

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7303
  br label %return, !dbg !7303

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7304
  %cmp = icmp ule i64 %1, 8, !dbg !7306
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7307

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7308
  br label %return, !dbg !7308

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7309
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7311
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7312

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7313
  %cmp4 = icmp ule i64 %3, 96, !dbg !7314
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7315

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7316
  br label %return, !dbg !7316

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7317
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7319
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7320

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7321
  %cmp9 = icmp ule i64 %5, 192, !dbg !7322
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7323

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7324
  br label %return, !dbg !7324

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7325
  %cmp12 = icmp ule i64 %6, 8, !dbg !7327
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7328

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7329
  br label %return, !dbg !7329

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7330
  %cmp15 = icmp ule i64 %7, 16, !dbg !7332
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7333

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7334
  br label %return, !dbg !7334

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7335
  %cmp18 = icmp ule i64 %8, 32, !dbg !7337
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7338

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7339
  br label %return, !dbg !7339

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7340
  %cmp21 = icmp ule i64 %9, 64, !dbg !7342
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7343

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7344
  br label %return, !dbg !7344

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7345
  %cmp24 = icmp ule i64 %10, 128, !dbg !7347
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7348

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7349
  br label %return, !dbg !7349

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7350
  %cmp27 = icmp ule i64 %11, 256, !dbg !7352
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7353

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7354
  br label %return, !dbg !7354

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7355
  %cmp30 = icmp ule i64 %12, 512, !dbg !7357
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7358

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7359
  br label %return, !dbg !7359

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7360
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7362
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7363

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7364
  br label %return, !dbg !7364

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7365
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7367
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7368

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7369
  br label %return, !dbg !7369

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7370
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7372
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7373

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7374
  br label %return, !dbg !7374

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7375
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7377
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7378

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7379
  br label %return, !dbg !7379

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7380
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7382
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7383

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7384
  br label %return, !dbg !7384

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7385
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7387
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7388

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7389
  br label %return, !dbg !7389

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7390
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7392
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7393

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7394
  br label %return, !dbg !7394

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7395
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7397
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7398

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7399
  br label %return, !dbg !7399

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7400
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7402
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7403

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7404
  br label %return, !dbg !7404

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7405
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7407
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7408

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7409
  br label %return, !dbg !7409

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7410
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7412
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7413

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7414
  br label %return, !dbg !7414

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7415
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7417
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7418

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7419
  br label %return, !dbg !7419

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7420, !range !7422, !noundef !654
  %tobool69 = trunc i8 %25 to i1, !dbg !7420
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7423

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7424

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #19, !dbg !7425, !srcloc !7428
  unreachable, !dbg !7425

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7429

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7430

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7431

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7433

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7431

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #15, !dbg !7435, !srcloc !7437
  br label %do.end75, !dbg !7435

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7431

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7438
  br label %return, !dbg !7438

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7439
  ret i32 %26, !dbg !7439
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7440 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !7443 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7447, metadata !DIExpression()), !dbg !7449
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7448, metadata !DIExpression()), !dbg !7450
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7451
  %and = and i32 %0, 17, !dbg !7451
  %cmp = icmp eq i32 %and, 0, !dbg !7451
  %lnot = xor i1 %cmp, true, !dbg !7451
  %lnot1 = xor i1 %lnot, true, !dbg !7451
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7451
  %conv = sext i32 %lnot.ext to i64, !dbg !7451
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7451
  %tobool = icmp ne i64 %expval, 0, !dbg !7451
  br i1 %tobool, label %if.then, label %if.end, !dbg !7453

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7454
  br label %return, !dbg !7454

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7455
  %and2 = and i32 %1, 1, !dbg !7457
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7457
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7458

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7459
  br label %return, !dbg !7459

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7460
  br label %return, !dbg !7460

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7462
  ret i32 %2, !dbg !7462
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7463 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7464 dso_local void @__compiletime_assert_206() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sr_read_cd(ptr noundef %cd, ptr noundef %dest, i32 noundef %lba, i32 noundef %format, i32 noundef %blksize) #0 align 16 !dbg !7465 {
entry:
  %cd.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %lba.addr = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %blksize.addr = alloca i32, align 4
  %cgc = alloca %struct.packet_command, align 8
  store ptr %cd, ptr %cd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !7469, metadata !DIExpression()), !dbg !7475
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !7470, metadata !DIExpression()), !dbg !7476
  store i32 %lba, ptr %lba.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lba.addr, metadata !7471, metadata !DIExpression()), !dbg !7477
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !7472, metadata !DIExpression()), !dbg !7478
  store i32 %blksize, ptr %blksize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blksize.addr, metadata !7473, metadata !DIExpression()), !dbg !7479
  call void @llvm.lifetime.start.p0(i64 64, ptr %cgc) #15, !dbg !7480
  call void @llvm.dbg.declare(metadata ptr %cgc, metadata !7474, metadata !DIExpression()), !dbg !7481
  call void @llvm.memset.p0.i64(ptr align 8 %cgc, i8 0, i64 64, i1 false), !dbg !7482
  %cmd = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7483
  %arrayidx = getelementptr [12 x i8], ptr %cmd, i64 0, i64 0, !dbg !7484
  store i8 -66, ptr %arrayidx, align 8, !dbg !7485
  %0 = load i32, ptr %format.addr, align 4, !dbg !7486
  %and = and i32 %0, 7, !dbg !7487
  %shl = shl i32 %and, 2, !dbg !7488
  %conv = trunc i32 %shl to i8, !dbg !7489
  %cmd1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7490
  %arrayidx2 = getelementptr [12 x i8], ptr %cmd1, i64 0, i64 1, !dbg !7491
  store i8 %conv, ptr %arrayidx2, align 1, !dbg !7492
  %1 = load i32, ptr %lba.addr, align 4, !dbg !7493
  %shr = ashr i32 %1, 24, !dbg !7494
  %conv3 = trunc i32 %shr to i8, !dbg !7495
  %conv4 = zext i8 %conv3 to i32, !dbg !7495
  %and5 = and i32 %conv4, 255, !dbg !7496
  %conv6 = trunc i32 %and5 to i8, !dbg !7495
  %cmd7 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7497
  %arrayidx8 = getelementptr [12 x i8], ptr %cmd7, i64 0, i64 2, !dbg !7498
  store i8 %conv6, ptr %arrayidx8, align 2, !dbg !7499
  %2 = load i32, ptr %lba.addr, align 4, !dbg !7500
  %shr9 = ashr i32 %2, 16, !dbg !7501
  %conv10 = trunc i32 %shr9 to i8, !dbg !7502
  %conv11 = zext i8 %conv10 to i32, !dbg !7502
  %and12 = and i32 %conv11, 255, !dbg !7503
  %conv13 = trunc i32 %and12 to i8, !dbg !7502
  %cmd14 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7504
  %arrayidx15 = getelementptr [12 x i8], ptr %cmd14, i64 0, i64 3, !dbg !7505
  store i8 %conv13, ptr %arrayidx15, align 1, !dbg !7506
  %3 = load i32, ptr %lba.addr, align 4, !dbg !7507
  %shr16 = ashr i32 %3, 8, !dbg !7508
  %conv17 = trunc i32 %shr16 to i8, !dbg !7509
  %conv18 = zext i8 %conv17 to i32, !dbg !7509
  %and19 = and i32 %conv18, 255, !dbg !7510
  %conv20 = trunc i32 %and19 to i8, !dbg !7509
  %cmd21 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7511
  %arrayidx22 = getelementptr [12 x i8], ptr %cmd21, i64 0, i64 4, !dbg !7512
  store i8 %conv20, ptr %arrayidx22, align 4, !dbg !7513
  %4 = load i32, ptr %lba.addr, align 4, !dbg !7514
  %conv23 = trunc i32 %4 to i8, !dbg !7515
  %conv24 = zext i8 %conv23 to i32, !dbg !7515
  %and25 = and i32 %conv24, 255, !dbg !7516
  %conv26 = trunc i32 %and25 to i8, !dbg !7515
  %cmd27 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7517
  %arrayidx28 = getelementptr [12 x i8], ptr %cmd27, i64 0, i64 5, !dbg !7518
  store i8 %conv26, ptr %arrayidx28, align 1, !dbg !7519
  %cmd29 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7520
  %arrayidx30 = getelementptr [12 x i8], ptr %cmd29, i64 0, i64 8, !dbg !7521
  store i8 1, ptr %arrayidx30, align 8, !dbg !7522
  %5 = load i32, ptr %blksize.addr, align 4, !dbg !7523
  switch i32 %5, label %sw.default [
    i32 2336, label %sw.bb
    i32 2340, label %sw.bb33
    i32 2352, label %sw.bb36
  ], !dbg !7524

sw.bb:                                            ; preds = %entry
  %cmd31 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7525
  %arrayidx32 = getelementptr [12 x i8], ptr %cmd31, i64 0, i64 9, !dbg !7527
  store i8 88, ptr %arrayidx32, align 1, !dbg !7528
  br label %sw.epilog, !dbg !7529

sw.bb33:                                          ; preds = %entry
  %cmd34 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7530
  %arrayidx35 = getelementptr [12 x i8], ptr %cmd34, i64 0, i64 9, !dbg !7531
  store i8 120, ptr %arrayidx35, align 1, !dbg !7532
  br label %sw.epilog, !dbg !7533

sw.bb36:                                          ; preds = %entry
  %cmd37 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7534
  %arrayidx38 = getelementptr [12 x i8], ptr %cmd37, i64 0, i64 9, !dbg !7535
  store i8 -8, ptr %arrayidx38, align 1, !dbg !7536
  br label %sw.epilog, !dbg !7537

sw.default:                                       ; preds = %entry
  %cmd39 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 0, !dbg !7538
  %arrayidx40 = getelementptr [12 x i8], ptr %cmd39, i64 0, i64 9, !dbg !7539
  store i8 16, ptr %arrayidx40, align 1, !dbg !7540
  br label %sw.epilog, !dbg !7541

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb33, %sw.bb
  %6 = load ptr, ptr %dest.addr, align 8, !dbg !7542
  %buffer = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1, !dbg !7543
  store ptr %6, ptr %buffer, align 8, !dbg !7544
  %7 = load i32, ptr %blksize.addr, align 4, !dbg !7545
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2, !dbg !7546
  store i32 %7, ptr %buflen, align 8, !dbg !7547
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5, !dbg !7548
  store i8 2, ptr %data_direction, align 8, !dbg !7549
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7, !dbg !7550
  store i32 30000, ptr %timeout, align 8, !dbg !7551
  %8 = load ptr, ptr %cd.addr, align 8, !dbg !7552
  %call = call i32 @sr_do_ioctl(ptr noundef %8, ptr noundef %cgc) #16, !dbg !7553
  call void @llvm.lifetime.end.p0(i64 64, ptr %cgc) #15, !dbg !7554
  ret i32 %call, !dbg !7555
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7556 dso_local i32 @sr_set_blocklength(ptr noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601}
!llvm.ident = !{!5602}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_xa_test", scope: !2, file: !3, line: 34, type: !5591, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/scsi/.sr_ioctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/scsi/sr_mod\22 -D KBUILD_BASENAME=\22sr_ioctl\22 -D KBUILD_MODNAME=\22sr_mod\22 -D __KBUILD_MODNAME=kmod_sr_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/scsi/sr_ioctl.ll drivers/scsi/sr_ioctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !265, globals: !5553, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/scsi/sr_ioctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a46c86d6276daceb7d8a03911f2cdbd6")
!4 = !{!5, !13, !18, !26, !34, !50, !55, !61, !68, !73, !81, !89, !95, !104, !109, !114, !120, !126, !130, !135, !140, !144, !150, !156, !163, !170, !177, !184, !192, !198, !207, !218, !236, !241, !255}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !51, line: 276, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!54 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !56, line: 45, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!59 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!60 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !62, line: 487, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!65 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!66 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!67 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !69, line: 65, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!72 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 620, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 597, baseType: !82, size: 32, elements: !83)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !{!84, !85, !86, !87, !88}
!84 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!85 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!86 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!87 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!88 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !90, line: 26, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!93 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!94 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !62, line: 547, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103}
!97 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!98 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!99 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!100 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!101 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!102 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!103 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !62, line: 564, baseType: !7, size: 32, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!107 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!108 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !62, line: 577, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!112 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!113 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !62, line: 503, baseType: !7, size: 32, elements: !115)
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!117 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!118 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!119 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !121, line: 1381, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!124 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!125 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !121, line: 295, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129}
!128 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!129 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !121, line: 285, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!133 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!134 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !51, line: 68, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!138 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!139 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !51, line: 18, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143}
!142 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!143 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !145, line: 54, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!146 = !{!147, !148, !149}
!147 = !DIEnumerator(name: "USRQUOTA", value: 0)
!148 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!149 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !151, line: 16, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!152 = !{!153, !154, !155}
!153 = !DIEnumerator(name: "TT_NONE", value: 0)
!154 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!155 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !157, line: 51, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!160 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!161 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!162 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !164, line: 15, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!167 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!168 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!169 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_cmnd_submitter", file: !171, line: 68, baseType: !172, size: 8, elements: !173)
!171 = !DIFile(filename: "./include/scsi/scsi_cmnd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4198ccc53f5f3f3d1c4fd795461bcb03")
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "SUBMITTED_BY_BLOCK_LAYER", value: 0)
!175 = !DIEnumerator(name: "SUBMITTED_BY_SCSI_ERROR_HANDLER", value: 1)
!176 = !DIEnumerator(name: "SUBMITTED_BY_SCSI_RESET_IOCTL", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !178, line: 5, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!179 = !{!180, !181, !182, !183}
!180 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!181 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!182 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!183 = !DIEnumerator(name: "DMA_NONE", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_target_state", file: !185, line: 321, baseType: !7, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/scsi/scsi_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8532a04b33bfb2793a57cbb23a970be9")
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIEnumerator(name: "STARGET_CREATED", value: 1)
!188 = !DIEnumerator(name: "STARGET_RUNNING", value: 2)
!189 = !DIEnumerator(name: "STARGET_REMOVE", value: 3)
!190 = !DIEnumerator(name: "STARGET_CREATED_REMOVE", value: 4)
!191 = !DIEnumerator(name: "STARGET_DEL", value: 5)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_timeout_action", file: !193, line: 36, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/scsi/scsi_host.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cb376a812ac0cab6555a718dbe69d0b")
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "SCSI_EH_DONE", value: 0)
!196 = !DIEnumerator(name: "SCSI_EH_RESET_TIMER", value: 1)
!197 = !DIEnumerator(name: "SCSI_EH_NOT_HANDLED", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_host_state", file: !193, line: 525, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206}
!200 = !DIEnumerator(name: "SHOST_CREATED", value: 1)
!201 = !DIEnumerator(name: "SHOST_RUNNING", value: 2)
!202 = !DIEnumerator(name: "SHOST_CANCEL", value: 3)
!203 = !DIEnumerator(name: "SHOST_DEL", value: 4)
!204 = !DIEnumerator(name: "SHOST_RECOVERY", value: 5)
!205 = !DIEnumerator(name: "SHOST_CANCEL_RECOVERY", value: 6)
!206 = !DIEnumerator(name: "SHOST_DEL_RECOVERY", value: 7)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_device_state", file: !185, line: 38, baseType: !7, size: 32, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIEnumerator(name: "SDEV_CREATED", value: 1)
!210 = !DIEnumerator(name: "SDEV_RUNNING", value: 2)
!211 = !DIEnumerator(name: "SDEV_CANCEL", value: 3)
!212 = !DIEnumerator(name: "SDEV_DEL", value: 4)
!213 = !DIEnumerator(name: "SDEV_QUIESCE", value: 5)
!214 = !DIEnumerator(name: "SDEV_OFFLINE", value: 6)
!215 = !DIEnumerator(name: "SDEV_TRANSPORT_OFFLINE", value: 7)
!216 = !DIEnumerator(name: "SDEV_BLOCK", value: 8)
!217 = !DIEnumerator(name: "SDEV_CREATED_BLOCK", value: 9)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "req_op", file: !219, line: 371, baseType: !7, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!221 = !DIEnumerator(name: "REQ_OP_READ", value: 0)
!222 = !DIEnumerator(name: "REQ_OP_WRITE", value: 1)
!223 = !DIEnumerator(name: "REQ_OP_FLUSH", value: 2)
!224 = !DIEnumerator(name: "REQ_OP_DISCARD", value: 3)
!225 = !DIEnumerator(name: "REQ_OP_SECURE_ERASE", value: 5)
!226 = !DIEnumerator(name: "REQ_OP_WRITE_ZEROES", value: 9)
!227 = !DIEnumerator(name: "REQ_OP_ZONE_OPEN", value: 10)
!228 = !DIEnumerator(name: "REQ_OP_ZONE_CLOSE", value: 11)
!229 = !DIEnumerator(name: "REQ_OP_ZONE_FINISH", value: 12)
!230 = !DIEnumerator(name: "REQ_OP_ZONE_APPEND", value: 13)
!231 = !DIEnumerator(name: "REQ_OP_ZONE_RESET", value: 15)
!232 = !DIEnumerator(name: "REQ_OP_ZONE_RESET_ALL", value: 17)
!233 = !DIEnumerator(name: "REQ_OP_DRV_IN", value: 34)
!234 = !DIEnumerator(name: "REQ_OP_DRV_OUT", value: 35)
!235 = !DIEnumerator(name: "REQ_OP_LAST", value: 36)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !237, line: 10, baseType: !7, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!238 = !{!239, !240}
!239 = !DIEnumerator(name: "false", value: 0)
!240 = !DIEnumerator(name: "true", value: 1)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sam_status", file: !242, line: 198, baseType: !7, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/scsi/scsi_proto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77cf2b62faf3e11ee8f23d341eca254d")
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!244 = !DIEnumerator(name: "SAM_STAT_GOOD", value: 0)
!245 = !DIEnumerator(name: "SAM_STAT_CHECK_CONDITION", value: 2)
!246 = !DIEnumerator(name: "SAM_STAT_CONDITION_MET", value: 4)
!247 = !DIEnumerator(name: "SAM_STAT_BUSY", value: 8)
!248 = !DIEnumerator(name: "SAM_STAT_INTERMEDIATE", value: 16)
!249 = !DIEnumerator(name: "SAM_STAT_INTERMEDIATE_CONDITION_MET", value: 20)
!250 = !DIEnumerator(name: "SAM_STAT_RESERVATION_CONFLICT", value: 24)
!251 = !DIEnumerator(name: "SAM_STAT_COMMAND_TERMINATED", value: 34)
!252 = !DIEnumerator(name: "SAM_STAT_TASK_SET_FULL", value: 40)
!253 = !DIEnumerator(name: "SAM_STAT_ACA_ACTIVE", value: 48)
!254 = !DIEnumerator(name: "SAM_STAT_TASK_ABORTED", value: 64)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !256, line: 364, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!257 = !{!258, !259, !260, !261, !262, !263, !264}
!258 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!259 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!260 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!261 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!262 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!263 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!264 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!265 = !{!266, !82, !1587, !420, !172}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !268)
!268 = !{!269, !270, !277, !282, !5315, !5341, !5342, !5343, !5344, !5348, !5351, !5352, !5353, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5420, !5424, !5442, !5459, !5460, !5461, !5462, !5471, !5494, !5495, !5498, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5511, !5512, !5514, !5522, !5523, !5524, !5525, !5529, !5530, !5534, !5535, !5536, !5537, !5539, !5540, !5541, !5548, !5549, !5550, !5552}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !6, line: 403, baseType: !5, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !267, file: !6, line: 406, baseType: !271, size: 128, offset: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !272, line: 190, size: 128, elements: !273)
!272 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!273 = !{!274, !276}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !272, line: 191, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !272, line: 191, baseType: !275, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !267, file: !6, line: 409, baseType: !278, size: 448, offset: 192)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 448, elements: !280)
!279 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!280 = !{!281}
!281 = !DISubrange(count: 56)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !267, file: !6, line: 417, baseType: !283, size: 768, offset: 640)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !284)
!284 = !{!285, !5309, !5310, !5311, !5314}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !283, file: !6, line: 46, baseType: !286, size: 512)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !287, line: 64, size: 512, elements: !288)
!287 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!288 = !{!289, !292, !293, !295, !383, !5207, !5299, !5304, !5305, !5306, !5307, !5308}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !287, line: 65, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !286, file: !287, line: 66, baseType: !271, size: 128, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !287, line: 67, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !286, file: !287, line: 68, baseType: !296, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !287, line: 168, size: 768, elements: !298)
!298 = !{!299, !300, !342, !343}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !297, file: !287, line: 169, baseType: !271, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !297, file: !287, line: 170, baseType: !301, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !302, line: 29, baseType: !303)
!302 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !302, line: 17, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !302, line: 18, baseType: !306, size: 32)
!306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !302, line: 18, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !306, file: !302, line: 19, baseType: !309, size: 32)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !310, line: 14, size: 32, elements: !311)
!310 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !309, file: !310, line: 15, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !314, line: 44, baseType: !315)
!314 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !314, line: 14, size: 32, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !314, line: 15, baseType: !318, size: 32)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !314, line: 15, size: 32, elements: !319)
!319 = !{!320, !325, !334}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !318, file: !314, line: 16, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !272, line: 174, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 172, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !322, file: !272, line: 173, baseType: !82, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !314, line: 24, baseType: !326, size: 16)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !314, line: 24, size: 16, elements: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !326, file: !314, line: 25, baseType: !329, size: 8)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !330, line: 17, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !332, line: 21, baseType: !172)
!332 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !326, file: !314, line: 26, baseType: !329, size: 8, offset: 8)
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !314, line: 28, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !314, line: 28, size: 32, elements: !336)
!336 = !{!337, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !335, file: !314, line: 29, baseType: !338, size: 16)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !330, line: 19, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !332, line: 24, baseType: !340)
!340 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !335, file: !314, line: 30, baseType: !338, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !297, file: !287, line: 171, baseType: !286, size: 512, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !297, file: !287, line: 172, baseType: !344, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !287, line: 133, size: 192, elements: !347)
!347 = !{!348, !355, !360}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !346, file: !287, line: 134, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!82, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !287, line: 135, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!290, !353}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !346, file: !287, line: 136, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!82, !353, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !287, line: 125, size: 20736, elements: !367)
!367 = !{!368, !373, !377, !378, !382}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !366, file: !287, line: 126, baseType: !369, size: 192)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !371)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!371 = !{!372}
!372 = !DISubrange(count: 3)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !366, file: !287, line: 127, baseType: !374, size: 4096, offset: 192)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 4096, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !366, file: !287, line: 128, baseType: !82, size: 32, offset: 4288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !366, file: !287, line: 129, baseType: !379, size: 16384, offset: 4320)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 16384, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 2048)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !366, file: !287, line: 130, baseType: !82, size: 32, offset: 20704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !286, file: !287, line: 69, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !287, line: 116, size: 384, elements: !387)
!387 = !{!388, !392, !421, !5195, !5199, !5203}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !386, file: !287, line: 117, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !294}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !386, file: !287, line: 118, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !396, line: 254, size: 128, elements: !397)
!396 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!397 = !{!398, !413}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !395, file: !396, line: 255, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !294, !407, !370}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !272, line: 66, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !404, line: 73, baseType: !405)
!404 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !404, line: 15, baseType: !406)
!406 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !396, line: 30, size: 128, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !396, line: 31, baseType: !290, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !408, file: !396, line: 32, baseType: !412, size: 16, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !272, line: 24, baseType: !340)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !395, file: !396, line: 256, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!402, !294, !407, !290, !417}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !272, line: 61, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !404, line: 72, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !404, line: 16, baseType: !420)
!420 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !386, file: !287, line: 119, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !396, line: 84, size: 320, elements: !426)
!426 = !{!427, !428, !432, !5191, !5193}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !396, line: 85, baseType: !290, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !425, file: !396, line: 86, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!412, !294, !407, !82}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !425, file: !396, line: 88, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!412, !294, !436, !82}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !396, line: 175, size: 512, elements: !438)
!438 = !{!439, !440, !441, !443, !5182, !5186, !5187}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !437, file: !396, line: 176, baseType: !408, size: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !437, file: !396, line: 177, baseType: !417, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !437, file: !396, line: 178, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !437, file: !396, line: 179, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !449)
!449 = !{!450, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5176, !5177, !5178, !5179, !5180, !5181}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !448, file: !14, line: 473, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !453)
!453 = !{!454, !455, !456, !464, !465, !472, !473, !476, !477, !4957, !4958, !4959, !4960, !4961, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !5001, !5004, !5005, !5006, !5015, !5016, !5017, !5018}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !452, file: !14, line: 642, baseType: !412, size: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !452, file: !14, line: 643, baseType: !340, size: 16, offset: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !452, file: !14, line: 644, baseType: !457, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !458, line: 23, baseType: !459)
!458 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 21, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !458, line: 22, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !272, line: 37, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !404, line: 49, baseType: !7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !452, file: !14, line: 645, baseType: !271, size: 128, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !452, file: !14, line: 646, baseType: !466, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !458, line: 28, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 26, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !458, line: 27, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !272, line: 38, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !404, line: 50, baseType: !7)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !452, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !452, file: !14, line: 650, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !452, file: !14, line: 651, baseType: !474, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !452, file: !14, line: 654, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !481)
!481 = !{!482, !4791, !4801, !4805, !4809, !4813, !4817, !4821, !4825, !4829, !4833, !4834, !4838, !4842, !4879, !4908, !4912, !4918, !4922, !4926, !4930, !4934, !4938, !4944, !4948}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !480, file: !14, line: 1967, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !451, !486, !7}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !488, line: 82, size: 1536, elements: !489)
!488 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!489 = !{!490, !491, !501, !509, !510, !530, !531, !535, !548, !4774, !4775, !4776, !4777, !4783, !4784, !4785}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !487, file: !488, line: 84, baseType: !7, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !487, file: !488, line: 85, baseType: !492, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !493, line: 275, baseType: !494)
!493 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !493, line: 275, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !494, file: !493, line: 275, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !493, line: 69, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !493, line: 64, size: 32, elements: !499)
!499 = !{!500}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !498, file: !493, line: 65, baseType: !7, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !487, file: !488, line: 86, baseType: !502, size: 128, offset: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !503, line: 38, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!504 = !{!505, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !503, line: 39, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !502, file: !503, line: 39, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !487, file: !488, line: 87, baseType: !486, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !487, file: !488, line: 88, baseType: !511, size: 128, offset: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !488, line: 49, size: 128, elements: !512)
!512 = !{!513, !527}
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !488, line: 50, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !488, line: 50, size: 64, elements: !515)
!515 = !{!516, !523}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !488, line: 51, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !488, line: 51, size: 64, elements: !518)
!518 = !{!519, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !517, file: !488, line: 52, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !330, line: 21, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !332, line: 27, baseType: !7)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !517, file: !488, line: 52, baseType: !520, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !514, file: !488, line: 54, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !330, line: 23, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !332, line: 31, baseType: !526)
!526 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !488, line: 56, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !487, file: !488, line: 89, baseType: !451, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !487, file: !488, line: 91, baseType: !532, size: 256, offset: 448)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !487, file: !488, line: 94, baseType: !536, size: 64, offset: 704)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !537, line: 25, size: 64, elements: !538)
!537 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !537, line: 26, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !537, line: 26, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !540, file: !537, line: 28, baseType: !525, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !537, line: 30, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !540, file: !537, line: 30, size: 64, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !544, file: !537, line: 31, baseType: !301, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !544, file: !537, line: 32, baseType: !82, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !487, file: !488, line: 95, baseType: !549, size: 64, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !488, line: 128, size: 1024, align: 512, elements: !552)
!552 = !{!553, !557, !558, !565, !571, !575, !579, !583, !584, !588, !592, !4764, !4768}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !551, file: !488, line: 129, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!82, !486, !7}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !551, file: !488, line: 130, baseType: !554, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !551, file: !488, line: 131, baseType: !559, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!82, !562, !564}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !551, file: !488, line: 132, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!82, !562, !7, !290, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !551, file: !488, line: 134, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!82, !562}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !551, file: !488, line: 135, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!82, !486}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !551, file: !488, line: 136, baseType: !580, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !486}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !551, file: !488, line: 137, baseType: !580, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !551, file: !488, line: 138, baseType: !585, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !486, !451}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !551, file: !488, line: 139, baseType: !589, size: 64, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!370, !486, !370, !82}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !551, file: !488, line: 140, baseType: !593, size: 64, offset: 640)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !4763}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !598, line: 70, size: 256, elements: !599)
!598 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!599 = !{!600, !601, !4759, !4760}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !597, file: !598, line: 71, baseType: !486, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !597, file: !598, line: 72, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !604)
!604 = !{!605, !606, !609, !610, !611, !615, !663, !3348, !3388, !3473, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3490, !3494, !3495, !3496, !3502, !3503, !3506, !3507, !3508, !3549, !4693, !4694, !4695, !4696, !4697, !4698, !4701, !4702, !4709, !4710, !4711, !4712, !4713, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !603, file: !14, line: 1191, baseType: !271, size: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !603, file: !14, line: 1192, baseType: !607, size: 32, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !272, line: 21, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !272, line: 18, baseType: !520)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !603, file: !14, line: 1193, baseType: !172, size: 8, offset: 160)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !603, file: !14, line: 1194, baseType: !420, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !603, file: !14, line: 1195, baseType: !612, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !272, line: 52, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !404, line: 88, baseType: !614)
!614 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !603, file: !14, line: 1196, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !618)
!618 = !{!619, !620, !621, !627, !631, !635, !639, !640, !641, !651, !655, !656, !657, !659, !660, !661, !662}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !617, file: !14, line: 2367, baseType: !290, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !617, file: !14, line: 2368, baseType: !82, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !617, file: !14, line: 2376, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!82, !625}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !598, line: 21, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !617, file: !14, line: 2377, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !617, file: !14, line: 2378, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!486, !616, !82, !290, !442}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !617, file: !14, line: 2380, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !602}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !617, file: !14, line: 2381, baseType: !266, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !14, line: 2382, baseType: !616, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !617, file: !14, line: 2383, baseType: !642, size: 64, offset: 512)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !272, line: 194, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !642, file: !272, line: 195, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !272, line: 198, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !646, file: !272, line: 199, baseType: !645, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !646, file: !272, line: 199, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !617, file: !14, line: 2385, baseType: !652, offset: 576)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !653, line: 206, elements: !654)
!653 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!654 = !{}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !617, file: !14, line: 2386, baseType: !652, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !617, file: !14, line: 2387, baseType: !652, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !617, file: !14, line: 2388, baseType: !658, offset: 576)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, elements: !371)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !617, file: !14, line: 2390, baseType: !652, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !617, file: !14, line: 2391, baseType: !652, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !617, file: !14, line: 2392, baseType: !652, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !617, file: !14, line: 2393, baseType: !652, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !603, file: !14, line: 1197, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !667)
!667 = !{!668, !672, !676, !677, !681, !687, !691, !692, !693, !697, !701, !705, !706, !707, !713, !718, !719, !3273, !3274, !3275, !3276, !3280, !3284, !3331, !3346, !3347}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !666, file: !14, line: 2058, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!451, !602}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !666, file: !14, line: 2059, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !451}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !666, file: !14, line: 2060, baseType: !673, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !666, file: !14, line: 2062, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !451, !82}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !666, file: !14, line: 2063, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!82, !451, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !666, file: !14, line: 2064, baseType: !688, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!82, !451}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !666, file: !14, line: 2065, baseType: !673, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !666, file: !14, line: 2066, baseType: !636, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !666, file: !14, line: 2067, baseType: !694, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!82, !602, !82}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !666, file: !14, line: 2068, baseType: !698, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!82, !602, !13}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !666, file: !14, line: 2069, baseType: !702, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!82, !602}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !666, file: !14, line: 2070, baseType: !698, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !666, file: !14, line: 2071, baseType: !702, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !666, file: !14, line: 2072, baseType: !708, size: 64, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!82, !486, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !666, file: !14, line: 2073, baseType: !714, size: 64, offset: 896)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!82, !602, !717, !370}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !666, file: !14, line: 2074, baseType: !636, size: 64, offset: 960)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !666, file: !14, line: 2076, baseType: !720, size: 64, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!82, !723, !486}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !725, line: 17, size: 960, elements: !726)
!725 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !755, !777, !778, !3272}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !724, file: !725, line: 18, baseType: !370, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !725, line: 19, baseType: !417, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !724, file: !725, line: 20, baseType: !417, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !724, file: !725, line: 21, baseType: !417, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !724, file: !725, line: 22, baseType: !417, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !724, file: !725, line: 23, baseType: !612, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !724, file: !725, line: 24, baseType: !612, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !724, file: !725, line: 25, baseType: !735, size: 256, offset: 448)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !736, line: 66, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!737 = !{!738, !747, !749, !754}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !735, file: !736, line: 67, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !740, line: 13, baseType: !741)
!740 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !272, line: 181, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 179, size: 64, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !742, file: !272, line: 180, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !330, line: 22, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !332, line: 30, baseType: !614)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !735, file: !736, line: 68, baseType: !748, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !310, line: 23, baseType: !309)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !735, file: !736, line: 70, baseType: !750, size: 32, offset: 96)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !751, line: 15, size: 32, elements: !752)
!751 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !750, file: !751, line: 20, baseType: !321, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !735, file: !736, line: 72, baseType: !271, size: 128, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !724, file: !725, line: 26, baseType: !756, size: 64, offset: 704)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !725, line: 32, size: 256, elements: !759)
!759 = !{!760, !765, !769, !773}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !758, file: !725, line: 33, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!442, !723, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !758, file: !725, line: 34, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !723, !442}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !725, line: 35, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!442, !723, !442, !764}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !758, file: !725, line: 36, baseType: !774, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!82, !723, !442}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !724, file: !725, line: 27, baseType: !82, size: 32, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !724, file: !725, line: 28, baseType: !779, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !782)
!782 = !{!783, !802, !803, !805, !806, !807, !808, !809, !872, !1084, !1093, !1099, !1100, !3262, !3263, !3264, !3265, !3267, !3268, !3271}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !14, line: 995, baseType: !784, size: 128)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !14, line: 995, size: 128, elements: !785)
!785 = !{!786, !792, !801}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !784, file: !14, line: 996, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !788, line: 60, size: 64, elements: !789)
!788 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !788, line: 61, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !784, file: !14, line: 997, baseType: !793, size: 128, align: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !272, line: 232, size: 128, align: 64, elements: !794)
!794 = !{!795, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !272, line: 233, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !793, file: !272, line: 234, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !796}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !784, file: !14, line: 998, baseType: !7, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !781, file: !14, line: 1005, baseType: !301, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !781, file: !14, line: 1006, baseType: !804, size: 32, offset: 160)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !272, line: 156, baseType: !7)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !781, file: !14, line: 1007, baseType: !739, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !781, file: !14, line: 1008, baseType: !735, size: 256, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !781, file: !14, line: 1009, baseType: !612, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !781, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !781, file: !14, line: 1011, baseType: !810, size: 256, offset: 640)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !811)
!811 = !{!812, !833, !868, !869, !870, !871}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !810, file: !14, line: 949, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !814, line: 34, baseType: !815)
!814 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 25, size: 64, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !815, file: !814, line: 26, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !819, line: 27, baseType: !820)
!819 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !819, line: 13, size: 64, elements: !821)
!821 = !{!822, !832}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !819, line: 14, baseType: !823, size: 32)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !819, line: 14, size: 32, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !823, file: !819, line: 15, baseType: !321, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !819, line: 16, baseType: !827, size: 32)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !819, line: 16, size: 32, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !827, file: !819, line: 18, baseType: !329, size: 8)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !827, file: !819, line: 19, baseType: !831, size: 24, offset: 8)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 24, elements: !371)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !820, file: !819, line: 26, baseType: !313, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !810, file: !14, line: 950, baseType: !834, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !836)
!836 = !{!837, !843, !844, !845, !849, !850, !857, !858}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !835, file: !19, line: 61, baseType: !838, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !839, line: 113, baseType: !840)
!839 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !839, line: 111, size: 32, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !840, file: !839, line: 112, baseType: !321, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !835, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !835, file: !19, line: 63, baseType: !301, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !835, file: !19, line: 65, baseType: !846, size: 256, offset: 128)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 4)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !835, file: !19, line: 66, baseType: !642, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !835, file: !19, line: 68, baseType: !851, size: 192, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !852, line: 41, baseType: !853)
!852 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !852, line: 37, size: 192, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !853, file: !852, line: 38, baseType: !301, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !853, file: !852, line: 39, baseType: !271, size: 128, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !835, file: !19, line: 69, baseType: !793, size: 128, align: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !835, file: !19, line: 70, baseType: !859, offset: 768)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, elements: !866)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !860, file: !19, line: 55, baseType: !82, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !860, file: !19, line: 56, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!866 = !{!867}
!867 = !DISubrange(count: -1)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !810, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !810, file: !14, line: 952, baseType: !457, size: 32, offset: 160)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !810, file: !14, line: 952, baseType: !457, size: 32, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !810, file: !14, line: 953, baseType: !82, size: 32, offset: 224)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !781, file: !14, line: 1012, baseType: !873, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !876, line: 110, size: 1472, elements: !877)
!876 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !894, !895, !896, !897, !898, !899, !1029, !1030, !1031, !1032, !1033, !1064, !1067, !1071, !1079}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !875, file: !876, line: 111, baseType: !739, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !875, file: !876, line: 112, baseType: !457, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !875, file: !876, line: 113, baseType: !466, size: 32, offset: 96)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !875, file: !876, line: 114, baseType: !457, size: 32, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !875, file: !876, line: 115, baseType: !466, size: 32, offset: 160)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !875, file: !876, line: 116, baseType: !457, size: 32, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !875, file: !876, line: 117, baseType: !466, size: 32, offset: 224)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !875, file: !876, line: 118, baseType: !457, size: 32, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !875, file: !876, line: 119, baseType: !466, size: 32, offset: 288)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !875, file: !876, line: 120, baseType: !7, size: 32, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !875, file: !876, line: 121, baseType: !889, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !890, line: 24, baseType: !891)
!890 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !890, line: 24, size: 64, elements: !892)
!892 = !{!893}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !891, file: !890, line: 24, baseType: !524, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !875, file: !876, line: 122, baseType: !889, size: 64, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !875, file: !876, line: 123, baseType: !889, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !875, file: !876, line: 124, baseType: !889, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !875, file: !876, line: 125, baseType: !889, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !875, file: !876, line: 127, baseType: !172, size: 8, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !875, file: !876, line: 129, baseType: !900, size: 64, offset: 768)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !902, line: 195, size: 1728, elements: !903)
!902 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!903 = !{!904, !905, !910, !922, !931, !934, !935, !942, !943, !944, !945, !948, !949, !950, !952, !953, !993, !1014}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !901, file: !902, line: 196, baseType: !838, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !901, file: !902, line: 197, baseType: !906, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !902, line: 28, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !272, line: 104, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !330, line: 20, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !332, line: 26, baseType: !82)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !902, line: 198, baseType: !911, size: 192, offset: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !902, line: 198, size: 192, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !911, file: !902, line: 199, baseType: !271, size: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !911, file: !902, line: 200, baseType: !915, size: 192, align: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !916, line: 5, size: 192, align: 64, elements: !917)
!916 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!917 = !{!918, !919, !921}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !915, file: !916, line: 6, baseType: !420, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !915, file: !916, line: 7, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !915, file: !916, line: 8, baseType: !920, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !901, file: !902, line: 205, baseType: !923, size: 320, offset: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !924, line: 48, size: 320, elements: !925)
!924 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!925 = !{!926, !927, !928, !929, !930}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !923, file: !924, line: 49, baseType: !739, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !923, file: !924, line: 55, baseType: !739, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !923, file: !924, line: 57, baseType: !750, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !923, file: !924, line: 59, baseType: !748, size: 32, offset: 160)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !923, file: !924, line: 60, baseType: !271, size: 128, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !901, file: !902, line: 206, baseType: !932, size: 64, offset: 576)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !902, line: 206, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !901, file: !902, line: 207, baseType: !442, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !902, line: 208, baseType: !936, size: 64, offset: 704)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !902, line: 208, size: 64, elements: !937)
!937 = !{!938, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !936, file: !902, line: 209, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !940, line: 8, baseType: !746)
!940 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !936, file: !902, line: 210, baseType: !939, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !901, file: !902, line: 212, baseType: !939, size: 64, offset: 768)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !901, file: !902, line: 213, baseType: !457, size: 32, offset: 832)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !901, file: !902, line: 214, baseType: !466, size: 32, offset: 864)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !901, file: !902, line: 215, baseType: !946, size: 32, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !902, line: 31, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !272, line: 110, baseType: !520)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !901, file: !902, line: 216, baseType: !340, size: 16, offset: 928)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !901, file: !902, line: 217, baseType: !340, size: 16, offset: 944)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !901, file: !902, line: 221, baseType: !951, size: 16, offset: 960)
!951 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !901, file: !902, line: 228, baseType: !420, size: 64, offset: 1024)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !902, line: 245, baseType: !954, size: 320, offset: 1088)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !902, line: 245, size: 320, elements: !955)
!955 = !{!956, !985}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !954, file: !902, line: 246, baseType: !957, size: 320)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !902, line: 114, size: 320, elements: !958)
!958 = !{!959, !960, !972, !975, !984}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !957, file: !902, line: 116, baseType: !420, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !902, line: 117, baseType: !961, size: 64, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !902, line: 117, size: 64, elements: !962)
!962 = !{!963, !971}
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !902, line: 118, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !902, line: 118, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !964, file: !902, line: 120, baseType: !338, size: 16)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !964, file: !902, line: 121, baseType: !968, size: 48, offset: 16)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 48, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 6)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !961, file: !902, line: 127, baseType: !420, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !957, file: !902, line: 129, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !902, line: 102, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !957, file: !902, line: 130, baseType: !976, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !902, line: 108, size: 192, elements: !978)
!978 = !{!979, !980, !981}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !977, file: !902, line: 109, baseType: !793, size: 128, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !977, file: !902, line: 110, baseType: !838, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !977, file: !902, line: 111, baseType: !982, size: 8, offset: 160)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !272, line: 35, baseType: !983)
!983 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !957, file: !902, line: 131, baseType: !290, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !902, line: 247, baseType: !986, size: 320)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !902, line: 247, size: 320, elements: !987)
!987 = !{!988, !989, !990, !991, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !986, file: !902, line: 248, baseType: !420, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !986, file: !902, line: 249, baseType: !420, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !986, file: !902, line: 250, baseType: !973, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !986, file: !902, line: 251, baseType: !976, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !986, file: !902, line: 252, baseType: !370, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !902, line: 260, baseType: !994, size: 256, offset: 1408)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !902, line: 260, size: 256, elements: !995)
!995 = !{!996, !1002}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !994, file: !902, line: 261, baseType: !997, size: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !902, line: 134, size: 256, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !997, file: !902, line: 135, baseType: !442, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !997, file: !902, line: 136, baseType: !1001, size: 256)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 256, elements: !847)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !902, line: 262, baseType: !1003, size: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !994, file: !902, line: 262, size: 256, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1003, file: !902, line: 264, baseType: !271, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1003, file: !902, line: 265, baseType: !1007, size: 128, offset: 128)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1008, line: 22, size: 128, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1009 = !{!1010, !1013}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1007, file: !1008, line: 23, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1008, line: 23, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1007, file: !1008, line: 24, baseType: !420, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !901, file: !902, line: 280, baseType: !1015, size: 64, offset: 1664)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !902, line: 176, size: 192, elements: !1017)
!1017 = !{!1018, !1027, !1028}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1016, file: !902, line: 177, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !902, line: 171, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!82, !900, !1023, !1025, !900}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1016, file: !902, line: 178, baseType: !900, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1016, file: !902, line: 179, baseType: !973, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !875, file: !876, line: 130, baseType: !900, size: 64, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !875, file: !876, line: 131, baseType: !900, size: 64, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !875, file: !876, line: 132, baseType: !900, size: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !875, file: !876, line: 135, baseType: !442, size: 64, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !875, file: !876, line: 137, baseType: !1034, size: 64, offset: 1088)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1036, line: 14, size: 1088, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1037 = !{!1038, !1039, !1048, !1049, !1050, !1051, !1052, !1053}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1035, file: !1036, line: 15, baseType: !838, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1035, file: !1036, line: 17, baseType: !1040, size: 320, offset: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1041, line: 22, size: 320, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1041, line: 23, baseType: !748, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1040, file: !1041, line: 24, baseType: !745, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1040, file: !1041, line: 26, baseType: !271, size: 128, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1040, file: !1041, line: 28, baseType: !1047, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1035, file: !1036, line: 19, baseType: !420, size: 64, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1035, file: !1036, line: 20, baseType: !739, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1035, file: !1036, line: 23, baseType: !646, size: 128, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1035, file: !1036, line: 24, baseType: !457, size: 32, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1035, file: !1036, line: 29, baseType: !739, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1035, file: !1036, line: 36, baseType: !1054, size: 320, offset: 768)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1055, line: 15, size: 320, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !1055, line: 16, baseType: !748, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1054, file: !1055, line: 18, baseType: !82, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1054, file: !1055, line: 19, baseType: !82, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1054, file: !1055, line: 20, baseType: !82, size: 32, offset: 96)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1054, file: !1055, line: 21, baseType: !82, size: 32, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1054, file: !1055, line: 22, baseType: !420, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 23, baseType: !420, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !875, file: !876, line: 138, baseType: !1065, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !35, line: 901, flags: DIFlagFwdDecl)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !875, file: !876, line: 139, baseType: !1068, size: 64, offset: 1216)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1070, line: 16, flags: DIFlagFwdDecl)
!1070 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !875, file: !876, line: 140, baseType: !1072, size: 64, offset: 1280)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !876, line: 25, size: 64, elements: !1074)
!1074 = !{!1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1073, file: !876, line: 26, baseType: !321, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1073, file: !876, line: 27, baseType: !82, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1073, file: !876, line: 28, baseType: !1078, offset: 64)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, elements: !866)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !876, line: 142, baseType: !1080, size: 128, offset: 1344)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !876, line: 142, size: 128, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1080, file: !876, line: 143, baseType: !82, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1080, file: !876, line: 144, baseType: !793, size: 128, align: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !781, file: !14, line: 1013, baseType: !1085, size: 256, offset: 960)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1085, file: !14, line: 971, baseType: !420, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1085, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1085, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1085, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1085, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1085, file: !14, line: 976, baseType: !612, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !781, file: !14, line: 1014, baseType: !1094, size: 128, offset: 1216)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1095, line: 8, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1094, file: !1095, line: 9, baseType: !596, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1094, file: !1095, line: 10, baseType: !486, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !781, file: !14, line: 1015, baseType: !451, size: 64, offset: 1344)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !781, file: !14, line: 1016, baseType: !1101, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1104)
!1104 = !{!1105, !1106, !1111, !1115, !1119, !1671, !1672, !3154, !3167, !3175, !3179, !3180, !3184, !3185, !3189, !3194, !3195, !3199, !3203, !3209, !3210, !3214, !3215, !3222, !3226, !3230, !3235, !3239, !3243, !3247, !3251, !3252, !3258}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1103, file: !14, line: 1915, baseType: !266, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1103, file: !14, line: 1916, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!612, !1110, !612, !82}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1103, file: !14, line: 1917, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!402, !1110, !370, !417, !764}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1103, file: !14, line: 1918, baseType: !1116, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!402, !1110, !290, !417, !764}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1103, file: !14, line: 1919, baseType: !1120, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!402, !1123, !1145}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1132, !1133, !1134, !1135}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1124, file: !14, line: 374, baseType: !1110, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1124, file: !14, line: 375, baseType: !612, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1124, file: !14, line: 376, baseType: !1129, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1123, !406}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1124, file: !14, line: 377, baseType: !442, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1124, file: !14, line: 378, baseType: !82, size: 32, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1124, file: !14, line: 379, baseType: !338, size: 16, offset: 288)
!1135 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !14, line: 380, baseType: !1136, size: 64, offset: 320)
!1136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1124, file: !14, line: 380, size: 64, elements: !1137)
!1137 = !{!1138, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1136, file: !14, line: 386, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1136, file: !14, line: 395, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!402, !442}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1147, line: 41, size: 320, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1159, !1666}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1146, file: !1147, line: 42, baseType: !329, size: 8)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1146, file: !1147, line: 43, baseType: !982, size: 8, offset: 8)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1146, file: !1147, line: 44, baseType: !982, size: 8, offset: 16)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1146, file: !1147, line: 45, baseType: !982, size: 8, offset: 24)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1146, file: !1147, line: 46, baseType: !982, size: 8, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 47, baseType: !1155, size: 64, offset: 64)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 47, size: 64, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1155, file: !1147, line: 48, baseType: !417, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1155, file: !1147, line: 49, baseType: !82, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 61, baseType: !1160, size: 128, offset: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 61, size: 128, elements: !1161)
!1161 = !{!1162, !1168}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1160, file: !1147, line: 67, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1164, line: 17, size: 128, elements: !1165)
!1164 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1163, file: !1164, line: 19, baseType: !442, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1163, file: !1164, line: 20, baseType: !418, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !1147, line: 68, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !1147, line: 68, size: 128, elements: !1170)
!1170 = !{!1171, !1665}
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1147, line: 69, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1147, line: 69, size: 64, elements: !1173)
!1173 = !{!1174, !1177, !1184, !1656, !1664}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1172, file: !1147, line: 71, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1163)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1172, file: !1147, line: 72, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1147, line: 17, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1180, file: !1147, line: 18, baseType: !442, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1180, file: !1147, line: 19, baseType: !417, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1172, file: !1147, line: 73, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1188, line: 31, size: 128, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1189 = !{!1190, !1654, !1655}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1187, file: !1188, line: 32, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1193)
!1193 = !{!1194, !1195, !1648, !1653}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !35, line: 75, baseType: !420, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !35, line: 83, baseType: !1196, size: 320, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !35, line: 83, size: 320, elements: !1197)
!1197 = !{!1198, !1219, !1233, !1237, !1647}
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !35, line: 84, baseType: !1199, size: 320)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !35, line: 84, size: 320, elements: !1200)
!1200 = !{!1201, !1212, !1213, !1218}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !35, line: 90, baseType: !1202, size: 128)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !35, line: 90, size: 128, elements: !1203)
!1203 = !{!1204, !1205, !1210, !1211}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1202, file: !35, line: 91, baseType: !271, size: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !35, line: 94, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !35, line: 94, size: 128, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1206, file: !35, line: 96, baseType: !442, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1206, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1202, file: !35, line: 102, baseType: !271, size: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1202, file: !35, line: 103, baseType: !271, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1199, file: !35, line: 106, baseType: !447, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !35, line: 107, baseType: !1214, size: 64, offset: 192)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !35, line: 107, size: 64, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1214, file: !35, line: 108, baseType: !420, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1214, file: !35, line: 109, baseType: !420, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1199, file: !35, line: 117, baseType: !420, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !35, line: 119, baseType: !1220, size: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !35, line: 119, size: 320, elements: !1221)
!1221 = !{!1222, !1223, !1226, !1227, !1228}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1220, file: !35, line: 124, baseType: !420, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1220, file: !35, line: 125, baseType: !1224, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1220, file: !35, line: 126, baseType: !420, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1220, file: !35, line: 127, baseType: !420, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !35, line: 128, baseType: !1229, size: 64, offset: 256)
!1229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1220, file: !35, line: 128, size: 64, elements: !1230)
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1229, file: !35, line: 133, baseType: !420, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1229, file: !35, line: 138, baseType: !739, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !35, line: 141, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !35, line: 141, size: 64, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1234, file: !35, line: 142, baseType: !420, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1196, file: !35, line: 144, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1196, file: !35, line: 144, size: 128, elements: !1239)
!1239 = !{!1240, !1646}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1238, file: !35, line: 146, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1243)
!1243 = !{!1244, !1254, !1275, !1286, !1287, !1288, !1289, !1628, !1629, !1630}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1242, file: !27, line: 127, baseType: !1245, size: 384)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1246)
!1246 = !{!1247, !1248, !1250, !1251, !1252, !1253}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1245, file: !27, line: 22, baseType: !420, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1245, file: !27, line: 23, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1245, file: !27, line: 24, baseType: !1249, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1245, file: !27, line: 25, baseType: !420, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1245, file: !27, line: 26, baseType: !420, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1245, file: !27, line: 27, baseType: !420, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1242, file: !27, line: 128, baseType: !1255, size: 128, offset: 384)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1256, line: 105, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1255, file: !1256, line: 110, baseType: !420, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1255, file: !1256, line: 118, baseType: !1260, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1256, line: 95, size: 448, elements: !1262)
!1262 = !{!1263, !1264, !1270, !1271, !1272, !1273, !1274}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1261, file: !1256, line: 96, baseType: !739, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1261, file: !1256, line: 97, baseType: !1265, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1256, line: 60, baseType: !1267)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1261, file: !1256, line: 98, baseType: !1265, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1261, file: !1256, line: 99, baseType: !982, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1261, file: !1256, line: 100, baseType: !982, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1261, file: !1256, line: 101, baseType: !793, size: 128, align: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1261, file: !1256, line: 102, baseType: !1269, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1242, file: !27, line: 129, baseType: !1276, size: 256, offset: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1277, line: 26, size: 256, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1276, file: !1277, line: 27, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1276, file: !1277, line: 28, baseType: !1281, size: 192, offset: 64)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1282, line: 43, size: 192, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1281, file: !1282, line: 44, baseType: !748, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1281, file: !1282, line: 45, baseType: !271, size: 128, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1242, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1242, file: !27, line: 132, baseType: !420, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1242, file: !27, line: 133, baseType: !1290, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1293)
!1293 = !{!1294, !1298, !1624}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1292, file: !27, line: 83, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1191}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1292, file: !27, line: 89, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1305, line: 512, size: 896, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1306 = !{!1307, !1591, !1592, !1599, !1606, !1616, !1617, !1618, !1620, !1622}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1305, line: 513, baseType: !1308, size: 320)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1305, line: 513, size: 320, elements: !1309)
!1309 = !{!1310, !1586, !1588, !1589, !1590}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1308, file: !1305, line: 514, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1313)
!1313 = !{!1314, !1323, !1491, !1497, !1504, !1505, !1510, !1511, !1516, !1517, !1520, !1579, !1580, !1581, !1582, !1583, !1584}
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !35, line: 628, baseType: !1315, size: 128)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !35, line: 628, size: 128, elements: !1316)
!1316 = !{!1317, !1322}
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1315, file: !35, line: 629, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1315, file: !35, line: 629, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1318, file: !35, line: 631, baseType: !420, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1318, file: !35, line: 632, baseType: !420, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1315, file: !35, line: 635, baseType: !793, size: 128, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1312, file: !35, line: 639, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1326)
!1326 = !{!1327, !1489}
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1325, file: !35, line: 734, baseType: !1328, size: 10240)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1325, file: !35, line: 734, size: 10240, elements: !1329)
!1329 = !{!1330, !1334, !1347, !1351, !1352, !1353, !1354, !1355, !1356, !1365, !1366, !1367, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406, !1408, !1411, !1458, !1459, !1460, !1463, !1464, !1465, !1468, !1469, !1470, !1476, !1477}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !35, line: 739, baseType: !1331, size: 512, align: 512)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !35, line: 739, size: 512, align: 512, elements: !1332)
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1331, file: !35, line: 747, baseType: !321, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1328, file: !35, line: 750, baseType: !1335, size: 128, offset: 512)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1336, line: 218, size: 128, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1337 = !{!1338, !1345, !1346}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !1336, line: 219, baseType: !1339, size: 32)
!1339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !1336, line: 219, size: 32, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1339, file: !1336, line: 220, baseType: !301, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1339, file: !1336, line: 221, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1336, line: 197, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1336, line: 197, elements: !654)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1335, file: !1336, line: 223, baseType: !7, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1335, file: !1336, line: 224, baseType: !442, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1328, file: !35, line: 752, baseType: !1348, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!420, !1110, !420, !420, !420, !420}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1328, file: !35, line: 756, baseType: !420, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1328, file: !35, line: 757, baseType: !420, size: 64, offset: 768)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1328, file: !35, line: 760, baseType: !420, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1328, file: !35, line: 761, baseType: !420, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1328, file: !35, line: 763, baseType: !420, size: 64, offset: 960)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1328, file: !35, line: 764, baseType: !1357, size: 64, offset: 1024)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1359, line: 299, baseType: !1360)
!1359 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1359, line: 299, size: 64, elements: !1361)
!1361 = !{!1362}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1360, file: !1359, line: 299, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1364, line: 18, baseType: !420)
!1364 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1328, file: !35, line: 773, baseType: !321, size: 32, offset: 1088)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1328, file: !35, line: 785, baseType: !321, size: 32, offset: 1120)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1328, file: !35, line: 795, baseType: !1368, size: 64, offset: 1152)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1369, file: !35, line: 727, baseType: !524, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1369, file: !35, line: 728, baseType: !82, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1328, file: !35, line: 801, baseType: !420, size: 64, offset: 1216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1328, file: !35, line: 804, baseType: !739, size: 64, offset: 1280)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1328, file: !35, line: 806, baseType: !82, size: 32, offset: 1344)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1328, file: !35, line: 808, baseType: !301, size: 32, offset: 1376)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1328, file: !35, line: 823, baseType: !923, size: 320, offset: 1408)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1328, file: !35, line: 825, baseType: !271, size: 128, offset: 1728)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1328, file: !35, line: 845, baseType: !82, size: 32, offset: 1856)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1328, file: !35, line: 849, baseType: !420, size: 64, offset: 1920)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1328, file: !35, line: 850, baseType: !420, size: 64, offset: 1984)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1328, file: !35, line: 852, baseType: !420, size: 64, offset: 2048)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1328, file: !35, line: 853, baseType: !420, size: 64, offset: 2112)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1328, file: !35, line: 854, baseType: !741, size: 64, offset: 2176)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1328, file: !35, line: 855, baseType: !420, size: 64, offset: 2240)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1328, file: !35, line: 856, baseType: !420, size: 64, offset: 2304)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1328, file: !35, line: 857, baseType: !420, size: 64, offset: 2368)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1328, file: !35, line: 858, baseType: !420, size: 64, offset: 2432)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1328, file: !35, line: 865, baseType: !497, size: 32, offset: 2496)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1328, file: !35, line: 867, baseType: !301, size: 32, offset: 2528)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1328, file: !35, line: 869, baseType: !420, size: 64, offset: 2560)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1328, file: !35, line: 869, baseType: !420, size: 64, offset: 2624)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1328, file: !35, line: 869, baseType: !420, size: 64, offset: 2688)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1328, file: !35, line: 869, baseType: !420, size: 64, offset: 2752)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1328, file: !35, line: 870, baseType: !420, size: 64, offset: 2816)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1328, file: !35, line: 870, baseType: !420, size: 64, offset: 2880)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1328, file: !35, line: 870, baseType: !420, size: 64, offset: 2944)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1328, file: !35, line: 871, baseType: !420, size: 64, offset: 3008)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1328, file: !35, line: 871, baseType: !420, size: 64, offset: 3072)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1328, file: !35, line: 871, baseType: !420, size: 64, offset: 3136)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1328, file: !35, line: 871, baseType: !420, size: 64, offset: 3200)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1328, file: !35, line: 873, baseType: !1403, size: 3328, offset: 3264)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 3328, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 52)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1328, file: !35, line: 875, baseType: !1407, size: 1280, offset: 6592)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 1280, elements: !847)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1328, file: !35, line: 877, baseType: !1409, size: 64, offset: 7872)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1328, file: !35, line: 880, baseType: !1412, size: 1088, offset: 7936)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1413, line: 72, baseType: !1414)
!1413 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1413, line: 23, size: 1088, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1423, !1424, !1425, !1426, !1453, !1454, !1455}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1414, file: !1413, line: 28, baseType: !524, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1414, file: !1413, line: 38, baseType: !741, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1414, file: !1413, line: 40, baseType: !420, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1414, file: !1413, line: 43, baseType: !923, size: 320, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1414, file: !1413, line: 44, baseType: !1421, size: 64, offset: 512)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1413, line: 44, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !1413, line: 48, baseType: !420, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !1413, line: 59, baseType: !735, size: 256, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1414, file: !1413, line: 60, baseType: !442, size: 64, offset: 896)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1414, file: !1413, line: 61, baseType: !1427, size: 64, offset: 960)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1430, line: 13, size: 1216, elements: !1431)
!1430 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1429, file: !1430, line: 14, baseType: !442, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1429, file: !1430, line: 15, baseType: !420, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1429, file: !1430, line: 17, baseType: !420, size: 64, offset: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1429, file: !1430, line: 17, baseType: !420, size: 64, offset: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1429, file: !1430, line: 18, baseType: !420, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1429, file: !1430, line: 18, baseType: !420, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1429, file: !1430, line: 19, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1429, file: !1430, line: 21, baseType: !406, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1429, file: !1430, line: 23, baseType: !406, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1429, file: !1430, line: 24, baseType: !406, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1429, file: !1430, line: 25, baseType: !406, size: 64, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1429, file: !1430, line: 26, baseType: !406, size: 64, offset: 704)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1429, file: !1430, line: 27, baseType: !406, size: 64, offset: 768)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1429, file: !1430, line: 28, baseType: !406, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1429, file: !1430, line: 29, baseType: !406, size: 64, offset: 896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1429, file: !1430, line: 30, baseType: !406, size: 64, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1429, file: !1430, line: 31, baseType: !406, size: 64, offset: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1429, file: !1430, line: 32, baseType: !406, size: 64, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1429, file: !1430, line: 33, baseType: !406, size: 64, offset: 1152)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1414, file: !1413, line: 63, baseType: !321, size: 32, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1414, file: !1413, line: 69, baseType: !338, size: 16, offset: 1056)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1414, file: !1413, line: 70, baseType: !1456, size: 16, offset: 1072)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !330, line: 18, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !332, line: 23, baseType: !951)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1328, file: !35, line: 882, baseType: !420, size: 64, offset: 9024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1328, file: !35, line: 885, baseType: !301, size: 32, offset: 9088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1328, file: !35, line: 886, baseType: !1461, size: 64, offset: 9152)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1328, file: !35, line: 901, baseType: !1065, size: 64, offset: 9216)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1328, file: !35, line: 904, baseType: !1110, size: 64, offset: 9280)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1328, file: !35, line: 906, baseType: !1466, size: 64, offset: 9344)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1328, file: !35, line: 930, baseType: !321, size: 32, offset: 9408)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1328, file: !35, line: 933, baseType: !321, size: 32, offset: 9440)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1328, file: !35, line: 935, baseType: !1471, size: 64, offset: 9472)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !157, line: 103, size: 64, elements: !1472)
!1472 = !{!1473}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1471, file: !157, line: 104, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !157, line: 101, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1328, file: !35, line: 940, baseType: !739, size: 64, offset: 9536)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1328, file: !35, line: 942, baseType: !1478, size: 256, offset: 9600)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1479, line: 98, size: 256, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1478, file: !1479, line: 99, baseType: !739, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1478, file: !1479, line: 100, baseType: !271, size: 128, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1478, file: !1479, line: 101, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1479, line: 21, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1325, file: !35, line: 986, baseType: !1490, offset: 10240)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, elements: !866)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1312, file: !35, line: 640, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1359, line: 297, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1359, line: 297, size: 64, elements: !1494)
!1494 = !{!1495}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1493, file: !1359, line: 297, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1364, line: 19, baseType: !420)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !35, line: 646, baseType: !1498, size: 64, offset: 256)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !35, line: 646, size: 64, elements: !1499)
!1499 = !{!1500, !1503}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1498, file: !35, line: 647, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !420)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1498, file: !35, line: 648, baseType: !1502, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1312, file: !35, line: 666, baseType: !82, size: 32, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1312, file: !35, line: 667, baseType: !1506, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1507, file: !35, line: 580, baseType: !923, size: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1312, file: !35, line: 670, baseType: !982, size: 8, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1312, file: !35, line: 681, baseType: !1512, size: 256, offset: 512)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1312, file: !35, line: 678, size: 256, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1512, file: !35, line: 679, baseType: !915, size: 192, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1512, file: !35, line: 680, baseType: !420, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1312, file: !35, line: 689, baseType: !271, size: 128, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1312, file: !35, line: 691, baseType: !1518, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1312, file: !35, line: 694, baseType: !1521, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1305, line: 563, size: 1024, elements: !1524)
!1524 = !{!1525, !1529, !1530, !1534, !1538, !1542, !1543, !1547, !1551, !1555, !1556, !1557, !1561, !1565, !1571, !1575}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1523, file: !1305, line: 564, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1311}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1523, file: !1305, line: 569, baseType: !1526, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1523, file: !1305, line: 571, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!82, !1311, !420}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1523, file: !1305, line: 572, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!82, !1311}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1523, file: !1305, line: 578, baseType: !1539, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!82, !1311, !420, !420, !420}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1523, file: !1305, line: 580, baseType: !1299, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1523, file: !1305, line: 581, baseType: !1544, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!1302, !1303, !7}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1523, file: !1305, line: 582, baseType: !1548, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1302, !1303, !420, !420}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1523, file: !1305, line: 584, baseType: !1552, size: 64, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!420, !1311}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1523, file: !1305, line: 588, baseType: !1299, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1523, file: !1305, line: 591, baseType: !1299, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1523, file: !1305, line: 597, baseType: !1558, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!82, !1311, !420, !442, !82, !82}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1523, file: !1305, line: 603, baseType: !1562, size: 64, offset: 768)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!290, !1311}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1523, file: !1305, line: 613, baseType: !1566, size: 64, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!82, !1311, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1523, file: !1305, line: 625, baseType: !1572, size: 64, offset: 896)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1569, !1311, !420}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1523, file: !1305, line: 633, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1191, !1311, !420}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1312, file: !35, line: 697, baseType: !420, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1312, file: !35, line: 699, baseType: !1110, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1312, file: !35, line: 700, baseType: !442, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1312, file: !35, line: 711, baseType: !739, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1312, file: !35, line: 717, baseType: !1569, size: 64, offset: 1280)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1312, file: !35, line: 722, baseType: !1585, offset: 1344)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !654)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1308, file: !1305, line: 515, baseType: !1587, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !272, line: 154, baseType: !7)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1308, file: !1305, line: 516, baseType: !420, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1308, file: !1305, line: 517, baseType: !420, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1308, file: !1305, line: 518, baseType: !420, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1304, file: !1305, line: 520, baseType: !34, size: 32, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1304, file: !1305, line: 522, baseType: !1593, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1364, line: 22, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 22, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1595, file: !1364, line: 22, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1364, line: 15, baseType: !420)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1304, file: !1305, line: 524, baseType: !1600, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1359, line: 372, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1359, line: 372, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1602, file: !1359, line: 372, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1364, line: 16, baseType: !420)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1305, line: 527, baseType: !1607, size: 64, offset: 512)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !1305, line: 527, size: 64, elements: !1608)
!1608 = !{!1609, !1615}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1607, file: !1305, line: 528, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1364, line: 21, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 21, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1611, file: !1364, line: 21, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1364, line: 14, baseType: !420)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1607, file: !1305, line: 529, baseType: !1594, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1304, file: !1305, line: 534, baseType: !1191, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1304, file: !1305, line: 535, baseType: !1191, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1304, file: !1305, line: 541, baseType: !1619, size: 64, offset: 704)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1304, file: !1305, line: 545, baseType: !1621, size: 64, offset: 768)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1304, file: !1305, line: 549, baseType: !1623, size: 64, offset: 832)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1359, line: 520, baseType: !1191)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1292, file: !27, line: 100, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!82, !1241, !420, !420, !82}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1242, file: !27, line: 134, baseType: !442, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1242, file: !27, line: 135, baseType: !82, size: 32, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !27, line: 136, baseType: !1631, size: 128, offset: 1088)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1242, file: !27, line: 136, size: 128, elements: !1632)
!1632 = !{!1633, !1639}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1631, file: !27, line: 137, baseType: !1634, size: 128)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1635, line: 6, size: 128, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1634, file: !1635, line: 7, baseType: !524, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1634, file: !1635, line: 8, baseType: !524, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !27, line: 138, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !27, line: 138, elements: !1641)
!1641 = !{!1642, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1640, file: !27, line: 138, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !27, line: 138, elements: !654)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1640, file: !27, line: 138, baseType: !1645)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, elements: !866)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1238, file: !35, line: 147, baseType: !442, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1196, file: !35, line: 161, baseType: !793, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !35, line: 164, baseType: !1649, size: 32, offset: 384)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !35, line: 164, size: 32, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1649, file: !35, line: 169, baseType: !321, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1649, file: !35, line: 177, baseType: !7, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1192, file: !35, line: 181, baseType: !321, size: 32, offset: 416)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1187, file: !1188, line: 33, baseType: !7, size: 32, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1187, file: !1188, line: 34, baseType: !7, size: 32, offset: 96)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1172, file: !1147, line: 74, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1659, line: 296, size: 128, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1658, file: !1659, line: 297, baseType: !301, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1658, file: !1659, line: 299, baseType: !1587, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1658, file: !1659, line: 300, baseType: !442, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1172, file: !1147, line: 75, baseType: !442, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1169, file: !1147, line: 77, baseType: !417, size: 64, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1147, line: 80, baseType: !1667, size: 64, offset: 256)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 80, size: 64, elements: !1668)
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1667, file: !1147, line: 81, baseType: !420, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1667, file: !1147, line: 82, baseType: !612, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1103, file: !14, line: 1920, baseType: !1120, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1103, file: !14, line: 1921, baseType: !1673, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!82, !1123, !1676, !7}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !121, line: 1559, size: 192, elements: !1678)
!1678 = !{!1679, !3149, !3150}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1677, file: !121, line: 1560, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !51, line: 80, size: 1984, elements: !1682)
!1682 = !{!1683, !3071, !3072, !3073, !3074, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3103, !3108, !3137, !3146, !3147, !3148}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1681, file: !51, line: 81, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !121, line: 391, size: 7296, elements: !1686)
!1686 = !{!1687, !1688, !1691, !1692, !1695, !1698, !1699, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3045, !3046, !3047, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1685, file: !121, line: 392, baseType: !1680, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1685, file: !121, line: 393, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !121, line: 30, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1685, file: !121, line: 395, baseType: !1255, size: 128, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1685, file: !121, line: 397, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !121, line: 39, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1685, file: !121, line: 398, baseType: !1696, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !121, line: 38, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !1685, file: !121, line: 399, baseType: !735, size: 256, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1685, file: !121, line: 401, baseType: !1700, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !51, line: 537, size: 1152, elements: !1703)
!1703 = !{!1704, !1842, !1846, !1850, !1854, !1858, !1862, !1866, !1870, !1874, !1878, !1882, !1886, !1996, !2000, !2001, !2005, !2009}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !1702, file: !51, line: 541, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!1708, !1709, !1836}
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !219, line: 97, baseType: !329)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !51, line: 288, size: 4096, elements: !1711)
!1711 = !{!1712, !1718, !1738, !1748, !1749, !1750, !1751, !1752, !1753, !1756, !1757, !1774, !1777, !1778, !1779, !1780, !1782, !1783, !1796, !1797, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835}
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1710, file: !51, line: 289, baseType: !1713, size: 512, align: 512)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1710, file: !51, line: 289, size: 512, align: 512, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1713, file: !51, line: 291, baseType: !301, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1713, file: !51, line: 299, baseType: !271, size: 128, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1713, file: !51, line: 304, baseType: !420, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !1710, file: !51, line: 310, baseType: !1719, size: 704, offset: 512)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1479, line: 111, size: 704, elements: !1720)
!1720 = !{!1721, !1722, !1734, !1737}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1719, file: !1479, line: 112, baseType: !1478, size: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1719, file: !1479, line: 113, baseType: !1723, size: 320, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1724, line: 11, size: 320, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1725 = !{!1726, !1727, !1728, !1733}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1723, file: !1724, line: 16, baseType: !646, size: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1723, file: !1724, line: 17, baseType: !420, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1723, file: !1724, line: 18, baseType: !1729, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 19, baseType: !520, size: 32, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1719, file: !1479, line: 116, baseType: !1735, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1479, line: 18, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1719, file: !1479, line: 117, baseType: !82, size: 32, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1710, file: !51, line: 312, baseType: !1739, size: 64, offset: 1216)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1740, line: 913, baseType: !1741)
!1740 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1742, size: 64, elements: !1746)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1740, line: 19, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1742, file: !1740, line: 19, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 1)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !1710, file: !51, line: 317, baseType: !82, size: 32, offset: 1280)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !1710, file: !51, line: 322, baseType: !82, size: 32, offset: 1312)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1710, file: !51, line: 325, baseType: !420, size: 64, offset: 1344)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !1710, file: !51, line: 331, baseType: !442, size: 64, offset: 1408)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1710, file: !51, line: 335, baseType: !1684, size: 64, offset: 1472)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1710, file: !51, line: 337, baseType: !1754, size: 64, offset: 1536)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !121, line: 35, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1710, file: !51, line: 343, baseType: !442, size: 64, offset: 1600)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !1710, file: !51, line: 349, baseType: !1758, size: 256, offset: 1664)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !1759, line: 52, size: 256, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1772}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1758, file: !1759, line: 56, baseType: !7, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !1758, file: !1759, line: 61, baseType: !7, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !1758, file: !1759, line: 66, baseType: !7, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !1758, file: !1759, line: 71, baseType: !982, size: 8, offset: 96)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1758, file: !1759, line: 76, baseType: !1766, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !1759, line: 29, size: 1024, align: 512, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1767, file: !1759, line: 33, baseType: !420, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !1767, file: !1759, line: 38, baseType: !420, size: 64, align: 512, offset: 512)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !1767, file: !1759, line: 43, baseType: !748, size: 32, offset: 576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !1758, file: !1759, line: 84, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !1710, file: !51, line: 355, baseType: !1775, size: 64, offset: 1920)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !121, line: 404, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !1710, file: !51, line: 361, baseType: !7, size: 32, offset: 1984)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1710, file: !51, line: 364, baseType: !340, size: 16, offset: 2016)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !1710, file: !51, line: 366, baseType: !340, size: 16, offset: 2032)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !1710, file: !51, line: 368, baseType: !1781, size: 64, offset: 2048)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !1710, file: !51, line: 371, baseType: !301, size: 32, offset: 2112)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !1710, file: !51, line: 376, baseType: !1784, size: 320, offset: 2176)
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !852, line: 14, baseType: !1785)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !852, line: 30, size: 320, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1795}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1785, file: !852, line: 31, baseType: !7, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1785, file: !852, line: 32, baseType: !442, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1785, file: !852, line: 33, baseType: !1790, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !852, line: 16, baseType: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!82, !1794, !7, !82, !442}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1785, file: !852, line: 34, baseType: !271, size: 128, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !1710, file: !51, line: 382, baseType: !321, size: 32, offset: 2496)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1710, file: !51, line: 388, baseType: !1798, size: 64, offset: 2560)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !51, line: 735, size: 1472, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1804, !1819, !1820, !1822, !1823, !1824}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !1799, file: !51, line: 736, baseType: !7, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !1799, file: !51, line: 737, baseType: !7, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !1799, file: !51, line: 738, baseType: !7, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !1799, file: !51, line: 740, baseType: !1805, size: 512, offset: 128)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !1759, line: 109, size: 512, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1810, !1815, !1816, !1817, !1818}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !1805, file: !1759, line: 113, baseType: !1758, size: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !1805, file: !1759, line: 119, baseType: !7, size: 32, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !1805, file: !1759, line: 124, baseType: !321, size: 32, offset: 288)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1805, file: !1759, line: 129, baseType: !1811, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !1759, line: 93, size: 512, align: 512, elements: !1813)
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1812, file: !1759, line: 97, baseType: !851, size: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !1805, file: !1759, line: 134, baseType: !321, size: 32, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !1805, file: !1759, line: 140, baseType: !7, size: 32, offset: 416)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !1805, file: !1759, line: 146, baseType: !321, size: 32, offset: 448)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !1805, file: !1759, line: 151, baseType: !321, size: 32, offset: 480)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !1799, file: !51, line: 741, baseType: !1805, size: 512, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !1799, file: !51, line: 743, baseType: !1821, size: 64, offset: 1152)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !1799, file: !51, line: 744, baseType: !1821, size: 64, offset: 1216)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !1799, file: !51, line: 745, baseType: !271, size: 128, offset: 1280)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1799, file: !51, line: 751, baseType: !301, size: 32, offset: 1408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !1710, file: !51, line: 394, baseType: !1798, size: 64, offset: 2624)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1710, file: !51, line: 397, baseType: !420, size: 64, offset: 2688)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1710, file: !51, line: 400, baseType: !7, size: 32, offset: 2752)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !1710, file: !51, line: 402, baseType: !7, size: 32, offset: 2784)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !1710, file: !51, line: 408, baseType: !321, size: 32, offset: 2816)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !1710, file: !51, line: 411, baseType: !646, size: 128, offset: 2880)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !1710, file: !51, line: 413, baseType: !646, size: 128, offset: 3008)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1710, file: !51, line: 415, baseType: !286, size: 512, offset: 3136)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1710, file: !51, line: 422, baseType: !486, size: 64, offset: 3648)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1710, file: !51, line: 424, baseType: !486, size: 64, offset: 3712)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !1710, file: !51, line: 431, baseType: !271, size: 128, offset: 3776)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !51, line: 526, size: 128, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !1838, file: !51, line: 527, baseType: !1680, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1838, file: !51, line: 528, baseType: !982, size: 8, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !1702, file: !51, line: 551, baseType: !1843, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1709}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !1702, file: !51, line: 559, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !1821}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !1702, file: !51, line: 567, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!82, !1684}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !1702, file: !51, line: 572, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1684, !82}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !1702, file: !51, line: 577, baseType: !1859, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1680, !82}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !1702, file: !51, line: 581, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!82, !1680}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1702, file: !51, line: 586, baseType: !1867, size: 64, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!50, !1680}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1702, file: !51, line: 591, baseType: !1871, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!82, !1709, !1676}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1702, file: !51, line: 596, baseType: !1875, size: 64, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !1680}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1702, file: !51, line: 603, baseType: !1879, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!82, !1709, !442, !7}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1702, file: !51, line: 607, baseType: !1883, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1709, !7}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !1702, file: !51, line: 616, baseType: !1887, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!82, !1890, !1680, !7, !7}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !51, line: 498, size: 1344, elements: !1892)
!1892 = !{!1893, !1894, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1912, !1913, !1914, !1915}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1891, file: !51, line: 499, baseType: !1700, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1891, file: !51, line: 500, baseType: !1895, size: 384, offset: 64)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1896, size: 384, elements: !371)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !51, line: 444, size: 128, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !1896, file: !51, line: 445, baseType: !1773, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !1896, file: !51, line: 446, baseType: !7, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !1896, file: !51, line: 447, baseType: !7, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !1891, file: !51, line: 501, baseType: !7, size: 32, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1891, file: !51, line: 502, baseType: !7, size: 32, offset: 480)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1891, file: !51, line: 503, baseType: !7, size: 32, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !1891, file: !51, line: 504, baseType: !7, size: 32, offset: 544)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1891, file: !51, line: 505, baseType: !7, size: 32, offset: 576)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1891, file: !51, line: 506, baseType: !82, size: 32, offset: 608)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1891, file: !51, line: 507, baseType: !7, size: 32, offset: 640)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1891, file: !51, line: 508, baseType: !7, size: 32, offset: 672)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1891, file: !51, line: 509, baseType: !442, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1891, file: !51, line: 511, baseType: !1911, size: 64, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !1891, file: !51, line: 513, baseType: !1798, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !1891, file: !51, line: 515, baseType: !735, size: 256, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !1891, file: !51, line: 516, baseType: !271, size: 128, offset: 1152)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !1891, file: !51, line: 517, baseType: !1916, size: 64, offset: 1280)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1918, line: 96, size: 192, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1919 = !{!1920, !1921, !1966, !1968}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1917, file: !1918, line: 97, baseType: !7, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1917, file: !1918, line: 98, baseType: !1922, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1918, line: 24, size: 3072, elements: !1924)
!1924 = !{!1925, !1929, !1930, !1931, !1932, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1963, !1964, !1965}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1923, file: !1918, line: 26, baseType: !1926, size: 128)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 128, elements: !1927)
!1927 = !{!1928}
!1928 = !DISubrange(count: 2)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1923, file: !1918, line: 27, baseType: !1926, size: 128, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1923, file: !1918, line: 28, baseType: !82, size: 32, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1923, file: !1918, line: 31, baseType: !301, size: 32, align: 512, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1923, file: !1918, line: 32, baseType: !1933, size: 960, offset: 576)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1934, line: 206, size: 960, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1935 = !{!1936, !1937, !1940, !1942, !1943, !1945}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1933, file: !1934, line: 207, baseType: !796, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1933, file: !1934, line: 208, baseType: !1938, size: 256, offset: 64)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1939, size: 256, elements: !847)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1933, file: !1934, line: 209, baseType: !1941, size: 256, offset: 320)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !847)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1933, file: !1934, line: 213, baseType: !406, size: 64, offset: 576)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1933, file: !1934, line: 215, baseType: !1944, size: 256, offset: 640)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 256, elements: !847)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !1934, line: 216, baseType: !329, size: 8, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1923, file: !1918, line: 33, baseType: !420, size: 64, offset: 1536)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1923, file: !1918, line: 34, baseType: !420, size: 64, offset: 1600)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1923, file: !1918, line: 35, baseType: !982, size: 8, offset: 1664)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1923, file: !1918, line: 36, baseType: !1723, size: 320, offset: 1728)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1923, file: !1918, line: 37, baseType: !1478, size: 256, offset: 2048)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1923, file: !1918, line: 38, baseType: !793, size: 128, align: 64, offset: 2304)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1923, file: !1918, line: 39, baseType: !1953, size: 64, offset: 2432)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1918, line: 49, size: 768, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1954, file: !1918, line: 50, baseType: !301, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1954, file: !1918, line: 51, baseType: !1941, size: 256, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1954, file: !1918, line: 53, baseType: !1941, size: 256, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1954, file: !1918, line: 54, baseType: !420, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1954, file: !1918, line: 55, baseType: !1953, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1954, file: !1918, line: 56, baseType: !82, size: 32, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1954, file: !1918, line: 57, baseType: !82, size: 32, offset: 736)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1923, file: !1918, line: 40, baseType: !420, size: 64, offset: 2496)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1923, file: !1918, line: 42, baseType: !82, size: 32, offset: 2560)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1923, file: !1918, line: 43, baseType: !1916, size: 64, offset: 2624)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1917, file: !1918, line: 99, baseType: !1967, offset: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !653, line: 211, elements: !654)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1917, file: !1918, line: 100, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1918, line: 63, size: 3008, elements: !1971)
!1971 = !{!1972, !1973, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1970, file: !1918, line: 64, baseType: !1953, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1970, file: !1918, line: 65, baseType: !1974, size: 192, offset: 64)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 192, elements: !371)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1970, file: !1918, line: 67, baseType: !82, size: 32, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1970, file: !1918, line: 68, baseType: !735, size: 256, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !1918, line: 69, baseType: !301, size: 32, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1970, file: !1918, line: 70, baseType: !735, size: 256, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1970, file: !1918, line: 71, baseType: !420, size: 64, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1970, file: !1918, line: 72, baseType: !420, size: 64, offset: 960)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1970, file: !1918, line: 73, baseType: !420, size: 64, offset: 1024)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1970, file: !1918, line: 74, baseType: !420, size: 64, offset: 1088)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1970, file: !1918, line: 75, baseType: !420, size: 64, offset: 1152)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1970, file: !1918, line: 76, baseType: !420, size: 64, offset: 1216)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1970, file: !1918, line: 77, baseType: !420, size: 64, offset: 1280)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1970, file: !1918, line: 78, baseType: !420, size: 64, offset: 1344)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1970, file: !1918, line: 79, baseType: !982, size: 8, offset: 1408)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1970, file: !1918, line: 80, baseType: !420, size: 64, offset: 1472)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1970, file: !1918, line: 81, baseType: !735, size: 256, offset: 1536)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1970, file: !1918, line: 82, baseType: !1276, size: 256, offset: 1792)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1970, file: !1918, line: 84, baseType: !321, size: 32, offset: 2048)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1970, file: !1918, line: 87, baseType: !420, size: 64, offset: 2112)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1970, file: !1918, line: 88, baseType: !420, size: 64, offset: 2176)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1970, file: !1918, line: 89, baseType: !1719, size: 704, offset: 2240)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1970, file: !1918, line: 90, baseType: !1916, size: 64, offset: 2944)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !1702, file: !51, line: 621, baseType: !1997, size: 64, offset: 832)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1890, !1680, !7}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !1702, file: !51, line: 628, baseType: !1875, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1702, file: !51, line: 633, baseType: !2002, size: 64, offset: 960)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!982, !1684}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !1702, file: !51, line: 639, baseType: !2006, size: 64, offset: 1024)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1890}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !1702, file: !51, line: 646, baseType: !2010, size: 64, offset: 1088)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !723, !1680}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1685, file: !121, line: 404, baseType: !1775, size: 64, offset: 704)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1685, file: !121, line: 406, baseType: !7, size: 32, offset: 768)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !1685, file: !121, line: 409, baseType: !1658, size: 128, offset: 832)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1685, file: !121, line: 410, baseType: !7, size: 32, offset: 960)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1685, file: !121, line: 416, baseType: !442, size: 64, offset: 1024)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1685, file: !121, line: 421, baseType: !420, size: 64, offset: 1088)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1685, file: !121, line: 426, baseType: !321, size: 32, offset: 1152)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1685, file: !121, line: 432, baseType: !82, size: 32, offset: 1184)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1685, file: !121, line: 434, baseType: !301, size: 32, offset: 1216)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !1685, file: !121, line: 436, baseType: !2023, size: 64, offset: 1280)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !121, line: 128, size: 4544, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2031, !2032, !2033, !2034, !2643, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2832, !2833, !2834, !2835, !2838, !2839, !2842, !2975, !2976, !2979, !2980, !2981, !2982}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2024, file: !121, line: 133, baseType: !82, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2024, file: !121, line: 134, baseType: !82, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2024, file: !121, line: 135, baseType: !82, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2024, file: !121, line: 137, baseType: !2030, size: 256, offset: 96)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, elements: !533)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2024, file: !121, line: 139, baseType: !340, size: 16, offset: 352)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2024, file: !121, line: 140, baseType: !340, size: 16, offset: 368)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2024, file: !121, line: 142, baseType: !1658, size: 128, offset: 384)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2024, file: !121, line: 143, baseType: !2035, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !219, line: 40, size: 7424, elements: !2037)
!2037 = !{!2038, !2040, !2041, !2042, !2043, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2086, !2087}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2036, file: !219, line: 41, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !272, line: 131, baseType: !524)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2036, file: !219, line: 42, baseType: !2039, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2036, file: !219, line: 43, baseType: !2023, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2036, file: !219, line: 44, baseType: !1684, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2036, file: !219, line: 45, baseType: !2044, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !219, line: 45, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2036, file: !219, line: 46, baseType: !420, size: 64, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2036, file: !219, line: 47, baseType: !982, size: 8, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2036, file: !219, line: 48, baseType: !329, size: 8, offset: 392)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2036, file: !219, line: 49, baseType: !982, size: 8, offset: 400)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2036, file: !219, line: 50, baseType: !982, size: 8, offset: 408)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2036, file: !219, line: 51, baseType: !607, size: 32, offset: 416)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2036, file: !219, line: 52, baseType: !321, size: 32, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2036, file: !219, line: 53, baseType: !301, size: 32, offset: 480)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2036, file: !219, line: 54, baseType: !451, size: 64, offset: 512)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2036, file: !219, line: 55, baseType: !442, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2036, file: !219, line: 56, baseType: !442, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2036, file: !219, line: 57, baseType: !2058, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !121, line: 1477, size: 128, elements: !2061)
!2061 = !{!2062, !2066}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !2060, file: !121, line: 1478, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !2035, !982}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2060, file: !121, line: 1483, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !2035}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2036, file: !219, line: 58, baseType: !735, size: 256, offset: 768)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2036, file: !219, line: 60, baseType: !82, size: 32, offset: 1024)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2036, file: !219, line: 61, baseType: !82, size: 32, offset: 1056)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2036, file: !219, line: 62, baseType: !294, size: 64, offset: 1088)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2036, file: !219, line: 65, baseType: !735, size: 256, offset: 1152)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2036, file: !219, line: 66, baseType: !602, size: 64, offset: 1408)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2036, file: !219, line: 68, baseType: !2077, size: 64, offset: 1472)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !121, line: 63, size: 808, elements: !2079)
!2079 = !{!2080, !2084}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2078, file: !121, line: 64, baseType: !2081, size: 296)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 296, elements: !2082)
!2082 = !{!2083}
!2083 = !DISubrange(count: 37)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !2078, file: !121, line: 65, baseType: !2085, size: 512, offset: 296)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 512, elements: !375)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2036, file: !219, line: 72, baseType: !982, size: 8, offset: 1536)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2036, file: !219, line: 77, baseType: !2088, size: 5824, offset: 1600)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !62, line: 705, size: 5824, elements: !2089)
!2089 = !{!2090, !2091, !2093, !2096, !2097, !2152, !2222, !2223, !2224, !2225, !2226, !2233, !2400, !2413, !2423, !2427, !2429, !2430, !2431, !2435, !2442, !2443, !2446, !2449, !2453, !2558, !2559, !2560, !2561, !2562, !2563, !2620, !2621, !2622, !2625, !2628, !2637, !2638, !2639, !2640, !2641, !2642}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2088, file: !62, line: 706, baseType: !286, size: 512)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2088, file: !62, line: 707, baseType: !2092, size: 64, offset: 512)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2088, file: !62, line: 709, baseType: !2094, size: 64, offset: 576)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !62, line: 37, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2088, file: !62, line: 711, baseType: !290, size: 64, offset: 640)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2088, file: !62, line: 712, baseType: !2098, size: 64, offset: 704)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2100)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !62, line: 89, size: 384, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2110, !2117, !2121}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2100, file: !62, line: 90, baseType: !290, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2100, file: !62, line: 91, baseType: !422, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2100, file: !62, line: 92, baseType: !2105, size: 64, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!82, !2108, !365}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2100, file: !62, line: 93, baseType: !2111, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!370, !2108, !2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2100, file: !62, line: 95, baseType: !2118, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !2092}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2100, file: !62, line: 97, baseType: !2122, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 286, size: 1472, elements: !2125)
!2125 = !{!2126, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2124, file: !74, line: 287, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!82, !2092}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2124, file: !74, line: 288, baseType: !2118, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2124, file: !74, line: 289, baseType: !2127, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2124, file: !74, line: 290, baseType: !2127, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2124, file: !74, line: 291, baseType: !2127, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2124, file: !74, line: 292, baseType: !2127, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2124, file: !74, line: 293, baseType: !2127, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2124, file: !74, line: 294, baseType: !2127, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2124, file: !74, line: 295, baseType: !2127, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2124, file: !74, line: 296, baseType: !2127, size: 64, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2124, file: !74, line: 297, baseType: !2127, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2124, file: !74, line: 298, baseType: !2127, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2124, file: !74, line: 299, baseType: !2127, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2124, file: !74, line: 300, baseType: !2127, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2124, file: !74, line: 301, baseType: !2127, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2124, file: !74, line: 302, baseType: !2127, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2124, file: !74, line: 303, baseType: !2127, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2124, file: !74, line: 304, baseType: !2127, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2124, file: !74, line: 305, baseType: !2127, size: 64, offset: 1152)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2124, file: !74, line: 306, baseType: !2127, size: 64, offset: 1216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2124, file: !74, line: 307, baseType: !2127, size: 64, offset: 1280)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2124, file: !74, line: 308, baseType: !2127, size: 64, offset: 1344)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2124, file: !74, line: 309, baseType: !2127, size: 64, offset: 1408)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2088, file: !62, line: 714, baseType: !2153, size: 64, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2156, line: 80, size: 1344, elements: !2157)
!2156 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2221}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2155, file: !2156, line: 81, baseType: !290, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2155, file: !2156, line: 82, baseType: !290, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2155, file: !2156, line: 83, baseType: !422, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2155, file: !2156, line: 84, baseType: !422, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2155, file: !2156, line: 85, baseType: !422, size: 64, offset: 256)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2155, file: !2156, line: 87, baseType: !2164, size: 64, offset: 320)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!82, !2092, !2167}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !56, line: 96, size: 1152, elements: !2169)
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176, !2180, !2184, !2185, !2186, !2187, !2188, !2196, !2197, !2198, !2199, !2200, !2201}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2168, file: !56, line: 97, baseType: !290, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2168, file: !56, line: 98, baseType: !2153, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2168, file: !56, line: 100, baseType: !266, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2168, file: !56, line: 101, baseType: !290, size: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2168, file: !56, line: 103, baseType: !982, size: 8, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2168, file: !56, line: 104, baseType: !55, size: 32, offset: 288)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2168, file: !56, line: 106, baseType: !2177, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2179)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !56, line: 106, flags: DIFlagFwdDecl)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2168, file: !56, line: 107, baseType: !2181, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2183)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !56, line: 107, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2168, file: !56, line: 109, baseType: !2127, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2168, file: !56, line: 110, baseType: !2118, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2168, file: !56, line: 111, baseType: !2127, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2168, file: !56, line: 112, baseType: !2118, size: 64, offset: 640)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2168, file: !56, line: 113, baseType: !2189, size: 64, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!82, !2092, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 60, baseType: !2193)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 58, size: 32, elements: !2194)
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2193, file: !74, line: 59, baseType: !82, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2168, file: !56, line: 114, baseType: !2127, size: 64, offset: 768)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2168, file: !56, line: 115, baseType: !422, size: 64, offset: 832)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2168, file: !56, line: 116, baseType: !422, size: 64, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2168, file: !56, line: 118, baseType: !2122, size: 64, offset: 960)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2168, file: !56, line: 119, baseType: !2118, size: 64, offset: 1024)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2168, file: !56, line: 121, baseType: !2202, size: 64, offset: 1088)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !56, line: 121, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2155, file: !2156, line: 88, baseType: !2105, size: 64, offset: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2155, file: !2156, line: 89, baseType: !2127, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2155, file: !2156, line: 90, baseType: !2118, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2155, file: !2156, line: 91, baseType: !2118, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2155, file: !2156, line: 92, baseType: !2118, size: 64, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2155, file: !2156, line: 94, baseType: !2127, size: 64, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2155, file: !2156, line: 95, baseType: !2127, size: 64, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2155, file: !2156, line: 97, baseType: !2189, size: 64, offset: 832)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2155, file: !2156, line: 98, baseType: !2127, size: 64, offset: 896)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2155, file: !2156, line: 100, baseType: !2127, size: 64, offset: 960)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2155, file: !2156, line: 102, baseType: !2127, size: 64, offset: 1024)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2155, file: !2156, line: 103, baseType: !2118, size: 64, offset: 1088)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2155, file: !2156, line: 105, baseType: !2122, size: 64, offset: 1152)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2155, file: !2156, line: 107, baseType: !2218, size: 64, offset: 1216)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2156, line: 107, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2155, file: !2156, line: 109, baseType: !982, size: 8, offset: 1280)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2088, file: !62, line: 715, baseType: !2167, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2088, file: !62, line: 717, baseType: !442, size: 64, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2088, file: !62, line: 719, baseType: !442, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2088, file: !62, line: 721, baseType: !735, size: 256, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2088, file: !62, line: 725, baseType: !2227, size: 448, offset: 1280)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !62, line: 517, size: 448, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2227, file: !62, line: 518, baseType: !271, size: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2227, file: !62, line: 519, baseType: !271, size: 128, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2227, file: !62, line: 520, baseType: !271, size: 128, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2227, file: !62, line: 521, baseType: !61, size: 32, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2088, file: !62, line: 726, baseType: !2234, size: 2496, offset: 1728)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 663, size: 2496, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2280, !2281, !2282, !2283, !2284, !2285, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2393, !2397}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2234, file: !74, line: 664, baseType: !2192, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2234, file: !74, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2234, file: !74, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2234, file: !74, line: 667, baseType: !982, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2234, file: !74, line: 668, baseType: !982, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2234, file: !74, line: 669, baseType: !982, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2234, file: !74, line: 670, baseType: !982, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2234, file: !74, line: 671, baseType: !982, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2234, file: !74, line: 672, baseType: !982, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2234, file: !74, line: 673, baseType: !982, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2234, file: !74, line: 674, baseType: !982, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2234, file: !74, line: 675, baseType: !520, size: 32, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2234, file: !74, line: 676, baseType: !301, size: 32, offset: 96)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2234, file: !74, line: 678, baseType: !271, size: 128, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2234, file: !74, line: 679, baseType: !1276, size: 256, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2234, file: !74, line: 680, baseType: !2252, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2254, line: 43, size: 1536, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2263, !2264, !2265, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2253, file: !2254, line: 44, baseType: !290, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2253, file: !2254, line: 45, baseType: !82, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2253, file: !2254, line: 46, baseType: !271, size: 128, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2253, file: !2254, line: 47, baseType: !301, size: 32, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2253, file: !2254, line: 48, baseType: !2261, size: 64, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 629, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2253, file: !2254, line: 49, baseType: !1723, size: 320, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2253, file: !2254, line: 50, baseType: !420, size: 64, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2253, file: !2254, line: 51, baseType: !2266, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2267, line: 29, baseType: !745)
!2267 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2253, file: !2254, line: 52, baseType: !2266, size: 64, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2253, file: !2254, line: 53, baseType: !2266, size: 64, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2253, file: !2254, line: 54, baseType: !2266, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2253, file: !2254, line: 55, baseType: !2266, size: 64, offset: 1024)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2253, file: !2254, line: 56, baseType: !420, size: 64, offset: 1088)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2253, file: !2254, line: 57, baseType: !420, size: 64, offset: 1152)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2253, file: !2254, line: 58, baseType: !420, size: 64, offset: 1216)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2253, file: !2254, line: 59, baseType: !420, size: 64, offset: 1280)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2253, file: !2254, line: 60, baseType: !420, size: 64, offset: 1344)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2253, file: !2254, line: 61, baseType: !2092, size: 64, offset: 1408)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2253, file: !2254, line: 62, baseType: !982, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2253, file: !2254, line: 63, baseType: !982, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2234, file: !74, line: 681, baseType: !982, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2234, file: !74, line: 682, baseType: !982, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2234, file: !74, line: 683, baseType: !982, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2234, file: !74, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2234, file: !74, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2234, file: !74, line: 690, baseType: !2286, size: 512, offset: 640)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !69, line: 118, size: 512, elements: !2287)
!2287 = !{!2288, !2294, !2295, !2300, !2355, !2356, !2357, !2358}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2286, file: !69, line: 119, baseType: !2289, size: 256)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2290, line: 9, size: 256, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2289, file: !2290, line: 10, baseType: !915, size: 192, align: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2289, file: !2290, line: 11, baseType: !2266, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2286, file: !69, line: 120, baseType: !2266, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2286, file: !69, line: 121, baseType: !2296, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!68, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2286, file: !69, line: 122, baseType: !2301, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !69, line: 159, size: 512, align: 512, elements: !2303)
!2303 = !{!2304, !2329, !2330, !2333, !2338, !2339, !2350, !2354}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2302, file: !69, line: 160, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !69, line: 215, size: 4608, align: 512, elements: !2307)
!2307 = !{!2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2306, file: !69, line: 216, baseType: !748, size: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2306, file: !69, line: 217, baseType: !7, size: 32, offset: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2306, file: !69, line: 218, baseType: !7, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2306, file: !69, line: 219, baseType: !7, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2306, file: !69, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2306, file: !69, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2306, file: !69, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2306, file: !69, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2306, file: !69, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2306, file: !69, line: 226, baseType: !7, size: 32, offset: 160)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2306, file: !69, line: 227, baseType: !340, size: 16, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2306, file: !69, line: 228, baseType: !340, size: 16, offset: 208)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2306, file: !69, line: 229, baseType: !7, size: 32, offset: 224)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2306, file: !69, line: 235, baseType: !2266, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2306, file: !69, line: 236, baseType: !2299, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2306, file: !69, line: 237, baseType: !2266, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2306, file: !69, line: 238, baseType: !2299, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2306, file: !69, line: 239, baseType: !2326, size: 4096, align: 512, offset: 512)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 4096, align: 512, elements: !2327)
!2327 = !{!2328}
!2328 = !DISubrange(count: 8)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2302, file: !69, line: 161, baseType: !7, size: 32, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2302, file: !69, line: 162, baseType: !2331, size: 32, offset: 96)
!2331 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !272, line: 32, baseType: !2332)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !404, line: 96, baseType: !82)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2302, file: !69, line: 163, baseType: !2334, size: 32, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !493, line: 274, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !493, line: 274, size: 32, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2335, file: !493, line: 274, baseType: !497, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2302, file: !69, line: 164, baseType: !2299, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2302, file: !69, line: 165, baseType: !2340, size: 128, offset: 256)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2290, line: 14, size: 128, elements: !2341)
!2341 = !{!2342}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2340, file: !2290, line: 15, baseType: !2343, size: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !916, line: 26, size: 128, elements: !2344)
!2344 = !{!2345, !2349}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2343, file: !916, line: 27, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !916, line: 12, size: 64, elements: !2347)
!2347 = !{!2348}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2346, file: !916, line: 13, baseType: !920, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2343, file: !916, line: 28, baseType: !920, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2302, file: !69, line: 166, baseType: !2351, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2266}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2302, file: !69, line: 167, baseType: !2266, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2286, file: !69, line: 123, baseType: !329, size: 8, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2286, file: !69, line: 124, baseType: !329, size: 8, offset: 456)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2286, file: !69, line: 125, baseType: !329, size: 8, offset: 464)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2286, file: !69, line: 126, baseType: !329, size: 8, offset: 472)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2234, file: !74, line: 691, baseType: !524, size: 64, offset: 1152)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2234, file: !74, line: 692, baseType: !1478, size: 256, offset: 1216)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2234, file: !74, line: 693, baseType: !851, size: 192, offset: 1472)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2234, file: !74, line: 694, baseType: !2261, size: 64, offset: 1664)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2234, file: !74, line: 695, baseType: !321, size: 32, offset: 1728)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2234, file: !74, line: 696, baseType: !321, size: 32, offset: 1760)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2234, file: !74, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2234, file: !74, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2234, file: !74, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2234, file: !74, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2234, file: !74, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2234, file: !74, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2234, file: !74, line: 703, baseType: !982, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2234, file: !74, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2234, file: !74, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2234, file: !74, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2234, file: !74, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2234, file: !74, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2234, file: !74, line: 709, baseType: !7, size: 32, offset: 1824)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2234, file: !74, line: 710, baseType: !73, size: 32, offset: 1856)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2234, file: !74, line: 711, baseType: !81, size: 32, offset: 1888)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2234, file: !74, line: 712, baseType: !81, size: 32, offset: 1920)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2234, file: !74, line: 713, baseType: !82, size: 32, offset: 1952)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2234, file: !74, line: 714, baseType: !82, size: 32, offset: 1984)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2234, file: !74, line: 715, baseType: !524, size: 64, offset: 2048)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2234, file: !74, line: 716, baseType: !524, size: 64, offset: 2112)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2234, file: !74, line: 717, baseType: !524, size: 64, offset: 2176)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2234, file: !74, line: 718, baseType: !524, size: 64, offset: 2240)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2234, file: !74, line: 720, baseType: !2388, size: 64, offset: 2304)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 632, size: 64, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2389, file: !74, line: 633, baseType: !301, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2389, file: !74, line: 634, baseType: !7, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2234, file: !74, line: 721, baseType: !2394, size: 64, offset: 2368)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2092, !908}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2234, file: !74, line: 722, baseType: !2398, size: 64, offset: 2432)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 722, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2088, file: !62, line: 727, baseType: !2401, size: 64, offset: 4224)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 742, size: 1792, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2410, !2411, !2412}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2402, file: !74, line: 743, baseType: !2124, size: 1472)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2402, file: !74, line: 744, baseType: !2127, size: 64, offset: 1472)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2402, file: !74, line: 745, baseType: !2407, size: 64, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2092, !982}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2402, file: !74, line: 746, baseType: !2127, size: 64, offset: 1600)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2402, file: !74, line: 747, baseType: !2118, size: 64, offset: 1664)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2402, file: !74, line: 748, baseType: !2118, size: 64, offset: 1728)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2088, file: !62, line: 736, baseType: !2414, size: 128, offset: 4288)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !62, line: 529, size: 128, elements: !2415)
!2415 = !{!2416, !2420}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2414, file: !62, line: 531, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2419, line: 13, flags: DIFlagFwdDecl)
!2419 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2414, file: !62, line: 532, baseType: !2421, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !62, line: 49, flags: DIFlagFwdDecl)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2088, file: !62, line: 738, baseType: !2424, size: 64, offset: 4416)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !62, line: 738, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2088, file: !62, line: 740, baseType: !2428, size: 64, offset: 4480)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2088, file: !62, line: 741, baseType: !524, size: 64, offset: 4544)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2088, file: !62, line: 746, baseType: !524, size: 64, offset: 4608)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2088, file: !62, line: 747, baseType: !2432, size: 64, offset: 4672)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !62, line: 747, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2088, file: !62, line: 749, baseType: !2436, size: 64, offset: 4736)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !62, line: 428, size: 128, elements: !2438)
!2438 = !{!2439, !2440, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2437, file: !62, line: 433, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2437, file: !62, line: 434, baseType: !7, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2437, file: !62, line: 435, baseType: !420, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2088, file: !62, line: 751, baseType: !271, size: 128, offset: 4800)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2088, file: !62, line: 762, baseType: !2444, size: 64, offset: 4928)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !62, line: 762, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2088, file: !62, line: 770, baseType: !2447, offset: 4992)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2448, line: 5, elements: !654)
!2448 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2088, file: !62, line: 772, baseType: !2450, size: 64, offset: 4992)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2452, line: 18, flags: DIFlagFwdDecl)
!2452 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2088, file: !62, line: 773, baseType: !2454, size: 64, offset: 5056)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2456, line: 41, size: 512, elements: !2457)
!2456 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2457 = !{!2458, !2459, !2554, !2555, !2556, !2557}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2455, file: !2456, line: 42, baseType: !2454, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2455, file: !2456, line: 43, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2462)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2456, line: 125, size: 1408, elements: !2463)
!2463 = !{!2464, !2468, !2472, !2478, !2482, !2483, !2488, !2492, !2496, !2501, !2505, !2506, !2510, !2514, !2518, !2529, !2530, !2531, !2532, !2542, !2546, !2550}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2462, file: !2456, line: 126, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!2454, !2454}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2462, file: !2456, line: 127, baseType: !2469, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2454}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2462, file: !2456, line: 128, baseType: !2473, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!982, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2455)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2462, file: !2456, line: 129, baseType: !2479, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!1439, !2476, !2108}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2462, file: !2456, line: 131, baseType: !2473, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2462, file: !2456, line: 133, baseType: !2484, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!2487, !2476}
!2487 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2456, line: 132, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2462, file: !2456, line: 134, baseType: !2489, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!982, !2476, !290}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2462, file: !2456, line: 136, baseType: !2493, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!82, !2476, !290, !7, !442, !417}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2462, file: !2456, line: 141, baseType: !2497, size: 64, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!82, !2476, !290, !2500, !417}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2462, file: !2456, line: 144, baseType: !2502, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!290, !2476}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2462, file: !2456, line: 145, baseType: !2502, size: 64, offset: 640)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2462, file: !2456, line: 146, baseType: !2507, size: 64, offset: 704)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!2454, !2476}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2462, file: !2456, line: 148, baseType: !2511, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!2454, !2476, !2454}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2462, file: !2456, line: 151, baseType: !2515, size: 64, offset: 832)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!2454, !2476, !290}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2462, file: !2456, line: 153, baseType: !2519, size: 64, offset: 896)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!82, !2476, !290, !290, !7, !7, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2456, line: 94, size: 640, elements: !2524)
!2524 = !{!2525, !2526, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2523, file: !2456, line: 95, baseType: !2454, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2523, file: !2456, line: 96, baseType: !7, size: 32, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2523, file: !2456, line: 97, baseType: !2528, size: 512, offset: 128)
!2528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 512, elements: !2327)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2462, file: !2456, line: 158, baseType: !2511, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2462, file: !2456, line: 161, baseType: !2507, size: 64, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2462, file: !2456, line: 163, baseType: !2465, size: 64, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2462, file: !2456, line: 164, baseType: !2533, size: 64, offset: 1152)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!82, !2476, !2536}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2456, line: 73, size: 128, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2537, file: !2456, line: 74, baseType: !7, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2537, file: !2456, line: 75, baseType: !7, size: 32, offset: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2537, file: !2456, line: 76, baseType: !2476, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2462, file: !2456, line: 166, baseType: !2543, size: 64, offset: 1216)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!442, !2454, !82}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2462, file: !2456, line: 167, baseType: !2547, size: 64, offset: 1280)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!82, !2476, !7}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2462, file: !2456, line: 168, baseType: !2551, size: 64, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!82, !2454}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2455, file: !2456, line: 44, baseType: !2092, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2455, file: !2456, line: 45, baseType: !271, size: 128, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2455, file: !2456, line: 46, baseType: !271, size: 128, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2455, file: !2456, line: 47, baseType: !329, size: 8, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2088, file: !62, line: 776, baseType: !82, size: 32, offset: 5120)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2088, file: !62, line: 778, baseType: !607, size: 32, offset: 5152)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2088, file: !62, line: 779, baseType: !520, size: 32, offset: 5184)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2088, file: !62, line: 781, baseType: !301, size: 32, offset: 5216)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2088, file: !62, line: 782, baseType: !271, size: 128, offset: 5248)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2088, file: !62, line: 784, baseType: !2564, size: 64, offset: 5376)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2567, line: 52, size: 768, elements: !2568)
!2567 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2577, !2581, !2582, !2583, !2611, !2615, !2619}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2566, file: !2567, line: 53, baseType: !290, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2566, file: !2567, line: 55, baseType: !422, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2566, file: !2567, line: 56, baseType: !422, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2566, file: !2567, line: 58, baseType: !2105, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2566, file: !2567, line: 59, baseType: !2574, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!370, !2108, !2114}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2566, file: !2567, line: 61, baseType: !2578, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2564}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2566, file: !2567, line: 62, baseType: !2118, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2566, file: !2567, line: 64, baseType: !2127, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2566, file: !2567, line: 66, baseType: !2584, size: 64, offset: 512)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !90, line: 39, size: 384, elements: !2587)
!2587 = !{!2588, !2589, !2593, !2597, !2603, !2607}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2586, file: !90, line: 40, baseType: !89, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2586, file: !90, line: 41, baseType: !2590, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!982}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2586, file: !90, line: 42, baseType: !2594, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!442}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2586, file: !90, line: 43, baseType: !2598, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!1439, !2601}
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !90, line: 19, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2586, file: !90, line: 44, baseType: !2604, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!1439}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2586, file: !90, line: 45, baseType: !2608, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !442}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2566, file: !2567, line: 67, baseType: !2612, size: 64, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!1439, !2108}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2566, file: !2567, line: 69, baseType: !2616, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !2108, !2115, !2116}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2566, file: !2567, line: 71, baseType: !2122, size: 64, offset: 704)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2088, file: !62, line: 785, baseType: !422, size: 64, offset: 5440)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2088, file: !62, line: 787, baseType: !2118, size: 64, offset: 5504)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2088, file: !62, line: 788, baseType: !2623, size: 64, offset: 5568)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !62, line: 46, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2088, file: !62, line: 789, baseType: !2626, size: 64, offset: 5632)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !62, line: 48, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2088, file: !62, line: 791, baseType: !2629, size: 64, offset: 5696)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !62, line: 597, size: 128, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2630, file: !62, line: 598, baseType: !95, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2630, file: !62, line: 599, baseType: !104, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2630, file: !62, line: 600, baseType: !109, size: 32, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2630, file: !62, line: 601, baseType: !982, size: 8, offset: 96)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2630, file: !62, line: 602, baseType: !982, size: 8, offset: 104)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2088, file: !62, line: 793, baseType: !114, size: 32, offset: 5760)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2088, file: !62, line: 795, baseType: !982, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2088, file: !62, line: 796, baseType: !982, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2088, file: !62, line: 797, baseType: !982, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2088, file: !62, line: 798, baseType: !982, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2088, file: !62, line: 799, baseType: !982, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2024, file: !121, line: 145, baseType: !2644, size: 64, offset: 576)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2646)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !121, line: 1388, size: 1152, elements: !2647)
!2647 = !{!2648, !2739, !2743, !2748, !2752, !2756, !2757, !2761, !2762, !2768, !2772, !2773, !2777, !2803, !2807, !2812, !2813, !2817}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2646, file: !121, line: 1389, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2652}
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !219, line: 265, size: 960, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2659, !2660, !2661, !2662, !2663, !2670, !2672, !2675, !2676, !2679, !2683, !2684, !2686, !2687, !2688, !2689, !2691, !2737}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2653, file: !219, line: 266, baseType: !2652, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2653, file: !219, line: 267, baseType: !2035, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2653, file: !219, line: 268, baseType: !2658, size: 32, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !219, line: 256, baseType: !521)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2653, file: !219, line: 271, baseType: !340, size: 16, offset: 160)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2653, file: !219, line: 272, baseType: !340, size: 16, offset: 176)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2653, file: !219, line: 273, baseType: !1708, size: 8, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2653, file: !219, line: 274, baseType: !321, size: 32, offset: 224)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2653, file: !219, line: 276, baseType: !2664, size: 160, align: 32, offset: 256)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1188, line: 77, size: 160, align: 32, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2664, file: !1188, line: 78, baseType: !2039, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2664, file: !1188, line: 80, baseType: !7, size: 32, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2664, file: !1188, line: 82, baseType: !7, size: 32, offset: 96)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2664, file: !1188, line: 84, baseType: !7, size: 32, offset: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2653, file: !219, line: 278, baseType: !2671, size: 32, offset: 416)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !219, line: 258, baseType: !7)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2653, file: !219, line: 279, baseType: !2673, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !219, line: 20, baseType: !2650)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2653, file: !219, line: 280, baseType: !442, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2653, file: !219, line: 288, baseType: !2677, size: 64, offset: 576)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !219, line: 288, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2653, file: !219, line: 289, baseType: !2680, size: 64, offset: 640)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !219, line: 228, size: 64, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2680, file: !219, line: 229, baseType: !524, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2653, file: !219, line: 291, baseType: !524, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_member, scope: !2653, file: !219, line: 299, baseType: !2685, offset: 768)
!2685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2653, file: !219, line: 299, elements: !654)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2653, file: !219, line: 305, baseType: !340, size: 16, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2653, file: !219, line: 311, baseType: !340, size: 16, offset: 784)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2653, file: !219, line: 313, baseType: !321, size: 32, offset: 800)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2653, file: !219, line: 315, baseType: !2690, size: 64, offset: 832)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2653, file: !219, line: 317, baseType: !2692, size: 64, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2694, line: 678, size: 1984, elements: !2695)
!2694 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2695 = !{!2696, !2700, !2701, !2704, !2726, !2727, !2728, !2729, !2734, !2735, !2736}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2693, file: !2694, line: 679, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2699, line: 11, flags: DIFlagFwdDecl)
!2699 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2693, file: !2694, line: 680, baseType: !7, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2693, file: !2694, line: 685, baseType: !2702, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2694, line: 685, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2693, file: !2694, line: 687, baseType: !2705, size: 576, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2706, line: 26, baseType: !2707)
!2706 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2706, line: 16, size: 576, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2714, !2715, !2720, !2725}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2707, file: !2706, line: 17, baseType: !301, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2707, file: !2706, line: 18, baseType: !82, size: 32, offset: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2707, file: !2706, line: 19, baseType: !82, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2707, file: !2706, line: 20, baseType: !2713, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2707, file: !2706, line: 22, baseType: !442, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2707, file: !2706, line: 23, baseType: !2716, size: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2706, line: 13, baseType: !2718)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!442, !1587, !442}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2707, file: !2706, line: 24, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2706, line: 14, baseType: !2723)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !442, !442}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2707, file: !2706, line: 25, baseType: !851, size: 192, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2693, file: !2694, line: 688, baseType: !2705, size: 576, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2693, file: !2694, line: 694, baseType: !7, size: 32, offset: 1344)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2693, file: !2694, line: 699, baseType: !301, size: 32, offset: 1376)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2693, file: !2694, line: 700, baseType: !2730, size: 128, offset: 1408)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2694, line: 550, size: 128, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2730, file: !2694, line: 551, baseType: !2652, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2730, file: !2694, line: 552, baseType: !2652, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2693, file: !2694, line: 701, baseType: !1478, size: 256, offset: 1536)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2693, file: !2694, line: 702, baseType: !1735, size: 64, offset: 1792)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2693, file: !2694, line: 707, baseType: !646, size: 128, offset: 1856)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2653, file: !219, line: 324, baseType: !2738, offset: 960)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, elements: !866)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2646, file: !121, line: 1390, baseType: !2740, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!82, !2652, !1676, !7}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2646, file: !121, line: 1392, baseType: !2744, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!82, !2023, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !121, line: 115, baseType: !7)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2646, file: !121, line: 1393, baseType: !2749, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !2023}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2646, file: !121, line: 1394, baseType: !2753, size: 64, offset: 256)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!82, !2035, !2747, !7, !420}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2646, file: !121, line: 1396, baseType: !2753, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2646, file: !121, line: 1398, baseType: !2758, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!7, !2023, !7}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2646, file: !121, line: 1400, baseType: !2749, size: 64, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2646, file: !121, line: 1401, baseType: !2763, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!82, !2035, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !14, line: 56, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2646, file: !121, line: 1402, baseType: !2769, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!82, !2035, !982}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2646, file: !121, line: 1403, baseType: !2749, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2646, file: !121, line: 1405, baseType: !2774, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2035, !420}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2646, file: !121, line: 1406, baseType: !2778, size: 64, offset: 768)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!82, !2023, !2039, !7, !2781, !442}
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !121, line: 342, baseType: !2782)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!82, !2785, !7, !442}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2787, line: 106, size: 512, elements: !2788)
!2787 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2798, !2799}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2786, file: !2787, line: 107, baseType: !525, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2786, file: !2787, line: 108, baseType: !525, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2786, file: !2787, line: 109, baseType: !525, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2786, file: !2787, line: 110, baseType: !331, size: 8, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2786, file: !2787, line: 111, baseType: !331, size: 8, offset: 200)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2786, file: !2787, line: 112, baseType: !331, size: 8, offset: 208)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2786, file: !2787, line: 113, baseType: !331, size: 8, offset: 216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2786, file: !2787, line: 114, baseType: !2797, size: 32, offset: 224)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 32, elements: !847)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2786, file: !2787, line: 115, baseType: !525, size: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2786, file: !2787, line: 116, baseType: !2800, size: 192, offset: 320)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 192, elements: !2801)
!2801 = !{!2802}
!2802 = !DISubrange(count: 24)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2646, file: !121, line: 1408, baseType: !2804, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!370, !2023, !2114}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2646, file: !121, line: 1410, baseType: !2808, size: 64, offset: 896)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!82, !2023, !2811, !120}
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2646, file: !121, line: 1412, baseType: !266, size: 64, offset: 960)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2646, file: !121, line: 1413, baseType: !2814, size: 64, offset: 1024)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2816)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !121, line: 37, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2646, file: !121, line: 1420, baseType: !2818, size: 64, offset: 1088)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!82, !2023, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2024, file: !121, line: 146, baseType: !1684, size: 64, offset: 640)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2024, file: !121, line: 147, baseType: !442, size: 64, offset: 704)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2024, file: !121, line: 149, baseType: !2693, size: 1984, offset: 768)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2024, file: !121, line: 151, baseType: !82, size: 32, offset: 2752)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2024, file: !121, line: 152, baseType: !420, size: 64, offset: 2816)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2024, file: !121, line: 161, baseType: !735, size: 256, offset: 2880)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2024, file: !121, line: 162, baseType: !7, size: 32, offset: 3136)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2024, file: !121, line: 164, baseType: !2830, size: 64, offset: 3200)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2024, file: !121, line: 165, baseType: !286, size: 512, offset: 3264)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2024, file: !121, line: 166, baseType: !294, size: 64, offset: 3776)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2024, file: !121, line: 168, baseType: !271, size: 128, offset: 3840)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2024, file: !121, line: 170, baseType: !2836, size: 64, offset: 3968)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !121, line: 170, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2024, file: !121, line: 171, baseType: !321, size: 32, offset: 4032)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2024, file: !121, line: 172, baseType: !2840, size: 64, offset: 4096)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !121, line: 104, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2024, file: !121, line: 197, baseType: !2843, size: 64, offset: 4160)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !2845, line: 41, size: 1024, elements: !2846)
!2845 = !DIFile(filename: "./include/linux/cdrom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd44c1c58040f26e4c11efa071e5b4ca")
!2846 = !{!2847, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2844, file: !2845, line: 42, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2850)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_ops", file: !2845, line: 71, size: 896, elements: !2851)
!2851 = !{!2852, !2856, !2860, !2861, !2865, !2866, !2867, !2871, !2891, !2902, !2906, !2910, !2943, !2947}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2850, file: !2845, line: 73, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!82, !2843, !82}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2850, file: !2845, line: 74, baseType: !2857, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2843}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "drive_status", scope: !2850, file: !2845, line: 75, baseType: !2853, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2850, file: !2845, line: 76, baseType: !2862, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!7, !2843, !7, !82}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "tray_move", scope: !2850, file: !2845, line: 78, baseType: !2853, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lock_door", scope: !2850, file: !2845, line: 79, baseType: !2853, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "select_speed", scope: !2850, file: !2845, line: 80, baseType: !2868, size: 64, offset: 384)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!82, !2843, !420}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_session", scope: !2850, file: !2845, line: 81, baseType: !2872, size: 64, offset: 448)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!82, !2843, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_multisession", file: !2877, line: 250, size: 64, elements: !2878)
!2877 = !DIFile(filename: "./include/uapi/linux/cdrom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c9257e896bcb070ca5617ca1feb696e")
!2878 = !{!2879, !2889, !2890}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2876, file: !2877, line: 252, baseType: !2880, size: 32)
!2880 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cdrom_addr", file: !2877, line: 165, size: 32, elements: !2881)
!2881 = !{!2882, !2888}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "msf", scope: !2880, file: !2877, line: 167, baseType: !2883, size: 24)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_msf0", file: !2877, line: 157, size: 24, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "minute", scope: !2883, file: !2877, line: 159, baseType: !331, size: 8)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "second", scope: !2883, file: !2877, line: 160, baseType: !331, size: 8, offset: 8)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !2883, file: !2877, line: 161, baseType: !331, size: 8, offset: 16)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "lba", scope: !2880, file: !2877, line: 168, baseType: !82, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flag", scope: !2876, file: !2877, line: 255, baseType: !331, size: 8, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "addr_format", scope: !2876, file: !2877, line: 256, baseType: !331, size: 8, offset: 40)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "get_mcn", scope: !2850, file: !2845, line: 83, baseType: !2892, size: 64, offset: 512)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!82, !2843, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_mcn", file: !2877, line: 264, size: 112, elements: !2897)
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "medium_catalog_number", scope: !2896, file: !2877, line: 266, baseType: !2899, size: 112)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 112, elements: !2900)
!2900 = !{!2901}
!2901 = !DISubrange(count: 14)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2850, file: !2845, line: 86, baseType: !2903, size: 64, offset: 576)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!82, !2843}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ioctl", scope: !2850, file: !2845, line: 88, baseType: !2907, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!82, !2843, !7, !442}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "generic_packet", scope: !2850, file: !2845, line: 91, baseType: !2911, size: 64, offset: 704)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!82, !2843, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packet_command", file: !2845, line: 20, size: 512, elements: !2916)
!2916 = !{!2917, !2921, !2923, !2924, !2925, !2938, !2939, !2940, !2941}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2915, file: !2845, line: 22, baseType: !2918, size: 96)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 96, elements: !2919)
!2919 = !{!2920}
!2920 = !DISubrange(count: 12)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2915, file: !2845, line: 23, baseType: !2922, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2915, file: !2845, line: 24, baseType: !7, size: 32, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2915, file: !2845, line: 25, baseType: !82, size: 32, offset: 224)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sshdr", scope: !2915, file: !2845, line: 26, baseType: !2926, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_sense_hdr", file: !2928, line: 63, size: 64, elements: !2929)
!2928 = !DIFile(filename: "./include/scsi/scsi_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b8b3b24b57e553caf051ea243d77c221")
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "response_code", scope: !2927, file: !2928, line: 64, baseType: !329, size: 8)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "sense_key", scope: !2927, file: !2928, line: 65, baseType: !329, size: 8, offset: 8)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "asc", scope: !2927, file: !2928, line: 66, baseType: !329, size: 8, offset: 16)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ascq", scope: !2927, file: !2928, line: 67, baseType: !329, size: 8, offset: 24)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "byte4", scope: !2927, file: !2928, line: 68, baseType: !329, size: 8, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "byte5", scope: !2927, file: !2928, line: 69, baseType: !329, size: 8, offset: 40)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "byte6", scope: !2927, file: !2928, line: 70, baseType: !329, size: 8, offset: 48)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "additional_length", scope: !2927, file: !2928, line: 71, baseType: !329, size: 8, offset: 56)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "data_direction", scope: !2915, file: !2845, line: 27, baseType: !172, size: 8, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !2915, file: !2845, line: 28, baseType: !82, size: 32, offset: 352)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2915, file: !2845, line: 29, baseType: !82, size: 32, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2915, file: !2845, line: 30, baseType: !2942, size: 64, offset: 448)
!2942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 64, elements: !1746)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "read_cdda_bpc", scope: !2850, file: !2845, line: 93, baseType: !2944, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!82, !2843, !442, !520, !520, !2811}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "capability", scope: !2850, file: !2845, line: 96, baseType: !2948, size: 32, offset: 832)
!2948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2844, file: !2845, line: 43, baseType: !271, size: 128, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2844, file: !2845, line: 44, baseType: !2023, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2844, file: !2845, line: 45, baseType: !442, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2844, file: !2845, line: 47, baseType: !82, size: 32, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2844, file: !2845, line: 48, baseType: !82, size: 32, offset: 352)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2844, file: !2845, line: 49, baseType: !82, size: 32, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2844, file: !2845, line: 51, baseType: !7, size: 30, offset: 416, flags: DIFlagBitField, extraData: i64 416)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mc_flags", scope: !2844, file: !2845, line: 52, baseType: !7, size: 2, offset: 446, flags: DIFlagBitField, extraData: i64 416)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_events", scope: !2844, file: !2845, line: 53, baseType: !7, size: 32, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_events", scope: !2844, file: !2845, line: 54, baseType: !7, size: 32, offset: 480)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !2844, file: !2845, line: 55, baseType: !82, size: 32, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2844, file: !2845, line: 56, baseType: !2961, size: 160, offset: 544)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 160, elements: !2962)
!2962 = !{!2963}
!2963 = !DISubrange(count: 20)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sanyo_slot", scope: !2844, file: !2845, line: 58, baseType: !331, size: 2, offset: 704, flags: DIFlagBitField, extraData: i64 704)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "keeplocked", scope: !2844, file: !2845, line: 59, baseType: !331, size: 1, offset: 706, flags: DIFlagBitField, extraData: i64 704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2844, file: !2845, line: 60, baseType: !331, size: 5, offset: 707, flags: DIFlagBitField, extraData: i64 704)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cdda_method", scope: !2844, file: !2845, line: 61, baseType: !82, size: 32, offset: 736)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "last_sense", scope: !2844, file: !2845, line: 62, baseType: !331, size: 8, offset: 768)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "media_written", scope: !2844, file: !2845, line: 63, baseType: !331, size: 8, offset: 776)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mmc3_profile", scope: !2844, file: !2845, line: 64, baseType: !340, size: 16, offset: 784)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2844, file: !2845, line: 65, baseType: !2903, size: 64, offset: 832)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mrw_mode_page", scope: !2844, file: !2845, line: 66, baseType: !82, size: 32, offset: 896)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "opened_for_data", scope: !2844, file: !2845, line: 67, baseType: !982, size: 8, offset: 928)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "last_media_change_ms", scope: !2844, file: !2845, line: 68, baseType: !746, size: 64, offset: 960)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2024, file: !121, line: 199, baseType: !82, size: 32, offset: 4224)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2024, file: !121, line: 200, baseType: !2977, size: 64, offset: 4288)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !121, line: 105, flags: DIFlagFwdDecl)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2024, file: !121, line: 201, baseType: !1967, offset: 4352)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2024, file: !121, line: 202, baseType: !524, size: 64, offset: 4352)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2024, file: !121, line: 203, baseType: !2747, size: 32, offset: 4416)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2024, file: !121, line: 209, baseType: !2983, size: 64, offset: 4480)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !121, line: 384, size: 576, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2984, file: !121, line: 385, baseType: !286, size: 512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !2984, file: !121, line: 386, baseType: !982, size: 8, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !2984, file: !121, line: 387, baseType: !7, size: 32, offset: 544)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !2984, file: !121, line: 388, baseType: !2990, offset: 576)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2991, elements: !866)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !121, line: 378, size: 640, elements: !2992)
!2992 = !{!2993, !2994, !2995}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2991, file: !121, line: 379, baseType: !286, size: 512)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !2991, file: !121, line: 380, baseType: !2039, size: 64, offset: 512)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !2991, file: !121, line: 381, baseType: !2039, size: 64, offset: 576)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1685, file: !121, line: 438, baseType: !838, size: 32, offset: 1344)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1685, file: !121, line: 443, baseType: !294, size: 64, offset: 1408)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1685, file: !121, line: 450, baseType: !2092, size: 64, offset: 1472)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1685, file: !121, line: 451, baseType: !81, size: 32, offset: 1536)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1685, file: !121, line: 457, baseType: !420, size: 64, offset: 1600)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1685, file: !121, line: 459, baseType: !7, size: 32, offset: 1664)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1685, file: !121, line: 466, baseType: !7, size: 32, offset: 1696)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1685, file: !121, line: 468, baseType: !1723, size: 320, offset: 1728)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1685, file: !121, line: 469, baseType: !1478, size: 256, offset: 2048)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !1685, file: !121, line: 471, baseType: !321, size: 32, offset: 2304)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !1685, file: !121, line: 473, baseType: !1798, size: 64, offset: 2368)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1685, file: !121, line: 475, baseType: !271, size: 128, offset: 2432)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !1685, file: !121, line: 477, baseType: !1745, size: 64, offset: 2560)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !1685, file: !121, line: 478, baseType: !2677, size: 64, offset: 2624)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !1685, file: !121, line: 479, baseType: !271, size: 128, offset: 2688)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !1685, file: !121, line: 480, baseType: !735, size: 256, offset: 2816)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1685, file: !121, line: 483, baseType: !3013, size: 960, offset: 3072)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !121, line: 300, size: 960, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3013, file: !121, line: 301, baseType: !126, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3013, file: !121, line: 302, baseType: !420, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3013, file: !121, line: 303, baseType: !420, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3013, file: !121, line: 305, baseType: !7, size: 32, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3013, file: !121, line: 306, baseType: !7, size: 32, offset: 224)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3013, file: !121, line: 307, baseType: !7, size: 32, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3013, file: !121, line: 308, baseType: !7, size: 32, offset: 288)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3013, file: !121, line: 309, baseType: !7, size: 32, offset: 320)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3013, file: !121, line: 310, baseType: !7, size: 32, offset: 352)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3013, file: !121, line: 311, baseType: !7, size: 32, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3013, file: !121, line: 312, baseType: !7, size: 32, offset: 416)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3013, file: !121, line: 313, baseType: !7, size: 32, offset: 448)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3013, file: !121, line: 314, baseType: !7, size: 32, offset: 480)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3013, file: !121, line: 315, baseType: !7, size: 32, offset: 512)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3013, file: !121, line: 316, baseType: !7, size: 32, offset: 544)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3013, file: !121, line: 317, baseType: !7, size: 32, offset: 576)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3013, file: !121, line: 318, baseType: !7, size: 32, offset: 608)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3013, file: !121, line: 319, baseType: !7, size: 32, offset: 640)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3013, file: !121, line: 320, baseType: !7, size: 32, offset: 672)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3013, file: !121, line: 321, baseType: !7, size: 32, offset: 704)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3013, file: !121, line: 322, baseType: !7, size: 32, offset: 736)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3013, file: !121, line: 323, baseType: !7, size: 32, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3013, file: !121, line: 325, baseType: !340, size: 16, offset: 800)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3013, file: !121, line: 326, baseType: !340, size: 16, offset: 816)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3013, file: !121, line: 327, baseType: !340, size: 16, offset: 832)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3013, file: !121, line: 329, baseType: !172, size: 8, offset: 848)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3013, file: !121, line: 330, baseType: !172, size: 8, offset: 856)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3013, file: !121, line: 331, baseType: !172, size: 8, offset: 864)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3013, file: !121, line: 332, baseType: !130, size: 32, offset: 896)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3013, file: !121, line: 339, baseType: !7, size: 32, offset: 928)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1685, file: !121, line: 485, baseType: !7, size: 32, offset: 4032)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1685, file: !121, line: 487, baseType: !82, size: 32, offset: 4064)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !1685, file: !121, line: 489, baseType: !3048, size: 64, offset: 4096)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !121, line: 31, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1685, file: !121, line: 494, baseType: !1754, size: 64, offset: 4160)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !1685, file: !121, line: 495, baseType: !271, size: 128, offset: 4224)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1685, file: !121, line: 497, baseType: !271, size: 128, offset: 4352)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1685, file: !121, line: 498, baseType: !301, size: 32, offset: 4480)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1685, file: !121, line: 499, baseType: !1719, size: 704, offset: 4544)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1685, file: !121, line: 501, baseType: !735, size: 256, offset: 5248)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1685, file: !121, line: 502, baseType: !735, size: 256, offset: 5504)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1685, file: !121, line: 508, baseType: !271, size: 128, offset: 5760)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1685, file: !121, line: 509, baseType: !301, size: 32, offset: 5888)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1685, file: !121, line: 511, baseType: !82, size: 32, offset: 5920)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1685, file: !121, line: 517, baseType: !793, size: 128, align: 64, offset: 5952)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1685, file: !121, line: 518, baseType: !851, size: 192, offset: 6080)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1685, file: !121, line: 523, baseType: !735, size: 256, offset: 6272)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !1685, file: !121, line: 525, baseType: !82, size: 32, offset: 6528)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1685, file: !121, line: 527, baseType: !1890, size: 64, offset: 6592)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1685, file: !121, line: 528, baseType: !271, size: 128, offset: 6656)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1685, file: !121, line: 530, baseType: !486, size: 64, offset: 6784)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1685, file: !121, line: 531, baseType: !486, size: 64, offset: 6848)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !1685, file: !121, line: 532, baseType: !486, size: 64, offset: 6912)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1685, file: !121, line: 536, baseType: !735, size: 256, offset: 6976)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1685, file: !121, line: 538, baseType: !982, size: 8, offset: 7232)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1681, file: !51, line: 82, baseType: !1775, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1681, file: !51, line: 83, baseType: !1709, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1681, file: !51, line: 85, baseType: !2658, size: 32, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1681, file: !51, line: 86, baseType: !3075, size: 32, offset: 224)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !51, line: 27, baseType: !521)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1681, file: !51, line: 88, baseType: !82, size: 32, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1681, file: !51, line: 89, baseType: !82, size: 32, offset: 288)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1681, file: !51, line: 91, baseType: !7, size: 32, offset: 320)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1681, file: !51, line: 94, baseType: !7, size: 32, offset: 352)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1681, file: !51, line: 95, baseType: !2039, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1681, file: !51, line: 97, baseType: !2652, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1681, file: !51, line: 98, baseType: !2652, size: 64, offset: 512)
!3083 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !51, line: 100, baseType: !3084, size: 128, offset: 576)
!3084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !51, line: 100, size: 128, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !3084, file: !51, line: 101, baseType: !271, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !3084, file: !51, line: 102, baseType: !1680, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1681, file: !51, line: 105, baseType: !2035, size: 64, offset: 704)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !1681, file: !51, line: 108, baseType: !524, size: 64, offset: 768)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1681, file: !51, line: 111, baseType: !524, size: 64, offset: 832)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1681, file: !51, line: 113, baseType: !524, size: 64, offset: 896)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1681, file: !51, line: 123, baseType: !340, size: 16, offset: 960)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1681, file: !51, line: 129, baseType: !340, size: 16, offset: 976)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1681, file: !51, line: 140, baseType: !340, size: 16, offset: 992)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1681, file: !51, line: 142, baseType: !135, size: 32, offset: 1024)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1681, file: !51, line: 143, baseType: !321, size: 32, offset: 1056)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1681, file: !51, line: 145, baseType: !420, size: 64, offset: 1088)
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !51, line: 154, baseType: !3099, size: 128, offset: 1152)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !51, line: 154, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3099, file: !51, line: 155, baseType: !646, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !3099, file: !51, line: 156, baseType: !787, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !51, line: 165, baseType: !3104, size: 192, offset: 1280)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !51, line: 165, size: 192, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3104, file: !51, line: 166, baseType: !915, size: 192, align: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !3104, file: !51, line: 167, baseType: !1187, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1681, file: !51, line: 177, baseType: !3109, size: 192, offset: 1472)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !51, line: 174, size: 192, elements: !3110)
!3110 = !{!3111, !3135}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !3109, file: !51, line: 175, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3114, line: 73, size: 448, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3115 = !{!3116, !3117, !3124, !3129, !3134}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3113, file: !3114, line: 74, baseType: !1684, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3113, file: !3114, line: 75, baseType: !3118, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3114, line: 99, size: 128, elements: !3120)
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3119, file: !3114, line: 100, baseType: !739, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3119, file: !3114, line: 101, baseType: !321, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3119, file: !3114, line: 103, baseType: !340, size: 16, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3114, line: 83, baseType: !3125, size: 128, offset: 128)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3114, line: 83, size: 128, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3125, file: !3114, line: 84, baseType: !271, size: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3125, file: !3114, line: 85, baseType: !2697, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3113, file: !3114, line: 87, baseType: !3130, size: 128, offset: 256)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3113, file: !3114, line: 87, size: 128, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3130, file: !3114, line: 88, baseType: !646, size: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3130, file: !3114, line: 89, baseType: !793, size: 128, align: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3113, file: !3114, line: 92, baseType: !7, size: 32, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3109, file: !51, line: 176, baseType: !3136, size: 128, offset: 64)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 128, elements: !1927)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1681, file: !51, line: 182, baseType: !3138, size: 128, offset: 1664)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !51, line: 179, size: 128, elements: !3139)
!3139 = !{!3140, !3141}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3138, file: !51, line: 180, baseType: !7, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !3138, file: !51, line: 181, baseType: !3142, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !51, line: 23, baseType: !3144)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!140, !1680, !1708}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1681, file: !51, line: 184, baseType: !524, size: 64, offset: 1792)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1681, file: !51, line: 189, baseType: !3142, size: 64, offset: 1856)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1681, file: !51, line: 190, baseType: !442, size: 64, offset: 1920)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1677, file: !121, line: 1561, baseType: !982, size: 8, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1677, file: !121, line: 1562, baseType: !3151, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !1676}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1103, file: !14, line: 1923, baseType: !3155, size: 64, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!82, !1110, !3158}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3160)
!3160 = !{!3161, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3159, file: !14, line: 1859, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3163)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!982, !3158, !290, !82, !612, !524, !7}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3159, file: !14, line: 1860, baseType: !612, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1103, file: !14, line: 1924, baseType: !3168, size: 64, offset: 512)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!3171, !1110, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3172, line: 59, baseType: !7)
!3172 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1103, file: !14, line: 1925, baseType: !3176, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!406, !1110, !7, !420}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1103, file: !14, line: 1926, baseType: !3176, size: 64, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1103, file: !14, line: 1927, baseType: !3181, size: 64, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!82, !1110, !1311}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1103, file: !14, line: 1928, baseType: !420, size: 64, offset: 768)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1103, file: !14, line: 1929, baseType: !3186, size: 64, offset: 832)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!82, !451, !1110}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1103, file: !14, line: 1930, baseType: !3190, size: 64, offset: 896)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!82, !1110, !3193}
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !442)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1103, file: !14, line: 1931, baseType: !3186, size: 64, offset: 960)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1103, file: !14, line: 1932, baseType: !3196, size: 64, offset: 1024)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!82, !1110, !612, !612, !82}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1103, file: !14, line: 1933, baseType: !3200, size: 64, offset: 1088)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!82, !82, !1110, !82}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1103, file: !14, line: 1934, baseType: !3204, size: 64, offset: 1152)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!82, !1110, !82, !3207}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1103, file: !14, line: 1935, baseType: !1348, size: 64, offset: 1216)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1103, file: !14, line: 1936, baseType: !3211, size: 64, offset: 1280)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!82, !82}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1103, file: !14, line: 1937, baseType: !3204, size: 64, offset: 1344)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1103, file: !14, line: 1938, baseType: !3216, size: 64, offset: 1408)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!402, !3219, !1110, !764, !417, !7}
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !3221, line: 59, flags: DIFlagFwdDecl)
!3221 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1103, file: !14, line: 1939, baseType: !3223, size: 64, offset: 1472)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!402, !1110, !764, !3219, !417, !7}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1103, file: !14, line: 1940, baseType: !3227, size: 64, offset: 1536)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !1110}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1103, file: !14, line: 1941, baseType: !3231, size: 64, offset: 1600)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!82, !1110, !82, !3234, !2713}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1103, file: !14, line: 1942, baseType: !3236, size: 64, offset: 1664)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!406, !1110, !82, !612, !612}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1103, file: !14, line: 1944, baseType: !3240, size: 64, offset: 1728)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !723, !1110}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1103, file: !14, line: 1948, baseType: !3244, size: 64, offset: 1792)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!402, !1110, !612, !1110, !612, !417, !7}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1103, file: !14, line: 1950, baseType: !3248, size: 64, offset: 1856)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!612, !1110, !612, !1110, !612, !612, !7}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1103, file: !14, line: 1953, baseType: !3196, size: 64, offset: 1920)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1103, file: !14, line: 1954, baseType: !3253, size: 64, offset: 1984)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!82, !3256, !7}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1103, file: !14, line: 1955, baseType: !3259, size: 64, offset: 2048)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!82, !3256, !1676, !7}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !781, file: !14, line: 1018, baseType: !524, size: 64, offset: 1472)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !781, file: !14, line: 1020, baseType: !442, size: 64, offset: 1536)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !781, file: !14, line: 1023, baseType: !442, size: 64, offset: 1600)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !781, file: !14, line: 1027, baseType: !3266, size: 64, offset: 1664)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !781, file: !14, line: 1029, baseType: !447, size: 64, offset: 1728)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !781, file: !14, line: 1030, baseType: !3269, size: 32, offset: 1792)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3270, line: 8, baseType: !520)
!3270 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !781, file: !14, line: 1031, baseType: !3269, size: 32, offset: 1824)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !724, file: !725, line: 29, baseType: !442, size: 64, offset: 896)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !666, file: !14, line: 2077, baseType: !720, size: 64, offset: 1088)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !666, file: !14, line: 2078, baseType: !720, size: 64, offset: 1152)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !666, file: !14, line: 2079, baseType: !720, size: 64, offset: 1216)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !666, file: !14, line: 2081, baseType: !3277, size: 64, offset: 1280)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!402, !602, !82, !370, !417, !612}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !666, file: !14, line: 2082, baseType: !3281, size: 64, offset: 1344)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!402, !602, !82, !290, !417, !612}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !666, file: !14, line: 2083, baseType: !3285, size: 64, offset: 1408)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!3288, !451}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !145, line: 296, size: 1664, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3316, !3317, !3318}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3290, file: !145, line: 297, baseType: !646, size: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3290, file: !145, line: 298, baseType: !271, size: 128, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3290, file: !145, line: 299, baseType: !271, size: 128, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3290, file: !145, line: 300, baseType: !271, size: 128, offset: 384)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3290, file: !145, line: 301, baseType: !735, size: 256, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3290, file: !145, line: 302, baseType: !301, size: 32, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3290, file: !145, line: 303, baseType: !321, size: 32, offset: 800)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3290, file: !145, line: 304, baseType: !602, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3290, file: !145, line: 305, baseType: !3301, size: 64, offset: 896)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !145, line: 68, size: 64, elements: !3302)
!3302 = !{!3303, !3315}
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !145, line: 69, baseType: !3304, size: 32)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !145, line: 69, size: 32, elements: !3305)
!3305 = !{!3306, !3307, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3304, file: !145, line: 70, baseType: !457, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3304, file: !145, line: 71, baseType: !466, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3304, file: !145, line: 72, baseType: !3309, size: 32)
!3309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3310, line: 24, baseType: !3311)
!3310 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3310, line: 22, size: 32, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3311, file: !3310, line: 23, baseType: !3314, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3310, line: 20, baseType: !463)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3301, file: !145, line: 74, baseType: !144, size: 32, offset: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3290, file: !145, line: 306, baseType: !612, size: 64, offset: 960)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3290, file: !145, line: 307, baseType: !420, size: 64, offset: 1024)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3290, file: !145, line: 308, baseType: !3319, size: 576, offset: 1088)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !145, line: 205, size: 576, elements: !3320)
!3320 = !{!3321, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3319, file: !145, line: 206, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !145, line: 66, baseType: !614)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3319, file: !145, line: 207, baseType: !3322, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3319, file: !145, line: 208, baseType: !3322, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3319, file: !145, line: 209, baseType: !3322, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3319, file: !145, line: 210, baseType: !3322, size: 64, offset: 256)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3319, file: !145, line: 211, baseType: !3322, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3319, file: !145, line: 212, baseType: !3322, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3319, file: !145, line: 213, baseType: !939, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3319, file: !145, line: 214, baseType: !939, size: 64, offset: 512)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !666, file: !14, line: 2085, baseType: !3332, size: 64, offset: 1472)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!406, !602, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3337, line: 15, size: 256, elements: !3338)
!3337 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3338 = !{!3339, !3340, !3341, !3342, !3343}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3336, file: !3337, line: 16, baseType: !1587, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3336, file: !3337, line: 19, baseType: !82, size: 32, offset: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3336, file: !3337, line: 26, baseType: !420, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3336, file: !3337, line: 33, baseType: !420, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3336, file: !3337, line: 36, baseType: !3344, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !666, file: !14, line: 2087, baseType: !3332, size: 64, offset: 1536)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !666, file: !14, line: 2089, baseType: !636, size: 64, offset: 1600)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !603, file: !14, line: 1198, baseType: !3349, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !145, line: 324, size: 704, elements: !3352)
!3352 = !{!3353, !3357, !3361, !3365, !3366, !3367, !3368, !3369, !3374, !3379, !3383}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3351, file: !145, line: 325, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!82, !3289}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3351, file: !145, line: 326, baseType: !3358, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3289, !602, !82}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3351, file: !145, line: 327, baseType: !3362, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{null, !3289}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3351, file: !145, line: 328, baseType: !3354, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3351, file: !145, line: 329, baseType: !3354, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3351, file: !145, line: 330, baseType: !3354, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3351, file: !145, line: 331, baseType: !694, size: 64, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3351, file: !145, line: 334, baseType: !3370, size: 64, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!3373, !451}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3351, file: !145, line: 335, baseType: !3375, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!82, !451, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3351, file: !145, line: 337, baseType: !3380, size: 64, offset: 576)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!82, !451, !3373}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3351, file: !145, line: 339, baseType: !3384, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!82, !602, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !603, file: !14, line: 1199, baseType: !3389, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !145, line: 430, size: 704, elements: !3392)
!3392 = !{!3393, !3399, !3400, !3404, !3405, !3406, !3421, !3444, !3448, !3449, !3472}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3391, file: !145, line: 431, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!82, !602, !82, !82, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3391, file: !145, line: 432, baseType: !694, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3391, file: !145, line: 433, baseType: !3401, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!82, !602, !7}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3391, file: !145, line: 434, baseType: !3401, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3391, file: !145, line: 435, baseType: !694, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3391, file: !145, line: 436, baseType: !3407, size: 64, offset: 320)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!82, !602, !82, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !145, line: 417, size: 256, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3411, file: !145, line: 418, baseType: !82, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3411, file: !145, line: 419, baseType: !7, size: 32, offset: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3411, file: !145, line: 420, baseType: !7, size: 32, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3411, file: !145, line: 422, baseType: !7, size: 32, offset: 96)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3411, file: !145, line: 423, baseType: !7, size: 32, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3411, file: !145, line: 424, baseType: !7, size: 32, offset: 160)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3411, file: !145, line: 425, baseType: !7, size: 32, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3411, file: !145, line: 426, baseType: !7, size: 32, offset: 224)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3391, file: !145, line: 437, baseType: !3422, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!82, !602, !3301, !3425}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !145, line: 345, size: 960, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3426, file: !145, line: 346, baseType: !82, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3426, file: !145, line: 347, baseType: !524, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3426, file: !145, line: 348, baseType: !524, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3426, file: !145, line: 349, baseType: !524, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3426, file: !145, line: 350, baseType: !524, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3426, file: !145, line: 351, baseType: !524, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3426, file: !145, line: 352, baseType: !524, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3426, file: !145, line: 353, baseType: !745, size: 64, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3426, file: !145, line: 355, baseType: !745, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3426, file: !145, line: 356, baseType: !82, size: 32, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3426, file: !145, line: 357, baseType: !82, size: 32, offset: 608)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3426, file: !145, line: 358, baseType: !524, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3426, file: !145, line: 359, baseType: !524, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3426, file: !145, line: 360, baseType: !524, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3426, file: !145, line: 361, baseType: !745, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3426, file: !145, line: 362, baseType: !82, size: 32, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3391, file: !145, line: 438, baseType: !3445, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!82, !602, !3387, !3425}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3391, file: !145, line: 440, baseType: !3422, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3391, file: !145, line: 441, baseType: !3450, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!82, !602, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !145, line: 411, size: 1408, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3454, file: !145, line: 412, baseType: !7, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3454, file: !145, line: 413, baseType: !3458, size: 1344, offset: 64)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3459, size: 1344, elements: !371)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !145, line: 397, size: 448, elements: !3460)
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3471}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3459, file: !145, line: 398, baseType: !7, size: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3459, file: !145, line: 399, baseType: !7, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3459, file: !145, line: 401, baseType: !7, size: 32, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3459, file: !145, line: 402, baseType: !7, size: 32, offset: 96)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3459, file: !145, line: 403, baseType: !7, size: 32, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3459, file: !145, line: 404, baseType: !7, size: 32, offset: 160)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3459, file: !145, line: 405, baseType: !7, size: 32, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3459, file: !145, line: 406, baseType: !526, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3459, file: !145, line: 407, baseType: !3470, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !272, line: 132, baseType: !524)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3459, file: !145, line: 408, baseType: !3470, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3391, file: !145, line: 442, baseType: !3401, size: 64, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !603, file: !14, line: 1200, baseType: !3474, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !603, file: !14, line: 1201, baseType: !420, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !603, file: !14, line: 1202, baseType: !420, size: 64, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !603, file: !14, line: 1203, baseType: !420, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !603, file: !14, line: 1204, baseType: !486, size: 64, offset: 832)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !603, file: !14, line: 1205, baseType: !923, size: 320, offset: 896)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !603, file: !14, line: 1206, baseType: !82, size: 32, offset: 1216)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !603, file: !14, line: 1207, baseType: !321, size: 32, offset: 1248)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !603, file: !14, line: 1209, baseType: !442, size: 64, offset: 1280)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !603, file: !14, line: 1211, baseType: !3486, size: 64, offset: 1344)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3489)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !603, file: !14, line: 1223, baseType: !3491, size: 64, offset: 1408)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !503, line: 34, size: 64, elements: !3492)
!3492 = !{!3493}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3491, file: !503, line: 35, baseType: !506, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !603, file: !14, line: 1224, baseType: !271, size: 128, offset: 1472)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !603, file: !14, line: 1225, baseType: !2035, size: 64, offset: 1600)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !603, file: !14, line: 1226, baseType: !3497, size: 64, offset: 1664)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !121, line: 1495, size: 128, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3498, file: !121, line: 1496, baseType: !2035, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3498, file: !121, line: 1497, baseType: !442, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !603, file: !14, line: 1227, baseType: !2830, size: 64, offset: 1728)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !603, file: !14, line: 1228, baseType: !3504, size: 64, offset: 1792)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !603, file: !14, line: 1229, baseType: !646, size: 128, offset: 1856)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !603, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !603, file: !14, line: 1231, baseType: !3509, size: 2496, offset: 2048)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !145, line: 521, size: 2496, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3515, !3547}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3509, file: !145, line: 522, baseType: !7, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3509, file: !145, line: 523, baseType: !923, size: 320, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3509, file: !145, line: 524, baseType: !3514, size: 192, offset: 384)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 192, elements: !371)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3509, file: !145, line: 525, baseType: !3516, size: 1728, offset: 576)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3517, size: 1728, elements: !371)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !145, line: 222, size: 576, elements: !3518)
!3518 = !{!3519, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3517, file: !145, line: 223, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !145, line: 445, size: 256, elements: !3522)
!3522 = !{!3523, !3524, !3537, !3538}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3521, file: !145, line: 446, baseType: !82, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3521, file: !145, line: 447, baseType: !3525, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !145, line: 312, size: 512, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3527, file: !145, line: 313, baseType: !694, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3527, file: !145, line: 314, baseType: !694, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3527, file: !145, line: 315, baseType: !694, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3527, file: !145, line: 316, baseType: !694, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3527, file: !145, line: 317, baseType: !3354, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3527, file: !145, line: 318, baseType: !3354, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3527, file: !145, line: 319, baseType: !3354, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3527, file: !145, line: 320, baseType: !3384, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3521, file: !145, line: 448, baseType: !266, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3521, file: !145, line: 449, baseType: !3520, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3517, file: !145, line: 224, baseType: !82, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3517, file: !145, line: 226, baseType: !271, size: 128, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3517, file: !145, line: 227, baseType: !420, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3517, file: !145, line: 228, baseType: !7, size: 32, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3517, file: !145, line: 229, baseType: !7, size: 32, offset: 352)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3517, file: !145, line: 230, baseType: !3322, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3517, file: !145, line: 231, baseType: !3322, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3517, file: !145, line: 232, baseType: !442, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3509, file: !145, line: 526, baseType: !3548, size: 192, offset: 2304)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3525, size: 192, elements: !371)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !603, file: !14, line: 1233, baseType: !3550, size: 2368, offset: 4544)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3551)
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3550, file: !14, line: 1185, baseType: !340, size: 16)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3550, file: !14, line: 1186, baseType: !340, size: 16, offset: 16)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3550, file: !14, line: 1187, baseType: !3555, size: 2304, offset: 64)
!3555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3556, size: 2304, elements: !371)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3557, line: 12, size: 768, elements: !3558)
!3557 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3558 = !{!3559, !3567, !3568, !4691, !4692}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3556, file: !3557, line: 13, baseType: !3560, size: 384)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3561, line: 17, size: 384, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3562 = !{!3563, !3564, !3565, !3566}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3560, file: !3561, line: 18, baseType: !82, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3560, file: !3561, line: 19, baseType: !82, size: 32, offset: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3560, file: !3561, line: 20, baseType: !851, size: 192, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3560, file: !3561, line: 22, baseType: !793, size: 128, align: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3556, file: !3557, line: 14, baseType: !1773, size: 64, offset: 384)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3556, file: !3557, line: 15, baseType: !3569, size: 64, offset: 448)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3570, line: 16, size: 64, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3571 = !{!3572}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3569, file: !3570, line: 17, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !3221, line: 746, size: 58368, elements: !3575)
!3575 = !{!3576, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3656, !3667, !3687, !3691, !3694, !3725, !3726, !3727, !3728, !3732, !3734, !3735, !3736, !3737, !3738, !3739, !3750, !3751, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3768, !3769, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3857, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3872, !3873, !3874, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3906, !3912, !3913, !3914, !3915, !3916, !3920, !3923, !3930, !3935, !3938, !3941, !3944, !3947, !4085, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4125, !4126, !4127, !4136, !4144, !4145, !4146, !4147, !4148, !4153, !4154, !4155, !4158, !4159, !4161, !4172, !4175, !4176, !4179, !4180, !4266, !4267, !4268, !4269, !4270, !4276, !4277, !4278, !4279, !4282, !4283, !4286, !4300, !4301, !4304, !4305, !4306, !4309, !4310, !4311, !4312, !4313, !4314, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4346, !4347, !4353, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4435, !4437, !4438, !4439, !4440, !4441, !4442, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4472, !4473, !4474}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3574, file: !3221, line: 752, baseType: !3577, size: 192)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3578, line: 56, size: 192, elements: !3579)
!3578 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3577, file: !3578, line: 57, baseType: !420, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3577, file: !3578, line: 58, baseType: !420, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3577, file: !3578, line: 59, baseType: !520, size: 32, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3577, file: !3578, line: 61, baseType: !520, size: 32, offset: 160)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3574, file: !3221, line: 754, baseType: !7, size: 32, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3574, file: !3221, line: 767, baseType: !442, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3574, file: !3221, line: 768, baseType: !838, size: 32, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3574, file: !3221, line: 770, baseType: !7, size: 32, offset: 352)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3574, file: !3221, line: 771, baseType: !7, size: 32, offset: 384)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3574, file: !3221, line: 774, baseType: !82, size: 32, offset: 416)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3574, file: !3221, line: 775, baseType: !3591, size: 128, offset: 448)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3592, line: 58, size: 128, elements: !3593)
!3592 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3593 = !{!3594, !3595, !3600, !3601}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3591, file: !3592, line: 59, baseType: !787, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3591, file: !3592, line: 60, baseType: !3596, size: 32, offset: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3591, file: !3592, line: 60, size: 32, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3596, file: !3592, line: 61, baseType: !7, size: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3596, file: !3592, line: 62, baseType: !321, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3591, file: !3592, line: 65, baseType: !338, size: 16, offset: 96)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3591, file: !3592, line: 65, baseType: !338, size: 16, offset: 112)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3574, file: !3221, line: 776, baseType: !7, size: 32, offset: 576)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3574, file: !3221, line: 777, baseType: !420, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3574, file: !3221, line: 778, baseType: !3573, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3574, file: !3221, line: 787, baseType: !82, size: 32, offset: 768)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3574, file: !3221, line: 788, baseType: !82, size: 32, offset: 800)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3574, file: !3221, line: 790, baseType: !82, size: 32, offset: 832)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3574, file: !3221, line: 792, baseType: !82, size: 32, offset: 864)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3574, file: !3221, line: 793, baseType: !82, size: 32, offset: 896)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3574, file: !3221, line: 794, baseType: !82, size: 32, offset: 928)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3574, file: !3221, line: 795, baseType: !7, size: 32, offset: 960)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3574, file: !3221, line: 797, baseType: !3613, size: 2048, offset: 1024)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !3221, line: 551, size: 2048, elements: !3614)
!3614 = !{!3615, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3635, !3638, !3639, !3640}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3613, file: !3221, line: 553, baseType: !3616, size: 128)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !3221, line: 411, size: 128, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3616, file: !3221, line: 412, baseType: !420, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3616, file: !3221, line: 413, baseType: !520, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3613, file: !3221, line: 554, baseType: !915, size: 192, align: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3613, file: !3221, line: 555, baseType: !524, size: 64, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3613, file: !3221, line: 556, baseType: !524, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3613, file: !3221, line: 558, baseType: !271, size: 128, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3613, file: !3221, line: 559, baseType: !7, size: 32, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3613, file: !3221, line: 561, baseType: !524, size: 64, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3613, file: !3221, line: 562, baseType: !524, size: 64, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3613, file: !3221, line: 563, baseType: !524, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3613, file: !3221, line: 564, baseType: !524, size: 64, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3613, file: !3221, line: 565, baseType: !745, size: 64, offset: 896)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3613, file: !3221, line: 566, baseType: !524, size: 64, offset: 960)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3613, file: !3221, line: 568, baseType: !524, size: 64, offset: 1024)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3613, file: !3221, line: 571, baseType: !82, size: 32, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3613, file: !3221, line: 572, baseType: !3634, size: 64, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3613, file: !3221, line: 574, baseType: !3636, size: 64, offset: 1216)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !3221, line: 49, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3613, file: !3221, line: 576, baseType: !3636, size: 64, offset: 1280)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3613, file: !3221, line: 578, baseType: !420, size: 64, offset: 1344)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3613, file: !3221, line: 588, baseType: !3641, size: 512, align: 512, offset: 1536)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !3221, line: 497, size: 512, align: 512, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3641, file: !3221, line: 498, baseType: !524, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3641, file: !3221, line: 499, baseType: !524, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3641, file: !3221, line: 500, baseType: !524, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3641, file: !3221, line: 501, baseType: !520, size: 32, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3641, file: !3221, line: 502, baseType: !520, size: 32, offset: 224)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3641, file: !3221, line: 503, baseType: !420, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3641, file: !3221, line: 504, baseType: !420, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3641, file: !3221, line: 505, baseType: !420, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3641, file: !3221, line: 506, baseType: !3652, size: 64, align: 64, offset: 448)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !3221, line: 445, size: 64, align: 64, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3652, file: !3221, line: 446, baseType: !7, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3652, file: !3221, line: 447, baseType: !7, size: 32, offset: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3574, file: !3221, line: 798, baseType: !3657, size: 384, offset: 3072)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !3221, line: 592, size: 384, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3657, file: !3221, line: 593, baseType: !271, size: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3657, file: !3221, line: 594, baseType: !420, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3657, file: !3221, line: 595, baseType: !420, size: 64, offset: 192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3657, file: !3221, line: 596, baseType: !7, size: 32, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3657, file: !3221, line: 597, baseType: !340, size: 16, offset: 288)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3657, file: !3221, line: 598, baseType: !340, size: 16, offset: 304)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3657, file: !3221, line: 600, baseType: !3666, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3574, file: !3221, line: 799, baseType: !3668, size: 1792, offset: 3456)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !3221, line: 610, size: 1792, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3668, file: !3221, line: 611, baseType: !915, size: 192, align: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3668, file: !3221, line: 618, baseType: !524, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3668, file: !3221, line: 619, baseType: !524, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3668, file: !3221, line: 620, baseType: !524, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3668, file: !3221, line: 621, baseType: !524, size: 64, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3668, file: !3221, line: 622, baseType: !524, size: 64, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3668, file: !3221, line: 629, baseType: !745, size: 64, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3668, file: !3221, line: 630, baseType: !524, size: 64, offset: 576)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3668, file: !3221, line: 631, baseType: !7, size: 32, offset: 640)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3668, file: !3221, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3668, file: !3221, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3668, file: !3221, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3668, file: !3221, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3668, file: !3221, line: 662, baseType: !2286, size: 512, offset: 704)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3668, file: !3221, line: 671, baseType: !2286, size: 512, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3668, file: !3221, line: 679, baseType: !3686, size: 64, offset: 1728)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3574, file: !3221, line: 800, baseType: !3688, size: 64, offset: 5248)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3690)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !3221, line: 800, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3574, file: !3221, line: 809, baseType: !3692, size: 64, offset: 5312)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !3221, line: 70, flags: DIFlagFwdDecl)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3574, file: !3221, line: 825, baseType: !3695, size: 2048, align: 512, offset: 5632)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !3221, line: 509, size: 2048, align: 512, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3695, file: !3221, line: 511, baseType: !524, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3695, file: !3221, line: 512, baseType: !524, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3695, file: !3221, line: 513, baseType: !524, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3695, file: !3221, line: 514, baseType: !524, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3695, file: !3221, line: 515, baseType: !524, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3695, file: !3221, line: 516, baseType: !524, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3695, file: !3221, line: 518, baseType: !524, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3695, file: !3221, line: 519, baseType: !524, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3695, file: !3221, line: 520, baseType: !745, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3695, file: !3221, line: 522, baseType: !524, size: 64, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3695, file: !3221, line: 523, baseType: !524, size: 64, offset: 640)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3695, file: !3221, line: 524, baseType: !745, size: 64, offset: 704)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3695, file: !3221, line: 526, baseType: !745, size: 64, offset: 768)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3695, file: !3221, line: 527, baseType: !524, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3695, file: !3221, line: 529, baseType: !524, size: 64, offset: 896)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3695, file: !3221, line: 530, baseType: !524, size: 64, offset: 960)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3695, file: !3221, line: 531, baseType: !524, size: 64, offset: 1024)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3695, file: !3221, line: 532, baseType: !524, size: 64, offset: 1088)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3695, file: !3221, line: 533, baseType: !524, size: 64, offset: 1152)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3695, file: !3221, line: 535, baseType: !524, size: 64, offset: 1216)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3695, file: !3221, line: 536, baseType: !524, size: 64, offset: 1280)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3695, file: !3221, line: 537, baseType: !524, size: 64, offset: 1344)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3695, file: !3221, line: 538, baseType: !524, size: 64, offset: 1408)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3695, file: !3221, line: 539, baseType: !524, size: 64, offset: 1472)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3695, file: !3221, line: 540, baseType: !524, size: 64, offset: 1536)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3695, file: !3221, line: 541, baseType: !524, size: 64, offset: 1600)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3695, file: !3221, line: 542, baseType: !524, size: 64, offset: 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3695, file: !3221, line: 543, baseType: !524, size: 64, offset: 1728)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3574, file: !3221, line: 833, baseType: !7, size: 32, offset: 7680)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3574, file: !3221, line: 836, baseType: !7, size: 32, offset: 7712)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3574, file: !3221, line: 837, baseType: !82, size: 32, offset: 7744)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3574, file: !3221, line: 838, baseType: !3729, size: 64, offset: 7808)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3731)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1740, line: 19, baseType: !1742)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3574, file: !3221, line: 839, baseType: !3733, size: 64, offset: 7872)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3574, file: !3221, line: 840, baseType: !3731, size: 64, offset: 7936)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3574, file: !3221, line: 841, baseType: !442, size: 64, offset: 8000)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3574, file: !3221, line: 843, baseType: !340, size: 16, offset: 8064)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3574, file: !3221, line: 845, baseType: !340, size: 16, offset: 8080)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3574, file: !3221, line: 848, baseType: !82, size: 32, offset: 8096)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3574, file: !3221, line: 849, baseType: !3740, size: 32, offset: 8128)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !3221, line: 718, size: 32, elements: !3741)
!3741 = !{!3742, !3749}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3740, file: !3221, line: 724, baseType: !3743, size: 32)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3740, file: !3221, line: 719, size: 32, elements: !3744)
!3744 = !{!3745, !3746, !3747, !3748}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3743, file: !3221, line: 720, baseType: !329, size: 8)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3743, file: !3221, line: 721, baseType: !329, size: 8, offset: 8)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3743, file: !3221, line: 722, baseType: !329, size: 8, offset: 16)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3743, file: !3221, line: 723, baseType: !329, size: 8, offset: 24)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3740, file: !3221, line: 725, baseType: !520, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3574, file: !3221, line: 850, baseType: !271, size: 128, offset: 8192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3574, file: !3221, line: 851, baseType: !3752, size: 64, offset: 8320)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !3221, line: 60, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3574, file: !3221, line: 855, baseType: !420, size: 64, offset: 8384)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3574, file: !3221, line: 856, baseType: !329, size: 8, offset: 8448)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3574, file: !3221, line: 857, baseType: !329, size: 8, offset: 8456)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3574, file: !3221, line: 858, baseType: !82, size: 32, offset: 8480)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3574, file: !3221, line: 859, baseType: !271, size: 128, offset: 8512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3574, file: !3221, line: 860, baseType: !82, size: 32, offset: 8640)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3574, file: !3221, line: 861, baseType: !271, size: 128, offset: 8704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3574, file: !3221, line: 873, baseType: !3762, size: 256, offset: 8832)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !3221, line: 376, size: 256, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3762, file: !3221, line: 381, baseType: !420, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3762, file: !3221, line: 384, baseType: !526, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3762, file: !3221, line: 389, baseType: !526, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3762, file: !3221, line: 392, baseType: !526, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3574, file: !3221, line: 875, baseType: !271, size: 128, offset: 9088)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3574, file: !3221, line: 877, baseType: !3770, size: 320, offset: 9216)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3771, line: 86, size: 320, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3770, file: !3771, line: 87, baseType: !82, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3770, file: !3771, line: 88, baseType: !271, size: 128, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3770, file: !3771, line: 89, baseType: !271, size: 128, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3574, file: !3221, line: 878, baseType: !915, size: 192, align: 64, offset: 9536)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3574, file: !3221, line: 881, baseType: !1324, size: 64, offset: 9728)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3574, file: !3221, line: 882, baseType: !1324, size: 64, offset: 9792)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3574, file: !3221, line: 884, baseType: !82, size: 32, offset: 9856)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3574, file: !3221, line: 885, baseType: !82, size: 32, offset: 9888)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3574, file: !3221, line: 886, baseType: !82, size: 32, offset: 9920)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3574, file: !3221, line: 888, baseType: !82, size: 32, offset: 9952)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3574, file: !3221, line: 890, baseType: !420, size: 64, offset: 9984)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3574, file: !3221, line: 893, baseType: !7, size: 32, offset: 10048)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3574, file: !3221, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3574, file: !3221, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3574, file: !3221, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3574, file: !3221, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3574, file: !3221, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3574, file: !3221, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3574, file: !3221, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3574, file: !3221, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3574, file: !3221, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3574, file: !3221, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3574, file: !3221, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3574, file: !3221, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3574, file: !3221, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3574, file: !3221, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3574, file: !3221, line: 969, baseType: !420, size: 64, offset: 10176)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3574, file: !3221, line: 971, baseType: !3801, size: 448, offset: 10240)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !151, line: 25, size: 448, elements: !3802)
!3802 = !{!3803, !3804, !3809}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3801, file: !151, line: 26, baseType: !420, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3801, file: !151, line: 27, baseType: !3805, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!406, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, scope: !3801, file: !151, line: 28, baseType: !3810, size: 320, offset: 128)
!3810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3801, file: !151, line: 28, size: 320, elements: !3811)
!3811 = !{!3812, !3822, !3847}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3810, file: !151, line: 37, baseType: !3813, size: 320)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !151, line: 30, size: 320, elements: !3814)
!3814 = !{!3815, !3817, !3818, !3819, !3820, !3821}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3813, file: !151, line: 31, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3813, file: !151, line: 32, baseType: !520, size: 32, offset: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3813, file: !151, line: 33, baseType: !520, size: 32, offset: 96)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3813, file: !151, line: 34, baseType: !520, size: 32, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3813, file: !151, line: 35, baseType: !524, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3813, file: !151, line: 36, baseType: !3816, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3810, file: !151, line: 47, baseType: !3823, size: 192)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !151, line: 39, size: 192, elements: !3824)
!3824 = !{!3825, !3826, !3827, !3846}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3823, file: !151, line: 40, baseType: !2331, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3823, file: !151, line: 41, baseType: !150, size: 32, offset: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3823, file: !151, line: 42, baseType: !3828, size: 64, offset: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3823, file: !151, line: 42, size: 64, elements: !3829)
!3829 = !{!3830, !3838}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3828, file: !151, line: 43, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3833, line: 7, size: 128, elements: !3834)
!3833 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3834 = !{!3835, !3837}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3832, file: !3833, line: 8, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !404, line: 93, baseType: !614)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3832, file: !3833, line: 9, baseType: !614, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3828, file: !151, line: 44, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3841, line: 7, size: 64, elements: !3842)
!3841 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3842 = !{!3843, !3845}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3840, file: !3841, line: 8, baseType: !3844, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3841, line: 5, baseType: !908)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3840, file: !3841, line: 9, baseType: !908, size: 32, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3823, file: !151, line: 46, baseType: !524, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3810, file: !151, line: 55, baseType: !3848, size: 256)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !151, line: 49, size: 256, elements: !3849)
!3849 = !{!3850, !3853, !3854, !3855, !3856}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3848, file: !151, line: 50, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !151, line: 14, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3848, file: !151, line: 51, baseType: !82, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3848, file: !151, line: 52, baseType: !82, size: 32, offset: 96)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3848, file: !151, line: 53, baseType: !420, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3848, file: !151, line: 54, baseType: !420, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3574, file: !3221, line: 973, baseType: !3858, size: 32, offset: 10688)
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !272, line: 27, baseType: !3859)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !404, line: 28, baseType: !82)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3574, file: !3221, line: 974, baseType: !3858, size: 32, offset: 10720)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3574, file: !3221, line: 978, baseType: !420, size: 64, offset: 10752)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3574, file: !3221, line: 987, baseType: !3573, size: 64, offset: 10816)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3574, file: !3221, line: 990, baseType: !3573, size: 64, offset: 10880)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3574, file: !3221, line: 995, baseType: !271, size: 128, offset: 10944)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3574, file: !3221, line: 996, baseType: !271, size: 128, offset: 11072)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3574, file: !3221, line: 997, baseType: !3573, size: 64, offset: 11200)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3574, file: !3221, line: 1005, baseType: !271, size: 128, offset: 11264)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3574, file: !3221, line: 1006, baseType: !271, size: 128, offset: 11392)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3574, file: !3221, line: 1009, baseType: !834, size: 64, offset: 11520)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3574, file: !3221, line: 1010, baseType: !3871, size: 512, offset: 11584)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 512, elements: !847)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3574, file: !3221, line: 1011, baseType: !271, size: 128, offset: 12096)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3574, file: !3221, line: 1012, baseType: !271, size: 128, offset: 12224)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3574, file: !3221, line: 1014, baseType: !3875, size: 64, offset: 12352)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3574, file: !3221, line: 1017, baseType: !717, size: 64, offset: 12416)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3574, file: !3221, line: 1020, baseType: !717, size: 64, offset: 12480)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3574, file: !3221, line: 1023, baseType: !442, size: 64, offset: 12544)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3574, file: !3221, line: 1025, baseType: !524, size: 64, offset: 12608)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3574, file: !3221, line: 1026, baseType: !524, size: 64, offset: 12672)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3574, file: !3221, line: 1031, baseType: !524, size: 64, offset: 12736)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3574, file: !3221, line: 1032, baseType: !3883, size: 192, offset: 12800)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !3221, line: 324, size: 192, elements: !3884)
!3884 = !{!3885, !3886, !3887}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3883, file: !3221, line: 326, baseType: !524, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3883, file: !3221, line: 327, baseType: !524, size: 64, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3883, file: !3221, line: 328, baseType: !748, size: 32, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3574, file: !3221, line: 1041, baseType: !420, size: 64, offset: 12992)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3574, file: !3221, line: 1042, baseType: !420, size: 64, offset: 13056)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3574, file: !3221, line: 1045, baseType: !524, size: 64, offset: 13120)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3574, file: !3221, line: 1048, baseType: !524, size: 64, offset: 13184)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3574, file: !3221, line: 1051, baseType: !420, size: 64, offset: 13248)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3574, file: !3221, line: 1052, baseType: !420, size: 64, offset: 13312)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3574, file: !3221, line: 1055, baseType: !3895, size: 640, offset: 13376)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3896, line: 132, size: 640, elements: !3897)
!3896 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3897 = !{!3898, !3904, !3905}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3895, file: !3896, line: 133, baseType: !3899, size: 576)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, size: 576, elements: !371)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3896, line: 117, size: 192, elements: !3901)
!3901 = !{!3902, !3903}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3900, file: !3896, line: 118, baseType: !524, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3900, file: !3896, line: 119, baseType: !2340, size: 128, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3895, file: !3896, line: 134, baseType: !7, size: 32, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3895, file: !3896, line: 135, baseType: !7, size: 32, offset: 608)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3574, file: !3221, line: 1058, baseType: !3907, size: 448, offset: 14016)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3896, line: 144, size: 448, elements: !3908)
!3908 = !{!3909, !3910, !3911}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3907, file: !3896, line: 145, baseType: !793, size: 128, align: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3907, file: !3896, line: 146, baseType: !735, size: 256, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3907, file: !3896, line: 147, baseType: !7, size: 32, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3574, file: !3221, line: 1064, baseType: !873, size: 64, offset: 14464)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3574, file: !3221, line: 1067, baseType: !873, size: 64, offset: 14528)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3574, file: !3221, line: 1070, baseType: !873, size: 64, offset: 14592)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3574, file: !3221, line: 1074, baseType: !900, size: 64, offset: 14656)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3574, file: !3221, line: 1084, baseType: !3917, size: 128, offset: 14720)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 128, elements: !3918)
!3918 = !{!3919}
!3919 = !DISubrange(count: 16)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3574, file: !3221, line: 1086, baseType: !3921, size: 64, offset: 14848)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !3221, line: 55, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3574, file: !3221, line: 1089, baseType: !3924, size: 64, offset: 14912)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3925, line: 12, size: 64, elements: !3926)
!3925 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3926 = !{!3927}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3924, file: !3925, line: 13, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3925, line: 8, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3574, file: !3221, line: 1090, baseType: !3931, size: 128, offset: 14976)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3932, line: 13, size: 128, elements: !3933)
!3932 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3933 = !{!3934}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3931, file: !3932, line: 14, baseType: !271, size: 128)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3574, file: !3221, line: 1097, baseType: !3936, size: 64, offset: 15104)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !3221, line: 50, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3574, file: !3221, line: 1100, baseType: !3939, size: 64, offset: 15168)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !3221, line: 1100, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3574, file: !3221, line: 1103, baseType: !3942, size: 64, offset: 15232)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !3221, line: 53, flags: DIFlagFwdDecl)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3574, file: !3221, line: 1107, baseType: !3945, size: 64, offset: 15296)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3221, line: 56, flags: DIFlagFwdDecl)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3574, file: !3221, line: 1110, baseType: !3948, size: 64, offset: 15360)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3950, line: 93, size: 8768, elements: !3951)
!3950 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3951 = !{!3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3999, !4008, !4009, !4011, !4012, !4013, !4016, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4054, !4055, !4062, !4072, !4075, !4076, !4079, !4080, !4081, !4082, !4083, !4084}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3949, file: !3950, line: 94, baseType: !838, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3949, file: !3950, line: 95, baseType: !321, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3949, file: !3950, line: 96, baseType: !82, size: 32, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3949, file: !3950, line: 97, baseType: !82, size: 32, offset: 96)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3949, file: !3950, line: 98, baseType: !271, size: 128, offset: 128)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3949, file: !3950, line: 100, baseType: !851, size: 192, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3949, file: !3950, line: 103, baseType: !3573, size: 64, offset: 448)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3949, file: !3950, line: 106, baseType: !3960, size: 192, offset: 512)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1070, line: 32, size: 192, elements: !3961)
!3961 = !{!3962, !3963}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3960, file: !1070, line: 33, baseType: !271, size: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3960, file: !1070, line: 34, baseType: !3964, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3965, line: 25, baseType: !3966)
!3965 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3965, line: 23, size: 64, elements: !3967)
!3967 = !{!3968}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3966, file: !3965, line: 24, baseType: !1745, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3949, file: !3950, line: 109, baseType: !642, size: 64, offset: 704)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3949, file: !3950, line: 112, baseType: !82, size: 32, offset: 768)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3949, file: !3950, line: 114, baseType: !82, size: 32, offset: 800)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3949, file: !3950, line: 115, baseType: !3573, size: 64, offset: 832)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3949, file: !3950, line: 118, baseType: !82, size: 32, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3949, file: !3950, line: 119, baseType: !7, size: 32, offset: 928)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3949, file: !3950, line: 121, baseType: !3976, size: 64, offset: 960)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3950, line: 80, size: 448, elements: !3978)
!3978 = !{!3979, !3980, !3986}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3977, file: !3950, line: 81, baseType: !321, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3977, file: !3950, line: 82, baseType: !3981, size: 128, offset: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3950, line: 75, size: 128, elements: !3982)
!3982 = !{!3983, !3984}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3981, file: !3950, line: 76, baseType: !3573, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3981, file: !3950, line: 77, baseType: !3985, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3977, file: !3950, line: 83, baseType: !1276, size: 256, offset: 192)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3949, file: !3950, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3949, file: !3950, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3949, file: !3950, line: 138, baseType: !7, size: 32, offset: 1056)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3949, file: !3950, line: 139, baseType: !271, size: 128, offset: 1088)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3949, file: !3950, line: 142, baseType: !2286, size: 512, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3949, file: !3950, line: 143, baseType: !2266, size: 64, offset: 1728)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3949, file: !3950, line: 150, baseType: !3994, size: 256, offset: 1792)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3995, size: 256, elements: !1927)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3950, line: 38, size: 128, elements: !3996)
!3996 = !{!3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3995, file: !3950, line: 39, baseType: !524, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3995, file: !3950, line: 40, baseType: !524, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3949, file: !3950, line: 156, baseType: !4000, size: 192, offset: 2048)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3950, line: 66, size: 192, elements: !4001)
!4001 = !{!4002}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4000, file: !3950, line: 67, baseType: !4003, size: 192)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3950, line: 47, size: 192, elements: !4004)
!4004 = !{!4005, !4006, !4007}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4003, file: !3950, line: 48, baseType: !741, size: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4003, file: !3950, line: 49, baseType: !741, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4003, file: !3950, line: 50, baseType: !741, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3949, file: !3950, line: 160, baseType: !3895, size: 640, offset: 2240)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3949, file: !3950, line: 163, baseType: !4010, size: 256, offset: 2880)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 256, elements: !847)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3949, file: !3950, line: 169, baseType: !834, size: 64, offset: 3136)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3949, file: !3950, line: 172, baseType: !82, size: 32, offset: 3200)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3949, file: !3950, line: 174, baseType: !4014, size: 64, offset: 3264)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3950, line: 174, flags: DIFlagFwdDecl)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3949, file: !3950, line: 185, baseType: !4017, size: 64, offset: 3328)
!4017 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !493, line: 860, baseType: !4018)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 853, size: 64, elements: !4019)
!4019 = !{!4020, !4021}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4018, file: !493, line: 858, baseType: !492, size: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4018, file: !493, line: 859, baseType: !301, size: 32, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3949, file: !3950, line: 186, baseType: !524, size: 64, offset: 3392)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3949, file: !3950, line: 186, baseType: !524, size: 64, offset: 3456)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3949, file: !3950, line: 186, baseType: !524, size: 64, offset: 3520)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3949, file: !3950, line: 186, baseType: !524, size: 64, offset: 3584)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3949, file: !3950, line: 187, baseType: !524, size: 64, offset: 3648)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3949, file: !3950, line: 188, baseType: !524, size: 64, offset: 3712)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3949, file: !3950, line: 189, baseType: !3883, size: 192, offset: 3776)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3949, file: !3950, line: 190, baseType: !420, size: 64, offset: 3968)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3949, file: !3950, line: 190, baseType: !420, size: 64, offset: 4032)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3949, file: !3950, line: 190, baseType: !420, size: 64, offset: 4096)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3949, file: !3950, line: 190, baseType: !420, size: 64, offset: 4160)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3949, file: !3950, line: 191, baseType: !420, size: 64, offset: 4224)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3949, file: !3950, line: 191, baseType: !420, size: 64, offset: 4288)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3949, file: !3950, line: 191, baseType: !420, size: 64, offset: 4352)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3949, file: !3950, line: 191, baseType: !420, size: 64, offset: 4416)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3949, file: !3950, line: 192, baseType: !420, size: 64, offset: 4480)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3949, file: !3950, line: 192, baseType: !420, size: 64, offset: 4544)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3949, file: !3950, line: 192, baseType: !420, size: 64, offset: 4608)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3949, file: !3950, line: 192, baseType: !420, size: 64, offset: 4672)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3949, file: !3950, line: 193, baseType: !420, size: 64, offset: 4736)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3949, file: !3950, line: 193, baseType: !420, size: 64, offset: 4800)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3949, file: !3950, line: 194, baseType: !4044, size: 448, offset: 4864)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4045, line: 12, size: 448, elements: !4046)
!4045 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4046 = !{!4047, !4048, !4049, !4050, !4051, !4052, !4053}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4044, file: !4045, line: 15, baseType: !524, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4044, file: !4045, line: 17, baseType: !524, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4044, file: !4045, line: 19, baseType: !524, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4044, file: !4045, line: 21, baseType: !524, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4044, file: !4045, line: 29, baseType: !524, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4044, file: !4045, line: 35, baseType: !524, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4044, file: !4045, line: 44, baseType: !524, size: 64, offset: 384)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3949, file: !3950, line: 202, baseType: !526, size: 64, offset: 5312)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3949, file: !3950, line: 213, baseType: !4056, size: 2048, offset: 5376)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4057, size: 2048, elements: !3918)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4058, line: 43, size: 128, elements: !4059)
!4058 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4059 = !{!4060, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4057, file: !4058, line: 44, baseType: !419, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4057, file: !4058, line: 45, baseType: !419, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3949, file: !3950, line: 216, baseType: !4063, size: 448, offset: 7424)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3950, line: 30, size: 448, elements: !4064)
!4064 = !{!4065, !4066, !4067, !4068, !4069, !4070, !4071}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4063, file: !3950, line: 31, baseType: !82, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4063, file: !3950, line: 32, baseType: !406, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4063, file: !3950, line: 33, baseType: !420, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4063, file: !3950, line: 34, baseType: !524, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4063, file: !3950, line: 34, baseType: !524, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4063, file: !3950, line: 35, baseType: !420, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4063, file: !3950, line: 35, baseType: !420, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3949, file: !3950, line: 219, baseType: !4073, size: 64, offset: 7872)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3950, line: 219, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3949, file: !3950, line: 222, baseType: !7, size: 32, offset: 7936)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3949, file: !3950, line: 223, baseType: !4077, size: 64, offset: 8000)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3950, line: 223, flags: DIFlagFwdDecl)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3949, file: !3950, line: 230, baseType: !982, size: 8, offset: 8064)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3949, file: !3950, line: 231, baseType: !951, size: 16, offset: 8080)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3949, file: !3950, line: 232, baseType: !951, size: 16, offset: 8096)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3949, file: !3950, line: 234, baseType: !1324, size: 64, offset: 8128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3949, file: !3950, line: 237, baseType: !735, size: 256, offset: 8192)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3949, file: !3950, line: 243, baseType: !923, size: 320, offset: 8448)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3574, file: !3221, line: 1111, baseType: !4086, size: 64, offset: 15424)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3950, line: 20, size: 16640, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4087, file: !3950, line: 21, baseType: !301, size: 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4087, file: !3950, line: 22, baseType: !838, size: 32, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4087, file: !3950, line: 23, baseType: !851, size: 192, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4087, file: !3950, line: 24, baseType: !4093, size: 16384, offset: 256)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4094, size: 16384, elements: !375)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1070, line: 51, size: 256, elements: !4095)
!4095 = !{!4096}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4094, file: !1070, line: 52, baseType: !4097, size: 256)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1070, line: 37, size: 256, elements: !4098)
!4098 = !{!4099, !4106, !4107, !4113}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4097, file: !1070, line: 39, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4101, line: 83, baseType: !4102)
!4101 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4101, line: 82, baseType: !4104)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !82}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4097, file: !1070, line: 40, baseType: !420, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4097, file: !1070, line: 46, baseType: !4108, size: 64, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4101, line: 86, baseType: !4109)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4101, line: 85, baseType: !4111)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4097, file: !1070, line: 48, baseType: !3964, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3574, file: !3221, line: 1112, baseType: !3964, size: 64, offset: 15488)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3574, file: !3221, line: 1113, baseType: !3964, size: 64, offset: 15552)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3574, file: !3221, line: 1115, baseType: !3964, size: 64, offset: 15616)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3574, file: !3221, line: 1116, baseType: !3960, size: 192, offset: 15680)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3574, file: !3221, line: 1117, baseType: !420, size: 64, offset: 15872)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3574, file: !3221, line: 1118, baseType: !417, size: 64, offset: 15936)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3574, file: !3221, line: 1119, baseType: !7, size: 32, offset: 16000)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3574, file: !3221, line: 1121, baseType: !796, size: 64, offset: 16064)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3574, file: !3221, line: 1125, baseType: !4123, size: 64, offset: 16128)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !3221, line: 43, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3574, file: !3221, line: 1127, baseType: !457, size: 32, offset: 16192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3574, file: !3221, line: 1128, baseType: !7, size: 32, offset: 16224)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3574, file: !3221, line: 1130, baseType: !4128, size: 128, offset: 16256)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4129, line: 37, size: 128, elements: !4130)
!4129 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4130 = !{!4131, !4132, !4133}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4128, file: !4129, line: 38, baseType: !82, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4128, file: !4129, line: 39, baseType: !321, size: 32, offset: 32)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4128, file: !4129, line: 40, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4129, line: 24, flags: DIFlagFwdDecl)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3574, file: !3221, line: 1131, baseType: !4137, size: 256, offset: 16384)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4138, line: 12, size: 256, elements: !4139)
!4138 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4139 = !{!4140, !4141, !4142, !4143}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4137, file: !4138, line: 13, baseType: !370, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4137, file: !4138, line: 14, baseType: !420, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4137, file: !4138, line: 15, baseType: !420, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4137, file: !4138, line: 16, baseType: !982, size: 8, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3574, file: !3221, line: 1134, baseType: !524, size: 64, offset: 16640)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3574, file: !3221, line: 1135, baseType: !524, size: 64, offset: 16704)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3574, file: !3221, line: 1138, baseType: !301, size: 32, offset: 16768)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3574, file: !3221, line: 1141, baseType: !748, size: 32, offset: 16800)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3574, file: !3221, line: 1143, baseType: !4149, size: 64, offset: 16832)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !3221, line: 735, size: 64, elements: !4150)
!4150 = !{!4151}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4149, file: !3221, line: 736, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3574, file: !3221, line: 1147, baseType: !2343, size: 128, offset: 16896)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3574, file: !3221, line: 1149, baseType: !3573, size: 64, offset: 17024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3574, file: !3221, line: 1151, baseType: !4156, size: 64, offset: 17088)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3221, line: 1151, flags: DIFlagFwdDecl)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3574, file: !3221, line: 1188, baseType: !442, size: 64, offset: 17152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3574, file: !3221, line: 1191, baseType: !4160, size: 64, offset: 17216)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3574, file: !3221, line: 1194, baseType: !4162, size: 64, offset: 17280)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !121, line: 976, size: 320, elements: !4164)
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4163, file: !121, line: 977, baseType: !1680, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4163, file: !121, line: 980, baseType: !1680, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4163, file: !121, line: 981, baseType: !340, size: 16, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4163, file: !121, line: 983, baseType: !340, size: 16, offset: 144)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4163, file: !121, line: 985, baseType: !982, size: 8, offset: 160)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4163, file: !121, line: 986, baseType: !982, size: 8, offset: 168)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4163, file: !121, line: 988, baseType: !271, size: 128, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3574, file: !3221, line: 1197, baseType: !4173, size: 64, offset: 17344)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3221, line: 61, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3574, file: !3221, line: 1199, baseType: !3118, size: 64, offset: 17408)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3574, file: !3221, line: 1202, baseType: !4177, size: 64, offset: 17472)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !3221, line: 48, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3574, file: !3221, line: 1205, baseType: !420, size: 64, offset: 17536)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3574, file: !3221, line: 1206, baseType: !4181, size: 64, offset: 17600)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1070, line: 14, baseType: !4183)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1070, line: 12, size: 384, elements: !4184)
!4184 = !{!4185}
!4185 = !DIDerivedType(tag: DW_TAG_member, scope: !4183, file: !1070, line: 13, baseType: !4186, size: 384)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4183, file: !1070, line: 13, size: 384, elements: !4187)
!4187 = !{!4188, !4189, !4190, !4191}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4186, file: !1070, line: 13, baseType: !82, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4186, file: !1070, line: 13, baseType: !82, size: 32, offset: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4186, file: !1070, line: 13, baseType: !82, size: 32, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4186, file: !1070, line: 13, baseType: !4192, size: 256, offset: 128)
!4192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4193, line: 37, size: 256, elements: !4194)
!4193 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4194 = !{!4195, !4200, !4213, !4219, !4228, !4255, !4260}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4192, file: !4193, line: 42, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 39, size: 64, elements: !4197)
!4197 = !{!4198, !4199}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4196, file: !4193, line: 40, baseType: !3859, size: 32)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4196, file: !4193, line: 41, baseType: !463, size: 32, offset: 32)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4192, file: !4193, line: 50, baseType: !4201, size: 192)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 45, size: 192, elements: !4202)
!4202 = !{!4203, !4205, !4206, !4212}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4201, file: !4193, line: 46, baseType: !4204, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !404, line: 95, baseType: !82)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4201, file: !4193, line: 47, baseType: !82, size: 32, offset: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4201, file: !4193, line: 48, baseType: !4207, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4193, line: 11, baseType: !4208)
!4208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4193, line: 8, size: 64, elements: !4209)
!4209 = !{!4210, !4211}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4208, file: !4193, line: 9, baseType: !82, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4208, file: !4193, line: 10, baseType: !442, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4201, file: !4193, line: 49, baseType: !82, size: 32, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4192, file: !4193, line: 57, baseType: !4214, size: 128)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 53, size: 128, elements: !4215)
!4215 = !{!4216, !4217, !4218}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4214, file: !4193, line: 54, baseType: !3859, size: 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4214, file: !4193, line: 55, baseType: !463, size: 32, offset: 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4214, file: !4193, line: 56, baseType: !4207, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4192, file: !4193, line: 66, baseType: !4220, size: 256)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 60, size: 256, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225, !4227}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4220, file: !4193, line: 61, baseType: !3859, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4220, file: !4193, line: 62, baseType: !463, size: 32, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4220, file: !4193, line: 63, baseType: !82, size: 32, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4220, file: !4193, line: 64, baseType: !4226, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !404, line: 94, baseType: !405)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4220, file: !4193, line: 65, baseType: !4226, size: 64, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4192, file: !4193, line: 105, baseType: !4229, size: 256)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 69, size: 256, elements: !4230)
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4229, file: !4193, line: 70, baseType: !442, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, scope: !4229, file: !4193, line: 79, baseType: !4233, size: 192, offset: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4229, file: !4193, line: 79, size: 192, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4244, !4249}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4233, file: !4193, line: 81, baseType: !82, size: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4233, file: !4193, line: 86, baseType: !951, size: 16)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4233, file: !4193, line: 92, baseType: !4238, size: 192)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4233, file: !4193, line: 88, size: 192, elements: !4239)
!4239 = !{!4240, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4238, file: !4193, line: 89, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 64, elements: !2327)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4238, file: !4193, line: 90, baseType: !442, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4238, file: !4193, line: 91, baseType: !442, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4233, file: !4193, line: 97, baseType: !4245, size: 96)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4233, file: !4193, line: 94, size: 96, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4245, file: !4193, line: 95, baseType: !4241, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4245, file: !4193, line: 96, baseType: !521, size: 32, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4233, file: !4193, line: 103, baseType: !4250, size: 128)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4233, file: !4193, line: 99, size: 128, elements: !4251)
!4251 = !{!4252, !4253, !4254}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4250, file: !4193, line: 100, baseType: !420, size: 64)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4250, file: !4193, line: 101, baseType: !521, size: 32, offset: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4250, file: !4193, line: 102, baseType: !521, size: 32, offset: 96)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4192, file: !4193, line: 111, baseType: !4256, size: 128)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 108, size: 128, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4256, file: !4193, line: 109, baseType: !406, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4256, file: !4193, line: 110, baseType: !82, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4192, file: !4193, line: 118, baseType: !4261, size: 128)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4192, file: !4193, line: 114, size: 128, elements: !4262)
!4262 = !{!4263, !4264, !4265}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4261, file: !4193, line: 115, baseType: !442, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4261, file: !4193, line: 116, baseType: !82, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4261, file: !4193, line: 117, baseType: !7, size: 32, offset: 96)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3574, file: !3221, line: 1208, baseType: !4044, size: 448, offset: 17664)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3574, file: !3221, line: 1215, baseType: !524, size: 64, offset: 18112)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3574, file: !3221, line: 1217, baseType: !524, size: 64, offset: 18176)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3574, file: !3221, line: 1219, baseType: !524, size: 64, offset: 18240)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3574, file: !3221, line: 1223, baseType: !4271, size: 64, offset: 18304)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4272, line: 99, baseType: !4273)
!4272 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4272, line: 99, size: 64, elements: !4274)
!4274 = !{!4275}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4273, file: !4272, line: 99, baseType: !1745, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3574, file: !3221, line: 1225, baseType: !492, size: 32, offset: 18368)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3574, file: !3221, line: 1226, baseType: !82, size: 32, offset: 18400)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3574, file: !3221, line: 1227, baseType: !82, size: 32, offset: 18432)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3574, file: !3221, line: 1231, baseType: !4280, size: 64, offset: 18496)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3221, line: 1231, flags: DIFlagFwdDecl)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3574, file: !3221, line: 1233, baseType: !271, size: 128, offset: 18560)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3574, file: !3221, line: 1240, baseType: !4284, size: 64, offset: 18688)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !3221, line: 62, flags: DIFlagFwdDecl)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3574, file: !3221, line: 1242, baseType: !4287, size: 64, offset: 18752)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4289, line: 392, size: 96, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4290 = !{!4291, !4297, !4299}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4288, file: !4289, line: 393, baseType: !4292, size: 32)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4289, line: 388, size: 32, elements: !4293)
!4293 = !{!4294}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4292, file: !4289, line: 389, baseType: !4295, size: 32)
!4295 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4296, line: 46, baseType: !520)
!4296 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4288, file: !4289, line: 394, baseType: !4298, size: 32, offset: 32)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4296, line: 42, baseType: !908)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4288, file: !4289, line: 395, baseType: !4295, size: 32, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3574, file: !3221, line: 1244, baseType: !271, size: 128, offset: 18816)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3574, file: !3221, line: 1245, baseType: !4302, size: 64, offset: 18944)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !3221, line: 51, flags: DIFlagFwdDecl)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3574, file: !3221, line: 1246, baseType: !735, size: 256, offset: 19008)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3574, file: !3221, line: 1247, baseType: !7, size: 32, offset: 19264)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3574, file: !3221, line: 1250, baseType: !4307, size: 64, offset: 19328)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !3221, line: 57, flags: DIFlagFwdDecl)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3574, file: !3221, line: 1251, baseType: !735, size: 256, offset: 19392)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3574, file: !3221, line: 1252, baseType: !271, size: 128, offset: 19648)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3574, file: !3221, line: 1259, baseType: !1569, size: 64, offset: 19776)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3574, file: !3221, line: 1260, baseType: !951, size: 16, offset: 19840)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3574, file: !3221, line: 1261, baseType: !951, size: 16, offset: 19856)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3574, file: !3221, line: 1314, baseType: !4315, size: 64, offset: 19904)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4317, line: 62, size: 256, align: 256, elements: !4318)
!4317 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4316, file: !4317, line: 75, baseType: !521, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4316, file: !4317, line: 90, baseType: !521, size: 32, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4316, file: !4317, line: 112, baseType: !525, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4316, file: !4317, line: 132, baseType: !521, size: 32, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4316, file: !4317, line: 140, baseType: !521, size: 32, offset: 160)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4316, file: !4317, line: 149, baseType: !521, size: 32, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4316, file: !4317, line: 154, baseType: !4326, offset: 224)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, elements: !866)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3574, file: !3221, line: 1315, baseType: !520, size: 32, offset: 19968)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3574, file: !3221, line: 1316, baseType: !520, size: 32, offset: 20000)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3574, file: !3221, line: 1321, baseType: !420, size: 64, offset: 20032)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3574, file: !3221, line: 1325, baseType: !82, size: 32, offset: 20096)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3574, file: !3221, line: 1326, baseType: !82, size: 32, offset: 20128)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3574, file: !3221, line: 1327, baseType: !82, size: 32, offset: 20160)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3574, file: !3221, line: 1328, baseType: !82, size: 32, offset: 20192)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3574, file: !3221, line: 1329, baseType: !793, size: 128, align: 64, offset: 20224)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3574, file: !3221, line: 1332, baseType: !4336, size: 128, offset: 20352)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4337, line: 51, size: 128, elements: !4338)
!4337 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4338 = !{!4339, !4344, !4345}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4336, file: !4337, line: 60, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4341, line: 7, size: 64, elements: !4342)
!4341 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4342 = !{!4343}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4340, file: !4341, line: 12, baseType: !1742, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4336, file: !4337, line: 63, baseType: !982, size: 8, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4336, file: !4337, line: 70, baseType: !982, size: 8, offset: 72)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3574, file: !3221, line: 1335, baseType: !3219, size: 64, offset: 20480)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3574, file: !3221, line: 1337, baseType: !4348, size: 128, offset: 20544)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4337, line: 39, size: 128, elements: !4349)
!4349 = !{!4350, !4351, !4352}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4348, file: !4337, line: 40, baseType: !1191, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4348, file: !4337, line: 42, baseType: !521, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4348, file: !4337, line: 43, baseType: !521, size: 32, offset: 96)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3574, file: !3221, line: 1340, baseType: !4354, size: 64, offset: 20672)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !3221, line: 69, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3574, file: !3221, line: 1351, baseType: !82, size: 32, offset: 20736)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3574, file: !3221, line: 1352, baseType: !82, size: 32, offset: 20768)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3574, file: !3221, line: 1354, baseType: !420, size: 64, offset: 20800)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3574, file: !3221, line: 1364, baseType: !524, size: 64, offset: 20864)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3574, file: !3221, line: 1365, baseType: !524, size: 64, offset: 20928)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3574, file: !3221, line: 1412, baseType: !420, size: 64, offset: 20992)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3574, file: !3221, line: 1453, baseType: !2023, size: 64, offset: 21056)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3574, file: !3221, line: 1457, baseType: !4364, size: 64, offset: 21120)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !157, line: 61, size: 576, elements: !4366)
!4366 = !{!4367, !4368, !4387, !4390, !4391, !4424, !4434}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4365, file: !157, line: 62, baseType: !156, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, scope: !4365, file: !157, line: 64, baseType: !4369, size: 192, offset: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4365, file: !157, line: 64, size: 192, elements: !4370)
!4370 = !{!4371, !4382}
!4371 = !DIDerivedType(tag: DW_TAG_member, scope: !4369, file: !157, line: 65, baseType: !4372, size: 192)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4369, file: !157, line: 65, size: 192, elements: !4373)
!4373 = !{!4374, !4381}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4372, file: !157, line: 66, baseType: !4375, size: 128)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4376, line: 50, size: 128, elements: !4377)
!4376 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4377 = !{!4378, !4379, !4380}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4375, file: !4376, line: 52, baseType: !420, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4375, file: !4376, line: 54, baseType: !7, size: 32, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4375, file: !4376, line: 55, baseType: !7, size: 32, offset: 96)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4372, file: !157, line: 67, baseType: !420, size: 64, offset: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, scope: !4369, file: !157, line: 70, baseType: !4383, size: 192)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4369, file: !157, line: 70, size: 192, elements: !4384)
!4384 = !{!4385, !4386}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4383, file: !157, line: 71, baseType: !793, size: 128, align: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4383, file: !157, line: 72, baseType: !420, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4365, file: !157, line: 76, baseType: !4388, size: 64, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !157, line: 76, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4365, file: !157, line: 77, baseType: !420, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4365, file: !157, line: 79, baseType: !4392, size: 64, offset: 384)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4376, line: 25, size: 256, elements: !4394)
!4394 = !{!4395, !4401, !4405}
!4395 = !DIDerivedType(tag: DW_TAG_member, scope: !4393, file: !4376, line: 26, baseType: !4396, size: 128)
!4396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4393, file: !4376, line: 26, size: 128, elements: !4397)
!4397 = !{!4398, !4400}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4396, file: !4376, line: 27, baseType: !4399, size: 128)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 128, elements: !3918)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4396, file: !4376, line: 28, baseType: !4399, size: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4393, file: !4376, line: 31, baseType: !4402, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4404)
!4404 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4376, line: 23, flags: DIFlagFwdDecl)
!4405 = !DIDerivedType(tag: DW_TAG_member, scope: !4393, file: !4376, line: 33, baseType: !4406, size: 64, offset: 192)
!4406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4393, file: !4376, line: 33, size: 64, elements: !4407)
!4407 = !{!4408, !4414, !4419}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4406, file: !4376, line: 38, baseType: !4409, size: 64)
!4409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4406, file: !4376, line: 34, size: 64, elements: !4410)
!4410 = !{!4411, !4412, !4413}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4409, file: !4376, line: 35, baseType: !908, size: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4409, file: !4376, line: 36, baseType: !329, size: 8, offset: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4409, file: !4376, line: 37, baseType: !329, size: 8, offset: 40)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4406, file: !4376, line: 42, baseType: !4415, size: 16)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4406, file: !4376, line: 39, size: 16, elements: !4416)
!4416 = !{!4417, !4418}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4415, file: !4376, line: 40, baseType: !329, size: 8)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4415, file: !4376, line: 41, baseType: !329, size: 8, offset: 8)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4406, file: !4376, line: 46, baseType: !4420, size: 16)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4406, file: !4376, line: 43, size: 16, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4420, file: !4376, line: 44, baseType: !329, size: 8)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4420, file: !4376, line: 45, baseType: !329, size: 8, offset: 8)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4365, file: !157, line: 81, baseType: !4425, size: 64, offset: 448)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !157, line: 85, size: 384, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4426, file: !157, line: 86, baseType: !4388, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4426, file: !157, line: 87, baseType: !420, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4426, file: !157, line: 88, baseType: !420, size: 64, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4426, file: !157, line: 89, baseType: !420, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4426, file: !157, line: 90, baseType: !982, size: 8, offset: 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4426, file: !157, line: 92, baseType: !4425, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4365, file: !157, line: 82, baseType: !7, size: 32, offset: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3574, file: !3221, line: 1463, baseType: !4436, offset: 21184)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !3221, line: 739, elements: !654)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3574, file: !3221, line: 1470, baseType: !793, size: 128, align: 64, offset: 21184)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3574, file: !3221, line: 1471, baseType: !838, size: 32, offset: 21312)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3574, file: !3221, line: 1472, baseType: !82, size: 32, offset: 21344)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3574, file: !3221, line: 1474, baseType: !3573, size: 64, offset: 21376)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3574, file: !3221, line: 1475, baseType: !1723, size: 320, offset: 21440)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3574, file: !3221, line: 1478, baseType: !4443, size: 64, offset: 21760)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4445, line: 49, size: 512, elements: !4446)
!4445 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4453, !4454, !4455, !4457}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4444, file: !4445, line: 50, baseType: !4443, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4444, file: !4445, line: 51, baseType: !442, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4444, file: !4445, line: 52, baseType: !420, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4444, file: !4445, line: 53, baseType: !420, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4444, file: !4445, line: 54, baseType: !4452, size: 64, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4444, file: !4445, line: 56, baseType: !7, size: 32, offset: 320)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4444, file: !4445, line: 58, baseType: !7, size: 32, offset: 352)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4444, file: !4445, line: 59, baseType: !4456, size: 64, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !272, line: 159, baseType: !524)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4444, file: !4445, line: 60, baseType: !1439, size: 64, offset: 448)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3574, file: !3221, line: 1482, baseType: !838, size: 32, offset: 21824)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3574, file: !3221, line: 1489, baseType: !442, size: 64, offset: 21888)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3574, file: !3221, line: 1504, baseType: !442, size: 64, offset: 21952)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3574, file: !3221, line: 1505, baseType: !525, size: 64, offset: 22016)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3574, file: !3221, line: 1506, baseType: !524, size: 64, offset: 22080)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3574, file: !3221, line: 1507, baseType: !525, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3574, file: !3221, line: 1508, baseType: !525, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3574, file: !3221, line: 1509, baseType: !525, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3574, file: !3221, line: 1510, baseType: !793, size: 128, align: 64, offset: 22208)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3574, file: !3221, line: 1511, baseType: !82, size: 32, offset: 22336)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3574, file: !3221, line: 1515, baseType: !4469, size: 64, offset: 22400)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !788, line: 56, size: 64, elements: !4470)
!4470 = !{!4471}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4469, file: !788, line: 57, baseType: !791, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3574, file: !3221, line: 1518, baseType: !4469, size: 64, offset: 22464)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3574, file: !3221, line: 1528, baseType: !793, size: 128, align: 64, offset: 22528)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3574, file: !3221, line: 1552, baseType: !4475, size: 35328, offset: 23040)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4476, line: 430, size: 35328, elements: !4477)
!4476 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4477 = !{!4478, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4507, !4508, !4509, !4510, !4511, !4512, !4515, !4516, !4517, !4518}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4475, file: !4476, line: 432, baseType: !4479, size: 192)
!4479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4480, size: 192, elements: !371)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4481, line: 16, size: 64, elements: !4482)
!4481 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4482 = !{!4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4480, file: !4481, line: 17, baseType: !338, size: 16)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4480, file: !4481, line: 18, baseType: !338, size: 16, offset: 16)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4480, file: !4481, line: 19, baseType: !338, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4480, file: !4481, line: 19, baseType: !338, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4480, file: !4481, line: 19, baseType: !338, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4480, file: !4481, line: 19, baseType: !338, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4480, file: !4481, line: 19, baseType: !338, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4480, file: !4481, line: 20, baseType: !338, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4480, file: !4481, line: 20, baseType: !338, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4480, file: !4481, line: 20, baseType: !338, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4480, file: !4481, line: 20, baseType: !338, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4480, file: !4481, line: 20, baseType: !338, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4480, file: !4481, line: 20, baseType: !338, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4475, file: !4476, line: 436, baseType: !420, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4475, file: !4476, line: 440, baseType: !340, size: 16, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4475, file: !4476, line: 441, baseType: !340, size: 16, offset: 272)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4475, file: !4476, line: 442, baseType: !340, size: 16, offset: 288)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4475, file: !4476, line: 443, baseType: !340, size: 16, offset: 304)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4475, file: !4476, line: 447, baseType: !420, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4475, file: !4476, line: 448, baseType: !420, size: 64, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4475, file: !4476, line: 459, baseType: !4504, size: 256, offset: 448)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4505, size: 256, elements: !847)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4476, line: 428, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4475, file: !4476, line: 461, baseType: !420, size: 64, offset: 704)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4475, file: !4476, line: 463, baseType: !420, size: 64, offset: 768)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4475, file: !4476, line: 465, baseType: !420, size: 64, offset: 832)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4475, file: !4476, line: 466, baseType: !420, size: 64, offset: 896)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4475, file: !4476, line: 467, baseType: !420, size: 64, offset: 960)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4475, file: !4476, line: 473, baseType: !4513, size: 64, offset: 1024)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4476, line: 10, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4475, file: !4476, line: 480, baseType: !420, size: 64, offset: 1088)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4475, file: !4476, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4475, file: !4476, line: 491, baseType: !520, size: 32, offset: 1184)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4475, file: !4476, line: 501, baseType: !4519, size: 33792, offset: 1536)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4520, line: 448, size: 33792, elements: !4521)
!4520 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4521 = !{!4522, !4523, !4524, !4682, !4683, !4689, !4690}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4519, file: !4520, line: 461, baseType: !7, size: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4519, file: !4520, line: 468, baseType: !420, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4519, file: !4520, line: 476, baseType: !4525, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4520, line: 356, size: 33280, align: 512, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4526, file: !4520, line: 358, baseType: !7, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4526, file: !4520, line: 361, baseType: !7, size: 32, offset: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4526, file: !4520, line: 364, baseType: !524, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4526, file: !4520, line: 367, baseType: !524, size: 64, offset: 128)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4526, file: !4520, line: 370, baseType: !524, size: 64, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4526, file: !4520, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4526, file: !4520, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4526, file: !4520, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4526, file: !4520, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4526, file: !4520, line: 397, baseType: !4538, size: 32768, offset: 512)
!4538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4520, line: 348, size: 32768, elements: !4539)
!4539 = !{!4540, !4553, !4588, !4665, !4678}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4538, file: !4520, line: 349, baseType: !4541, size: 896)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4520, line: 12, size: 896, elements: !4542)
!4542 = !{!4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4552}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4541, file: !4520, line: 13, baseType: !520, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4541, file: !4520, line: 14, baseType: !520, size: 32, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4541, file: !4520, line: 15, baseType: !520, size: 32, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4541, file: !4520, line: 16, baseType: !520, size: 32, offset: 96)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4541, file: !4520, line: 17, baseType: !520, size: 32, offset: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4541, file: !4520, line: 18, baseType: !520, size: 32, offset: 160)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4541, file: !4520, line: 19, baseType: !520, size: 32, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4541, file: !4520, line: 22, baseType: !4551, size: 640, offset: 224)
!4551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 640, elements: !2962)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4541, file: !4520, line: 25, baseType: !520, size: 32, offset: 864)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4538, file: !4520, line: 350, baseType: !4554, size: 4096, align: 128)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4520, line: 34, size: 4096, align: 128, elements: !4555)
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4575, !4576, !4577, !4579, !4581, !4583}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4554, file: !4520, line: 35, baseType: !338, size: 16)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4554, file: !4520, line: 36, baseType: !338, size: 16, offset: 16)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4554, file: !4520, line: 37, baseType: !338, size: 16, offset: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4554, file: !4520, line: 38, baseType: !338, size: 16, offset: 48)
!4560 = !DIDerivedType(tag: DW_TAG_member, scope: !4554, file: !4520, line: 39, baseType: !4561, size: 128, offset: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4554, file: !4520, line: 39, size: 128, elements: !4562)
!4562 = !{!4563, !4568}
!4563 = !DIDerivedType(tag: DW_TAG_member, scope: !4561, file: !4520, line: 40, baseType: !4564, size: 128)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4561, file: !4520, line: 40, size: 128, elements: !4565)
!4565 = !{!4566, !4567}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4564, file: !4520, line: 41, baseType: !524, size: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4564, file: !4520, line: 42, baseType: !524, size: 64, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, scope: !4561, file: !4520, line: 44, baseType: !4569, size: 128)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4561, file: !4520, line: 44, size: 128, elements: !4570)
!4570 = !{!4571, !4572, !4573, !4574}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4569, file: !4520, line: 45, baseType: !520, size: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4569, file: !4520, line: 46, baseType: !520, size: 32, offset: 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4569, file: !4520, line: 47, baseType: !520, size: 32, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4569, file: !4520, line: 48, baseType: !520, size: 32, offset: 96)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4554, file: !4520, line: 51, baseType: !520, size: 32, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4554, file: !4520, line: 52, baseType: !520, size: 32, offset: 224)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4554, file: !4520, line: 55, baseType: !4578, size: 1024, offset: 256)
!4578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 1024, elements: !533)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4554, file: !4520, line: 58, baseType: !4580, size: 2048, offset: 1280)
!4580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 2048, elements: !375)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4554, file: !4520, line: 60, baseType: !4582, size: 384, offset: 3328)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 384, elements: !2919)
!4583 = !DIDerivedType(tag: DW_TAG_member, scope: !4554, file: !4520, line: 62, baseType: !4584, size: 384, offset: 3712)
!4584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4554, file: !4520, line: 62, size: 384, elements: !4585)
!4585 = !{!4586, !4587}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4584, file: !4520, line: 63, baseType: !4582, size: 384)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4584, file: !4520, line: 64, baseType: !4582, size: 384)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4538, file: !4520, line: 351, baseType: !4589, size: 1088)
!4589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4520, line: 79, size: 1088, elements: !4590)
!4590 = !{!4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4664}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4589, file: !4520, line: 80, baseType: !520, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4589, file: !4520, line: 81, baseType: !520, size: 32, offset: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4589, file: !4520, line: 82, baseType: !520, size: 32, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4589, file: !4520, line: 83, baseType: !520, size: 32, offset: 96)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4589, file: !4520, line: 84, baseType: !520, size: 32, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4589, file: !4520, line: 85, baseType: !520, size: 32, offset: 160)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4589, file: !4520, line: 86, baseType: !520, size: 32, offset: 192)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4589, file: !4520, line: 88, baseType: !4551, size: 640, offset: 224)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4589, file: !4520, line: 89, baseType: !329, size: 8, offset: 864)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4589, file: !4520, line: 90, baseType: !329, size: 8, offset: 872)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4589, file: !4520, line: 91, baseType: !329, size: 8, offset: 880)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4589, file: !4520, line: 92, baseType: !329, size: 8, offset: 888)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4589, file: !4520, line: 93, baseType: !329, size: 8, offset: 896)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4589, file: !4520, line: 94, baseType: !329, size: 8, offset: 904)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4589, file: !4520, line: 95, baseType: !4606, size: 64, offset: 960)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4608, line: 11, size: 128, elements: !4609)
!4608 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4609 = !{!4610, !4611}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4607, file: !4608, line: 12, baseType: !406, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4607, file: !4608, line: 13, baseType: !4612, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4614, line: 103, size: 1344, elements: !4615)
!4614 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4615 = !{!4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4644, !4645, !4646}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4613, file: !4614, line: 109, baseType: !420, size: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4613, file: !4614, line: 110, baseType: !420, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4613, file: !4614, line: 111, baseType: !420, size: 64, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4613, file: !4614, line: 112, baseType: !420, size: 64, offset: 192)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4613, file: !4614, line: 113, baseType: !420, size: 64, offset: 256)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4613, file: !4614, line: 114, baseType: !420, size: 64, offset: 320)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4613, file: !4614, line: 117, baseType: !420, size: 64, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4613, file: !4614, line: 118, baseType: !420, size: 64, offset: 448)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4613, file: !4614, line: 119, baseType: !420, size: 64, offset: 512)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4613, file: !4614, line: 120, baseType: !420, size: 64, offset: 576)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4613, file: !4614, line: 121, baseType: !420, size: 64, offset: 640)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4613, file: !4614, line: 122, baseType: !420, size: 64, offset: 704)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4613, file: !4614, line: 123, baseType: !420, size: 64, offset: 768)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4613, file: !4614, line: 124, baseType: !420, size: 64, offset: 832)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4613, file: !4614, line: 125, baseType: !420, size: 64, offset: 896)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4613, file: !4614, line: 139, baseType: !420, size: 64, offset: 960)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4613, file: !4614, line: 142, baseType: !420, size: 64, offset: 1024)
!4633 = !DIDerivedType(tag: DW_TAG_member, scope: !4613, file: !4614, line: 144, baseType: !4634, size: 64, offset: 1088)
!4634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4613, file: !4614, line: 144, size: 64, elements: !4635)
!4635 = !{!4636, !4637, !4638}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4634, file: !4614, line: 146, baseType: !338, size: 16)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4634, file: !4614, line: 148, baseType: !524, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4634, file: !4614, line: 150, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4614, line: 59, size: 64, elements: !4640)
!4640 = !{!4641, !4642, !4643}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4639, file: !4614, line: 61, baseType: !524, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4639, file: !4614, line: 63, baseType: !524, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4639, file: !4614, line: 65, baseType: !524, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4613, file: !4614, line: 153, baseType: !420, size: 64, offset: 1152)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4613, file: !4614, line: 154, baseType: !420, size: 64, offset: 1216)
!4646 = !DIDerivedType(tag: DW_TAG_member, scope: !4613, file: !4614, line: 156, baseType: !4647, size: 64, offset: 1280)
!4647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4613, file: !4614, line: 156, size: 64, elements: !4648)
!4648 = !{!4649, !4650, !4651}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4647, file: !4614, line: 158, baseType: !338, size: 16)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4647, file: !4614, line: 160, baseType: !524, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4647, file: !4614, line: 162, baseType: !4652, size: 64)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4614, line: 69, size: 64, elements: !4653)
!4653 = !{!4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4652, file: !4614, line: 71, baseType: !524, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4652, file: !4614, line: 73, baseType: !524, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4652, file: !4614, line: 75, baseType: !524, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4652, file: !4614, line: 77, baseType: !524, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4652, file: !4614, line: 80, baseType: !524, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4652, file: !4614, line: 83, baseType: !524, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4652, file: !4614, line: 86, baseType: !524, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4652, file: !4614, line: 88, baseType: !524, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4652, file: !4614, line: 93, baseType: !524, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4652, file: !4614, line: 100, baseType: !524, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4589, file: !4520, line: 96, baseType: !520, size: 32, offset: 1024)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4538, file: !4520, line: 352, baseType: !4666, size: 4608, align: 512)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4520, line: 333, size: 4608, align: 512, elements: !4667)
!4667 = !{!4668, !4669, !4676}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4666, file: !4520, line: 334, baseType: !4554, size: 4096, align: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4666, file: !4520, line: 335, baseType: !4670, size: 512, offset: 4096)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4520, line: 312, size: 512, elements: !4671)
!4671 = !{!4672, !4673, !4674}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4670, file: !4520, line: 313, baseType: !524, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4670, file: !4520, line: 314, baseType: !524, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4670, file: !4520, line: 315, baseType: !4675, size: 384, offset: 128)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 384, elements: !969)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4666, file: !4520, line: 336, baseType: !4677, offset: 4608)
!4677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !866)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4538, file: !4520, line: 353, baseType: !4679, size: 32768)
!4679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 32768, elements: !4680)
!4680 = !{!4681}
!4681 = !DISubrange(count: 4096)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4519, file: !4520, line: 484, baseType: !4525, size: 64, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4519, file: !4520, line: 491, baseType: !4684, size: 128, offset: 256)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4520, line: 404, size: 128, elements: !4685)
!4685 = !{!4686, !4687, !4688}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4684, file: !4520, line: 424, baseType: !524, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4684, file: !4520, line: 432, baseType: !7, size: 32, offset: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4684, file: !4520, line: 440, baseType: !7, size: 32, offset: 96)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4519, file: !4520, line: 498, baseType: !4684, size: 128, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4519, file: !4520, line: 508, baseType: !4526, size: 33280, align: 512, offset: 512)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3556, file: !3557, line: 16, baseType: !851, size: 192, offset: 512)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3556, file: !3557, line: 17, baseType: !321, size: 32, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !603, file: !14, line: 1240, baseType: !442, size: 64, offset: 6912)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !603, file: !14, line: 1243, baseType: !520, size: 32, offset: 6976)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !603, file: !14, line: 1245, baseType: !939, size: 64, offset: 7040)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !603, file: !14, line: 1246, baseType: !939, size: 64, offset: 7104)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !603, file: !14, line: 1248, baseType: !521, size: 32, offset: 7168)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !603, file: !14, line: 1249, baseType: !4699, size: 64, offset: 7232)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !603, file: !14, line: 1252, baseType: !2030, size: 256, offset: 7296)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !603, file: !14, line: 1253, baseType: !4703, size: 128, offset: 7552)
!4703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4704, line: 21, baseType: !4705)
!4704 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4704, line: 19, size: 128, elements: !4706)
!4706 = !{!4707}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4705, file: !4704, line: 20, baseType: !4708, size: 128)
!4708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !3918)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !603, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !603, file: !14, line: 1261, baseType: !735, size: 256, offset: 7744)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !603, file: !14, line: 1267, baseType: !290, size: 64, offset: 8000)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !603, file: !14, line: 1269, baseType: !549, size: 64, offset: 8064)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !603, file: !14, line: 1271, baseType: !4714, size: 448, offset: 8128)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3337, line: 63, size: 448, elements: !4715)
!4715 = !{!4716, !4721, !4722, !4723, !4724, !4725, !4726}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4714, file: !3337, line: 64, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!420, !4720, !3335}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4714, file: !3337, line: 66, baseType: !4717, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4714, file: !3337, line: 69, baseType: !406, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4714, file: !3337, line: 70, baseType: !82, size: 32, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4714, file: !3337, line: 71, baseType: !7, size: 32, offset: 224)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4714, file: !3337, line: 74, baseType: !271, size: 128, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4714, file: !3337, line: 85, baseType: !4727, size: 64, offset: 384)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !603, file: !14, line: 1274, baseType: !739, size: 64, offset: 8576)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !603, file: !14, line: 1280, baseType: !739, size: 64, offset: 8640)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !603, file: !14, line: 1283, baseType: !82, size: 32, offset: 8704)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !603, file: !14, line: 1286, baseType: !3269, size: 32, offset: 8736)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !603, file: !14, line: 1289, baseType: !1735, size: 64, offset: 8768)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !603, file: !14, line: 1290, baseType: !642, size: 64, offset: 8832)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !603, file: !14, line: 1297, baseType: !1065, size: 64, offset: 8896)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !603, file: !14, line: 1304, baseType: !4736, size: 64, offset: 8960)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4737, line: 49, size: 64, elements: !4738)
!4737 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4738 = !{!4739}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4736, file: !4737, line: 50, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4737, line: 41, size: 512, align: 512, elements: !4742)
!4742 = !{!4743, !4744, !4749}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4741, file: !4737, line: 43, baseType: !301, size: 32)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4741, file: !4737, line: 45, baseType: !4745, size: 192, offset: 64)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4737, line: 29, size: 192, elements: !4746)
!4746 = !{!4747, !4748}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4745, file: !4737, line: 30, baseType: !271, size: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4745, file: !4737, line: 32, baseType: !406, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4741, file: !4737, line: 46, baseType: !406, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !603, file: !14, line: 1305, baseType: !4736, size: 64, offset: 9024)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !603, file: !14, line: 1306, baseType: !793, size: 128, align: 64, offset: 9088)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !603, file: !14, line: 1307, baseType: !1478, size: 256, offset: 9216)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !603, file: !14, line: 1309, baseType: !735, size: 256, offset: 9472)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !603, file: !14, line: 1314, baseType: !82, size: 32, offset: 9728)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !603, file: !14, line: 1317, baseType: !301, size: 32, align: 512, offset: 10240)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !603, file: !14, line: 1318, baseType: !271, size: 128, offset: 10304)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !603, file: !14, line: 1320, baseType: !301, size: 32, offset: 10432)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !603, file: !14, line: 1321, baseType: !271, size: 128, offset: 10496)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !597, file: !598, line: 73, baseType: !82, size: 32, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !597, file: !598, line: 74, baseType: !4761, size: 64, offset: 192)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !890, line: 42, flags: DIFlagFwdDecl)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !551, file: !488, line: 141, baseType: !4765, size: 64, offset: 704)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!82, !3397, !982}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !551, file: !488, line: 142, baseType: !4769, size: 64, offset: 768)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!486, !486, !4772}
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !487, file: !488, line: 96, baseType: !602, size: 64, offset: 832)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !487, file: !488, line: 97, baseType: !420, size: 64, offset: 896)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !487, file: !488, line: 98, baseType: !442, size: 64, offset: 960)
!4777 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !488, line: 100, baseType: !4778, size: 128, offset: 1024)
!4778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 100, size: 128, elements: !4779)
!4779 = !{!4780, !4781}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4778, file: !488, line: 101, baseType: !271, size: 128)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4778, file: !488, line: 102, baseType: !4782, size: 64)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !487, file: !488, line: 104, baseType: !271, size: 128, offset: 1152)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !487, file: !488, line: 105, baseType: !271, size: 128, offset: 1280)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !487, file: !488, line: 113, baseType: !4786, size: 128, offset: 1408)
!4786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 109, size: 128, elements: !4787)
!4787 = !{!4788, !4789, !4790}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4786, file: !488, line: 110, baseType: !646, size: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4786, file: !488, line: 111, baseType: !502, size: 128)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4786, file: !488, line: 112, baseType: !793, size: 128, align: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !480, file: !14, line: 1968, baseType: !4792, size: 64, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{!290, !486, !451, !4795}
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4797, line: 10, size: 128, elements: !4798)
!4797 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4798 = !{!4799, !4800}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4796, file: !4797, line: 11, baseType: !2608, size: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4796, file: !4797, line: 12, baseType: !442, size: 64, offset: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !480, file: !14, line: 1969, baseType: !4802, size: 64, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!82, !4761, !451, !82}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !480, file: !14, line: 1970, baseType: !4806, size: 64, offset: 192)
!4806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4807, size: 64)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!474, !451, !82, !982}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !480, file: !14, line: 1972, baseType: !4810, size: 64, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!82, !486, !370, !82}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !480, file: !14, line: 1974, baseType: !4814, size: 64, offset: 320)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!82, !4761, !451, !486, !412, !982}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !480, file: !14, line: 1976, baseType: !4818, size: 64, offset: 384)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!82, !486, !451, !486}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !480, file: !14, line: 1977, baseType: !4822, size: 64, offset: 448)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!82, !451, !486}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !480, file: !14, line: 1978, baseType: !4826, size: 64, offset: 512)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!82, !4761, !451, !486, !290}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !480, file: !14, line: 1980, baseType: !4830, size: 64, offset: 576)
!4830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4831, size: 64)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!82, !4761, !451, !486, !412}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !480, file: !14, line: 1982, baseType: !4822, size: 64, offset: 640)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !480, file: !14, line: 1983, baseType: !4835, size: 64, offset: 704)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!82, !4761, !451, !486, !412, !607}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !480, file: !14, line: 1985, baseType: !4839, size: 64, offset: 768)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!82, !4761, !451, !486, !451, !486, !7}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !480, file: !14, line: 1987, baseType: !4843, size: 64, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!82, !4761, !486, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4848)
!4848 = !{!4849, !4850, !4851, !4861, !4870, !4871, !4876, !4877, !4878}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4847, file: !14, line: 227, baseType: !7, size: 32)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4847, file: !14, line: 228, baseType: !412, size: 16, offset: 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, scope: !4847, file: !14, line: 241, baseType: !4852, size: 32, offset: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4847, file: !14, line: 241, size: 32, elements: !4853)
!4853 = !{!4854, !4855}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4852, file: !14, line: 242, baseType: !457, size: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4852, file: !14, line: 243, baseType: !4856, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4857, line: 16, baseType: !4858)
!4857 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4857, line: 14, size: 32, elements: !4859)
!4859 = !{!4860}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4858, file: !4857, line: 15, baseType: !462, size: 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, scope: !4847, file: !14, line: 245, baseType: !4862, size: 32, offset: 96)
!4862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4847, file: !14, line: 245, size: 32, elements: !4863)
!4863 = !{!4864, !4865}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4862, file: !14, line: 246, baseType: !466, size: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4862, file: !14, line: 247, baseType: !4866, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4857, line: 20, baseType: !4867)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4857, line: 18, size: 32, elements: !4868)
!4868 = !{!4869}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4867, file: !4857, line: 19, baseType: !470, size: 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4847, file: !14, line: 249, baseType: !612, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4847, file: !14, line: 250, baseType: !4872, size: 128, offset: 192)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !940, line: 13, size: 128, elements: !4873)
!4873 = !{!4874, !4875}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4872, file: !940, line: 14, baseType: !939, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4872, file: !940, line: 15, baseType: !406, size: 64, offset: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4847, file: !14, line: 251, baseType: !4872, size: 128, offset: 320)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4847, file: !14, line: 252, baseType: !4872, size: 128, offset: 448)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4847, file: !14, line: 259, baseType: !1110, size: 64, offset: 576)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !480, file: !14, line: 1988, baseType: !4880, size: 64, offset: 896)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!82, !4761, !3397, !4883, !520, !7}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4885, line: 22, size: 1280, elements: !4886)
!4885 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4884, file: !4885, line: 23, baseType: !520, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4884, file: !4885, line: 24, baseType: !412, size: 16, offset: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4884, file: !4885, line: 25, baseType: !7, size: 32, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4884, file: !4885, line: 26, baseType: !947, size: 32, offset: 96)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4884, file: !4885, line: 27, baseType: !524, size: 64, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4884, file: !4885, line: 28, baseType: !524, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4884, file: !4885, line: 41, baseType: !524, size: 64, offset: 256)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4884, file: !4885, line: 42, baseType: !607, size: 32, offset: 320)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4884, file: !4885, line: 43, baseType: !607, size: 32, offset: 352)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4884, file: !4885, line: 44, baseType: !457, size: 32, offset: 384)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4884, file: !4885, line: 45, baseType: !466, size: 32, offset: 416)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4884, file: !4885, line: 46, baseType: !612, size: 64, offset: 448)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4884, file: !4885, line: 47, baseType: !4872, size: 128, offset: 512)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4884, file: !4885, line: 48, baseType: !4872, size: 128, offset: 640)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4884, file: !4885, line: 49, baseType: !4872, size: 128, offset: 768)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4884, file: !4885, line: 50, baseType: !4872, size: 128, offset: 896)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4884, file: !4885, line: 51, baseType: !524, size: 64, offset: 1024)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4884, file: !4885, line: 52, baseType: !524, size: 64, offset: 1088)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4884, file: !4885, line: 53, baseType: !520, size: 32, offset: 1152)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4884, file: !4885, line: 54, baseType: !520, size: 32, offset: 1184)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4884, file: !4885, line: 55, baseType: !524, size: 64, offset: 1216)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !480, file: !14, line: 1990, baseType: !4909, size: 64, offset: 960)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!402, !486, !370, !417}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !480, file: !14, line: 1991, baseType: !4913, size: 64, offset: 1024)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!82, !451, !4916, !524, !524}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !480, file: !14, line: 1993, baseType: !4919, size: 64, offset: 1088)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!82, !451, !82}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !480, file: !14, line: 1994, baseType: !4923, size: 64, offset: 1152)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!82, !451, !486, !1110, !7, !412}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !480, file: !14, line: 1997, baseType: !4927, size: 64, offset: 1216)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!82, !4761, !451, !1110, !412}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !480, file: !14, line: 1999, baseType: !4931, size: 64, offset: 1280)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!474, !4761, !486, !82}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !480, file: !14, line: 2001, baseType: !4935, size: 64, offset: 1344)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!82, !4761, !486, !474, !82}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !480, file: !14, line: 2003, baseType: !4939, size: 64, offset: 1408)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!82, !4761, !486, !4942}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !480, file: !14, line: 2005, baseType: !4945, size: 64, offset: 1472)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!82, !486, !4942}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !480, file: !14, line: 2006, baseType: !4949, size: 64, offset: 1536)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!4952, !451}
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4954)
!4954 = !{!4955, !4956}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4953, file: !14, line: 3193, baseType: !1658, size: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4953, file: !14, line: 3194, baseType: !520, size: 32, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !452, file: !14, line: 655, baseType: !602, size: 64, offset: 448)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !452, file: !14, line: 656, baseType: !447, size: 64, offset: 512)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !452, file: !14, line: 659, baseType: !442, size: 64, offset: 576)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !452, file: !14, line: 663, baseType: !420, size: 64, offset: 640)
!4961 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !14, line: 671, baseType: !4962, size: 32, offset: 704)
!4962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !14, line: 671, size: 32, elements: !4963)
!4963 = !{!4964, !4966}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4962, file: !14, line: 672, baseType: !4965, size: 32)
!4965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4962, file: !14, line: 673, baseType: !7, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !452, file: !14, line: 675, baseType: !607, size: 32, offset: 736)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !452, file: !14, line: 676, baseType: !612, size: 64, offset: 768)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !452, file: !14, line: 677, baseType: !4872, size: 128, offset: 832)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !452, file: !14, line: 678, baseType: !4872, size: 128, offset: 960)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !452, file: !14, line: 679, baseType: !4872, size: 128, offset: 1088)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !452, file: !14, line: 680, baseType: !301, size: 32, offset: 1216)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !452, file: !14, line: 681, baseType: !340, size: 16, offset: 1248)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !452, file: !14, line: 682, baseType: !329, size: 8, offset: 1264)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !452, file: !14, line: 683, baseType: !329, size: 8, offset: 1272)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !452, file: !14, line: 684, baseType: !3470, size: 64, offset: 1280)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !452, file: !14, line: 691, baseType: !420, size: 64, offset: 1344)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !452, file: !14, line: 692, baseType: !923, size: 320, offset: 1408)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !452, file: !14, line: 694, baseType: !420, size: 64, offset: 1728)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !452, file: !14, line: 695, baseType: !420, size: 64, offset: 1792)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !452, file: !14, line: 697, baseType: !646, size: 128, offset: 1856)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !452, file: !14, line: 698, baseType: !271, size: 128, offset: 1984)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !452, file: !14, line: 707, baseType: !271, size: 128, offset: 2112)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !452, file: !14, line: 708, baseType: !271, size: 128, offset: 2240)
!4985 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !14, line: 709, baseType: !4986, size: 128, offset: 2368)
!4986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !14, line: 709, size: 128, elements: !4987)
!4987 = !{!4988, !4989}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4986, file: !14, line: 710, baseType: !642, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4986, file: !14, line: 711, baseType: !793, size: 128, align: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !452, file: !14, line: 713, baseType: !741, size: 64, offset: 2496)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !452, file: !14, line: 714, baseType: !741, size: 64, offset: 2560)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !452, file: !14, line: 715, baseType: !321, size: 32, offset: 2624)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !452, file: !14, line: 716, baseType: !321, size: 32, offset: 2656)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !452, file: !14, line: 717, baseType: !321, size: 32, offset: 2688)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !452, file: !14, line: 719, baseType: !321, size: 32, offset: 2720)
!4996 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !14, line: 721, baseType: !4997, size: 64, offset: 2752)
!4997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !14, line: 721, size: 64, elements: !4998)
!4998 = !{!4999, !5000}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4997, file: !14, line: 722, baseType: !1101, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4997, file: !14, line: 723, baseType: !673, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !452, file: !14, line: 725, baseType: !5002, size: 64, offset: 2816)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !452, file: !14, line: 726, baseType: !448, size: 1536, align: 64, offset: 2880)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !452, file: !14, line: 727, baseType: !271, size: 128, offset: 4416)
!5006 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !14, line: 728, baseType: !5007, size: 64, offset: 4544)
!5007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !14, line: 728, size: 64, elements: !5008)
!5008 = !{!5009, !5010, !5013, !5014}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5007, file: !14, line: 729, baseType: !3219, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5007, file: !14, line: 730, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5007, file: !14, line: 731, baseType: !370, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5007, file: !14, line: 732, baseType: !7, size: 32)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !452, file: !14, line: 735, baseType: !521, size: 32, offset: 4608)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !452, file: !14, line: 738, baseType: !521, size: 32, offset: 4640)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !452, file: !14, line: 739, baseType: !4699, size: 64, offset: 4672)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !452, file: !14, line: 750, baseType: !442, size: 64, offset: 4736)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !448, file: !14, line: 474, baseType: !1658, size: 128, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !448, file: !14, line: 475, baseType: !923, size: 320, offset: 192)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !448, file: !14, line: 476, baseType: !1587, size: 32, offset: 512)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !448, file: !14, line: 477, baseType: !321, size: 32, offset: 544)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !448, file: !14, line: 482, baseType: !2343, size: 128, offset: 576)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !448, file: !14, line: 483, baseType: !420, size: 64, offset: 704)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !448, file: !14, line: 484, baseType: !420, size: 64, offset: 768)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !448, file: !14, line: 485, baseType: !5027, size: 64, offset: 832)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5029)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !5030)
!5030 = !{!5031, !5035, !5105, !5109, !5113, !5119, !5123, !5127, !5131, !5135, !5139, !5143, !5144, !5148, !5152, !5156, !5161, !5165, !5171, !5172}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5029, file: !14, line: 405, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5033, size: 64)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!82, !1191, !685}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5029, file: !14, line: 406, baseType: !5036, size: 64, offset: 64)
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5037, size: 64)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!82, !1110, !5039}
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !5041)
!5041 = !{!5042, !5072, !5086}
!5042 = !DIDerivedType(tag: DW_TAG_member, scope: !5040, file: !35, line: 295, baseType: !5043, size: 512)
!5043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5040, file: !35, line: 295, size: 512, elements: !5044)
!5044 = !{!5045, !5071}
!5045 = !DIDerivedType(tag: DW_TAG_member, scope: !5043, file: !35, line: 296, baseType: !5046, size: 448)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5043, file: !35, line: 296, size: 448, elements: !5047)
!5047 = !{!5048, !5049, !5058, !5059, !5060, !5069, !5070}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5046, file: !35, line: 298, baseType: !420, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, scope: !5046, file: !35, line: 299, baseType: !5050, size: 128, offset: 64)
!5050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5046, file: !35, line: 299, size: 128, elements: !5051)
!5051 = !{!5052, !5053}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5050, file: !35, line: 300, baseType: !271, size: 128)
!5053 = !DIDerivedType(tag: DW_TAG_member, scope: !5050, file: !35, line: 302, baseType: !5054, size: 128)
!5054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5050, file: !35, line: 302, size: 128, elements: !5055)
!5055 = !{!5056, !5057}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5054, file: !35, line: 303, baseType: !442, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5054, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5046, file: !35, line: 310, baseType: !447, size: 64, offset: 192)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5046, file: !35, line: 311, baseType: !420, size: 64, offset: 256)
!5060 = !DIDerivedType(tag: DW_TAG_member, scope: !5046, file: !35, line: 312, baseType: !5061, size: 64, offset: 320)
!5061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5046, file: !35, line: 312, size: 64, elements: !5062)
!5062 = !{!5063, !5064}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5061, file: !35, line: 313, baseType: !442, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5061, file: !35, line: 314, baseType: !5065, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !5066)
!5066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !5067)
!5067 = !{!5068}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5066, file: !35, line: 256, baseType: !420, size: 64)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5046, file: !35, line: 316, baseType: !321, size: 32, offset: 384)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5046, file: !35, line: 317, baseType: !321, size: 32, offset: 416)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5043, file: !35, line: 323, baseType: !1192, size: 512, align: 128)
!5072 = !DIDerivedType(tag: DW_TAG_member, scope: !5040, file: !35, line: 325, baseType: !5073, size: 512, offset: 512)
!5073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5040, file: !35, line: 325, size: 512, elements: !5074)
!5074 = !{!5075, !5085}
!5075 = !DIDerivedType(tag: DW_TAG_member, scope: !5073, file: !35, line: 326, baseType: !5076, size: 320)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5073, file: !35, line: 326, size: 320, elements: !5077)
!5077 = !{!5078, !5079, !5080, !5081, !5082, !5083, !5084}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5076, file: !35, line: 327, baseType: !420, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5076, file: !35, line: 328, baseType: !420, size: 64, offset: 64)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5076, file: !35, line: 329, baseType: !420, size: 64, offset: 128)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5076, file: !35, line: 331, baseType: !321, size: 32, offset: 192)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5076, file: !35, line: 332, baseType: !321, size: 32, offset: 224)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5076, file: !35, line: 333, baseType: !321, size: 32, offset: 256)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5076, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5073, file: !35, line: 339, baseType: !1192, size: 512, align: 128)
!5086 = !DIDerivedType(tag: DW_TAG_member, scope: !5040, file: !35, line: 341, baseType: !5087, size: 512, offset: 1024)
!5087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5040, file: !35, line: 341, size: 512, elements: !5088)
!5088 = !{!5089, !5098, !5104}
!5089 = !DIDerivedType(tag: DW_TAG_member, scope: !5087, file: !35, line: 342, baseType: !5090, size: 384)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5087, file: !35, line: 342, size: 384, elements: !5091)
!5091 = !{!5092, !5093, !5094, !5095, !5096, !5097}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5090, file: !35, line: 343, baseType: !420, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5090, file: !35, line: 344, baseType: !420, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5090, file: !35, line: 346, baseType: !442, size: 64, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5090, file: !35, line: 347, baseType: !442, size: 64, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5090, file: !35, line: 348, baseType: !442, size: 64, offset: 256)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5090, file: !35, line: 349, baseType: !442, size: 64, offset: 320)
!5098 = !DIDerivedType(tag: DW_TAG_member, scope: !5087, file: !35, line: 352, baseType: !5099, size: 256)
!5099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5087, file: !35, line: 352, size: 256, elements: !5100)
!5100 = !{!5101, !5102, !5103}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5099, file: !35, line: 353, baseType: !420, size: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5099, file: !35, line: 354, baseType: !420, size: 64, offset: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5099, file: !35, line: 356, baseType: !271, size: 128, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5087, file: !35, line: 359, baseType: !1192, size: 512, align: 128)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5029, file: !14, line: 409, baseType: !5106, size: 64, offset: 128)
!5106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5107, size: 64)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!82, !447, !685}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5029, file: !14, line: 412, baseType: !5110, size: 64, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!982, !447, !5039}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5029, file: !14, line: 414, baseType: !5114, size: 64, offset: 256)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{null, !5117}
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5029, file: !14, line: 416, baseType: !5120, size: 64, offset: 320)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!82, !1110, !447, !612, !7, !4452, !2713}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5029, file: !14, line: 419, baseType: !5124, size: 64, offset: 384)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!82, !1110, !447, !612, !7, !7, !1191, !442}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5029, file: !14, line: 424, baseType: !5128, size: 64, offset: 448)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!2039, !447, !2039}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5029, file: !14, line: 425, baseType: !5132, size: 64, offset: 512)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{null, !5039, !417, !417}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5029, file: !14, line: 426, baseType: !5136, size: 64, offset: 576)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!982, !5039, !1587}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5029, file: !14, line: 427, baseType: !5140, size: 64, offset: 640)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !5039}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5029, file: !14, line: 428, baseType: !1120, size: 64, offset: 704)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5029, file: !14, line: 433, baseType: !5145, size: 64, offset: 768)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!82, !447, !5039, !5039, !163}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5029, file: !14, line: 435, baseType: !5149, size: 64, offset: 832)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!82, !5039}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5029, file: !14, line: 436, baseType: !5153, size: 64, offset: 896)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!982, !5039, !417, !417}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5029, file: !14, line: 438, baseType: !5157, size: 64, offset: 960)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !5039, !5160, !5160}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5029, file: !14, line: 439, baseType: !5162, size: 64, offset: 1024)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!82, !447, !1191}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5029, file: !14, line: 442, baseType: !5166, size: 64, offset: 1088)
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!82, !5169, !1110, !2821}
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5029, file: !14, line: 444, baseType: !3227, size: 64, offset: 1152)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5029, file: !14, line: 445, baseType: !5173, size: 64, offset: 1216)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!82, !1123, !1145}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !14, line: 486, baseType: !420, size: 64, offset: 896)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !448, file: !14, line: 487, baseType: !923, size: 320, offset: 960)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !448, file: !14, line: 488, baseType: !3269, size: 32, offset: 1280)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !448, file: !14, line: 489, baseType: !301, size: 32, offset: 1312)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !448, file: !14, line: 490, baseType: !271, size: 128, offset: 1344)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !448, file: !14, line: 491, baseType: !442, size: 64, offset: 1472)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !437, file: !396, line: 180, baseType: !5183, size: 64, offset: 320)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!402, !1110, !294, !436, !370, !612, !417}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !437, file: !396, line: 182, baseType: !5183, size: 64, offset: 384)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !437, file: !396, line: 184, baseType: !5188, size: 64, offset: 448)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!82, !1110, !294, !436, !1311}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !425, file: !396, line: 90, baseType: !5192, size: 64, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !425, file: !396, line: 91, baseType: !5194, size: 64, offset: 256)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !386, file: !287, line: 120, baseType: !5196, size: 64, offset: 192)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!2584, !353}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !386, file: !287, line: 121, baseType: !5200, size: 64, offset: 256)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!1439, !353}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !386, file: !287, line: 122, baseType: !5204, size: 64, offset: 320)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{null, !353, !2115, !2116}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !286, file: !287, line: 70, baseType: !5208, size: 64, offset: 384)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !5210, line: 190, size: 1152, elements: !5211)
!5210 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5291, !5292, !5293, !5294, !5295, !5298}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5209, file: !5210, line: 191, baseType: !321, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5209, file: !5210, line: 192, baseType: !321, size: 32, offset: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5209, file: !5210, line: 202, baseType: !5208, size: 64, offset: 64)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5209, file: !5210, line: 203, baseType: !290, size: 64, offset: 128)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5209, file: !5210, line: 205, baseType: !915, size: 192, align: 64, offset: 192)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5209, file: !5210, line: 207, baseType: !1439, size: 64, offset: 384)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5209, file: !5210, line: 208, baseType: !7, size: 32, offset: 448)
!5219 = !DIDerivedType(tag: DW_TAG_member, scope: !5209, file: !5210, line: 209, baseType: !5220, size: 256, offset: 512)
!5220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5209, file: !5210, line: 209, size: 256, elements: !5221)
!5221 = !{!5222, !5231, !5235}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5220, file: !5210, line: 210, baseType: !5223, size: 256)
!5223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !5210, line: 153, size: 256, elements: !5224)
!5224 = !{!5225, !5226, !5227, !5230}
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5223, file: !5210, line: 154, baseType: !420, size: 64)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5223, file: !5210, line: 156, baseType: !2346, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5223, file: !5210, line: 162, baseType: !5228, size: 64, offset: 128)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !5210, line: 162, flags: DIFlagFwdDecl)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5223, file: !5210, line: 167, baseType: !420, size: 64, offset: 192)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5220, file: !5210, line: 211, baseType: !5232, size: 64)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !5210, line: 170, size: 64, elements: !5233)
!5233 = !{!5234}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5232, file: !5210, line: 171, baseType: !5208, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5220, file: !5210, line: 212, baseType: !5236, size: 256)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !5210, line: 174, size: 256, elements: !5237)
!5237 = !{!5238, !5286, !5289, !5290}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5236, file: !5210, line: 175, baseType: !5239, size: 64)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5241)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !5210, line: 271, size: 768, elements: !5242)
!5242 = !{!5243, !5263, !5267, !5268, !5269, !5270, !5271, !5275, !5276, !5277, !5278, !5282}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5241, file: !5210, line: 276, baseType: !5244, size: 64)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!82, !5247}
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !5210, line: 251, size: 1216, elements: !5249)
!5249 = !{!5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5248, file: !5210, line: 253, baseType: !5208, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5248, file: !5210, line: 254, baseType: !1110, size: 64, offset: 64)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5248, file: !5210, line: 255, baseType: !723, size: 64, offset: 128)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5248, file: !5210, line: 256, baseType: !442, size: 64, offset: 192)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5248, file: !5210, line: 259, baseType: !735, size: 256, offset: 256)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5248, file: !5210, line: 260, baseType: !735, size: 256, offset: 512)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5248, file: !5210, line: 261, baseType: !82, size: 32, offset: 768)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5248, file: !5210, line: 262, baseType: !271, size: 128, offset: 832)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5248, file: !5210, line: 263, baseType: !370, size: 64, offset: 960)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5248, file: !5210, line: 265, baseType: !417, size: 64, offset: 1024)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5248, file: !5210, line: 266, baseType: !982, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5248, file: !5210, line: 267, baseType: !982, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5248, file: !5210, line: 268, baseType: !1521, size: 64, offset: 1152)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5241, file: !5210, line: 277, baseType: !5264, size: 64, offset: 64)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !5247}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5241, file: !5210, line: 290, baseType: !774, size: 64, offset: 128)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5241, file: !5210, line: 292, baseType: !761, size: 64, offset: 192)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5241, file: !5210, line: 293, baseType: !770, size: 64, offset: 256)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5241, file: !5210, line: 294, baseType: !766, size: 64, offset: 320)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5241, file: !5210, line: 296, baseType: !5272, size: 64, offset: 384)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!402, !5247, !370, !417, !612}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5241, file: !5210, line: 306, baseType: !417, size: 64, offset: 448)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5241, file: !5210, line: 313, baseType: !982, size: 8, offset: 512)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5241, file: !5210, line: 314, baseType: !5272, size: 64, offset: 576)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5241, file: !5210, line: 317, baseType: !5279, size: 64, offset: 640)
!5279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5280, size: 64)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!3171, !5247, !3173}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5241, file: !5210, line: 320, baseType: !5283, size: 64, offset: 704)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!82, !5247, !1311}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5236, file: !5210, line: 176, baseType: !5287, size: 64, offset: 64)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !5210, line: 35, flags: DIFlagFwdDecl)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5236, file: !5210, line: 177, baseType: !612, size: 64, offset: 128)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5236, file: !5210, line: 178, baseType: !5208, size: 64, offset: 192)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5209, file: !5210, line: 215, baseType: !442, size: 64, offset: 768)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5209, file: !5210, line: 221, baseType: !524, size: 64, offset: 832)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5209, file: !5210, line: 223, baseType: !340, size: 16, offset: 896)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5209, file: !5210, line: 224, baseType: !412, size: 16, offset: 912)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5209, file: !5210, line: 225, baseType: !5296, size: 64, offset: 960)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !5210, line: 36, flags: DIFlagFwdDecl)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5209, file: !5210, line: 227, baseType: !793, size: 128, align: 64, offset: 1024)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !286, file: !287, line: 71, baseType: !5300, size: 32, offset: 448)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5301, line: 19, size: 32, elements: !5302)
!5301 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5302 = !{!5303}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5300, file: !5301, line: 20, baseType: !838, size: 32)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !286, file: !287, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !286, file: !287, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !286, file: !287, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !286, file: !287, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !286, file: !287, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !283, file: !6, line: 47, baseType: !266, size: 64, offset: 512)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !283, file: !6, line: 48, baseType: !294, size: 64, offset: 576)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !283, file: !6, line: 49, baseType: !5312, size: 64, offset: 640)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !283, file: !6, line: 50, baseType: !3875, size: 64, offset: 704)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !267, file: !6, line: 418, baseType: !5316, size: 64, offset: 1408)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5318)
!5318 = !{!5319, !5320, !5325, !5329, !5333, !5337}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5317, file: !6, line: 54, baseType: !408, size: 128)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5317, file: !6, line: 55, baseType: !5321, size: 64, offset: 128)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!402, !5316, !5324, !370}
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5317, file: !6, line: 57, baseType: !5326, size: 64, offset: 192)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!402, !5316, !5324, !290, !417}
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5317, file: !6, line: 59, baseType: !5330, size: 64, offset: 256)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{null, !266, !290}
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5317, file: !6, line: 60, baseType: !5334, size: 64, offset: 320)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DISubroutineType(types: !5336)
!5336 = !{!82, !266}
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5317, file: !6, line: 61, baseType: !5338, size: 64, offset: 384)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{null, !266}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !267, file: !6, line: 419, baseType: !290, size: 64, offset: 1472)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !267, file: !6, line: 420, baseType: !290, size: 64, offset: 1536)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !267, file: !6, line: 421, baseType: !294, size: 64, offset: 1600)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !267, file: !6, line: 424, baseType: !5345, size: 64, offset: 1664)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5347)
!5347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !267, file: !6, line: 425, baseType: !5349, size: 64, offset: 1728)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !267, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !267, file: !6, line: 435, baseType: !735, size: 256, offset: 1856)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !267, file: !6, line: 437, baseType: !5354, size: 64, offset: 2112)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5356, line: 69, size: 320, elements: !5357)
!5356 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5357 = !{!5358, !5359, !5360, !5377, !5379, !5383, !5384}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5355, file: !5356, line: 70, baseType: !290, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5355, file: !5356, line: 71, baseType: !266, size: 64, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5355, file: !5356, line: 72, baseType: !5361, size: 64, offset: 128)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5363)
!5363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5356, line: 47, size: 256, elements: !5364)
!5364 = !{!5365, !5366, !5372, !5376}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5363, file: !5356, line: 49, baseType: !7, size: 32)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5363, file: !5356, line: 51, baseType: !5367, size: 64, offset: 64)
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{!82, !290, !5370}
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5355)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5363, file: !5356, line: 53, baseType: !5373, size: 64, offset: 128)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!82, !370, !5370}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5363, file: !5356, line: 55, baseType: !2608, size: 64, offset: 192)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5355, file: !5356, line: 73, baseType: !5378, size: 16, offset: 192)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5355, file: !5356, line: 74, baseType: !5380, size: 8, offset: 208)
!5380 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !330, line: 16, baseType: !5381)
!5381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !332, line: 20, baseType: !5382)
!5382 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5355, file: !5356, line: 75, baseType: !329, size: 8, offset: 216)
!5384 = !DIDerivedType(tag: DW_TAG_member, scope: !5355, file: !5356, line: 76, baseType: !5385, size: 64, offset: 256)
!5385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5355, file: !5356, line: 76, size: 64, elements: !5386)
!5386 = !{!5387, !5388, !5395}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5385, file: !5356, line: 77, baseType: !442, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5385, file: !5356, line: 78, baseType: !5389, size: 64)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5391)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5356, line: 86, size: 128, elements: !5392)
!5392 = !{!5393, !5394}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5391, file: !5356, line: 87, baseType: !7, size: 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5391, file: !5356, line: 88, baseType: !370, size: 64, offset: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5385, file: !5356, line: 79, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5398)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5356, line: 92, size: 256, elements: !5399)
!5399 = !{!5400, !5401, !5402, !5403, !5404}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5398, file: !5356, line: 94, baseType: !7, size: 32)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5398, file: !5356, line: 95, baseType: !7, size: 32, offset: 32)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5398, file: !5356, line: 96, baseType: !1773, size: 64, offset: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5398, file: !5356, line: 97, baseType: !5361, size: 64, offset: 128)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5398, file: !5356, line: 98, baseType: !442, size: 64, offset: 192)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !267, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !267, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !267, file: !6, line: 442, baseType: !5345, size: 64, offset: 2240)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !267, file: !6, line: 443, baseType: !5349, size: 64, offset: 2304)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !267, file: !6, line: 444, baseType: !982, size: 8, offset: 2368)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !267, file: !6, line: 451, baseType: !982, size: 8, offset: 2376)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !267, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !267, file: !6, line: 455, baseType: !5413, size: 64, offset: 2432)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5415, line: 23, size: 96, elements: !5416)
!5415 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5416 = !{!5417, !5418, !5419}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5414, file: !5415, line: 24, baseType: !82, size: 32)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5414, file: !5415, line: 24, baseType: !82, size: 32, offset: 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5414, file: !5415, line: 24, baseType: !82, size: 32, offset: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !267, file: !6, line: 458, baseType: !5421, size: 64, offset: 2496)
!5421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5422, size: 64)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!82}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !267, file: !6, line: 460, baseType: !5425, size: 4032, align: 512, offset: 2560)
!5425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5426, size: 4032, elements: !5440)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5427)
!5427 = !{!5428, !5429, !5430}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5426, file: !6, line: 363, baseType: !442, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5426, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5426, file: !6, line: 367, baseType: !5431, size: 448, offset: 128)
!5431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5432)
!5432 = !{!5433, !5434}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5431, file: !6, line: 320, baseType: !266, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5431, file: !6, line: 321, baseType: !5435, size: 384, offset: 64)
!5435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5436, line: 40, size: 384, elements: !5437)
!5436 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5437 = !{!5438}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5435, file: !5436, line: 41, baseType: !5439, size: 384, align: 64)
!5439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 384, align: 64, elements: !1927)
!5440 = !{!5441}
!5441 = !DISubrange(count: 7)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !267, file: !6, line: 463, baseType: !5443, size: 192, offset: 6592)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5444, line: 8, size: 192, elements: !5445)
!5444 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5445 = !{!5446, !5447, !5448}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5443, file: !5444, line: 10, baseType: !7, size: 32)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5443, file: !5444, line: 11, baseType: !717, size: 64, offset: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5443, file: !5444, line: 12, baseType: !5449, size: 64, offset: 128)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5451, line: 59, size: 48, elements: !5452)
!5451 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5452 = !{!5453, !5454, !5455, !5456, !5457, !5458}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5450, file: !5451, line: 60, baseType: !1456, size: 16)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5450, file: !5451, line: 61, baseType: !1456, size: 16, offset: 16)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5450, file: !5451, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5450, file: !5451, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5450, file: !5451, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5450, file: !5451, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !267, file: !6, line: 465, baseType: !420, size: 64, offset: 6784)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !267, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !267, file: !6, line: 470, baseType: !271, size: 128, offset: 6912)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !267, file: !6, line: 471, baseType: !5463, size: 64, offset: 7040)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5465, line: 33, size: 96, elements: !5466)
!5465 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5466 = !{!5467, !5468, !5469, !5470}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5464, file: !5465, line: 37, baseType: !82, size: 32)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5464, file: !5465, line: 43, baseType: !82, size: 32, offset: 32)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5464, file: !5465, line: 45, baseType: !340, size: 16, offset: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5464, file: !5465, line: 47, baseType: !340, size: 16, offset: 80)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !267, file: !6, line: 476, baseType: !5472, size: 64, offset: 7104)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5474)
!5474 = !{!5475, !5491, !5492, !5493}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5473, file: !6, line: 379, baseType: !5476, size: 64)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5478, line: 204, baseType: !5479)
!5478 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5478, line: 197, size: 192, elements: !5480)
!5480 = !{!5481, !5483, !5484, !5485, !5487, !5489}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5479, file: !5478, line: 198, baseType: !5482, size: 32)
!5482 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5478, line: 21, baseType: !521)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5479, file: !5478, line: 199, baseType: !172, size: 8, offset: 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5479, file: !5478, line: 200, baseType: !172, size: 8, offset: 40)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5479, file: !5478, line: 201, baseType: !5486, size: 16, offset: 48)
!5486 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5478, line: 17, baseType: !339)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5479, file: !5478, line: 202, baseType: !5488, size: 64, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5478, line: 16, baseType: !525)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5479, file: !5478, line: 203, baseType: !5490, size: 64, offset: 128)
!5490 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5478, line: 22, baseType: !525)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5473, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5473, file: !6, line: 381, baseType: !370, size: 64, offset: 128)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5473, file: !6, line: 382, baseType: !370, size: 64, offset: 192)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !267, file: !6, line: 477, baseType: !5473, size: 256, offset: 7168)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !267, file: !6, line: 480, baseType: !5496, size: 64, offset: 7424)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !267, file: !6, line: 483, baseType: !5499, size: 64, offset: 7488)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !267, file: !6, line: 488, baseType: !370, size: 64, offset: 7552)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !267, file: !6, line: 492, baseType: !442, size: 64, offset: 7616)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !267, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !267, file: !6, line: 495, baseType: !442, size: 64, offset: 7744)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !267, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !267, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !267, file: !6, line: 500, baseType: !5508, size: 64, offset: 7872)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5510, line: 45, baseType: !2948)
!5510 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !267, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !267, file: !6, line: 504, baseType: !5513, size: 64, offset: 8000)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !267, file: !6, line: 515, baseType: !5515, size: 64, offset: 8064)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5517, line: 117, size: 128, elements: !5518)
!5517 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5518 = !{!5519, !5520, !5521}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5516, file: !5517, line: 118, baseType: !908, size: 32)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5516, file: !5517, line: 119, baseType: !908, size: 32, offset: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5516, file: !5517, line: 120, baseType: !406, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !267, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !267, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !267, file: !6, line: 520, baseType: !2500, size: 64, offset: 8192)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !267, file: !6, line: 523, baseType: !5526, size: 64, offset: 8256)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !267, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !267, file: !6, line: 525, baseType: !5531, size: 64, offset: 8384)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5533, size: 64)
!5533 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !267, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !267, file: !6, line: 533, baseType: !442, size: 64, offset: 8512)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !267, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !267, file: !6, line: 535, baseType: !5538, size: 64, offset: 8640)
!5538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !267, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !267, file: !6, line: 539, baseType: !82, size: 32, offset: 8736)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !267, file: !6, line: 540, baseType: !5542, size: 64, offset: 8768)
!5542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5544, line: 32, size: 64, elements: !5545)
!5544 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5545 = !{!5546, !5547}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5543, file: !5544, line: 33, baseType: !908, size: 32)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5543, file: !5544, line: 34, baseType: !908, size: 32, offset: 32)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !267, file: !6, line: 563, baseType: !271, size: 128, offset: 8832)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !267, file: !6, line: 565, baseType: !271, size: 128, offset: 8960)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !267, file: !6, line: 568, baseType: !5551, size: 64, offset: 9088)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !267, file: !6, line: 570, baseType: !321, size: 32, offset: 9152)
!5553 = !{!5554, !5556, !5561, !5564, !5569, !5574, !0, !5579, !5581, !5586}
!5554 = !DIGlobalVariableExpression(var: !5555, expr: !DIExpression())
!5555 = distinct !DIGlobalVariable(name: "__param_xa_test", scope: !2, file: !3, line: 34, type: !5371, isLocal: true, isDefinition: true, align: 64)
!5556 = !DIGlobalVariableExpression(var: !5557, expr: !DIExpression())
!5557 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_xa_testtype348", scope: !2, file: !3, line: 34, type: !5558, isLocal: true, isDefinition: true, align: 8)
!5558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 224, elements: !5559)
!5559 = !{!5560}
!5560 = !DISubrange(count: 28)
!5561 = !DIGlobalVariableExpression(var: !5562, expr: !DIExpression())
!5562 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !5563, isLocal: true, isDefinition: true)
!5563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 24, elements: !371)
!5564 = !DIGlobalVariableExpression(var: !5565, expr: !DIExpression())
!5565 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !5566, isLocal: true, isDefinition: true)
!5566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 184, elements: !5567)
!5567 = !{!5568}
!5568 = !DISubrange(count: 23)
!5569 = !DIGlobalVariableExpression(var: !5570, expr: !DIExpression())
!5570 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !5571, isLocal: true, isDefinition: true)
!5571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 176, elements: !5572)
!5572 = !{!5573}
!5573 = !DISubrange(count: 22)
!5574 = !DIGlobalVariableExpression(var: !5575, expr: !DIExpression())
!5575 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !5576, isLocal: true, isDefinition: true)
!5576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 472, elements: !5577)
!5577 = !{!5578}
!5578 = !DISubrange(count: 59)
!5579 = !DIGlobalVariableExpression(var: !5580, expr: !DIExpression())
!5580 = distinct !DIGlobalVariable(name: "xa_test", scope: !2, file: !3, line: 32, type: !82, isLocal: true, isDefinition: true)
!5581 = !DIGlobalVariableExpression(var: !5582, expr: !DIExpression())
!5582 = distinct !DIGlobalVariable(scope: null, file: !256, line: 480, type: !5583, isLocal: true, isDefinition: true)
!5583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 168, elements: !5584)
!5584 = !{!5585}
!5585 = !DISubrange(count: 21)
!5586 = !DIGlobalVariableExpression(var: !5587, expr: !DIExpression())
!5587 = distinct !DIGlobalVariable(scope: null, file: !3, line: 540, type: !5588, isLocal: true, isDefinition: true)
!5588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 368, elements: !5589)
!5589 = !{!5590}
!5590 = !DISubrange(count: 46)
!5591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 120, elements: !5592)
!5592 = !{!5593}
!5593 = !DISubrange(count: 15)
!5594 = !{i32 7, !"Dwarf Version", i32 5}
!5595 = !{i32 2, !"Debug Info Version", i32 3}
!5596 = !{i32 1, !"wchar_size", i32 2}
!5597 = !{i32 8, !"cf-protection-branch", i32 1}
!5598 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5599 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5600 = !{i32 1, !"Code Model", i32 2}
!5601 = !{i32 1, !"override-stack-alignment", i32 8}
!5602 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5603 = distinct !DISubprogram(name: "sr_do_ioctl", scope: !3, file: !3, line: 188, type: !5604, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6035)
!5604 = !DISubroutineType(types: !5605)
!5605 = !{!82, !5606, !2914}
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DIDerivedType(tag: DW_TAG_typedef, name: "Scsi_CD", file: !5608, line: 54, baseType: !5609)
!5608 = !DIFile(filename: "drivers/scsi/sr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dfef0aaa19149a7d1e8f38cc4d042b08")
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_cd", file: !5608, line: 33, size: 1728, elements: !5610)
!5610 = !{!5611, !5612, !6020, !6021, !6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030, !6031, !6032, !6033, !6034}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !5609, file: !5608, line: 34, baseType: !7, size: 32)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5609, file: !5608, line: 35, baseType: !5613, size: 64, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5614, size: 64)
!5614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device", file: !185, line: 103, size: 16256, align: 64, elements: !5615)
!5615 = !{!5616, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895, !5896, !5897, !5898, !5899, !5900, !5901, !5902, !5903, !5904, !5905, !5906, !5907, !5908, !5909, !5910, !5911, !5912, !5913, !5914, !5922, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5931, !5932, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941, !5942, !5943, !5944, !5945, !5946, !5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !5992, !5993, !5994, !5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004, !6007, !6008, !6009, !6010, !6011, !6012, !6015, !6016, !6017, !6018, !6019}
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5614, file: !185, line: 104, baseType: !5617, size: 64)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Scsi_Host", file: !193, line: 535, size: 16512, elements: !5619)
!5619 = !{!5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5827, !5830, !5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "__devices", scope: !5618, file: !193, line: 544, baseType: !271, size: 128)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "__targets", scope: !5618, file: !193, line: 545, baseType: !271, size: 128, offset: 128)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "starved_list", scope: !5618, file: !193, line: 547, baseType: !271, size: 128, offset: 256)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "default_lock", scope: !5618, file: !193, line: 549, baseType: !301, size: 32, offset: 384)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "host_lock", scope: !5618, file: !193, line: 550, baseType: !1621, size: 64, offset: 448)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "scan_mutex", scope: !5618, file: !193, line: 552, baseType: !735, size: 256, offset: 512)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "eh_abort_list", scope: !5618, file: !193, line: 554, baseType: !271, size: 128, offset: 768)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "eh_cmd_q", scope: !5618, file: !193, line: 555, baseType: !271, size: 128, offset: 896)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "ehandler", scope: !5618, file: !193, line: 556, baseType: !3573, size: 64, offset: 1024)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "eh_action", scope: !5618, file: !193, line: 557, baseType: !3875, size: 64, offset: 1088)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "host_wait", scope: !5618, file: !193, line: 559, baseType: !851, size: 192, offset: 1152)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "hostt", scope: !5618, file: !193, line: 560, baseType: !5632, size: 64, offset: 1344)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5634)
!5634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_host_template", file: !193, line: 42, size: 2880, elements: !5635)
!5635 = !{!5636, !5637, !5693, !5697, !5698, !5699, !5703, !5707, !5708, !5709, !5710, !5714, !5715, !5716, !5717, !5718, !5722, !5723, !5727, !5754, !5758, !5762, !5766, !5770, !5771, !5775, !5779, !5783, !5784, !5788, !5792, !5796, !5800, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812, !5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5822, !5823, !5824, !5825, !5826}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !5634, file: !193, line: 51, baseType: !7, size: 32)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand", scope: !5634, file: !193, line: 87, baseType: !5638, size: 64, offset: 64)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!82, !5617, !5641}
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_cmnd", file: !171, line: 74, size: 2368, elements: !5643)
!5643 = !{!5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5681, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5642, file: !171, line: 75, baseType: !5613, size: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "eh_entry", scope: !5642, file: !171, line: 76, baseType: !271, size: 128, offset: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "abort_work", scope: !5642, file: !171, line: 77, baseType: !1719, size: 704, offset: 192)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5642, file: !171, line: 79, baseType: !793, size: 128, align: 64, offset: 896)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "eh_eflags", scope: !5642, file: !171, line: 81, baseType: !82, size: 32, offset: 1024)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "budget_token", scope: !5642, file: !171, line: 83, baseType: !82, size: 32, offset: 1056)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "jiffies_at_alloc", scope: !5642, file: !171, line: 90, baseType: !420, size: 64, offset: 1088)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5642, file: !171, line: 92, baseType: !82, size: 32, offset: 1152)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !5642, file: !171, line: 93, baseType: !82, size: 32, offset: 1184)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "prot_op", scope: !5642, file: !171, line: 95, baseType: !172, size: 8, offset: 1216)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "prot_type", scope: !5642, file: !171, line: 96, baseType: !172, size: 8, offset: 1224)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "prot_flags", scope: !5642, file: !171, line: 97, baseType: !172, size: 8, offset: 1232)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "submitter", scope: !5642, file: !171, line: 98, baseType: !170, size: 8, offset: 1240)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_len", scope: !5642, file: !171, line: 100, baseType: !340, size: 16, offset: 1248)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "sc_data_direction", scope: !5642, file: !171, line: 101, baseType: !177, size: 32, offset: 1280)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "cmnd", scope: !5642, file: !171, line: 103, baseType: !532, size: 256, offset: 1312)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "sdb", scope: !5642, file: !171, line: 106, baseType: !5661, size: 192, offset: 1600)
!5661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_data_buffer", file: !171, line: 30, size: 192, elements: !5662)
!5662 = !{!5663, !5680}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !5661, file: !171, line: 31, baseType: !5664, size: 128)
!5664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5665, line: 39, size: 128, elements: !5666)
!5665 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5666 = !{!5667, !5678, !5679}
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5664, file: !5665, line: 40, baseType: !5668, size: 64)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5665, line: 11, size: 256, elements: !5670)
!5670 = !{!5671, !5672, !5673, !5674, !5676, !5677}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5669, file: !5665, line: 12, baseType: !420, size: 64)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5669, file: !5665, line: 13, baseType: !7, size: 32, offset: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5669, file: !5665, line: 14, baseType: !7, size: 32, offset: 96)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5669, file: !5665, line: 15, baseType: !5675, size: 64, offset: 128)
!5675 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !272, line: 149, baseType: !524)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5669, file: !5665, line: 17, baseType: !7, size: 32, offset: 192)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5669, file: !5665, line: 20, baseType: !7, size: 32, offset: 224)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5664, file: !5665, line: 41, baseType: !7, size: 32, offset: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5664, file: !5665, line: 42, baseType: !7, size: 32, offset: 96)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5661, file: !171, line: 32, baseType: !7, size: 32, offset: 128)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "prot_sdb", scope: !5642, file: !171, line: 107, baseType: !5682, size: 64, offset: 1792)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "underflow", scope: !5642, file: !171, line: 109, baseType: !7, size: 32, offset: 1856)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "transfersize", scope: !5642, file: !171, line: 112, baseType: !7, size: 32, offset: 1888)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "resid_len", scope: !5642, file: !171, line: 117, baseType: !7, size: 32, offset: 1920)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "sense_len", scope: !5642, file: !171, line: 118, baseType: !7, size: 32, offset: 1952)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "sense_buffer", scope: !5642, file: !171, line: 119, baseType: !2922, size: 64, offset: 1984)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5642, file: !171, line: 125, baseType: !82, size: 32, offset: 2048)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5642, file: !171, line: 126, baseType: !420, size: 64, offset: 2112)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "extra_len", scope: !5642, file: !171, line: 128, baseType: !7, size: 32, offset: 2176)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "host_scribble", scope: !5642, file: !171, line: 135, baseType: !2922, size: 64, offset: 2240)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5642, file: !171, line: 143, baseType: !82, size: 32, offset: 2304)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !5634, file: !193, line: 97, baseType: !5694, size: 64, offset: 128)
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{null, !5617, !338}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !5634, file: !193, line: 99, baseType: !266, size: 64, offset: 192)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5634, file: !193, line: 100, baseType: !290, size: 64, offset: 256)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5634, file: !193, line: 109, baseType: !5700, size: 64, offset: 320)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!290, !5617}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5634, file: !193, line: 116, baseType: !5704, size: 64, offset: 384)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!82, !5613, !7, !442}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5634, file: !193, line: 127, baseType: !5704, size: 64, offset: 448)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "init_cmd_priv", scope: !5634, file: !193, line: 131, baseType: !5638, size: 64, offset: 512)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "exit_cmd_priv", scope: !5634, file: !193, line: 132, baseType: !5638, size: 64, offset: 576)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "eh_abort_handler", scope: !5634, file: !193, line: 152, baseType: !5711, size: 64, offset: 640)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!82, !5641}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "eh_device_reset_handler", scope: !5634, file: !193, line: 153, baseType: !5711, size: 64, offset: 704)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "eh_target_reset_handler", scope: !5634, file: !193, line: 154, baseType: !5711, size: 64, offset: 768)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "eh_bus_reset_handler", scope: !5634, file: !193, line: 155, baseType: !5711, size: 64, offset: 832)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "eh_host_reset_handler", scope: !5634, file: !193, line: 156, baseType: !5711, size: 64, offset: 896)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "slave_alloc", scope: !5634, file: !193, line: 184, baseType: !5719, size: 64, offset: 960)
!5719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!82, !5613}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "slave_configure", scope: !5634, file: !193, line: 215, baseType: !5719, size: 64, offset: 1024)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "slave_destroy", scope: !5634, file: !193, line: 226, baseType: !5724, size: 64, offset: 1088)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{null, !5613}
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "target_alloc", scope: !5634, file: !193, line: 240, baseType: !5728, size: 64, offset: 1152)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!82, !5731}
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_target", file: !185, line: 334, size: 6528, align: 64, elements: !5733)
!5733 = !{!5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5749, !5750, !5751, !5752, !5753}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "starget_sdev_user", scope: !5732, file: !185, line: 335, baseType: !5613, size: 64)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !5732, file: !185, line: 336, baseType: !271, size: 128, offset: 64)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5732, file: !185, line: 337, baseType: !271, size: 128, offset: 192)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5732, file: !185, line: 338, baseType: !2088, size: 5824, offset: 320)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "reap_ref", scope: !5732, file: !185, line: 339, baseType: !5300, size: 32, offset: 6144)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5732, file: !185, line: 340, baseType: !7, size: 32, offset: 6176)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5732, file: !185, line: 341, baseType: !7, size: 32, offset: 6208)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !5732, file: !185, line: 343, baseType: !7, size: 1, offset: 6240, flags: DIFlagBitField, extraData: i64 6240)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "single_lun", scope: !5732, file: !185, line: 344, baseType: !7, size: 1, offset: 6241, flags: DIFlagBitField, extraData: i64 6240)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "pdt_1f_for_no_lun", scope: !5732, file: !185, line: 347, baseType: !7, size: 1, offset: 6242, flags: DIFlagBitField, extraData: i64 6240)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_luns", scope: !5732, file: !185, line: 349, baseType: !7, size: 1, offset: 6243, flags: DIFlagBitField, extraData: i64 6240)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_lun_change", scope: !5732, file: !185, line: 351, baseType: !7, size: 1, offset: 6244, flags: DIFlagBitField, extraData: i64 6240)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "target_busy", scope: !5732, file: !185, line: 355, baseType: !321, size: 32, offset: 6272)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "target_blocked", scope: !5732, file: !185, line: 356, baseType: !321, size: 32, offset: 6304)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !5732, file: !185, line: 362, baseType: !7, size: 32, offset: 6336)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "max_target_blocked", scope: !5732, file: !185, line: 363, baseType: !7, size: 32, offset: 6368)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !5732, file: !185, line: 366, baseType: !279, size: 8, offset: 6400)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5732, file: !185, line: 367, baseType: !184, size: 32, offset: 6432)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !5732, file: !185, line: 368, baseType: !442, size: 64, offset: 6464)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "starget_data", scope: !5732, file: !185, line: 369, baseType: !1490, offset: 6528)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "target_destroy", scope: !5634, file: !193, line: 250, baseType: !5755, size: 64, offset: 1216)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{null, !5731}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "scan_finished", scope: !5634, file: !193, line: 261, baseType: !5759, size: 64, offset: 1280)
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5760, size: 64)
!5760 = !DISubroutineType(types: !5761)
!5761 = !{!82, !5617, !420}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "scan_start", scope: !5634, file: !193, line: 270, baseType: !5763, size: 64, offset: 1344)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{null, !5617}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "change_queue_depth", scope: !5634, file: !193, line: 283, baseType: !5767, size: 64, offset: 1408)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!82, !5613, !82}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !5634, file: !193, line: 291, baseType: !5763, size: 64, offset: 1472)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "mq_poll", scope: !5634, file: !193, line: 301, baseType: !5772, size: 64, offset: 1536)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!82, !5617, !7}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "dma_need_drain", scope: !5634, file: !193, line: 308, baseType: !5776, size: 64, offset: 1600)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!982, !1680}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "bios_param", scope: !5634, file: !193, line: 318, baseType: !5780, size: 64, offset: 1664)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!82, !5613, !2035, !2039, !717}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !5634, file: !193, line: 327, baseType: !5724, size: 64, offset: 1728)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "show_info", scope: !5634, file: !193, line: 336, baseType: !5785, size: 64, offset: 1792)
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5786, size: 64)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!82, !723, !5617}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !5634, file: !193, line: 337, baseType: !5789, size: 64, offset: 1856)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{!82, !5617, !370, !82}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timed_out", scope: !5634, file: !193, line: 346, baseType: !5793, size: 64, offset: 1920)
!5793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!192, !5641}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "eh_should_retry_cmd", scope: !5634, file: !193, line: 352, baseType: !5797, size: 64, offset: 1984)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!982, !5641}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "host_reset", scope: !5634, file: !193, line: 362, baseType: !5801, size: 64, offset: 2048)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!82, !5617, !82}
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "proc_name", scope: !5634, file: !193, line: 370, baseType: !290, size: 64, offset: 2112)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !5634, file: !193, line: 377, baseType: !82, size: 32, offset: 2176)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !5634, file: !193, line: 386, baseType: !82, size: 32, offset: 2208)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5634, file: !193, line: 392, baseType: !340, size: 16, offset: 2240)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !5634, file: !193, line: 393, baseType: !340, size: 16, offset: 2256)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5634, file: !193, line: 398, baseType: !7, size: 32, offset: 2272)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5634, file: !193, line: 403, baseType: !7, size: 32, offset: 2304)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !5634, file: !193, line: 409, baseType: !420, size: 64, offset: 2368)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5634, file: !193, line: 411, baseType: !420, size: 64, offset: 2432)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !5634, file: !193, line: 430, baseType: !951, size: 16, offset: 2496)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "tag_alloc_policy", scope: !5634, file: !193, line: 433, baseType: !82, size: 32, offset: 2528)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "track_queue_depth", scope: !5634, file: !193, line: 438, baseType: !7, size: 1, offset: 2560, flags: DIFlagBitField, extraData: i64 2560)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "supported_mode", scope: !5634, file: !193, line: 443, baseType: !7, size: 2, offset: 2561, flags: DIFlagBitField, extraData: i64 2560)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "emulated", scope: !5634, file: !193, line: 448, baseType: !7, size: 1, offset: 2563, flags: DIFlagBitField, extraData: i64 2560)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "skip_settle_delay", scope: !5634, file: !193, line: 453, baseType: !7, size: 1, offset: 2564, flags: DIFlagBitField, extraData: i64 2560)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !5634, file: !193, line: 456, baseType: !7, size: 1, offset: 2565, flags: DIFlagBitField, extraData: i64 2560)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !5634, file: !193, line: 459, baseType: !7, size: 1, offset: 2566, flags: DIFlagBitField, extraData: i64 2560)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand_may_block", scope: !5634, file: !193, line: 462, baseType: !7, size: 1, offset: 2567, flags: DIFlagBitField, extraData: i64 2560)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !5634, file: !193, line: 467, baseType: !7, size: 32, offset: 2592)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "shost_groups", scope: !5634, file: !193, line: 481, baseType: !422, size: 64, offset: 2624)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_groups", scope: !5634, file: !193, line: 487, baseType: !422, size: 64, offset: 2688)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !5634, file: !193, line: 496, baseType: !524, size: 64, offset: 2752)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend_delay", scope: !5634, file: !193, line: 499, baseType: !82, size: 32, offset: 2816)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "transportt", scope: !5618, file: !193, line: 561, baseType: !5828, size: 64, offset: 1408)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_transport_template", file: !193, line: 21, flags: DIFlagFwdDecl)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "tagset_refcnt", scope: !5618, file: !193, line: 563, baseType: !5300, size: 32, offset: 1472)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "tagset_freed", scope: !5618, file: !193, line: 564, baseType: !1276, size: 256, offset: 1536)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !5618, file: !193, line: 566, baseType: !1891, size: 1344, offset: 1792)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "host_blocked", scope: !5618, file: !193, line: 568, baseType: !321, size: 32, offset: 3136)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "host_failed", scope: !5618, file: !193, line: 570, baseType: !7, size: 32, offset: 3168)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "host_eh_scheduled", scope: !5618, file: !193, line: 572, baseType: !7, size: 32, offset: 3200)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "host_no", scope: !5618, file: !193, line: 574, baseType: !7, size: 32, offset: 3232)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "eh_deadline", scope: !5618, file: !193, line: 577, baseType: !82, size: 32, offset: 3264)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "last_reset", scope: !5618, file: !193, line: 578, baseType: !420, size: 64, offset: 3328)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "max_channel", scope: !5618, file: !193, line: 587, baseType: !7, size: 32, offset: 3392)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "max_id", scope: !5618, file: !193, line: 588, baseType: !7, size: 32, offset: 3424)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "max_lun", scope: !5618, file: !193, line: 589, baseType: !524, size: 64, offset: 3456)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5618, file: !193, line: 598, baseType: !7, size: 32, offset: 3520)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmd_len", scope: !5618, file: !193, line: 607, baseType: !340, size: 16, offset: 3552)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !5618, file: !193, line: 609, baseType: !82, size: 32, offset: 3584)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !5618, file: !193, line: 610, baseType: !82, size: 32, offset: 3616)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !5618, file: !193, line: 611, baseType: !951, size: 16, offset: 3648)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5618, file: !193, line: 612, baseType: !340, size: 16, offset: 3664)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !5618, file: !193, line: 613, baseType: !340, size: 16, offset: 3680)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !5618, file: !193, line: 614, baseType: !7, size: 32, offset: 3712)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "opt_sectors", scope: !5618, file: !193, line: 615, baseType: !7, size: 32, offset: 3744)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5618, file: !193, line: 616, baseType: !7, size: 32, offset: 3776)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !5618, file: !193, line: 617, baseType: !420, size: 64, offset: 3840)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !5618, file: !193, line: 618, baseType: !420, size: 64, offset: 3904)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !5618, file: !193, line: 627, baseType: !7, size: 32, offset: 3968)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !5618, file: !193, line: 628, baseType: !7, size: 32, offset: 4000)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "active_mode", scope: !5618, file: !193, line: 629, baseType: !7, size: 2, offset: 4032, flags: DIFlagBitField, extraData: i64 4032)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "host_self_blocked", scope: !5618, file: !193, line: 635, baseType: !7, size: 1, offset: 4034, flags: DIFlagBitField, extraData: i64 4032)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_ordering", scope: !5618, file: !193, line: 642, baseType: !7, size: 1, offset: 4035, flags: DIFlagBitField, extraData: i64 4032)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_in_progress", scope: !5618, file: !193, line: 645, baseType: !7, size: 1, offset: 4036, flags: DIFlagBitField, extraData: i64 4032)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "async_scan", scope: !5618, file: !193, line: 648, baseType: !7, size: 1, offset: 4037, flags: DIFlagBitField, extraData: i64 4032)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "eh_noresume", scope: !5618, file: !193, line: 651, baseType: !7, size: 1, offset: 4038, flags: DIFlagBitField, extraData: i64 4032)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !5618, file: !193, line: 654, baseType: !7, size: 1, offset: 4039, flags: DIFlagBitField, extraData: i64 4032)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !5618, file: !193, line: 657, baseType: !7, size: 1, offset: 4040, flags: DIFlagBitField, extraData: i64 4032)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand_may_block", scope: !5618, file: !193, line: 660, baseType: !7, size: 1, offset: 4041, flags: DIFlagBitField, extraData: i64 4032)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "short_inquiry", scope: !5618, file: !193, line: 663, baseType: !7, size: 1, offset: 4042, flags: DIFlagBitField, extraData: i64 4032)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "no_scsi2_lun_in_cdb", scope: !5618, file: !193, line: 666, baseType: !7, size: 1, offset: 4043, flags: DIFlagBitField, extraData: i64 4032)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "work_q_name", scope: !5618, file: !193, line: 671, baseType: !2961, size: 160, offset: 4048)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "work_q", scope: !5618, file: !193, line: 672, baseType: !1735, size: 64, offset: 4224)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_work_q", scope: !5618, file: !193, line: 677, baseType: !1735, size: 64, offset: 4288)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !5618, file: !193, line: 682, baseType: !7, size: 32, offset: 4352)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "prot_capabilities", scope: !5618, file: !193, line: 685, baseType: !7, size: 32, offset: 4384)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "prot_guard_type", scope: !5618, file: !193, line: 686, baseType: !172, size: 8, offset: 4416)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5618, file: !193, line: 689, baseType: !420, size: 64, offset: 4480)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "io_port", scope: !5618, file: !193, line: 690, baseType: !420, size: 64, offset: 4544)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "n_io_port", scope: !5618, file: !193, line: 691, baseType: !172, size: 8, offset: 4608)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel", scope: !5618, file: !193, line: 692, baseType: !172, size: 8, offset: 4616)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5618, file: !193, line: 693, baseType: !7, size: 32, offset: 4640)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "shost_state", scope: !5618, file: !193, line: 696, baseType: !198, size: 32, offset: 4672)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "shost_gendev", scope: !5618, file: !193, line: 699, baseType: !2088, size: 5824, offset: 4736)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "shost_dev", scope: !5618, file: !193, line: 699, baseType: !2088, size: 5824, offset: 10560)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "shost_data", scope: !5618, file: !193, line: 705, baseType: !442, size: 64, offset: 16384)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !5618, file: !193, line: 711, baseType: !2092, size: 64, offset: 16448)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !5618, file: !193, line: 718, baseType: !1490, align: 64, offset: 16512)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "request_queue", scope: !5614, file: !185, line: 105, baseType: !1684, size: 64, offset: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !5614, file: !185, line: 108, baseType: !271, size: 128, offset: 128)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "same_target_siblings", scope: !5614, file: !185, line: 109, baseType: !271, size: 128, offset: 256)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "budget_map", scope: !5614, file: !185, line: 111, baseType: !1758, size: 256, offset: 384)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "device_blocked", scope: !5614, file: !185, line: 112, baseType: !321, size: 32, offset: 640)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "restarts", scope: !5614, file: !185, line: 114, baseType: !321, size: 32, offset: 672)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !5614, file: !185, line: 115, baseType: !301, size: 32, offset: 704)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "starved_entry", scope: !5614, file: !185, line: 116, baseType: !271, size: 128, offset: 768)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5614, file: !185, line: 117, baseType: !340, size: 16, offset: 896)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "max_queue_depth", scope: !5614, file: !185, line: 118, baseType: !340, size: 16, offset: 912)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_depth", scope: !5614, file: !185, line: 119, baseType: !340, size: 16, offset: 928)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_count", scope: !5614, file: !185, line: 120, baseType: !340, size: 16, offset: 944)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_time", scope: !5614, file: !185, line: 121, baseType: !420, size: 64, offset: 960)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ramp_up_period", scope: !5614, file: !185, line: 122, baseType: !420, size: 64, offset: 1024)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_ramp_up", scope: !5614, file: !185, line: 125, baseType: !420, size: 64, offset: 1088)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5614, file: !185, line: 127, baseType: !7, size: 32, offset: 1152)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5614, file: !185, line: 127, baseType: !7, size: 32, offset: 1184)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !5614, file: !185, line: 128, baseType: !524, size: 64, offset: 1216)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5614, file: !185, line: 129, baseType: !7, size: 32, offset: 1280)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !5614, file: !185, line: 131, baseType: !7, size: 32, offset: 1312)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !5614, file: !185, line: 133, baseType: !442, size: 64, offset: 1344)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5614, file: !185, line: 134, baseType: !172, size: 8, offset: 1408)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !5614, file: !185, line: 135, baseType: !279, size: 8, offset: 1416)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "inq_periph_qual", scope: !5614, file: !185, line: 136, baseType: !279, size: 8, offset: 1424)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_mutex", scope: !5614, file: !185, line: 137, baseType: !735, size: 256, offset: 1472)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_len", scope: !5614, file: !185, line: 138, baseType: !172, size: 8, offset: 1728)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry", scope: !5614, file: !185, line: 139, baseType: !2922, size: 64, offset: 1792)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5614, file: !185, line: 140, baseType: !290, size: 64, offset: 1856)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !5614, file: !185, line: 141, baseType: !290, size: 64, offset: 1920)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5614, file: !185, line: 142, baseType: !290, size: 64, offset: 1984)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg0", scope: !5614, file: !185, line: 145, baseType: !5915, size: 64, offset: 2048)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_vpd", file: !185, line: 97, size: 192, elements: !5917)
!5917 = !{!5918, !5919, !5920}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5916, file: !185, line: 98, baseType: !793, size: 128, align: 64)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5916, file: !185, line: 99, baseType: !82, size: 32, offset: 128)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5916, file: !185, line: 100, baseType: !5921, offset: 160)
!5921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, elements: !866)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg83", scope: !5614, file: !185, line: 146, baseType: !5915, size: 64, offset: 2112)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg80", scope: !5614, file: !185, line: 147, baseType: !5915, size: 64, offset: 2176)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg89", scope: !5614, file: !185, line: 148, baseType: !5915, size: 64, offset: 2240)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb0", scope: !5614, file: !185, line: 149, baseType: !5915, size: 64, offset: 2304)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb1", scope: !5614, file: !185, line: 150, baseType: !5915, size: 64, offset: 2368)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb2", scope: !5614, file: !185, line: 151, baseType: !5915, size: 64, offset: 2432)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_target", scope: !5614, file: !185, line: 153, baseType: !5731, size: 64, offset: 2496)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_bflags", scope: !5614, file: !185, line: 155, baseType: !5930, size: 64, offset: 2560)
!5930 = !DIDerivedType(tag: DW_TAG_typedef, name: "blist_flags_t", file: !185, line: 20, baseType: !525)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timeout", scope: !5614, file: !185, line: 159, baseType: !7, size: 32, offset: 2624)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "manage_system_start_stop", scope: !5614, file: !185, line: 166, baseType: !7, size: 1, offset: 2656, flags: DIFlagBitField, extraData: i64 2656)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "manage_runtime_start_stop", scope: !5614, file: !185, line: 172, baseType: !7, size: 1, offset: 2657, flags: DIFlagBitField, extraData: i64 2656)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "manage_shutdown", scope: !5614, file: !185, line: 178, baseType: !7, size: 1, offset: 2658, flags: DIFlagBitField, extraData: i64 2656)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "force_runtime_start_on_system_start", scope: !5614, file: !185, line: 184, baseType: !7, size: 1, offset: 2659, flags: DIFlagBitField, extraData: i64 2656)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5614, file: !185, line: 186, baseType: !7, size: 1, offset: 2660, flags: DIFlagBitField, extraData: i64 2656)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5614, file: !185, line: 187, baseType: !7, size: 1, offset: 2661, flags: DIFlagBitField, extraData: i64 2656)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !5614, file: !185, line: 188, baseType: !7, size: 1, offset: 2662, flags: DIFlagBitField, extraData: i64 2656)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "lockable", scope: !5614, file: !185, line: 189, baseType: !7, size: 1, offset: 2663, flags: DIFlagBitField, extraData: i64 2656)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5614, file: !185, line: 190, baseType: !7, size: 1, offset: 2664, flags: DIFlagBitField, extraData: i64 2656)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "borken", scope: !5614, file: !185, line: 191, baseType: !7, size: 1, offset: 2665, flags: DIFlagBitField, extraData: i64 2656)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5614, file: !185, line: 193, baseType: !7, size: 1, offset: 2666, flags: DIFlagBitField, extraData: i64 2656)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !5614, file: !185, line: 194, baseType: !7, size: 1, offset: 2667, flags: DIFlagBitField, extraData: i64 2656)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "sdtr", scope: !5614, file: !185, line: 195, baseType: !7, size: 1, offset: 2668, flags: DIFlagBitField, extraData: i64 2656)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "wdtr", scope: !5614, file: !185, line: 196, baseType: !7, size: 1, offset: 2669, flags: DIFlagBitField, extraData: i64 2656)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "ppr", scope: !5614, file: !185, line: 197, baseType: !7, size: 1, offset: 2670, flags: DIFlagBitField, extraData: i64 2656)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_supported", scope: !5614, file: !185, line: 198, baseType: !7, size: 1, offset: 2671, flags: DIFlagBitField, extraData: i64 2656)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "simple_tags", scope: !5614, file: !185, line: 199, baseType: !7, size: 1, offset: 2672, flags: DIFlagBitField, extraData: i64 2656)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "was_reset", scope: !5614, file: !185, line: 200, baseType: !7, size: 1, offset: 2673, flags: DIFlagBitField, extraData: i64 2656)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_cc_ua", scope: !5614, file: !185, line: 202, baseType: !7, size: 1, offset: 2674, flags: DIFlagBitField, extraData: i64 2656)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_rw", scope: !5614, file: !185, line: 204, baseType: !7, size: 1, offset: 2675, flags: DIFlagBitField, extraData: i64 2656)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_ms", scope: !5614, file: !185, line: 205, baseType: !7, size: 1, offset: 2676, flags: DIFlagBitField, extraData: i64 2656)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "set_dbd_for_ms", scope: !5614, file: !185, line: 206, baseType: !7, size: 1, offset: 2677, flags: DIFlagBitField, extraData: i64 2656)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "read_before_ms", scope: !5614, file: !185, line: 207, baseType: !7, size: 1, offset: 2678, flags: DIFlagBitField, extraData: i64 2656)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_opcodes", scope: !5614, file: !185, line: 208, baseType: !7, size: 1, offset: 2679, flags: DIFlagBitField, extraData: i64 2656)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !5614, file: !185, line: 209, baseType: !7, size: 1, offset: 2680, flags: DIFlagBitField, extraData: i64 2656)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_rw", scope: !5614, file: !185, line: 210, baseType: !7, size: 1, offset: 2681, flags: DIFlagBitField, extraData: i64 2656)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_sync", scope: !5614, file: !185, line: 211, baseType: !7, size: 1, offset: 2682, flags: DIFlagBitField, extraData: i64 2656)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_8", scope: !5614, file: !185, line: 212, baseType: !7, size: 1, offset: 2683, flags: DIFlagBitField, extraData: i64 2656)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_3f", scope: !5614, file: !185, line: 213, baseType: !7, size: 1, offset: 2684, flags: DIFlagBitField, extraData: i64 2656)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vpd_pages", scope: !5614, file: !185, line: 214, baseType: !7, size: 1, offset: 2685, flags: DIFlagBitField, extraData: i64 2656)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "try_vpd_pages", scope: !5614, file: !185, line: 215, baseType: !7, size: 1, offset: 2686, flags: DIFlagBitField, extraData: i64 2656)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "use_192_bytes_for_3f", scope: !5614, file: !185, line: 216, baseType: !7, size: 1, offset: 2687, flags: DIFlagBitField, extraData: i64 2656)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "no_start_on_add", scope: !5614, file: !185, line: 217, baseType: !7, size: 1, offset: 2688, flags: DIFlagBitField, extraData: i64 2656)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "allow_restart", scope: !5614, file: !185, line: 218, baseType: !7, size: 1, offset: 2689, flags: DIFlagBitField, extraData: i64 2656)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "start_stop_pwr_cond", scope: !5614, file: !185, line: 219, baseType: !7, size: 1, offset: 2690, flags: DIFlagBitField, extraData: i64 2656)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "no_uld_attach", scope: !5614, file: !185, line: 220, baseType: !7, size: 1, offset: 2691, flags: DIFlagBitField, extraData: i64 2656)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "select_no_atn", scope: !5614, file: !185, line: 221, baseType: !7, size: 1, offset: 2692, flags: DIFlagBitField, extraData: i64 2656)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "fix_capacity", scope: !5614, file: !185, line: 222, baseType: !7, size: 1, offset: 2693, flags: DIFlagBitField, extraData: i64 2656)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "guess_capacity", scope: !5614, file: !185, line: 223, baseType: !7, size: 1, offset: 2694, flags: DIFlagBitField, extraData: i64 2656)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "retry_hwerror", scope: !5614, file: !185, line: 224, baseType: !7, size: 1, offset: 2695, flags: DIFlagBitField, extraData: i64 2656)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_bug", scope: !5614, file: !185, line: 225, baseType: !7, size: 1, offset: 2696, flags: DIFlagBitField, extraData: i64 2656)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_disc_info", scope: !5614, file: !185, line: 227, baseType: !7, size: 1, offset: 2697, flags: DIFlagBitField, extraData: i64 2656)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_capacity_16", scope: !5614, file: !185, line: 228, baseType: !7, size: 1, offset: 2698, flags: DIFlagBitField, extraData: i64 2656)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "try_rc_10_first", scope: !5614, file: !185, line: 229, baseType: !7, size: 1, offset: 2699, flags: DIFlagBitField, extraData: i64 2656)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "security_supported", scope: !5614, file: !185, line: 230, baseType: !7, size: 1, offset: 2700, flags: DIFlagBitField, extraData: i64 2656)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !5614, file: !185, line: 231, baseType: !7, size: 1, offset: 2701, flags: DIFlagBitField, extraData: i64 2656)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "wce_default_on", scope: !5614, file: !185, line: 232, baseType: !7, size: 1, offset: 2702, flags: DIFlagBitField, extraData: i64 2656)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "no_dif", scope: !5614, file: !185, line: 233, baseType: !7, size: 1, offset: 2703, flags: DIFlagBitField, extraData: i64 2656)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "broken_fua", scope: !5614, file: !185, line: 234, baseType: !7, size: 1, offset: 2704, flags: DIFlagBitField, extraData: i64 2656)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "lun_in_cdb", scope: !5614, file: !185, line: 235, baseType: !7, size: 1, offset: 2705, flags: DIFlagBitField, extraData: i64 2656)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_limit_for_ws", scope: !5614, file: !185, line: 236, baseType: !7, size: 1, offset: 2706, flags: DIFlagBitField, extraData: i64 2656)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend", scope: !5614, file: !185, line: 237, baseType: !7, size: 1, offset: 2707, flags: DIFlagBitField, extraData: i64 2656)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_media_change", scope: !5614, file: !185, line: 239, baseType: !7, size: 1, offset: 2708, flags: DIFlagBitField, extraData: i64 2656)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "silence_suspend", scope: !5614, file: !185, line: 240, baseType: !7, size: 1, offset: 2709, flags: DIFlagBitField, extraData: i64 2656)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "no_vpd_size", scope: !5614, file: !185, line: 241, baseType: !7, size: 1, offset: 2710, flags: DIFlagBitField, extraData: i64 2656)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "cdl_supported", scope: !5614, file: !185, line: 243, baseType: !7, size: 1, offset: 2711, flags: DIFlagBitField, extraData: i64 2656)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "cdl_enable", scope: !5614, file: !185, line: 244, baseType: !7, size: 1, offset: 2712, flags: DIFlagBitField, extraData: i64 2656)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "queue_stopped", scope: !5614, file: !185, line: 246, baseType: !7, size: 32, offset: 2720)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "offline_already", scope: !5614, file: !185, line: 247, baseType: !982, size: 8, offset: 2752)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "disk_events_disable_depth", scope: !5614, file: !185, line: 249, baseType: !321, size: 32, offset: 2784)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !5614, file: !185, line: 251, baseType: !1745, size: 64, offset: 2816)
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "pending_events", scope: !5614, file: !185, line: 252, baseType: !1745, size: 64, offset: 2880)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !5614, file: !185, line: 253, baseType: !271, size: 128, offset: 2944)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "event_work", scope: !5614, file: !185, line: 254, baseType: !1478, size: 256, offset: 3072)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "max_device_blocked", scope: !5614, file: !185, line: 256, baseType: !7, size: 32, offset: 3328)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "iorequest_cnt", scope: !5614, file: !185, line: 259, baseType: !321, size: 32, offset: 3360)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "iodone_cnt", scope: !5614, file: !185, line: 260, baseType: !321, size: 32, offset: 3392)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "ioerr_cnt", scope: !5614, file: !185, line: 261, baseType: !321, size: 32, offset: 3424)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "iotmo_cnt", scope: !5614, file: !185, line: 262, baseType: !321, size: 32, offset: 3456)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_gendev", scope: !5614, file: !185, line: 264, baseType: !2088, size: 5824, offset: 3520)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_dev", scope: !5614, file: !185, line: 265, baseType: !2088, size: 5824, offset: 9344)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !5614, file: !185, line: 267, baseType: !1478, size: 256, offset: 15168)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5614, file: !185, line: 269, baseType: !6005, size: 64, offset: 15424)
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6006, size: 64)
!6006 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device_handler", file: !185, line: 269, flags: DIFlagFwdDecl)
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !5614, file: !185, line: 270, baseType: !442, size: 64, offset: 15488)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_len", scope: !5614, file: !185, line: 272, baseType: !417, size: 64, offset: 15552)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_buf", scope: !5614, file: !185, line: 273, baseType: !442, size: 64, offset: 15616)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !5614, file: !185, line: 275, baseType: !7, size: 32, offset: 15680)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !5614, file: !185, line: 276, baseType: !7, size: 32, offset: 15712)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !5614, file: !185, line: 278, baseType: !6013, size: 64, offset: 15744)
!6013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6014, size: 64)
!6014 = !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_device", file: !185, line: 13, flags: DIFlagFwdDecl)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "access_state", scope: !5614, file: !185, line: 279, baseType: !172, size: 8, offset: 15808)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "state_mutex", scope: !5614, file: !185, line: 280, baseType: !735, size: 256, offset: 15872)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_state", scope: !5614, file: !185, line: 281, baseType: !207, size: 32, offset: 16128)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "quiesced_by", scope: !5614, file: !185, line: 282, baseType: !3573, size: 64, offset: 16192)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_data", scope: !5614, file: !185, line: 283, baseType: !1490, offset: 16256)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5609, file: !5608, line: 36, baseType: !7, size: 32, offset: 128)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "ms_offset", scope: !5609, file: !5608, line: 37, baseType: !420, size: 64, offset: 192)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "writeable", scope: !5609, file: !5608, line: 38, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !5609, file: !5608, line: 39, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flag", scope: !5609, file: !5608, line: 40, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "readcd_known", scope: !5609, file: !5608, line: 41, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "readcd_cdda", scope: !5609, file: !5608, line: 42, baseType: !7, size: 1, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "media_present", scope: !5609, file: !5608, line: 43, baseType: !7, size: 1, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "tur_mismatch", scope: !5609, file: !5608, line: 46, baseType: !82, size: 32, offset: 288)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "tur_changed", scope: !5609, file: !5608, line: 47, baseType: !982, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "get_event_changed", scope: !5609, file: !5608, line: 48, baseType: !982, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_get_event", scope: !5609, file: !5608, line: 49, baseType: !982, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !5609, file: !5608, line: 51, baseType: !2844, size: 1024, offset: 384)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5609, file: !5608, line: 52, baseType: !735, size: 256, offset: 1408)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !5609, file: !5608, line: 53, baseType: !2023, size: 64, offset: 1664)
!6035 = !{!6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6044, !6055, !6056}
!6036 = !DILocalVariable(name: "cd", arg: 1, scope: !5603, file: !3, line: 188, type: !5606)
!6037 = !DILocalVariable(name: "cgc", arg: 2, scope: !5603, file: !3, line: 188, type: !2914)
!6038 = !DILocalVariable(name: "SDev", scope: !5603, file: !3, line: 190, type: !5613)
!6039 = !DILocalVariable(name: "local_sshdr", scope: !5603, file: !3, line: 191, type: !2927)
!6040 = !DILocalVariable(name: "sshdr", scope: !5603, file: !3, line: 191, type: !2926)
!6041 = !DILocalVariable(name: "result", scope: !5603, file: !3, line: 192, type: !82)
!6042 = !DILocalVariable(name: "err", scope: !5603, file: !3, line: 192, type: !82)
!6043 = !DILocalVariable(name: "retries", scope: !5603, file: !3, line: 192, type: !82)
!6044 = !DILocalVariable(name: "exec_args", scope: !5603, file: !3, line: 193, type: !6045)
!6045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6046)
!6046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_exec_args", file: !185, line: 490, size: 320, elements: !6047)
!6047 = !{!6048, !6049, !6050, !6051, !6053, !6054}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !6046, file: !185, line: 491, baseType: !2922, size: 64)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "sense_len", scope: !6046, file: !185, line: 492, baseType: !7, size: 32, offset: 64)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "sshdr", scope: !6046, file: !185, line: 493, baseType: !2926, size: 64, offset: 128)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "req_flags", scope: !6046, file: !185, line: 494, baseType: !6052, size: 32, offset: 192)
!6052 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mq_req_flags_t", file: !219, line: 352, baseType: !521)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "scmd_flags", scope: !6046, file: !185, line: 495, baseType: !82, size: 32, offset: 224)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "resid", scope: !6046, file: !185, line: 496, baseType: !717, size: 64, offset: 256)
!6055 = !DILabel(scope: !5603, name: "retry", file: !3, line: 201)
!6056 = !DILabel(scope: !5603, name: "out", file: !3, line: 264)
!6057 = !DILocation(line: 188, column: 26, scope: !5603)
!6058 = !DILocation(line: 188, column: 53, scope: !5603)
!6059 = !DILocation(line: 190, column: 2, scope: !5603)
!6060 = !DILocation(line: 190, column: 22, scope: !5603)
!6061 = !DILocation(line: 191, column: 2, scope: !5603)
!6062 = !DILocation(line: 191, column: 24, scope: !5603)
!6063 = !DILocation(line: 191, column: 38, scope: !5603)
!6064 = !DILocation(line: 192, column: 2, scope: !5603)
!6065 = !DILocation(line: 192, column: 6, scope: !5603)
!6066 = !DILocation(line: 192, column: 14, scope: !5603)
!6067 = !DILocation(line: 192, column: 23, scope: !5603)
!6068 = !DILocation(line: 193, column: 2, scope: !5603)
!6069 = !DILocation(line: 193, column: 30, scope: !5603)
!6070 = !DILocation(line: 193, column: 42, scope: !5603)
!6071 = !DILocation(line: 194, column: 12, scope: !5603)
!6072 = !DILocation(line: 194, column: 17, scope: !5603)
!6073 = !DILocation(line: 197, column: 9, scope: !5603)
!6074 = !DILocation(line: 197, column: 13, scope: !5603)
!6075 = !DILocation(line: 197, column: 7, scope: !5603)
!6076 = !DILocation(line: 199, column: 20, scope: !5603)
!6077 = !DILocation(line: 199, column: 8, scope: !5603)
!6078 = !DILocation(line: 199, column: 2, scope: !5603)
!6079 = !DILocation(line: 201, column: 7, scope: !5603)
!6080 = !DILocation(line: 202, column: 41, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 202, column: 6)
!6082 = !DILocation(line: 202, column: 7, scope: !6081)
!6083 = !DILocation(line: 202, column: 6, scope: !5603)
!6084 = !DILocation(line: 203, column: 7, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 202, column: 48)
!6086 = !DILocation(line: 204, column: 3, scope: !6085)
!6087 = !DILocation(line: 207, column: 28, scope: !5603)
!6088 = !DILocation(line: 207, column: 34, scope: !5603)
!6089 = !DILocation(line: 207, column: 39, scope: !5603)
!6090 = !DILocation(line: 208, column: 7, scope: !5603)
!6091 = !DILocation(line: 208, column: 12, scope: !5603)
!6092 = !DILocation(line: 208, column: 27, scope: !5603)
!6093 = !DILocation(line: 209, column: 39, scope: !5603)
!6094 = !DILocation(line: 209, column: 44, scope: !5603)
!6095 = !DILocation(line: 210, column: 7, scope: !5603)
!6096 = !DILocation(line: 210, column: 12, scope: !5603)
!6097 = !DILocation(line: 210, column: 20, scope: !5603)
!6098 = !DILocation(line: 210, column: 25, scope: !5603)
!6099 = !DILocation(line: 207, column: 11, scope: !5603)
!6100 = !DILocation(line: 207, column: 9, scope: !5603)
!6101 = !DILocation(line: 213, column: 6, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 213, column: 6)
!6103 = !DILocation(line: 213, column: 13, scope: !6102)
!6104 = !DILocation(line: 213, column: 6, scope: !5603)
!6105 = !DILocation(line: 214, column: 9, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 213, column: 18)
!6107 = !DILocation(line: 214, column: 7, scope: !6106)
!6108 = !DILocation(line: 215, column: 3, scope: !6106)
!6109 = !DILocation(line: 217, column: 37, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 217, column: 6)
!6111 = !DILocation(line: 217, column: 6, scope: !6110)
!6112 = !DILocation(line: 217, column: 6, scope: !5603)
!6113 = !DILocation(line: 218, column: 11, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 217, column: 46)
!6115 = !DILocation(line: 218, column: 18, scope: !6114)
!6116 = !DILocation(line: 218, column: 3, scope: !6114)
!6117 = !DILocation(line: 220, column: 4, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 218, column: 29)
!6119 = !DILocation(line: 220, column: 10, scope: !6118)
!6120 = !DILocation(line: 220, column: 18, scope: !6118)
!6121 = !DILocation(line: 221, column: 9, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 221, column: 8)
!6123 = !DILocation(line: 221, column: 14, scope: !6122)
!6124 = !DILocation(line: 221, column: 8, scope: !6118)
!6125 = !DILocation(line: 222, column: 5, scope: !6122)
!6126 = !DILocation(line: 224, column: 15, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 224, column: 8)
!6128 = !DILocation(line: 224, column: 18, scope: !6127)
!6129 = !DILocation(line: 224, column: 8, scope: !6118)
!6130 = !DILocation(line: 225, column: 5, scope: !6127)
!6131 = !DILocation(line: 226, column: 8, scope: !6118)
!6132 = !DILocation(line: 227, column: 4, scope: !6118)
!6133 = !DILocation(line: 229, column: 8, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 229, column: 8)
!6135 = !DILocation(line: 229, column: 15, scope: !6134)
!6136 = !DILocation(line: 229, column: 19, scope: !6134)
!6137 = !DILocation(line: 229, column: 27, scope: !6134)
!6138 = !DILocation(line: 230, column: 8, scope: !6134)
!6139 = !DILocation(line: 230, column: 15, scope: !6134)
!6140 = !DILocation(line: 230, column: 20, scope: !6134)
!6141 = !DILocation(line: 229, column: 8, scope: !6118)
!6142 = !DILocation(line: 232, column: 10, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 232, column: 9)
!6144 = distinct !DILexicalBlock(scope: !6134, file: !3, line: 230, column: 29)
!6145 = !DILocation(line: 232, column: 15, scope: !6143)
!6146 = !DILocation(line: 232, column: 9, scope: !6144)
!6147 = !DILocation(line: 233, column: 6, scope: !6143)
!6148 = !DILocation(line: 235, column: 16, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 235, column: 9)
!6150 = !DILocation(line: 235, column: 19, scope: !6149)
!6151 = !DILocation(line: 235, column: 9, scope: !6144)
!6152 = !DILocation(line: 237, column: 6, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 235, column: 25)
!6154 = !DILocation(line: 238, column: 6, scope: !6153)
!6155 = !DILocation(line: 241, column: 10, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 239, column: 12)
!6157 = !DILocation(line: 242, column: 6, scope: !6156)
!6158 = !DILocation(line: 245, column: 9, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 245, column: 8)
!6160 = !DILocation(line: 245, column: 14, scope: !6159)
!6161 = !DILocation(line: 245, column: 8, scope: !6118)
!6162 = !DILocation(line: 246, column: 5, scope: !6159)
!6163 = !DILocation(line: 249, column: 8, scope: !6118)
!6164 = !DILocation(line: 250, column: 4, scope: !6118)
!6165 = !DILocation(line: 252, column: 8, scope: !6118)
!6166 = !DILocation(line: 253, column: 8, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6118, file: !3, line: 253, column: 8)
!6168 = !DILocation(line: 253, column: 15, scope: !6167)
!6169 = !DILocation(line: 253, column: 19, scope: !6167)
!6170 = !DILocation(line: 253, column: 27, scope: !6167)
!6171 = !DILocation(line: 254, column: 8, scope: !6167)
!6172 = !DILocation(line: 254, column: 15, scope: !6167)
!6173 = !DILocation(line: 254, column: 20, scope: !6167)
!6174 = !DILocation(line: 253, column: 8, scope: !6118)
!6175 = !DILocation(line: 256, column: 9, scope: !6167)
!6176 = !DILocation(line: 256, column: 5, scope: !6167)
!6177 = !DILocation(line: 257, column: 4, scope: !6118)
!6178 = !DILocation(line: 259, column: 8, scope: !6118)
!6179 = !DILocation(line: 260, column: 3, scope: !6118)
!6180 = !DILocation(line: 261, column: 2, scope: !6114)
!6181 = !DILocation(line: 217, column: 43, scope: !6110)
!6182 = !DILocation(line: 264, column: 7, scope: !5603)
!6183 = !DILocation(line: 265, column: 14, scope: !5603)
!6184 = !DILocation(line: 265, column: 2, scope: !5603)
!6185 = !DILocation(line: 265, column: 7, scope: !5603)
!6186 = !DILocation(line: 265, column: 12, scope: !5603)
!6187 = !DILocation(line: 266, column: 9, scope: !5603)
!6188 = !DILocation(line: 267, column: 1, scope: !5603)
!6189 = !DILocation(line: 266, column: 2, scope: !5603)
!6190 = !DISubprogram(name: "scsi_block_when_processing_errors", scope: !6191, file: !6191, line: 17, type: !5720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6191 = !DIFile(filename: "./include/scsi/scsi_eh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88324ec9a8b5eb8710bc2debfc15ffd2")
!6192 = !DISubprogram(name: "scsi_execute_cmd", scope: !185, file: !185, line: 499, type: !6193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6193 = !DISubroutineType(types: !6194)
!6194 = !{!82, !5613, !528, !2658, !442, !7, !82, !82, !6195}
!6195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6045, size: 64)
!6196 = distinct !DISubprogram(name: "scsi_status_is_check_condition", scope: !6197, file: !6197, line: 74, type: !3212, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6198)
!6197 = !DIFile(filename: "./include/scsi/scsi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8492a8995416f10c9dd8bbf42ab5671a")
!6198 = !{!6199}
!6199 = !DILocalVariable(name: "status", arg: 1, scope: !6196, file: !6197, line: 74, type: !82)
!6200 = !DILocation(line: 74, column: 54, scope: !6196)
!6201 = !DILocation(line: 76, column: 6, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6196, file: !6197, line: 76, column: 6)
!6203 = !DILocation(line: 76, column: 13, scope: !6202)
!6204 = !DILocation(line: 76, column: 6, scope: !6196)
!6205 = !DILocation(line: 77, column: 3, scope: !6202)
!6206 = !DILocation(line: 78, column: 9, scope: !6196)
!6207 = !DILocation(line: 79, column: 9, scope: !6196)
!6208 = !DILocation(line: 79, column: 16, scope: !6196)
!6209 = !DILocation(line: 79, column: 2, scope: !6196)
!6210 = !DILocation(line: 80, column: 1, scope: !6196)
!6211 = !DISubprogram(name: "sdev_prefix_printk", scope: !185, file: !185, line: 301, type: !6212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !290, !6214, !290, !290, null}
!6214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6215, size: 64)
!6215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5614)
!6216 = distinct !DISubprogram(name: "ssleep", scope: !6217, file: !6217, line: 76, type: !6218, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6220)
!6217 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6218 = !DISubroutineType(types: !6219)
!6219 = !{null, !7}
!6220 = !{!6221}
!6221 = !DILocalVariable(name: "seconds", arg: 1, scope: !6216, file: !6217, line: 76, type: !7)
!6222 = !DILocation(line: 76, column: 40, scope: !6216)
!6223 = !DILocation(line: 78, column: 9, scope: !6216)
!6224 = !DILocation(line: 78, column: 17, scope: !6216)
!6225 = !DILocation(line: 78, column: 2, scope: !6216)
!6226 = !DILocation(line: 79, column: 1, scope: !6216)
!6227 = distinct !DISubprogram(name: "sr_tray_move", scope: !3, file: !3, line: 272, type: !2854, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6228)
!6228 = !{!6229, !6230, !6231, !6232}
!6229 = !DILocalVariable(name: "cdi", arg: 1, scope: !6227, file: !3, line: 272, type: !2843)
!6230 = !DILocalVariable(name: "pos", arg: 2, scope: !6227, file: !3, line: 272, type: !82)
!6231 = !DILocalVariable(name: "cd", scope: !6227, file: !3, line: 274, type: !5606)
!6232 = !DILocalVariable(name: "cgc", scope: !6227, file: !3, line: 275, type: !2915)
!6233 = !DILocation(line: 272, column: 44, scope: !6227)
!6234 = !DILocation(line: 272, column: 53, scope: !6227)
!6235 = !DILocation(line: 274, column: 2, scope: !6227)
!6236 = !DILocation(line: 274, column: 11, scope: !6227)
!6237 = !DILocation(line: 274, column: 16, scope: !6227)
!6238 = !DILocation(line: 274, column: 21, scope: !6227)
!6239 = !DILocation(line: 275, column: 2, scope: !6227)
!6240 = !DILocation(line: 275, column: 24, scope: !6227)
!6241 = !DILocation(line: 277, column: 2, scope: !6227)
!6242 = !DILocation(line: 278, column: 6, scope: !6227)
!6243 = !DILocation(line: 278, column: 2, scope: !6227)
!6244 = !DILocation(line: 278, column: 13, scope: !6227)
!6245 = !DILocation(line: 279, column: 16, scope: !6227)
!6246 = !DILocation(line: 279, column: 20, scope: !6227)
!6247 = !DILocation(line: 279, column: 15, scope: !6227)
!6248 = !DILocation(line: 279, column: 6, scope: !6227)
!6249 = !DILocation(line: 279, column: 2, scope: !6227)
!6250 = !DILocation(line: 279, column: 13, scope: !6227)
!6251 = !DILocation(line: 280, column: 6, scope: !6227)
!6252 = !DILocation(line: 280, column: 21, scope: !6227)
!6253 = !DILocation(line: 281, column: 6, scope: !6227)
!6254 = !DILocation(line: 281, column: 14, scope: !6227)
!6255 = !DILocation(line: 282, column: 21, scope: !6227)
!6256 = !DILocation(line: 282, column: 9, scope: !6227)
!6257 = !DILocation(line: 283, column: 1, scope: !6227)
!6258 = !DILocation(line: 282, column: 2, scope: !6227)
!6259 = distinct !DISubprogram(name: "sr_lock_door", scope: !3, file: !3, line: 285, type: !2854, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6260)
!6260 = !{!6261, !6262, !6263}
!6261 = !DILocalVariable(name: "cdi", arg: 1, scope: !6259, file: !3, line: 285, type: !2843)
!6262 = !DILocalVariable(name: "lock", arg: 2, scope: !6259, file: !3, line: 285, type: !82)
!6263 = !DILocalVariable(name: "cd", scope: !6259, file: !3, line: 287, type: !5606)
!6264 = !DILocation(line: 285, column: 44, scope: !6259)
!6265 = !DILocation(line: 285, column: 53, scope: !6259)
!6266 = !DILocation(line: 287, column: 2, scope: !6259)
!6267 = !DILocation(line: 287, column: 11, scope: !6259)
!6268 = !DILocation(line: 287, column: 16, scope: !6259)
!6269 = !DILocation(line: 287, column: 21, scope: !6259)
!6270 = !DILocation(line: 289, column: 33, scope: !6259)
!6271 = !DILocation(line: 289, column: 37, scope: !6259)
!6272 = !DILocation(line: 289, column: 45, scope: !6259)
!6273 = !DILocation(line: 289, column: 9, scope: !6259)
!6274 = !DILocation(line: 291, column: 1, scope: !6259)
!6275 = !DILocation(line: 289, column: 2, scope: !6259)
!6276 = !DISubprogram(name: "scsi_set_medium_removal", scope: !185, file: !185, line: 449, type: !6277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{!82, !5613, !279}
!6279 = distinct !DISubprogram(name: "sr_drive_status", scope: !3, file: !3, line: 293, type: !2854, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6280 = !{!6281, !6282, !6283, !6285, !6286}
!6281 = !DILocalVariable(name: "cdi", arg: 1, scope: !6279, file: !3, line: 293, type: !2843)
!6282 = !DILocalVariable(name: "slot", arg: 2, scope: !6279, file: !3, line: 293, type: !82)
!6283 = !DILocalVariable(name: "cd", scope: !6279, file: !3, line: 295, type: !6284)
!6284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!6285 = !DILocalVariable(name: "sshdr", scope: !6279, file: !3, line: 296, type: !2927)
!6286 = !DILocalVariable(name: "med", scope: !6279, file: !3, line: 297, type: !6287)
!6287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_event_desc", file: !2845, line: 288, size: 32, elements: !6288)
!6288 = !{!6289, !6290, !6291, !6292, !6293, !6294, !6295}
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "media_event_code", scope: !6287, file: !2845, line: 296, baseType: !331, size: 4, flags: DIFlagBitField, extraData: i64 0)
!6290 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !6287, file: !2845, line: 297, baseType: !331, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6291 = !DIDerivedType(tag: DW_TAG_member, name: "door_open", scope: !6287, file: !2845, line: 298, baseType: !331, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "media_present", scope: !6287, file: !2845, line: 299, baseType: !331, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !6287, file: !2845, line: 300, baseType: !331, size: 6, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "start_slot", scope: !6287, file: !2845, line: 302, baseType: !331, size: 8, offset: 16)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "end_slot", scope: !6287, file: !2845, line: 303, baseType: !331, size: 8, offset: 24)
!6296 = !DILocation(line: 293, column: 47, scope: !6279)
!6297 = !DILocation(line: 293, column: 56, scope: !6279)
!6298 = !DILocation(line: 295, column: 2, scope: !6279)
!6299 = !DILocation(line: 295, column: 18, scope: !6279)
!6300 = !DILocation(line: 295, column: 23, scope: !6279)
!6301 = !DILocation(line: 295, column: 28, scope: !6279)
!6302 = !DILocation(line: 296, column: 2, scope: !6279)
!6303 = !DILocation(line: 296, column: 24, scope: !6279)
!6304 = !DILocation(line: 297, column: 2, scope: !6279)
!6305 = !DILocation(line: 297, column: 26, scope: !6279)
!6306 = !DILocation(line: 299, column: 22, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 299, column: 6)
!6308 = !DILocation(line: 299, column: 19, scope: !6307)
!6309 = !DILocation(line: 299, column: 6, scope: !6279)
!6310 = !DILocation(line: 301, column: 3, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 299, column: 28)
!6312 = !DILocation(line: 303, column: 28, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 303, column: 6)
!6314 = !DILocation(line: 303, column: 32, scope: !6313)
!6315 = !DILocation(line: 303, column: 7, scope: !6313)
!6316 = !DILocation(line: 303, column: 6, scope: !6279)
!6317 = !DILocation(line: 304, column: 3, scope: !6313)
!6318 = !DILocation(line: 307, column: 6, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 307, column: 6)
!6320 = !DILocation(line: 307, column: 31, scope: !6319)
!6321 = !DILocation(line: 307, column: 40, scope: !6319)
!6322 = !DILocation(line: 307, column: 34, scope: !6319)
!6323 = !DILocation(line: 307, column: 50, scope: !6319)
!6324 = !DILocation(line: 308, column: 4, scope: !6319)
!6325 = !DILocation(line: 308, column: 13, scope: !6319)
!6326 = !DILocation(line: 308, column: 7, scope: !6319)
!6327 = !DILocation(line: 308, column: 17, scope: !6319)
!6328 = !DILocation(line: 308, column: 25, scope: !6319)
!6329 = !DILocation(line: 308, column: 34, scope: !6319)
!6330 = !DILocation(line: 308, column: 28, scope: !6319)
!6331 = !DILocation(line: 308, column: 39, scope: !6319)
!6332 = !DILocation(line: 307, column: 6, scope: !6279)
!6333 = !DILocation(line: 309, column: 3, scope: !6319)
!6334 = !DILocation(line: 311, column: 29, scope: !6335)
!6335 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 311, column: 6)
!6336 = !DILocation(line: 311, column: 7, scope: !6335)
!6337 = !DILocation(line: 311, column: 6, scope: !6279)
!6338 = !DILocation(line: 312, column: 11, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 312, column: 7)
!6340 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 311, column: 41)
!6341 = !DILocation(line: 312, column: 7, scope: !6339)
!6342 = !DILocation(line: 312, column: 7, scope: !6340)
!6343 = !DILocation(line: 313, column: 4, scope: !6339)
!6344 = !DILocation(line: 314, column: 16, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 314, column: 12)
!6346 = !DILocation(line: 314, column: 12, scope: !6345)
!6347 = !DILocation(line: 314, column: 12, scope: !6339)
!6348 = !DILocation(line: 315, column: 4, scope: !6345)
!6349 = !DILocation(line: 317, column: 4, scope: !6345)
!6350 = !DILocation(line: 325, column: 6, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 325, column: 6)
!6352 = !DILocation(line: 325, column: 31, scope: !6351)
!6353 = !DILocation(line: 325, column: 40, scope: !6351)
!6354 = !DILocation(line: 325, column: 34, scope: !6351)
!6355 = !DILocation(line: 325, column: 50, scope: !6351)
!6356 = !DILocation(line: 326, column: 4, scope: !6351)
!6357 = !DILocation(line: 326, column: 13, scope: !6351)
!6358 = !DILocation(line: 326, column: 7, scope: !6351)
!6359 = !DILocation(line: 326, column: 17, scope: !6351)
!6360 = !DILocation(line: 326, column: 25, scope: !6351)
!6361 = !DILocation(line: 326, column: 34, scope: !6351)
!6362 = !DILocation(line: 326, column: 28, scope: !6351)
!6363 = !DILocation(line: 326, column: 39, scope: !6351)
!6364 = !DILocation(line: 325, column: 6, scope: !6279)
!6365 = !DILocation(line: 327, column: 3, scope: !6351)
!6366 = !DILocation(line: 332, column: 12, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 332, column: 6)
!6368 = !DILocation(line: 332, column: 6, scope: !6367)
!6369 = !DILocation(line: 332, column: 22, scope: !6367)
!6370 = !DILocation(line: 332, column: 35, scope: !6367)
!6371 = !DILocation(line: 332, column: 44, scope: !6367)
!6372 = !DILocation(line: 332, column: 38, scope: !6367)
!6373 = !DILocation(line: 332, column: 48, scope: !6367)
!6374 = !DILocation(line: 332, column: 6, scope: !6279)
!6375 = !DILocation(line: 333, column: 3, scope: !6367)
!6376 = !DILocation(line: 340, column: 6, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 340, column: 6)
!6378 = !DILocation(line: 340, column: 31, scope: !6377)
!6379 = !DILocation(line: 342, column: 12, scope: !6377)
!6380 = !DILocation(line: 342, column: 6, scope: !6377)
!6381 = !DILocation(line: 342, column: 16, scope: !6377)
!6382 = !DILocation(line: 340, column: 6, scope: !6279)
!6383 = !DILocation(line: 343, column: 3, scope: !6377)
!6384 = !DILocation(line: 345, column: 3, scope: !6377)
!6385 = !DILocation(line: 348, column: 1, scope: !6279)
!6386 = !DISubprogram(name: "scsi_test_unit_ready", scope: !185, file: !185, line: 459, type: !6387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!82, !5613, !82, !82, !2926}
!6389 = distinct !DISubprogram(name: "scsi_sense_valid", scope: !2928, file: !2928, line: 74, type: !6390, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6394)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!982, !6392}
!6392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6393, size: 64)
!6393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!6394 = !{!6395}
!6395 = !DILocalVariable(name: "sshdr", arg: 1, scope: !6389, file: !2928, line: 74, type: !6392)
!6396 = !DILocation(line: 74, column: 66, scope: !6389)
!6397 = !DILocation(line: 76, column: 7, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6389, file: !2928, line: 76, column: 6)
!6399 = !DILocation(line: 76, column: 6, scope: !6389)
!6400 = !DILocation(line: 77, column: 3, scope: !6398)
!6401 = !DILocation(line: 79, column: 10, scope: !6389)
!6402 = !DILocation(line: 79, column: 17, scope: !6389)
!6403 = !DILocation(line: 79, column: 31, scope: !6389)
!6404 = !DILocation(line: 79, column: 39, scope: !6389)
!6405 = !DILocation(line: 79, column: 2, scope: !6389)
!6406 = !DILocation(line: 80, column: 1, scope: !6389)
!6407 = !DISubprogram(name: "cdrom_get_media_event", scope: !2845, file: !2845, line: 306, type: !6408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!82, !2843, !6410}
!6410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6287, size: 64)
!6411 = distinct !DISubprogram(name: "sr_disk_status", scope: !3, file: !3, line: 350, type: !2904, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6412)
!6412 = !{!6413, !6414, !6415, !6420, !6429, !6430, !6431}
!6413 = !DILocalVariable(name: "cdi", arg: 1, scope: !6411, file: !3, line: 350, type: !2843)
!6414 = !DILocalVariable(name: "cd", scope: !6411, file: !3, line: 352, type: !5606)
!6415 = !DILocalVariable(name: "toc_h", scope: !6411, file: !3, line: 353, type: !6416)
!6416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_tochdr", file: !2877, line: 192, size: 16, elements: !6417)
!6417 = !{!6418, !6419}
!6418 = !DIDerivedType(tag: DW_TAG_member, name: "cdth_trk0", scope: !6416, file: !2877, line: 194, baseType: !331, size: 8)
!6419 = !DIDerivedType(tag: DW_TAG_member, name: "cdth_trk1", scope: !6416, file: !2877, line: 195, baseType: !331, size: 8, offset: 8)
!6420 = !DILocalVariable(name: "toc_e", scope: !6411, file: !3, line: 354, type: !6421)
!6421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_tocentry", file: !2877, line: 222, size: 96, elements: !6422)
!6422 = !{!6423, !6424, !6425, !6426, !6427, !6428}
!6423 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_track", scope: !6421, file: !2877, line: 224, baseType: !331, size: 8)
!6424 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_adr", scope: !6421, file: !2877, line: 225, baseType: !331, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!6425 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_ctrl", scope: !6421, file: !2877, line: 226, baseType: !331, size: 4, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!6426 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_format", scope: !6421, file: !2877, line: 227, baseType: !331, size: 8, offset: 16)
!6427 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_addr", scope: !6421, file: !2877, line: 228, baseType: !2880, size: 32, offset: 32)
!6428 = !DIDerivedType(tag: DW_TAG_member, name: "cdte_datamode", scope: !6421, file: !2877, line: 229, baseType: !331, size: 8, offset: 64)
!6429 = !DILocalVariable(name: "i", scope: !6411, file: !3, line: 355, type: !82)
!6430 = !DILocalVariable(name: "rc", scope: !6411, file: !3, line: 355, type: !82)
!6431 = !DILocalVariable(name: "have_datatracks", scope: !6411, file: !3, line: 355, type: !82)
!6432 = !DILocation(line: 350, column: 46, scope: !6411)
!6433 = !DILocation(line: 352, column: 2, scope: !6411)
!6434 = !DILocation(line: 352, column: 11, scope: !6411)
!6435 = !DILocation(line: 352, column: 16, scope: !6411)
!6436 = !DILocation(line: 352, column: 21, scope: !6411)
!6437 = !DILocation(line: 353, column: 2, scope: !6411)
!6438 = !DILocation(line: 353, column: 22, scope: !6411)
!6439 = !DILocation(line: 354, column: 2, scope: !6411)
!6440 = !DILocation(line: 354, column: 24, scope: !6411)
!6441 = !DILocation(line: 355, column: 2, scope: !6411)
!6442 = !DILocation(line: 355, column: 6, scope: !6411)
!6443 = !DILocation(line: 355, column: 9, scope: !6411)
!6444 = !DILocation(line: 355, column: 13, scope: !6411)
!6445 = !DILocation(line: 358, column: 22, scope: !6411)
!6446 = !DILocation(line: 358, column: 7, scope: !6411)
!6447 = !DILocation(line: 358, column: 5, scope: !6411)
!6448 = !DILocation(line: 359, column: 6, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 359, column: 6)
!6450 = !DILocation(line: 359, column: 6, scope: !6411)
!6451 = !DILocation(line: 360, column: 11, scope: !6449)
!6452 = !DILocation(line: 360, column: 14, scope: !6449)
!6453 = !DILocation(line: 360, column: 10, scope: !6449)
!6454 = !DILocation(line: 360, column: 3, scope: !6449)
!6455 = !DILocation(line: 362, column: 17, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 362, column: 2)
!6457 = !DILocation(line: 362, column: 11, scope: !6456)
!6458 = !DILocation(line: 362, column: 9, scope: !6456)
!6459 = !DILocation(line: 362, column: 7, scope: !6456)
!6460 = !DILocation(line: 362, column: 28, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6456, file: !3, line: 362, column: 2)
!6462 = !DILocation(line: 362, column: 39, scope: !6461)
!6463 = !DILocation(line: 362, column: 33, scope: !6461)
!6464 = !DILocation(line: 362, column: 30, scope: !6461)
!6465 = !DILocation(line: 362, column: 2, scope: !6456)
!6466 = !DILocation(line: 363, column: 22, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6461, file: !3, line: 362, column: 55)
!6468 = !DILocation(line: 363, column: 9, scope: !6467)
!6469 = !DILocation(line: 363, column: 20, scope: !6467)
!6470 = !DILocation(line: 364, column: 9, scope: !6467)
!6471 = !DILocation(line: 364, column: 21, scope: !6467)
!6472 = !DILocation(line: 365, column: 24, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 365, column: 7)
!6474 = !DILocation(line: 365, column: 7, scope: !6473)
!6475 = !DILocation(line: 365, column: 7, scope: !6467)
!6476 = !DILocation(line: 366, column: 4, scope: !6473)
!6477 = !DILocation(line: 367, column: 13, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6467, file: !3, line: 367, column: 7)
!6479 = !DILocation(line: 367, column: 7, scope: !6478)
!6480 = !DILocation(line: 367, column: 23, scope: !6478)
!6481 = !DILocation(line: 367, column: 7, scope: !6467)
!6482 = !DILocation(line: 368, column: 20, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6478, file: !3, line: 367, column: 43)
!6484 = !DILocation(line: 369, column: 4, scope: !6483)
!6485 = !DILocation(line: 371, column: 2, scope: !6467)
!6486 = !DILocation(line: 362, column: 51, scope: !6461)
!6487 = !DILocation(line: 362, column: 2, scope: !6461)
!6488 = distinct !{!6488, !6465, !6489, !6490, !6491}
!6489 = !DILocation(line: 371, column: 2, scope: !6456)
!6490 = !{!"llvm.loop.mustprogress"}
!6491 = !{!"llvm.loop.unroll.disable"}
!6492 = !DILocation(line: 372, column: 7, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 372, column: 6)
!6494 = !DILocation(line: 372, column: 6, scope: !6411)
!6495 = !DILocation(line: 373, column: 3, scope: !6493)
!6496 = !DILocation(line: 375, column: 6, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 375, column: 6)
!6498 = !DILocation(line: 375, column: 10, scope: !6497)
!6499 = !DILocation(line: 375, column: 6, scope: !6411)
!6500 = !DILocation(line: 376, column: 3, scope: !6497)
!6501 = !DILocation(line: 378, column: 3, scope: !6497)
!6502 = !DILocation(line: 379, column: 1, scope: !6411)
!6503 = distinct !DISubprogram(name: "sr_read_tochdr", scope: !3, file: !3, line: 36, type: !6504, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6507)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!82, !2843, !6506}
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6416, size: 64)
!6507 = !{!6508, !6509, !6510, !6511, !6512, !6513, !6514}
!6508 = !DILocalVariable(name: "cdi", arg: 1, scope: !6503, file: !3, line: 36, type: !2843)
!6509 = !DILocalVariable(name: "tochdr", arg: 2, scope: !6503, file: !3, line: 37, type: !6506)
!6510 = !DILocalVariable(name: "cd", scope: !6503, file: !3, line: 39, type: !6284)
!6511 = !DILocalVariable(name: "cgc", scope: !6503, file: !3, line: 40, type: !2915)
!6512 = !DILocalVariable(name: "result", scope: !6503, file: !3, line: 41, type: !82)
!6513 = !DILocalVariable(name: "buffer", scope: !6503, file: !3, line: 42, type: !2922)
!6514 = !DILabel(scope: !6503, name: "err", file: !3, line: 64)
!6515 = !DILocation(line: 36, column: 53, scope: !6503)
!6516 = !DILocation(line: 37, column: 24, scope: !6503)
!6517 = !DILocation(line: 39, column: 2, scope: !6503)
!6518 = !DILocation(line: 39, column: 18, scope: !6503)
!6519 = !DILocation(line: 39, column: 23, scope: !6503)
!6520 = !DILocation(line: 39, column: 28, scope: !6503)
!6521 = !DILocation(line: 40, column: 2, scope: !6503)
!6522 = !DILocation(line: 40, column: 24, scope: !6503)
!6523 = !DILocation(line: 41, column: 2, scope: !6503)
!6524 = !DILocation(line: 41, column: 6, scope: !6503)
!6525 = !DILocation(line: 42, column: 2, scope: !6503)
!6526 = !DILocation(line: 42, column: 17, scope: !6503)
!6527 = !DILocation(line: 44, column: 11, scope: !6503)
!6528 = !DILocation(line: 44, column: 9, scope: !6503)
!6529 = !DILocation(line: 45, column: 7, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 45, column: 6)
!6531 = !DILocation(line: 45, column: 6, scope: !6503)
!6532 = !DILocation(line: 46, column: 3, scope: !6530)
!6533 = !DILocation(line: 48, column: 2, scope: !6503)
!6534 = !DILocation(line: 49, column: 6, scope: !6503)
!6535 = !DILocation(line: 49, column: 14, scope: !6503)
!6536 = !DILocation(line: 50, column: 6, scope: !6503)
!6537 = !DILocation(line: 50, column: 2, scope: !6503)
!6538 = !DILocation(line: 50, column: 13, scope: !6503)
!6539 = !DILocation(line: 51, column: 6, scope: !6503)
!6540 = !DILocation(line: 51, column: 2, scope: !6503)
!6541 = !DILocation(line: 51, column: 13, scope: !6503)
!6542 = !DILocation(line: 52, column: 15, scope: !6503)
!6543 = !DILocation(line: 52, column: 6, scope: !6503)
!6544 = !DILocation(line: 52, column: 13, scope: !6503)
!6545 = !DILocation(line: 53, column: 6, scope: !6503)
!6546 = !DILocation(line: 53, column: 13, scope: !6503)
!6547 = !DILocation(line: 54, column: 6, scope: !6503)
!6548 = !DILocation(line: 54, column: 12, scope: !6503)
!6549 = !DILocation(line: 55, column: 6, scope: !6503)
!6550 = !DILocation(line: 55, column: 21, scope: !6503)
!6551 = !DILocation(line: 57, column: 23, scope: !6503)
!6552 = !DILocation(line: 57, column: 11, scope: !6503)
!6553 = !DILocation(line: 57, column: 9, scope: !6503)
!6554 = !DILocation(line: 58, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 58, column: 6)
!6556 = !DILocation(line: 58, column: 6, scope: !6503)
!6557 = !DILocation(line: 59, column: 3, scope: !6555)
!6558 = !DILocation(line: 61, column: 22, scope: !6503)
!6559 = !DILocation(line: 61, column: 2, scope: !6503)
!6560 = !DILocation(line: 61, column: 10, scope: !6503)
!6561 = !DILocation(line: 61, column: 20, scope: !6503)
!6562 = !DILocation(line: 62, column: 22, scope: !6503)
!6563 = !DILocation(line: 62, column: 2, scope: !6503)
!6564 = !DILocation(line: 62, column: 10, scope: !6503)
!6565 = !DILocation(line: 62, column: 20, scope: !6503)
!6566 = !DILocation(line: 64, column: 1, scope: !6503)
!6567 = !DILocation(line: 65, column: 8, scope: !6503)
!6568 = !DILocation(line: 65, column: 2, scope: !6503)
!6569 = !DILocation(line: 66, column: 9, scope: !6503)
!6570 = !DILocation(line: 66, column: 2, scope: !6503)
!6571 = !DILocation(line: 67, column: 1, scope: !6503)
!6572 = distinct !DISubprogram(name: "sr_read_tocentry", scope: !3, file: !3, line: 69, type: !6573, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6576)
!6573 = !DISubroutineType(types: !6574)
!6574 = !{!82, !2843, !6575}
!6575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6421, size: 64)
!6576 = !{!6577, !6578, !6579, !6580, !6581, !6582, !6583}
!6577 = !DILocalVariable(name: "cdi", arg: 1, scope: !6572, file: !3, line: 69, type: !2843)
!6578 = !DILocalVariable(name: "tocentry", arg: 2, scope: !6572, file: !3, line: 70, type: !6575)
!6579 = !DILocalVariable(name: "cd", scope: !6572, file: !3, line: 72, type: !6284)
!6580 = !DILocalVariable(name: "cgc", scope: !6572, file: !3, line: 73, type: !2915)
!6581 = !DILocalVariable(name: "result", scope: !6572, file: !3, line: 74, type: !82)
!6582 = !DILocalVariable(name: "buffer", scope: !6572, file: !3, line: 75, type: !2922)
!6583 = !DILabel(scope: !6572, name: "err", file: !3, line: 106)
!6584 = !DILocation(line: 69, column: 55, scope: !6572)
!6585 = !DILocation(line: 70, column: 26, scope: !6572)
!6586 = !DILocation(line: 72, column: 2, scope: !6572)
!6587 = !DILocation(line: 72, column: 18, scope: !6572)
!6588 = !DILocation(line: 72, column: 23, scope: !6572)
!6589 = !DILocation(line: 72, column: 28, scope: !6572)
!6590 = !DILocation(line: 73, column: 2, scope: !6572)
!6591 = !DILocation(line: 73, column: 24, scope: !6572)
!6592 = !DILocation(line: 74, column: 2, scope: !6572)
!6593 = !DILocation(line: 74, column: 6, scope: !6572)
!6594 = !DILocation(line: 75, column: 2, scope: !6572)
!6595 = !DILocation(line: 75, column: 17, scope: !6572)
!6596 = !DILocation(line: 77, column: 11, scope: !6572)
!6597 = !DILocation(line: 77, column: 9, scope: !6572)
!6598 = !DILocation(line: 78, column: 7, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 78, column: 6)
!6600 = !DILocation(line: 78, column: 6, scope: !6572)
!6601 = !DILocation(line: 79, column: 3, scope: !6599)
!6602 = !DILocation(line: 81, column: 2, scope: !6572)
!6603 = !DILocation(line: 82, column: 6, scope: !6572)
!6604 = !DILocation(line: 82, column: 14, scope: !6572)
!6605 = !DILocation(line: 83, column: 6, scope: !6572)
!6606 = !DILocation(line: 83, column: 2, scope: !6572)
!6607 = !DILocation(line: 83, column: 13, scope: !6572)
!6608 = !DILocation(line: 84, column: 17, scope: !6572)
!6609 = !DILocation(line: 84, column: 27, scope: !6572)
!6610 = !DILocation(line: 84, column: 39, scope: !6572)
!6611 = !DILocation(line: 84, column: 16, scope: !6572)
!6612 = !DILocation(line: 84, column: 6, scope: !6572)
!6613 = !DILocation(line: 84, column: 2, scope: !6572)
!6614 = !DILocation(line: 84, column: 13, scope: !6572)
!6615 = !DILocation(line: 85, column: 15, scope: !6572)
!6616 = !DILocation(line: 85, column: 25, scope: !6572)
!6617 = !DILocation(line: 85, column: 6, scope: !6572)
!6618 = !DILocation(line: 85, column: 2, scope: !6572)
!6619 = !DILocation(line: 85, column: 13, scope: !6572)
!6620 = !DILocation(line: 86, column: 6, scope: !6572)
!6621 = !DILocation(line: 86, column: 2, scope: !6572)
!6622 = !DILocation(line: 86, column: 13, scope: !6572)
!6623 = !DILocation(line: 87, column: 15, scope: !6572)
!6624 = !DILocation(line: 87, column: 6, scope: !6572)
!6625 = !DILocation(line: 87, column: 13, scope: !6572)
!6626 = !DILocation(line: 88, column: 6, scope: !6572)
!6627 = !DILocation(line: 88, column: 13, scope: !6572)
!6628 = !DILocation(line: 89, column: 6, scope: !6572)
!6629 = !DILocation(line: 89, column: 21, scope: !6572)
!6630 = !DILocation(line: 91, column: 23, scope: !6572)
!6631 = !DILocation(line: 91, column: 11, scope: !6572)
!6632 = !DILocation(line: 91, column: 9, scope: !6572)
!6633 = !DILocation(line: 92, column: 6, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 92, column: 6)
!6635 = !DILocation(line: 92, column: 6, scope: !6572)
!6636 = !DILocation(line: 93, column: 3, scope: !6634)
!6637 = !DILocation(line: 95, column: 24, scope: !6572)
!6638 = !DILocation(line: 95, column: 34, scope: !6572)
!6639 = !DILocation(line: 95, column: 2, scope: !6572)
!6640 = !DILocation(line: 95, column: 12, scope: !6572)
!6641 = !DILocation(line: 95, column: 22, scope: !6572)
!6642 = !DILocation(line: 96, column: 23, scope: !6572)
!6643 = !DILocation(line: 96, column: 33, scope: !6572)
!6644 = !DILocation(line: 96, column: 2, scope: !6572)
!6645 = !DILocation(line: 96, column: 12, scope: !6572)
!6646 = !DILocation(line: 96, column: 21, scope: !6572)
!6647 = !DILocation(line: 97, column: 29, scope: !6572)
!6648 = !DILocation(line: 97, column: 39, scope: !6572)
!6649 = !DILocation(line: 97, column: 49, scope: !6572)
!6650 = !DILocation(line: 97, column: 28, scope: !6572)
!6651 = !DILocation(line: 97, column: 2, scope: !6572)
!6652 = !DILocation(line: 97, column: 12, scope: !6572)
!6653 = !DILocation(line: 97, column: 26, scope: !6572)
!6654 = !DILocation(line: 98, column: 6, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 98, column: 6)
!6656 = !DILocation(line: 98, column: 16, scope: !6655)
!6657 = !DILocation(line: 98, column: 28, scope: !6655)
!6658 = !DILocation(line: 98, column: 6, scope: !6572)
!6659 = !DILocation(line: 99, column: 36, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 98, column: 42)
!6661 = !DILocation(line: 99, column: 3, scope: !6660)
!6662 = !DILocation(line: 99, column: 13, scope: !6660)
!6663 = !DILocation(line: 99, column: 27, scope: !6660)
!6664 = !DILocation(line: 99, column: 34, scope: !6660)
!6665 = !DILocation(line: 100, column: 36, scope: !6660)
!6666 = !DILocation(line: 100, column: 3, scope: !6660)
!6667 = !DILocation(line: 100, column: 13, scope: !6660)
!6668 = !DILocation(line: 100, column: 27, scope: !6660)
!6669 = !DILocation(line: 100, column: 34, scope: !6660)
!6670 = !DILocation(line: 101, column: 35, scope: !6660)
!6671 = !DILocation(line: 101, column: 3, scope: !6660)
!6672 = !DILocation(line: 101, column: 13, scope: !6660)
!6673 = !DILocation(line: 101, column: 27, scope: !6660)
!6674 = !DILocation(line: 101, column: 33, scope: !6660)
!6675 = !DILocation(line: 102, column: 2, scope: !6660)
!6676 = !DILocation(line: 103, column: 34, scope: !6655)
!6677 = !DILocation(line: 103, column: 44, scope: !6655)
!6678 = !DILocation(line: 103, column: 52, scope: !6655)
!6679 = !DILocation(line: 103, column: 50, scope: !6655)
!6680 = !DILocation(line: 103, column: 63, scope: !6655)
!6681 = !DILocation(line: 104, column: 6, scope: !6655)
!6682 = !DILocation(line: 104, column: 4, scope: !6655)
!6683 = !DILocation(line: 104, column: 18, scope: !6655)
!6684 = !DILocation(line: 104, column: 26, scope: !6655)
!6685 = !DILocation(line: 104, column: 24, scope: !6655)
!6686 = !DILocation(line: 103, column: 3, scope: !6655)
!6687 = !DILocation(line: 103, column: 13, scope: !6655)
!6688 = !DILocation(line: 103, column: 27, scope: !6655)
!6689 = !DILocation(line: 98, column: 31, scope: !6655)
!6690 = !DILocation(line: 106, column: 1, scope: !6572)
!6691 = !DILocation(line: 107, column: 8, scope: !6572)
!6692 = !DILocation(line: 107, column: 2, scope: !6572)
!6693 = !DILocation(line: 108, column: 9, scope: !6572)
!6694 = !DILocation(line: 108, column: 2, scope: !6572)
!6695 = !DILocation(line: 109, column: 1, scope: !6572)
!6696 = distinct !DISubprogram(name: "sr_get_last_session", scope: !3, file: !3, line: 381, type: !2873, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6697)
!6697 = !{!6698, !6699, !6700}
!6698 = !DILocalVariable(name: "cdi", arg: 1, scope: !6696, file: !3, line: 381, type: !2843)
!6699 = !DILocalVariable(name: "ms_info", arg: 2, scope: !6696, file: !3, line: 382, type: !2875)
!6700 = !DILocalVariable(name: "cd", scope: !6696, file: !3, line: 384, type: !5606)
!6701 = !DILocation(line: 381, column: 51, scope: !6696)
!6702 = !DILocation(line: 382, column: 31, scope: !6696)
!6703 = !DILocation(line: 384, column: 2, scope: !6696)
!6704 = !DILocation(line: 384, column: 11, scope: !6696)
!6705 = !DILocation(line: 384, column: 16, scope: !6696)
!6706 = !DILocation(line: 384, column: 21, scope: !6696)
!6707 = !DILocation(line: 386, column: 22, scope: !6696)
!6708 = !DILocation(line: 386, column: 26, scope: !6696)
!6709 = !DILocation(line: 386, column: 2, scope: !6696)
!6710 = !DILocation(line: 386, column: 11, scope: !6696)
!6711 = !DILocation(line: 386, column: 20, scope: !6696)
!6712 = !DILocation(line: 387, column: 21, scope: !6696)
!6713 = !DILocation(line: 387, column: 25, scope: !6696)
!6714 = !DILocation(line: 387, column: 33, scope: !6696)
!6715 = !DILocation(line: 387, column: 36, scope: !6696)
!6716 = !DILocation(line: 387, column: 40, scope: !6696)
!6717 = !DILocation(line: 387, column: 50, scope: !6696)
!6718 = !DILocation(line: 387, column: 2, scope: !6696)
!6719 = !DILocation(line: 387, column: 11, scope: !6696)
!6720 = !DILocation(line: 387, column: 19, scope: !6696)
!6721 = !DILocation(line: 390, column: 1, scope: !6696)
!6722 = !DILocation(line: 389, column: 2, scope: !6696)
!6723 = distinct !DISubprogram(name: "sr_get_mcn", scope: !3, file: !3, line: 392, type: !2893, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6724)
!6724 = !{!6725, !6726, !6727, !6728, !6729, !6730, !6731}
!6725 = !DILocalVariable(name: "cdi", arg: 1, scope: !6723, file: !3, line: 392, type: !2843)
!6726 = !DILocalVariable(name: "mcn", arg: 2, scope: !6723, file: !3, line: 392, type: !2895)
!6727 = !DILocalVariable(name: "cd", scope: !6723, file: !3, line: 394, type: !5606)
!6728 = !DILocalVariable(name: "cgc", scope: !6723, file: !3, line: 395, type: !2915)
!6729 = !DILocalVariable(name: "buffer", scope: !6723, file: !3, line: 396, type: !370)
!6730 = !DILocalVariable(name: "result", scope: !6723, file: !3, line: 397, type: !82)
!6731 = !DILabel(scope: !6723, name: "err", file: !3, line: 418)
!6732 = !DILocation(line: 392, column: 42, scope: !6723)
!6733 = !DILocation(line: 392, column: 65, scope: !6723)
!6734 = !DILocation(line: 394, column: 2, scope: !6723)
!6735 = !DILocation(line: 394, column: 11, scope: !6723)
!6736 = !DILocation(line: 394, column: 16, scope: !6723)
!6737 = !DILocation(line: 394, column: 21, scope: !6723)
!6738 = !DILocation(line: 395, column: 2, scope: !6723)
!6739 = !DILocation(line: 395, column: 24, scope: !6723)
!6740 = !DILocation(line: 396, column: 2, scope: !6723)
!6741 = !DILocation(line: 396, column: 8, scope: !6723)
!6742 = !DILocation(line: 396, column: 17, scope: !6723)
!6743 = !DILocation(line: 397, column: 2, scope: !6723)
!6744 = !DILocation(line: 397, column: 6, scope: !6723)
!6745 = !DILocation(line: 399, column: 7, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 399, column: 6)
!6747 = !DILocation(line: 399, column: 6, scope: !6723)
!6748 = !DILocation(line: 400, column: 3, scope: !6746)
!6749 = !DILocation(line: 402, column: 2, scope: !6723)
!6750 = !DILocation(line: 403, column: 6, scope: !6723)
!6751 = !DILocation(line: 403, column: 2, scope: !6723)
!6752 = !DILocation(line: 403, column: 13, scope: !6723)
!6753 = !DILocation(line: 404, column: 6, scope: !6723)
!6754 = !DILocation(line: 404, column: 2, scope: !6723)
!6755 = !DILocation(line: 404, column: 13, scope: !6723)
!6756 = !DILocation(line: 405, column: 6, scope: !6723)
!6757 = !DILocation(line: 405, column: 2, scope: !6723)
!6758 = !DILocation(line: 405, column: 13, scope: !6723)
!6759 = !DILocation(line: 406, column: 6, scope: !6723)
!6760 = !DILocation(line: 406, column: 2, scope: !6723)
!6761 = !DILocation(line: 406, column: 13, scope: !6723)
!6762 = !DILocation(line: 407, column: 15, scope: !6723)
!6763 = !DILocation(line: 407, column: 6, scope: !6723)
!6764 = !DILocation(line: 407, column: 13, scope: !6723)
!6765 = !DILocation(line: 408, column: 6, scope: !6723)
!6766 = !DILocation(line: 408, column: 13, scope: !6723)
!6767 = !DILocation(line: 409, column: 6, scope: !6723)
!6768 = !DILocation(line: 409, column: 21, scope: !6723)
!6769 = !DILocation(line: 410, column: 6, scope: !6723)
!6770 = !DILocation(line: 410, column: 14, scope: !6723)
!6771 = !DILocation(line: 411, column: 23, scope: !6723)
!6772 = !DILocation(line: 411, column: 11, scope: !6723)
!6773 = !DILocation(line: 411, column: 9, scope: !6723)
!6774 = !DILocation(line: 412, column: 6, scope: !6775)
!6775 = distinct !DILexicalBlock(scope: !6723, file: !3, line: 412, column: 6)
!6776 = !DILocation(line: 412, column: 6, scope: !6723)
!6777 = !DILocation(line: 413, column: 3, scope: !6775)
!6778 = !DILocation(line: 415, column: 9, scope: !6723)
!6779 = !DILocation(line: 415, column: 14, scope: !6723)
!6780 = !DILocation(line: 415, column: 2, scope: !6723)
!6781 = !DILocation(line: 415, column: 37, scope: !6723)
!6782 = !DILocation(line: 415, column: 44, scope: !6723)
!6783 = !DILocation(line: 416, column: 2, scope: !6723)
!6784 = !DILocation(line: 416, column: 7, scope: !6723)
!6785 = !DILocation(line: 416, column: 33, scope: !6723)
!6786 = !DILocation(line: 418, column: 1, scope: !6723)
!6787 = !DILocation(line: 419, column: 8, scope: !6723)
!6788 = !DILocation(line: 419, column: 2, scope: !6723)
!6789 = !DILocation(line: 420, column: 9, scope: !6723)
!6790 = !DILocation(line: 420, column: 2, scope: !6723)
!6791 = !DILocation(line: 421, column: 1, scope: !6723)
!6792 = distinct !DISubprogram(name: "kzalloc", scope: !256, file: !256, line: 719, type: !6793, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6795)
!6793 = !DISubroutineType(types: !6794)
!6794 = !{!442, !417, !1587}
!6795 = !{!6796, !6797}
!6796 = !DILocalVariable(name: "size", arg: 1, scope: !6792, file: !256, line: 719, type: !417)
!6797 = !DILocalVariable(name: "flags", arg: 2, scope: !6792, file: !256, line: 719, type: !1587)
!6798 = !DILocation(line: 719, column: 52, scope: !6792)
!6799 = !DILocation(line: 719, column: 64, scope: !6792)
!6800 = !DILocation(line: 721, column: 17, scope: !6792)
!6801 = !DILocation(line: 721, column: 23, scope: !6792)
!6802 = !DILocation(line: 721, column: 29, scope: !6792)
!6803 = !DILocation(line: 721, column: 9, scope: !6792)
!6804 = !DILocation(line: 721, column: 2, scope: !6792)
!6805 = !DISubprogram(name: "kfree", scope: !256, file: !256, line: 227, type: !6806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6806 = !DISubroutineType(types: !6807)
!6807 = !{null, !1439}
!6808 = distinct !DISubprogram(name: "sr_reset", scope: !3, file: !3, line: 423, type: !2904, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6809)
!6809 = !{!6810}
!6810 = !DILocalVariable(name: "cdi", arg: 1, scope: !6808, file: !3, line: 423, type: !2843)
!6811 = !DILocation(line: 423, column: 40, scope: !6808)
!6812 = !DILocation(line: 425, column: 2, scope: !6808)
!6813 = distinct !DISubprogram(name: "sr_select_speed", scope: !3, file: !3, line: 428, type: !2869, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6814)
!6814 = !{!6815, !6816, !6817, !6818, !6819, !6822, !6823}
!6815 = !DILocalVariable(name: "cdi", arg: 1, scope: !6813, file: !3, line: 428, type: !2843)
!6816 = !DILocalVariable(name: "speed", arg: 2, scope: !6813, file: !3, line: 428, type: !420)
!6817 = !DILocalVariable(name: "cd", scope: !6813, file: !3, line: 430, type: !5606)
!6818 = !DILocalVariable(name: "cgc", scope: !6813, file: !3, line: 431, type: !2915)
!6819 = !DILocalVariable(name: "__UNIQUE_ID___val349", scope: !6820, file: !3, line: 434, type: !420)
!6820 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 434, column: 10)
!6821 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 434, column: 10)
!6822 = !DILocalVariable(name: "__UNIQUE_ID___lo350", scope: !6820, file: !3, line: 434, type: !82)
!6823 = !DILocalVariable(name: "__UNIQUE_ID___hi351", scope: !6820, file: !3, line: 434, type: !82)
!6824 = !DILocation(line: 428, column: 47, scope: !6813)
!6825 = !DILocation(line: 428, column: 66, scope: !6813)
!6826 = !DILocation(line: 430, column: 2, scope: !6813)
!6827 = !DILocation(line: 430, column: 11, scope: !6813)
!6828 = !DILocation(line: 430, column: 16, scope: !6813)
!6829 = !DILocation(line: 430, column: 21, scope: !6813)
!6830 = !DILocation(line: 431, column: 2, scope: !6813)
!6831 = !DILocation(line: 431, column: 24, scope: !6813)
!6832 = !DILocation(line: 434, column: 10, scope: !6820)
!6833 = !DILocation(line: 434, column: 10, scope: !6821)
!6834 = !DILocation(line: 434, column: 10, scope: !6813)
!6835 = !DILocation(line: 434, column: 8, scope: !6813)
!6836 = !DILocation(line: 436, column: 6, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 436, column: 6)
!6838 = !DILocation(line: 436, column: 12, scope: !6837)
!6839 = !DILocation(line: 436, column: 6, scope: !6813)
!6840 = !DILocation(line: 437, column: 9, scope: !6837)
!6841 = !DILocation(line: 437, column: 3, scope: !6837)
!6842 = !DILocation(line: 439, column: 9, scope: !6837)
!6843 = !DILocation(line: 441, column: 2, scope: !6813)
!6844 = !DILocation(line: 442, column: 6, scope: !6813)
!6845 = !DILocation(line: 442, column: 2, scope: !6813)
!6846 = !DILocation(line: 442, column: 13, scope: !6813)
!6847 = !DILocation(line: 443, column: 16, scope: !6813)
!6848 = !DILocation(line: 443, column: 22, scope: !6813)
!6849 = !DILocation(line: 443, column: 28, scope: !6813)
!6850 = !DILocation(line: 443, column: 15, scope: !6813)
!6851 = !DILocation(line: 443, column: 6, scope: !6813)
!6852 = !DILocation(line: 443, column: 2, scope: !6813)
!6853 = !DILocation(line: 443, column: 13, scope: !6813)
!6854 = !DILocation(line: 444, column: 15, scope: !6813)
!6855 = !DILocation(line: 444, column: 21, scope: !6813)
!6856 = !DILocation(line: 444, column: 6, scope: !6813)
!6857 = !DILocation(line: 444, column: 2, scope: !6813)
!6858 = !DILocation(line: 444, column: 13, scope: !6813)
!6859 = !DILocation(line: 445, column: 6, scope: !6813)
!6860 = !DILocation(line: 445, column: 21, scope: !6813)
!6861 = !DILocation(line: 446, column: 6, scope: !6813)
!6862 = !DILocation(line: 446, column: 14, scope: !6813)
!6863 = !DILocation(line: 448, column: 18, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6813, file: !3, line: 448, column: 6)
!6865 = !DILocation(line: 448, column: 6, scope: !6864)
!6866 = !DILocation(line: 448, column: 6, scope: !6813)
!6867 = !DILocation(line: 449, column: 3, scope: !6864)
!6868 = !DILocation(line: 450, column: 2, scope: !6813)
!6869 = !DILocation(line: 451, column: 1, scope: !6813)
!6870 = distinct !DISubprogram(name: "sr_audio_ioctl", scope: !3, file: !3, line: 459, type: !2908, scopeLine: 460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6871)
!6871 = !{!6872, !6873, !6874}
!6872 = !DILocalVariable(name: "cdi", arg: 1, scope: !6870, file: !3, line: 459, type: !2843)
!6873 = !DILocalVariable(name: "cmd", arg: 2, scope: !6870, file: !3, line: 459, type: !7)
!6874 = !DILocalVariable(name: "arg", arg: 3, scope: !6870, file: !3, line: 459, type: !442)
!6875 = !DILocation(line: 459, column: 46, scope: !6870)
!6876 = !DILocation(line: 459, column: 64, scope: !6870)
!6877 = !DILocation(line: 459, column: 75, scope: !6870)
!6878 = !DILocation(line: 461, column: 10, scope: !6870)
!6879 = !DILocation(line: 461, column: 2, scope: !6870)
!6880 = !DILocation(line: 463, column: 25, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6870, file: !3, line: 461, column: 15)
!6882 = !DILocation(line: 463, column: 30, scope: !6881)
!6883 = !DILocation(line: 463, column: 10, scope: !6881)
!6884 = !DILocation(line: 463, column: 3, scope: !6881)
!6885 = !DILocation(line: 465, column: 27, scope: !6881)
!6886 = !DILocation(line: 465, column: 32, scope: !6881)
!6887 = !DILocation(line: 465, column: 10, scope: !6881)
!6888 = !DILocation(line: 465, column: 3, scope: !6881)
!6889 = !DILocation(line: 467, column: 25, scope: !6881)
!6890 = !DILocation(line: 467, column: 30, scope: !6881)
!6891 = !DILocation(line: 467, column: 10, scope: !6881)
!6892 = !DILocation(line: 467, column: 3, scope: !6881)
!6893 = !DILocation(line: 469, column: 3, scope: !6881)
!6894 = !DILocation(line: 471, column: 1, scope: !6870)
!6895 = distinct !DISubprogram(name: "sr_play_trkind", scope: !3, file: !3, line: 160, type: !6896, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6905)
!6896 = !DISubroutineType(types: !6897)
!6897 = !{!82, !2843, !6898}
!6898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6899, size: 64)
!6899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_ti", file: !2877, line: 183, size: 32, elements: !6900)
!6900 = !{!6901, !6902, !6903, !6904}
!6901 = !DIDerivedType(tag: DW_TAG_member, name: "cdti_trk0", scope: !6899, file: !2877, line: 185, baseType: !331, size: 8)
!6902 = !DIDerivedType(tag: DW_TAG_member, name: "cdti_ind0", scope: !6899, file: !2877, line: 186, baseType: !331, size: 8, offset: 8)
!6903 = !DIDerivedType(tag: DW_TAG_member, name: "cdti_trk1", scope: !6899, file: !2877, line: 187, baseType: !331, size: 8, offset: 16)
!6904 = !DIDerivedType(tag: DW_TAG_member, name: "cdti_ind1", scope: !6899, file: !2877, line: 188, baseType: !331, size: 8, offset: 24)
!6905 = !{!6906, !6907, !6908, !6909, !6910}
!6906 = !DILocalVariable(name: "cdi", arg: 1, scope: !6895, file: !3, line: 160, type: !2843)
!6907 = !DILocalVariable(name: "ti", arg: 2, scope: !6895, file: !3, line: 161, type: !6898)
!6908 = !DILocalVariable(name: "cd", scope: !6895, file: !3, line: 164, type: !6284)
!6909 = !DILocalVariable(name: "cgc", scope: !6895, file: !3, line: 165, type: !2915)
!6910 = !DILocalVariable(name: "result", scope: !6895, file: !3, line: 166, type: !82)
!6911 = !DILocation(line: 160, column: 53, scope: !6895)
!6912 = !DILocation(line: 161, column: 20, scope: !6895)
!6913 = !DILocation(line: 164, column: 2, scope: !6895)
!6914 = !DILocation(line: 164, column: 18, scope: !6895)
!6915 = !DILocation(line: 164, column: 23, scope: !6895)
!6916 = !DILocation(line: 164, column: 28, scope: !6895)
!6917 = !DILocation(line: 165, column: 2, scope: !6895)
!6918 = !DILocation(line: 165, column: 24, scope: !6895)
!6919 = !DILocation(line: 166, column: 2, scope: !6895)
!6920 = !DILocation(line: 166, column: 6, scope: !6895)
!6921 = !DILocation(line: 168, column: 2, scope: !6895)
!6922 = !DILocation(line: 169, column: 6, scope: !6895)
!6923 = !DILocation(line: 169, column: 14, scope: !6895)
!6924 = !DILocation(line: 170, column: 6, scope: !6895)
!6925 = !DILocation(line: 170, column: 2, scope: !6895)
!6926 = !DILocation(line: 170, column: 13, scope: !6895)
!6927 = !DILocation(line: 171, column: 15, scope: !6895)
!6928 = !DILocation(line: 171, column: 19, scope: !6895)
!6929 = !DILocation(line: 171, column: 6, scope: !6895)
!6930 = !DILocation(line: 171, column: 2, scope: !6895)
!6931 = !DILocation(line: 171, column: 13, scope: !6895)
!6932 = !DILocation(line: 172, column: 15, scope: !6895)
!6933 = !DILocation(line: 172, column: 19, scope: !6895)
!6934 = !DILocation(line: 172, column: 6, scope: !6895)
!6935 = !DILocation(line: 172, column: 2, scope: !6895)
!6936 = !DILocation(line: 172, column: 13, scope: !6895)
!6937 = !DILocation(line: 173, column: 15, scope: !6895)
!6938 = !DILocation(line: 173, column: 19, scope: !6895)
!6939 = !DILocation(line: 173, column: 6, scope: !6895)
!6940 = !DILocation(line: 173, column: 2, scope: !6895)
!6941 = !DILocation(line: 173, column: 13, scope: !6895)
!6942 = !DILocation(line: 174, column: 15, scope: !6895)
!6943 = !DILocation(line: 174, column: 19, scope: !6895)
!6944 = !DILocation(line: 174, column: 6, scope: !6895)
!6945 = !DILocation(line: 174, column: 2, scope: !6895)
!6946 = !DILocation(line: 174, column: 13, scope: !6895)
!6947 = !DILocation(line: 175, column: 6, scope: !6895)
!6948 = !DILocation(line: 175, column: 21, scope: !6895)
!6949 = !DILocation(line: 177, column: 23, scope: !6895)
!6950 = !DILocation(line: 177, column: 11, scope: !6895)
!6951 = !DILocation(line: 177, column: 9, scope: !6895)
!6952 = !DILocation(line: 178, column: 6, scope: !6953)
!6953 = distinct !DILexicalBlock(scope: !6895, file: !3, line: 178, column: 6)
!6954 = !DILocation(line: 178, column: 13, scope: !6953)
!6955 = !DILocation(line: 178, column: 6, scope: !6895)
!6956 = !DILocation(line: 179, column: 31, scope: !6953)
!6957 = !DILocation(line: 179, column: 36, scope: !6953)
!6958 = !DILocation(line: 179, column: 12, scope: !6953)
!6959 = !DILocation(line: 179, column: 10, scope: !6953)
!6960 = !DILocation(line: 179, column: 3, scope: !6953)
!6961 = !DILocation(line: 181, column: 9, scope: !6895)
!6962 = !DILocation(line: 182, column: 1, scope: !6895)
!6963 = !DILocation(line: 181, column: 2, scope: !6895)
!6964 = distinct !DISubprogram(name: "sr_is_xa", scope: !3, file: !3, line: 577, type: !6965, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6967)
!6965 = !DISubroutineType(types: !6966)
!6966 = !{!82, !5606}
!6967 = !{!6968, !6969, !6970}
!6968 = !DILocalVariable(name: "cd", arg: 1, scope: !6964, file: !3, line: 577, type: !5606)
!6969 = !DILocalVariable(name: "raw_sector", scope: !6964, file: !3, line: 579, type: !2922)
!6970 = !DILocalVariable(name: "is_xa", scope: !6964, file: !3, line: 580, type: !82)
!6971 = !DILocation(line: 577, column: 23, scope: !6964)
!6972 = !DILocation(line: 579, column: 2, scope: !6964)
!6973 = !DILocation(line: 579, column: 17, scope: !6964)
!6974 = !DILocation(line: 580, column: 2, scope: !6964)
!6975 = !DILocation(line: 580, column: 6, scope: !6964)
!6976 = !DILocation(line: 582, column: 7, scope: !6977)
!6977 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 582, column: 6)
!6978 = !DILocation(line: 582, column: 6, scope: !6964)
!6979 = !DILocation(line: 583, column: 3, scope: !6977)
!6980 = !DILocation(line: 585, column: 15, scope: !6964)
!6981 = !DILocation(line: 585, column: 13, scope: !6964)
!6982 = !DILocation(line: 586, column: 7, scope: !6983)
!6983 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 586, column: 6)
!6984 = !DILocation(line: 586, column: 6, scope: !6964)
!6985 = !DILocation(line: 587, column: 3, scope: !6983)
!6986 = !DILocation(line: 588, column: 26, scope: !6987)
!6987 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 588, column: 6)
!6988 = !DILocation(line: 588, column: 30, scope: !6987)
!6989 = !DILocation(line: 588, column: 34, scope: !6987)
!6990 = !DILocation(line: 588, column: 44, scope: !6987)
!6991 = !DILocation(line: 589, column: 24, scope: !6987)
!6992 = !DILocation(line: 588, column: 11, scope: !6987)
!6993 = !DILocation(line: 588, column: 8, scope: !6987)
!6994 = !DILocation(line: 588, column: 6, scope: !6964)
!6995 = !DILocation(line: 590, column: 12, scope: !6996)
!6996 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 589, column: 37)
!6997 = !DILocation(line: 590, column: 26, scope: !6996)
!6998 = !DILocation(line: 590, column: 11, scope: !6996)
!6999 = !DILocation(line: 590, column: 9, scope: !6996)
!7000 = !DILocation(line: 591, column: 2, scope: !6996)
!7001 = !DILocation(line: 593, column: 9, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6987, file: !3, line: 591, column: 9)
!7003 = !DILocation(line: 595, column: 8, scope: !6964)
!7004 = !DILocation(line: 595, column: 2, scope: !6964)
!7005 = !DILocation(line: 599, column: 9, scope: !6964)
!7006 = !DILocation(line: 599, column: 2, scope: !6964)
!7007 = !DILocation(line: 600, column: 1, scope: !6964)
!7008 = distinct !DISubprogram(name: "kmalloc", scope: !256, file: !256, line: 591, type: !6793, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7009)
!7009 = !{!7010, !7011, !7012}
!7010 = !DILocalVariable(name: "size", arg: 1, scope: !7008, file: !256, line: 591, type: !417)
!7011 = !DILocalVariable(name: "flags", arg: 2, scope: !7008, file: !256, line: 591, type: !1587)
!7012 = !DILocalVariable(name: "index", scope: !7013, file: !256, line: 594, type: !7)
!7013 = distinct !DILexicalBlock(scope: !7014, file: !256, line: 593, column: 42)
!7014 = distinct !DILexicalBlock(scope: !7008, file: !256, line: 593, column: 6)
!7015 = !DILocation(line: 591, column: 61, scope: !7008)
!7016 = !DILocation(line: 591, column: 73, scope: !7008)
!7017 = !DILocation(line: 593, column: 27, scope: !7014)
!7018 = !DILocation(line: 593, column: 6, scope: !7014)
!7019 = !DILocation(line: 593, column: 33, scope: !7014)
!7020 = !DILocation(line: 593, column: 36, scope: !7014)
!7021 = !DILocation(line: 593, column: 6, scope: !7008)
!7022 = !DILocation(line: 594, column: 3, scope: !7013)
!7023 = !DILocation(line: 594, column: 16, scope: !7013)
!7024 = !DILocation(line: 596, column: 7, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !7013, file: !256, line: 596, column: 7)
!7026 = !DILocation(line: 596, column: 12, scope: !7025)
!7027 = !DILocation(line: 596, column: 7, scope: !7013)
!7028 = !DILocation(line: 597, column: 25, scope: !7025)
!7029 = !DILocation(line: 597, column: 31, scope: !7025)
!7030 = !DILocation(line: 597, column: 11, scope: !7025)
!7031 = !DILocation(line: 597, column: 4, scope: !7025)
!7032 = !DILocation(line: 599, column: 11, scope: !7013)
!7033 = !DILocation(line: 599, column: 9, scope: !7013)
!7034 = !DILocation(line: 601, column: 33, scope: !7013)
!7035 = !DILocation(line: 601, column: 40, scope: !7013)
!7036 = !DILocation(line: 601, column: 20, scope: !7013)
!7037 = !DILocation(line: 601, column: 5, scope: !7013)
!7038 = !DILocation(line: 601, column: 51, scope: !7013)
!7039 = !DILocation(line: 602, column: 5, scope: !7013)
!7040 = !DILocation(line: 602, column: 12, scope: !7013)
!7041 = !DILocation(line: 600, column: 10, scope: !7013)
!7042 = !DILocation(line: 600, column: 3, scope: !7013)
!7043 = !DILocation(line: 603, column: 2, scope: !7014)
!7044 = !DILocation(line: 604, column: 19, scope: !7008)
!7045 = !DILocation(line: 604, column: 25, scope: !7008)
!7046 = !DILocation(line: 604, column: 9, scope: !7008)
!7047 = !DILocation(line: 604, column: 2, scope: !7008)
!7048 = !DILocation(line: 605, column: 1, scope: !7008)
!7049 = distinct !DISubprogram(name: "sr_read_sector", scope: !3, file: !3, line: 529, type: !7050, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7052)
!7050 = !DISubroutineType(types: !7051)
!7051 = !{!82, !5606, !82, !82, !2922}
!7052 = !{!7053, !7054, !7055, !7056, !7057, !7058}
!7053 = !DILocalVariable(name: "cd", arg: 1, scope: !7049, file: !3, line: 529, type: !5606)
!7054 = !DILocalVariable(name: "lba", arg: 2, scope: !7049, file: !3, line: 529, type: !82)
!7055 = !DILocalVariable(name: "blksize", arg: 3, scope: !7049, file: !3, line: 529, type: !82)
!7056 = !DILocalVariable(name: "dest", arg: 4, scope: !7049, file: !3, line: 529, type: !2922)
!7057 = !DILocalVariable(name: "cgc", scope: !7049, file: !3, line: 531, type: !2915)
!7058 = !DILocalVariable(name: "rc", scope: !7049, file: !3, line: 532, type: !82)
!7059 = !DILocation(line: 529, column: 36, scope: !7049)
!7060 = !DILocation(line: 529, column: 44, scope: !7049)
!7061 = !DILocation(line: 529, column: 53, scope: !7049)
!7062 = !DILocation(line: 529, column: 77, scope: !7049)
!7063 = !DILocation(line: 531, column: 2, scope: !7049)
!7064 = !DILocation(line: 531, column: 24, scope: !7049)
!7065 = !DILocation(line: 532, column: 2, scope: !7049)
!7066 = !DILocation(line: 532, column: 6, scope: !7049)
!7067 = !DILocation(line: 535, column: 6, scope: !7068)
!7068 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 535, column: 6)
!7069 = !DILocation(line: 535, column: 10, scope: !7068)
!7070 = !DILocation(line: 535, column: 6, scope: !7049)
!7071 = !DILocation(line: 536, column: 19, scope: !7072)
!7072 = distinct !DILexicalBlock(scope: !7068, file: !3, line: 535, column: 24)
!7073 = !DILocation(line: 536, column: 23, scope: !7072)
!7074 = !DILocation(line: 536, column: 29, scope: !7072)
!7075 = !DILocation(line: 536, column: 37, scope: !7072)
!7076 = !DILocation(line: 536, column: 8, scope: !7072)
!7077 = !DILocation(line: 536, column: 6, scope: !7072)
!7078 = !DILocation(line: 537, column: 31, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !7072, file: !3, line: 537, column: 7)
!7080 = !DILocation(line: 537, column: 28, scope: !7079)
!7081 = !DILocation(line: 537, column: 7, scope: !7072)
!7082 = !DILocation(line: 538, column: 11, scope: !7079)
!7083 = !DILocation(line: 538, column: 4, scope: !7079)
!7084 = !DILocation(line: 539, column: 3, scope: !7072)
!7085 = !DILocation(line: 539, column: 7, scope: !7072)
!7086 = !DILocation(line: 539, column: 20, scope: !7072)
!7087 = !DILocation(line: 540, column: 3, scope: !7072)
!7088 = !DILocation(line: 543, column: 2, scope: !7072)
!7089 = !DILocation(line: 545, column: 6, scope: !7090)
!7090 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 545, column: 6)
!7091 = !DILocation(line: 545, column: 17, scope: !7090)
!7092 = !DILocation(line: 545, column: 21, scope: !7090)
!7093 = !DILocation(line: 545, column: 29, scope: !7090)
!7094 = !DILocation(line: 545, column: 14, scope: !7090)
!7095 = !DILocation(line: 545, column: 6, scope: !7049)
!7096 = !DILocation(line: 546, column: 37, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7098, file: !3, line: 546, column: 7)
!7098 = distinct !DILexicalBlock(scope: !7090, file: !3, line: 545, column: 42)
!7099 = !DILocation(line: 546, column: 41, scope: !7097)
!7100 = !DILocation(line: 546, column: 18, scope: !7097)
!7101 = !DILocation(line: 546, column: 16, scope: !7097)
!7102 = !DILocation(line: 546, column: 9, scope: !7097)
!7103 = !DILocation(line: 546, column: 7, scope: !7098)
!7104 = !DILocation(line: 547, column: 11, scope: !7097)
!7105 = !DILocation(line: 547, column: 4, scope: !7097)
!7106 = !DILocation(line: 548, column: 2, scope: !7098)
!7107 = !DILocation(line: 554, column: 2, scope: !7049)
!7108 = !DILocation(line: 555, column: 6, scope: !7049)
!7109 = !DILocation(line: 555, column: 2, scope: !7049)
!7110 = !DILocation(line: 555, column: 13, scope: !7049)
!7111 = !DILocation(line: 556, column: 32, scope: !7049)
!7112 = !DILocation(line: 556, column: 36, scope: !7049)
!7113 = !DILocation(line: 556, column: 15, scope: !7049)
!7114 = !DILocation(line: 556, column: 43, scope: !7049)
!7115 = !DILocation(line: 556, column: 6, scope: !7049)
!7116 = !DILocation(line: 556, column: 2, scope: !7049)
!7117 = !DILocation(line: 556, column: 13, scope: !7049)
!7118 = !DILocation(line: 557, column: 32, scope: !7049)
!7119 = !DILocation(line: 557, column: 36, scope: !7049)
!7120 = !DILocation(line: 557, column: 15, scope: !7049)
!7121 = !DILocation(line: 557, column: 43, scope: !7049)
!7122 = !DILocation(line: 557, column: 6, scope: !7049)
!7123 = !DILocation(line: 557, column: 2, scope: !7049)
!7124 = !DILocation(line: 557, column: 13, scope: !7049)
!7125 = !DILocation(line: 558, column: 32, scope: !7049)
!7126 = !DILocation(line: 558, column: 36, scope: !7049)
!7127 = !DILocation(line: 558, column: 15, scope: !7049)
!7128 = !DILocation(line: 558, column: 42, scope: !7049)
!7129 = !DILocation(line: 558, column: 6, scope: !7049)
!7130 = !DILocation(line: 558, column: 2, scope: !7049)
!7131 = !DILocation(line: 558, column: 13, scope: !7049)
!7132 = !DILocation(line: 559, column: 31, scope: !7049)
!7133 = !DILocation(line: 559, column: 15, scope: !7049)
!7134 = !DILocation(line: 559, column: 35, scope: !7049)
!7135 = !DILocation(line: 559, column: 6, scope: !7049)
!7136 = !DILocation(line: 559, column: 2, scope: !7049)
!7137 = !DILocation(line: 559, column: 13, scope: !7049)
!7138 = !DILocation(line: 560, column: 6, scope: !7049)
!7139 = !DILocation(line: 560, column: 2, scope: !7049)
!7140 = !DILocation(line: 560, column: 13, scope: !7049)
!7141 = !DILocation(line: 561, column: 15, scope: !7049)
!7142 = !DILocation(line: 561, column: 6, scope: !7049)
!7143 = !DILocation(line: 561, column: 13, scope: !7049)
!7144 = !DILocation(line: 562, column: 15, scope: !7049)
!7145 = !DILocation(line: 562, column: 6, scope: !7049)
!7146 = !DILocation(line: 562, column: 13, scope: !7049)
!7147 = !DILocation(line: 563, column: 6, scope: !7049)
!7148 = !DILocation(line: 563, column: 21, scope: !7049)
!7149 = !DILocation(line: 564, column: 6, scope: !7049)
!7150 = !DILocation(line: 564, column: 14, scope: !7049)
!7151 = !DILocation(line: 565, column: 19, scope: !7049)
!7152 = !DILocation(line: 565, column: 7, scope: !7049)
!7153 = !DILocation(line: 565, column: 5, scope: !7049)
!7154 = !DILocation(line: 567, column: 6, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7049, file: !3, line: 567, column: 6)
!7156 = !DILocation(line: 567, column: 14, scope: !7155)
!7157 = !DILocation(line: 567, column: 6, scope: !7049)
!7158 = !DILocation(line: 568, column: 28, scope: !7155)
!7159 = !DILocation(line: 568, column: 9, scope: !7155)
!7160 = !DILocation(line: 568, column: 6, scope: !7155)
!7161 = !DILocation(line: 568, column: 3, scope: !7155)
!7162 = !DILocation(line: 569, column: 9, scope: !7049)
!7163 = !DILocation(line: 569, column: 2, scope: !7049)
!7164 = !DILocation(line: 570, column: 1, scope: !7049)
!7165 = !DISubprogram(name: "msleep", scope: !6217, file: !6217, line: 61, type: !6218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7166 = distinct !DISubprogram(name: "sr_fake_playtrkind", scope: !3, file: !3, line: 117, type: !6896, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7167)
!7167 = !{!7168, !7169, !7170, !7171, !7172, !7173, !7174, !7175}
!7168 = !DILocalVariable(name: "cdi", arg: 1, scope: !7166, file: !3, line: 117, type: !2843)
!7169 = !DILocalVariable(name: "ti", arg: 2, scope: !7166, file: !3, line: 117, type: !6898)
!7170 = !DILocalVariable(name: "trk0_te", scope: !7166, file: !3, line: 119, type: !6421)
!7171 = !DILocalVariable(name: "trk1_te", scope: !7166, file: !3, line: 119, type: !6421)
!7172 = !DILocalVariable(name: "tochdr", scope: !7166, file: !3, line: 120, type: !6416)
!7173 = !DILocalVariable(name: "cgc", scope: !7166, file: !3, line: 121, type: !2915)
!7174 = !DILocalVariable(name: "ntracks", scope: !7166, file: !3, line: 122, type: !82)
!7175 = !DILocalVariable(name: "ret", scope: !7166, file: !3, line: 122, type: !82)
!7176 = !DILocation(line: 117, column: 57, scope: !7166)
!7177 = !DILocation(line: 117, column: 79, scope: !7166)
!7178 = !DILocation(line: 119, column: 2, scope: !7166)
!7179 = !DILocation(line: 119, column: 24, scope: !7166)
!7180 = !DILocation(line: 119, column: 33, scope: !7166)
!7181 = !DILocation(line: 120, column: 2, scope: !7166)
!7182 = !DILocation(line: 120, column: 22, scope: !7166)
!7183 = !DILocation(line: 121, column: 2, scope: !7166)
!7184 = !DILocation(line: 121, column: 24, scope: !7166)
!7185 = !DILocation(line: 122, column: 2, scope: !7166)
!7186 = !DILocation(line: 122, column: 6, scope: !7166)
!7187 = !DILocation(line: 122, column: 15, scope: !7166)
!7188 = !DILocation(line: 124, column: 23, scope: !7166)
!7189 = !DILocation(line: 124, column: 8, scope: !7166)
!7190 = !DILocation(line: 124, column: 6, scope: !7166)
!7191 = !DILocation(line: 125, column: 6, scope: !7192)
!7192 = distinct !DILexicalBlock(scope: !7166, file: !3, line: 125, column: 6)
!7193 = !DILocation(line: 125, column: 6, scope: !7166)
!7194 = !DILocation(line: 126, column: 10, scope: !7192)
!7195 = !DILocation(line: 126, column: 3, scope: !7192)
!7196 = !DILocation(line: 128, column: 19, scope: !7166)
!7197 = !DILocation(line: 128, column: 12, scope: !7166)
!7198 = !DILocation(line: 128, column: 38, scope: !7166)
!7199 = !DILocation(line: 128, column: 31, scope: !7166)
!7200 = !DILocation(line: 128, column: 29, scope: !7166)
!7201 = !DILocation(line: 128, column: 48, scope: !7166)
!7202 = !DILocation(line: 128, column: 10, scope: !7166)
!7203 = !DILocation(line: 130, column: 6, scope: !7204)
!7204 = distinct !DILexicalBlock(scope: !7166, file: !3, line: 130, column: 6)
!7205 = !DILocation(line: 130, column: 10, scope: !7204)
!7206 = !DILocation(line: 130, column: 23, scope: !7204)
!7207 = !DILocation(line: 130, column: 20, scope: !7204)
!7208 = !DILocation(line: 130, column: 6, scope: !7166)
!7209 = !DILocation(line: 131, column: 3, scope: !7204)
!7210 = !DILocation(line: 131, column: 7, scope: !7204)
!7211 = !DILocation(line: 131, column: 17, scope: !7204)
!7212 = !DILocation(line: 132, column: 11, scope: !7213)
!7213 = distinct !DILexicalBlock(scope: !7204, file: !3, line: 132, column: 11)
!7214 = !DILocation(line: 132, column: 15, scope: !7213)
!7215 = !DILocation(line: 132, column: 25, scope: !7213)
!7216 = !DILocation(line: 132, column: 11, scope: !7204)
!7217 = !DILocation(line: 133, column: 3, scope: !7213)
!7218 = !DILocation(line: 133, column: 7, scope: !7213)
!7219 = !DILocation(line: 133, column: 17, scope: !7213)
!7220 = !DILocation(line: 135, column: 23, scope: !7166)
!7221 = !DILocation(line: 135, column: 27, scope: !7166)
!7222 = !DILocation(line: 135, column: 10, scope: !7166)
!7223 = !DILocation(line: 135, column: 21, scope: !7166)
!7224 = !DILocation(line: 136, column: 10, scope: !7166)
!7225 = !DILocation(line: 136, column: 22, scope: !7166)
!7226 = !DILocation(line: 137, column: 23, scope: !7166)
!7227 = !DILocation(line: 137, column: 27, scope: !7166)
!7228 = !DILocation(line: 137, column: 10, scope: !7166)
!7229 = !DILocation(line: 137, column: 21, scope: !7166)
!7230 = !DILocation(line: 138, column: 10, scope: !7166)
!7231 = !DILocation(line: 138, column: 22, scope: !7166)
!7232 = !DILocation(line: 140, column: 25, scope: !7166)
!7233 = !DILocation(line: 140, column: 8, scope: !7166)
!7234 = !DILocation(line: 140, column: 6, scope: !7166)
!7235 = !DILocation(line: 141, column: 6, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7166, file: !3, line: 141, column: 6)
!7237 = !DILocation(line: 141, column: 6, scope: !7166)
!7238 = !DILocation(line: 142, column: 10, scope: !7236)
!7239 = !DILocation(line: 142, column: 3, scope: !7236)
!7240 = !DILocation(line: 143, column: 25, scope: !7166)
!7241 = !DILocation(line: 143, column: 8, scope: !7166)
!7242 = !DILocation(line: 143, column: 6, scope: !7166)
!7243 = !DILocation(line: 144, column: 6, scope: !7244)
!7244 = distinct !DILexicalBlock(scope: !7166, file: !3, line: 144, column: 6)
!7245 = !DILocation(line: 144, column: 6, scope: !7166)
!7246 = !DILocation(line: 145, column: 10, scope: !7244)
!7247 = !DILocation(line: 145, column: 3, scope: !7244)
!7248 = !DILocation(line: 147, column: 2, scope: !7166)
!7249 = !DILocation(line: 148, column: 6, scope: !7166)
!7250 = !DILocation(line: 148, column: 2, scope: !7166)
!7251 = !DILocation(line: 148, column: 13, scope: !7166)
!7252 = !DILocation(line: 149, column: 23, scope: !7166)
!7253 = !DILocation(line: 149, column: 37, scope: !7166)
!7254 = !DILocation(line: 149, column: 6, scope: !7166)
!7255 = !DILocation(line: 149, column: 2, scope: !7166)
!7256 = !DILocation(line: 149, column: 13, scope: !7166)
!7257 = !DILocation(line: 150, column: 23, scope: !7166)
!7258 = !DILocation(line: 150, column: 37, scope: !7166)
!7259 = !DILocation(line: 150, column: 6, scope: !7166)
!7260 = !DILocation(line: 150, column: 2, scope: !7166)
!7261 = !DILocation(line: 150, column: 13, scope: !7166)
!7262 = !DILocation(line: 151, column: 23, scope: !7166)
!7263 = !DILocation(line: 151, column: 37, scope: !7166)
!7264 = !DILocation(line: 151, column: 6, scope: !7166)
!7265 = !DILocation(line: 151, column: 2, scope: !7166)
!7266 = !DILocation(line: 151, column: 13, scope: !7166)
!7267 = !DILocation(line: 152, column: 23, scope: !7166)
!7268 = !DILocation(line: 152, column: 37, scope: !7166)
!7269 = !DILocation(line: 152, column: 6, scope: !7166)
!7270 = !DILocation(line: 152, column: 2, scope: !7166)
!7271 = !DILocation(line: 152, column: 13, scope: !7166)
!7272 = !DILocation(line: 153, column: 23, scope: !7166)
!7273 = !DILocation(line: 153, column: 37, scope: !7166)
!7274 = !DILocation(line: 153, column: 6, scope: !7166)
!7275 = !DILocation(line: 153, column: 2, scope: !7166)
!7276 = !DILocation(line: 153, column: 13, scope: !7166)
!7277 = !DILocation(line: 154, column: 23, scope: !7166)
!7278 = !DILocation(line: 154, column: 37, scope: !7166)
!7279 = !DILocation(line: 154, column: 6, scope: !7166)
!7280 = !DILocation(line: 154, column: 2, scope: !7166)
!7281 = !DILocation(line: 154, column: 13, scope: !7166)
!7282 = !DILocation(line: 155, column: 6, scope: !7166)
!7283 = !DILocation(line: 155, column: 21, scope: !7166)
!7284 = !DILocation(line: 156, column: 6, scope: !7166)
!7285 = !DILocation(line: 156, column: 14, scope: !7166)
!7286 = !DILocation(line: 157, column: 21, scope: !7166)
!7287 = !DILocation(line: 157, column: 26, scope: !7166)
!7288 = !DILocation(line: 157, column: 9, scope: !7166)
!7289 = !DILocation(line: 157, column: 2, scope: !7166)
!7290 = !DILocation(line: 158, column: 1, scope: !7166)
!7291 = !DISubprogram(name: "kmalloc_large", scope: !256, file: !256, line: 531, type: !6793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7292 = distinct !DISubprogram(name: "__kmalloc_index", scope: !256, file: !256, line: 444, type: !7293, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7295)
!7293 = !DISubroutineType(types: !7294)
!7294 = !{!7, !417, !982}
!7295 = !{!7296, !7297}
!7296 = !DILocalVariable(name: "size", arg: 1, scope: !7292, file: !256, line: 444, type: !417)
!7297 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7292, file: !256, line: 445, type: !982)
!7298 = !DILocation(line: 444, column: 60, scope: !7292)
!7299 = !DILocation(line: 445, column: 16, scope: !7292)
!7300 = !DILocation(line: 447, column: 7, scope: !7301)
!7301 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 447, column: 6)
!7302 = !DILocation(line: 447, column: 6, scope: !7292)
!7303 = !DILocation(line: 448, column: 3, scope: !7301)
!7304 = !DILocation(line: 450, column: 6, scope: !7305)
!7305 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 450, column: 6)
!7306 = !DILocation(line: 450, column: 11, scope: !7305)
!7307 = !DILocation(line: 450, column: 6, scope: !7292)
!7308 = !DILocation(line: 451, column: 3, scope: !7305)
!7309 = !DILocation(line: 453, column: 32, scope: !7310)
!7310 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 453, column: 6)
!7311 = !DILocation(line: 453, column: 37, scope: !7310)
!7312 = !DILocation(line: 453, column: 42, scope: !7310)
!7313 = !DILocation(line: 453, column: 45, scope: !7310)
!7314 = !DILocation(line: 453, column: 50, scope: !7310)
!7315 = !DILocation(line: 453, column: 6, scope: !7292)
!7316 = !DILocation(line: 454, column: 3, scope: !7310)
!7317 = !DILocation(line: 455, column: 32, scope: !7318)
!7318 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 455, column: 6)
!7319 = !DILocation(line: 455, column: 37, scope: !7318)
!7320 = !DILocation(line: 455, column: 43, scope: !7318)
!7321 = !DILocation(line: 455, column: 46, scope: !7318)
!7322 = !DILocation(line: 455, column: 51, scope: !7318)
!7323 = !DILocation(line: 455, column: 6, scope: !7292)
!7324 = !DILocation(line: 456, column: 3, scope: !7318)
!7325 = !DILocation(line: 457, column: 6, scope: !7326)
!7326 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 457, column: 6)
!7327 = !DILocation(line: 457, column: 11, scope: !7326)
!7328 = !DILocation(line: 457, column: 6, scope: !7292)
!7329 = !DILocation(line: 457, column: 26, scope: !7326)
!7330 = !DILocation(line: 458, column: 6, scope: !7331)
!7331 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 458, column: 6)
!7332 = !DILocation(line: 458, column: 11, scope: !7331)
!7333 = !DILocation(line: 458, column: 6, scope: !7292)
!7334 = !DILocation(line: 458, column: 26, scope: !7331)
!7335 = !DILocation(line: 459, column: 6, scope: !7336)
!7336 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 459, column: 6)
!7337 = !DILocation(line: 459, column: 11, scope: !7336)
!7338 = !DILocation(line: 459, column: 6, scope: !7292)
!7339 = !DILocation(line: 459, column: 26, scope: !7336)
!7340 = !DILocation(line: 460, column: 6, scope: !7341)
!7341 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 460, column: 6)
!7342 = !DILocation(line: 460, column: 11, scope: !7341)
!7343 = !DILocation(line: 460, column: 6, scope: !7292)
!7344 = !DILocation(line: 460, column: 26, scope: !7341)
!7345 = !DILocation(line: 461, column: 6, scope: !7346)
!7346 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 461, column: 6)
!7347 = !DILocation(line: 461, column: 11, scope: !7346)
!7348 = !DILocation(line: 461, column: 6, scope: !7292)
!7349 = !DILocation(line: 461, column: 26, scope: !7346)
!7350 = !DILocation(line: 462, column: 6, scope: !7351)
!7351 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 462, column: 6)
!7352 = !DILocation(line: 462, column: 11, scope: !7351)
!7353 = !DILocation(line: 462, column: 6, scope: !7292)
!7354 = !DILocation(line: 462, column: 26, scope: !7351)
!7355 = !DILocation(line: 463, column: 6, scope: !7356)
!7356 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 463, column: 6)
!7357 = !DILocation(line: 463, column: 11, scope: !7356)
!7358 = !DILocation(line: 463, column: 6, scope: !7292)
!7359 = !DILocation(line: 463, column: 26, scope: !7356)
!7360 = !DILocation(line: 464, column: 6, scope: !7361)
!7361 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 464, column: 6)
!7362 = !DILocation(line: 464, column: 11, scope: !7361)
!7363 = !DILocation(line: 464, column: 6, scope: !7292)
!7364 = !DILocation(line: 464, column: 26, scope: !7361)
!7365 = !DILocation(line: 465, column: 6, scope: !7366)
!7366 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 465, column: 6)
!7367 = !DILocation(line: 465, column: 11, scope: !7366)
!7368 = !DILocation(line: 465, column: 6, scope: !7292)
!7369 = !DILocation(line: 465, column: 26, scope: !7366)
!7370 = !DILocation(line: 466, column: 6, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 466, column: 6)
!7372 = !DILocation(line: 466, column: 11, scope: !7371)
!7373 = !DILocation(line: 466, column: 6, scope: !7292)
!7374 = !DILocation(line: 466, column: 26, scope: !7371)
!7375 = !DILocation(line: 467, column: 6, scope: !7376)
!7376 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 467, column: 6)
!7377 = !DILocation(line: 467, column: 11, scope: !7376)
!7378 = !DILocation(line: 467, column: 6, scope: !7292)
!7379 = !DILocation(line: 467, column: 26, scope: !7376)
!7380 = !DILocation(line: 468, column: 6, scope: !7381)
!7381 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 468, column: 6)
!7382 = !DILocation(line: 468, column: 11, scope: !7381)
!7383 = !DILocation(line: 468, column: 6, scope: !7292)
!7384 = !DILocation(line: 468, column: 26, scope: !7381)
!7385 = !DILocation(line: 469, column: 6, scope: !7386)
!7386 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 469, column: 6)
!7387 = !DILocation(line: 469, column: 11, scope: !7386)
!7388 = !DILocation(line: 469, column: 6, scope: !7292)
!7389 = !DILocation(line: 469, column: 26, scope: !7386)
!7390 = !DILocation(line: 470, column: 6, scope: !7391)
!7391 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 470, column: 6)
!7392 = !DILocation(line: 470, column: 11, scope: !7391)
!7393 = !DILocation(line: 470, column: 6, scope: !7292)
!7394 = !DILocation(line: 470, column: 26, scope: !7391)
!7395 = !DILocation(line: 471, column: 6, scope: !7396)
!7396 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 471, column: 6)
!7397 = !DILocation(line: 471, column: 11, scope: !7396)
!7398 = !DILocation(line: 471, column: 6, scope: !7292)
!7399 = !DILocation(line: 471, column: 26, scope: !7396)
!7400 = !DILocation(line: 472, column: 6, scope: !7401)
!7401 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 472, column: 6)
!7402 = !DILocation(line: 472, column: 11, scope: !7401)
!7403 = !DILocation(line: 472, column: 6, scope: !7292)
!7404 = !DILocation(line: 472, column: 26, scope: !7401)
!7405 = !DILocation(line: 473, column: 6, scope: !7406)
!7406 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 473, column: 6)
!7407 = !DILocation(line: 473, column: 11, scope: !7406)
!7408 = !DILocation(line: 473, column: 6, scope: !7292)
!7409 = !DILocation(line: 473, column: 26, scope: !7406)
!7410 = !DILocation(line: 474, column: 6, scope: !7411)
!7411 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 474, column: 6)
!7412 = !DILocation(line: 474, column: 11, scope: !7411)
!7413 = !DILocation(line: 474, column: 6, scope: !7292)
!7414 = !DILocation(line: 474, column: 27, scope: !7411)
!7415 = !DILocation(line: 475, column: 6, scope: !7416)
!7416 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 475, column: 6)
!7417 = !DILocation(line: 475, column: 11, scope: !7416)
!7418 = !DILocation(line: 475, column: 6, scope: !7292)
!7419 = !DILocation(line: 475, column: 32, scope: !7416)
!7420 = !DILocation(line: 477, column: 50, scope: !7421)
!7421 = distinct !DILexicalBlock(scope: !7292, file: !256, line: 477, column: 6)
!7422 = !{i8 0, i8 2}
!7423 = !DILocation(line: 477, column: 6, scope: !7292)
!7424 = !DILocation(line: 478, column: 3, scope: !7421)
!7425 = !DILocation(line: 478, column: 3, scope: !7426)
!7426 = distinct !DILexicalBlock(scope: !7427, file: !256, line: 478, column: 3)
!7427 = distinct !DILexicalBlock(scope: !7421, file: !256, line: 478, column: 3)
!7428 = !{i32 -2142321452}
!7429 = !DILocation(line: 478, column: 3, scope: !7427)
!7430 = !DILocation(line: 480, column: 3, scope: !7421)
!7431 = !DILocation(line: 480, column: 3, scope: !7432)
!7432 = distinct !DILexicalBlock(scope: !7421, file: !256, line: 480, column: 3)
!7433 = !DILocation(line: 480, column: 3, scope: !7434)
!7434 = distinct !DILexicalBlock(scope: !7432, file: !256, line: 480, column: 3)
!7435 = !DILocation(line: 480, column: 3, scope: !7436)
!7436 = distinct !DILexicalBlock(scope: !7432, file: !256, line: 480, column: 3)
!7437 = !{i64 2152646047, i64 2152646076, i64 2152646122, i64 2152646180, i64 2152646234, i64 2152646288, i64 2152646343, i64 2152646374}
!7438 = !DILocation(line: 483, column: 2, scope: !7292)
!7439 = !DILocation(line: 484, column: 1, scope: !7292)
!7440 = !DISubprogram(name: "kmalloc_trace", scope: !256, file: !256, line: 525, type: !7441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7441 = !DISubroutineType(types: !7442)
!7442 = !{!442, !2697, !1587, !417}
!7443 = distinct !DISubprogram(name: "kmalloc_type", scope: !256, file: !256, line: 401, type: !7444, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7446)
!7444 = !DISubroutineType(types: !7445)
!7445 = !{!255, !1587, !420}
!7446 = !{!7447, !7448}
!7447 = !DILocalVariable(name: "flags", arg: 1, scope: !7443, file: !256, line: 401, type: !1587)
!7448 = !DILocalVariable(name: "caller", arg: 2, scope: !7443, file: !256, line: 401, type: !420)
!7449 = !DILocation(line: 401, column: 67, scope: !7443)
!7450 = !DILocation(line: 401, column: 88, scope: !7443)
!7451 = !DILocation(line: 407, column: 6, scope: !7452)
!7452 = distinct !DILexicalBlock(scope: !7443, file: !256, line: 407, column: 6)
!7453 = !DILocation(line: 407, column: 6, scope: !7443)
!7454 = !DILocation(line: 413, column: 3, scope: !7452)
!7455 = !DILocation(line: 423, column: 38, scope: !7456)
!7456 = distinct !DILexicalBlock(scope: !7443, file: !256, line: 423, column: 6)
!7457 = !DILocation(line: 423, column: 44, scope: !7456)
!7458 = !DILocation(line: 423, column: 6, scope: !7443)
!7459 = !DILocation(line: 424, column: 3, scope: !7456)
!7460 = !DILocation(line: 426, column: 3, scope: !7461)
!7461 = distinct !DILexicalBlock(scope: !7443, file: !256, line: 425, column: 6)
!7462 = !DILocation(line: 429, column: 1, scope: !7443)
!7463 = !DISubprogram(name: "__kmalloc", scope: !256, file: !256, line: 488, type: !6793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7464 = !DISubprogram(name: "__compiletime_assert_206", scope: !256, file: !256, line: 478, type: !4111, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7465 = distinct !DISubprogram(name: "sr_read_cd", scope: !3, file: !3, line: 487, type: !7466, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7468)
!7466 = !DISubroutineType(types: !7467)
!7467 = !{!82, !5606, !2922, !82, !82, !82}
!7468 = !{!7469, !7470, !7471, !7472, !7473, !7474}
!7469 = !DILocalVariable(name: "cd", arg: 1, scope: !7465, file: !3, line: 487, type: !5606)
!7470 = !DILocalVariable(name: "dest", arg: 2, scope: !7465, file: !3, line: 487, type: !2922)
!7471 = !DILocalVariable(name: "lba", arg: 3, scope: !7465, file: !3, line: 487, type: !82)
!7472 = !DILocalVariable(name: "format", arg: 4, scope: !7465, file: !3, line: 487, type: !82)
!7473 = !DILocalVariable(name: "blksize", arg: 5, scope: !7465, file: !3, line: 487, type: !82)
!7474 = !DILocalVariable(name: "cgc", scope: !7465, file: !3, line: 489, type: !2915)
!7475 = !DILocation(line: 487, column: 32, scope: !7465)
!7476 = !DILocation(line: 487, column: 51, scope: !7465)
!7477 = !DILocation(line: 487, column: 61, scope: !7465)
!7478 = !DILocation(line: 487, column: 70, scope: !7465)
!7479 = !DILocation(line: 487, column: 82, scope: !7465)
!7480 = !DILocation(line: 489, column: 2, scope: !7465)
!7481 = !DILocation(line: 489, column: 24, scope: !7465)
!7482 = !DILocation(line: 496, column: 2, scope: !7465)
!7483 = !DILocation(line: 497, column: 6, scope: !7465)
!7484 = !DILocation(line: 497, column: 2, scope: !7465)
!7485 = !DILocation(line: 497, column: 13, scope: !7465)
!7486 = !DILocation(line: 498, column: 17, scope: !7465)
!7487 = !DILocation(line: 498, column: 24, scope: !7465)
!7488 = !DILocation(line: 498, column: 29, scope: !7465)
!7489 = !DILocation(line: 498, column: 15, scope: !7465)
!7490 = !DILocation(line: 498, column: 6, scope: !7465)
!7491 = !DILocation(line: 498, column: 2, scope: !7465)
!7492 = !DILocation(line: 498, column: 13, scope: !7465)
!7493 = !DILocation(line: 499, column: 32, scope: !7465)
!7494 = !DILocation(line: 499, column: 36, scope: !7465)
!7495 = !DILocation(line: 499, column: 15, scope: !7465)
!7496 = !DILocation(line: 499, column: 43, scope: !7465)
!7497 = !DILocation(line: 499, column: 6, scope: !7465)
!7498 = !DILocation(line: 499, column: 2, scope: !7465)
!7499 = !DILocation(line: 499, column: 13, scope: !7465)
!7500 = !DILocation(line: 500, column: 32, scope: !7465)
!7501 = !DILocation(line: 500, column: 36, scope: !7465)
!7502 = !DILocation(line: 500, column: 15, scope: !7465)
!7503 = !DILocation(line: 500, column: 43, scope: !7465)
!7504 = !DILocation(line: 500, column: 6, scope: !7465)
!7505 = !DILocation(line: 500, column: 2, scope: !7465)
!7506 = !DILocation(line: 500, column: 13, scope: !7465)
!7507 = !DILocation(line: 501, column: 32, scope: !7465)
!7508 = !DILocation(line: 501, column: 36, scope: !7465)
!7509 = !DILocation(line: 501, column: 15, scope: !7465)
!7510 = !DILocation(line: 501, column: 42, scope: !7465)
!7511 = !DILocation(line: 501, column: 6, scope: !7465)
!7512 = !DILocation(line: 501, column: 2, scope: !7465)
!7513 = !DILocation(line: 501, column: 13, scope: !7465)
!7514 = !DILocation(line: 502, column: 31, scope: !7465)
!7515 = !DILocation(line: 502, column: 15, scope: !7465)
!7516 = !DILocation(line: 502, column: 35, scope: !7465)
!7517 = !DILocation(line: 502, column: 6, scope: !7465)
!7518 = !DILocation(line: 502, column: 2, scope: !7465)
!7519 = !DILocation(line: 502, column: 13, scope: !7465)
!7520 = !DILocation(line: 503, column: 6, scope: !7465)
!7521 = !DILocation(line: 503, column: 2, scope: !7465)
!7522 = !DILocation(line: 503, column: 13, scope: !7465)
!7523 = !DILocation(line: 504, column: 10, scope: !7465)
!7524 = !DILocation(line: 504, column: 2, scope: !7465)
!7525 = !DILocation(line: 506, column: 7, scope: !7526)
!7526 = distinct !DILexicalBlock(scope: !7465, file: !3, line: 504, column: 19)
!7527 = !DILocation(line: 506, column: 3, scope: !7526)
!7528 = !DILocation(line: 506, column: 14, scope: !7526)
!7529 = !DILocation(line: 507, column: 3, scope: !7526)
!7530 = !DILocation(line: 509, column: 7, scope: !7526)
!7531 = !DILocation(line: 509, column: 3, scope: !7526)
!7532 = !DILocation(line: 509, column: 14, scope: !7526)
!7533 = !DILocation(line: 510, column: 3, scope: !7526)
!7534 = !DILocation(line: 512, column: 7, scope: !7526)
!7535 = !DILocation(line: 512, column: 3, scope: !7526)
!7536 = !DILocation(line: 512, column: 14, scope: !7526)
!7537 = !DILocation(line: 513, column: 3, scope: !7526)
!7538 = !DILocation(line: 515, column: 7, scope: !7526)
!7539 = !DILocation(line: 515, column: 3, scope: !7526)
!7540 = !DILocation(line: 515, column: 14, scope: !7526)
!7541 = !DILocation(line: 516, column: 3, scope: !7526)
!7542 = !DILocation(line: 518, column: 15, scope: !7465)
!7543 = !DILocation(line: 518, column: 6, scope: !7465)
!7544 = !DILocation(line: 518, column: 13, scope: !7465)
!7545 = !DILocation(line: 519, column: 15, scope: !7465)
!7546 = !DILocation(line: 519, column: 6, scope: !7465)
!7547 = !DILocation(line: 519, column: 13, scope: !7465)
!7548 = !DILocation(line: 520, column: 6, scope: !7465)
!7549 = !DILocation(line: 520, column: 21, scope: !7465)
!7550 = !DILocation(line: 521, column: 6, scope: !7465)
!7551 = !DILocation(line: 521, column: 14, scope: !7465)
!7552 = !DILocation(line: 522, column: 21, scope: !7465)
!7553 = !DILocation(line: 522, column: 9, scope: !7465)
!7554 = !DILocation(line: 523, column: 1, scope: !7465)
!7555 = !DILocation(line: 522, column: 2, scope: !7465)
!7556 = !DISubprogram(name: "sr_set_blocklength", scope: !5608, file: !5608, line: 76, type: !7557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7557 = !DISubroutineType(types: !7558)
!7558 = !{!82, !5606, !82}
