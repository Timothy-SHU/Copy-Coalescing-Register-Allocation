; ModuleID = 'arch/x86/platform/intel/iosf_mbi.c'
source_filename = "arch/x86/platform/intel/iosf_mbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_write: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_modify: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_modify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_available: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_available ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_punit_acquire: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_punit_acquire ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_punit_release: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_punit_release ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_block_punit_i2c_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_block_punit_i2c_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_unblock_punit_i2c_access: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_unblock_punit_i2c_access ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_register_pmic_bus_access_notifier: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_register_pmic_bus_access_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_unregister_pmic_bus_access_notifier_unlocked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_unregister_pmic_bus_access_notifier_unlocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_unregister_pmic_bus_access_notifier: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_unregister_pmic_bus_access_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iosf_mbi_assert_punit_acquired: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iosf_mbi_assert_punit_acquired ; .previous"
module asm ".section\09\22.initcall6.init..kmod_iosf_mbi__304_566_iosf_mbi_init\22, \22a\22\09\09"
module asm "__initcall__kmod_iosf_mbi__304_566_iosf_mbi_init6:\09\09\09"
module asm ".long\09__initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.2, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.2 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [35 x i8] c"arch/x86/platform/intel/iosf_mbi.c\00", align 1, !dbg !0
@iosf_mbi_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !7
@__UNIQUE_ID___addressable_iosf_mbi_read292 = internal global ptr @iosf_mbi_read, section ".discard.addressable", align 8, !dbg !4142
@__UNIQUE_ID___addressable_iosf_mbi_write293 = internal global ptr @iosf_mbi_write, section ".discard.addressable", align 8, !dbg !4144
@__UNIQUE_ID___addressable_iosf_mbi_modify294 = internal global ptr @iosf_mbi_modify, section ".discard.addressable", align 8, !dbg !4146
@mbi_pdev = internal global ptr null, align 8, !dbg !4207
@__UNIQUE_ID___addressable_iosf_mbi_available295 = internal global ptr @iosf_mbi_available, section ".discard.addressable", align 8, !dbg !4148
@iosf_mbi_pmic_access_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iosf_mbi_pmic_access_mutex, i64 16), ptr getelementptr (i8, ptr @iosf_mbi_pmic_access_mutex, i64 16) } }, align 8, !dbg !5061
@iosf_mbi_pmic_i2c_access_count = internal global i32 0, align 4, !dbg !5043
@iosf_mbi_pmic_access_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iosf_mbi_pmic_access_waitq, i64 8), ptr getelementptr (i8, ptr @iosf_mbi_pmic_access_waitq, i64 8) } }, align 8, !dbg !5067
@iosf_mbi_pmic_punit_access_count = internal global i32 0, align 4, !dbg !5041
@__UNIQUE_ID___addressable_iosf_mbi_punit_acquire296 = internal global ptr @iosf_mbi_punit_acquire, section ".discard.addressable", align 8, !dbg !4150
@__UNIQUE_ID___addressable_iosf_mbi_punit_release297 = internal global ptr @iosf_mbi_punit_release, section ".discard.addressable", align 8, !dbg !4152
@iosf_mbi_sem_address = internal global i32 0, align 4, !dbg !5045
@iosf_mbi_pmic_bus_access_notifier = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iosf_mbi_pmic_bus_access_notifier, i64 24), ptr getelementptr (i8, ptr @iosf_mbi_pmic_bus_access_notifier, i64 24) } }, ptr null }, align 8, !dbg !5069
@iosf_mbi_pm_qos = internal global %struct.pm_qos_request zeroinitializer, align 8, !dbg !5049
@.str.1 = private unnamed_addr constant [39 x i8] c"Error P-Unit semaphore request failed\0A\00", align 1, !dbg !4154
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@iosf_mbi_sem_acquired = internal global i64 0, align 8, !dbg !5047
@.str.2 = private unnamed_addr constant [45 x i8] c"Error P-Unit semaphore timed out, resetting\0A\00", align 1, !dbg !4159
@.str.3 = private unnamed_addr constant [22 x i8] c"P-Unit semaphore: %d\0A\00", align 1, !dbg !4164
@__UNIQUE_ID___addressable_iosf_mbi_block_punit_i2c_access298 = internal global ptr @iosf_mbi_block_punit_i2c_access, section ".discard.addressable", align 8, !dbg !4169
@__UNIQUE_ID___addressable_iosf_mbi_unblock_punit_i2c_access299 = internal global ptr @iosf_mbi_unblock_punit_i2c_access, section ".discard.addressable", align 8, !dbg !4171
@__UNIQUE_ID___addressable_iosf_mbi_register_pmic_bus_access_notifier300 = internal global ptr @iosf_mbi_register_pmic_bus_access_notifier, section ".discard.addressable", align 8, !dbg !4173
@__UNIQUE_ID___addressable_iosf_mbi_unregister_pmic_bus_access_notifier_unlocked301 = internal global ptr @iosf_mbi_unregister_pmic_bus_access_notifier_unlocked, section ".discard.addressable", align 8, !dbg !4175
@__UNIQUE_ID___addressable_iosf_mbi_unregister_pmic_bus_access_notifier302 = internal global ptr @iosf_mbi_unregister_pmic_bus_access_notifier, section ".discard.addressable", align 8, !dbg !4177
@__UNIQUE_ID___addressable_iosf_mbi_assert_punit_acquired303 = internal global ptr @iosf_mbi_assert_punit_acquired, section ".discard.addressable", align 8, !dbg !4179
@iosf_mbi_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.7, ptr @iosf_mbi_pci_ids, ptr @iosf_mbi_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer, i8 0 }, align 8, !dbg !5086
@__UNIQUE_ID___addressable___initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6305 = internal global ptr @__initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6, section ".discard.addressable", align 8, !dbg !4181
@__exitcall_iosf_mbi_exit = internal global ptr @iosf_mbi_exit, section ".exitcall.exit", align 8, !dbg !4183
@__UNIQUE_ID_author306 = internal constant [59 x i8] c"iosf_mbi.author=David E. Box <david.e.box@linux.intel.com>\00", section ".modinfo", align 1, !dbg !4187
@__UNIQUE_ID_description307 = internal constant [53 x i8] c"iosf_mbi.description=IOSF Mailbox Interface accessor\00", section ".modinfo", align 1, !dbg !4192
@__UNIQUE_ID_file308 = internal constant [47 x i8] c"iosf_mbi.file=arch/x86/platform/intel/iosf_mbi\00", section ".modinfo", align 1, !dbg !4197
@__UNIQUE_ID_license309 = internal constant [24 x i8] c"iosf_mbi.license=GPL v2\00", section ".modinfo", align 1, !dbg !4202
@.str.4 = private unnamed_addr constant [34 x i8] c"PCI config access failed with %d\0A\00", align 1, !dbg !5056
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5063
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Error P-Unit semaphore read failed\0A\00", align 1, !dbg !5071
@.str.6 = private unnamed_addr constant [37 x i8] c"Error P-Unit semaphore reset failed\0A\00", align 1, !dbg !5076
@.str.7 = private unnamed_addr constant [13 x i8] c"iosf_mbi_pci\00", align 1, !dbg !5081
@iosf_mbi_pci_ids = internal constant [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 3840, i32 -1, i32 -1, i32 0, i32 0, i64 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 8832, i32 -1, i32 -1, i32 0, i32 0, i64 270, i32 0 }, %struct.pci_device_id { i32 32902, i32 2392, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4464, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5088
@.str.8 = private unnamed_addr constant [32 x i8] c"error: could not enable device\0A\00", align 1, !dbg !5093
@.str.9 = private unnamed_addr constant [9 x i8] c"iosf_mbi\00", align 1, !dbg !5095
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID___addressable_iosf_mbi_read292, ptr @__UNIQUE_ID___addressable_iosf_mbi_write293, ptr @__UNIQUE_ID___addressable_iosf_mbi_modify294, ptr @__UNIQUE_ID___addressable_iosf_mbi_available295, ptr @__UNIQUE_ID___addressable_iosf_mbi_punit_acquire296, ptr @__UNIQUE_ID___addressable_iosf_mbi_punit_release297, ptr @__UNIQUE_ID___addressable_iosf_mbi_block_punit_i2c_access298, ptr @__UNIQUE_ID___addressable_iosf_mbi_unblock_punit_i2c_access299, ptr @__UNIQUE_ID___addressable_iosf_mbi_register_pmic_bus_access_notifier300, ptr @__UNIQUE_ID___addressable_iosf_mbi_unregister_pmic_bus_access_notifier_unlocked301, ptr @__UNIQUE_ID___addressable_iosf_mbi_unregister_pmic_bus_access_notifier302, ptr @__UNIQUE_ID___addressable_iosf_mbi_assert_punit_acquired303, ptr @iosf_mbi_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6305, ptr @__exitcall_iosf_mbi_exit, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_read(i8 noundef zeroext %port, i8 noundef zeroext %opcode, i32 noundef %offset, ptr noundef %mdr) #0 align 16 !dbg !5109 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i8, align 1
  %opcode.addr = alloca i8, align 1
  %offset.addr = alloca i32, align 4
  %mdr.addr = alloca ptr, align 8
  %mcr = alloca i32, align 4
  %mcrx = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store i8 %port, ptr %port.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5113, metadata !DIExpression()), !dbg !5133
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !5114, metadata !DIExpression()), !dbg !5134
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5115, metadata !DIExpression()), !dbg !5135
  store ptr %mdr, ptr %mdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdr.addr, metadata !5116, metadata !DIExpression()), !dbg !5136
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcr) #10, !dbg !5137
  call void @llvm.dbg.declare(metadata ptr %mcr, metadata !5117, metadata !DIExpression()), !dbg !5138
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcrx) #10, !dbg !5137
  call void @llvm.dbg.declare(metadata ptr %mcrx, metadata !5118, metadata !DIExpression()), !dbg !5139
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !5140
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5119, metadata !DIExpression()), !dbg !5141
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5120, metadata !DIExpression()), !dbg !5143
  %0 = load i8, ptr %port.addr, align 1, !dbg !5144
  %conv = zext i8 %0 to i32, !dbg !5144
  %cmp = icmp eq i32 %conv, 6, !dbg !5145
  br i1 %cmp, label %if.then, label %if.end22, !dbg !5146

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5147
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5121, metadata !DIExpression()), !dbg !5147
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5147
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5148
  %tobool = icmp ne i32 %1, 0, !dbg !5148
  %lnot = xor i1 %tobool, true, !dbg !5148
  %lnot2 = xor i1 %lnot, true, !dbg !5148
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5148
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5148
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5148
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5148
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5147

if.then5:                                         ; preds = %if.then
  br label %do.body, !dbg !5148

do.body:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5149
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5125, metadata !DIExpression()), !dbg !5149
  store i32 2305, ptr %__flags, align 4, !dbg !5149
  br label %do.body6, !dbg !5149

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5150

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5150

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5149

do.body7:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5152
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 105, i32 %2, i64 12) #10, !dbg !5152, !srcloc !5154
  br label %do.cond8, !dbg !5152

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5152

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !5149

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !5155

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5155

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5148
  br label %do.cond13, !dbg !5149

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5149

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !5149

if.end:                                           ; preds = %do.end14, %if.then
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5147
  %tobool15 = icmp ne i32 %3, 0, !dbg !5147
  %lnot16 = xor i1 %tobool15, true, !dbg !5147
  %lnot18 = xor i1 %lnot16, true, !dbg !5147
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5147
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5147
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5147
  store i64 %expval21, ptr %tmp, align 8, !dbg !5148
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5157
  %4 = load i64, ptr %tmp, align 8, !dbg !5147
  store i32 -1, ptr %retval, align 4, !dbg !5158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5158

if.end22:                                         ; preds = %entry
  %5 = load i8, ptr %opcode.addr, align 1, !dbg !5159
  %6 = load i8, ptr %port.addr, align 1, !dbg !5160
  %7 = load i32, ptr %offset.addr, align 4, !dbg !5161
  %and = and i32 %7, 255, !dbg !5162
  %conv23 = trunc i32 %and to i8, !dbg !5161
  %call = call i32 @iosf_mbi_form_mcr(i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %conv23) #11, !dbg !5163
  store i32 %call, ptr %mcr, align 4, !dbg !5164
  %8 = load i32, ptr %offset.addr, align 4, !dbg !5165
  %and24 = and i32 %8, -256, !dbg !5166
  store i32 %and24, ptr %mcrx, align 4, !dbg !5167
  br label %do.body25, !dbg !5168

do.body25:                                        ; preds = %if.end22
  br label %do.body26, !dbg !5169

do.body26:                                        ; preds = %do.body25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5128, metadata !DIExpression()), !dbg !5170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5132, metadata !DIExpression()), !dbg !5170
  %cmp27 = icmp eq ptr %__dummy, %__dummy2, !dbg !5170
  %conv28 = zext i1 %cmp27 to i32, !dbg !5170
  store i32 1, ptr %tmp29, align 4, !dbg !5170
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5171
  %9 = load i32, ptr %tmp29, align 4, !dbg !5170
  %call30 = call ptr @spinlock_check(ptr noundef @iosf_mbi_lock) #11, !dbg !5171
  %call31 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call30) #11, !dbg !5171
  store i64 %call31, ptr %flags, align 8, !dbg !5171
  br label %do.cond32, !dbg !5171

do.cond32:                                        ; preds = %do.body26
  br label %do.end33, !dbg !5171

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !5169

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5169

do.end35:                                         ; preds = %do.cond34
  %10 = load i32, ptr %mcrx, align 4, !dbg !5172
  %11 = load i32, ptr %mcr, align 4, !dbg !5173
  %12 = load ptr, ptr %mdr.addr, align 8, !dbg !5174
  %call36 = call i32 @iosf_mbi_pci_read_mdr(i32 noundef %10, i32 noundef %11, ptr noundef %12) #11, !dbg !5175
  store i32 %call36, ptr %ret, align 4, !dbg !5176
  %13 = load i64, ptr %flags, align 8, !dbg !5177
  call void @spin_unlock_irqrestore(ptr noundef @iosf_mbi_lock, i64 noundef %13) #11, !dbg !5178
  %14 = load i32, ptr %ret, align 4, !dbg !5179
  store i32 %14, ptr %retval, align 4, !dbg !5180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5180

cleanup:                                          ; preds = %do.end35, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5181
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !5181
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcrx) #10, !dbg !5181
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcr) #10, !dbg !5181
  %15 = load i32, ptr %retval, align 4, !dbg !5181
  ret i32 %15, !dbg !5181
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iosf_mbi_form_mcr(i8 noundef zeroext %op, i8 noundef zeroext %port, i8 noundef zeroext %offset) #4 align 16 !dbg !5182 {
entry:
  %op.addr = alloca i8, align 1
  %port.addr = alloca i8, align 1
  %offset.addr = alloca i8, align 1
  store i8 %op, ptr %op.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5186, metadata !DIExpression()), !dbg !5189
  store i8 %port, ptr %port.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5187, metadata !DIExpression()), !dbg !5190
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5188, metadata !DIExpression()), !dbg !5191
  %0 = load i8, ptr %op.addr, align 1, !dbg !5192
  %conv = zext i8 %0 to i32, !dbg !5192
  %shl = shl i32 %conv, 24, !dbg !5193
  %1 = load i8, ptr %port.addr, align 1, !dbg !5194
  %conv1 = zext i8 %1 to i32, !dbg !5194
  %shl2 = shl i32 %conv1, 16, !dbg !5195
  %or = or i32 %shl, %shl2, !dbg !5196
  %2 = load i8, ptr %offset.addr, align 1, !dbg !5197
  %conv3 = zext i8 %2 to i32, !dbg !5197
  %shl4 = shl i32 %conv3, 8, !dbg !5198
  %or5 = or i32 %or, %shl4, !dbg !5199
  %or6 = or i32 %or5, 240, !dbg !5200
  ret i32 %or6, !dbg !5201
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5202 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !5207 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5214
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5215
  ret ptr %1, !dbg !5216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iosf_mbi_pci_read_mdr(i32 noundef %mcrx, i32 noundef %mcr, ptr noundef %mdr) #0 align 16 !dbg !5217 {
entry:
  %retval = alloca i32, align 4
  %mcrx.addr = alloca i32, align 4
  %mcr.addr = alloca i32, align 4
  %mdr.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mcrx, ptr %mcrx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mcrx.addr, metadata !5221, metadata !DIExpression()), !dbg !5226
  store i32 %mcr, ptr %mcr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mcr.addr, metadata !5222, metadata !DIExpression()), !dbg !5227
  store ptr %mdr, ptr %mdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mdr.addr, metadata !5223, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5224, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr @mbi_pdev, align 8, !dbg !5231
  %tobool = icmp ne ptr %0, null, !dbg !5231
  br i1 %tobool, label %if.end, label %if.then, !dbg !5233

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5234

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mcrx.addr, align 4, !dbg !5235
  %tobool1 = icmp ne i32 %1, 0, !dbg !5235
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !5237

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @mbi_pdev, align 8, !dbg !5238
  %3 = load i32, ptr %mcrx.addr, align 4, !dbg !5240
  %call = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 216, i32 noundef %3) #11, !dbg !5241
  store i32 %call, ptr %result, align 4, !dbg !5242
  %4 = load i32, ptr %result, align 4, !dbg !5243
  %cmp = icmp slt i32 %4, 0, !dbg !5245
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5246

if.then3:                                         ; preds = %if.then2
  br label %fail_read, !dbg !5247

if.end4:                                          ; preds = %if.then2
  br label %if.end5, !dbg !5248

if.end5:                                          ; preds = %if.end4, %if.end
  %5 = load ptr, ptr @mbi_pdev, align 8, !dbg !5249
  %6 = load i32, ptr %mcr.addr, align 4, !dbg !5250
  %call6 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 208, i32 noundef %6) #11, !dbg !5251
  store i32 %call6, ptr %result, align 4, !dbg !5252
  %7 = load i32, ptr %result, align 4, !dbg !5253
  %cmp7 = icmp slt i32 %7, 0, !dbg !5255
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5256

if.then8:                                         ; preds = %if.end5
  br label %fail_read, !dbg !5257

if.end9:                                          ; preds = %if.end5
  %8 = load ptr, ptr @mbi_pdev, align 8, !dbg !5258
  %9 = load ptr, ptr %mdr.addr, align 8, !dbg !5259
  %call10 = call i32 @pci_read_config_dword(ptr noundef %8, i32 noundef 212, ptr noundef %9) #11, !dbg !5260
  store i32 %call10, ptr %result, align 4, !dbg !5261
  %10 = load i32, ptr %result, align 4, !dbg !5262
  %cmp11 = icmp slt i32 %10, 0, !dbg !5264
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5265

if.then12:                                        ; preds = %if.end9
  br label %fail_read, !dbg !5266

if.end13:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !5267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5267

fail_read:                                        ; preds = %if.then12, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !5225), !dbg !5268
  br label %do.body, !dbg !5269

do.body:                                          ; preds = %fail_read
  br label %do.cond, !dbg !5271

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5271

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr @mbi_pdev, align 8, !dbg !5269
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5269
  %12 = load i32, ptr %result, align 4, !dbg !5269
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.4, i32 noundef %12) #12, !dbg !5269
  %13 = load i32, ptr %result, align 4, !dbg !5273
  %call14 = call i32 @pcibios_err_to_errno(i32 noundef %13) #11, !dbg !5274
  store i32 %call14, ptr %retval, align 4, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

cleanup:                                          ; preds = %do.end, %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !5276
  %14 = load i32, ptr %retval, align 4, !dbg !5276
  ret i32 %14, !dbg !5276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !5277 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5281, metadata !DIExpression()), !dbg !5287
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5282, metadata !DIExpression()), !dbg !5288
  br label %do.body, !dbg !5289

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5283, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5286, metadata !DIExpression()), !dbg !5290
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5290
  %conv = zext i1 %cmp to i32, !dbg !5290
  store i32 1, ptr %tmp, align 4, !dbg !5290
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5291
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5291
  %0 = load i32, ptr %tmp, align 4, !dbg !5290
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5291
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5291
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5291
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #11, !dbg !5291
  br label %do.end, !dbg !5291

do.end:                                           ; preds = %do.body
  ret void, !dbg !5292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_write(i8 noundef zeroext %port, i8 noundef zeroext %opcode, i32 noundef %offset, i32 noundef %mdr) #0 align 16 !dbg !5293 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i8, align 1
  %opcode.addr = alloca i8, align 1
  %offset.addr = alloca i32, align 4
  %mdr.addr = alloca i32, align 4
  %mcr = alloca i32, align 4
  %mcrx = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store i8 %port, ptr %port.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5297, metadata !DIExpression()), !dbg !5317
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !5298, metadata !DIExpression()), !dbg !5318
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5299, metadata !DIExpression()), !dbg !5319
  store i32 %mdr, ptr %mdr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mdr.addr, metadata !5300, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcr) #10, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %mcr, metadata !5301, metadata !DIExpression()), !dbg !5322
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcrx) #10, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %mcrx, metadata !5302, metadata !DIExpression()), !dbg !5323
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5303, metadata !DIExpression()), !dbg !5325
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5304, metadata !DIExpression()), !dbg !5327
  %0 = load i8, ptr %port.addr, align 1, !dbg !5328
  %conv = zext i8 %0 to i32, !dbg !5328
  %cmp = icmp eq i32 %conv, 6, !dbg !5329
  br i1 %cmp, label %if.then, label %if.end22, !dbg !5330

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5305, metadata !DIExpression()), !dbg !5331
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5331
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5332
  %tobool = icmp ne i32 %1, 0, !dbg !5332
  %lnot = xor i1 %tobool, true, !dbg !5332
  %lnot2 = xor i1 %lnot, true, !dbg !5332
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5332
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5332
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5332
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5332
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5331

if.then5:                                         ; preds = %if.then
  br label %do.body, !dbg !5332

do.body:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5333
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5309, metadata !DIExpression()), !dbg !5333
  store i32 2305, ptr %__flags, align 4, !dbg !5333
  br label %do.body6, !dbg !5333

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5334

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5334

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5333

do.body7:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5336
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 128, i32 %2, i64 12) #10, !dbg !5336, !srcloc !5338
  br label %do.cond8, !dbg !5336

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5336

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !5333

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !5339

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5339

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5332
  br label %do.cond13, !dbg !5333

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5333

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !5333

if.end:                                           ; preds = %do.end14, %if.then
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5331
  %tobool15 = icmp ne i32 %3, 0, !dbg !5331
  %lnot16 = xor i1 %tobool15, true, !dbg !5331
  %lnot18 = xor i1 %lnot16, true, !dbg !5331
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5331
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5331
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5331
  store i64 %expval21, ptr %tmp, align 8, !dbg !5332
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5341
  %4 = load i64, ptr %tmp, align 8, !dbg !5331
  store i32 -1, ptr %retval, align 4, !dbg !5342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5342

if.end22:                                         ; preds = %entry
  %5 = load i8, ptr %opcode.addr, align 1, !dbg !5343
  %6 = load i8, ptr %port.addr, align 1, !dbg !5344
  %7 = load i32, ptr %offset.addr, align 4, !dbg !5345
  %and = and i32 %7, 255, !dbg !5346
  %conv23 = trunc i32 %and to i8, !dbg !5345
  %call = call i32 @iosf_mbi_form_mcr(i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %conv23) #11, !dbg !5347
  store i32 %call, ptr %mcr, align 4, !dbg !5348
  %8 = load i32, ptr %offset.addr, align 4, !dbg !5349
  %and24 = and i32 %8, -256, !dbg !5350
  store i32 %and24, ptr %mcrx, align 4, !dbg !5351
  br label %do.body25, !dbg !5352

do.body25:                                        ; preds = %if.end22
  br label %do.body26, !dbg !5353

do.body26:                                        ; preds = %do.body25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5312, metadata !DIExpression()), !dbg !5354
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5316, metadata !DIExpression()), !dbg !5354
  %cmp27 = icmp eq ptr %__dummy, %__dummy2, !dbg !5354
  %conv28 = zext i1 %cmp27 to i32, !dbg !5354
  store i32 1, ptr %tmp29, align 4, !dbg !5354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5355
  %9 = load i32, ptr %tmp29, align 4, !dbg !5354
  %call30 = call ptr @spinlock_check(ptr noundef @iosf_mbi_lock) #11, !dbg !5355
  %call31 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call30) #11, !dbg !5355
  store i64 %call31, ptr %flags, align 8, !dbg !5355
  br label %do.cond32, !dbg !5355

do.cond32:                                        ; preds = %do.body26
  br label %do.end33, !dbg !5355

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !5353

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5353

do.end35:                                         ; preds = %do.cond34
  %10 = load i32, ptr %mcrx, align 4, !dbg !5356
  %11 = load i32, ptr %mcr, align 4, !dbg !5357
  %12 = load i32, ptr %mdr.addr, align 4, !dbg !5358
  %call36 = call i32 @iosf_mbi_pci_write_mdr(i32 noundef %10, i32 noundef %11, i32 noundef %12) #11, !dbg !5359
  store i32 %call36, ptr %ret, align 4, !dbg !5360
  %13 = load i64, ptr %flags, align 8, !dbg !5361
  call void @spin_unlock_irqrestore(ptr noundef @iosf_mbi_lock, i64 noundef %13) #11, !dbg !5362
  %14 = load i32, ptr %ret, align 4, !dbg !5363
  store i32 %14, ptr %retval, align 4, !dbg !5364
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5364

cleanup:                                          ; preds = %do.end35, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcrx) #10, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcr) #10, !dbg !5365
  %15 = load i32, ptr %retval, align 4, !dbg !5365
  ret i32 %15, !dbg !5365
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iosf_mbi_pci_write_mdr(i32 noundef %mcrx, i32 noundef %mcr, i32 noundef %mdr) #0 align 16 !dbg !5366 {
entry:
  %retval = alloca i32, align 4
  %mcrx.addr = alloca i32, align 4
  %mcr.addr = alloca i32, align 4
  %mdr.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %mcrx, ptr %mcrx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mcrx.addr, metadata !5370, metadata !DIExpression()), !dbg !5375
  store i32 %mcr, ptr %mcr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mcr.addr, metadata !5371, metadata !DIExpression()), !dbg !5376
  store i32 %mdr, ptr %mdr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mdr.addr, metadata !5372, metadata !DIExpression()), !dbg !5377
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5373, metadata !DIExpression()), !dbg !5379
  %0 = load ptr, ptr @mbi_pdev, align 8, !dbg !5380
  %tobool = icmp ne ptr %0, null, !dbg !5380
  br i1 %tobool, label %if.end, label %if.then, !dbg !5382

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @mbi_pdev, align 8, !dbg !5384
  %2 = load i32, ptr %mdr.addr, align 4, !dbg !5385
  %call = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 212, i32 noundef %2) #11, !dbg !5386
  store i32 %call, ptr %result, align 4, !dbg !5387
  %3 = load i32, ptr %result, align 4, !dbg !5388
  %cmp = icmp slt i32 %3, 0, !dbg !5390
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5391

if.then1:                                         ; preds = %if.end
  br label %fail_write, !dbg !5392

if.end2:                                          ; preds = %if.end
  %4 = load i32, ptr %mcrx.addr, align 4, !dbg !5393
  %tobool3 = icmp ne i32 %4, 0, !dbg !5393
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !5395

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr @mbi_pdev, align 8, !dbg !5396
  %6 = load i32, ptr %mcrx.addr, align 4, !dbg !5398
  %call5 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 216, i32 noundef %6) #11, !dbg !5399
  store i32 %call5, ptr %result, align 4, !dbg !5400
  %7 = load i32, ptr %result, align 4, !dbg !5401
  %cmp6 = icmp slt i32 %7, 0, !dbg !5403
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5404

if.then7:                                         ; preds = %if.then4
  br label %fail_write, !dbg !5405

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !5406

if.end9:                                          ; preds = %if.end8, %if.end2
  %8 = load ptr, ptr @mbi_pdev, align 8, !dbg !5407
  %9 = load i32, ptr %mcr.addr, align 4, !dbg !5408
  %call10 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 208, i32 noundef %9) #11, !dbg !5409
  store i32 %call10, ptr %result, align 4, !dbg !5410
  %10 = load i32, ptr %result, align 4, !dbg !5411
  %cmp11 = icmp slt i32 %10, 0, !dbg !5413
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5414

if.then12:                                        ; preds = %if.end9
  br label %fail_write, !dbg !5415

if.end13:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !5416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5416

fail_write:                                       ; preds = %if.then12, %if.then7, %if.then1
  call void @llvm.dbg.label(metadata !5374), !dbg !5417
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %fail_write
  br label %do.cond, !dbg !5420

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5420

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr @mbi_pdev, align 8, !dbg !5418
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5418
  %12 = load i32, ptr %result, align 4, !dbg !5418
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.4, i32 noundef %12) #12, !dbg !5418
  %13 = load i32, ptr %result, align 4, !dbg !5422
  %call14 = call i32 @pcibios_err_to_errno(i32 noundef %13) #11, !dbg !5423
  store i32 %call14, ptr %retval, align 4, !dbg !5424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5424

cleanup:                                          ; preds = %do.end, %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !5425
  %14 = load i32, ptr %retval, align 4, !dbg !5425
  ret i32 %14, !dbg !5425
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_modify(i8 noundef zeroext %port, i8 noundef zeroext %opcode, i32 noundef %offset, i32 noundef %mdr, i32 noundef %mask) #0 align 16 !dbg !5426 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca i8, align 1
  %opcode.addr = alloca i8, align 1
  %offset.addr = alloca i32, align 4
  %mdr.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %mcr = alloca i32, align 4
  %mcrx = alloca i32, align 4
  %value = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store i8 %port, ptr %port.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5430, metadata !DIExpression()), !dbg !5452
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !5431, metadata !DIExpression()), !dbg !5453
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5432, metadata !DIExpression()), !dbg !5454
  store i32 %mdr, ptr %mdr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mdr.addr, metadata !5433, metadata !DIExpression()), !dbg !5455
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5434, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcr) #10, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %mcr, metadata !5435, metadata !DIExpression()), !dbg !5458
  call void @llvm.lifetime.start.p0(i64 4, ptr %mcrx) #10, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %mcrx, metadata !5436, metadata !DIExpression()), !dbg !5459
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #10, !dbg !5460
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5437, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #10, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5438, metadata !DIExpression()), !dbg !5463
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5464
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5439, metadata !DIExpression()), !dbg !5465
  %0 = load i8, ptr %port.addr, align 1, !dbg !5466
  %conv = zext i8 %0 to i32, !dbg !5466
  %cmp = icmp eq i32 %conv, 6, !dbg !5467
  br i1 %cmp, label %if.then, label %if.end22, !dbg !5468

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5469
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5440, metadata !DIExpression()), !dbg !5469
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5469
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5470
  %tobool = icmp ne i32 %1, 0, !dbg !5470
  %lnot = xor i1 %tobool, true, !dbg !5470
  %lnot2 = xor i1 %lnot, true, !dbg !5470
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5470
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5470
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5470
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5470
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !5469

if.then5:                                         ; preds = %if.then
  br label %do.body, !dbg !5470

do.body:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5471
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5444, metadata !DIExpression()), !dbg !5471
  store i32 2305, ptr %__flags, align 4, !dbg !5471
  br label %do.body6, !dbg !5471

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !5472

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5472

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5471

do.body7:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5474
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 152, i32 %2, i64 12) #10, !dbg !5474, !srcloc !5476
  br label %do.cond8, !dbg !5474

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5474

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !5471

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !5477

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5477

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5470
  br label %do.cond13, !dbg !5471

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5471

do.end14:                                         ; preds = %do.cond13
  br label %if.end, !dbg !5471

if.end:                                           ; preds = %do.end14, %if.then
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5469
  %tobool15 = icmp ne i32 %3, 0, !dbg !5469
  %lnot16 = xor i1 %tobool15, true, !dbg !5469
  %lnot18 = xor i1 %lnot16, true, !dbg !5469
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5469
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5469
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5469
  store i64 %expval21, ptr %tmp, align 8, !dbg !5470
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5479
  %4 = load i64, ptr %tmp, align 8, !dbg !5469
  store i32 -1, ptr %retval, align 4, !dbg !5480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5480

if.end22:                                         ; preds = %entry
  %5 = load i8, ptr %opcode.addr, align 1, !dbg !5481
  %6 = load i8, ptr %port.addr, align 1, !dbg !5482
  %7 = load i32, ptr %offset.addr, align 4, !dbg !5483
  %and = and i32 %7, 255, !dbg !5484
  %conv23 = trunc i32 %and to i8, !dbg !5483
  %call = call i32 @iosf_mbi_form_mcr(i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %conv23) #11, !dbg !5485
  store i32 %call, ptr %mcr, align 4, !dbg !5486
  %8 = load i32, ptr %offset.addr, align 4, !dbg !5487
  %and24 = and i32 %8, -256, !dbg !5488
  store i32 %and24, ptr %mcrx, align 4, !dbg !5489
  br label %do.body25, !dbg !5490

do.body25:                                        ; preds = %if.end22
  br label %do.body26, !dbg !5491

do.body26:                                        ; preds = %do.body25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #10, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5447, metadata !DIExpression()), !dbg !5492
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #10, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5451, metadata !DIExpression()), !dbg !5492
  %cmp27 = icmp eq ptr %__dummy, %__dummy2, !dbg !5492
  %conv28 = zext i1 %cmp27 to i32, !dbg !5492
  store i32 1, ptr %tmp29, align 4, !dbg !5492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #10, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #10, !dbg !5493
  %9 = load i32, ptr %tmp29, align 4, !dbg !5492
  %call30 = call ptr @spinlock_check(ptr noundef @iosf_mbi_lock) #11, !dbg !5493
  %call31 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call30) #11, !dbg !5493
  store i64 %call31, ptr %flags, align 8, !dbg !5493
  br label %do.cond32, !dbg !5493

do.cond32:                                        ; preds = %do.body26
  br label %do.end33, !dbg !5493

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !5491

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5491

do.end35:                                         ; preds = %do.cond34
  %10 = load i32, ptr %mcrx, align 4, !dbg !5494
  %11 = load i32, ptr %mcr, align 4, !dbg !5495
  %and36 = and i32 %11, -16777217, !dbg !5496
  %call37 = call i32 @iosf_mbi_pci_read_mdr(i32 noundef %10, i32 noundef %and36, ptr noundef %value) #11, !dbg !5497
  store i32 %call37, ptr %ret, align 4, !dbg !5498
  %12 = load i32, ptr %ret, align 4, !dbg !5499
  %cmp38 = icmp slt i32 %12, 0, !dbg !5501
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5502

if.then40:                                        ; preds = %do.end35
  %13 = load i64, ptr %flags, align 8, !dbg !5503
  call void @spin_unlock_irqrestore(ptr noundef @iosf_mbi_lock, i64 noundef %13) #11, !dbg !5505
  %14 = load i32, ptr %ret, align 4, !dbg !5506
  store i32 %14, ptr %retval, align 4, !dbg !5507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5507

if.end41:                                         ; preds = %do.end35
  %15 = load i32, ptr %mask.addr, align 4, !dbg !5508
  %not = xor i32 %15, -1, !dbg !5509
  %16 = load i32, ptr %value, align 4, !dbg !5510
  %and42 = and i32 %16, %not, !dbg !5510
  store i32 %and42, ptr %value, align 4, !dbg !5510
  %17 = load i32, ptr %mask.addr, align 4, !dbg !5511
  %18 = load i32, ptr %mdr.addr, align 4, !dbg !5512
  %and43 = and i32 %18, %17, !dbg !5512
  store i32 %and43, ptr %mdr.addr, align 4, !dbg !5512
  %19 = load i32, ptr %mdr.addr, align 4, !dbg !5513
  %20 = load i32, ptr %value, align 4, !dbg !5514
  %or = or i32 %20, %19, !dbg !5514
  store i32 %or, ptr %value, align 4, !dbg !5514
  %21 = load i32, ptr %mcrx, align 4, !dbg !5515
  %22 = load i32, ptr %mcr, align 4, !dbg !5516
  %or44 = or i32 %22, 16777216, !dbg !5517
  %23 = load i32, ptr %value, align 4, !dbg !5518
  %call45 = call i32 @iosf_mbi_pci_write_mdr(i32 noundef %21, i32 noundef %or44, i32 noundef %23) #11, !dbg !5519
  store i32 %call45, ptr %ret, align 4, !dbg !5520
  %24 = load i64, ptr %flags, align 8, !dbg !5521
  call void @spin_unlock_irqrestore(ptr noundef @iosf_mbi_lock, i64 noundef %24) #11, !dbg !5522
  %25 = load i32, ptr %ret, align 4, !dbg !5523
  store i32 %25, ptr %retval, align 4, !dbg !5524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5524

cleanup:                                          ; preds = %if.end41, %if.then40, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5525
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #10, !dbg !5525
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #10, !dbg !5525
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcrx) #10, !dbg !5525
  call void @llvm.lifetime.end.p0(i64 4, ptr %mcr) #10, !dbg !5525
  %26 = load i32, ptr %retval, align 4, !dbg !5525
  ret i32 %26, !dbg !5525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @iosf_mbi_available() #0 align 16 !dbg !5526 {
entry:
  %0 = load ptr, ptr @mbi_pdev, align 8, !dbg !5527
  %tobool = icmp ne ptr %0, null, !dbg !5527
  ret i1 %tobool, !dbg !5528
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iosf_mbi_punit_acquire() #0 align 16 !dbg !5529 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @mutex_lock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5552
  br label %while.cond, !dbg !5553

while.cond:                                       ; preds = %do.end6, %entry
  %0 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5554
  %cmp = icmp ne i32 %0, 0, !dbg !5555
  br i1 %cmp, label %while.body, label %while.end, !dbg !5553

while.body:                                       ; preds = %while.cond
  call void @mutex_unlock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5556
  br label %do.body, !dbg !5557

do.body:                                          ; preds = %while.body
  br label %do.body1, !dbg !5558

do.body1:                                         ; preds = %do.body
  call void @might_resched() #11, !dbg !5559
  br label %do.end, !dbg !5559

do.end:                                           ; preds = %do.body1
  %1 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5561
  %cmp2 = icmp eq i32 %1, 0, !dbg !5561
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5558

if.then:                                          ; preds = %do.end
  br label %do.end6, !dbg !5561

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #10, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5531, metadata !DIExpression()), !dbg !5563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #10, !dbg !5563
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5546, metadata !DIExpression()), !dbg !5563
  store i64 0, ptr %__ret, align 8, !dbg !5563
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #11, !dbg !5563
  br label %for.cond, !dbg !5563

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #10, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5547, metadata !DIExpression()), !dbg !5564
  %call = call i64 @prepare_to_wait_event(ptr noundef @iosf_mbi_pmic_access_waitq, ptr noundef %__wq_entry, i32 noundef 2) #11, !dbg !5564
  store i64 %call, ptr %__int, align 8, !dbg !5564
  %2 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5565
  %cmp3 = icmp eq i32 %2, 0, !dbg !5565
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !5564

if.then4:                                         ; preds = %for.cond
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

if.end5:                                          ; preds = %for.cond
  call void @schedule() #11, !dbg !5564
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5567
  br label %cleanup, !dbg !5567

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #10, !dbg !5567
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5567, !llvm.loop !5568

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @iosf_mbi_pmic_access_waitq, ptr noundef %__wq_entry) #11, !dbg !5563
  br label %__out, !dbg !5563

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5551), !dbg !5563
  %3 = load i64, ptr %__ret, align 8, !dbg !5563
  store i64 %3, ptr %tmp, align 8, !dbg !5563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #10, !dbg !5558
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #10, !dbg !5558
  %4 = load i64, ptr %tmp, align 8, !dbg !5563
  br label %do.end6, !dbg !5558

do.end6:                                          ; preds = %__out, %if.then
  call void @mutex_lock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5571
  br label %while.cond, !dbg !5553, !llvm.loop !5572

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5575
  %inc = add i32 %5, 1, !dbg !5575
  store i32 %inc, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5575
  call void @mutex_unlock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5576
  ret void, !dbg !5577

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5578 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5582 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !5065 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5583
  %0 = load ptr, ptr %tmp, align 8, !dbg !5583
  %call = call i32 %0() #11, !dbg !5585
  ret void, !dbg !5586
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5587 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5590 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5594 dso_local void @schedule() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5595 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iosf_mbi_punit_release() #0 align 16 !dbg !5598 {
entry:
  %do_wakeup = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %do_wakeup) #10, !dbg !5601
  call void @llvm.dbg.declare(metadata ptr %do_wakeup, metadata !5600, metadata !DIExpression()), !dbg !5602
  call void @mutex_lock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5603
  %0 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5604
  %dec = add i32 %0, -1, !dbg !5604
  store i32 %dec, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5604
  %1 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5605
  %cmp = icmp eq i32 %1, 0, !dbg !5606
  %frombool = zext i1 %cmp to i8, !dbg !5607
  store i8 %frombool, ptr %do_wakeup, align 1, !dbg !5607
  call void @mutex_unlock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5608
  %2 = load i8, ptr %do_wakeup, align 1, !dbg !5609, !range !5611, !noundef !561
  %tobool = trunc i8 %2 to i1, !dbg !5609
  br i1 %tobool, label %if.then, label %if.end, !dbg !5612

if.then:                                          ; preds = %entry
  %call = call i32 @__wake_up(ptr noundef @iosf_mbi_pmic_access_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11, !dbg !5613
  br label %if.end, !dbg !5613

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr %do_wakeup) #10, !dbg !5614
  ret void, !dbg !5614
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5615 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_block_punit_i2c_access() #0 align 16 !dbg !5618 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %ret = alloca i32, align 4
  %sem = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp42 = alloca i64, align 8
  %__ret_warn_on80 = alloca i32, align 4
  %__flags96 = alloca i32, align 4
  %tmp109 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5620, metadata !DIExpression()), !dbg !5649
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5621, metadata !DIExpression()), !dbg !5650
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5651
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5622, metadata !DIExpression()), !dbg !5652
  store i32 0, ptr %ret, align 4, !dbg !5652
  call void @llvm.lifetime.start.p0(i64 4, ptr %sem) #10, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %sem, metadata !5623, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5624, metadata !DIExpression()), !dbg !5655
  %0 = load ptr, ptr @mbi_pdev, align 8, !dbg !5655
  %tobool = icmp ne ptr %0, null, !dbg !5655
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5655

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr @iosf_mbi_sem_address, align 4, !dbg !5655
  %tobool1 = icmp ne i32 %1, 0, !dbg !5655
  %lnot = xor i1 %tobool1, true, !dbg !5655
  br label %lor.end, !dbg !5655

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !5655
  %lnot3 = xor i1 %lnot2, true, !dbg !5655
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5655
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5655
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5656
  %tobool4 = icmp ne i32 %3, 0, !dbg !5656
  %lnot5 = xor i1 %tobool4, true, !dbg !5656
  %lnot7 = xor i1 %lnot5, true, !dbg !5656
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5656
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5656
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5656
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5656
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5655

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5656

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5627, metadata !DIExpression()), !dbg !5657
  store i32 2305, ptr %__flags, align 4, !dbg !5657
  br label %do.body10, !dbg !5657

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5658

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5658

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5657

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5660
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 318, i32 %4, i64 12) #10, !dbg !5660, !srcloc !5662
  br label %do.cond12, !dbg !5660

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5660

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5657

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5663

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5663

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5656
  br label %do.cond17, !dbg !5657

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5657

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5657

if.end:                                           ; preds = %do.end18, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5655
  %tobool19 = icmp ne i32 %5, 0, !dbg !5655
  %lnot20 = xor i1 %tobool19, true, !dbg !5655
  %lnot22 = xor i1 %lnot20, true, !dbg !5655
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5655
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5655
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5655
  store i64 %expval25, ptr %tmp, align 8, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5665
  %6 = load i64, ptr %tmp, align 8, !dbg !5655
  %tobool26 = icmp ne i64 %6, 0, !dbg !5665
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5666

if.then27:                                        ; preds = %if.end
  store i32 -6, ptr %retval, align 4, !dbg !5667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5667

if.end28:                                         ; preds = %if.end
  call void @mutex_lock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5668
  br label %while.cond, !dbg !5669

while.cond:                                       ; preds = %do.end44, %if.end28
  %7 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5670
  %cmp = icmp ne i32 %7, 0, !dbg !5671
  br i1 %cmp, label %while.body, label %while.end, !dbg !5669

while.body:                                       ; preds = %while.cond
  call void @mutex_unlock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5672
  br label %do.body30, !dbg !5673

do.body30:                                        ; preds = %while.body
  br label %do.body31, !dbg !5674

do.body31:                                        ; preds = %do.body30
  call void @might_resched() #11, !dbg !5675
  br label %do.cond32, !dbg !5675

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5675

do.end33:                                         ; preds = %do.cond32
  %8 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5677
  %cmp34 = icmp eq i32 %8, 0, !dbg !5677
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5674

if.then36:                                        ; preds = %do.end33
  br label %do.end44, !dbg !5677

if.end37:                                         ; preds = %do.end33
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #10, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5630, metadata !DIExpression()), !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #10, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5634, metadata !DIExpression()), !dbg !5679
  store i64 0, ptr %__ret, align 8, !dbg !5679
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #11, !dbg !5679
  br label %for.cond, !dbg !5679

for.cond:                                         ; preds = %cleanup.cont, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #10, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5635, metadata !DIExpression()), !dbg !5680
  %call = call i64 @prepare_to_wait_event(ptr noundef @iosf_mbi_pmic_access_waitq, ptr noundef %__wq_entry, i32 noundef 2) #11, !dbg !5680
  store i64 %call, ptr %__int, align 8, !dbg !5680
  %9 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5681
  %cmp38 = icmp eq i32 %9, 0, !dbg !5681
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !5680

if.then40:                                        ; preds = %for.cond
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5681

if.end41:                                         ; preds = %for.cond
  call void @schedule() #11, !dbg !5680
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5683
  br label %cleanup, !dbg !5683

cleanup:                                          ; preds = %if.end41, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #10, !dbg !5683
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5683, !llvm.loop !5684

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @iosf_mbi_pmic_access_waitq, ptr noundef %__wq_entry) #11, !dbg !5679
  br label %__out, !dbg !5679

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !5639), !dbg !5679
  %10 = load i64, ptr %__ret, align 8, !dbg !5679
  store i64 %10, ptr %tmp42, align 8, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #10, !dbg !5674
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #10, !dbg !5674
  %11 = load i64, ptr %tmp42, align 8, !dbg !5679
  br label %do.cond43, !dbg !5674

do.cond43:                                        ; preds = %__out
  br label %do.end44, !dbg !5674

do.end44:                                         ; preds = %do.cond43, %if.then36
  call void @mutex_lock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5686
  br label %while.cond, !dbg !5669, !llvm.loop !5687

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5689
  %cmp45 = icmp ugt i32 %12, 0, !dbg !5691
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !5692

if.then47:                                        ; preds = %while.end
  br label %success, !dbg !5693

if.end48:                                         ; preds = %while.end
  %call49 = call i32 @blocking_notifier_call_chain(ptr noundef @iosf_mbi_pmic_bus_access_notifier, i64 noundef 1, ptr noundef null) #11, !dbg !5694
  call void @cpu_latency_qos_update_request(ptr noundef @iosf_mbi_pm_qos, i32 noundef 0) #11, !dbg !5695
  %13 = load i32, ptr @iosf_mbi_sem_address, align 4, !dbg !5696
  %call50 = call i32 @iosf_mbi_write(i8 noundef zeroext 4, i8 noundef zeroext 17, i32 noundef %13, i32 noundef 2) #11, !dbg !5697
  store i32 %call50, ptr %ret, align 4, !dbg !5698
  %14 = load i32, ptr %ret, align 4, !dbg !5699
  %tobool51 = icmp ne i32 %14, 0, !dbg !5699
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !5701

if.then52:                                        ; preds = %if.end48
  br label %do.body53, !dbg !5702

do.body53:                                        ; preds = %if.then52
  br label %do.cond54, !dbg !5705

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !5705

do.end55:                                         ; preds = %do.cond54
  %15 = load ptr, ptr @mbi_pdev, align 8, !dbg !5702
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37, !dbg !5702
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.1) #12, !dbg !5702
  br label %error, !dbg !5707

if.end56:                                         ; preds = %if.end48
  %16 = load volatile i64, ptr @jiffies, align 64, !dbg !5708
  store i64 %16, ptr %start, align 8, !dbg !5709
  %17 = load i64, ptr %start, align 8, !dbg !5710
  %call57 = call i64 @msecs_to_jiffies(i32 noundef 500) #11, !dbg !5711
  %add = add i64 %17, %call57, !dbg !5712
  store i64 %add, ptr %end, align 8, !dbg !5713
  br label %do.body58, !dbg !5714

do.body58:                                        ; preds = %do.cond64, %if.end56
  %call59 = call i32 @iosf_mbi_get_sem(ptr noundef %sem) #11, !dbg !5715
  store i32 %call59, ptr %ret, align 4, !dbg !5717
  %18 = load i32, ptr %ret, align 4, !dbg !5718
  %tobool60 = icmp ne i32 %18, 0, !dbg !5718
  br i1 %tobool60, label %if.end63, label %land.lhs.true, !dbg !5720

land.lhs.true:                                    ; preds = %do.body58
  %19 = load i32, ptr %sem, align 4, !dbg !5721
  %tobool61 = icmp ne i32 %19, 0, !dbg !5721
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !5722

if.then62:                                        ; preds = %land.lhs.true
  %20 = load volatile i64, ptr @jiffies, align 64, !dbg !5723
  store i64 %20, ptr @iosf_mbi_sem_acquired, align 8, !dbg !5725
  br label %success, !dbg !5726

if.end63:                                         ; preds = %land.lhs.true, %do.body58
  call void @usleep_range(i64 noundef 1000, i64 noundef 2000) #11, !dbg !5727
  br label %do.cond64, !dbg !5728

do.cond64:                                        ; preds = %if.end63
  %21 = load volatile i64, ptr @jiffies, align 64, !dbg !5729
  %22 = load i64, ptr %end, align 8, !dbg !5729
  %sub = sub i64 %21, %22, !dbg !5729
  %cmp65 = icmp slt i64 %sub, 0, !dbg !5729
  br i1 %cmp65, label %do.body58, label %do.end67, !dbg !5728, !llvm.loop !5730

do.end67:                                         ; preds = %do.cond64
  store i32 -110, ptr %ret, align 4, !dbg !5732
  br label %do.body68, !dbg !5733

do.body68:                                        ; preds = %do.end67
  br label %do.cond69, !dbg !5735

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !5735

do.end70:                                         ; preds = %do.cond69
  %23 = load ptr, ptr @mbi_pdev, align 8, !dbg !5733
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 37, !dbg !5733
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef @.str.2) #12, !dbg !5733
  br label %error, !dbg !5737

error:                                            ; preds = %do.end70, %do.end55
  call void @llvm.dbg.label(metadata !5640), !dbg !5738
  call void @iosf_mbi_reset_semaphore() #11, !dbg !5739
  %call72 = call i32 @iosf_mbi_get_sem(ptr noundef %sem) #11, !dbg !5740
  %tobool73 = icmp ne i32 %call72, 0, !dbg !5740
  br i1 %tobool73, label %if.end79, label %if.then74, !dbg !5742

if.then74:                                        ; preds = %error
  br label %do.body75, !dbg !5743

do.body75:                                        ; preds = %if.then74
  br label %do.cond76, !dbg !5745

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !5745

do.end77:                                         ; preds = %do.cond76
  %24 = load ptr, ptr @mbi_pdev, align 8, !dbg !5743
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 37, !dbg !5743
  %25 = load i32, ptr %sem, align 4, !dbg !5743
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef @.str.3, i32 noundef %25) #12, !dbg !5743
  br label %if.end79, !dbg !5747

if.end79:                                         ; preds = %do.end77, %error
  br label %success, !dbg !5748

success:                                          ; preds = %if.end79, %if.then62, %if.then47
  call void @llvm.dbg.label(metadata !5641), !dbg !5749
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on80) #10, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on80, metadata !5642, metadata !DIExpression()), !dbg !5750
  %26 = load i32, ptr %ret, align 4, !dbg !5750
  %tobool81 = icmp ne i32 %26, 0, !dbg !5750
  %lnot82 = xor i1 %tobool81, true, !dbg !5750
  %lnot84 = xor i1 %lnot82, true, !dbg !5750
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !5750
  store i32 %lnot.ext85, ptr %__ret_warn_on80, align 4, !dbg !5750
  %27 = load i32, ptr %__ret_warn_on80, align 4, !dbg !5751
  %tobool86 = icmp ne i32 %27, 0, !dbg !5751
  %lnot87 = xor i1 %tobool86, true, !dbg !5751
  %lnot89 = xor i1 %lnot87, true, !dbg !5751
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !5751
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !5751
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !5751
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !5751
  br i1 %tobool93, label %if.then94, label %if.end108, !dbg !5750

if.then94:                                        ; preds = %success
  br label %do.body95, !dbg !5751

do.body95:                                        ; preds = %if.then94
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags96) #10, !dbg !5752
  call void @llvm.dbg.declare(metadata ptr %__flags96, metadata !5645, metadata !DIExpression()), !dbg !5752
  store i32 2305, ptr %__flags96, align 4, !dbg !5752
  br label %do.body97, !dbg !5752

do.body97:                                        ; preds = %do.body95
  br label %do.cond98, !dbg !5753

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !5753

do.end99:                                         ; preds = %do.cond98
  br label %do.body100, !dbg !5752

do.body100:                                       ; preds = %do.end99
  %28 = load i32, ptr %__flags96, align 4, !dbg !5755
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 373, i32 %28, i64 12) #10, !dbg !5755, !srcloc !5757
  br label %do.cond101, !dbg !5755

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !5755

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !5752

do.body103:                                       ; preds = %do.end102
  br label %do.cond104, !dbg !5758

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !5758

do.end105:                                        ; preds = %do.cond104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags96) #10, !dbg !5751
  br label %do.cond106, !dbg !5752

do.cond106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !5752

do.end107:                                        ; preds = %do.cond106
  br label %if.end108, !dbg !5752

if.end108:                                        ; preds = %do.end107, %success
  %29 = load i32, ptr %__ret_warn_on80, align 4, !dbg !5750
  %tobool110 = icmp ne i32 %29, 0, !dbg !5750
  %lnot111 = xor i1 %tobool110, true, !dbg !5750
  %lnot113 = xor i1 %lnot111, true, !dbg !5750
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !5750
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !5750
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 0), !dbg !5750
  store i64 %expval116, ptr %tmp109, align 8, !dbg !5751
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on80) #10, !dbg !5760
  %30 = load i64, ptr %tmp109, align 8, !dbg !5750
  %tobool117 = icmp ne i64 %30, 0, !dbg !5760
  br i1 %tobool117, label %if.end119, label %if.then118, !dbg !5761

if.then118:                                       ; preds = %if.end108
  %31 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5762
  %inc = add i32 %31, 1, !dbg !5762
  store i32 %inc, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5762
  br label %if.end119, !dbg !5763

if.end119:                                        ; preds = %if.then118, %if.end108
  call void @mutex_unlock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5764
  %32 = load i32, ptr %ret, align 4, !dbg !5765
  store i32 %32, ptr %retval, align 4, !dbg !5766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5766

cleanup120:                                       ; preds = %if.end119, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %sem) #10, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10, !dbg !5767
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10, !dbg !5767
  %33 = load i32, ptr %retval, align 4, !dbg !5767
  ret i32 %33, !dbg !5767

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5768 dso_local i32 @blocking_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5771 dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) #5

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5775 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #6 align 16 !dbg !5779 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  %0 = load i32, ptr %m.addr, align 4, !dbg !5786
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5788
  br i1 %1, label %if.then, label %if.else, !dbg !5789

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !5790
  %cmp = icmp slt i32 %2, 0, !dbg !5793
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5794

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !5795
  br label %return, !dbg !5795

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !5796
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #11, !dbg !5797
  store i64 %call, ptr %retval, align 8, !dbg !5798
  br label %return, !dbg !5798

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !5799
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #11, !dbg !5801
  store i64 %call2, ptr %retval, align 8, !dbg !5802
  br label %return, !dbg !5802

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !5803
  ret i64 %5, !dbg !5803
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iosf_mbi_get_sem(ptr noundef %sem) #0 align 16 !dbg !5804 {
entry:
  %retval = alloca i32, align 4
  %sem.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sem, ptr %sem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sem.addr, metadata !5808, metadata !DIExpression()), !dbg !5810
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5811
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5809, metadata !DIExpression()), !dbg !5812
  %0 = load i32, ptr @iosf_mbi_sem_address, align 4, !dbg !5813
  %1 = load ptr, ptr %sem.addr, align 8, !dbg !5814
  %call = call i32 @iosf_mbi_read(i8 noundef zeroext 4, i8 noundef zeroext 16, i32 noundef %0, ptr noundef %1) #11, !dbg !5815
  store i32 %call, ptr %ret, align 4, !dbg !5816
  %2 = load i32, ptr %ret, align 4, !dbg !5817
  %tobool = icmp ne i32 %2, 0, !dbg !5817
  br i1 %tobool, label %if.then, label %if.end, !dbg !5819

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5820

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5823

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5823

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr @mbi_pdev, align 8, !dbg !5820
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 37, !dbg !5820
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.5) #12, !dbg !5820
  %4 = load i32, ptr %ret, align 4, !dbg !5825
  store i32 %4, ptr %retval, align 4, !dbg !5826
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5826

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %sem.addr, align 8, !dbg !5827
  %6 = load i32, ptr %5, align 4, !dbg !5828
  %conv = zext i32 %6 to i64, !dbg !5828
  %and = and i64 %conv, 1, !dbg !5828
  %conv1 = trunc i64 %and to i32, !dbg !5828
  store i32 %conv1, ptr %5, align 4, !dbg !5828
  store i32 0, ptr %retval, align 4, !dbg !5829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5829

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5830
  %7 = load i32, ptr %retval, align 4, !dbg !5830
  ret i32 %7, !dbg !5830
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usleep_range(i64 noundef %min, i64 noundef %max) #4 align 16 !dbg !5831 {
entry:
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  store i64 %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !5836, metadata !DIExpression()), !dbg !5838
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5837, metadata !DIExpression()), !dbg !5839
  %0 = load i64, ptr %min.addr, align 8, !dbg !5840
  %1 = load i64, ptr %max.addr, align 8, !dbg !5841
  call void @usleep_range_state(i64 noundef %0, i64 noundef %1, i32 noundef 2) #11, !dbg !5842
  ret void, !dbg !5843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosf_mbi_reset_semaphore() #0 align 16 !dbg !5844 {
entry:
  %0 = load i32, ptr @iosf_mbi_sem_address, align 4, !dbg !5845
  %call = call i32 @iosf_mbi_modify(i8 noundef zeroext 4, i8 noundef zeroext 16, i32 noundef %0, i32 noundef 0, i32 noundef 1) #11, !dbg !5847
  %tobool = icmp ne i32 %call, 0, !dbg !5847
  br i1 %tobool, label %if.then, label %if.end, !dbg !5848

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5849

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5851

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr @mbi_pdev, align 8, !dbg !5849
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !5849
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.6) #12, !dbg !5849
  br label %if.end, !dbg !5853

if.end:                                           ; preds = %do.end, %entry
  call void @cpu_latency_qos_update_request(ptr noundef @iosf_mbi_pm_qos, i32 noundef -1) #11, !dbg !5854
  %call1 = call i32 @blocking_notifier_call_chain(ptr noundef @iosf_mbi_pmic_bus_access_notifier, i64 noundef 2, ptr noundef null) #11, !dbg !5855
  ret void, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iosf_mbi_unblock_punit_i2c_access() #0 align 16 !dbg !5857 {
entry:
  %do_wakeup = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %do_wakeup) #10, !dbg !5860
  call void @llvm.dbg.declare(metadata ptr %do_wakeup, metadata !5859, metadata !DIExpression()), !dbg !5861
  store i8 0, ptr %do_wakeup, align 1, !dbg !5861
  call void @mutex_lock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5862
  %0 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5863
  %dec = add i32 %0, -1, !dbg !5863
  store i32 %dec, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5863
  %1 = load i32, ptr @iosf_mbi_pmic_i2c_access_count, align 4, !dbg !5864
  %cmp = icmp eq i32 %1, 0, !dbg !5866
  br i1 %cmp, label %if.then, label %if.end, !dbg !5867

if.then:                                          ; preds = %entry
  call void @iosf_mbi_reset_semaphore() #11, !dbg !5868
  store i8 1, ptr %do_wakeup, align 1, !dbg !5870
  br label %if.end, !dbg !5871

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @iosf_mbi_pmic_access_mutex) #11, !dbg !5872
  %2 = load i8, ptr %do_wakeup, align 1, !dbg !5873, !range !5611, !noundef !561
  %tobool = trunc i8 %2 to i1, !dbg !5873
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !5875

if.then1:                                         ; preds = %if.end
  %call = call i32 @__wake_up(ptr noundef @iosf_mbi_pmic_access_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11, !dbg !5876
  br label %if.end2, !dbg !5876

if.end2:                                          ; preds = %if.then1, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %do_wakeup) #10, !dbg !5877
  ret void, !dbg !5877
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_register_pmic_bus_access_notifier(ptr noundef %nb) #0 align 16 !dbg !5878 {
entry:
  %nb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !5882, metadata !DIExpression()), !dbg !5884
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5883, metadata !DIExpression()), !dbg !5886
  call void @iosf_mbi_punit_acquire() #11, !dbg !5887
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !5888
  %call = call i32 @blocking_notifier_chain_register(ptr noundef @iosf_mbi_pmic_bus_access_notifier, ptr noundef %0) #11, !dbg !5889
  store i32 %call, ptr %ret, align 4, !dbg !5890
  call void @iosf_mbi_punit_release() #11, !dbg !5891
  %1 = load i32, ptr %ret, align 4, !dbg !5892
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5893
  ret i32 %1, !dbg !5894
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5895 dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(ptr noundef %nb) #0 align 16 !dbg !5898 {
entry:
  %nb.addr = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !5900, metadata !DIExpression()), !dbg !5901
  call void @iosf_mbi_assert_punit_acquired() #11, !dbg !5902
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !5903
  %call = call i32 @blocking_notifier_chain_unregister(ptr noundef @iosf_mbi_pmic_bus_access_notifier, ptr noundef %0) #11, !dbg !5904
  ret i32 %call, !dbg !5905
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iosf_mbi_assert_punit_acquired() #0 align 16 !dbg !5906 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5908, metadata !DIExpression()), !dbg !5913
  %0 = load i32, ptr @iosf_mbi_pmic_punit_access_count, align 4, !dbg !5913
  %cmp = icmp eq i32 %0, 0, !dbg !5913
  %lnot = xor i1 %cmp, true, !dbg !5913
  %lnot1 = xor i1 %lnot, true, !dbg !5913
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5913
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5913
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5914
  %tobool = icmp ne i32 %1, 0, !dbg !5914
  %lnot2 = xor i1 %tobool, true, !dbg !5914
  %lnot4 = xor i1 %lnot2, true, !dbg !5914
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5914
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5914
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5914
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5914
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5913

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5914

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5910, metadata !DIExpression()), !dbg !5915
  store i32 2305, ptr %__flags, align 4, !dbg !5915
  br label %do.body7, !dbg !5915

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5916

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5916

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5915

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5918
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 440, i32 %2, i64 12) #10, !dbg !5918, !srcloc !5920
  br label %do.cond9, !dbg !5918

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5918

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5915

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5921

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5921

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5914
  br label %do.cond14, !dbg !5915

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5915

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5915

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5913
  %tobool16 = icmp ne i32 %3, 0, !dbg !5913
  %lnot17 = xor i1 %tobool16, true, !dbg !5913
  %lnot19 = xor i1 %lnot17, true, !dbg !5913
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5913
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5913
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5913
  store i64 %expval22, ptr %tmp, align 8, !dbg !5914
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5923
  %4 = load i64, ptr %tmp, align 8, !dbg !5913
  ret void, !dbg !5924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5925 dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iosf_mbi_unregister_pmic_bus_access_notifier(ptr noundef %nb) #0 align 16 !dbg !5926 {
entry:
  %nb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !5928, metadata !DIExpression()), !dbg !5930
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !5931
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5929, metadata !DIExpression()), !dbg !5932
  call void @iosf_mbi_punit_acquire() #11, !dbg !5933
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !5934
  %call = call i32 @iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(ptr noundef %0) #11, !dbg !5935
  store i32 %call, ptr %ret, align 4, !dbg !5936
  call void @iosf_mbi_punit_release() #11, !dbg !5937
  %1 = load i32, ptr %ret, align 4, !dbg !5938
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !5939
  ret i32 %1, !dbg !5940
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @iosf_mbi_exit() #8 section ".exit.text" align 16 !dbg !5941 {
entry:
  call void @iosf_debugfs_remove() #11, !dbg !5942
  call void @pci_unregister_driver(ptr noundef @iosf_mbi_pci_driver) #11, !dbg !5943
  %0 = load ptr, ptr @mbi_pdev, align 8, !dbg !5944
  call void @pci_dev_put(ptr noundef %0) #11, !dbg !5945
  store ptr null, ptr @mbi_pdev, align 8, !dbg !5946
  call void @cpu_latency_qos_remove_request(ptr noundef @iosf_mbi_pm_qos) #11, !dbg !5947
  ret void, !dbg !5948
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosf_debugfs_remove() #4 align 16 !dbg !5949 {
entry:
  ret void, !dbg !5950
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5951 dso_local void @pci_unregister_driver(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5954 dso_local void @pci_dev_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5955 dso_local void @cpu_latency_qos_remove_request(ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6() #8 section ".init.text" align 16 !dbg !5958 {
entry:
  %call = call i32 @iosf_mbi_init() #12, !dbg !5959
  ret i32 %call, !dbg !5959
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @iosf_mbi_init() #8 section ".init.text" align 16 !dbg !5960 {
entry:
  call void @iosf_debugfs_init() #11, !dbg !5961
  call void @cpu_latency_qos_add_request(ptr noundef @iosf_mbi_pm_qos, i32 noundef -1) #11, !dbg !5962
  %call = call i32 @__pci_register_driver(ptr noundef @iosf_mbi_pci_driver, ptr noundef null, ptr noundef @.str.9) #11, !dbg !5963
  ret i32 %call, !dbg !5964
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5965 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5970 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcibios_err_to_errno(i32 noundef %err) #4 align 16 !dbg !5973 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5975, metadata !DIExpression()), !dbg !5976
  %0 = load i32, ptr %err.addr, align 4, !dbg !5977
  %cmp = icmp sle i32 %0, 0, !dbg !5979
  br i1 %cmp, label %if.then, label %if.end, !dbg !5980

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4, !dbg !5981
  store i32 %1, ptr %retval, align 4, !dbg !5982
  br label %return, !dbg !5982

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %err.addr, align 4, !dbg !5983
  switch i32 %2, label %sw.epilog [
    i32 129, label %sw.bb
    i32 131, label %sw.bb1
    i32 134, label %sw.bb2
    i32 135, label %sw.bb3
    i32 136, label %sw.bb4
    i32 137, label %sw.bb5
  ], !dbg !5984

sw.bb:                                            ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !5985
  br label %return, !dbg !5985

sw.bb1:                                           ; preds = %if.end
  store i32 -25, ptr %retval, align 4, !dbg !5987
  br label %return, !dbg !5987

sw.bb2:                                           ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !5988
  br label %return, !dbg !5988

sw.bb3:                                           ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !5989
  br label %return, !dbg !5989

sw.bb4:                                           ; preds = %if.end
  store i32 -5, ptr %retval, align 4, !dbg !5990
  br label %return, !dbg !5990

sw.bb5:                                           ; preds = %if.end
  store i32 -28, ptr %retval, align 4, !dbg !5991
  br label %return, !dbg !5991

sw.epilog:                                        ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !5992
  br label %return, !dbg !5992

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !5993
  ret i32 %3, !dbg !5993
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5994 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !5997 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5999, metadata !DIExpression()), !dbg !6000
  %0 = load i32, ptr %m.addr, align 4, !dbg !6001
  %conv = zext i32 %0 to i64, !dbg !6001
  %add = add i64 %conv, 1, !dbg !6002
  %sub = sub i64 %add, 1, !dbg !6003
  %div = sdiv i64 %sub, 1, !dbg !6004
  ret i64 %div, !dbg !6005
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6006 dso_local i64 @__msecs_to_jiffies(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iosf_mbi_probe(ptr noundef %pdev, ptr noundef %dev_id) #0 align 16 !dbg !6010 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %dev_id.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !6012, metadata !DIExpression()), !dbg !6015
  store ptr %dev_id, ptr %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev_id.addr, metadata !6013, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6014, metadata !DIExpression()), !dbg !6018
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !6019
  %call = call i32 @pci_enable_device(ptr noundef %0) #11, !dbg !6020
  store i32 %call, ptr %ret, align 4, !dbg !6021
  %1 = load i32, ptr %ret, align 4, !dbg !6022
  %cmp = icmp slt i32 %1, 0, !dbg !6024
  br i1 %cmp, label %if.then, label %if.end, !dbg !6025

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6026

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6029

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6029

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !6026
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !6026
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.8) #12, !dbg !6026
  %3 = load i32, ptr %ret, align 4, !dbg !6031
  store i32 %3, ptr %retval, align 4, !dbg !6032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6032

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !6033
  %call1 = call ptr @pci_dev_get(ptr noundef %4) #11, !dbg !6034
  store ptr %call1, ptr @mbi_pdev, align 8, !dbg !6035
  %5 = load ptr, ptr %dev_id.addr, align 8, !dbg !6036
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %5, i32 0, i32 6, !dbg !6037
  %6 = load i64, ptr %driver_data, align 8, !dbg !6037
  %conv = trunc i64 %6 to i32, !dbg !6036
  store i32 %conv, ptr @iosf_mbi_sem_address, align 4, !dbg !6038
  store i32 0, ptr %retval, align 4, !dbg !6039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6039

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !6040
  %7 = load i32, ptr %retval, align 4, !dbg !6040
  ret i32 %7, !dbg !6040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6041 dso_local i32 @pci_enable_device(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6042 dso_local ptr @pci_dev_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iosf_debugfs_init() #4 align 16 !dbg !6045 {
entry:
  ret void, !dbg !6046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6047 dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6048 dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107}
!llvm.ident = !{!5108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/platform/intel/iosf_mbi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c315072649b039c05ab753b8f928e95")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "iosf_mbi_lock", scope: !9, file: !2, line: 30, type: !209, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/platform/intel/.iosf_mbi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/platform/intel/iosf_mbi\22 -D KBUILD_BASENAME=\22iosf_mbi\22 -D KBUILD_MODNAME=\22iosf_mbi\22 -D __KBUILD_MODNAME=kmod_iosf_mbi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/platform/intel/iosf_mbi.ll arch/x86/platform/intel/iosf_mbi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !169, globals: !4141, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !25, !30, !38, !54, !62, !68, !73, !79, !86, !93, !99, !105, !112, !120, !128, !135, !139, !148, !153, !158, !164}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !12, line: 41, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!16 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!17 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!22 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!23 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!24 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !26, line: 2052, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!29 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !31, line: 9, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!34 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!35 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!36 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!37 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !39, line: 1325, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!41 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!42 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!43 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!44 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!45 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!46 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!47 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!48 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!49 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!50 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!51 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!52 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!53 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !55, line: 68, baseType: !13, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!56 = !{!57, !58, !59, !60, !61}
!57 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!58 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!59 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !63, line: 54, baseType: !13, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "USRQUOTA", value: 0)
!66 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!67 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !69, line: 65, baseType: !13, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!72 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !74, line: 16, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "TT_NONE", value: 0)
!77 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!78 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !80, line: 51, baseType: !13, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!83 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!84 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!85 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !87, line: 15, baseType: !13, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!90 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!91 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!92 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !94, line: 26, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!97 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!98 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !100, line: 45, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!103 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!104 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !106, line: 487, baseType: !13, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!109 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!110 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!111 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !113, line: 620, baseType: !13, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!116 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!117 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!118 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!119 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !113, line: 597, baseType: !121, size: 32, elements: !122)
!121 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!124 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!125 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!126 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!127 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !12, line: 99, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!131 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!132 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!133 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!134 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !12, line: 80, baseType: !13, size: 32, elements: !136)
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!138 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !106, line: 547, baseType: !13, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147}
!141 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!142 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!143 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!144 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!145 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!146 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!147 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !106, line: 564, baseType: !13, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!151 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!152 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !106, line: 577, baseType: !13, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!156 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!157 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !106, line: 503, baseType: !13, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!161 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!162 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!163 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 10, baseType: !13, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "false", value: 0)
!168 = !DIEnumerator(name: "true", value: 1)
!169 = !{!170, !171, !121, !172, !175}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !173, line: 15, baseType: !174)
!173 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!174 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !177)
!177 = !{!178, !179, !186, !190, !3817, !3843, !3844, !3845, !3846, !3850, !3853, !3854, !3855, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3922, !3926, !3944, !3961, !3962, !3963, !3964, !3973, !3996, !3997, !4000, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4014, !4015, !4101, !4109, !4110, !4111, !4113, !4117, !4118, !4122, !4123, !4124, !4125, !4127, !4128, !4129, !4136, !4137, !4138, !4140}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !176, file: !19, line: 403, baseType: !18, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !176, file: !19, line: 406, baseType: !180, size: 128, offset: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !181, line: 190, size: 128, elements: !182)
!181 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!182 = !{!183, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !181, line: 191, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !180, file: !181, line: 191, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !19, line: 409, baseType: !187, size: 448, offset: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 56)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !176, file: !19, line: 417, baseType: !191, size: 768, offset: 640)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !192)
!192 = !{!193, !3811, !3812, !3813, !3816}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !19, line: 46, baseType: !194, size: 512)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !195, line: 64, size: 512, elements: !196)
!195 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!196 = !{!197, !200, !201, !203, !292, !3710, !3801, !3806, !3807, !3808, !3809, !3810}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !195, line: 65, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !194, file: !195, line: 66, baseType: !180, size: 128, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !195, line: 67, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !194, file: !195, line: 68, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !195, line: 168, size: 768, elements: !206)
!206 = !{!207, !208, !251, !252}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !205, file: !195, line: 169, baseType: !180, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !205, file: !195, line: 170, baseType: !209, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !210, line: 29, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !210, line: 17, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !210, line: 18, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !210, line: 18, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !214, file: !210, line: 19, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !218, line: 14, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !217, file: !218, line: 15, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !222, line: 44, baseType: !223)
!222 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !222, line: 14, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !222, line: 15, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !222, line: 15, size: 32, elements: !227)
!227 = !{!228, !233, !243}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !226, file: !222, line: 16, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !181, line: 174, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 172, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !230, file: !181, line: 173, baseType: !121, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !222, line: 24, baseType: !234, size: 16)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !222, line: 24, size: 16, elements: !235)
!235 = !{!236, !242}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !234, file: !222, line: 25, baseType: !237, size: 8)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !238, line: 17, baseType: !239)
!238 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !240, line: 21, baseType: !241)
!240 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !234, file: !222, line: 26, baseType: !237, size: 8, offset: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !222, line: 28, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !222, line: 28, size: 32, elements: !245)
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !244, file: !222, line: 29, baseType: !247, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !238, line: 19, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !240, line: 24, baseType: !249)
!249 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !244, file: !222, line: 30, baseType: !247, size: 16, offset: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !205, file: !195, line: 171, baseType: !194, size: 512, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !205, file: !195, line: 172, baseType: !253, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !195, line: 133, size: 192, elements: !256)
!256 = !{!257, !264, !269}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !255, file: !195, line: 134, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!121, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !195, line: 135, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!198, !262}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !255, file: !195, line: 136, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!121, !262, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !195, line: 125, size: 20736, elements: !276)
!276 = !{!277, !282, !286, !287, !291}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !275, file: !195, line: 126, baseType: !278, size: 192)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 192, elements: !280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!280 = !{!281}
!281 = !DISubrange(count: 3)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !275, file: !195, line: 127, baseType: !283, size: 4096, offset: 192)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 4096, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !275, file: !195, line: 128, baseType: !121, size: 32, offset: 4288)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !275, file: !195, line: 129, baseType: !288, size: 16384, offset: 4320)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 2048)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !275, file: !195, line: 130, baseType: !121, size: 32, offset: 20704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !194, file: !195, line: 69, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !195, line: 116, size: 384, elements: !296)
!296 = !{!297, !301, !328, !3672, !3700, !3704}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !295, file: !195, line: 117, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !202}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !295, file: !195, line: 118, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !305, line: 254, size: 128, elements: !306)
!305 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!306 = !{!307, !321}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !304, file: !305, line: 255, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !202, !315, !279}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !181, line: 66, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !313, line: 73, baseType: !314)
!313 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !313, line: 15, baseType: !171)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !305, line: 30, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !305, line: 31, baseType: !198, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !316, file: !305, line: 32, baseType: !320, size: 16, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !181, line: 24, baseType: !249)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !304, file: !305, line: 256, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!311, !202, !315, !198, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 61, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !313, line: 72, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !313, line: 16, baseType: !174)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !295, file: !195, line: 119, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !305, line: 84, size: 320, elements: !333)
!333 = !{!334, !335, !339, !3668, !3670}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !305, line: 85, baseType: !198, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !332, file: !305, line: 86, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!320, !202, !315, !121}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !332, file: !305, line: 88, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!320, !202, !343, !121}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !305, line: 175, size: 512, elements: !345)
!345 = !{!346, !347, !348, !349, !3659, !3663, !3664}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !344, file: !305, line: 176, baseType: !316, size: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !344, file: !305, line: 177, baseType: !325, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !344, file: !305, line: 178, baseType: !170, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !344, file: !305, line: 179, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !26, line: 472, size: 1536, align: 64, elements: !355)
!355 = !{!356, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3653, !3654, !3655, !3656, !3657, !3658}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !354, file: !26, line: 473, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !26, line: 641, size: 4800, elements: !359)
!359 = !{!360, !361, !362, !370, !371, !378, !379, !382, !383, !3432, !3433, !3434, !3435, !3436, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3476, !3479, !3480, !3481, !3490, !3491, !3492, !3493}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !358, file: !26, line: 642, baseType: !320, size: 16)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !358, file: !26, line: 643, baseType: !249, size: 16, offset: 16)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !358, file: !26, line: 644, baseType: !363, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !364, line: 23, baseType: !365)
!364 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 21, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !364, line: 22, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !181, line: 37, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !313, line: 49, baseType: !13)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !358, file: !26, line: 645, baseType: !180, size: 128, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !358, file: !26, line: 646, baseType: !372, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !364, line: 28, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 26, size: 32, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !373, file: !364, line: 27, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !181, line: 38, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !313, line: 50, baseType: !13)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !358, file: !26, line: 647, baseType: !13, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !358, file: !26, line: 650, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !26, line: 607, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !358, file: !26, line: 651, baseType: !380, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !358, file: !26, line: 654, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !26, line: 1966, size: 2048, align: 512, elements: !387)
!387 = !{!388, !3257, !3270, !3274, !3278, !3282, !3286, !3290, !3294, !3298, !3302, !3303, !3307, !3311, !3348, !3377, !3381, !3387, !3391, !3395, !3399, !3403, !3407, !3413, !3417}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !386, file: !26, line: 1967, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !357, !392, !13}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !394, line: 82, size: 1536, elements: !395)
!394 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!395 = !{!396, !397, !407, !415, !416, !436, !437, !441, !454, !3240, !3241, !3242, !3243, !3249, !3250, !3251}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !393, file: !394, line: 84, baseType: !13, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !393, file: !394, line: 85, baseType: !398, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !399, line: 275, baseType: !400)
!399 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !399, line: 275, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !400, file: !399, line: 275, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !399, line: 69, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !399, line: 64, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !404, file: !399, line: 65, baseType: !13, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !393, file: !394, line: 86, baseType: !408, size: 128, offset: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !409, line: 38, size: 128, elements: !410)
!409 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!410 = !{!411, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !409, line: 39, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !408, file: !409, line: 39, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !393, file: !394, line: 87, baseType: !392, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !393, file: !394, line: 88, baseType: !417, size: 128, offset: 256)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !394, line: 49, size: 128, elements: !418)
!418 = !{!419, !433}
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !394, line: 50, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !394, line: 50, size: 64, elements: !421)
!421 = !{!422, !429}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !394, line: 51, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !420, file: !394, line: 51, size: 64, elements: !424)
!424 = !{!425, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !423, file: !394, line: 52, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !238, line: 21, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !240, line: 27, baseType: !13)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !423, file: !394, line: 52, baseType: !426, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !420, file: !394, line: 54, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !238, line: 23, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !240, line: 31, baseType: !432)
!432 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !417, file: !394, line: 56, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !393, file: !394, line: 89, baseType: !357, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !393, file: !394, line: 91, baseType: !438, size: 256, offset: 448)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !393, file: !394, line: 94, baseType: !442, size: 64, offset: 704)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !443, line: 25, size: 64, elements: !444)
!443 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !442, file: !443, line: 26, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !443, line: 26, size: 64, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !446, file: !443, line: 28, baseType: !431, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !443, line: 30, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !443, line: 30, size: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !450, file: !443, line: 31, baseType: !209, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !450, file: !443, line: 32, baseType: !121, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !393, file: !394, line: 95, baseType: !455, size: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !394, line: 128, size: 1024, align: 512, elements: !458)
!458 = !{!459, !463, !464, !471, !477, !481, !485, !489, !490, !494, !498, !3230, !3234}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !457, file: !394, line: 129, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!121, !392, !13}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !457, file: !394, line: 130, baseType: !460, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !457, file: !394, line: 131, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!121, !468, !470}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !457, file: !394, line: 132, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!121, !468, !13, !198, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !457, file: !394, line: 134, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!121, !468}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !457, file: !394, line: 135, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!121, !392}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !457, file: !394, line: 136, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !392}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !457, file: !394, line: 137, baseType: !486, size: 64, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !457, file: !394, line: 138, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !392, !357}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !457, file: !394, line: 139, baseType: !495, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!279, !392, !279, !121}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !457, file: !394, line: 140, baseType: !499, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !3229}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !504, line: 70, size: 256, elements: !505)
!504 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!505 = !{!506, !507, !3225, !3226}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !503, file: !504, line: 71, baseType: !392, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !503, file: !504, line: 72, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !26, line: 1190, size: 10752, elements: !510)
!510 = !{!511, !512, !515, !516, !517, !521, !570, !1720, !1760, !1845, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1862, !1866, !1867, !1870, !1873, !1876, !1879, !1880, !1881, !1922, !3156, !3157, !3158, !3159, !3160, !3161, !3164, !3166, !3173, !3174, !3175, !3176, !3177, !3192, !3193, !3194, !3195, !3196, !3199, !3200, !3201, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !509, file: !26, line: 1191, baseType: !180, size: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !509, file: !26, line: 1192, baseType: !513, size: 32, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !181, line: 21, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !181, line: 18, baseType: !426)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !509, file: !26, line: 1193, baseType: !241, size: 8, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !509, file: !26, line: 1194, baseType: !174, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !509, file: !26, line: 1195, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !181, line: 52, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !313, line: 88, baseType: !520)
!520 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !509, file: !26, line: 1196, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !26, line: 2366, size: 576, elements: !524)
!524 = !{!525, !526, !527, !534, !538, !542, !546, !547, !548, !558, !562, !563, !564, !566, !567, !568, !569}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !523, file: !26, line: 2367, baseType: !198, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !523, file: !26, line: 2368, baseType: !121, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !523, file: !26, line: 2376, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!121, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !533, line: 32, flags: DIFlagFwdDecl)
!533 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !523, file: !26, line: 2377, baseType: !535, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !26, line: 75, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !523, file: !26, line: 2378, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!392, !522, !121, !198, !170}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !523, file: !26, line: 2380, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !508}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !523, file: !26, line: 2381, baseType: !175, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !26, line: 2382, baseType: !522, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !523, file: !26, line: 2383, baseType: !549, size: 64, offset: 512)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !181, line: 194, size: 64, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !549, file: !181, line: 195, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !181, line: 198, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !181, line: 199, baseType: !552, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !553, file: !181, line: 199, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !523, file: !26, line: 2385, baseType: !559, offset: 576)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !560, line: 206, elements: !561)
!560 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!561 = !{}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !523, file: !26, line: 2386, baseType: !559, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !523, file: !26, line: 2387, baseType: !559, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !523, file: !26, line: 2388, baseType: !565, offset: 576)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, elements: !280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !523, file: !26, line: 2390, baseType: !559, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !523, file: !26, line: 2391, baseType: !559, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !523, file: !26, line: 2392, baseType: !559, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !523, file: !26, line: 2393, baseType: !559, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !509, file: !26, line: 1197, baseType: !571, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !26, line: 2057, size: 1664, elements: !574)
!574 = !{!575, !579, !583, !584, !588, !594, !598, !599, !600, !604, !608, !612, !613, !614, !620, !625, !626, !1645, !1646, !1647, !1648, !1652, !1656, !1703, !1718, !1719}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !573, file: !26, line: 2058, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!357, !508}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !573, file: !26, line: 2059, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !357}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !573, file: !26, line: 2060, baseType: !580, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !573, file: !26, line: 2062, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !357, !121}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !573, file: !26, line: 2063, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!121, !357, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 309, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !573, file: !26, line: 2064, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!121, !357}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !573, file: !26, line: 2065, baseType: !580, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !573, file: !26, line: 2066, baseType: !543, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !573, file: !26, line: 2067, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!121, !508, !121}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !573, file: !26, line: 2068, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!121, !508, !25}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !573, file: !26, line: 2069, baseType: !609, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!121, !508}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !573, file: !26, line: 2070, baseType: !605, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !573, file: !26, line: 2071, baseType: !609, size: 64, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !573, file: !26, line: 2072, baseType: !615, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!121, !392, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !26, line: 62, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !573, file: !26, line: 2073, baseType: !621, size: 64, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!121, !508, !624, !279}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !573, file: !26, line: 2074, baseType: !543, size: 64, offset: 960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !573, file: !26, line: 2076, baseType: !627, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!121, !630, !392}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !632, line: 17, size: 960, elements: !633)
!632 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !662, !684, !685, !1644}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !631, file: !632, line: 18, baseType: !279, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !631, file: !632, line: 19, baseType: !325, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !631, file: !632, line: 20, baseType: !325, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !631, file: !632, line: 21, baseType: !325, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !631, file: !632, line: 22, baseType: !325, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !631, file: !632, line: 23, baseType: !518, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !631, file: !632, line: 24, baseType: !518, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !631, file: !632, line: 25, baseType: !642, size: 256, offset: 448)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !643, line: 66, size: 256, elements: !644)
!643 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!644 = !{!645, !654, !656, !661}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !642, file: !643, line: 67, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !647, line: 13, baseType: !648)
!647 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !181, line: 181, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 179, size: 64, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !649, file: !181, line: 180, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !238, line: 22, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !240, line: 30, baseType: !520)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !642, file: !643, line: 68, baseType: !655, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !218, line: 23, baseType: !217)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !642, file: !643, line: 70, baseType: !657, size: 32, offset: 96)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !658, line: 15, size: 32, elements: !659)
!658 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !657, file: !658, line: 20, baseType: !229, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !642, file: !643, line: 72, baseType: !180, size: 128, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !631, file: !632, line: 26, baseType: !663, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !632, line: 32, size: 256, elements: !666)
!666 = !{!667, !672, !676, !680}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !665, file: !632, line: 33, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!170, !630, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !665, file: !632, line: 34, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !630, !170}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !665, file: !632, line: 35, baseType: !677, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!170, !630, !170, !671}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !665, file: !632, line: 36, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!121, !630, !170}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !631, file: !632, line: 27, baseType: !121, size: 32, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !631, file: !632, line: 28, baseType: !686, size: 64, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !26, line: 994, size: 1856, align: 64, elements: !689)
!689 = !{!690, !709, !710, !712, !713, !714, !715, !716, !779, !991, !1000, !1006, !1007, !1634, !1635, !1636, !1637, !1639, !1640, !1643}
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !26, line: 995, baseType: !691, size: 128)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !26, line: 995, size: 128, elements: !692)
!692 = !{!693, !699, !708}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !691, file: !26, line: 996, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !695, line: 60, size: 64, elements: !696)
!695 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !695, line: 61, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !691, file: !26, line: 997, baseType: !700, size: 128, align: 64)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !181, line: 232, size: 128, align: 64, elements: !701)
!701 = !{!702, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !181, line: 233, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !700, file: !181, line: 234, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !703}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !691, file: !26, line: 998, baseType: !13, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !688, file: !26, line: 1005, baseType: !209, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !688, file: !26, line: 1006, baseType: !711, size: 32, offset: 160)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !181, line: 156, baseType: !13)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !688, file: !26, line: 1007, baseType: !646, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !688, file: !26, line: 1008, baseType: !642, size: 256, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !688, file: !26, line: 1009, baseType: !518, size: 64, offset: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !688, file: !26, line: 1010, baseType: !13, size: 32, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !688, file: !26, line: 1011, baseType: !717, size: 256, offset: 640)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !26, line: 948, size: 256, elements: !718)
!718 = !{!719, !740, !775, !776, !777, !778}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !717, file: !26, line: 949, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !721, line: 34, baseType: !722)
!721 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 25, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !722, file: !721, line: 26, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !726, line: 27, baseType: !727)
!726 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !726, line: 13, size: 64, elements: !728)
!728 = !{!729, !739}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !726, line: 14, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !726, line: 14, size: 32, elements: !731)
!731 = !{!732, !733}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !730, file: !726, line: 15, baseType: !229, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !726, line: 16, baseType: !734, size: 32)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !730, file: !726, line: 16, size: 32, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !734, file: !726, line: 18, baseType: !237, size: 8)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !734, file: !726, line: 19, baseType: !738, size: 24, offset: 8)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 24, elements: !280)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !726, line: 26, baseType: !221, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !717, file: !26, line: 950, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !31, line: 59, size: 768, elements: !743)
!743 = !{!744, !750, !751, !752, !756, !757, !764, !765}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !742, file: !31, line: 61, baseType: !745, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !746, line: 113, baseType: !747)
!746 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !746, line: 111, size: 32, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !747, file: !746, line: 112, baseType: !229, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !742, file: !31, line: 62, baseType: !13, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !742, file: !31, line: 63, baseType: !209, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !742, file: !31, line: 65, baseType: !753, size: 256, offset: 128)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 256, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 4)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !742, file: !31, line: 66, baseType: !549, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !742, file: !31, line: 68, baseType: !758, size: 192, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !759, line: 41, baseType: !760)
!759 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !759, line: 37, size: 192, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !760, file: !759, line: 38, baseType: !209, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !760, file: !759, line: 39, baseType: !180, size: 128, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !742, file: !31, line: 69, baseType: !700, size: 128, align: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !742, file: !31, line: 70, baseType: !766, offset: 768)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !767, elements: !773)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !31, line: 54, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !767, file: !31, line: 55, baseType: !121, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !767, file: !31, line: 56, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !31, line: 56, flags: DIFlagFwdDecl)
!773 = !{!774}
!774 = !DISubrange(count: -1)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !717, file: !26, line: 951, baseType: !30, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !26, line: 952, baseType: !363, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !717, file: !26, line: 952, baseType: !363, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !717, file: !26, line: 953, baseType: !121, size: 32, offset: 224)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !688, file: !26, line: 1012, baseType: !780, size: 64, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !783, line: 110, size: 1472, elements: !784)
!783 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !801, !802, !803, !804, !805, !806, !936, !937, !938, !939, !940, !971, !974, !978, !986}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !782, file: !783, line: 111, baseType: !646, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !782, file: !783, line: 112, baseType: !363, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !782, file: !783, line: 113, baseType: !372, size: 32, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !782, file: !783, line: 114, baseType: !363, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !782, file: !783, line: 115, baseType: !372, size: 32, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !782, file: !783, line: 116, baseType: !363, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !782, file: !783, line: 117, baseType: !372, size: 32, offset: 224)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !782, file: !783, line: 118, baseType: !363, size: 32, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !782, file: !783, line: 119, baseType: !372, size: 32, offset: 288)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !782, file: !783, line: 120, baseType: !13, size: 32, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !782, file: !783, line: 121, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !797, line: 24, baseType: !798)
!797 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !797, line: 24, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !798, file: !797, line: 24, baseType: !430, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !782, file: !783, line: 122, baseType: !796, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !782, file: !783, line: 123, baseType: !796, size: 64, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !782, file: !783, line: 124, baseType: !796, size: 64, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !782, file: !783, line: 125, baseType: !796, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !782, file: !783, line: 127, baseType: !241, size: 8, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !782, file: !783, line: 129, baseType: !807, size: 64, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !809, line: 195, size: 1728, elements: !810)
!809 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!810 = !{!811, !812, !817, !829, !838, !841, !842, !849, !850, !851, !852, !855, !856, !857, !859, !860, !900, !921}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !808, file: !809, line: 196, baseType: !745, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !808, file: !809, line: 197, baseType: !813, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !809, line: 28, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !181, line: 104, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !238, line: 20, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !240, line: 26, baseType: !121)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !809, line: 198, baseType: !818, size: 192, offset: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !809, line: 198, size: 192, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !818, file: !809, line: 199, baseType: !180, size: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !818, file: !809, line: 200, baseType: !822, size: 192, align: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !823, line: 5, size: 192, align: 64, elements: !824)
!823 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!824 = !{!825, !826, !828}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !822, file: !823, line: 6, baseType: !174, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !822, file: !823, line: 7, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !822, file: !823, line: 8, baseType: !827, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !808, file: !809, line: 205, baseType: !830, size: 320, offset: 256)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !831, line: 48, size: 320, elements: !832)
!831 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!832 = !{!833, !834, !835, !836, !837}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !830, file: !831, line: 49, baseType: !646, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !830, file: !831, line: 55, baseType: !646, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !830, file: !831, line: 57, baseType: !657, size: 32, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !830, file: !831, line: 59, baseType: !655, size: 32, offset: 160)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !830, file: !831, line: 60, baseType: !180, size: 128, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !808, file: !809, line: 206, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !809, line: 206, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !808, file: !809, line: 207, baseType: !170, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !809, line: 208, baseType: !843, size: 64, offset: 704)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !809, line: 208, size: 64, elements: !844)
!844 = !{!845, !848}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !843, file: !809, line: 209, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !847, line: 8, baseType: !653)
!847 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!848 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !843, file: !809, line: 210, baseType: !846, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !808, file: !809, line: 212, baseType: !846, size: 64, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !808, file: !809, line: 213, baseType: !363, size: 32, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !808, file: !809, line: 214, baseType: !372, size: 32, offset: 864)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !808, file: !809, line: 215, baseType: !853, size: 32, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !809, line: 31, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !181, line: 110, baseType: !426)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !808, file: !809, line: 216, baseType: !249, size: 16, offset: 928)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !808, file: !809, line: 217, baseType: !249, size: 16, offset: 944)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !808, file: !809, line: 221, baseType: !858, size: 16, offset: 960)
!858 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !809, line: 228, baseType: !174, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !809, line: 245, baseType: !861, size: 320, offset: 1088)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !809, line: 245, size: 320, elements: !862)
!862 = !{!863, !892}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !861, file: !809, line: 246, baseType: !864, size: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !809, line: 114, size: 320, elements: !865)
!865 = !{!866, !867, !879, !882, !891}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !864, file: !809, line: 116, baseType: !174, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !809, line: 117, baseType: !868, size: 64, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !809, line: 117, size: 64, elements: !869)
!869 = !{!870, !878}
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !809, line: 118, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !809, line: 118, size: 64, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !871, file: !809, line: 120, baseType: !247, size: 16)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !871, file: !809, line: 121, baseType: !875, size: 48, offset: 16)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 6)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !868, file: !809, line: 127, baseType: !174, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !864, file: !809, line: 129, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !809, line: 102, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !864, file: !809, line: 130, baseType: !883, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !809, line: 108, size: 192, elements: !885)
!885 = !{!886, !887, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !884, file: !809, line: 109, baseType: !700, size: 128, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !884, file: !809, line: 110, baseType: !745, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !884, file: !809, line: 111, baseType: !889, size: 8, offset: 160)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !181, line: 35, baseType: !890)
!890 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !864, file: !809, line: 131, baseType: !198, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !809, line: 247, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !809, line: 247, size: 320, elements: !894)
!894 = !{!895, !896, !897, !898, !899}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !893, file: !809, line: 248, baseType: !174, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !893, file: !809, line: 249, baseType: !174, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !893, file: !809, line: 250, baseType: !880, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !893, file: !809, line: 251, baseType: !883, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !893, file: !809, line: 252, baseType: !279, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !809, line: 260, baseType: !901, size: 256, offset: 1408)
!901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !809, line: 260, size: 256, elements: !902)
!902 = !{!903, !909}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !901, file: !809, line: 261, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !809, line: 134, size: 256, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !904, file: !809, line: 135, baseType: !170, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !904, file: !809, line: 136, baseType: !908, size: 256)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !754)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !809, line: 262, baseType: !910, size: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !809, line: 262, size: 256, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !910, file: !809, line: 264, baseType: !180, size: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !910, file: !809, line: 265, baseType: !914, size: 128, offset: 128)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !915, line: 22, size: 128, elements: !916)
!915 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!916 = !{!917, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !914, file: !915, line: 23, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !915, line: 23, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !914, file: !915, line: 24, baseType: !174, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !808, file: !809, line: 280, baseType: !922, size: 64, offset: 1664)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !809, line: 176, size: 192, elements: !924)
!924 = !{!925, !934, !935}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !923, file: !809, line: 177, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !809, line: 171, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!121, !807, !930, !932, !807}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !923, file: !809, line: 178, baseType: !807, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !923, file: !809, line: 179, baseType: !880, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !782, file: !783, line: 130, baseType: !807, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !782, file: !783, line: 131, baseType: !807, size: 64, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !782, file: !783, line: 132, baseType: !807, size: 64, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !782, file: !783, line: 135, baseType: !170, size: 64, offset: 1024)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !782, file: !783, line: 137, baseType: !941, size: 64, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !943, line: 14, size: 1088, elements: !944)
!943 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!944 = !{!945, !946, !955, !956, !957, !958, !959, !960}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !942, file: !943, line: 15, baseType: !745, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !942, file: !943, line: 17, baseType: !947, size: 320, offset: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !948, line: 22, size: 320, elements: !949)
!948 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!949 = !{!950, !951, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !947, file: !948, line: 23, baseType: !655, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !947, file: !948, line: 24, baseType: !652, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !947, file: !948, line: 26, baseType: !180, size: 128, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !947, file: !948, line: 28, baseType: !954, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !942, file: !943, line: 19, baseType: !174, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !942, file: !943, line: 20, baseType: !646, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !942, file: !943, line: 23, baseType: !553, size: 128, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !942, file: !943, line: 24, baseType: !363, size: 32, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !942, file: !943, line: 29, baseType: !646, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !942, file: !943, line: 36, baseType: !961, size: 320, offset: 768)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !962, line: 15, size: 320, elements: !963)
!962 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!963 = !{!964, !965, !966, !967, !968, !969, !970}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !962, line: 16, baseType: !655, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !961, file: !962, line: 18, baseType: !121, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !961, file: !962, line: 19, baseType: !121, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !961, file: !962, line: 20, baseType: !121, size: 32, offset: 96)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !961, file: !962, line: 21, baseType: !121, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !961, file: !962, line: 22, baseType: !174, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !962, line: 23, baseType: !174, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !782, file: !783, line: 138, baseType: !972, size: 64, offset: 1152)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !364, line: 18, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !782, file: !783, line: 139, baseType: !975, size: 64, offset: 1216)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !977, line: 16, flags: DIFlagFwdDecl)
!977 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!978 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !782, file: !783, line: 140, baseType: !979, size: 64, offset: 1280)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !783, line: 25, size: 64, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !980, file: !783, line: 26, baseType: !229, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !980, file: !783, line: 27, baseType: !121, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !980, file: !783, line: 28, baseType: !985, offset: 64)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, elements: !773)
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 142, baseType: !987, size: 128, offset: 1344)
!987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 142, size: 128, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !987, file: !783, line: 143, baseType: !121, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !987, file: !783, line: 144, baseType: !700, size: 128, align: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !688, file: !26, line: 1013, baseType: !992, size: 256, offset: 960)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !26, line: 970, size: 256, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !992, file: !26, line: 971, baseType: !174, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !26, line: 972, baseType: !13, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !992, file: !26, line: 973, baseType: !13, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !992, file: !26, line: 974, baseType: !13, size: 32, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !992, file: !26, line: 975, baseType: !13, size: 32, offset: 160)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !992, file: !26, line: 976, baseType: !518, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !688, file: !26, line: 1014, baseType: !1001, size: 128, offset: 1216)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1002, line: 8, size: 128, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1001, file: !1002, line: 9, baseType: !502, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1001, file: !1002, line: 10, baseType: !392, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !688, file: !26, line: 1015, baseType: !357, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !688, file: !26, line: 1016, baseType: !1008, size: 64, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !26, line: 1914, size: 2112, elements: !1011)
!1011 = !{!1012, !1013, !1018, !1022, !1026, !1055, !1056, !1062, !1075, !1083, !1087, !1088, !1556, !1557, !1561, !1566, !1567, !1571, !1575, !1581, !1582, !1586, !1587, !1593, !1597, !1601, !1607, !1611, !1615, !1619, !1623, !1624, !1630}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1010, file: !26, line: 1915, baseType: !175, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1010, file: !26, line: 1916, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!518, !1017, !518, !121}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1010, file: !26, line: 1917, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!311, !1017, !279, !325, !671}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1010, file: !26, line: 1918, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!311, !1017, !198, !325, !671}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1010, file: !26, line: 1919, baseType: !1027, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!311, !1030, !1052}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !26, line: 373, size: 384, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1039, !1040, !1041, !1042}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1031, file: !26, line: 374, baseType: !1017, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1031, file: !26, line: 375, baseType: !518, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1031, file: !26, line: 376, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1030, !171}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1031, file: !26, line: 377, baseType: !170, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1031, file: !26, line: 378, baseType: !121, size: 32, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1031, file: !26, line: 379, baseType: !247, size: 16, offset: 288)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !26, line: 380, baseType: !1043, size: 64, offset: 320)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !26, line: 380, size: 64, elements: !1044)
!1044 = !{!1045, !1048}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1043, file: !26, line: 386, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !26, line: 386, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1043, file: !26, line: 395, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!311, !170}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1054, line: 17, flags: DIFlagFwdDecl)
!1054 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1010, file: !26, line: 1920, baseType: !1027, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1010, file: !26, line: 1921, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!121, !1030, !1060, !13}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !26, line: 53, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1010, file: !26, line: 1923, baseType: !1063, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!121, !1017, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !26, line: 1858, size: 128, elements: !1068)
!1068 = !{!1069, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1067, file: !26, line: 1859, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !26, line: 1855, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!889, !1066, !198, !121, !518, !430, !13}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1067, file: !26, line: 1860, baseType: !518, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1010, file: !26, line: 1924, baseType: !1076, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1079, !1017, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1080, line: 59, baseType: !13)
!1080 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !533, line: 31, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1010, file: !26, line: 1925, baseType: !1084, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!171, !1017, !13, !174}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1010, file: !26, line: 1926, baseType: !1084, size: 64, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1010, file: !26, line: 1927, baseType: !1089, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!121, !1017, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !39, line: 625, size: 1344, elements: !1094)
!1094 = !{!1095, !1104, !1272, !1278, !1285, !1286, !1291, !1292, !1297, !1298, !1301, !1549, !1550, !1551, !1552, !1553, !1554}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !39, line: 628, baseType: !1096, size: 128)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !39, line: 628, size: 128, elements: !1097)
!1097 = !{!1098, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !39, line: 629, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !39, line: 629, size: 128, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1099, file: !39, line: 631, baseType: !174, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1099, file: !39, line: 632, baseType: !174, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1096, file: !39, line: 635, baseType: !700, size: 128, align: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1093, file: !39, line: 639, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !39, line: 733, size: 10240, elements: !1107)
!1107 = !{!1108, !1270}
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !39, line: 734, baseType: !1109, size: 10240)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1106, file: !39, line: 734, size: 10240, elements: !1110)
!1110 = !{!1111, !1115, !1128, !1132, !1133, !1134, !1135, !1136, !1137, !1146, !1147, !1148, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1187, !1189, !1192, !1239, !1240, !1241, !1244, !1245, !1246, !1249, !1250, !1251, !1257, !1258}
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !39, line: 739, baseType: !1112, size: 512, align: 512)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1109, file: !39, line: 739, size: 512, align: 512, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1112, file: !39, line: 747, baseType: !229, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1109, file: !39, line: 750, baseType: !1116, size: 128, offset: 512)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1117, line: 218, size: 128, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1118 = !{!1119, !1126, !1127}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1117, line: 219, baseType: !1120, size: 32)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !1117, line: 219, size: 32, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1120, file: !1117, line: 220, baseType: !209, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1120, file: !1117, line: 221, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1117, line: 197, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1117, line: 197, elements: !561)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1116, file: !1117, line: 223, baseType: !13, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1116, file: !1117, line: 224, baseType: !170, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1109, file: !39, line: 752, baseType: !1129, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!174, !1017, !174, !174, !174, !174}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1109, file: !39, line: 756, baseType: !174, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1109, file: !39, line: 757, baseType: !174, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1109, file: !39, line: 760, baseType: !174, size: 64, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1109, file: !39, line: 761, baseType: !174, size: 64, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1109, file: !39, line: 763, baseType: !174, size: 64, offset: 960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1109, file: !39, line: 764, baseType: !1138, size: 64, offset: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1140, line: 299, baseType: !1141)
!1140 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1140, line: 299, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1141, file: !1140, line: 299, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1145, line: 18, baseType: !174)
!1145 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1109, file: !39, line: 773, baseType: !229, size: 32, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1109, file: !39, line: 785, baseType: !229, size: 32, offset: 1120)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1109, file: !39, line: 795, baseType: !1149, size: 64, offset: 1152)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !39, line: 726, size: 128, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1150, file: !39, line: 727, baseType: !430, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1150, file: !39, line: 728, baseType: !121, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1109, file: !39, line: 801, baseType: !174, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1109, file: !39, line: 804, baseType: !646, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1109, file: !39, line: 806, baseType: !121, size: 32, offset: 1344)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1109, file: !39, line: 808, baseType: !209, size: 32, offset: 1376)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1109, file: !39, line: 823, baseType: !830, size: 320, offset: 1408)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1109, file: !39, line: 825, baseType: !180, size: 128, offset: 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1109, file: !39, line: 845, baseType: !121, size: 32, offset: 1856)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1109, file: !39, line: 849, baseType: !174, size: 64, offset: 1920)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1109, file: !39, line: 850, baseType: !174, size: 64, offset: 1984)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1109, file: !39, line: 852, baseType: !174, size: 64, offset: 2048)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1109, file: !39, line: 853, baseType: !174, size: 64, offset: 2112)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1109, file: !39, line: 854, baseType: !648, size: 64, offset: 2176)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1109, file: !39, line: 855, baseType: !174, size: 64, offset: 2240)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1109, file: !39, line: 856, baseType: !174, size: 64, offset: 2304)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1109, file: !39, line: 857, baseType: !174, size: 64, offset: 2368)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1109, file: !39, line: 858, baseType: !174, size: 64, offset: 2432)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1109, file: !39, line: 865, baseType: !403, size: 32, offset: 2496)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1109, file: !39, line: 867, baseType: !209, size: 32, offset: 2528)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1109, file: !39, line: 869, baseType: !174, size: 64, offset: 2560)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1109, file: !39, line: 869, baseType: !174, size: 64, offset: 2624)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1109, file: !39, line: 869, baseType: !174, size: 64, offset: 2688)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1109, file: !39, line: 869, baseType: !174, size: 64, offset: 2752)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1109, file: !39, line: 870, baseType: !174, size: 64, offset: 2816)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1109, file: !39, line: 870, baseType: !174, size: 64, offset: 2880)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1109, file: !39, line: 870, baseType: !174, size: 64, offset: 2944)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1109, file: !39, line: 871, baseType: !174, size: 64, offset: 3008)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1109, file: !39, line: 871, baseType: !174, size: 64, offset: 3072)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1109, file: !39, line: 871, baseType: !174, size: 64, offset: 3136)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1109, file: !39, line: 871, baseType: !174, size: 64, offset: 3200)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1109, file: !39, line: 873, baseType: !1184, size: 3328, offset: 3264)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 3328, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 52)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1109, file: !39, line: 875, baseType: !1188, size: 1280, offset: 6592)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 1280, elements: !754)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1109, file: !39, line: 877, baseType: !1190, size: 64, offset: 7872)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !39, line: 877, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1109, file: !39, line: 880, baseType: !1193, size: 1088, offset: 7936)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1194, line: 72, baseType: !1195)
!1194 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1194, line: 23, size: 1088, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1204, !1205, !1206, !1207, !1234, !1235, !1236}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1195, file: !1194, line: 28, baseType: !430, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1195, file: !1194, line: 38, baseType: !648, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1195, file: !1194, line: 40, baseType: !174, size: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1195, file: !1194, line: 43, baseType: !830, size: 320, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1195, file: !1194, line: 44, baseType: !1202, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1194, line: 44, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !1194, line: 48, baseType: !174, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1195, file: !1194, line: 59, baseType: !642, size: 256, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1195, file: !1194, line: 60, baseType: !170, size: 64, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1195, file: !1194, line: 61, baseType: !1208, size: 64, offset: 960)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1211, line: 13, size: 1216, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1210, file: !1211, line: 14, baseType: !170, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1210, file: !1211, line: 15, baseType: !174, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1210, file: !1211, line: 17, baseType: !174, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1210, file: !1211, line: 17, baseType: !174, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1210, file: !1211, line: 18, baseType: !174, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1210, file: !1211, line: 18, baseType: !174, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1210, file: !1211, line: 19, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1210, file: !1211, line: 21, baseType: !171, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1210, file: !1211, line: 23, baseType: !171, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1210, file: !1211, line: 24, baseType: !171, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1210, file: !1211, line: 25, baseType: !171, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1210, file: !1211, line: 26, baseType: !171, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1210, file: !1211, line: 27, baseType: !171, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1210, file: !1211, line: 28, baseType: !171, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1210, file: !1211, line: 29, baseType: !171, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1210, file: !1211, line: 30, baseType: !171, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1210, file: !1211, line: 31, baseType: !171, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1210, file: !1211, line: 32, baseType: !171, size: 64, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1210, file: !1211, line: 33, baseType: !171, size: 64, offset: 1152)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1195, file: !1194, line: 63, baseType: !229, size: 32, offset: 1024)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1195, file: !1194, line: 69, baseType: !247, size: 16, offset: 1056)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1195, file: !1194, line: 70, baseType: !1237, size: 16, offset: 1072)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !238, line: 18, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !240, line: 23, baseType: !858)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1109, file: !39, line: 882, baseType: !174, size: 64, offset: 9024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1109, file: !39, line: 885, baseType: !209, size: 32, offset: 9088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1109, file: !39, line: 886, baseType: !1242, size: 64, offset: 9152)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !39, line: 732, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1109, file: !39, line: 901, baseType: !972, size: 64, offset: 9216)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1109, file: !39, line: 904, baseType: !1017, size: 64, offset: 9280)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1109, file: !39, line: 906, baseType: !1247, size: 64, offset: 9344)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !39, line: 906, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1109, file: !39, line: 930, baseType: !229, size: 32, offset: 9408)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1109, file: !39, line: 933, baseType: !229, size: 32, offset: 9440)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1109, file: !39, line: 935, baseType: !1252, size: 64, offset: 9472)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !80, line: 103, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1252, file: !80, line: 104, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !80, line: 101, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1109, file: !39, line: 940, baseType: !646, size: 64, offset: 9536)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1109, file: !39, line: 942, baseType: !1259, size: 256, offset: 9600)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1260, line: 98, size: 256, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1259, file: !1260, line: 99, baseType: !646, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1259, file: !1260, line: 100, baseType: !180, size: 128, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1259, file: !1260, line: 101, baseType: !1265, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1260, line: 21, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1106, file: !39, line: 986, baseType: !1271, offset: 10240)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !773)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1093, file: !39, line: 640, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1140, line: 297, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1140, line: 297, size: 64, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1274, file: !1140, line: 297, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1145, line: 19, baseType: !174)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !39, line: 646, baseType: !1279, size: 64, offset: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !39, line: 646, size: 64, elements: !1280)
!1280 = !{!1281, !1284}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1279, file: !39, line: 647, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !39, line: 542, baseType: !174)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1279, file: !39, line: 648, baseType: !1283, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1093, file: !39, line: 666, baseType: !121, size: 32, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1093, file: !39, line: 667, baseType: !1287, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !39, line: 579, size: 320, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1288, file: !39, line: 580, baseType: !830, size: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1093, file: !39, line: 670, baseType: !889, size: 8, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1093, file: !39, line: 681, baseType: !1293, size: 256, offset: 512)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !39, line: 678, size: 256, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1293, file: !39, line: 679, baseType: !822, size: 192, align: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1293, file: !39, line: 680, baseType: !174, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1093, file: !39, line: 689, baseType: !180, size: 128, offset: 768)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1093, file: !39, line: 691, baseType: !1299, size: 64, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !39, line: 691, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1093, file: !39, line: 694, baseType: !1302, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1305, line: 563, size: 1024, elements: !1306)
!1305 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1306 = !{!1307, !1311, !1312, !1316, !1320, !1324, !1512, !1516, !1520, !1524, !1525, !1526, !1530, !1534, !1541, !1545}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1304, file: !1305, line: 564, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !1092}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1304, file: !1305, line: 569, baseType: !1308, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1304, file: !1305, line: 571, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!121, !1092, !174}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1304, file: !1305, line: 572, baseType: !1317, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!121, !1092}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1304, file: !1305, line: 578, baseType: !1321, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!121, !1092, !174, !174, !174}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1304, file: !1305, line: 580, baseType: !1325, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !39, line: 1184, baseType: !13)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1305, line: 512, size: 896, elements: !1331)
!1331 = !{!1332, !1341, !1342, !1349, !1356, !1366, !1505, !1506, !1508, !1510}
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1305, line: 513, baseType: !1333, size: 320)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1330, file: !1305, line: 513, size: 320, elements: !1334)
!1334 = !{!1335, !1336, !1338, !1339, !1340}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1333, file: !1305, line: 514, baseType: !1092, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1333, file: !1305, line: 515, baseType: !1337, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !181, line: 154, baseType: !13)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1333, file: !1305, line: 516, baseType: !174, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1333, file: !1305, line: 517, baseType: !174, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1333, file: !1305, line: 518, baseType: !174, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !1305, line: 520, baseType: !38, size: 32, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1330, file: !1305, line: 522, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1145, line: 22, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 22, size: 64, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1345, file: !1145, line: 22, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1145, line: 15, baseType: !174)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1330, file: !1305, line: 524, baseType: !1350, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1140, line: 372, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1140, line: 372, size: 64, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1352, file: !1140, line: 372, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1145, line: 16, baseType: !174)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1305, line: 527, baseType: !1357, size: 64, offset: 512)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !1305, line: 527, size: 64, elements: !1358)
!1358 = !{!1359, !1365}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1357, file: !1305, line: 528, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1145, line: 21, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1145, line: 21, size: 64, elements: !1362)
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1361, file: !1145, line: 21, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1145, line: 14, baseType: !174)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1357, file: !1305, line: 529, baseType: !1344, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1330, file: !1305, line: 534, baseType: !1367, size: 64, offset: 576)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !39, line: 74, size: 512, align: 128, elements: !1369)
!1369 = !{!1370, !1371, !1499, !1504}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !39, line: 75, baseType: !174, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !39, line: 83, baseType: !1372, size: 320, offset: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !39, line: 83, size: 320, elements: !1373)
!1373 = !{!1374, !1395, !1409, !1413, !1498}
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !39, line: 84, baseType: !1375, size: 320)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !39, line: 84, size: 320, elements: !1376)
!1376 = !{!1377, !1388, !1389, !1394}
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !39, line: 90, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !39, line: 90, size: 128, elements: !1379)
!1379 = !{!1380, !1381, !1386, !1387}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1378, file: !39, line: 91, baseType: !180, size: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !39, line: 94, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !39, line: 94, size: 128, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1382, file: !39, line: 96, baseType: !170, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1382, file: !39, line: 98, baseType: !13, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1378, file: !39, line: 102, baseType: !180, size: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1378, file: !39, line: 103, baseType: !180, size: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1375, file: !39, line: 106, baseType: !353, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !39, line: 107, baseType: !1390, size: 64, offset: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !39, line: 107, size: 64, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1390, file: !39, line: 108, baseType: !174, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1390, file: !39, line: 109, baseType: !174, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1375, file: !39, line: 117, baseType: !174, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !39, line: 119, baseType: !1396, size: 320)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !39, line: 119, size: 320, elements: !1397)
!1397 = !{!1398, !1399, !1402, !1403, !1404}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1396, file: !39, line: 124, baseType: !174, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1396, file: !39, line: 125, baseType: !1400, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !39, line: 125, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1396, file: !39, line: 126, baseType: !174, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1396, file: !39, line: 127, baseType: !174, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !39, line: 128, baseType: !1405, size: 64, offset: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !39, line: 128, size: 64, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1405, file: !39, line: 133, baseType: !174, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1405, file: !39, line: 138, baseType: !646, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !39, line: 141, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !39, line: 141, size: 64, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1410, file: !39, line: 142, baseType: !174, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !39, line: 144, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1372, file: !39, line: 144, size: 128, elements: !1415)
!1415 = !{!1416, !1497}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1414, file: !39, line: 146, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !55, line: 126, size: 1216, elements: !1419)
!1419 = !{!1420, !1430, !1451, !1462, !1463, !1464, !1465, !1479, !1480, !1481}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1418, file: !55, line: 127, baseType: !1421, size: 384)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !55, line: 21, size: 384, elements: !1422)
!1422 = !{!1423, !1424, !1426, !1427, !1428, !1429}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1421, file: !55, line: 22, baseType: !174, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1421, file: !55, line: 23, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1421, file: !55, line: 24, baseType: !1425, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1421, file: !55, line: 25, baseType: !174, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1421, file: !55, line: 26, baseType: !174, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1421, file: !55, line: 27, baseType: !174, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1418, file: !55, line: 128, baseType: !1431, size: 128, offset: 384)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1432, line: 105, size: 128, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1431, file: !1432, line: 110, baseType: !174, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1431, file: !1432, line: 118, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1432, line: 95, size: 448, elements: !1438)
!1438 = !{!1439, !1440, !1446, !1447, !1448, !1449, !1450}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1437, file: !1432, line: 96, baseType: !646, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1437, file: !1432, line: 97, baseType: !1441, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1432, line: 60, baseType: !1443)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1437, file: !1432, line: 98, baseType: !1441, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1437, file: !1432, line: 99, baseType: !889, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1437, file: !1432, line: 100, baseType: !889, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1437, file: !1432, line: 101, baseType: !700, size: 128, align: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1437, file: !1432, line: 102, baseType: !1445, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1418, file: !55, line: 129, baseType: !1452, size: 256, offset: 512)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1453, line: 26, size: 256, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1452, file: !1453, line: 27, baseType: !13, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1452, file: !1453, line: 28, baseType: !1457, size: 192, offset: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1458, line: 43, size: 192, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1457, file: !1458, line: 44, baseType: !655, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1457, file: !1458, line: 45, baseType: !180, size: 128, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1418, file: !55, line: 130, baseType: !54, size: 32, offset: 768)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1418, file: !55, line: 131, baseType: !13, size: 32, offset: 800)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1418, file: !55, line: 132, baseType: !174, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1418, file: !55, line: 133, baseType: !1466, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !55, line: 77, size: 192, elements: !1469)
!1469 = !{!1470, !1474, !1475}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1468, file: !55, line: 83, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !1367}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1468, file: !55, line: 89, baseType: !1325, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1468, file: !55, line: 100, baseType: !1476, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!121, !1417, !174, !174, !121}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1418, file: !55, line: 134, baseType: !170, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1418, file: !55, line: 135, baseType: !121, size: 32, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !55, line: 136, baseType: !1482, size: 128, offset: 1088)
!1482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !55, line: 136, size: 128, elements: !1483)
!1483 = !{!1484, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1482, file: !55, line: 137, baseType: !1485, size: 128)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1486, line: 6, size: 128, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1485, file: !1486, line: 7, baseType: !430, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1485, file: !1486, line: 8, baseType: !430, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, scope: !1482, file: !55, line: 138, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1482, file: !55, line: 138, elements: !1492)
!1492 = !{!1493, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1491, file: !55, line: 138, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1491, file: !55, line: 138, elements: !561)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1491, file: !55, line: 138, baseType: !1496)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, elements: !773)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1414, file: !39, line: 147, baseType: !170, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1372, file: !39, line: 161, baseType: !700, size: 128, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !39, line: 164, baseType: !1500, size: 32, offset: 384)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !39, line: 164, size: 32, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1500, file: !39, line: 169, baseType: !229, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1500, file: !39, line: 177, baseType: !13, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1368, file: !39, line: 181, baseType: !229, size: 32, offset: 416)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1330, file: !1305, line: 535, baseType: !1367, size: 64, offset: 640)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1330, file: !1305, line: 541, baseType: !1507, size: 64, offset: 704)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1330, file: !1305, line: 545, baseType: !1509, size: 64, offset: 768)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1330, file: !1305, line: 549, baseType: !1511, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1140, line: 520, baseType: !1367)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1304, file: !1305, line: 581, baseType: !1513, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1328, !1329, !13}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1304, file: !1305, line: 582, baseType: !1517, size: 64, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1328, !1329, !174, !174}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1304, file: !1305, line: 584, baseType: !1521, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!174, !1092}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1304, file: !1305, line: 588, baseType: !1325, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1304, file: !1305, line: 591, baseType: !1325, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1304, file: !1305, line: 597, baseType: !1527, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!121, !1092, !174, !170, !121, !121}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1304, file: !1305, line: 603, baseType: !1531, size: 64, offset: 768)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!198, !1092}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1304, file: !1305, line: 613, baseType: !1535, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!121, !1092, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1540, line: 54, flags: DIFlagFwdDecl)
!1540 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1304, file: !1305, line: 625, baseType: !1542, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1538, !1092, !174}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1304, file: !1305, line: 633, baseType: !1546, size: 64, offset: 960)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1367, !1092, !174}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1093, file: !39, line: 697, baseType: !174, size: 64, offset: 1024)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1093, file: !39, line: 699, baseType: !1017, size: 64, offset: 1088)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1093, file: !39, line: 700, baseType: !170, size: 64, offset: 1152)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1093, file: !39, line: 711, baseType: !646, size: 64, offset: 1216)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1093, file: !39, line: 717, baseType: !1538, size: 64, offset: 1280)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1093, file: !39, line: 722, baseType: !1555, offset: 1344)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !39, line: 570, elements: !561)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1010, file: !26, line: 1928, baseType: !174, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1010, file: !26, line: 1929, baseType: !1558, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!121, !357, !1017}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1010, file: !26, line: 1930, baseType: !1562, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!121, !1017, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !26, line: 1061, baseType: !170)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1010, file: !26, line: 1931, baseType: !1558, size: 64, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1010, file: !26, line: 1932, baseType: !1568, size: 64, offset: 1024)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!121, !1017, !518, !518, !121}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1010, file: !26, line: 1933, baseType: !1572, size: 64, offset: 1088)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!121, !121, !1017, !121}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !26, line: 1934, baseType: !1576, size: 64, offset: 1152)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!121, !1017, !121, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !26, line: 1063, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1010, file: !26, line: 1935, baseType: !1129, size: 64, offset: 1216)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1010, file: !26, line: 1936, baseType: !1583, size: 64, offset: 1280)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!121, !121}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1010, file: !26, line: 1937, baseType: !1576, size: 64, offset: 1344)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1010, file: !26, line: 1938, baseType: !1588, size: 64, offset: 1408)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!311, !1591, !1017, !671, !325, !13}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1540, line: 59, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1010, file: !26, line: 1939, baseType: !1594, size: 64, offset: 1472)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!311, !1017, !671, !1591, !325, !13}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1010, file: !26, line: 1940, baseType: !1598, size: 64, offset: 1536)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1017}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1010, file: !26, line: 1941, baseType: !1602, size: 64, offset: 1600)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!121, !1017, !121, !1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1010, file: !26, line: 1942, baseType: !1608, size: 64, offset: 1664)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!171, !1017, !121, !518, !518}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1010, file: !26, line: 1944, baseType: !1612, size: 64, offset: 1728)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !630, !1017}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1010, file: !26, line: 1948, baseType: !1616, size: 64, offset: 1792)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!311, !1017, !518, !1017, !518, !325, !13}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1010, file: !26, line: 1950, baseType: !1620, size: 64, offset: 1856)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!518, !1017, !518, !1017, !518, !518, !13}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1010, file: !26, line: 1953, baseType: !1568, size: 64, offset: 1920)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1010, file: !26, line: 1954, baseType: !1625, size: 64, offset: 1984)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!121, !1628, !13}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !26, line: 1911, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1010, file: !26, line: 1955, baseType: !1631, size: 64, offset: 2048)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!121, !1628, !1060, !13}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !688, file: !26, line: 1018, baseType: !430, size: 64, offset: 1472)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !688, file: !26, line: 1020, baseType: !170, size: 64, offset: 1536)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !688, file: !26, line: 1023, baseType: !170, size: 64, offset: 1600)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !688, file: !26, line: 1027, baseType: !1638, size: 64, offset: 1664)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !688, file: !26, line: 1029, baseType: !353, size: 64, offset: 1728)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !688, file: !26, line: 1030, baseType: !1641, size: 32, offset: 1792)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1642, line: 8, baseType: !426)
!1642 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !688, file: !26, line: 1031, baseType: !1641, size: 32, offset: 1824)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !631, file: !632, line: 29, baseType: !170, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !573, file: !26, line: 2077, baseType: !627, size: 64, offset: 1088)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !573, file: !26, line: 2078, baseType: !627, size: 64, offset: 1152)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !573, file: !26, line: 2079, baseType: !627, size: 64, offset: 1216)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !573, file: !26, line: 2081, baseType: !1649, size: 64, offset: 1280)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!311, !508, !121, !279, !325, !518}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !573, file: !26, line: 2082, baseType: !1653, size: 64, offset: 1344)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!311, !508, !121, !198, !325, !518}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !573, file: !26, line: 2083, baseType: !1657, size: 64, offset: 1408)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!1660, !357}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !63, line: 296, size: 1664, elements: !1663)
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1688, !1689, !1690}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1662, file: !63, line: 297, baseType: !553, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1662, file: !63, line: 298, baseType: !180, size: 128, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1662, file: !63, line: 299, baseType: !180, size: 128, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1662, file: !63, line: 300, baseType: !180, size: 128, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1662, file: !63, line: 301, baseType: !642, size: 256, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1662, file: !63, line: 302, baseType: !209, size: 32, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1662, file: !63, line: 303, baseType: !229, size: 32, offset: 800)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1662, file: !63, line: 304, baseType: !508, size: 64, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1662, file: !63, line: 305, baseType: !1673, size: 64, offset: 896)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !63, line: 68, size: 64, elements: !1674)
!1674 = !{!1675, !1687}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !63, line: 69, baseType: !1676, size: 32)
!1676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1673, file: !63, line: 69, size: 32, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1676, file: !63, line: 70, baseType: !363, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1676, file: !63, line: 71, baseType: !372, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1676, file: !63, line: 72, baseType: !1681, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1682, line: 24, baseType: !1683)
!1682 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1682, line: 22, size: 32, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1683, file: !1682, line: 23, baseType: !1686, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1682, line: 20, baseType: !369)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1673, file: !63, line: 74, baseType: !62, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1662, file: !63, line: 306, baseType: !518, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1662, file: !63, line: 307, baseType: !174, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1662, file: !63, line: 308, baseType: !1691, size: 576, offset: 1088)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !63, line: 205, size: 576, elements: !1692)
!1692 = !{!1693, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1691, file: !63, line: 206, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !63, line: 66, baseType: !520)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1691, file: !63, line: 207, baseType: !1694, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1691, file: !63, line: 208, baseType: !1694, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1691, file: !63, line: 209, baseType: !1694, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1691, file: !63, line: 210, baseType: !1694, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1691, file: !63, line: 211, baseType: !1694, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1691, file: !63, line: 212, baseType: !1694, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1691, file: !63, line: 213, baseType: !846, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1691, file: !63, line: 214, baseType: !846, size: 64, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !573, file: !26, line: 2085, baseType: !1704, size: 64, offset: 1472)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!171, !508, !1707}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1709, line: 15, size: 256, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1710 = !{!1711, !1712, !1713, !1714, !1715}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1708, file: !1709, line: 16, baseType: !1337, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1708, file: !1709, line: 19, baseType: !121, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1708, file: !1709, line: 26, baseType: !174, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1708, file: !1709, line: 33, baseType: !174, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1708, file: !1709, line: 36, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !39, line: 33, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !573, file: !26, line: 2087, baseType: !1704, size: 64, offset: 1536)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !573, file: !26, line: 2089, baseType: !543, size: 64, offset: 1600)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !509, file: !26, line: 1198, baseType: !1721, size: 64, offset: 448)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !63, line: 324, size: 704, elements: !1724)
!1724 = !{!1725, !1729, !1733, !1737, !1738, !1739, !1740, !1741, !1746, !1751, !1755}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1723, file: !63, line: 325, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!121, !1661}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1723, file: !63, line: 326, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1661, !508, !121}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1723, file: !63, line: 327, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1661}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1723, file: !63, line: 328, baseType: !1726, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1723, file: !63, line: 329, baseType: !1726, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1723, file: !63, line: 330, baseType: !1726, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1723, file: !63, line: 331, baseType: !601, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1723, file: !63, line: 334, baseType: !1742, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1745, !357}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1723, file: !63, line: 335, baseType: !1747, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!121, !357, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1723, file: !63, line: 337, baseType: !1752, size: 64, offset: 576)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!121, !357, !1745}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1723, file: !63, line: 339, baseType: !1756, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!121, !508, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !509, file: !26, line: 1199, baseType: !1761, size: 64, offset: 512)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !63, line: 430, size: 704, elements: !1764)
!1764 = !{!1765, !1771, !1772, !1776, !1777, !1778, !1793, !1816, !1820, !1821, !1844}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1763, file: !63, line: 431, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!121, !508, !121, !121, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1763, file: !63, line: 432, baseType: !601, size: 64, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1763, file: !63, line: 433, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!121, !508, !13}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1763, file: !63, line: 434, baseType: !1773, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1763, file: !63, line: 435, baseType: !601, size: 64, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1763, file: !63, line: 436, baseType: !1779, size: 64, offset: 320)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!121, !508, !121, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !63, line: 417, size: 256, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1783, file: !63, line: 418, baseType: !121, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1783, file: !63, line: 419, baseType: !13, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1783, file: !63, line: 420, baseType: !13, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1783, file: !63, line: 422, baseType: !13, size: 32, offset: 96)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1783, file: !63, line: 423, baseType: !13, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1783, file: !63, line: 424, baseType: !13, size: 32, offset: 160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1783, file: !63, line: 425, baseType: !13, size: 32, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1783, file: !63, line: 426, baseType: !13, size: 32, offset: 224)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1763, file: !63, line: 437, baseType: !1794, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!121, !508, !1673, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !63, line: 345, size: 960, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1798, file: !63, line: 346, baseType: !121, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1798, file: !63, line: 347, baseType: !430, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1798, file: !63, line: 348, baseType: !430, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1798, file: !63, line: 349, baseType: !430, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1798, file: !63, line: 350, baseType: !430, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1798, file: !63, line: 351, baseType: !430, size: 64, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1798, file: !63, line: 352, baseType: !430, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1798, file: !63, line: 353, baseType: !652, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1798, file: !63, line: 355, baseType: !652, size: 64, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1798, file: !63, line: 356, baseType: !121, size: 32, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1798, file: !63, line: 357, baseType: !121, size: 32, offset: 608)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1798, file: !63, line: 358, baseType: !430, size: 64, offset: 640)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1798, file: !63, line: 359, baseType: !430, size: 64, offset: 704)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1798, file: !63, line: 360, baseType: !430, size: 64, offset: 768)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1798, file: !63, line: 361, baseType: !652, size: 64, offset: 832)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1798, file: !63, line: 362, baseType: !121, size: 32, offset: 896)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1763, file: !63, line: 438, baseType: !1817, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!121, !508, !1759, !1797}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1763, file: !63, line: 440, baseType: !1794, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1763, file: !63, line: 441, baseType: !1822, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!121, !508, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !63, line: 411, size: 1408, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1826, file: !63, line: 412, baseType: !13, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1826, file: !63, line: 413, baseType: !1830, size: 1344, offset: 64)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 1344, elements: !280)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !63, line: 397, size: 448, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1843}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !63, line: 398, baseType: !13, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1831, file: !63, line: 399, baseType: !13, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1831, file: !63, line: 401, baseType: !13, size: 32, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1831, file: !63, line: 402, baseType: !13, size: 32, offset: 96)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1831, file: !63, line: 403, baseType: !13, size: 32, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1831, file: !63, line: 404, baseType: !13, size: 32, offset: 160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1831, file: !63, line: 405, baseType: !13, size: 32, offset: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1831, file: !63, line: 406, baseType: !432, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1831, file: !63, line: 407, baseType: !1842, size: 64, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !181, line: 132, baseType: !430)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1831, file: !63, line: 408, baseType: !1842, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1763, file: !63, line: 442, baseType: !1773, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !509, file: !26, line: 1200, baseType: !1846, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1848)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !26, line: 54, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !509, file: !26, line: 1201, baseType: !174, size: 64, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !509, file: !26, line: 1202, baseType: !174, size: 64, offset: 704)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !509, file: !26, line: 1203, baseType: !174, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !509, file: !26, line: 1204, baseType: !392, size: 64, offset: 832)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !509, file: !26, line: 1205, baseType: !830, size: 320, offset: 896)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !509, file: !26, line: 1206, baseType: !121, size: 32, offset: 1216)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !509, file: !26, line: 1207, baseType: !229, size: 32, offset: 1248)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !509, file: !26, line: 1209, baseType: !170, size: 64, offset: 1280)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !509, file: !26, line: 1211, baseType: !1858, size: 64, offset: 1344)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !26, line: 1211, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !509, file: !26, line: 1223, baseType: !1863, size: 64, offset: 1408)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !409, line: 34, size: 64, elements: !1864)
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1863, file: !409, line: 35, baseType: !412, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !509, file: !26, line: 1224, baseType: !180, size: 128, offset: 1472)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !509, file: !26, line: 1225, baseType: !1868, size: 64, offset: 1600)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !26, line: 1225, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !509, file: !26, line: 1226, baseType: !1871, size: 64, offset: 1664)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !26, line: 1226, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !509, file: !26, line: 1227, baseType: !1874, size: 64, offset: 1728)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !26, line: 50, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !509, file: !26, line: 1228, baseType: !1877, size: 64, offset: 1792)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !26, line: 1228, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !509, file: !26, line: 1229, baseType: !553, size: 128, offset: 1856)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !509, file: !26, line: 1230, baseType: !13, size: 32, offset: 1984)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !509, file: !26, line: 1231, baseType: !1882, size: 2496, offset: 2048)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !63, line: 521, size: 2496, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1888, !1920}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1882, file: !63, line: 522, baseType: !13, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1882, file: !63, line: 523, baseType: !830, size: 320, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1882, file: !63, line: 524, baseType: !1887, size: 192, offset: 384)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 192, elements: !280)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1882, file: !63, line: 525, baseType: !1889, size: 1728, offset: 576)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 1728, elements: !280)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !63, line: 222, size: 576, elements: !1891)
!1891 = !{!1892, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1890, file: !63, line: 223, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !63, line: 445, size: 256, elements: !1895)
!1895 = !{!1896, !1897, !1910, !1911}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1894, file: !63, line: 446, baseType: !121, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1894, file: !63, line: 447, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !63, line: 312, size: 512, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1900, file: !63, line: 313, baseType: !601, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1900, file: !63, line: 314, baseType: !601, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1900, file: !63, line: 315, baseType: !601, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1900, file: !63, line: 316, baseType: !601, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1900, file: !63, line: 317, baseType: !1726, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1900, file: !63, line: 318, baseType: !1726, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1900, file: !63, line: 319, baseType: !1726, size: 64, offset: 384)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1900, file: !63, line: 320, baseType: !1756, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1894, file: !63, line: 448, baseType: !175, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1894, file: !63, line: 449, baseType: !1893, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1890, file: !63, line: 224, baseType: !121, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1890, file: !63, line: 226, baseType: !180, size: 128, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1890, file: !63, line: 227, baseType: !174, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1890, file: !63, line: 228, baseType: !13, size: 32, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1890, file: !63, line: 229, baseType: !13, size: 32, offset: 352)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1890, file: !63, line: 230, baseType: !1694, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1890, file: !63, line: 231, baseType: !1694, size: 64, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1890, file: !63, line: 232, baseType: !170, size: 64, offset: 512)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1882, file: !63, line: 526, baseType: !1921, size: 192, offset: 2304)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1898, size: 192, elements: !280)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !509, file: !26, line: 1233, baseType: !1923, size: 2368, offset: 4544)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !26, line: 1184, size: 2368, elements: !1924)
!1924 = !{!1925, !1926, !1927}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1923, file: !26, line: 1185, baseType: !249, size: 16)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1923, file: !26, line: 1186, baseType: !249, size: 16, offset: 16)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1923, file: !26, line: 1187, baseType: !1928, size: 2304, offset: 64)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 2304, elements: !280)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1930, line: 12, size: 768, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1931 = !{!1932, !1940, !1942, !3154, !3155}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1929, file: !1930, line: 13, baseType: !1933, size: 384)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1934, line: 17, size: 384, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1935 = !{!1936, !1937, !1938, !1939}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1933, file: !1934, line: 18, baseType: !121, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1933, file: !1934, line: 19, baseType: !121, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1933, file: !1934, line: 20, baseType: !758, size: 192, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1933, file: !1934, line: 22, baseType: !700, size: 128, align: 64, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1929, file: !1930, line: 14, baseType: !1941, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1929, file: !1930, line: 15, baseType: !1943, size: 64, offset: 448)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1944, line: 16, size: 64, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1943, file: !1944, line: 17, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1540, line: 746, size: 58368, elements: !1949)
!1949 = !{!1950, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !2030, !2041, !2136, !2140, !2143, !2174, !2175, !2176, !2177, !2188, !2190, !2191, !2192, !2193, !2194, !2195, !2206, !2207, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2224, !2225, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2313, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2328, !2329, !2330, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2362, !2368, !2369, !2370, !2371, !2372, !2376, !2379, !2386, !2391, !2394, !2397, !2400, !2403, !2543, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2583, !2584, !2585, !2594, !2602, !2603, !2604, !2605, !2606, !2611, !2612, !2613, !2616, !2617, !2620, !2623, !2626, !2634, !2637, !2638, !2724, !2725, !2726, !2727, !2728, !2734, !2735, !2736, !2737, !2740, !2741, !2744, !2747, !2748, !2751, !2752, !2753, !2756, !2757, !2758, !2759, !2760, !2761, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2793, !2794, !2800, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2812, !2884, !2886, !2887, !2888, !2889, !2890, !2902, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2931, !2932, !2933}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1948, file: !1540, line: 752, baseType: !1951, size: 192)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1952, line: 56, size: 192, elements: !1953)
!1952 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1953 = !{!1954, !1955, !1956, !1957}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1951, file: !1952, line: 57, baseType: !174, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1951, file: !1952, line: 58, baseType: !174, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1951, file: !1952, line: 59, baseType: !426, size: 32, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1951, file: !1952, line: 61, baseType: !426, size: 32, offset: 160)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1948, file: !1540, line: 754, baseType: !13, size: 32, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1948, file: !1540, line: 767, baseType: !170, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1948, file: !1540, line: 768, baseType: !745, size: 32, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1540, line: 770, baseType: !13, size: 32, offset: 352)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1948, file: !1540, line: 771, baseType: !13, size: 32, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1948, file: !1540, line: 774, baseType: !121, size: 32, offset: 416)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1948, file: !1540, line: 775, baseType: !1965, size: 128, offset: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1966, line: 58, size: 128, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1967 = !{!1968, !1969, !1974, !1975}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1965, file: !1966, line: 59, baseType: !694, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1966, line: 60, baseType: !1970, size: 32, offset: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1966, line: 60, size: 32, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1970, file: !1966, line: 61, baseType: !13, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1970, file: !1966, line: 62, baseType: !229, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1965, file: !1966, line: 65, baseType: !247, size: 16, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1965, file: !1966, line: 65, baseType: !247, size: 16, offset: 112)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1948, file: !1540, line: 776, baseType: !13, size: 32, offset: 576)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1948, file: !1540, line: 777, baseType: !174, size: 64, offset: 640)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1948, file: !1540, line: 778, baseType: !1947, size: 64, offset: 704)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1948, file: !1540, line: 787, baseType: !121, size: 32, offset: 768)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1948, file: !1540, line: 788, baseType: !121, size: 32, offset: 800)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1948, file: !1540, line: 790, baseType: !121, size: 32, offset: 832)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1948, file: !1540, line: 792, baseType: !121, size: 32, offset: 864)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1948, file: !1540, line: 793, baseType: !121, size: 32, offset: 896)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1948, file: !1540, line: 794, baseType: !121, size: 32, offset: 928)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1948, file: !1540, line: 795, baseType: !13, size: 32, offset: 960)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1948, file: !1540, line: 797, baseType: !1987, size: 2048, offset: 1024)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1540, line: 551, size: 2048, elements: !1988)
!1988 = !{!1989, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2009, !2012, !2013, !2014}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1987, file: !1540, line: 553, baseType: !1990, size: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1540, line: 411, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1990, file: !1540, line: 412, baseType: !174, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1990, file: !1540, line: 413, baseType: !426, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1987, file: !1540, line: 554, baseType: !822, size: 192, align: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1987, file: !1540, line: 555, baseType: !430, size: 64, offset: 320)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1987, file: !1540, line: 556, baseType: !430, size: 64, offset: 384)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1987, file: !1540, line: 558, baseType: !180, size: 128, offset: 448)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1987, file: !1540, line: 559, baseType: !13, size: 32, offset: 576)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1987, file: !1540, line: 561, baseType: !430, size: 64, offset: 640)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1987, file: !1540, line: 562, baseType: !430, size: 64, offset: 704)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1987, file: !1540, line: 563, baseType: !430, size: 64, offset: 768)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1987, file: !1540, line: 564, baseType: !430, size: 64, offset: 832)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1987, file: !1540, line: 565, baseType: !652, size: 64, offset: 896)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1987, file: !1540, line: 566, baseType: !430, size: 64, offset: 960)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1987, file: !1540, line: 568, baseType: !430, size: 64, offset: 1024)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1987, file: !1540, line: 571, baseType: !121, size: 32, offset: 1088)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1987, file: !1540, line: 572, baseType: !2008, size: 64, offset: 1152)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1987, file: !1540, line: 574, baseType: !2010, size: 64, offset: 1216)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1540, line: 49, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1987, file: !1540, line: 576, baseType: !2010, size: 64, offset: 1280)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1987, file: !1540, line: 578, baseType: !174, size: 64, offset: 1344)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1987, file: !1540, line: 588, baseType: !2015, size: 512, align: 512, offset: 1536)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1540, line: 497, size: 512, align: 512, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2015, file: !1540, line: 498, baseType: !430, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2015, file: !1540, line: 499, baseType: !430, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2015, file: !1540, line: 500, baseType: !430, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2015, file: !1540, line: 501, baseType: !426, size: 32, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2015, file: !1540, line: 502, baseType: !426, size: 32, offset: 224)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2015, file: !1540, line: 503, baseType: !174, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2015, file: !1540, line: 504, baseType: !174, size: 64, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2015, file: !1540, line: 505, baseType: !174, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2015, file: !1540, line: 506, baseType: !2026, size: 64, align: 64, offset: 448)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1540, line: 445, size: 64, align: 64, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2026, file: !1540, line: 446, baseType: !13, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2026, file: !1540, line: 447, baseType: !13, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1948, file: !1540, line: 798, baseType: !2031, size: 384, offset: 3072)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1540, line: 592, size: 384, elements: !2032)
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2031, file: !1540, line: 593, baseType: !180, size: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2031, file: !1540, line: 594, baseType: !174, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2031, file: !1540, line: 595, baseType: !174, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2031, file: !1540, line: 596, baseType: !13, size: 32, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2031, file: !1540, line: 597, baseType: !249, size: 16, offset: 288)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2031, file: !1540, line: 598, baseType: !249, size: 16, offset: 304)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2031, file: !1540, line: 600, baseType: !2040, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1948, file: !1540, line: 799, baseType: !2042, size: 1792, offset: 3456)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1540, line: 610, size: 1792, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2133, !2134}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2042, file: !1540, line: 611, baseType: !822, size: 192, align: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2042, file: !1540, line: 618, baseType: !430, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2042, file: !1540, line: 619, baseType: !430, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2042, file: !1540, line: 620, baseType: !430, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2042, file: !1540, line: 621, baseType: !430, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2042, file: !1540, line: 622, baseType: !430, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2042, file: !1540, line: 629, baseType: !652, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2042, file: !1540, line: 630, baseType: !430, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !1540, line: 631, baseType: !13, size: 32, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2042, file: !1540, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2042, file: !1540, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2042, file: !1540, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2042, file: !1540, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2042, file: !1540, line: 662, baseType: !2058, size: 512, offset: 704)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !69, line: 118, size: 512, elements: !2059)
!2059 = !{!2060, !2068, !2069, !2074, !2129, !2130, !2131, !2132}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2058, file: !69, line: 119, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2062, line: 9, size: 256, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2061, file: !2062, line: 10, baseType: !822, size: 192, align: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2061, file: !2062, line: 11, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2067, line: 29, baseType: !652)
!2067 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2058, file: !69, line: 120, baseType: !2066, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2058, file: !69, line: 121, baseType: !2070, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!68, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2058, file: !69, line: 122, baseType: !2075, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !69, line: 159, size: 512, align: 512, elements: !2077)
!2077 = !{!2078, !2103, !2104, !2107, !2112, !2113, !2124, !2128}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2076, file: !69, line: 160, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !69, line: 215, size: 4608, align: 512, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !69, line: 216, baseType: !655, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2080, file: !69, line: 217, baseType: !13, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2080, file: !69, line: 218, baseType: !13, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2080, file: !69, line: 219, baseType: !13, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2080, file: !69, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2080, file: !69, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2080, file: !69, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2080, file: !69, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2080, file: !69, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2080, file: !69, line: 226, baseType: !13, size: 32, offset: 160)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2080, file: !69, line: 227, baseType: !249, size: 16, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2080, file: !69, line: 228, baseType: !249, size: 16, offset: 208)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2080, file: !69, line: 229, baseType: !13, size: 32, offset: 224)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2080, file: !69, line: 235, baseType: !2066, size: 64, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2080, file: !69, line: 236, baseType: !2073, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2080, file: !69, line: 237, baseType: !2066, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2080, file: !69, line: 238, baseType: !2073, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2080, file: !69, line: 239, baseType: !2100, size: 4096, align: 512, offset: 512)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2076, size: 4096, align: 512, elements: !2101)
!2101 = !{!2102}
!2102 = !DISubrange(count: 8)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2076, file: !69, line: 161, baseType: !13, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2076, file: !69, line: 162, baseType: !2105, size: 32, offset: 96)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !181, line: 32, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !313, line: 96, baseType: !121)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2076, file: !69, line: 163, baseType: !2108, size: 32, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !399, line: 274, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !399, line: 274, size: 32, elements: !2110)
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2109, file: !399, line: 274, baseType: !403, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2076, file: !69, line: 164, baseType: !2073, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2076, file: !69, line: 165, baseType: !2114, size: 128, offset: 256)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2062, line: 14, size: 128, elements: !2115)
!2115 = !{!2116}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2114, file: !2062, line: 15, baseType: !2117, size: 128)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !823, line: 26, size: 128, elements: !2118)
!2118 = !{!2119, !2123}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2117, file: !823, line: 27, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !823, line: 12, size: 64, elements: !2121)
!2121 = !{!2122}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2120, file: !823, line: 13, baseType: !827, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2117, file: !823, line: 28, baseType: !827, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2076, file: !69, line: 166, baseType: !2125, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!2066}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2076, file: !69, line: 167, baseType: !2066, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2058, file: !69, line: 123, baseType: !237, size: 8, offset: 448)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2058, file: !69, line: 124, baseType: !237, size: 8, offset: 456)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2058, file: !69, line: 125, baseType: !237, size: 8, offset: 464)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2058, file: !69, line: 126, baseType: !237, size: 8, offset: 472)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2042, file: !1540, line: 671, baseType: !2058, size: 512, offset: 1216)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2042, file: !1540, line: 679, baseType: !2135, size: 64, offset: 1728)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1948, file: !1540, line: 800, baseType: !2137, size: 64, offset: 5248)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2139)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1540, line: 800, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1948, file: !1540, line: 809, baseType: !2141, size: 64, offset: 5312)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1540, line: 70, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1948, file: !1540, line: 825, baseType: !2144, size: 2048, align: 512, offset: 5632)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1540, line: 509, size: 2048, align: 512, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2144, file: !1540, line: 511, baseType: !430, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2144, file: !1540, line: 512, baseType: !430, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2144, file: !1540, line: 513, baseType: !430, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2144, file: !1540, line: 514, baseType: !430, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2144, file: !1540, line: 515, baseType: !430, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2144, file: !1540, line: 516, baseType: !430, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2144, file: !1540, line: 518, baseType: !430, size: 64, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2144, file: !1540, line: 519, baseType: !430, size: 64, offset: 448)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2144, file: !1540, line: 520, baseType: !652, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2144, file: !1540, line: 522, baseType: !430, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2144, file: !1540, line: 523, baseType: !430, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2144, file: !1540, line: 524, baseType: !652, size: 64, offset: 704)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2144, file: !1540, line: 526, baseType: !652, size: 64, offset: 768)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2144, file: !1540, line: 527, baseType: !430, size: 64, offset: 832)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2144, file: !1540, line: 529, baseType: !430, size: 64, offset: 896)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2144, file: !1540, line: 530, baseType: !430, size: 64, offset: 960)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2144, file: !1540, line: 531, baseType: !430, size: 64, offset: 1024)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2144, file: !1540, line: 532, baseType: !430, size: 64, offset: 1088)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2144, file: !1540, line: 533, baseType: !430, size: 64, offset: 1152)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2144, file: !1540, line: 535, baseType: !430, size: 64, offset: 1216)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2144, file: !1540, line: 536, baseType: !430, size: 64, offset: 1280)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2144, file: !1540, line: 537, baseType: !430, size: 64, offset: 1344)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2144, file: !1540, line: 538, baseType: !430, size: 64, offset: 1408)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2144, file: !1540, line: 539, baseType: !430, size: 64, offset: 1472)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2144, file: !1540, line: 540, baseType: !430, size: 64, offset: 1536)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2144, file: !1540, line: 541, baseType: !430, size: 64, offset: 1600)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2144, file: !1540, line: 542, baseType: !430, size: 64, offset: 1664)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2144, file: !1540, line: 543, baseType: !430, size: 64, offset: 1728)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1948, file: !1540, line: 833, baseType: !13, size: 32, offset: 7680)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1948, file: !1540, line: 836, baseType: !13, size: 32, offset: 7712)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1948, file: !1540, line: 837, baseType: !121, size: 32, offset: 7744)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1948, file: !1540, line: 838, baseType: !2178, size: 64, offset: 7808)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2181, line: 19, baseType: !2182)
!2181 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2181, line: 19, size: 64, elements: !2183)
!2183 = !{!2184}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2182, file: !2181, line: 19, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !2186)
!2186 = !{!2187}
!2187 = !DISubrange(count: 1)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1948, file: !1540, line: 839, baseType: !2189, size: 64, offset: 7872)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1948, file: !1540, line: 840, baseType: !2180, size: 64, offset: 7936)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1948, file: !1540, line: 841, baseType: !170, size: 64, offset: 8000)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1948, file: !1540, line: 843, baseType: !249, size: 16, offset: 8064)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1948, file: !1540, line: 845, baseType: !249, size: 16, offset: 8080)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1948, file: !1540, line: 848, baseType: !121, size: 32, offset: 8096)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1948, file: !1540, line: 849, baseType: !2196, size: 32, offset: 8128)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1540, line: 718, size: 32, elements: !2197)
!2197 = !{!2198, !2205}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2196, file: !1540, line: 724, baseType: !2199, size: 32)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2196, file: !1540, line: 719, size: 32, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2199, file: !1540, line: 720, baseType: !237, size: 8)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2199, file: !1540, line: 721, baseType: !237, size: 8, offset: 8)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2199, file: !1540, line: 722, baseType: !237, size: 8, offset: 16)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2199, file: !1540, line: 723, baseType: !237, size: 8, offset: 24)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2196, file: !1540, line: 725, baseType: !426, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1948, file: !1540, line: 850, baseType: !180, size: 128, offset: 8192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1948, file: !1540, line: 851, baseType: !2208, size: 64, offset: 8320)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1540, line: 60, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1948, file: !1540, line: 855, baseType: !174, size: 64, offset: 8384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1948, file: !1540, line: 856, baseType: !237, size: 8, offset: 8448)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1948, file: !1540, line: 857, baseType: !237, size: 8, offset: 8456)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1948, file: !1540, line: 858, baseType: !121, size: 32, offset: 8480)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1948, file: !1540, line: 859, baseType: !180, size: 128, offset: 8512)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1948, file: !1540, line: 860, baseType: !121, size: 32, offset: 8640)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1948, file: !1540, line: 861, baseType: !180, size: 128, offset: 8704)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1948, file: !1540, line: 873, baseType: !2218, size: 256, offset: 8832)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1540, line: 376, size: 256, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2218, file: !1540, line: 381, baseType: !174, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2218, file: !1540, line: 384, baseType: !432, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2218, file: !1540, line: 389, baseType: !432, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2218, file: !1540, line: 392, baseType: !432, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1948, file: !1540, line: 875, baseType: !180, size: 128, offset: 9088)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1948, file: !1540, line: 877, baseType: !2226, size: 320, offset: 9216)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2227, line: 86, size: 320, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2228 = !{!2229, !2230, !2231}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2226, file: !2227, line: 87, baseType: !121, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2226, file: !2227, line: 88, baseType: !180, size: 128, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2226, file: !2227, line: 89, baseType: !180, size: 128, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1948, file: !1540, line: 878, baseType: !822, size: 192, align: 64, offset: 9536)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1948, file: !1540, line: 881, baseType: !1105, size: 64, offset: 9728)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1948, file: !1540, line: 882, baseType: !1105, size: 64, offset: 9792)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1948, file: !1540, line: 884, baseType: !121, size: 32, offset: 9856)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1948, file: !1540, line: 885, baseType: !121, size: 32, offset: 9888)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1948, file: !1540, line: 886, baseType: !121, size: 32, offset: 9920)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1948, file: !1540, line: 888, baseType: !121, size: 32, offset: 9952)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1948, file: !1540, line: 890, baseType: !174, size: 64, offset: 9984)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1948, file: !1540, line: 893, baseType: !13, size: 32, offset: 10048)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1948, file: !1540, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1948, file: !1540, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1948, file: !1540, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1948, file: !1540, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1948, file: !1540, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1948, file: !1540, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1948, file: !1540, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1948, file: !1540, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1948, file: !1540, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1948, file: !1540, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1948, file: !1540, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1948, file: !1540, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1948, file: !1540, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1948, file: !1540, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1948, file: !1540, line: 969, baseType: !174, size: 64, offset: 10176)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1948, file: !1540, line: 971, baseType: !2257, size: 448, offset: 10240)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !74, line: 25, size: 448, elements: !2258)
!2258 = !{!2259, !2260, !2265}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2257, file: !74, line: 26, baseType: !174, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2257, file: !74, line: 27, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!171, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !74, line: 28, baseType: !2266, size: 320, offset: 128)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2257, file: !74, line: 28, size: 320, elements: !2267)
!2267 = !{!2268, !2278, !2303}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2266, file: !74, line: 37, baseType: !2269, size: 320)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2266, file: !74, line: 30, size: 320, elements: !2270)
!2270 = !{!2271, !2273, !2274, !2275, !2276, !2277}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2269, file: !74, line: 31, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2269, file: !74, line: 32, baseType: !426, size: 32, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2269, file: !74, line: 33, baseType: !426, size: 32, offset: 96)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2269, file: !74, line: 34, baseType: !426, size: 32, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2269, file: !74, line: 35, baseType: !430, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2269, file: !74, line: 36, baseType: !2272, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2266, file: !74, line: 47, baseType: !2279, size: 192)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2266, file: !74, line: 39, size: 192, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2302}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2279, file: !74, line: 40, baseType: !2105, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2279, file: !74, line: 41, baseType: !73, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !74, line: 42, baseType: !2284, size: 64, offset: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2279, file: !74, line: 42, size: 64, elements: !2285)
!2285 = !{!2286, !2294}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2284, file: !74, line: 43, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2289, line: 7, size: 128, elements: !2290)
!2289 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2290 = !{!2291, !2293}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2288, file: !2289, line: 8, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !313, line: 93, baseType: !520)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2288, file: !2289, line: 9, baseType: !520, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2284, file: !74, line: 44, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2297, line: 7, size: 64, elements: !2298)
!2297 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2298 = !{!2299, !2301}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2296, file: !2297, line: 8, baseType: !2300, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2297, line: 5, baseType: !815)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2296, file: !2297, line: 9, baseType: !815, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2279, file: !74, line: 46, baseType: !430, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2266, file: !74, line: 55, baseType: !2304, size: 256)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2266, file: !74, line: 49, size: 256, elements: !2305)
!2305 = !{!2306, !2309, !2310, !2311, !2312}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2304, file: !74, line: 50, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !74, line: 14, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2304, file: !74, line: 51, baseType: !121, size: 32, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2304, file: !74, line: 52, baseType: !121, size: 32, offset: 96)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2304, file: !74, line: 53, baseType: !174, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2304, file: !74, line: 54, baseType: !174, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1948, file: !1540, line: 973, baseType: !2314, size: 32, offset: 10688)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !181, line: 27, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !313, line: 28, baseType: !121)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1948, file: !1540, line: 974, baseType: !2314, size: 32, offset: 10720)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1948, file: !1540, line: 978, baseType: !174, size: 64, offset: 10752)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1948, file: !1540, line: 987, baseType: !1947, size: 64, offset: 10816)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1948, file: !1540, line: 990, baseType: !1947, size: 64, offset: 10880)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1948, file: !1540, line: 995, baseType: !180, size: 128, offset: 10944)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1948, file: !1540, line: 996, baseType: !180, size: 128, offset: 11072)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1948, file: !1540, line: 997, baseType: !1947, size: 64, offset: 11200)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1948, file: !1540, line: 1005, baseType: !180, size: 128, offset: 11264)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1948, file: !1540, line: 1006, baseType: !180, size: 128, offset: 11392)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1948, file: !1540, line: 1009, baseType: !741, size: 64, offset: 11520)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1948, file: !1540, line: 1010, baseType: !2327, size: 512, offset: 11584)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 512, elements: !754)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1948, file: !1540, line: 1011, baseType: !180, size: 128, offset: 12096)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1948, file: !1540, line: 1012, baseType: !180, size: 128, offset: 12224)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1948, file: !1540, line: 1014, baseType: !2331, size: 64, offset: 12352)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1948, file: !1540, line: 1017, baseType: !624, size: 64, offset: 12416)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1948, file: !1540, line: 1020, baseType: !624, size: 64, offset: 12480)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1948, file: !1540, line: 1023, baseType: !170, size: 64, offset: 12544)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1948, file: !1540, line: 1025, baseType: !430, size: 64, offset: 12608)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1948, file: !1540, line: 1026, baseType: !430, size: 64, offset: 12672)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1948, file: !1540, line: 1031, baseType: !430, size: 64, offset: 12736)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1948, file: !1540, line: 1032, baseType: !2339, size: 192, offset: 12800)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1540, line: 324, size: 192, elements: !2340)
!2340 = !{!2341, !2342, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2339, file: !1540, line: 326, baseType: !430, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2339, file: !1540, line: 327, baseType: !430, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2339, file: !1540, line: 328, baseType: !655, size: 32, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1948, file: !1540, line: 1041, baseType: !174, size: 64, offset: 12992)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1948, file: !1540, line: 1042, baseType: !174, size: 64, offset: 13056)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1948, file: !1540, line: 1045, baseType: !430, size: 64, offset: 13120)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1948, file: !1540, line: 1048, baseType: !430, size: 64, offset: 13184)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1948, file: !1540, line: 1051, baseType: !174, size: 64, offset: 13248)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1948, file: !1540, line: 1052, baseType: !174, size: 64, offset: 13312)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1948, file: !1540, line: 1055, baseType: !2351, size: 640, offset: 13376)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2352, line: 132, size: 640, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2353 = !{!2354, !2360, !2361}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2351, file: !2352, line: 133, baseType: !2355, size: 576)
!2355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2356, size: 576, elements: !280)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2352, line: 117, size: 192, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2356, file: !2352, line: 118, baseType: !430, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2356, file: !2352, line: 119, baseType: !2114, size: 128, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2351, file: !2352, line: 134, baseType: !13, size: 32, offset: 576)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2351, file: !2352, line: 135, baseType: !13, size: 32, offset: 608)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1948, file: !1540, line: 1058, baseType: !2363, size: 448, offset: 14016)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2352, line: 144, size: 448, elements: !2364)
!2364 = !{!2365, !2366, !2367}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2363, file: !2352, line: 145, baseType: !700, size: 128, align: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2363, file: !2352, line: 146, baseType: !642, size: 256, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2363, file: !2352, line: 147, baseType: !13, size: 32, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1948, file: !1540, line: 1064, baseType: !780, size: 64, offset: 14464)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1948, file: !1540, line: 1067, baseType: !780, size: 64, offset: 14528)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1948, file: !1540, line: 1070, baseType: !780, size: 64, offset: 14592)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1948, file: !1540, line: 1074, baseType: !807, size: 64, offset: 14656)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1948, file: !1540, line: 1084, baseType: !2373, size: 128, offset: 14720)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2374)
!2374 = !{!2375}
!2375 = !DISubrange(count: 16)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1948, file: !1540, line: 1086, baseType: !2377, size: 64, offset: 14848)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1540, line: 55, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1948, file: !1540, line: 1089, baseType: !2380, size: 64, offset: 14912)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2381, line: 12, size: 64, elements: !2382)
!2381 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2382 = !{!2383}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2380, file: !2381, line: 13, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2381, line: 8, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1948, file: !1540, line: 1090, baseType: !2387, size: 128, offset: 14976)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2388, line: 13, size: 128, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2389 = !{!2390}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2387, file: !2388, line: 14, baseType: !180, size: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1948, file: !1540, line: 1097, baseType: !2392, size: 64, offset: 15104)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1540, line: 50, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1948, file: !1540, line: 1100, baseType: !2395, size: 64, offset: 15168)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1540, line: 1100, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1948, file: !1540, line: 1103, baseType: !2398, size: 64, offset: 15232)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1540, line: 53, flags: DIFlagFwdDecl)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1948, file: !1540, line: 1107, baseType: !2401, size: 64, offset: 15296)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1540, line: 56, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1948, file: !1540, line: 1110, baseType: !2404, size: 64, offset: 15360)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2406, line: 93, size: 8768, elements: !2407)
!2406 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2457, !2466, !2467, !2469, !2470, !2471, !2474, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2512, !2513, !2520, !2530, !2533, !2534, !2537, !2538, !2539, !2540, !2541, !2542}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2405, file: !2406, line: 94, baseType: !745, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2405, file: !2406, line: 95, baseType: !229, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2405, file: !2406, line: 96, baseType: !121, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2405, file: !2406, line: 97, baseType: !121, size: 32, offset: 96)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2405, file: !2406, line: 98, baseType: !180, size: 128, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2405, file: !2406, line: 100, baseType: !758, size: 192, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2405, file: !2406, line: 103, baseType: !1947, size: 64, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2405, file: !2406, line: 106, baseType: !2416, size: 192, offset: 512)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !977, line: 32, size: 192, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2416, file: !977, line: 33, baseType: !180, size: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2416, file: !977, line: 34, baseType: !2420, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2421, line: 25, baseType: !2422)
!2421 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2421, line: 23, size: 64, elements: !2423)
!2423 = !{!2424}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2422, file: !2421, line: 24, baseType: !2185, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2405, file: !2406, line: 109, baseType: !549, size: 64, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2405, file: !2406, line: 112, baseType: !121, size: 32, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2405, file: !2406, line: 114, baseType: !121, size: 32, offset: 800)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2405, file: !2406, line: 115, baseType: !1947, size: 64, offset: 832)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2405, file: !2406, line: 118, baseType: !121, size: 32, offset: 896)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2405, file: !2406, line: 119, baseType: !13, size: 32, offset: 928)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2405, file: !2406, line: 121, baseType: !2432, size: 64, offset: 960)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2406, line: 80, size: 448, elements: !2434)
!2434 = !{!2435, !2436, !2442}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2433, file: !2406, line: 81, baseType: !229, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2433, file: !2406, line: 82, baseType: !2437, size: 128, offset: 64)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2406, line: 75, size: 128, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2437, file: !2406, line: 76, baseType: !1947, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2437, file: !2406, line: 77, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2433, file: !2406, line: 83, baseType: !1452, size: 256, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2405, file: !2406, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2405, file: !2406, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2405, file: !2406, line: 138, baseType: !13, size: 32, offset: 1056)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2405, file: !2406, line: 139, baseType: !180, size: 128, offset: 1088)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2405, file: !2406, line: 142, baseType: !2058, size: 512, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2405, file: !2406, line: 143, baseType: !2066, size: 64, offset: 1728)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2405, file: !2406, line: 150, baseType: !2450, size: 256, offset: 1792)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2451, size: 256, elements: !2455)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2406, line: 38, size: 128, elements: !2452)
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2451, file: !2406, line: 39, baseType: !430, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2451, file: !2406, line: 40, baseType: !430, size: 64, offset: 64)
!2455 = !{!2456}
!2456 = !DISubrange(count: 2)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2405, file: !2406, line: 156, baseType: !2458, size: 192, offset: 2048)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2406, line: 66, size: 192, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2458, file: !2406, line: 67, baseType: !2461, size: 192)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2406, line: 47, size: 192, elements: !2462)
!2462 = !{!2463, !2464, !2465}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2461, file: !2406, line: 48, baseType: !648, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2461, file: !2406, line: 49, baseType: !648, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2461, file: !2406, line: 50, baseType: !648, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2405, file: !2406, line: 160, baseType: !2351, size: 640, offset: 2240)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2405, file: !2406, line: 163, baseType: !2468, size: 256, offset: 2880)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !754)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2405, file: !2406, line: 169, baseType: !741, size: 64, offset: 3136)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2405, file: !2406, line: 172, baseType: !121, size: 32, offset: 3200)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2405, file: !2406, line: 174, baseType: !2472, size: 64, offset: 3264)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2406, line: 174, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2405, file: !2406, line: 185, baseType: !2475, size: 64, offset: 3328)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !399, line: 860, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 853, size: 64, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2476, file: !399, line: 858, baseType: !398, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2476, file: !399, line: 859, baseType: !209, size: 32, offset: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2405, file: !2406, line: 186, baseType: !430, size: 64, offset: 3392)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2405, file: !2406, line: 186, baseType: !430, size: 64, offset: 3456)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2405, file: !2406, line: 186, baseType: !430, size: 64, offset: 3520)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2405, file: !2406, line: 186, baseType: !430, size: 64, offset: 3584)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2405, file: !2406, line: 187, baseType: !430, size: 64, offset: 3648)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2405, file: !2406, line: 188, baseType: !430, size: 64, offset: 3712)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2405, file: !2406, line: 189, baseType: !2339, size: 192, offset: 3776)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2405, file: !2406, line: 190, baseType: !174, size: 64, offset: 3968)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2405, file: !2406, line: 190, baseType: !174, size: 64, offset: 4032)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2405, file: !2406, line: 190, baseType: !174, size: 64, offset: 4096)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2405, file: !2406, line: 190, baseType: !174, size: 64, offset: 4160)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2405, file: !2406, line: 191, baseType: !174, size: 64, offset: 4224)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2405, file: !2406, line: 191, baseType: !174, size: 64, offset: 4288)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2405, file: !2406, line: 191, baseType: !174, size: 64, offset: 4352)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2405, file: !2406, line: 191, baseType: !174, size: 64, offset: 4416)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2405, file: !2406, line: 192, baseType: !174, size: 64, offset: 4480)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2405, file: !2406, line: 192, baseType: !174, size: 64, offset: 4544)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2405, file: !2406, line: 192, baseType: !174, size: 64, offset: 4608)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2405, file: !2406, line: 192, baseType: !174, size: 64, offset: 4672)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2405, file: !2406, line: 193, baseType: !174, size: 64, offset: 4736)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2405, file: !2406, line: 193, baseType: !174, size: 64, offset: 4800)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2405, file: !2406, line: 194, baseType: !2502, size: 448, offset: 4864)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2503, line: 12, size: 448, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2502, file: !2503, line: 15, baseType: !430, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2502, file: !2503, line: 17, baseType: !430, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2502, file: !2503, line: 19, baseType: !430, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2502, file: !2503, line: 21, baseType: !430, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2502, file: !2503, line: 29, baseType: !430, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2502, file: !2503, line: 35, baseType: !430, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2502, file: !2503, line: 44, baseType: !430, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2405, file: !2406, line: 202, baseType: !432, size: 64, offset: 5312)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2405, file: !2406, line: 213, baseType: !2514, size: 2048, offset: 5376)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2515, size: 2048, elements: !2374)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2516, line: 43, size: 128, elements: !2517)
!2516 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2515, file: !2516, line: 44, baseType: !327, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2515, file: !2516, line: 45, baseType: !327, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2405, file: !2406, line: 216, baseType: !2521, size: 448, offset: 7424)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2406, line: 30, size: 448, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2521, file: !2406, line: 31, baseType: !121, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2521, file: !2406, line: 32, baseType: !171, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2521, file: !2406, line: 33, baseType: !174, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2521, file: !2406, line: 34, baseType: !430, size: 64, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2521, file: !2406, line: 34, baseType: !430, size: 64, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2521, file: !2406, line: 35, baseType: !174, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2521, file: !2406, line: 35, baseType: !174, size: 64, offset: 384)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2405, file: !2406, line: 219, baseType: !2531, size: 64, offset: 7872)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2406, line: 219, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2405, file: !2406, line: 222, baseType: !13, size: 32, offset: 7936)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2405, file: !2406, line: 223, baseType: !2535, size: 64, offset: 8000)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2406, line: 223, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2405, file: !2406, line: 230, baseType: !889, size: 8, offset: 8064)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2405, file: !2406, line: 231, baseType: !858, size: 16, offset: 8080)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2405, file: !2406, line: 232, baseType: !858, size: 16, offset: 8096)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2405, file: !2406, line: 234, baseType: !1105, size: 64, offset: 8128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2405, file: !2406, line: 237, baseType: !642, size: 256, offset: 8192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2405, file: !2406, line: 243, baseType: !830, size: 320, offset: 8448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1948, file: !1540, line: 1111, baseType: !2544, size: 64, offset: 15424)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2406, line: 20, size: 16640, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2545, file: !2406, line: 21, baseType: !209, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2545, file: !2406, line: 22, baseType: !745, size: 32, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2545, file: !2406, line: 23, baseType: !758, size: 192, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2545, file: !2406, line: 24, baseType: !2551, size: 16384, offset: 256)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2552, size: 16384, elements: !284)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !977, line: 51, size: 256, elements: !2553)
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2552, file: !977, line: 52, baseType: !2555, size: 256)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !977, line: 37, size: 256, elements: !2556)
!2556 = !{!2557, !2564, !2565, !2571}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2555, file: !977, line: 39, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2559, line: 83, baseType: !2560)
!2559 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2559, line: 82, baseType: !2562)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !121}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2555, file: !977, line: 40, baseType: !174, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2555, file: !977, line: 46, baseType: !2566, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2559, line: 86, baseType: !2567)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2559, line: 85, baseType: !2569)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2555, file: !977, line: 48, baseType: !2420, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1948, file: !1540, line: 1112, baseType: !2420, size: 64, offset: 15488)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1948, file: !1540, line: 1113, baseType: !2420, size: 64, offset: 15552)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1948, file: !1540, line: 1115, baseType: !2420, size: 64, offset: 15616)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1948, file: !1540, line: 1116, baseType: !2416, size: 192, offset: 15680)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1948, file: !1540, line: 1117, baseType: !174, size: 64, offset: 15872)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1948, file: !1540, line: 1118, baseType: !325, size: 64, offset: 15936)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1948, file: !1540, line: 1119, baseType: !13, size: 32, offset: 16000)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1948, file: !1540, line: 1121, baseType: !703, size: 64, offset: 16064)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1948, file: !1540, line: 1125, baseType: !2581, size: 64, offset: 16128)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1540, line: 43, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1948, file: !1540, line: 1127, baseType: !363, size: 32, offset: 16192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1948, file: !1540, line: 1128, baseType: !13, size: 32, offset: 16224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1948, file: !1540, line: 1130, baseType: !2586, size: 128, offset: 16256)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2587, line: 37, size: 128, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2588 = !{!2589, !2590, !2591}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2586, file: !2587, line: 38, baseType: !121, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2586, file: !2587, line: 39, baseType: !229, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2586, file: !2587, line: 40, baseType: !2592, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2587, line: 24, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1948, file: !1540, line: 1131, baseType: !2595, size: 256, offset: 16384)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2596, line: 12, size: 256, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2595, file: !2596, line: 13, baseType: !279, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2595, file: !2596, line: 14, baseType: !174, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2595, file: !2596, line: 15, baseType: !174, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2595, file: !2596, line: 16, baseType: !889, size: 8, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1948, file: !1540, line: 1134, baseType: !430, size: 64, offset: 16640)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1948, file: !1540, line: 1135, baseType: !430, size: 64, offset: 16704)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1948, file: !1540, line: 1138, baseType: !209, size: 32, offset: 16768)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1948, file: !1540, line: 1141, baseType: !655, size: 32, offset: 16800)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1948, file: !1540, line: 1143, baseType: !2607, size: 64, offset: 16832)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1540, line: 735, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2607, file: !1540, line: 736, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1948, file: !1540, line: 1147, baseType: !2117, size: 128, offset: 16896)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1948, file: !1540, line: 1149, baseType: !1947, size: 64, offset: 17024)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1948, file: !1540, line: 1151, baseType: !2614, size: 64, offset: 17088)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1540, line: 1151, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1948, file: !1540, line: 1188, baseType: !170, size: 64, offset: 17152)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1948, file: !1540, line: 1191, baseType: !2618, size: 64, offset: 17216)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1540, line: 44, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1948, file: !1540, line: 1194, baseType: !2621, size: 64, offset: 17280)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1540, line: 45, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1948, file: !1540, line: 1197, baseType: !2624, size: 64, offset: 17344)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1540, line: 61, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1948, file: !1540, line: 1199, baseType: !2627, size: 64, offset: 17408)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2629, line: 99, size: 128, elements: !2630)
!2629 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2630 = !{!2631, !2632, !2633}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2628, file: !2629, line: 100, baseType: !646, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2628, file: !2629, line: 101, baseType: !229, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2628, file: !2629, line: 103, baseType: !249, size: 16, offset: 96)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1948, file: !1540, line: 1202, baseType: !2635, size: 64, offset: 17472)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1540, line: 48, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1948, file: !1540, line: 1205, baseType: !174, size: 64, offset: 17536)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1948, file: !1540, line: 1206, baseType: !2639, size: 64, offset: 17600)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !977, line: 14, baseType: !2641)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !977, line: 12, size: 384, elements: !2642)
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, scope: !2641, file: !977, line: 13, baseType: !2644, size: 384)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2641, file: !977, line: 13, size: 384, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2644, file: !977, line: 13, baseType: !121, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2644, file: !977, line: 13, baseType: !121, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2644, file: !977, line: 13, baseType: !121, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2644, file: !977, line: 13, baseType: !2650, size: 256, offset: 128)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2651, line: 37, size: 256, elements: !2652)
!2651 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2652 = !{!2653, !2658, !2671, !2677, !2686, !2713, !2718}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2650, file: !2651, line: 42, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 39, size: 64, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2654, file: !2651, line: 40, baseType: !2315, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2654, file: !2651, line: 41, baseType: !369, size: 32, offset: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2650, file: !2651, line: 50, baseType: !2659, size: 192)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 45, size: 192, elements: !2660)
!2660 = !{!2661, !2663, !2664, !2670}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2659, file: !2651, line: 46, baseType: !2662, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !313, line: 95, baseType: !121)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2659, file: !2651, line: 47, baseType: !121, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2659, file: !2651, line: 48, baseType: !2665, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2651, line: 11, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2651, line: 8, size: 64, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2666, file: !2651, line: 9, baseType: !121, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2666, file: !2651, line: 10, baseType: !170, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2659, file: !2651, line: 49, baseType: !121, size: 32, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2650, file: !2651, line: 57, baseType: !2672, size: 128)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 53, size: 128, elements: !2673)
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2672, file: !2651, line: 54, baseType: !2315, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2672, file: !2651, line: 55, baseType: !369, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2672, file: !2651, line: 56, baseType: !2665, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2650, file: !2651, line: 66, baseType: !2678, size: 256)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 60, size: 256, elements: !2679)
!2679 = !{!2680, !2681, !2682, !2683, !2685}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2678, file: !2651, line: 61, baseType: !2315, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2678, file: !2651, line: 62, baseType: !369, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2678, file: !2651, line: 63, baseType: !121, size: 32, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2678, file: !2651, line: 64, baseType: !2684, size: 64, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !313, line: 94, baseType: !314)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2678, file: !2651, line: 65, baseType: !2684, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2650, file: !2651, line: 105, baseType: !2687, size: 256)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 69, size: 256, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2687, file: !2651, line: 70, baseType: !170, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !2651, line: 79, baseType: !2691, size: 192, offset: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !2651, line: 79, size: 192, elements: !2692)
!2692 = !{!2693, !2694, !2695, !2702, !2707}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2691, file: !2651, line: 81, baseType: !121, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2691, file: !2651, line: 86, baseType: !858, size: 16)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2691, file: !2651, line: 92, baseType: !2696, size: 192)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2691, file: !2651, line: 88, size: 192, elements: !2697)
!2697 = !{!2698, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2696, file: !2651, line: 89, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2101)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2696, file: !2651, line: 90, baseType: !170, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2696, file: !2651, line: 91, baseType: !170, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2691, file: !2651, line: 97, baseType: !2703, size: 96)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2691, file: !2651, line: 94, size: 96, elements: !2704)
!2704 = !{!2705, !2706}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2703, file: !2651, line: 95, baseType: !2699, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2703, file: !2651, line: 96, baseType: !427, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2691, file: !2651, line: 103, baseType: !2708, size: 128)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2691, file: !2651, line: 99, size: 128, elements: !2709)
!2709 = !{!2710, !2711, !2712}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2708, file: !2651, line: 100, baseType: !174, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2708, file: !2651, line: 101, baseType: !427, size: 32, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2708, file: !2651, line: 102, baseType: !427, size: 32, offset: 96)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2650, file: !2651, line: 111, baseType: !2714, size: 128)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 108, size: 128, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2714, file: !2651, line: 109, baseType: !171, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2714, file: !2651, line: 110, baseType: !121, size: 32, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2650, file: !2651, line: 118, baseType: !2719, size: 128)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2650, file: !2651, line: 114, size: 128, elements: !2720)
!2720 = !{!2721, !2722, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2719, file: !2651, line: 115, baseType: !170, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2719, file: !2651, line: 116, baseType: !121, size: 32, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2719, file: !2651, line: 117, baseType: !13, size: 32, offset: 96)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1948, file: !1540, line: 1208, baseType: !2502, size: 448, offset: 17664)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1948, file: !1540, line: 1215, baseType: !430, size: 64, offset: 18112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1948, file: !1540, line: 1217, baseType: !430, size: 64, offset: 18176)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1948, file: !1540, line: 1219, baseType: !430, size: 64, offset: 18240)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1948, file: !1540, line: 1223, baseType: !2729, size: 64, offset: 18304)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2730, line: 99, baseType: !2731)
!2730 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2730, line: 99, size: 64, elements: !2732)
!2732 = !{!2733}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2731, file: !2730, line: 99, baseType: !2185, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1948, file: !1540, line: 1225, baseType: !398, size: 32, offset: 18368)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1948, file: !1540, line: 1226, baseType: !121, size: 32, offset: 18400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1948, file: !1540, line: 1227, baseType: !121, size: 32, offset: 18432)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1948, file: !1540, line: 1231, baseType: !2738, size: 64, offset: 18496)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1540, line: 1231, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1948, file: !1540, line: 1233, baseType: !180, size: 128, offset: 18560)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1948, file: !1540, line: 1240, baseType: !2742, size: 64, offset: 18688)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1540, line: 62, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1948, file: !1540, line: 1242, baseType: !2745, size: 64, offset: 18752)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1540, line: 1242, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1948, file: !1540, line: 1244, baseType: !180, size: 128, offset: 18816)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1948, file: !1540, line: 1245, baseType: !2749, size: 64, offset: 18944)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1540, line: 51, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1948, file: !1540, line: 1246, baseType: !642, size: 256, offset: 19008)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1948, file: !1540, line: 1247, baseType: !13, size: 32, offset: 19264)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1948, file: !1540, line: 1250, baseType: !2754, size: 64, offset: 19328)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1540, line: 57, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1948, file: !1540, line: 1251, baseType: !642, size: 256, offset: 19392)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1948, file: !1540, line: 1252, baseType: !180, size: 128, offset: 19648)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1948, file: !1540, line: 1259, baseType: !1538, size: 64, offset: 19776)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1948, file: !1540, line: 1260, baseType: !858, size: 16, offset: 19840)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1948, file: !1540, line: 1261, baseType: !858, size: 16, offset: 19856)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1948, file: !1540, line: 1314, baseType: !2762, size: 64, offset: 19904)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2764, line: 62, size: 256, align: 256, elements: !2765)
!2764 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2765 = !{!2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2763, file: !2764, line: 75, baseType: !427, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2763, file: !2764, line: 90, baseType: !427, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2763, file: !2764, line: 112, baseType: !431, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2763, file: !2764, line: 132, baseType: !427, size: 32, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2763, file: !2764, line: 140, baseType: !427, size: 32, offset: 160)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2763, file: !2764, line: 149, baseType: !427, size: 32, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2763, file: !2764, line: 154, baseType: !2773, offset: 224)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !773)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1948, file: !1540, line: 1315, baseType: !426, size: 32, offset: 19968)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1948, file: !1540, line: 1316, baseType: !426, size: 32, offset: 20000)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1948, file: !1540, line: 1321, baseType: !174, size: 64, offset: 20032)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1948, file: !1540, line: 1325, baseType: !121, size: 32, offset: 20096)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1948, file: !1540, line: 1326, baseType: !121, size: 32, offset: 20128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1948, file: !1540, line: 1327, baseType: !121, size: 32, offset: 20160)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1948, file: !1540, line: 1328, baseType: !121, size: 32, offset: 20192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1948, file: !1540, line: 1329, baseType: !700, size: 128, align: 64, offset: 20224)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1948, file: !1540, line: 1332, baseType: !2783, size: 128, offset: 20352)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2784, line: 51, size: 128, elements: !2785)
!2784 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2785 = !{!2786, !2791, !2792}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2783, file: !2784, line: 60, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2788, line: 7, size: 64, elements: !2789)
!2788 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2789 = !{!2790}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2787, file: !2788, line: 12, baseType: !2182, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2783, file: !2784, line: 63, baseType: !889, size: 8, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2783, file: !2784, line: 70, baseType: !889, size: 8, offset: 72)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1948, file: !1540, line: 1335, baseType: !1591, size: 64, offset: 20480)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1948, file: !1540, line: 1337, baseType: !2795, size: 128, offset: 20544)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2784, line: 39, size: 128, elements: !2796)
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2795, file: !2784, line: 40, baseType: !1367, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2795, file: !2784, line: 42, baseType: !427, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2795, file: !2784, line: 43, baseType: !427, size: 32, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1948, file: !1540, line: 1340, baseType: !2801, size: 64, offset: 20672)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1540, line: 69, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1948, file: !1540, line: 1351, baseType: !121, size: 32, offset: 20736)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1948, file: !1540, line: 1352, baseType: !121, size: 32, offset: 20768)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1948, file: !1540, line: 1354, baseType: !174, size: 64, offset: 20800)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1948, file: !1540, line: 1364, baseType: !430, size: 64, offset: 20864)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1948, file: !1540, line: 1365, baseType: !430, size: 64, offset: 20928)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1948, file: !1540, line: 1412, baseType: !174, size: 64, offset: 20992)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1948, file: !1540, line: 1453, baseType: !2810, size: 64, offset: 21056)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1540, line: 1453, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1948, file: !1540, line: 1457, baseType: !2813, size: 64, offset: 21120)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !80, line: 61, size: 576, elements: !2815)
!2815 = !{!2816, !2817, !2836, !2839, !2840, !2873, !2883}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2814, file: !80, line: 62, baseType: !79, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, scope: !2814, file: !80, line: 64, baseType: !2818, size: 192, offset: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2814, file: !80, line: 64, size: 192, elements: !2819)
!2819 = !{!2820, !2831}
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !80, line: 65, baseType: !2821, size: 192)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2818, file: !80, line: 65, size: 192, elements: !2822)
!2822 = !{!2823, !2830}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2821, file: !80, line: 66, baseType: !2824, size: 128)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2825, line: 50, size: 128, elements: !2826)
!2825 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2824, file: !2825, line: 52, baseType: !174, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2824, file: !2825, line: 54, baseType: !13, size: 32, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2824, file: !2825, line: 55, baseType: !13, size: 32, offset: 96)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2821, file: !80, line: 67, baseType: !174, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !2818, file: !80, line: 70, baseType: !2832, size: 192)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2818, file: !80, line: 70, size: 192, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2832, file: !80, line: 71, baseType: !700, size: 128, align: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2832, file: !80, line: 72, baseType: !174, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2814, file: !80, line: 76, baseType: !2837, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !80, line: 76, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2814, file: !80, line: 77, baseType: !174, size: 64, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2814, file: !80, line: 79, baseType: !2841, size: 64, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2825, line: 25, size: 256, elements: !2843)
!2843 = !{!2844, !2850, !2854}
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !2825, line: 26, baseType: !2845, size: 128)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !2825, line: 26, size: 128, elements: !2846)
!2846 = !{!2847, !2849}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2845, file: !2825, line: 27, baseType: !2848, size: 128)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !2374)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2845, file: !2825, line: 28, baseType: !2848, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2842, file: !2825, line: 31, baseType: !2851, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2853)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2825, line: 23, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !2825, line: 33, baseType: !2855, size: 64, offset: 192)
!2855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !2825, line: 33, size: 64, elements: !2856)
!2856 = !{!2857, !2863, !2868}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2855, file: !2825, line: 38, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !2825, line: 34, size: 64, elements: !2859)
!2859 = !{!2860, !2861, !2862}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2858, file: !2825, line: 35, baseType: !815, size: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2858, file: !2825, line: 36, baseType: !237, size: 8, offset: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2858, file: !2825, line: 37, baseType: !237, size: 8, offset: 40)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2855, file: !2825, line: 42, baseType: !2864, size: 16)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !2825, line: 39, size: 16, elements: !2865)
!2865 = !{!2866, !2867}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2864, file: !2825, line: 40, baseType: !237, size: 8)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2864, file: !2825, line: 41, baseType: !237, size: 8, offset: 8)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2855, file: !2825, line: 46, baseType: !2869, size: 16)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2855, file: !2825, line: 43, size: 16, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2869, file: !2825, line: 44, baseType: !237, size: 8)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2869, file: !2825, line: 45, baseType: !237, size: 8, offset: 8)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2814, file: !80, line: 81, baseType: !2874, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !80, line: 85, size: 384, elements: !2876)
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2875, file: !80, line: 86, baseType: !2837, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2875, file: !80, line: 87, baseType: !174, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2875, file: !80, line: 88, baseType: !174, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2875, file: !80, line: 89, baseType: !174, size: 64, offset: 192)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2875, file: !80, line: 90, baseType: !889, size: 8, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2875, file: !80, line: 92, baseType: !2874, size: 64, offset: 320)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2814, file: !80, line: 82, baseType: !13, size: 32, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1948, file: !1540, line: 1463, baseType: !2885, offset: 21184)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1540, line: 739, elements: !561)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1948, file: !1540, line: 1470, baseType: !700, size: 128, align: 64, offset: 21184)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1948, file: !1540, line: 1471, baseType: !745, size: 32, offset: 21312)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1948, file: !1540, line: 1472, baseType: !121, size: 32, offset: 21344)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1948, file: !1540, line: 1474, baseType: !1947, size: 64, offset: 21376)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1948, file: !1540, line: 1475, baseType: !2891, size: 320, offset: 21440)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2892, line: 11, size: 320, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2893 = !{!2894, !2895, !2896, !2901}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2891, file: !2892, line: 16, baseType: !553, size: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2891, file: !2892, line: 17, baseType: !174, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2891, file: !2892, line: 18, baseType: !2897, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2891, file: !2892, line: 19, baseType: !426, size: 32, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1948, file: !1540, line: 1478, baseType: !2903, size: 64, offset: 21760)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1054, line: 49, size: 512, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2912, !2913, !2914, !2916}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2904, file: !1054, line: 50, baseType: !2903, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2904, file: !1054, line: 51, baseType: !170, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2904, file: !1054, line: 52, baseType: !174, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2904, file: !1054, line: 53, baseType: !174, size: 64, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2904, file: !1054, line: 54, baseType: !2911, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2904, file: !1054, line: 56, baseType: !13, size: 32, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2904, file: !1054, line: 58, baseType: !13, size: 32, offset: 352)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2904, file: !1054, line: 59, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !181, line: 159, baseType: !430)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2904, file: !1054, line: 60, baseType: !1220, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1948, file: !1540, line: 1482, baseType: !745, size: 32, offset: 21824)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1948, file: !1540, line: 1489, baseType: !170, size: 64, offset: 21888)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1948, file: !1540, line: 1504, baseType: !170, size: 64, offset: 21952)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1948, file: !1540, line: 1505, baseType: !431, size: 64, offset: 22016)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1948, file: !1540, line: 1506, baseType: !430, size: 64, offset: 22080)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1948, file: !1540, line: 1507, baseType: !431, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1948, file: !1540, line: 1508, baseType: !431, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1948, file: !1540, line: 1509, baseType: !431, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1948, file: !1540, line: 1510, baseType: !700, size: 128, align: 64, offset: 22208)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1948, file: !1540, line: 1511, baseType: !121, size: 32, offset: 22336)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1948, file: !1540, line: 1515, baseType: !2928, size: 64, offset: 22400)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !695, line: 56, size: 64, elements: !2929)
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2928, file: !695, line: 57, baseType: !698, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1948, file: !1540, line: 1518, baseType: !2928, size: 64, offset: 22464)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1948, file: !1540, line: 1528, baseType: !700, size: 128, align: 64, offset: 22528)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1948, file: !1540, line: 1552, baseType: !2934, size: 35328, offset: 23040)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2935, line: 430, size: 35328, elements: !2936)
!2935 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2936 = !{!2937, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2966, !2967, !2968, !2969, !2970, !2971, !2974, !2975, !2976, !2977}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2934, file: !2935, line: 432, baseType: !2938, size: 192)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2939, size: 192, elements: !280)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2940, line: 16, size: 64, elements: !2941)
!2940 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2939, file: !2940, line: 17, baseType: !247, size: 16)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2939, file: !2940, line: 18, baseType: !247, size: 16, offset: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2939, file: !2940, line: 19, baseType: !247, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2939, file: !2940, line: 19, baseType: !247, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2939, file: !2940, line: 19, baseType: !247, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2939, file: !2940, line: 19, baseType: !247, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2939, file: !2940, line: 19, baseType: !247, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2939, file: !2940, line: 20, baseType: !247, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2939, file: !2940, line: 20, baseType: !247, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2939, file: !2940, line: 20, baseType: !247, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2939, file: !2940, line: 20, baseType: !247, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2939, file: !2940, line: 20, baseType: !247, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2939, file: !2940, line: 20, baseType: !247, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2934, file: !2935, line: 436, baseType: !174, size: 64, offset: 192)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2934, file: !2935, line: 440, baseType: !249, size: 16, offset: 256)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2934, file: !2935, line: 441, baseType: !249, size: 16, offset: 272)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2934, file: !2935, line: 442, baseType: !249, size: 16, offset: 288)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2934, file: !2935, line: 443, baseType: !249, size: 16, offset: 304)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2934, file: !2935, line: 447, baseType: !174, size: 64, offset: 320)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2934, file: !2935, line: 448, baseType: !174, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2934, file: !2935, line: 459, baseType: !2963, size: 256, offset: 448)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2964, size: 256, elements: !754)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2935, line: 428, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2934, file: !2935, line: 461, baseType: !174, size: 64, offset: 704)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2934, file: !2935, line: 463, baseType: !174, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2934, file: !2935, line: 465, baseType: !174, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2934, file: !2935, line: 466, baseType: !174, size: 64, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2934, file: !2935, line: 467, baseType: !174, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2934, file: !2935, line: 473, baseType: !2972, size: 64, offset: 1024)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2935, line: 10, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2934, file: !2935, line: 480, baseType: !174, size: 64, offset: 1088)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2934, file: !2935, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2934, file: !2935, line: 491, baseType: !426, size: 32, offset: 1184)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2934, file: !2935, line: 501, baseType: !2978, size: 33792, offset: 1536)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2979, line: 448, size: 33792, elements: !2980)
!2979 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2980 = !{!2981, !2982, !2983, !3145, !3146, !3152, !3153}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2978, file: !2979, line: 461, baseType: !13, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2978, file: !2979, line: 468, baseType: !174, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2978, file: !2979, line: 476, baseType: !2984, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2979, line: 356, size: 33280, align: 512, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2985, file: !2979, line: 358, baseType: !13, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2985, file: !2979, line: 361, baseType: !13, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2985, file: !2979, line: 364, baseType: !430, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2985, file: !2979, line: 367, baseType: !430, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2985, file: !2979, line: 370, baseType: !430, size: 64, offset: 192)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2985, file: !2979, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2985, file: !2979, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2985, file: !2979, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2985, file: !2979, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2985, file: !2979, line: 397, baseType: !2997, size: 32768, offset: 512)
!2997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2979, line: 348, size: 32768, elements: !2998)
!2998 = !{!2999, !3014, !3051, !3128, !3141}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2997, file: !2979, line: 349, baseType: !3000, size: 896)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2979, line: 12, size: 896, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3013}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3000, file: !2979, line: 13, baseType: !426, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3000, file: !2979, line: 14, baseType: !426, size: 32, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3000, file: !2979, line: 15, baseType: !426, size: 32, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3000, file: !2979, line: 16, baseType: !426, size: 32, offset: 96)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3000, file: !2979, line: 17, baseType: !426, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3000, file: !2979, line: 18, baseType: !426, size: 32, offset: 160)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3000, file: !2979, line: 19, baseType: !426, size: 32, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3000, file: !2979, line: 22, baseType: !3010, size: 640, offset: 224)
!3010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 640, elements: !3011)
!3011 = !{!3012}
!3012 = !DISubrange(count: 20)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3000, file: !2979, line: 25, baseType: !426, size: 32, offset: 864)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2997, file: !2979, line: 350, baseType: !3015, size: 4096, align: 128)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2979, line: 34, size: 4096, align: 128, elements: !3016)
!3016 = !{!3017, !3018, !3019, !3020, !3021, !3036, !3037, !3038, !3040, !3042, !3046}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3015, file: !2979, line: 35, baseType: !247, size: 16)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3015, file: !2979, line: 36, baseType: !247, size: 16, offset: 16)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3015, file: !2979, line: 37, baseType: !247, size: 16, offset: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3015, file: !2979, line: 38, baseType: !247, size: 16, offset: 48)
!3021 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !2979, line: 39, baseType: !3022, size: 128, offset: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3015, file: !2979, line: 39, size: 128, elements: !3023)
!3023 = !{!3024, !3029}
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !2979, line: 40, baseType: !3025, size: 128)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !2979, line: 40, size: 128, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3025, file: !2979, line: 41, baseType: !430, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3025, file: !2979, line: 42, baseType: !430, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !3022, file: !2979, line: 44, baseType: !3030, size: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3022, file: !2979, line: 44, size: 128, elements: !3031)
!3031 = !{!3032, !3033, !3034, !3035}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3030, file: !2979, line: 45, baseType: !426, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3030, file: !2979, line: 46, baseType: !426, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3030, file: !2979, line: 47, baseType: !426, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3030, file: !2979, line: 48, baseType: !426, size: 32, offset: 96)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3015, file: !2979, line: 51, baseType: !426, size: 32, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3015, file: !2979, line: 52, baseType: !426, size: 32, offset: 224)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3015, file: !2979, line: 55, baseType: !3039, size: 1024, offset: 256)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 1024, elements: !439)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3015, file: !2979, line: 58, baseType: !3041, size: 2048, offset: 1280)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 2048, elements: !284)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3015, file: !2979, line: 60, baseType: !3043, size: 384, offset: 3328)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 384, elements: !3044)
!3044 = !{!3045}
!3045 = !DISubrange(count: 12)
!3046 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !2979, line: 62, baseType: !3047, size: 384, offset: 3712)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3015, file: !2979, line: 62, size: 384, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3047, file: !2979, line: 63, baseType: !3043, size: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3047, file: !2979, line: 64, baseType: !3043, size: 384)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2997, file: !2979, line: 351, baseType: !3052, size: 1088)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2979, line: 79, size: 1088, elements: !3053)
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3127}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3052, file: !2979, line: 80, baseType: !426, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3052, file: !2979, line: 81, baseType: !426, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3052, file: !2979, line: 82, baseType: !426, size: 32, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3052, file: !2979, line: 83, baseType: !426, size: 32, offset: 96)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3052, file: !2979, line: 84, baseType: !426, size: 32, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3052, file: !2979, line: 85, baseType: !426, size: 32, offset: 160)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3052, file: !2979, line: 86, baseType: !426, size: 32, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3052, file: !2979, line: 88, baseType: !3010, size: 640, offset: 224)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3052, file: !2979, line: 89, baseType: !237, size: 8, offset: 864)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3052, file: !2979, line: 90, baseType: !237, size: 8, offset: 872)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3052, file: !2979, line: 91, baseType: !237, size: 8, offset: 880)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3052, file: !2979, line: 92, baseType: !237, size: 8, offset: 888)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3052, file: !2979, line: 93, baseType: !237, size: 8, offset: 896)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3052, file: !2979, line: 94, baseType: !237, size: 8, offset: 904)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3052, file: !2979, line: 95, baseType: !3069, size: 64, offset: 960)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3071, line: 11, size: 128, elements: !3072)
!3071 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3072 = !{!3073, !3074}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3070, file: !3071, line: 12, baseType: !171, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3070, file: !3071, line: 13, baseType: !3075, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3077, line: 103, size: 1344, elements: !3078)
!3077 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3107, !3108, !3109}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3076, file: !3077, line: 109, baseType: !174, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3076, file: !3077, line: 110, baseType: !174, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3076, file: !3077, line: 111, baseType: !174, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3076, file: !3077, line: 112, baseType: !174, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3076, file: !3077, line: 113, baseType: !174, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3076, file: !3077, line: 114, baseType: !174, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3076, file: !3077, line: 117, baseType: !174, size: 64, offset: 384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3076, file: !3077, line: 118, baseType: !174, size: 64, offset: 448)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3076, file: !3077, line: 119, baseType: !174, size: 64, offset: 512)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3076, file: !3077, line: 120, baseType: !174, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3076, file: !3077, line: 121, baseType: !174, size: 64, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3076, file: !3077, line: 122, baseType: !174, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3076, file: !3077, line: 123, baseType: !174, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3076, file: !3077, line: 124, baseType: !174, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3076, file: !3077, line: 125, baseType: !174, size: 64, offset: 896)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3076, file: !3077, line: 139, baseType: !174, size: 64, offset: 960)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3076, file: !3077, line: 142, baseType: !174, size: 64, offset: 1024)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3077, line: 144, baseType: !3097, size: 64, offset: 1088)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !3077, line: 144, size: 64, elements: !3098)
!3098 = !{!3099, !3100, !3101}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3097, file: !3077, line: 146, baseType: !247, size: 16)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3097, file: !3077, line: 148, baseType: !430, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3097, file: !3077, line: 150, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3077, line: 59, size: 64, elements: !3103)
!3103 = !{!3104, !3105, !3106}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3102, file: !3077, line: 61, baseType: !430, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3102, file: !3077, line: 63, baseType: !430, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3102, file: !3077, line: 65, baseType: !430, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3076, file: !3077, line: 153, baseType: !174, size: 64, offset: 1152)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3076, file: !3077, line: 154, baseType: !174, size: 64, offset: 1216)
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3077, line: 156, baseType: !3110, size: 64, offset: 1280)
!3110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !3077, line: 156, size: 64, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3110, file: !3077, line: 158, baseType: !247, size: 16)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3110, file: !3077, line: 160, baseType: !430, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3110, file: !3077, line: 162, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3077, line: 69, size: 64, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3115, file: !3077, line: 71, baseType: !430, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3115, file: !3077, line: 73, baseType: !430, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3115, file: !3077, line: 75, baseType: !430, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3115, file: !3077, line: 77, baseType: !430, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3115, file: !3077, line: 80, baseType: !430, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3115, file: !3077, line: 83, baseType: !430, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3115, file: !3077, line: 86, baseType: !430, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3115, file: !3077, line: 88, baseType: !430, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3115, file: !3077, line: 93, baseType: !430, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3115, file: !3077, line: 100, baseType: !430, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3052, file: !2979, line: 96, baseType: !426, size: 32, offset: 1024)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2997, file: !2979, line: 352, baseType: !3129, size: 4608, align: 512)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2979, line: 333, size: 4608, align: 512, elements: !3130)
!3130 = !{!3131, !3132, !3139}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3129, file: !2979, line: 334, baseType: !3015, size: 4096, align: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3129, file: !2979, line: 335, baseType: !3133, size: 512, offset: 4096)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2979, line: 312, size: 512, elements: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3133, file: !2979, line: 313, baseType: !430, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3133, file: !2979, line: 314, baseType: !430, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3133, file: !2979, line: 315, baseType: !3138, size: 384, offset: 128)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 384, elements: !876)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3129, file: !2979, line: 336, baseType: !3140, offset: 4608)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, elements: !773)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2997, file: !2979, line: 353, baseType: !3142, size: 32768)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 32768, elements: !3143)
!3143 = !{!3144}
!3144 = !DISubrange(count: 4096)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2978, file: !2979, line: 484, baseType: !2984, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2978, file: !2979, line: 491, baseType: !3147, size: 128, offset: 256)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2979, line: 404, size: 128, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3147, file: !2979, line: 424, baseType: !430, size: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3147, file: !2979, line: 432, baseType: !13, size: 32, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3147, file: !2979, line: 440, baseType: !13, size: 32, offset: 96)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2978, file: !2979, line: 498, baseType: !3147, size: 128, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2978, file: !2979, line: 508, baseType: !2985, size: 33280, align: 512, offset: 512)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1929, file: !1930, line: 16, baseType: !758, size: 192, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1929, file: !1930, line: 17, baseType: !229, size: 32, offset: 704)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !509, file: !26, line: 1240, baseType: !170, size: 64, offset: 6912)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !509, file: !26, line: 1243, baseType: !426, size: 32, offset: 6976)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !509, file: !26, line: 1245, baseType: !846, size: 64, offset: 7040)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !509, file: !26, line: 1246, baseType: !846, size: 64, offset: 7104)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !509, file: !26, line: 1248, baseType: !427, size: 32, offset: 7168)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !509, file: !26, line: 1249, baseType: !3162, size: 64, offset: 7232)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !26, line: 634, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !509, file: !26, line: 1252, baseType: !3165, size: 256, offset: 7296)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !439)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !509, file: !26, line: 1253, baseType: !3167, size: 128, offset: 7552)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3168, line: 21, baseType: !3169)
!3168 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3168, line: 19, size: 128, elements: !3170)
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3169, file: !3168, line: 20, baseType: !3172, size: 128)
!3172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !2374)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !509, file: !26, line: 1255, baseType: !13, size: 32, offset: 7680)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !509, file: !26, line: 1261, baseType: !642, size: 256, offset: 7744)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !509, file: !26, line: 1267, baseType: !198, size: 64, offset: 8000)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !509, file: !26, line: 1269, baseType: !455, size: 64, offset: 8064)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !509, file: !26, line: 1271, baseType: !3178, size: 448, offset: 8128)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1709, line: 63, size: 448, elements: !3179)
!3179 = !{!3180, !3185, !3186, !3187, !3188, !3189, !3190}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3178, file: !1709, line: 64, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!174, !3184, !1707}
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3178, file: !1709, line: 66, baseType: !3181, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3178, file: !1709, line: 69, baseType: !171, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3178, file: !1709, line: 70, baseType: !121, size: 32, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3178, file: !1709, line: 71, baseType: !13, size: 32, offset: 224)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3178, file: !1709, line: 74, baseType: !180, size: 128, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3178, file: !1709, line: 85, baseType: !3191, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !509, file: !26, line: 1274, baseType: !646, size: 64, offset: 8576)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !509, file: !26, line: 1280, baseType: !646, size: 64, offset: 8640)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !509, file: !26, line: 1283, baseType: !121, size: 32, offset: 8704)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !509, file: !26, line: 1286, baseType: !1641, size: 32, offset: 8736)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !509, file: !26, line: 1289, baseType: !3197, size: 64, offset: 8768)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1260, line: 18, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !509, file: !26, line: 1290, baseType: !549, size: 64, offset: 8832)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !509, file: !26, line: 1297, baseType: !972, size: 64, offset: 8896)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !509, file: !26, line: 1304, baseType: !3202, size: 64, offset: 8960)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3203, line: 49, size: 64, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3204 = !{!3205}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3202, file: !3203, line: 50, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3203, line: 41, size: 512, align: 512, elements: !3208)
!3208 = !{!3209, !3210, !3215}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3207, file: !3203, line: 43, baseType: !209, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3207, file: !3203, line: 45, baseType: !3211, size: 192, offset: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3203, line: 29, size: 192, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3211, file: !3203, line: 30, baseType: !180, size: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3211, file: !3203, line: 32, baseType: !171, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3207, file: !3203, line: 46, baseType: !171, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !509, file: !26, line: 1305, baseType: !3202, size: 64, offset: 9024)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !509, file: !26, line: 1306, baseType: !700, size: 128, align: 64, offset: 9088)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !509, file: !26, line: 1307, baseType: !1259, size: 256, offset: 9216)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !509, file: !26, line: 1309, baseType: !642, size: 256, offset: 9472)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !509, file: !26, line: 1314, baseType: !121, size: 32, offset: 9728)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !509, file: !26, line: 1317, baseType: !209, size: 32, align: 512, offset: 10240)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !509, file: !26, line: 1318, baseType: !180, size: 128, offset: 10304)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !509, file: !26, line: 1320, baseType: !209, size: 32, offset: 10432)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !509, file: !26, line: 1321, baseType: !180, size: 128, offset: 10496)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !503, file: !504, line: 73, baseType: !121, size: 32, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !503, file: !504, line: 74, baseType: !3227, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !797, line: 42, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !457, file: !394, line: 141, baseType: !3231, size: 64, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!121, !1769, !889}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !457, file: !394, line: 142, baseType: !3235, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!392, !392, !3238}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !393, file: !394, line: 96, baseType: !508, size: 64, offset: 832)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !393, file: !394, line: 97, baseType: !174, size: 64, offset: 896)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !393, file: !394, line: 98, baseType: !170, size: 64, offset: 960)
!3243 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 100, baseType: !3244, size: 128, offset: 1024)
!3244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 100, size: 128, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3244, file: !394, line: 101, baseType: !180, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3244, file: !394, line: 102, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !393, file: !394, line: 104, baseType: !180, size: 128, offset: 1152)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !393, file: !394, line: 105, baseType: !180, size: 128, offset: 1280)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !393, file: !394, line: 113, baseType: !3252, size: 128, offset: 1408)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 109, size: 128, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3252, file: !394, line: 110, baseType: !553, size: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3252, file: !394, line: 111, baseType: !408, size: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3252, file: !394, line: 112, baseType: !700, size: 128, align: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !386, file: !26, line: 1968, baseType: !3258, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!198, !392, !357, !3261}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3263, line: 10, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3264 = !{!3265, !3269}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3262, file: !3263, line: 11, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !170}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3262, file: !3263, line: 12, baseType: !170, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !386, file: !26, line: 1969, baseType: !3271, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!121, !3227, !357, !121}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !386, file: !26, line: 1970, baseType: !3275, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!380, !357, !121, !889}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !386, file: !26, line: 1972, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!121, !392, !279, !121}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !386, file: !26, line: 1974, baseType: !3283, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!121, !3227, !357, !392, !320, !889}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !386, file: !26, line: 1976, baseType: !3287, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!121, !392, !357, !392}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !386, file: !26, line: 1977, baseType: !3291, size: 64, offset: 448)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!121, !357, !392}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !386, file: !26, line: 1978, baseType: !3295, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!121, !3227, !357, !392, !198}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !386, file: !26, line: 1980, baseType: !3299, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!121, !3227, !357, !392, !320}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !386, file: !26, line: 1982, baseType: !3291, size: 64, offset: 640)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !386, file: !26, line: 1983, baseType: !3304, size: 64, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!121, !3227, !357, !392, !320, !513}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !386, file: !26, line: 1985, baseType: !3308, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!121, !3227, !357, !392, !357, !392, !13}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !386, file: !26, line: 1987, baseType: !3312, size: 64, offset: 832)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!121, !3227, !392, !3315}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !26, line: 226, size: 640, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3330, !3339, !3340, !3345, !3346, !3347}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3316, file: !26, line: 227, baseType: !13, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3316, file: !26, line: 228, baseType: !320, size: 16, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !26, line: 241, baseType: !3321, size: 32, offset: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !26, line: 241, size: 32, elements: !3322)
!3322 = !{!3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3321, file: !26, line: 242, baseType: !363, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3321, file: !26, line: 243, baseType: !3325, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3326, line: 16, baseType: !3327)
!3326 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3326, line: 14, size: 32, elements: !3328)
!3328 = !{!3329}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3327, file: !3326, line: 15, baseType: !368, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !26, line: 245, baseType: !3331, size: 32, offset: 96)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !26, line: 245, size: 32, elements: !3332)
!3332 = !{!3333, !3334}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3331, file: !26, line: 246, baseType: !372, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3331, file: !26, line: 247, baseType: !3335, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3326, line: 20, baseType: !3336)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3326, line: 18, size: 32, elements: !3337)
!3337 = !{!3338}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3336, file: !3326, line: 19, baseType: !376, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3316, file: !26, line: 249, baseType: !518, size: 64, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3316, file: !26, line: 250, baseType: !3341, size: 128, offset: 192)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !847, line: 13, size: 128, elements: !3342)
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3341, file: !847, line: 14, baseType: !846, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3341, file: !847, line: 15, baseType: !171, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3316, file: !26, line: 251, baseType: !3341, size: 128, offset: 320)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3316, file: !26, line: 252, baseType: !3341, size: 128, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3316, file: !26, line: 259, baseType: !1017, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !386, file: !26, line: 1988, baseType: !3349, size: 64, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!121, !3227, !1769, !3352, !426, !13}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3354, line: 22, size: 1280, elements: !3355)
!3354 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3353, file: !3354, line: 23, baseType: !426, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3353, file: !3354, line: 24, baseType: !320, size: 16, offset: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3353, file: !3354, line: 25, baseType: !13, size: 32, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3353, file: !3354, line: 26, baseType: !854, size: 32, offset: 96)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3353, file: !3354, line: 27, baseType: !430, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3353, file: !3354, line: 28, baseType: !430, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3353, file: !3354, line: 41, baseType: !430, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3353, file: !3354, line: 42, baseType: !513, size: 32, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3353, file: !3354, line: 43, baseType: !513, size: 32, offset: 352)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3353, file: !3354, line: 44, baseType: !363, size: 32, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3353, file: !3354, line: 45, baseType: !372, size: 32, offset: 416)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3353, file: !3354, line: 46, baseType: !518, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3353, file: !3354, line: 47, baseType: !3341, size: 128, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3353, file: !3354, line: 48, baseType: !3341, size: 128, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3353, file: !3354, line: 49, baseType: !3341, size: 128, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3353, file: !3354, line: 50, baseType: !3341, size: 128, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3353, file: !3354, line: 51, baseType: !430, size: 64, offset: 1024)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3353, file: !3354, line: 52, baseType: !430, size: 64, offset: 1088)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3353, file: !3354, line: 53, baseType: !426, size: 32, offset: 1152)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3353, file: !3354, line: 54, baseType: !426, size: 32, offset: 1184)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3353, file: !3354, line: 55, baseType: !430, size: 64, offset: 1216)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !386, file: !26, line: 1990, baseType: !3378, size: 64, offset: 960)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!311, !392, !279, !325}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !386, file: !26, line: 1991, baseType: !3382, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!121, !357, !3385, !430, !430}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !26, line: 55, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !386, file: !26, line: 1993, baseType: !3388, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!121, !357, !121}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !386, file: !26, line: 1994, baseType: !3392, size: 64, offset: 1152)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!121, !357, !392, !1017, !13, !320}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !386, file: !26, line: 1997, baseType: !3396, size: 64, offset: 1216)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!121, !3227, !357, !1017, !320}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !386, file: !26, line: 1999, baseType: !3400, size: 64, offset: 1280)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!380, !3227, !392, !121}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !386, file: !26, line: 2001, baseType: !3404, size: 64, offset: 1344)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!121, !3227, !392, !380, !121}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !386, file: !26, line: 2003, baseType: !3408, size: 64, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!121, !3227, !392, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !26, line: 76, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !386, file: !26, line: 2005, baseType: !3414, size: 64, offset: 1472)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!121, !392, !3411}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !386, file: !26, line: 2006, baseType: !3418, size: 64, offset: 1536)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!3421, !357}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !26, line: 3192, size: 192, elements: !3423)
!3423 = !{!3424, !3431}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3422, file: !26, line: 3193, baseType: !3425, size: 128)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3426, line: 296, size: 128, elements: !3427)
!3426 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3427 = !{!3428, !3429, !3430}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3425, file: !3426, line: 297, baseType: !209, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3425, file: !3426, line: 299, baseType: !1337, size: 32, offset: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3425, file: !3426, line: 300, baseType: !170, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3422, file: !26, line: 3194, baseType: !426, size: 32, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !358, file: !26, line: 655, baseType: !508, size: 64, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !358, file: !26, line: 656, baseType: !353, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !358, file: !26, line: 659, baseType: !170, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !358, file: !26, line: 663, baseType: !174, size: 64, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !26, line: 671, baseType: !3437, size: 32, offset: 704)
!3437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !26, line: 671, size: 32, elements: !3438)
!3438 = !{!3439, !3441}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3437, file: !26, line: 672, baseType: !3440, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3437, file: !26, line: 673, baseType: !13, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !358, file: !26, line: 675, baseType: !513, size: 32, offset: 736)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !358, file: !26, line: 676, baseType: !518, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !358, file: !26, line: 677, baseType: !3341, size: 128, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !358, file: !26, line: 678, baseType: !3341, size: 128, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !358, file: !26, line: 679, baseType: !3341, size: 128, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !358, file: !26, line: 680, baseType: !209, size: 32, offset: 1216)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !358, file: !26, line: 681, baseType: !249, size: 16, offset: 1248)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !358, file: !26, line: 682, baseType: !237, size: 8, offset: 1264)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !358, file: !26, line: 683, baseType: !237, size: 8, offset: 1272)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !358, file: !26, line: 684, baseType: !1842, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !358, file: !26, line: 691, baseType: !174, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !358, file: !26, line: 692, baseType: !830, size: 320, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !358, file: !26, line: 694, baseType: !174, size: 64, offset: 1728)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !358, file: !26, line: 695, baseType: !174, size: 64, offset: 1792)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !358, file: !26, line: 697, baseType: !553, size: 128, offset: 1856)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !358, file: !26, line: 698, baseType: !180, size: 128, offset: 1984)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !358, file: !26, line: 707, baseType: !180, size: 128, offset: 2112)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !358, file: !26, line: 708, baseType: !180, size: 128, offset: 2240)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !26, line: 709, baseType: !3461, size: 128, offset: 2368)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !26, line: 709, size: 128, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3461, file: !26, line: 710, baseType: !549, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3461, file: !26, line: 711, baseType: !700, size: 128, align: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !358, file: !26, line: 713, baseType: !648, size: 64, offset: 2496)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !358, file: !26, line: 714, baseType: !648, size: 64, offset: 2560)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !358, file: !26, line: 715, baseType: !229, size: 32, offset: 2624)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !358, file: !26, line: 716, baseType: !229, size: 32, offset: 2656)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !358, file: !26, line: 717, baseType: !229, size: 32, offset: 2688)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !358, file: !26, line: 719, baseType: !229, size: 32, offset: 2720)
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !26, line: 721, baseType: !3472, size: 64, offset: 2752)
!3472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !26, line: 721, size: 64, elements: !3473)
!3473 = !{!3474, !3475}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3472, file: !26, line: 722, baseType: !1008, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3472, file: !26, line: 723, baseType: !580, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !358, file: !26, line: 725, baseType: !3477, size: 64, offset: 2816)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !26, line: 725, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !358, file: !26, line: 726, baseType: !354, size: 1536, align: 64, offset: 2880)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !358, file: !26, line: 727, baseType: !180, size: 128, offset: 4416)
!3481 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !26, line: 728, baseType: !3482, size: 64, offset: 4544)
!3482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !26, line: 728, size: 64, elements: !3483)
!3483 = !{!3484, !3485, !3488, !3489}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3482, file: !26, line: 729, baseType: !1591, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3482, file: !26, line: 730, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !26, line: 730, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3482, file: !26, line: 731, baseType: !279, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3482, file: !26, line: 732, baseType: !13, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !358, file: !26, line: 735, baseType: !427, size: 32, offset: 4608)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !358, file: !26, line: 738, baseType: !427, size: 32, offset: 4640)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !358, file: !26, line: 739, baseType: !3162, size: 64, offset: 4672)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !358, file: !26, line: 750, baseType: !170, size: 64, offset: 4736)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !354, file: !26, line: 474, baseType: !3425, size: 128, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !354, file: !26, line: 475, baseType: !830, size: 320, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !354, file: !26, line: 476, baseType: !1337, size: 32, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !354, file: !26, line: 477, baseType: !229, size: 32, offset: 544)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !354, file: !26, line: 482, baseType: !2117, size: 128, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !354, file: !26, line: 483, baseType: !174, size: 64, offset: 704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !354, file: !26, line: 484, baseType: !174, size: 64, offset: 768)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !354, file: !26, line: 485, baseType: !3502, size: 64, offset: 832)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3504)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !26, line: 404, size: 1280, elements: !3505)
!3505 = !{!3506, !3510, !3580, !3584, !3588, !3594, !3598, !3602, !3607, !3611, !3615, !3619, !3620, !3624, !3628, !3632, !3637, !3641, !3648, !3649}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3504, file: !26, line: 405, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!121, !1367, !592}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3504, file: !26, line: 406, baseType: !3511, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!121, !1017, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !39, line: 293, size: 1536, elements: !3516)
!3516 = !{!3517, !3547, !3561}
!3517 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !39, line: 295, baseType: !3518, size: 512)
!3518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !39, line: 295, size: 512, elements: !3519)
!3519 = !{!3520, !3546}
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3518, file: !39, line: 296, baseType: !3521, size: 448)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3518, file: !39, line: 296, size: 448, elements: !3522)
!3522 = !{!3523, !3524, !3533, !3534, !3535, !3544, !3545}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3521, file: !39, line: 298, baseType: !174, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !39, line: 299, baseType: !3525, size: 128, offset: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !39, line: 299, size: 128, elements: !3526)
!3526 = !{!3527, !3528}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3525, file: !39, line: 300, baseType: !180, size: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3525, file: !39, line: 302, baseType: !3529, size: 128)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3525, file: !39, line: 302, size: 128, elements: !3530)
!3530 = !{!3531, !3532}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3529, file: !39, line: 303, baseType: !170, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3529, file: !39, line: 305, baseType: !13, size: 32, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3521, file: !39, line: 310, baseType: !353, size: 64, offset: 192)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3521, file: !39, line: 311, baseType: !174, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !39, line: 312, baseType: !3536, size: 64, offset: 320)
!3536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !39, line: 312, size: 64, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3536, file: !39, line: 313, baseType: !170, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3536, file: !39, line: 314, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !39, line: 257, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 255, size: 64, elements: !3542)
!3542 = !{!3543}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3541, file: !39, line: 256, baseType: !174, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3521, file: !39, line: 316, baseType: !229, size: 32, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3521, file: !39, line: 317, baseType: !229, size: 32, offset: 416)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3518, file: !39, line: 323, baseType: !1368, size: 512, align: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !39, line: 325, baseType: !3548, size: 512, offset: 512)
!3548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !39, line: 325, size: 512, elements: !3549)
!3549 = !{!3550, !3560}
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3548, file: !39, line: 326, baseType: !3551, size: 320)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3548, file: !39, line: 326, size: 320, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3551, file: !39, line: 327, baseType: !174, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3551, file: !39, line: 328, baseType: !174, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3551, file: !39, line: 329, baseType: !174, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3551, file: !39, line: 331, baseType: !229, size: 32, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3551, file: !39, line: 332, baseType: !229, size: 32, offset: 224)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3551, file: !39, line: 333, baseType: !229, size: 32, offset: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3551, file: !39, line: 335, baseType: !13, size: 32, offset: 288)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3548, file: !39, line: 339, baseType: !1368, size: 512, align: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, scope: !3515, file: !39, line: 341, baseType: !3562, size: 512, offset: 1024)
!3562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3515, file: !39, line: 341, size: 512, elements: !3563)
!3563 = !{!3564, !3573, !3579}
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !3562, file: !39, line: 342, baseType: !3565, size: 384)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3562, file: !39, line: 342, size: 384, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3565, file: !39, line: 343, baseType: !174, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3565, file: !39, line: 344, baseType: !174, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3565, file: !39, line: 346, baseType: !170, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3565, file: !39, line: 347, baseType: !170, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3565, file: !39, line: 348, baseType: !170, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3565, file: !39, line: 349, baseType: !170, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !3562, file: !39, line: 352, baseType: !3574, size: 256)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3562, file: !39, line: 352, size: 256, elements: !3575)
!3575 = !{!3576, !3577, !3578}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3574, file: !39, line: 353, baseType: !174, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3574, file: !39, line: 354, baseType: !174, size: 64, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3574, file: !39, line: 356, baseType: !180, size: 128, offset: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3562, file: !39, line: 359, baseType: !1368, size: 512, align: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3504, file: !26, line: 409, baseType: !3581, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!121, !353, !592}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3504, file: !26, line: 412, baseType: !3585, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!889, !353, !3514}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3504, file: !26, line: 414, baseType: !3589, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3592}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !26, line: 310, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3504, file: !26, line: 416, baseType: !3595, size: 64, offset: 320)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!121, !1017, !353, !518, !13, !2911, !1606}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3504, file: !26, line: 419, baseType: !3599, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!121, !1017, !353, !518, !13, !13, !1367, !170}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3504, file: !26, line: 424, baseType: !3603, size: 64, offset: 448)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!3606, !353, !3606}
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !181, line: 131, baseType: !430)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3504, file: !26, line: 425, baseType: !3608, size: 64, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{null, !3514, !325, !325}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3504, file: !26, line: 426, baseType: !3612, size: 64, offset: 576)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!889, !3514, !1337}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3504, file: !26, line: 427, baseType: !3616, size: 64, offset: 640)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3514}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3504, file: !26, line: 428, baseType: !1027, size: 64, offset: 704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3504, file: !26, line: 433, baseType: !3621, size: 64, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!121, !353, !3514, !3514, !86}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3504, file: !26, line: 435, baseType: !3625, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!121, !3514}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3504, file: !26, line: 436, baseType: !3629, size: 64, offset: 896)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!889, !3514, !325, !325}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3504, file: !26, line: 438, baseType: !3633, size: 64, offset: 960)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3514, !3636, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3504, file: !26, line: 439, baseType: !3638, size: 64, offset: 1024)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!121, !353, !1367}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3504, file: !26, line: 442, baseType: !3642, size: 64, offset: 1088)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!121, !3645, !1017, !3647}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !26, line: 66, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3504, file: !26, line: 444, baseType: !1598, size: 64, offset: 1152)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3504, file: !26, line: 445, baseType: !3650, size: 64, offset: 1216)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!121, !1030, !1052}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !26, line: 486, baseType: !174, size: 64, offset: 896)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !354, file: !26, line: 487, baseType: !830, size: 320, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !354, file: !26, line: 488, baseType: !1641, size: 32, offset: 1280)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !354, file: !26, line: 489, baseType: !209, size: 32, offset: 1312)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !354, file: !26, line: 490, baseType: !180, size: 128, offset: 1344)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !354, file: !26, line: 491, baseType: !170, size: 64, offset: 1472)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !344, file: !305, line: 180, baseType: !3660, size: 64, offset: 320)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!311, !1017, !202, !343, !279, !518, !325}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !344, file: !305, line: 182, baseType: !3660, size: 64, offset: 384)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !344, file: !305, line: 184, baseType: !3665, size: 64, offset: 448)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!121, !1017, !202, !343, !1092}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !332, file: !305, line: 90, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !332, file: !305, line: 91, baseType: !3671, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !295, file: !195, line: 120, baseType: !3673, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!3676, !262}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3678)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !94, line: 39, size: 384, elements: !3679)
!3679 = !{!3680, !3681, !3685, !3689, !3695, !3699}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3678, file: !94, line: 40, baseType: !93, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3678, file: !94, line: 41, baseType: !3682, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!889}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3678, file: !94, line: 42, baseType: !3686, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!170}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3678, file: !94, line: 43, baseType: !3690, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!1220, !3693}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !94, line: 19, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3678, file: !94, line: 44, baseType: !3696, size: 64, offset: 256)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!1220}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3678, file: !94, line: 45, baseType: !3266, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !295, file: !195, line: 121, baseType: !3701, size: 64, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!1220, !262}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !295, file: !195, line: 122, baseType: !3705, size: 64, offset: 320)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !262, !3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !194, file: !195, line: 70, baseType: !3711, size: 64, offset: 384)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !533, line: 190, size: 1152, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3793, !3794, !3795, !3796, !3797, !3800}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3712, file: !533, line: 191, baseType: !229, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3712, file: !533, line: 192, baseType: !229, size: 32, offset: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3712, file: !533, line: 202, baseType: !3711, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3712, file: !533, line: 203, baseType: !198, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3712, file: !533, line: 205, baseType: !822, size: 192, align: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3712, file: !533, line: 207, baseType: !1220, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3712, file: !533, line: 208, baseType: !13, size: 32, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !3712, file: !533, line: 209, baseType: !3722, size: 256, offset: 512)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3712, file: !533, line: 209, size: 256, elements: !3723)
!3723 = !{!3724, !3733, !3737}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3722, file: !533, line: 210, baseType: !3725, size: 256)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !533, line: 153, size: 256, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3732}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3725, file: !533, line: 154, baseType: !174, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3725, file: !533, line: 156, baseType: !2120, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3725, file: !533, line: 162, baseType: !3730, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !533, line: 162, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3725, file: !533, line: 167, baseType: !174, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3722, file: !533, line: 211, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !533, line: 170, size: 64, elements: !3735)
!3735 = !{!3736}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3734, file: !533, line: 171, baseType: !3711, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3722, file: !533, line: 212, baseType: !3738, size: 256)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !533, line: 174, size: 256, elements: !3739)
!3739 = !{!3740, !3788, !3791, !3792}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3738, file: !533, line: 175, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3743)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !533, line: 271, size: 768, elements: !3744)
!3744 = !{!3745, !3765, !3769, !3770, !3771, !3772, !3773, !3777, !3778, !3779, !3780, !3784}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3743, file: !533, line: 276, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!121, !3749}
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !533, line: 251, size: 1216, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3750, file: !533, line: 253, baseType: !3711, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3750, file: !533, line: 254, baseType: !1017, size: 64, offset: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3750, file: !533, line: 255, baseType: !630, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3750, file: !533, line: 256, baseType: !170, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3750, file: !533, line: 259, baseType: !642, size: 256, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3750, file: !533, line: 260, baseType: !642, size: 256, offset: 512)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3750, file: !533, line: 261, baseType: !121, size: 32, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3750, file: !533, line: 262, baseType: !180, size: 128, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3750, file: !533, line: 263, baseType: !279, size: 64, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3750, file: !533, line: 265, baseType: !325, size: 64, offset: 1024)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3750, file: !533, line: 266, baseType: !889, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3750, file: !533, line: 267, baseType: !889, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3750, file: !533, line: 268, baseType: !1302, size: 64, offset: 1152)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3743, file: !533, line: 277, baseType: !3766, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3749}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3743, file: !533, line: 290, baseType: !681, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3743, file: !533, line: 292, baseType: !668, size: 64, offset: 192)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3743, file: !533, line: 293, baseType: !677, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3743, file: !533, line: 294, baseType: !673, size: 64, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3743, file: !533, line: 296, baseType: !3774, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!311, !3749, !279, !325, !518}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3743, file: !533, line: 306, baseType: !325, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3743, file: !533, line: 313, baseType: !889, size: 8, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3743, file: !533, line: 314, baseType: !3774, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3743, file: !533, line: 317, baseType: !3781, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!1079, !3749, !1081}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3743, file: !533, line: 320, baseType: !3785, size: 64, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!121, !3749, !1092}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3738, file: !533, line: 176, baseType: !3789, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !533, line: 35, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3738, file: !533, line: 177, baseType: !518, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3738, file: !533, line: 178, baseType: !3711, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3712, file: !533, line: 215, baseType: !170, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3712, file: !533, line: 221, baseType: !430, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3712, file: !533, line: 223, baseType: !249, size: 16, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3712, file: !533, line: 224, baseType: !320, size: 16, offset: 912)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3712, file: !533, line: 225, baseType: !3798, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !533, line: 36, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3712, file: !533, line: 227, baseType: !700, size: 128, align: 64, offset: 1024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !194, file: !195, line: 71, baseType: !3802, size: 32, offset: 448)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3803, line: 19, size: 32, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3804 = !{!3805}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3802, file: !3803, line: 20, baseType: !745, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !194, file: !195, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !194, file: !195, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !194, file: !195, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !194, file: !195, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !194, file: !195, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !191, file: !19, line: 47, baseType: !175, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !191, file: !19, line: 48, baseType: !202, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !191, file: !19, line: 49, baseType: !3814, size: 64, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !191, file: !19, line: 50, baseType: !2331, size: 64, offset: 704)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !176, file: !19, line: 418, baseType: !3818, size: 64, offset: 1408)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !3820)
!3820 = !{!3821, !3822, !3827, !3831, !3835, !3839}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3819, file: !19, line: 54, baseType: !316, size: 128)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3819, file: !19, line: 55, baseType: !3823, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!311, !3818, !3826, !279}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3819, file: !19, line: 57, baseType: !3828, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!311, !3818, !3826, !198, !325}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3819, file: !19, line: 59, baseType: !3832, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !175, !198}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3819, file: !19, line: 60, baseType: !3836, size: 64, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!121, !175}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3819, file: !19, line: 61, baseType: !3840, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{null, !175}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !176, file: !19, line: 419, baseType: !198, size: 64, offset: 1472)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !176, file: !19, line: 420, baseType: !198, size: 64, offset: 1536)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !176, file: !19, line: 421, baseType: !202, size: 64, offset: 1600)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !176, file: !19, line: 424, baseType: !3847, size: 64, offset: 1664)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3849)
!3849 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !176, file: !19, line: 425, baseType: !3851, size: 64, offset: 1728)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !176, file: !19, line: 426, baseType: !13, size: 32, offset: 1792)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !176, file: !19, line: 435, baseType: !642, size: 256, offset: 1856)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !176, file: !19, line: 437, baseType: !3856, size: 64, offset: 2112)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3858, line: 69, size: 320, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3859 = !{!3860, !3861, !3862, !3879, !3881, !3885, !3886}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3857, file: !3858, line: 70, baseType: !198, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3857, file: !3858, line: 71, baseType: !175, size: 64, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3857, file: !3858, line: 72, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3858, line: 47, size: 256, elements: !3866)
!3866 = !{!3867, !3868, !3874, !3878}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3865, file: !3858, line: 49, baseType: !13, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3865, file: !3858, line: 51, baseType: !3869, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!121, !198, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3865, file: !3858, line: 53, baseType: !3875, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!121, !279, !3872}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3865, file: !3858, line: 55, baseType: !3266, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3857, file: !3858, line: 73, baseType: !3880, size: 16, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3857, file: !3858, line: 74, baseType: !3882, size: 8, offset: 208)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !238, line: 16, baseType: !3883)
!3883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !240, line: 20, baseType: !3884)
!3884 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3857, file: !3858, line: 75, baseType: !237, size: 8, offset: 216)
!3886 = !DIDerivedType(tag: DW_TAG_member, scope: !3857, file: !3858, line: 76, baseType: !3887, size: 64, offset: 256)
!3887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3857, file: !3858, line: 76, size: 64, elements: !3888)
!3888 = !{!3889, !3890, !3897}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3887, file: !3858, line: 77, baseType: !170, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3887, file: !3858, line: 78, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3858, line: 86, size: 128, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3893, file: !3858, line: 87, baseType: !13, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3893, file: !3858, line: 88, baseType: !279, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3887, file: !3858, line: 79, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3858, line: 92, size: 256, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905, !3906}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3900, file: !3858, line: 94, baseType: !13, size: 32)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3900, file: !3858, line: 95, baseType: !13, size: 32, offset: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3900, file: !3858, line: 96, baseType: !1941, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3900, file: !3858, line: 97, baseType: !3863, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3900, file: !3858, line: 98, baseType: !170, size: 64, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !176, file: !19, line: 438, baseType: !13, size: 32, offset: 2176)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !176, file: !19, line: 441, baseType: !13, size: 32, offset: 2208)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !176, file: !19, line: 442, baseType: !3847, size: 64, offset: 2240)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !176, file: !19, line: 443, baseType: !3851, size: 64, offset: 2304)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !176, file: !19, line: 444, baseType: !889, size: 8, offset: 2368)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !176, file: !19, line: 451, baseType: !889, size: 8, offset: 2376)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !176, file: !19, line: 454, baseType: !13, size: 32, offset: 2400)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !176, file: !19, line: 455, baseType: !3915, size: 64, offset: 2432)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3917, line: 23, size: 96, elements: !3918)
!3917 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3918 = !{!3919, !3920, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3916, file: !3917, line: 24, baseType: !121, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3916, file: !3917, line: 24, baseType: !121, size: 32, offset: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3916, file: !3917, line: 24, baseType: !121, size: 32, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !176, file: !19, line: 458, baseType: !3923, size: 64, offset: 2496)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!121}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !176, file: !19, line: 460, baseType: !3927, size: 4032, align: 512, offset: 2560)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3928, size: 4032, elements: !3942)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !3929)
!3929 = !{!3930, !3931, !3932}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3928, file: !19, line: 363, baseType: !170, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3928, file: !19, line: 364, baseType: !13, size: 32, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3928, file: !19, line: 367, baseType: !3933, size: 448, offset: 128)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3933, file: !19, line: 320, baseType: !175, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3933, file: !19, line: 321, baseType: !3937, size: 384, offset: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3938, line: 40, size: 384, elements: !3939)
!3938 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3939 = !{!3940}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3937, file: !3938, line: 41, baseType: !3941, size: 384, align: 64)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 384, align: 64, elements: !2455)
!3942 = !{!3943}
!3943 = !DISubrange(count: 7)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !176, file: !19, line: 463, baseType: !3945, size: 192, offset: 6592)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3946, line: 8, size: 192, elements: !3947)
!3946 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3947 = !{!3948, !3949, !3950}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3945, file: !3946, line: 10, baseType: !13, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3945, file: !3946, line: 11, baseType: !624, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3945, file: !3946, line: 12, baseType: !3951, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3953, line: 59, size: 48, elements: !3954)
!3953 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3954 = !{!3955, !3956, !3957, !3958, !3959, !3960}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3952, file: !3953, line: 60, baseType: !1237, size: 16)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3952, file: !3953, line: 61, baseType: !1237, size: 16, offset: 16)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3952, file: !3953, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3952, file: !3953, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3952, file: !3953, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3952, file: !3953, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !176, file: !19, line: 465, baseType: !174, size: 64, offset: 6784)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !176, file: !19, line: 469, baseType: !13, size: 32, offset: 6848)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !176, file: !19, line: 470, baseType: !180, size: 128, offset: 6912)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !176, file: !19, line: 471, baseType: !3965, size: 64, offset: 7040)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3967, line: 33, size: 96, elements: !3968)
!3967 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3968 = !{!3969, !3970, !3971, !3972}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3966, file: !3967, line: 37, baseType: !121, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3966, file: !3967, line: 43, baseType: !121, size: 32, offset: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3966, file: !3967, line: 45, baseType: !249, size: 16, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3966, file: !3967, line: 47, baseType: !249, size: 16, offset: 80)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !176, file: !19, line: 476, baseType: !3974, size: 64, offset: 7104)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !3976)
!3976 = !{!3977, !3993, !3994, !3995}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3975, file: !19, line: 379, baseType: !3978, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3980, line: 204, baseType: !3981)
!3980 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3980, line: 197, size: 192, elements: !3982)
!3982 = !{!3983, !3985, !3986, !3987, !3989, !3991}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3981, file: !3980, line: 198, baseType: !3984, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3980, line: 21, baseType: !427)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3981, file: !3980, line: 199, baseType: !241, size: 8, offset: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3981, file: !3980, line: 200, baseType: !241, size: 8, offset: 40)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3981, file: !3980, line: 201, baseType: !3988, size: 16, offset: 48)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3980, line: 17, baseType: !248)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3981, file: !3980, line: 202, baseType: !3990, size: 64, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3980, line: 16, baseType: !431)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3981, file: !3980, line: 203, baseType: !3992, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3980, line: 22, baseType: !431)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3975, file: !19, line: 380, baseType: !13, size: 32, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3975, file: !19, line: 381, baseType: !279, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3975, file: !19, line: 382, baseType: !279, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !176, file: !19, line: 477, baseType: !3975, size: 256, offset: 7168)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !176, file: !19, line: 480, baseType: !3998, size: 64, offset: 7424)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !176, file: !19, line: 483, baseType: !4001, size: 64, offset: 7488)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !176, file: !19, line: 488, baseType: !279, size: 64, offset: 7552)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !176, file: !19, line: 492, baseType: !170, size: 64, offset: 7616)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !176, file: !19, line: 493, baseType: !13, size: 32, offset: 7680)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !176, file: !19, line: 495, baseType: !170, size: 64, offset: 7744)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !176, file: !19, line: 496, baseType: !13, size: 32, offset: 7808)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !176, file: !19, line: 499, baseType: !13, size: 32, offset: 7840)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !176, file: !19, line: 500, baseType: !4010, size: 64, offset: 7872)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4012, line: 45, baseType: !4013)
!4012 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !176, file: !19, line: 503, baseType: !13, size: 32, offset: 7936)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !176, file: !19, line: 504, baseType: !4016, size: 64, offset: 8000)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4019, line: 96, size: 192, elements: !4020)
!4019 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4020 = !{!4021, !4022, !4065, !4067}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4018, file: !4019, line: 97, baseType: !13, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4018, file: !4019, line: 98, baseType: !4023, size: 64, offset: 64)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4019, line: 24, size: 3072, elements: !4025)
!4025 = !{!4026, !4028, !4029, !4030, !4031, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4062, !4063, !4064}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4024, file: !4019, line: 26, baseType: !4027, size: 128)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 128, elements: !2455)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4024, file: !4019, line: 27, baseType: !4027, size: 128, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4024, file: !4019, line: 28, baseType: !121, size: 32, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4024, file: !4019, line: 31, baseType: !209, size: 32, align: 512, offset: 512)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4024, file: !4019, line: 32, baseType: !4032, size: 960, offset: 576)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4033, line: 206, size: 960, elements: !4034)
!4033 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4034 = !{!4035, !4036, !4039, !4041, !4042, !4044}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4032, file: !4033, line: 207, baseType: !703, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4032, file: !4033, line: 208, baseType: !4037, size: 256, offset: 64)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4038, size: 256, elements: !754)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4032, file: !4033, line: 209, baseType: !4040, size: 256, offset: 320)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !754)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4032, file: !4033, line: 213, baseType: !171, size: 64, offset: 576)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4032, file: !4033, line: 215, baseType: !4043, size: 256, offset: 640)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !754)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !4033, line: 216, baseType: !237, size: 8, offset: 896)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4024, file: !4019, line: 33, baseType: !174, size: 64, offset: 1536)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4024, file: !4019, line: 34, baseType: !174, size: 64, offset: 1600)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4024, file: !4019, line: 35, baseType: !889, size: 8, offset: 1664)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4024, file: !4019, line: 36, baseType: !2891, size: 320, offset: 1728)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4024, file: !4019, line: 37, baseType: !1259, size: 256, offset: 2048)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4024, file: !4019, line: 38, baseType: !700, size: 128, align: 64, offset: 2304)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4024, file: !4019, line: 39, baseType: !4052, size: 64, offset: 2432)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4019, line: 49, size: 768, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4058, !4059, !4060, !4061}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4053, file: !4019, line: 50, baseType: !209, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4053, file: !4019, line: 51, baseType: !4040, size: 256, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4053, file: !4019, line: 53, baseType: !4040, size: 256, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4053, file: !4019, line: 54, baseType: !174, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4053, file: !4019, line: 55, baseType: !4052, size: 64, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4053, file: !4019, line: 56, baseType: !121, size: 32, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4053, file: !4019, line: 57, baseType: !121, size: 32, offset: 736)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4024, file: !4019, line: 40, baseType: !174, size: 64, offset: 2496)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4024, file: !4019, line: 42, baseType: !121, size: 32, offset: 2560)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4024, file: !4019, line: 43, baseType: !4017, size: 64, offset: 2624)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4018, file: !4019, line: 99, baseType: !4066, offset: 128)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !560, line: 211, elements: !561)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4018, file: !4019, line: 100, baseType: !4068, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4019, line: 63, size: 3008, elements: !4070)
!4070 = !{!4071, !4072, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4100}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4069, file: !4019, line: 64, baseType: !4052, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4069, file: !4019, line: 65, baseType: !4073, size: 192, offset: 64)
!4073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4052, size: 192, elements: !280)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4069, file: !4019, line: 67, baseType: !121, size: 32, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4069, file: !4019, line: 68, baseType: !642, size: 256, offset: 320)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4069, file: !4019, line: 69, baseType: !209, size: 32, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4069, file: !4019, line: 70, baseType: !642, size: 256, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4069, file: !4019, line: 71, baseType: !174, size: 64, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4069, file: !4019, line: 72, baseType: !174, size: 64, offset: 960)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4069, file: !4019, line: 73, baseType: !174, size: 64, offset: 1024)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4069, file: !4019, line: 74, baseType: !174, size: 64, offset: 1088)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4069, file: !4019, line: 75, baseType: !174, size: 64, offset: 1152)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4069, file: !4019, line: 76, baseType: !174, size: 64, offset: 1216)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4069, file: !4019, line: 77, baseType: !174, size: 64, offset: 1280)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4069, file: !4019, line: 78, baseType: !174, size: 64, offset: 1344)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4069, file: !4019, line: 79, baseType: !889, size: 8, offset: 1408)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4069, file: !4019, line: 80, baseType: !174, size: 64, offset: 1472)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4069, file: !4019, line: 81, baseType: !642, size: 256, offset: 1536)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4069, file: !4019, line: 82, baseType: !1452, size: 256, offset: 1792)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4069, file: !4019, line: 84, baseType: !229, size: 32, offset: 2048)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4069, file: !4019, line: 87, baseType: !174, size: 64, offset: 2112)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4069, file: !4019, line: 88, baseType: !174, size: 64, offset: 2176)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4069, file: !4019, line: 89, baseType: !4094, size: 704, offset: 2240)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1260, line: 111, size: 704, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4094, file: !1260, line: 112, baseType: !1259, size: 256)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4094, file: !1260, line: 113, baseType: !2891, size: 320, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4094, file: !1260, line: 116, baseType: !3197, size: 64, offset: 576)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4094, file: !1260, line: 117, baseType: !121, size: 32, offset: 640)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4069, file: !4019, line: 90, baseType: !4017, size: 64, offset: 2944)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !176, file: !19, line: 515, baseType: !4102, size: 64, offset: 8064)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4104, line: 117, size: 128, elements: !4105)
!4104 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4105 = !{!4106, !4107, !4108}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4103, file: !4104, line: 118, baseType: !815, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4103, file: !4104, line: 119, baseType: !815, size: 32, offset: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4103, file: !4104, line: 120, baseType: !171, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !176, file: !19, line: 516, baseType: !13, size: 32, offset: 8128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !176, file: !19, line: 519, baseType: !13, size: 32, offset: 8160)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !176, file: !19, line: 520, baseType: !4112, size: 64, offset: 8192)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !176, file: !19, line: 523, baseType: !4114, size: 64, offset: 8256)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !176, file: !19, line: 524, baseType: !13, size: 32, offset: 8320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !176, file: !19, line: 525, baseType: !4119, size: 64, offset: 8384)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !176, file: !19, line: 526, baseType: !13, size: 32, offset: 8448)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !176, file: !19, line: 533, baseType: !170, size: 64, offset: 8512)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !176, file: !19, line: 534, baseType: !13, size: 32, offset: 8576)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !176, file: !19, line: 535, baseType: !4126, size: 64, offset: 8640)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !176, file: !19, line: 536, baseType: !13, size: 32, offset: 8704)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !176, file: !19, line: 539, baseType: !121, size: 32, offset: 8736)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !176, file: !19, line: 540, baseType: !4130, size: 64, offset: 8768)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4132, line: 32, size: 64, elements: !4133)
!4132 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4133 = !{!4134, !4135}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4131, file: !4132, line: 33, baseType: !815, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4131, file: !4132, line: 34, baseType: !815, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !176, file: !19, line: 563, baseType: !180, size: 128, offset: 8832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !176, file: !19, line: 565, baseType: !180, size: 128, offset: 8960)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !176, file: !19, line: 568, baseType: !4139, size: 64, offset: 9088)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !176, file: !19, line: 570, baseType: !229, size: 32, offset: 9152)
!4141 = !{!0, !4142, !4144, !4146, !4148, !4150, !4152, !4154, !4159, !4164, !4169, !4171, !4173, !4175, !4177, !4179, !4181, !4183, !4187, !4192, !4197, !4202, !4207, !5041, !5043, !5045, !5047, !5049, !7, !5056, !5061, !5063, !5067, !5069, !5071, !5076, !5081, !5086, !5088, !5093, !5095}
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_read292", scope: !9, file: !2, line: 118, type: !170, isLocal: true, isDefinition: true)
!4144 = !DIGlobalVariableExpression(var: !4145, expr: !DIExpression())
!4145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_write293", scope: !9, file: !2, line: 141, type: !170, isLocal: true, isDefinition: true)
!4146 = !DIGlobalVariableExpression(var: !4147, expr: !DIExpression())
!4147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_modify294", scope: !9, file: !2, line: 180, type: !170, isLocal: true, isDefinition: true)
!4148 = !DIGlobalVariableExpression(var: !4149, expr: !DIExpression())
!4149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_available295", scope: !9, file: !2, line: 187, type: !170, isLocal: true, isDefinition: true)
!4150 = !DIGlobalVariableExpression(var: !4151, expr: !DIExpression())
!4151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_punit_acquire296", scope: !9, file: !2, line: 231, type: !170, isLocal: true, isDefinition: true)
!4152 = !DIGlobalVariableExpression(var: !4153, expr: !DIExpression())
!4153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_punit_release297", scope: !9, file: !2, line: 245, type: !170, isLocal: true, isDefinition: true)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !4156, isLocal: true, isDefinition: true)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !4157)
!4157 = !{!4158}
!4158 = !DISubrange(count: 39)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !4161, isLocal: true, isDefinition: true)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 45)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !4166, isLocal: true, isDefinition: true)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !4167)
!4167 = !{!4168}
!4168 = !DISubrange(count: 22)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_block_punit_i2c_access298", scope: !9, file: !2, line: 380, type: !170, isLocal: true, isDefinition: true)
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_unblock_punit_i2c_access299", scope: !9, file: !2, line: 399, type: !170, isLocal: true, isDefinition: true)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_register_pmic_bus_access_notifier300", scope: !9, file: !2, line: 413, type: !170, isLocal: true, isDefinition: true)
!4175 = !DIGlobalVariableExpression(var: !4176, expr: !DIExpression())
!4176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_unregister_pmic_bus_access_notifier_unlocked301", scope: !9, file: !2, line: 423, type: !170, isLocal: true, isDefinition: true)
!4177 = !DIGlobalVariableExpression(var: !4178, expr: !DIExpression())
!4178 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_unregister_pmic_bus_access_notifier302", scope: !9, file: !2, line: 436, type: !170, isLocal: true, isDefinition: true)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iosf_mbi_assert_punit_acquired303", scope: !9, file: !2, line: 442, type: !170, isLocal: true, isDefinition: true)
!4181 = !DIGlobalVariableExpression(var: !4182, expr: !DIExpression())
!4182 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6305", scope: !9, file: !2, line: 566, type: !170, isLocal: true, isDefinition: true)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(name: "__exitcall_iosf_mbi_exit", scope: !9, file: !2, line: 567, type: !4185, isLocal: true, isDefinition: true)
!4185 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4186, line: 120, baseType: !4139)
!4186 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4187 = !DIGlobalVariableExpression(var: !4188, expr: !DIExpression())
!4188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author306", scope: !9, file: !2, line: 569, type: !4189, isLocal: true, isDefinition: true, align: 8)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 472, elements: !4190)
!4190 = !{!4191}
!4191 = !DISubrange(count: 59)
!4192 = !DIGlobalVariableExpression(var: !4193, expr: !DIExpression())
!4193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description307", scope: !9, file: !2, line: 570, type: !4194, isLocal: true, isDefinition: true, align: 8)
!4194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 424, elements: !4195)
!4195 = !{!4196}
!4196 = !DISubrange(count: 53)
!4197 = !DIGlobalVariableExpression(var: !4198, expr: !DIExpression())
!4198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file308", scope: !9, file: !2, line: 571, type: !4199, isLocal: true, isDefinition: true, align: 8)
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 376, elements: !4200)
!4200 = !{!4201}
!4201 = !DISubrange(count: 47)
!4202 = !DIGlobalVariableExpression(var: !4203, expr: !DIExpression())
!4203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license309", scope: !9, file: !2, line: 571, type: !4204, isLocal: true, isDefinition: true, align: 8)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 192, elements: !4205)
!4205 = !{!4206}
!4206 = !DISubrange(count: 24)
!4207 = !DIGlobalVariableExpression(var: !4208, expr: !DIExpression())
!4208 = distinct !DIGlobalVariable(name: "mbi_pdev", scope: !9, file: !2, line: 29, type: !4209, isLocal: true, isDefinition: true)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4211, line: 322, size: 16640, elements: !4212)
!4211 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4212 = !{!4213, !4214, !4816, !4817, !4818, !4819, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4925, !4926, !4927, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5004, !5005, !5006, !5008, !5009, !5011, !5012, !5013, !5014, !5020, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4210, file: !4211, line: 323, baseType: !180, size: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4210, file: !4211, line: 324, baseType: !4215, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4211, line: 647, size: 8256, elements: !4217)
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223, !4224, !4239, !4240, !4241, !4265, !4266, !4270, !4271, !4272, !4273, !4274, !4278, !4279, !4281, !4811, !4812, !4813, !4814, !4815}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4216, file: !4211, line: 648, baseType: !180, size: 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4216, file: !4211, line: 649, baseType: !4215, size: 64, offset: 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4216, file: !4211, line: 650, baseType: !180, size: 128, offset: 192)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4216, file: !4211, line: 651, baseType: !180, size: 128, offset: 320)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4216, file: !4211, line: 652, baseType: !4209, size: 64, offset: 448)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4216, file: !4211, line: 653, baseType: !180, size: 128, offset: 512)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4216, file: !4211, line: 655, baseType: !4225, size: 256, offset: 640)
!4225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4226, size: 256, elements: !754)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4228, line: 21, size: 512, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4229 = !{!4230, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4227, file: !4228, line: 22, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !181, line: 164, baseType: !2915)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4227, file: !4228, line: 23, baseType: !4231, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4227, file: !4228, line: 24, baseType: !198, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4227, file: !4228, line: 25, baseType: !174, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4227, file: !4228, line: 26, baseType: !174, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4227, file: !4228, line: 27, baseType: !4226, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4227, file: !4228, line: 27, baseType: !4226, size: 64, offset: 384)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4227, file: !4228, line: 27, baseType: !4226, size: 64, offset: 448)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4216, file: !4211, line: 656, baseType: !180, size: 128, offset: 896)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4216, file: !4211, line: 657, baseType: !4227, size: 512, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4216, file: !4211, line: 659, baseType: !4242, size: 64, offset: 1536)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4211, line: 773, size: 320, elements: !4244)
!4244 = !{!4245, !4249, !4253, !4257, !4261}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4243, file: !4211, line: 774, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!121, !4215}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4243, file: !4211, line: 775, baseType: !4250, size: 64, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4215}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4243, file: !4211, line: 776, baseType: !4254, size: 64, offset: 128)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!170, !4215, !13, !121}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4243, file: !4211, line: 777, baseType: !4258, size: 64, offset: 192)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!121, !4215, !13, !121, !121, !2272}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4243, file: !4211, line: 778, baseType: !4262, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!121, !4215, !13, !121, !121, !426}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4216, file: !4211, line: 660, baseType: !170, size: 64, offset: 1600)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4216, file: !4211, line: 661, baseType: !4267, size: 64, offset: 1664)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4269, line: 131, flags: DIFlagFwdDecl)
!4269 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4216, file: !4211, line: 663, baseType: !241, size: 8, offset: 1728)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4216, file: !4211, line: 664, baseType: !241, size: 8, offset: 1736)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4216, file: !4211, line: 665, baseType: !241, size: 8, offset: 1744)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4216, file: !4211, line: 666, baseType: !241, size: 8, offset: 1752)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4216, file: !4211, line: 671, baseType: !4275, size: 384, offset: 1760)
!4275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !4276)
!4276 = !{!4277}
!4277 = !DISubrange(count: 48)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4216, file: !4211, line: 673, baseType: !249, size: 16, offset: 2144)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4216, file: !4211, line: 674, baseType: !4280, size: 16, offset: 2160)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4211, line: 255, baseType: !249)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4216, file: !4211, line: 675, baseType: !4282, size: 64, offset: 2176)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !106, line: 705, size: 5824, elements: !4284)
!4284 = !{!4285, !4286, !4287, !4290, !4291, !4344, !4427, !4428, !4429, !4430, !4431, !4438, !4596, !4609, !4619, !4623, !4625, !4626, !4627, !4631, !4638, !4639, !4642, !4645, !4649, !4753, !4754, !4755, !4756, !4757, !4758, !4788, !4789, !4790, !4793, !4796, !4805, !4806, !4807, !4808, !4809, !4810}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4283, file: !106, line: 706, baseType: !194, size: 512)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4283, file: !106, line: 707, baseType: !4282, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4283, file: !106, line: 709, baseType: !4288, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !106, line: 37, flags: DIFlagFwdDecl)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4283, file: !106, line: 711, baseType: !198, size: 64, offset: 640)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4283, file: !106, line: 712, baseType: !4292, size: 64, offset: 704)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !106, line: 89, size: 384, elements: !4295)
!4295 = !{!4296, !4297, !4298, !4304, !4309, !4313}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4294, file: !106, line: 90, baseType: !198, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4294, file: !106, line: 91, baseType: !329, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4294, file: !106, line: 92, baseType: !4299, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!121, !4302, !274}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4283)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4294, file: !106, line: 93, baseType: !4305, size: 64, offset: 192)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!279, !4302, !4308, !3708, !3709}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4294, file: !106, line: 95, baseType: !4310, size: 64, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !4282}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4294, file: !106, line: 97, baseType: !4314, size: 64, offset: 320)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4316)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !113, line: 286, size: 1472, elements: !4317)
!4317 = !{!4318, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4316, file: !113, line: 287, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!121, !4282}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4316, file: !113, line: 288, baseType: !4310, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4316, file: !113, line: 289, baseType: !4319, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4316, file: !113, line: 290, baseType: !4319, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4316, file: !113, line: 291, baseType: !4319, size: 64, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4316, file: !113, line: 292, baseType: !4319, size: 64, offset: 320)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4316, file: !113, line: 293, baseType: !4319, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4316, file: !113, line: 294, baseType: !4319, size: 64, offset: 448)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4316, file: !113, line: 295, baseType: !4319, size: 64, offset: 512)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4316, file: !113, line: 296, baseType: !4319, size: 64, offset: 576)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4316, file: !113, line: 297, baseType: !4319, size: 64, offset: 640)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4316, file: !113, line: 298, baseType: !4319, size: 64, offset: 704)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4316, file: !113, line: 299, baseType: !4319, size: 64, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4316, file: !113, line: 300, baseType: !4319, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4316, file: !113, line: 301, baseType: !4319, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4316, file: !113, line: 302, baseType: !4319, size: 64, offset: 960)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4316, file: !113, line: 303, baseType: !4319, size: 64, offset: 1024)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4316, file: !113, line: 304, baseType: !4319, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4316, file: !113, line: 305, baseType: !4319, size: 64, offset: 1152)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4316, file: !113, line: 306, baseType: !4319, size: 64, offset: 1216)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4316, file: !113, line: 307, baseType: !4319, size: 64, offset: 1280)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4316, file: !113, line: 308, baseType: !4319, size: 64, offset: 1344)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4316, file: !113, line: 309, baseType: !4319, size: 64, offset: 1408)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4283, file: !106, line: 714, baseType: !4345, size: 64, offset: 768)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4347)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4348, line: 80, size: 1344, elements: !4349)
!4348 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4426}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4347, file: !4348, line: 81, baseType: !198, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4347, file: !4348, line: 82, baseType: !198, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4347, file: !4348, line: 83, baseType: !329, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4347, file: !4348, line: 84, baseType: !329, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4347, file: !4348, line: 85, baseType: !329, size: 64, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4347, file: !4348, line: 87, baseType: !4356, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!121, !4282, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !100, line: 96, size: 1152, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367, !4368, !4380, !4389, !4390, !4391, !4392, !4393, !4401, !4402, !4403, !4404, !4405, !4406}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4360, file: !100, line: 97, baseType: !198, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4360, file: !100, line: 98, baseType: !4345, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4360, file: !100, line: 100, baseType: !175, size: 64, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4360, file: !100, line: 101, baseType: !198, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4360, file: !100, line: 103, baseType: !889, size: 8, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4360, file: !100, line: 104, baseType: !99, size: 32, offset: 288)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4360, file: !100, line: 106, baseType: !4369, size: 64, offset: 320)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4371)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !173, line: 282, size: 1600, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4379}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4371, file: !173, line: 283, baseType: !3165, size: 256)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4371, file: !173, line: 284, baseType: !3165, size: 256, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4371, file: !173, line: 285, baseType: !4376, size: 1024, offset: 512)
!4376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4377)
!4377 = !{!4378}
!4378 = !DISubrange(count: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4371, file: !173, line: 286, baseType: !1220, size: 64, offset: 1536)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4360, file: !100, line: 107, baseType: !4381, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4383)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !173, line: 217, size: 256, elements: !4384)
!4384 = !{!4385, !4386, !4387, !4388}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4383, file: !173, line: 218, baseType: !3172, size: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4383, file: !173, line: 219, baseType: !172, size: 64, offset: 128)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4383, file: !173, line: 220, baseType: !427, size: 32, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4383, file: !173, line: 221, baseType: !427, size: 32, offset: 224)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4360, file: !100, line: 109, baseType: !4319, size: 64, offset: 448)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4360, file: !100, line: 110, baseType: !4310, size: 64, offset: 512)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4360, file: !100, line: 111, baseType: !4319, size: 64, offset: 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4360, file: !100, line: 112, baseType: !4310, size: 64, offset: 640)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4360, file: !100, line: 113, baseType: !4394, size: 64, offset: 704)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!121, !4282, !4397}
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !113, line: 60, baseType: !4398)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !113, line: 58, size: 32, elements: !4399)
!4399 = !{!4400}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4398, file: !113, line: 59, baseType: !121, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4360, file: !100, line: 114, baseType: !4319, size: 64, offset: 768)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4360, file: !100, line: 115, baseType: !329, size: 64, offset: 832)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4360, file: !100, line: 116, baseType: !329, size: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4360, file: !100, line: 118, baseType: !4314, size: 64, offset: 960)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4360, file: !100, line: 119, baseType: !4310, size: 64, offset: 1024)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4360, file: !100, line: 121, baseType: !4407, size: 64, offset: 1088)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !100, line: 121, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4347, file: !4348, line: 88, baseType: !4299, size: 64, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4347, file: !4348, line: 89, baseType: !4319, size: 64, offset: 448)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4347, file: !4348, line: 90, baseType: !4310, size: 64, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4347, file: !4348, line: 91, baseType: !4310, size: 64, offset: 576)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4347, file: !4348, line: 92, baseType: !4310, size: 64, offset: 640)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4347, file: !4348, line: 94, baseType: !4319, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4347, file: !4348, line: 95, baseType: !4319, size: 64, offset: 768)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4347, file: !4348, line: 97, baseType: !4394, size: 64, offset: 832)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4347, file: !4348, line: 98, baseType: !4319, size: 64, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4347, file: !4348, line: 100, baseType: !4319, size: 64, offset: 960)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4347, file: !4348, line: 102, baseType: !4319, size: 64, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4347, file: !4348, line: 103, baseType: !4310, size: 64, offset: 1088)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4347, file: !4348, line: 105, baseType: !4314, size: 64, offset: 1152)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4347, file: !4348, line: 107, baseType: !4423, size: 64, offset: 1216)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4348, line: 107, flags: DIFlagFwdDecl)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4347, file: !4348, line: 109, baseType: !889, size: 8, offset: 1280)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4283, file: !106, line: 715, baseType: !4359, size: 64, offset: 832)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4283, file: !106, line: 717, baseType: !170, size: 64, offset: 896)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4283, file: !106, line: 719, baseType: !170, size: 64, offset: 960)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4283, file: !106, line: 721, baseType: !642, size: 256, offset: 1024)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4283, file: !106, line: 725, baseType: !4432, size: 448, offset: 1280)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !106, line: 517, size: 448, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4432, file: !106, line: 518, baseType: !180, size: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4432, file: !106, line: 519, baseType: !180, size: 128, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4432, file: !106, line: 520, baseType: !180, size: 128, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4432, file: !106, line: 521, baseType: !105, size: 32, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4283, file: !106, line: 726, baseType: !4439, size: 2496, offset: 1728)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !113, line: 663, size: 2496, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4523, !4527}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4439, file: !113, line: 664, baseType: !4397, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4439, file: !113, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4439, file: !113, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4439, file: !113, line: 667, baseType: !889, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4439, file: !113, line: 668, baseType: !889, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4439, file: !113, line: 669, baseType: !889, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4439, file: !113, line: 670, baseType: !889, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4439, file: !113, line: 671, baseType: !889, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4439, file: !113, line: 672, baseType: !889, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4439, file: !113, line: 673, baseType: !889, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4439, file: !113, line: 674, baseType: !889, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4439, file: !113, line: 675, baseType: !426, size: 32, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4439, file: !113, line: 676, baseType: !209, size: 32, offset: 96)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4439, file: !113, line: 678, baseType: !180, size: 128, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4439, file: !113, line: 679, baseType: !1452, size: 256, offset: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4439, file: !113, line: 680, baseType: !4457, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4459, line: 43, size: 1536, elements: !4460)
!4459 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4458, file: !4459, line: 44, baseType: !198, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4458, file: !4459, line: 45, baseType: !121, size: 32, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4458, file: !4459, line: 46, baseType: !180, size: 128, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4458, file: !4459, line: 47, baseType: !209, size: 32, offset: 256)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4458, file: !4459, line: 48, baseType: !4466, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !113, line: 629, flags: DIFlagFwdDecl)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4458, file: !4459, line: 49, baseType: !2891, size: 320, offset: 384)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4458, file: !4459, line: 50, baseType: !174, size: 64, offset: 704)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4458, file: !4459, line: 51, baseType: !2066, size: 64, offset: 768)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4458, file: !4459, line: 52, baseType: !2066, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4458, file: !4459, line: 53, baseType: !2066, size: 64, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4458, file: !4459, line: 54, baseType: !2066, size: 64, offset: 960)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4458, file: !4459, line: 55, baseType: !2066, size: 64, offset: 1024)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4458, file: !4459, line: 56, baseType: !174, size: 64, offset: 1088)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4458, file: !4459, line: 57, baseType: !174, size: 64, offset: 1152)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4458, file: !4459, line: 58, baseType: !174, size: 64, offset: 1216)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4458, file: !4459, line: 59, baseType: !174, size: 64, offset: 1280)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4458, file: !4459, line: 60, baseType: !174, size: 64, offset: 1344)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4458, file: !4459, line: 61, baseType: !4282, size: 64, offset: 1408)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4458, file: !4459, line: 62, baseType: !889, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4458, file: !4459, line: 63, baseType: !889, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4439, file: !113, line: 681, baseType: !889, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4439, file: !113, line: 682, baseType: !889, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4439, file: !113, line: 683, baseType: !889, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4439, file: !113, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4439, file: !113, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4439, file: !113, line: 690, baseType: !2058, size: 512, offset: 640)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4439, file: !113, line: 691, baseType: !430, size: 64, offset: 1152)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4439, file: !113, line: 692, baseType: !1259, size: 256, offset: 1216)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4439, file: !113, line: 693, baseType: !758, size: 192, offset: 1472)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4439, file: !113, line: 694, baseType: !4466, size: 64, offset: 1664)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4439, file: !113, line: 695, baseType: !229, size: 32, offset: 1728)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4439, file: !113, line: 696, baseType: !229, size: 32, offset: 1760)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4439, file: !113, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4439, file: !113, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4439, file: !113, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4439, file: !113, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4439, file: !113, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4439, file: !113, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4439, file: !113, line: 703, baseType: !889, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4439, file: !113, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4439, file: !113, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4439, file: !113, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4439, file: !113, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4439, file: !113, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4439, file: !113, line: 709, baseType: !13, size: 32, offset: 1824)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4439, file: !113, line: 710, baseType: !112, size: 32, offset: 1856)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4439, file: !113, line: 711, baseType: !120, size: 32, offset: 1888)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4439, file: !113, line: 712, baseType: !120, size: 32, offset: 1920)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4439, file: !113, line: 713, baseType: !121, size: 32, offset: 1952)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4439, file: !113, line: 714, baseType: !121, size: 32, offset: 1984)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4439, file: !113, line: 715, baseType: !430, size: 64, offset: 2048)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4439, file: !113, line: 716, baseType: !430, size: 64, offset: 2112)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4439, file: !113, line: 717, baseType: !430, size: 64, offset: 2176)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4439, file: !113, line: 718, baseType: !430, size: 64, offset: 2240)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4439, file: !113, line: 720, baseType: !4518, size: 64, offset: 2304)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !113, line: 632, size: 64, elements: !4520)
!4520 = !{!4521, !4522}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4519, file: !113, line: 633, baseType: !209, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4519, file: !113, line: 634, baseType: !13, size: 32, offset: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4439, file: !113, line: 721, baseType: !4524, size: 64, offset: 2368)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !4282, !815}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4439, file: !113, line: 722, baseType: !4528, size: 64, offset: 2432)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !12, line: 117, size: 2432, elements: !4530)
!4530 = !{!4531, !4559, !4560, !4567, !4572, !4594, !4595}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4529, file: !12, line: 118, baseType: !4532, size: 320)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !12, line: 52, size: 320, elements: !4533)
!4533 = !{!4534, !4538, !4539, !4540, !4541, !4542}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4532, file: !12, line: 53, baseType: !4535, size: 128)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2227, line: 82, size: 128, elements: !4536)
!4536 = !{!4537}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4535, file: !2227, line: 83, baseType: !180, size: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4532, file: !12, line: 54, baseType: !815, size: 32, offset: 128)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4532, file: !12, line: 55, baseType: !815, size: 32, offset: 160)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4532, file: !12, line: 56, baseType: !815, size: 32, offset: 192)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4532, file: !12, line: 57, baseType: !11, size: 32, offset: 224)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4532, file: !12, line: 58, baseType: !4543, size: 64, offset: 256)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4545, line: 65, size: 384, elements: !4546)
!4545 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4546 = !{!4547, !4548}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4544, file: !4545, line: 66, baseType: !830, size: 320)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4544, file: !4545, line: 67, baseType: !4549, size: 64, offset: 320)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4545, line: 54, size: 192, elements: !4551)
!4551 = !{!4552, !4557, !4558}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4550, file: !4545, line: 55, baseType: !4553, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4545, line: 51, baseType: !4554)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!121, !4549, !174, !170}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4550, file: !4545, line: 56, baseType: !4549, size: 64, offset: 64)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4550, file: !4545, line: 57, baseType: !121, size: 32, offset: 128)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4529, file: !12, line: 119, baseType: !4532, size: 320, offset: 320)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4529, file: !12, line: 120, baseType: !4561, size: 1408, offset: 640)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !12, line: 85, size: 1408, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4561, file: !12, line: 86, baseType: !4532, size: 320)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4561, file: !12, line: 87, baseType: !4544, size: 384, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4561, file: !12, line: 88, baseType: !4532, size: 320, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4561, file: !12, line: 89, baseType: !4544, size: 384, offset: 1024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4529, file: !12, line: 121, baseType: !4568, size: 192, offset: 2048)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !12, line: 71, size: 192, elements: !4569)
!4569 = !{!4570, !4571}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4568, file: !12, line: 72, baseType: !180, size: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4568, file: !12, line: 73, baseType: !815, size: 32, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4529, file: !12, line: 122, baseType: !4573, size: 64, offset: 2240)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !12, line: 107, size: 576, elements: !4575)
!4575 = !{!4576, !4577, !4593}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4574, file: !12, line: 108, baseType: !128, size: 32)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4574, file: !12, line: 113, baseType: !4578, size: 448, offset: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4574, file: !12, line: 109, size: 448, elements: !4579)
!4579 = !{!4580, !4581, !4586}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4578, file: !12, line: 110, baseType: !2226, size: 320)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4578, file: !12, line: 111, baseType: !4582, size: 192)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !12, line: 66, size: 192, elements: !4583)
!4583 = !{!4584, !4585}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4582, file: !12, line: 67, baseType: !180, size: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4582, file: !12, line: 68, baseType: !815, size: 32, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4578, file: !12, line: 112, baseType: !4587, size: 448)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !12, line: 92, size: 448, elements: !4588)
!4588 = !{!4589, !4590, !4591}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4587, file: !12, line: 93, baseType: !135, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4587, file: !12, line: 94, baseType: !2226, size: 320, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4587, file: !12, line: 95, baseType: !4592, size: 64, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4574, file: !12, line: 114, baseType: !4282, size: 64, offset: 512)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4529, file: !12, line: 123, baseType: !4573, size: 64, offset: 2304)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4529, file: !12, line: 124, baseType: !4573, size: 64, offset: 2368)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4283, file: !106, line: 727, baseType: !4597, size: 64, offset: 4224)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !113, line: 742, size: 1792, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4606, !4607, !4608}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4598, file: !113, line: 743, baseType: !4316, size: 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4598, file: !113, line: 744, baseType: !4319, size: 64, offset: 1472)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4598, file: !113, line: 745, baseType: !4603, size: 64, offset: 1536)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !4282, !889}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4598, file: !113, line: 746, baseType: !4319, size: 64, offset: 1600)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4598, file: !113, line: 747, baseType: !4310, size: 64, offset: 1664)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4598, file: !113, line: 748, baseType: !4310, size: 64, offset: 1728)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4283, file: !106, line: 736, baseType: !4610, size: 128, offset: 4288)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !106, line: 529, size: 128, elements: !4611)
!4611 = !{!4612, !4616}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4610, file: !106, line: 531, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4615, line: 13, flags: DIFlagFwdDecl)
!4615 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4610, file: !106, line: 532, baseType: !4617, size: 64, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !106, line: 49, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4283, file: !106, line: 738, baseType: !4620, size: 64, offset: 4416)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4622)
!4622 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !106, line: 738, flags: DIFlagFwdDecl)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4283, file: !106, line: 740, baseType: !4624, size: 64, offset: 4480)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4283, file: !106, line: 741, baseType: !430, size: 64, offset: 4544)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4283, file: !106, line: 746, baseType: !430, size: 64, offset: 4608)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4283, file: !106, line: 747, baseType: !4628, size: 64, offset: 4672)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4630)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !106, line: 747, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4283, file: !106, line: 749, baseType: !4632, size: 64, offset: 4736)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !106, line: 428, size: 128, elements: !4634)
!4634 = !{!4635, !4636, !4637}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4633, file: !106, line: 433, baseType: !13, size: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4633, file: !106, line: 434, baseType: !13, size: 32, offset: 32)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4633, file: !106, line: 435, baseType: !174, size: 64, offset: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4283, file: !106, line: 751, baseType: !180, size: 128, offset: 4800)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4283, file: !106, line: 762, baseType: !4640, size: 64, offset: 4928)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !106, line: 762, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4283, file: !106, line: 770, baseType: !4643, offset: 4992)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4644, line: 5, elements: !561)
!4644 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4283, file: !106, line: 772, baseType: !4646, size: 64, offset: 4992)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4648, line: 18, flags: DIFlagFwdDecl)
!4648 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4283, file: !106, line: 773, baseType: !4650, size: 64, offset: 5056)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4652, line: 41, size: 512, elements: !4653)
!4652 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4653 = !{!4654, !4655, !4749, !4750, !4751, !4752}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4651, file: !4652, line: 42, baseType: !4650, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4651, file: !4652, line: 43, baseType: !4656, size: 64, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4658)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4652, line: 125, size: 1408, elements: !4659)
!4659 = !{!4660, !4664, !4668, !4674, !4678, !4679, !4684, !4688, !4692, !4696, !4700, !4701, !4705, !4709, !4713, !4724, !4725, !4726, !4727, !4737, !4741, !4745}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4658, file: !4652, line: 126, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!4650, !4650}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4658, file: !4652, line: 127, baseType: !4665, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !4650}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4658, file: !4652, line: 128, baseType: !4669, size: 64, offset: 128)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!889, !4672}
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4651)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4658, file: !4652, line: 129, baseType: !4675, size: 64, offset: 192)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!1220, !4672, !4302}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4658, file: !4652, line: 131, baseType: !4669, size: 64, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4658, file: !4652, line: 133, baseType: !4680, size: 64, offset: 320)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!4683, !4672}
!4683 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4652, line: 132, flags: DIFlagFwdDecl)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4658, file: !4652, line: 134, baseType: !4685, size: 64, offset: 384)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!889, !4672, !198}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4658, file: !4652, line: 136, baseType: !4689, size: 64, offset: 448)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!121, !4672, !198, !13, !170, !325}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4658, file: !4652, line: 141, baseType: !4693, size: 64, offset: 512)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!121, !4672, !198, !4112, !325}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4658, file: !4652, line: 144, baseType: !4697, size: 64, offset: 576)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!198, !4672}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4658, file: !4652, line: 145, baseType: !4697, size: 64, offset: 640)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4658, file: !4652, line: 146, baseType: !4702, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!4650, !4672}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4658, file: !4652, line: 148, baseType: !4706, size: 64, offset: 768)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!4650, !4672, !4650}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4658, file: !4652, line: 151, baseType: !4710, size: 64, offset: 832)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!4650, !4672, !198}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4658, file: !4652, line: 153, baseType: !4714, size: 64, offset: 896)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!121, !4672, !198, !198, !13, !13, !4717}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4652, line: 94, size: 640, elements: !4719)
!4719 = !{!4720, !4721, !4722}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4718, file: !4652, line: 95, baseType: !4650, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4718, file: !4652, line: 96, baseType: !13, size: 32, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4718, file: !4652, line: 97, baseType: !4723, size: 512, offset: 128)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 512, elements: !2101)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4658, file: !4652, line: 158, baseType: !4706, size: 64, offset: 960)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4658, file: !4652, line: 161, baseType: !4702, size: 64, offset: 1024)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4658, file: !4652, line: 163, baseType: !4661, size: 64, offset: 1088)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4658, file: !4652, line: 164, baseType: !4728, size: 64, offset: 1152)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!121, !4672, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4652, line: 73, size: 128, elements: !4733)
!4733 = !{!4734, !4735, !4736}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4732, file: !4652, line: 74, baseType: !13, size: 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4732, file: !4652, line: 75, baseType: !13, size: 32, offset: 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4732, file: !4652, line: 76, baseType: !4672, size: 64, offset: 64)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4658, file: !4652, line: 166, baseType: !4738, size: 64, offset: 1216)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!170, !4650, !121}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4658, file: !4652, line: 167, baseType: !4742, size: 64, offset: 1280)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!121, !4672, !13}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4658, file: !4652, line: 168, baseType: !4746, size: 64, offset: 1344)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!121, !4650}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4651, file: !4652, line: 44, baseType: !4282, size: 64, offset: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4651, file: !4652, line: 45, baseType: !180, size: 128, offset: 192)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4651, file: !4652, line: 46, baseType: !180, size: 128, offset: 320)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4651, file: !4652, line: 47, baseType: !237, size: 8, offset: 448)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4283, file: !106, line: 776, baseType: !121, size: 32, offset: 5120)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4283, file: !106, line: 778, baseType: !513, size: 32, offset: 5152)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4283, file: !106, line: 779, baseType: !426, size: 32, offset: 5184)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4283, file: !106, line: 781, baseType: !209, size: 32, offset: 5216)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4283, file: !106, line: 782, baseType: !180, size: 128, offset: 5248)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4283, file: !106, line: 784, baseType: !4759, size: 64, offset: 5376)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4761)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4762, line: 52, size: 768, elements: !4763)
!4762 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4763 = !{!4764, !4765, !4766, !4767, !4768, !4772, !4776, !4777, !4778, !4779, !4783, !4787}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4761, file: !4762, line: 53, baseType: !198, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4761, file: !4762, line: 55, baseType: !329, size: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4761, file: !4762, line: 56, baseType: !329, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4761, file: !4762, line: 58, baseType: !4299, size: 64, offset: 192)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4761, file: !4762, line: 59, baseType: !4769, size: 64, offset: 256)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!279, !4302, !4308}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4761, file: !4762, line: 61, baseType: !4773, size: 64, offset: 320)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{null, !4759}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4761, file: !4762, line: 62, baseType: !4310, size: 64, offset: 384)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4761, file: !4762, line: 64, baseType: !4319, size: 64, offset: 448)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4761, file: !4762, line: 66, baseType: !3676, size: 64, offset: 512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4761, file: !4762, line: 67, baseType: !4780, size: 64, offset: 576)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!1220, !4302}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4761, file: !4762, line: 69, baseType: !4784, size: 64, offset: 640)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{null, !4302, !3708, !3709}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4761, file: !4762, line: 71, baseType: !4314, size: 64, offset: 704)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4283, file: !106, line: 785, baseType: !329, size: 64, offset: 5440)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4283, file: !106, line: 787, baseType: !4310, size: 64, offset: 5504)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4283, file: !106, line: 788, baseType: !4791, size: 64, offset: 5568)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !106, line: 46, flags: DIFlagFwdDecl)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4283, file: !106, line: 789, baseType: !4794, size: 64, offset: 5632)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !106, line: 48, flags: DIFlagFwdDecl)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4283, file: !106, line: 791, baseType: !4797, size: 64, offset: 5696)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !106, line: 597, size: 128, elements: !4799)
!4799 = !{!4800, !4801, !4802, !4803, !4804}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4798, file: !106, line: 598, baseType: !139, size: 32)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4798, file: !106, line: 599, baseType: !148, size: 32, offset: 32)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4798, file: !106, line: 600, baseType: !153, size: 32, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4798, file: !106, line: 601, baseType: !889, size: 8, offset: 96)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4798, file: !106, line: 602, baseType: !889, size: 8, offset: 104)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4283, file: !106, line: 793, baseType: !158, size: 32, offset: 5760)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4283, file: !106, line: 795, baseType: !889, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4283, file: !106, line: 796, baseType: !889, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4283, file: !106, line: 797, baseType: !889, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4283, file: !106, line: 798, baseType: !889, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4283, file: !106, line: 799, baseType: !889, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4216, file: !4211, line: 676, baseType: !4283, size: 5824, offset: 2240)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4216, file: !4211, line: 677, baseType: !343, size: 64, offset: 8064)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4216, file: !4211, line: 678, baseType: !343, size: 64, offset: 8128)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4216, file: !4211, line: 679, baseType: !13, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4216, file: !4211, line: 680, baseType: !13, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4210, file: !4211, line: 325, baseType: !4215, size: 64, offset: 192)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4210, file: !4211, line: 327, baseType: !170, size: 64, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4210, file: !4211, line: 328, baseType: !4267, size: 64, offset: 320)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4210, file: !4211, line: 329, baseType: !4820, size: 64, offset: 384)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4211, line: 76, size: 832, elements: !4822)
!4822 = !{!4823, !4824, !4825, !4828, !4829}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4821, file: !4211, line: 77, baseType: !4215, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4821, file: !4211, line: 78, baseType: !180, size: 128, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4821, file: !4211, line: 79, baseType: !4826, size: 64, offset: 192)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4211, line: 79, flags: DIFlagFwdDecl)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4821, file: !4211, line: 80, baseType: !241, size: 8, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4821, file: !4211, line: 81, baseType: !194, size: 512, offset: 320)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4210, file: !4211, line: 331, baseType: !13, size: 32, offset: 448)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4210, file: !4211, line: 332, baseType: !249, size: 16, offset: 480)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4210, file: !4211, line: 333, baseType: !249, size: 16, offset: 496)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4210, file: !4211, line: 334, baseType: !249, size: 16, offset: 512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4210, file: !4211, line: 335, baseType: !249, size: 16, offset: 528)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4210, file: !4211, line: 336, baseType: !13, size: 32, offset: 544)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4210, file: !4211, line: 337, baseType: !237, size: 8, offset: 576)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4210, file: !4211, line: 338, baseType: !237, size: 8, offset: 584)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4210, file: !4211, line: 344, baseType: !4839, size: 64, offset: 640)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4211, line: 319, flags: DIFlagFwdDecl)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4210, file: !4211, line: 345, baseType: !4209, size: 64, offset: 704)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4210, file: !4211, line: 347, baseType: !426, size: 32, offset: 768)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4210, file: !4211, line: 348, baseType: !237, size: 8, offset: 800)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4210, file: !4211, line: 349, baseType: !237, size: 8, offset: 808)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4210, file: !4211, line: 350, baseType: !237, size: 8, offset: 816)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4210, file: !4211, line: 351, baseType: !237, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4210, file: !4211, line: 352, baseType: !237, size: 8, offset: 832)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4210, file: !4211, line: 353, baseType: !237, size: 8, offset: 840)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4210, file: !4211, line: 354, baseType: !247, size: 16, offset: 848)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4210, file: !4211, line: 355, baseType: !4126, size: 64, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4210, file: !4211, line: 357, baseType: !4852, size: 64, offset: 960)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4211, line: 918, size: 2368, elements: !4854)
!4854 = !{!4855, !4856, !4857, !4870, !4874, !4878, !4882, !4886, !4887, !4891, !4892, !4896, !4916, !4917, !4918, !4919, !4924}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4853, file: !4211, line: 919, baseType: !180, size: 128)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4853, file: !4211, line: 920, baseType: !198, size: 64, offset: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4853, file: !4211, line: 921, baseType: !4858, size: 64, offset: 192)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4860)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !173, line: 44, size: 320, elements: !4861)
!4861 = !{!4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4860, file: !173, line: 45, baseType: !427, size: 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4860, file: !173, line: 45, baseType: !427, size: 32, offset: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4860, file: !173, line: 46, baseType: !427, size: 32, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4860, file: !173, line: 46, baseType: !427, size: 32, offset: 96)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4860, file: !173, line: 47, baseType: !427, size: 32, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4860, file: !173, line: 47, baseType: !427, size: 32, offset: 160)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4860, file: !173, line: 48, baseType: !172, size: 64, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4860, file: !173, line: 49, baseType: !427, size: 32, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4853, file: !4211, line: 922, baseType: !4871, size: 64, offset: 256)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!121, !4209, !4858}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4853, file: !4211, line: 923, baseType: !4875, size: 64, offset: 320)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{null, !4209}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4853, file: !4211, line: 924, baseType: !4879, size: 64, offset: 384)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!121, !4209, !4397}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4853, file: !4211, line: 925, baseType: !4883, size: 64, offset: 448)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!121, !4209}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4853, file: !4211, line: 926, baseType: !4875, size: 64, offset: 512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4853, file: !4211, line: 927, baseType: !4888, size: 64, offset: 576)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!121, !4209, !121}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4853, file: !4211, line: 928, baseType: !4888, size: 64, offset: 640)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4853, file: !4211, line: 929, baseType: !4893, size: 64, offset: 704)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!426, !4209}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4853, file: !4211, line: 930, baseType: !4897, size: 64, offset: 768)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4899)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4211, line: 837, size: 448, elements: !4900)
!4900 = !{!4901, !4907, !4911, !4912, !4913, !4914, !4915}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4899, file: !4211, line: 839, baseType: !4902, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!4905, !4209, !4906}
!4905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4211, line: 814, baseType: !13)
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4211, line: 196, baseType: !13)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4899, file: !4211, line: 843, baseType: !4908, size: 64, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!4905, !4209}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4899, file: !4211, line: 846, baseType: !4908, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4899, file: !4211, line: 849, baseType: !4875, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4899, file: !4211, line: 850, baseType: !4875, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4899, file: !4211, line: 853, baseType: !4875, size: 64, offset: 320)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4899, file: !4211, line: 856, baseType: !4875, size: 64, offset: 384)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4853, file: !4211, line: 931, baseType: !329, size: 64, offset: 832)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4853, file: !4211, line: 932, baseType: !329, size: 64, offset: 896)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4853, file: !4211, line: 933, baseType: !4360, size: 1152, offset: 960)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4853, file: !4211, line: 934, baseType: !4920, size: 192, offset: 2112)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4211, line: 801, size: 192, elements: !4921)
!4921 = !{!4922, !4923}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4920, file: !4211, line: 802, baseType: !209, size: 32)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4920, file: !4211, line: 803, baseType: !180, size: 128, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4853, file: !4211, line: 935, baseType: !889, size: 8, offset: 2304)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4210, file: !4211, line: 358, baseType: !430, size: 64, offset: 1024)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4210, file: !4211, line: 364, baseType: !4633, size: 128, offset: 1088)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4210, file: !4211, line: 366, baseType: !4928, size: 32, offset: 1216)
!4928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4211, line: 171, baseType: !121)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4210, file: !4211, line: 369, baseType: !237, size: 8, offset: 1248)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4210, file: !4211, line: 370, baseType: !13, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4210, file: !4211, line: 371, baseType: !13, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4210, file: !4211, line: 373, baseType: !13, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4210, file: !4211, line: 374, baseType: !13, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4210, file: !4211, line: 375, baseType: !13, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4210, file: !4211, line: 376, baseType: !13, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4210, file: !4211, line: 377, baseType: !13, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4210, file: !4211, line: 378, baseType: !13, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4210, file: !4211, line: 379, baseType: !13, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4210, file: !4211, line: 380, baseType: !13, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4210, file: !4211, line: 382, baseType: !13, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4210, file: !4211, line: 383, baseType: !13, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4210, file: !4211, line: 384, baseType: !13, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4210, file: !4211, line: 385, baseType: !13, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4210, file: !4211, line: 388, baseType: !13, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4210, file: !4211, line: 390, baseType: !13, size: 32, offset: 1280)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4210, file: !4211, line: 391, baseType: !13, size: 32, offset: 1312)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4210, file: !4211, line: 394, baseType: !4948, size: 64, offset: 1344)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4211, line: 316, flags: DIFlagFwdDecl)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4210, file: !4211, line: 395, baseType: !247, size: 16, offset: 1408)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4210, file: !4211, line: 396, baseType: !13, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4210, file: !4211, line: 399, baseType: !13, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4210, file: !4211, line: 400, baseType: !13, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4210, file: !4211, line: 402, baseType: !4906, size: 32, offset: 1440)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4210, file: !4211, line: 403, baseType: !4283, size: 5824, offset: 1472)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4210, file: !4211, line: 405, baseType: !121, size: 32, offset: 7296)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4210, file: !4211, line: 411, baseType: !13, size: 32, offset: 7328)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4210, file: !4211, line: 412, baseType: !4959, size: 5632, offset: 7360)
!4959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4227, size: 5632, elements: !4960)
!4960 = !{!4961}
!4961 = !DISubrange(count: 11)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4210, file: !4211, line: 413, baseType: !4227, size: 512, offset: 12992)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4210, file: !4211, line: 415, baseType: !889, size: 8, offset: 13504)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4210, file: !4211, line: 417, baseType: !13, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4210, file: !4211, line: 418, baseType: !13, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4210, file: !4211, line: 419, baseType: !13, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4210, file: !4211, line: 420, baseType: !13, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4210, file: !4211, line: 421, baseType: !13, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4210, file: !4211, line: 423, baseType: !13, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4210, file: !4211, line: 424, baseType: !13, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4210, file: !4211, line: 425, baseType: !13, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4210, file: !4211, line: 426, baseType: !13, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4210, file: !4211, line: 427, baseType: !13, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4210, file: !4211, line: 428, baseType: !13, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4210, file: !4211, line: 429, baseType: !13, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4210, file: !4211, line: 430, baseType: !13, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4210, file: !4211, line: 431, baseType: !13, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4210, file: !4211, line: 432, baseType: !13, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4210, file: !4211, line: 433, baseType: !13, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4210, file: !4211, line: 434, baseType: !13, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4210, file: !4211, line: 435, baseType: !13, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4210, file: !4211, line: 436, baseType: !13, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4210, file: !4211, line: 437, baseType: !13, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4210, file: !4211, line: 438, baseType: !13, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4210, file: !4211, line: 439, baseType: !13, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4210, file: !4211, line: 440, baseType: !13, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4210, file: !4211, line: 441, baseType: !13, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4210, file: !4211, line: 442, baseType: !13, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4210, file: !4211, line: 443, baseType: !13, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4210, file: !4211, line: 451, baseType: !13, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4210, file: !4211, line: 457, baseType: !13, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4210, file: !4211, line: 458, baseType: !13, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4210, file: !4211, line: 459, baseType: !13, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4210, file: !4211, line: 460, baseType: !13, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4210, file: !4211, line: 461, baseType: !13, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4210, file: !4211, line: 462, baseType: !13, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4210, file: !4211, line: 463, baseType: !13, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4210, file: !4211, line: 464, baseType: !13, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4210, file: !4211, line: 465, baseType: !13, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4210, file: !4211, line: 466, baseType: !13, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4210, file: !4211, line: 467, baseType: !13, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4210, file: !4211, line: 468, baseType: !5003, size: 16, offset: 13552)
!5003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4211, line: 222, baseType: !249)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4210, file: !4211, line: 469, baseType: !229, size: 32, offset: 13568)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4210, file: !4211, line: 471, baseType: !209, size: 32, offset: 13600)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4210, file: !4211, line: 472, baseType: !5007, size: 512, offset: 13632)
!5007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 512, elements: !2374)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4210, file: !4211, line: 473, baseType: !549, size: 64, offset: 14144)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4210, file: !4211, line: 474, baseType: !5010, size: 704, offset: 14208)
!5010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 704, elements: !4960)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4210, file: !4211, line: 475, baseType: !5010, size: 704, offset: 14912)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4210, file: !4211, line: 487, baseType: !170, size: 64, offset: 15616)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4210, file: !4211, line: 488, baseType: !655, size: 32, offset: 15680)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4210, file: !4211, line: 490, baseType: !5015, size: 320, offset: 15744)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4211, line: 309, size: 320, elements: !5016)
!5016 = !{!5017, !5018, !5019}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5015, file: !4211, line: 310, baseType: !642, size: 256)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5015, file: !4211, line: 311, baseType: !13, size: 32, offset: 256)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5015, file: !4211, line: 312, baseType: !237, size: 8, offset: 288)
!5020 = !DIDerivedType(tag: DW_TAG_member, scope: !4210, file: !4211, line: 497, baseType: !5021, size: 64, offset: 16064)
!5021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4210, file: !4211, line: 497, size: 64, elements: !5022)
!5022 = !{!5023, !5026}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5021, file: !4211, line: 498, baseType: !5024, size: 64)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4211, line: 317, flags: DIFlagFwdDecl)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5021, file: !4211, line: 499, baseType: !4209, size: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4210, file: !4211, line: 501, baseType: !247, size: 16, offset: 16128)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4210, file: !4211, line: 502, baseType: !237, size: 8, offset: 16144)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4210, file: !4211, line: 505, baseType: !247, size: 16, offset: 16160)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4210, file: !4211, line: 506, baseType: !426, size: 32, offset: 16192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4210, file: !4211, line: 507, baseType: !13, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4210, file: !4211, line: 510, baseType: !247, size: 16, offset: 16240)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4210, file: !4211, line: 511, baseType: !247, size: 16, offset: 16256)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4210, file: !4211, line: 519, baseType: !247, size: 16, offset: 16272)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4210, file: !4211, line: 520, baseType: !2915, size: 64, offset: 16320)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4210, file: !4211, line: 521, baseType: !325, size: 64, offset: 16384)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4210, file: !4211, line: 526, baseType: !198, size: 64, offset: 16448)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4210, file: !4211, line: 528, baseType: !174, size: 64, offset: 16512)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4210, file: !4211, line: 531, baseType: !5040, size: 56, offset: 16576)
!5040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 56, elements: !3942)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "iosf_mbi_pmic_punit_access_count", scope: !9, file: !2, line: 208, type: !426, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(name: "iosf_mbi_pmic_i2c_access_count", scope: !9, file: !2, line: 209, type: !426, isLocal: true, isDefinition: true)
!5045 = !DIGlobalVariableExpression(var: !5046, expr: !DIExpression())
!5046 = distinct !DIGlobalVariable(name: "iosf_mbi_sem_address", scope: !9, file: !2, line: 210, type: !426, isLocal: true, isDefinition: true)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "iosf_mbi_sem_acquired", scope: !9, file: !2, line: 211, type: !174, isLocal: true, isDefinition: true)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(name: "iosf_mbi_pm_qos", scope: !9, file: !2, line: 212, type: !5051, isLocal: true, isDefinition: true)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_request", file: !12, line: 61, size: 384, elements: !5052)
!5052 = !{!5053, !5054}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5051, file: !12, line: 62, baseType: !2226, size: 320)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5051, file: !12, line: 63, baseType: !5055, size: 64, offset: 320)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!5056 = !DIGlobalVariableExpression(var: !5057, expr: !DIExpression())
!5057 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !5058, isLocal: true, isDefinition: true)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 34)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(name: "iosf_mbi_pmic_access_mutex", scope: !9, file: !2, line: 205, type: !642, isLocal: true, isDefinition: true)
!5063 = !DIGlobalVariableExpression(var: !5064, expr: !DIExpression())
!5064 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !5065, file: !5066, line: 112, type: !170, isLocal: true, isDefinition: true)
!5065 = distinct !DISubprogram(name: "might_resched", scope: !5066, file: !5066, line: 110, type: !2569, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5066 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5067 = !DIGlobalVariableExpression(var: !5068, expr: !DIExpression())
!5068 = distinct !DIGlobalVariable(name: "iosf_mbi_pmic_access_waitq", scope: !9, file: !2, line: 207, type: !760, isLocal: true, isDefinition: true)
!5069 = !DIGlobalVariableExpression(var: !5070, expr: !DIExpression())
!5070 = distinct !DIGlobalVariable(name: "iosf_mbi_pmic_bus_access_notifier", scope: !9, file: !2, line: 206, type: !4544, isLocal: true, isDefinition: true)
!5071 = !DIGlobalVariableExpression(var: !5072, expr: !DIExpression())
!5072 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !5073, isLocal: true, isDefinition: true)
!5073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5074)
!5074 = !{!5075}
!5075 = !DISubrange(count: 36)
!5076 = !DIGlobalVariableExpression(var: !5077, expr: !DIExpression())
!5077 = distinct !DIGlobalVariable(scope: null, file: !2, line: 266, type: !5078, isLocal: true, isDefinition: true)
!5078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !5079)
!5079 = !{!5080}
!5080 = !DISubrange(count: 37)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !5083, isLocal: true, isDefinition: true)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5084)
!5084 = !{!5085}
!5085 = !DISubrange(count: 13)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(name: "iosf_mbi_pci_driver", scope: !9, file: !2, line: 540, type: !4853, isLocal: true, isDefinition: true)
!5088 = !DIGlobalVariableExpression(var: !5089, expr: !DIExpression())
!5089 = distinct !DIGlobalVariable(name: "iosf_mbi_pci_ids", scope: !9, file: !2, line: 531, type: !5090, isLocal: true, isDefinition: true)
!5090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4859, size: 1600, elements: !5091)
!5091 = !{!5092}
!5092 = !DISubrange(count: 5)
!5093 = !DIGlobalVariableExpression(var: !5094, expr: !DIExpression())
!5094 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !3165, isLocal: true, isDefinition: true)
!5095 = !DIGlobalVariableExpression(var: !5096, expr: !DIExpression())
!5096 = distinct !DIGlobalVariable(scope: null, file: !2, line: 552, type: !5097, isLocal: true, isDefinition: true)
!5097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5098)
!5098 = !{!5099}
!5099 = !DISubrange(count: 9)
!5100 = !{i32 7, !"Dwarf Version", i32 5}
!5101 = !{i32 2, !"Debug Info Version", i32 3}
!5102 = !{i32 1, !"wchar_size", i32 2}
!5103 = !{i32 8, !"cf-protection-branch", i32 1}
!5104 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5105 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5106 = !{i32 1, !"Code Model", i32 2}
!5107 = !{i32 1, !"override-stack-alignment", i32 8}
!5108 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5109 = distinct !DISubprogram(name: "iosf_mbi_read", scope: !2, file: !2, line: 97, type: !5110, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5112)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!121, !237, !237, !426, !2272}
!5112 = !{!5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5125, !5128, !5132}
!5113 = !DILocalVariable(name: "port", arg: 1, scope: !5109, file: !2, line: 97, type: !237)
!5114 = !DILocalVariable(name: "opcode", arg: 2, scope: !5109, file: !2, line: 97, type: !237)
!5115 = !DILocalVariable(name: "offset", arg: 3, scope: !5109, file: !2, line: 97, type: !426)
!5116 = !DILocalVariable(name: "mdr", arg: 4, scope: !5109, file: !2, line: 97, type: !2272)
!5117 = !DILocalVariable(name: "mcr", scope: !5109, file: !2, line: 99, type: !426)
!5118 = !DILocalVariable(name: "mcrx", scope: !5109, file: !2, line: 99, type: !426)
!5119 = !DILocalVariable(name: "flags", scope: !5109, file: !2, line: 100, type: !174)
!5120 = !DILocalVariable(name: "ret", scope: !5109, file: !2, line: 101, type: !121)
!5121 = !DILocalVariable(name: "__ret_warn_on", scope: !5122, file: !2, line: 105, type: !121)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !2, line: 105, column: 3)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !2, line: 104, column: 31)
!5124 = distinct !DILexicalBlock(scope: !5109, file: !2, line: 104, column: 6)
!5125 = !DILocalVariable(name: "__flags", scope: !5126, file: !2, line: 105, type: !121)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !2, line: 105, column: 3)
!5127 = distinct !DILexicalBlock(scope: !5122, file: !2, line: 105, column: 3)
!5128 = !DILocalVariable(name: "__dummy", scope: !5129, file: !2, line: 112, type: !174)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !2, line: 112, column: 2)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 112, column: 2)
!5131 = distinct !DILexicalBlock(scope: !5109, file: !2, line: 112, column: 2)
!5132 = !DILocalVariable(name: "__dummy2", scope: !5129, file: !2, line: 112, type: !174)
!5133 = !DILocation(line: 97, column: 22, scope: !5109)
!5134 = !DILocation(line: 97, column: 31, scope: !5109)
!5135 = !DILocation(line: 97, column: 43, scope: !5109)
!5136 = !DILocation(line: 97, column: 56, scope: !5109)
!5137 = !DILocation(line: 99, column: 2, scope: !5109)
!5138 = !DILocation(line: 99, column: 6, scope: !5109)
!5139 = !DILocation(line: 99, column: 11, scope: !5109)
!5140 = !DILocation(line: 100, column: 2, scope: !5109)
!5141 = !DILocation(line: 100, column: 16, scope: !5109)
!5142 = !DILocation(line: 101, column: 2, scope: !5109)
!5143 = !DILocation(line: 101, column: 6, scope: !5109)
!5144 = !DILocation(line: 104, column: 6, scope: !5124)
!5145 = !DILocation(line: 104, column: 11, scope: !5124)
!5146 = !DILocation(line: 104, column: 6, scope: !5109)
!5147 = !DILocation(line: 105, column: 3, scope: !5122)
!5148 = !DILocation(line: 105, column: 3, scope: !5127)
!5149 = !DILocation(line: 105, column: 3, scope: !5126)
!5150 = !DILocation(line: 105, column: 3, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 105, column: 3)
!5152 = !DILocation(line: 105, column: 3, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 105, column: 3)
!5154 = !{i64 2155074933, i64 2155074962, i64 2155075008, i64 2155075066, i64 2155075120, i64 2155075174, i64 2155075229, i64 2155075260, i64 2155075568, i64 2155075574, i64 2155075621, i64 2155075644, i64 2155075670}
!5155 = !DILocation(line: 105, column: 3, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5126, file: !2, line: 105, column: 3)
!5157 = !DILocation(line: 105, column: 3, scope: !5123)
!5158 = !DILocation(line: 106, column: 3, scope: !5123)
!5159 = !DILocation(line: 109, column: 26, scope: !5109)
!5160 = !DILocation(line: 109, column: 34, scope: !5109)
!5161 = !DILocation(line: 109, column: 40, scope: !5109)
!5162 = !DILocation(line: 109, column: 47, scope: !5109)
!5163 = !DILocation(line: 109, column: 8, scope: !5109)
!5164 = !DILocation(line: 109, column: 6, scope: !5109)
!5165 = !DILocation(line: 110, column: 9, scope: !5109)
!5166 = !DILocation(line: 110, column: 16, scope: !5109)
!5167 = !DILocation(line: 110, column: 7, scope: !5109)
!5168 = !DILocation(line: 112, column: 2, scope: !5109)
!5169 = !DILocation(line: 112, column: 2, scope: !5131)
!5170 = !DILocation(line: 112, column: 2, scope: !5129)
!5171 = !DILocation(line: 112, column: 2, scope: !5130)
!5172 = !DILocation(line: 113, column: 30, scope: !5109)
!5173 = !DILocation(line: 113, column: 36, scope: !5109)
!5174 = !DILocation(line: 113, column: 41, scope: !5109)
!5175 = !DILocation(line: 113, column: 8, scope: !5109)
!5176 = !DILocation(line: 113, column: 6, scope: !5109)
!5177 = !DILocation(line: 114, column: 41, scope: !5109)
!5178 = !DILocation(line: 114, column: 2, scope: !5109)
!5179 = !DILocation(line: 116, column: 9, scope: !5109)
!5180 = !DILocation(line: 116, column: 2, scope: !5109)
!5181 = !DILocation(line: 117, column: 1, scope: !5109)
!5182 = distinct !DISubprogram(name: "iosf_mbi_form_mcr", scope: !2, file: !2, line: 34, type: !5183, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5185)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{!426, !237, !237, !237}
!5185 = !{!5186, !5187, !5188}
!5186 = !DILocalVariable(name: "op", arg: 1, scope: !5182, file: !2, line: 34, type: !237)
!5187 = !DILocalVariable(name: "port", arg: 2, scope: !5182, file: !2, line: 34, type: !237)
!5188 = !DILocalVariable(name: "offset", arg: 3, scope: !5182, file: !2, line: 34, type: !237)
!5189 = !DILocation(line: 34, column: 40, scope: !5182)
!5190 = !DILocation(line: 34, column: 47, scope: !5182)
!5191 = !DILocation(line: 34, column: 56, scope: !5182)
!5192 = !DILocation(line: 36, column: 10, scope: !5182)
!5193 = !DILocation(line: 36, column: 13, scope: !5182)
!5194 = !DILocation(line: 36, column: 23, scope: !5182)
!5195 = !DILocation(line: 36, column: 28, scope: !5182)
!5196 = !DILocation(line: 36, column: 20, scope: !5182)
!5197 = !DILocation(line: 36, column: 38, scope: !5182)
!5198 = !DILocation(line: 36, column: 45, scope: !5182)
!5199 = !DILocation(line: 36, column: 35, scope: !5182)
!5200 = !DILocation(line: 36, column: 51, scope: !5182)
!5201 = !DILocation(line: 36, column: 2, scope: !5182)
!5202 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5203, file: !5203, line: 32, type: !5204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5203 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!174, !5206}
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!5207 = distinct !DISubprogram(name: "spinlock_check", scope: !5208, file: !5208, line: 324, type: !5209, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5211)
!5208 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!5206, !1509}
!5211 = !{!5212}
!5212 = !DILocalVariable(name: "lock", arg: 1, scope: !5207, file: !5208, line: 324, type: !1509)
!5213 = !DILocation(line: 324, column: 67, scope: !5207)
!5214 = !DILocation(line: 326, column: 10, scope: !5207)
!5215 = !DILocation(line: 326, column: 16, scope: !5207)
!5216 = !DILocation(line: 326, column: 2, scope: !5207)
!5217 = distinct !DISubprogram(name: "iosf_mbi_pci_read_mdr", scope: !2, file: !2, line: 39, type: !5218, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5220)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!121, !426, !426, !2272}
!5220 = !{!5221, !5222, !5223, !5224, !5225}
!5221 = !DILocalVariable(name: "mcrx", arg: 1, scope: !5217, file: !2, line: 39, type: !426)
!5222 = !DILocalVariable(name: "mcr", arg: 2, scope: !5217, file: !2, line: 39, type: !426)
!5223 = !DILocalVariable(name: "mdr", arg: 3, scope: !5217, file: !2, line: 39, type: !2272)
!5224 = !DILocalVariable(name: "result", scope: !5217, file: !2, line: 41, type: !121)
!5225 = !DILabel(scope: !5217, name: "fail_read", file: !2, line: 63)
!5226 = !DILocation(line: 39, column: 38, scope: !5217)
!5227 = !DILocation(line: 39, column: 48, scope: !5217)
!5228 = !DILocation(line: 39, column: 58, scope: !5217)
!5229 = !DILocation(line: 41, column: 2, scope: !5217)
!5230 = !DILocation(line: 41, column: 6, scope: !5217)
!5231 = !DILocation(line: 43, column: 7, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 43, column: 6)
!5233 = !DILocation(line: 43, column: 6, scope: !5217)
!5234 = !DILocation(line: 44, column: 3, scope: !5232)
!5235 = !DILocation(line: 46, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 46, column: 6)
!5237 = !DILocation(line: 46, column: 6, scope: !5217)
!5238 = !DILocation(line: 47, column: 35, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 46, column: 12)
!5240 = !DILocation(line: 48, column: 7, scope: !5239)
!5241 = !DILocation(line: 47, column: 12, scope: !5239)
!5242 = !DILocation(line: 47, column: 10, scope: !5239)
!5243 = !DILocation(line: 49, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5239, file: !2, line: 49, column: 7)
!5245 = !DILocation(line: 49, column: 14, scope: !5244)
!5246 = !DILocation(line: 49, column: 7, scope: !5239)
!5247 = !DILocation(line: 50, column: 4, scope: !5244)
!5248 = !DILocation(line: 51, column: 2, scope: !5239)
!5249 = !DILocation(line: 53, column: 34, scope: !5217)
!5250 = !DILocation(line: 53, column: 60, scope: !5217)
!5251 = !DILocation(line: 53, column: 11, scope: !5217)
!5252 = !DILocation(line: 53, column: 9, scope: !5217)
!5253 = !DILocation(line: 54, column: 6, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 54, column: 6)
!5255 = !DILocation(line: 54, column: 13, scope: !5254)
!5256 = !DILocation(line: 54, column: 6, scope: !5217)
!5257 = !DILocation(line: 55, column: 3, scope: !5254)
!5258 = !DILocation(line: 57, column: 33, scope: !5217)
!5259 = !DILocation(line: 57, column: 59, scope: !5217)
!5260 = !DILocation(line: 57, column: 11, scope: !5217)
!5261 = !DILocation(line: 57, column: 9, scope: !5217)
!5262 = !DILocation(line: 58, column: 6, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 58, column: 6)
!5264 = !DILocation(line: 58, column: 13, scope: !5263)
!5265 = !DILocation(line: 58, column: 6, scope: !5217)
!5266 = !DILocation(line: 59, column: 3, scope: !5263)
!5267 = !DILocation(line: 61, column: 2, scope: !5217)
!5268 = !DILocation(line: 63, column: 1, scope: !5217)
!5269 = !DILocation(line: 64, column: 2, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5217, file: !2, line: 64, column: 2)
!5271 = !DILocation(line: 64, column: 2, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 64, column: 2)
!5273 = !DILocation(line: 65, column: 30, scope: !5217)
!5274 = !DILocation(line: 65, column: 9, scope: !5217)
!5275 = !DILocation(line: 65, column: 2, scope: !5217)
!5276 = !DILocation(line: 66, column: 1, scope: !5217)
!5277 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5208, file: !5208, line: 404, type: !5278, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{null, !1509, !174}
!5280 = !{!5281, !5282, !5283, !5286}
!5281 = !DILocalVariable(name: "lock", arg: 1, scope: !5277, file: !5208, line: 404, type: !1509)
!5282 = !DILocalVariable(name: "flags", arg: 2, scope: !5277, file: !5208, line: 404, type: !174)
!5283 = !DILocalVariable(name: "__dummy", scope: !5284, file: !5208, line: 406, type: !174)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !5208, line: 406, column: 2)
!5285 = distinct !DILexicalBlock(scope: !5277, file: !5208, line: 406, column: 2)
!5286 = !DILocalVariable(name: "__dummy2", scope: !5284, file: !5208, line: 406, type: !174)
!5287 = !DILocation(line: 404, column: 64, scope: !5277)
!5288 = !DILocation(line: 404, column: 84, scope: !5277)
!5289 = !DILocation(line: 406, column: 2, scope: !5277)
!5290 = !DILocation(line: 406, column: 2, scope: !5284)
!5291 = !DILocation(line: 406, column: 2, scope: !5285)
!5292 = !DILocation(line: 407, column: 1, scope: !5277)
!5293 = distinct !DISubprogram(name: "iosf_mbi_write", scope: !2, file: !2, line: 120, type: !5294, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5296)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!121, !237, !237, !426, !426}
!5296 = !{!5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5309, !5312, !5316}
!5297 = !DILocalVariable(name: "port", arg: 1, scope: !5293, file: !2, line: 120, type: !237)
!5298 = !DILocalVariable(name: "opcode", arg: 2, scope: !5293, file: !2, line: 120, type: !237)
!5299 = !DILocalVariable(name: "offset", arg: 3, scope: !5293, file: !2, line: 120, type: !426)
!5300 = !DILocalVariable(name: "mdr", arg: 4, scope: !5293, file: !2, line: 120, type: !426)
!5301 = !DILocalVariable(name: "mcr", scope: !5293, file: !2, line: 122, type: !426)
!5302 = !DILocalVariable(name: "mcrx", scope: !5293, file: !2, line: 122, type: !426)
!5303 = !DILocalVariable(name: "flags", scope: !5293, file: !2, line: 123, type: !174)
!5304 = !DILocalVariable(name: "ret", scope: !5293, file: !2, line: 124, type: !121)
!5305 = !DILocalVariable(name: "__ret_warn_on", scope: !5306, file: !2, line: 128, type: !121)
!5306 = distinct !DILexicalBlock(scope: !5307, file: !2, line: 128, column: 3)
!5307 = distinct !DILexicalBlock(scope: !5308, file: !2, line: 127, column: 31)
!5308 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 127, column: 6)
!5309 = !DILocalVariable(name: "__flags", scope: !5310, file: !2, line: 128, type: !121)
!5310 = distinct !DILexicalBlock(scope: !5311, file: !2, line: 128, column: 3)
!5311 = distinct !DILexicalBlock(scope: !5306, file: !2, line: 128, column: 3)
!5312 = !DILocalVariable(name: "__dummy", scope: !5313, file: !2, line: 135, type: !174)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !2, line: 135, column: 2)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !2, line: 135, column: 2)
!5315 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 135, column: 2)
!5316 = !DILocalVariable(name: "__dummy2", scope: !5313, file: !2, line: 135, type: !174)
!5317 = !DILocation(line: 120, column: 23, scope: !5293)
!5318 = !DILocation(line: 120, column: 32, scope: !5293)
!5319 = !DILocation(line: 120, column: 44, scope: !5293)
!5320 = !DILocation(line: 120, column: 56, scope: !5293)
!5321 = !DILocation(line: 122, column: 2, scope: !5293)
!5322 = !DILocation(line: 122, column: 6, scope: !5293)
!5323 = !DILocation(line: 122, column: 11, scope: !5293)
!5324 = !DILocation(line: 123, column: 2, scope: !5293)
!5325 = !DILocation(line: 123, column: 16, scope: !5293)
!5326 = !DILocation(line: 124, column: 2, scope: !5293)
!5327 = !DILocation(line: 124, column: 6, scope: !5293)
!5328 = !DILocation(line: 127, column: 6, scope: !5308)
!5329 = !DILocation(line: 127, column: 11, scope: !5308)
!5330 = !DILocation(line: 127, column: 6, scope: !5293)
!5331 = !DILocation(line: 128, column: 3, scope: !5306)
!5332 = !DILocation(line: 128, column: 3, scope: !5311)
!5333 = !DILocation(line: 128, column: 3, scope: !5310)
!5334 = !DILocation(line: 128, column: 3, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5310, file: !2, line: 128, column: 3)
!5336 = !DILocation(line: 128, column: 3, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5310, file: !2, line: 128, column: 3)
!5338 = !{i64 2155078489, i64 2155078518, i64 2155078564, i64 2155078622, i64 2155078676, i64 2155078730, i64 2155078785, i64 2155078816, i64 2155079124, i64 2155079130, i64 2155079177, i64 2155079200, i64 2155079226}
!5339 = !DILocation(line: 128, column: 3, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5310, file: !2, line: 128, column: 3)
!5341 = !DILocation(line: 128, column: 3, scope: !5307)
!5342 = !DILocation(line: 129, column: 3, scope: !5307)
!5343 = !DILocation(line: 132, column: 26, scope: !5293)
!5344 = !DILocation(line: 132, column: 34, scope: !5293)
!5345 = !DILocation(line: 132, column: 40, scope: !5293)
!5346 = !DILocation(line: 132, column: 47, scope: !5293)
!5347 = !DILocation(line: 132, column: 8, scope: !5293)
!5348 = !DILocation(line: 132, column: 6, scope: !5293)
!5349 = !DILocation(line: 133, column: 9, scope: !5293)
!5350 = !DILocation(line: 133, column: 16, scope: !5293)
!5351 = !DILocation(line: 133, column: 7, scope: !5293)
!5352 = !DILocation(line: 135, column: 2, scope: !5293)
!5353 = !DILocation(line: 135, column: 2, scope: !5315)
!5354 = !DILocation(line: 135, column: 2, scope: !5313)
!5355 = !DILocation(line: 135, column: 2, scope: !5314)
!5356 = !DILocation(line: 136, column: 31, scope: !5293)
!5357 = !DILocation(line: 136, column: 37, scope: !5293)
!5358 = !DILocation(line: 136, column: 42, scope: !5293)
!5359 = !DILocation(line: 136, column: 8, scope: !5293)
!5360 = !DILocation(line: 136, column: 6, scope: !5293)
!5361 = !DILocation(line: 137, column: 41, scope: !5293)
!5362 = !DILocation(line: 137, column: 2, scope: !5293)
!5363 = !DILocation(line: 139, column: 9, scope: !5293)
!5364 = !DILocation(line: 139, column: 2, scope: !5293)
!5365 = !DILocation(line: 140, column: 1, scope: !5293)
!5366 = distinct !DISubprogram(name: "iosf_mbi_pci_write_mdr", scope: !2, file: !2, line: 68, type: !5367, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5369)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!121, !426, !426, !426}
!5369 = !{!5370, !5371, !5372, !5373, !5374}
!5370 = !DILocalVariable(name: "mcrx", arg: 1, scope: !5366, file: !2, line: 68, type: !426)
!5371 = !DILocalVariable(name: "mcr", arg: 2, scope: !5366, file: !2, line: 68, type: !426)
!5372 = !DILocalVariable(name: "mdr", arg: 3, scope: !5366, file: !2, line: 68, type: !426)
!5373 = !DILocalVariable(name: "result", scope: !5366, file: !2, line: 70, type: !121)
!5374 = !DILabel(scope: !5366, name: "fail_write", file: !2, line: 92)
!5375 = !DILocation(line: 68, column: 39, scope: !5366)
!5376 = !DILocation(line: 68, column: 49, scope: !5366)
!5377 = !DILocation(line: 68, column: 58, scope: !5366)
!5378 = !DILocation(line: 70, column: 2, scope: !5366)
!5379 = !DILocation(line: 70, column: 6, scope: !5366)
!5380 = !DILocation(line: 72, column: 7, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 72, column: 6)
!5382 = !DILocation(line: 72, column: 6, scope: !5366)
!5383 = !DILocation(line: 73, column: 3, scope: !5381)
!5384 = !DILocation(line: 75, column: 34, scope: !5366)
!5385 = !DILocation(line: 75, column: 60, scope: !5366)
!5386 = !DILocation(line: 75, column: 11, scope: !5366)
!5387 = !DILocation(line: 75, column: 9, scope: !5366)
!5388 = !DILocation(line: 76, column: 6, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 76, column: 6)
!5390 = !DILocation(line: 76, column: 13, scope: !5389)
!5391 = !DILocation(line: 76, column: 6, scope: !5366)
!5392 = !DILocation(line: 77, column: 3, scope: !5389)
!5393 = !DILocation(line: 79, column: 6, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 79, column: 6)
!5395 = !DILocation(line: 79, column: 6, scope: !5366)
!5396 = !DILocation(line: 80, column: 35, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5394, file: !2, line: 79, column: 12)
!5398 = !DILocation(line: 81, column: 7, scope: !5397)
!5399 = !DILocation(line: 80, column: 12, scope: !5397)
!5400 = !DILocation(line: 80, column: 10, scope: !5397)
!5401 = !DILocation(line: 82, column: 7, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 82, column: 7)
!5403 = !DILocation(line: 82, column: 14, scope: !5402)
!5404 = !DILocation(line: 82, column: 7, scope: !5397)
!5405 = !DILocation(line: 83, column: 4, scope: !5402)
!5406 = !DILocation(line: 84, column: 2, scope: !5397)
!5407 = !DILocation(line: 86, column: 34, scope: !5366)
!5408 = !DILocation(line: 86, column: 60, scope: !5366)
!5409 = !DILocation(line: 86, column: 11, scope: !5366)
!5410 = !DILocation(line: 86, column: 9, scope: !5366)
!5411 = !DILocation(line: 87, column: 6, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 87, column: 6)
!5413 = !DILocation(line: 87, column: 13, scope: !5412)
!5414 = !DILocation(line: 87, column: 6, scope: !5366)
!5415 = !DILocation(line: 88, column: 3, scope: !5412)
!5416 = !DILocation(line: 90, column: 2, scope: !5366)
!5417 = !DILocation(line: 92, column: 1, scope: !5366)
!5418 = !DILocation(line: 93, column: 2, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5366, file: !2, line: 93, column: 2)
!5420 = !DILocation(line: 93, column: 2, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 93, column: 2)
!5422 = !DILocation(line: 94, column: 30, scope: !5366)
!5423 = !DILocation(line: 94, column: 9, scope: !5366)
!5424 = !DILocation(line: 94, column: 2, scope: !5366)
!5425 = !DILocation(line: 95, column: 1, scope: !5366)
!5426 = distinct !DISubprogram(name: "iosf_mbi_modify", scope: !2, file: !2, line: 143, type: !5427, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5429)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!121, !237, !237, !426, !426, !426}
!5429 = !{!5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5444, !5447, !5451}
!5430 = !DILocalVariable(name: "port", arg: 1, scope: !5426, file: !2, line: 143, type: !237)
!5431 = !DILocalVariable(name: "opcode", arg: 2, scope: !5426, file: !2, line: 143, type: !237)
!5432 = !DILocalVariable(name: "offset", arg: 3, scope: !5426, file: !2, line: 143, type: !426)
!5433 = !DILocalVariable(name: "mdr", arg: 4, scope: !5426, file: !2, line: 143, type: !426)
!5434 = !DILocalVariable(name: "mask", arg: 5, scope: !5426, file: !2, line: 143, type: !426)
!5435 = !DILocalVariable(name: "mcr", scope: !5426, file: !2, line: 145, type: !426)
!5436 = !DILocalVariable(name: "mcrx", scope: !5426, file: !2, line: 145, type: !426)
!5437 = !DILocalVariable(name: "value", scope: !5426, file: !2, line: 146, type: !426)
!5438 = !DILocalVariable(name: "flags", scope: !5426, file: !2, line: 147, type: !174)
!5439 = !DILocalVariable(name: "ret", scope: !5426, file: !2, line: 148, type: !121)
!5440 = !DILocalVariable(name: "__ret_warn_on", scope: !5441, file: !2, line: 152, type: !121)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !2, line: 152, column: 3)
!5442 = distinct !DILexicalBlock(scope: !5443, file: !2, line: 151, column: 31)
!5443 = distinct !DILexicalBlock(scope: !5426, file: !2, line: 151, column: 6)
!5444 = !DILocalVariable(name: "__flags", scope: !5445, file: !2, line: 152, type: !121)
!5445 = distinct !DILexicalBlock(scope: !5446, file: !2, line: 152, column: 3)
!5446 = distinct !DILexicalBlock(scope: !5441, file: !2, line: 152, column: 3)
!5447 = !DILocalVariable(name: "__dummy", scope: !5448, file: !2, line: 159, type: !174)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !2, line: 159, column: 2)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !2, line: 159, column: 2)
!5450 = distinct !DILexicalBlock(scope: !5426, file: !2, line: 159, column: 2)
!5451 = !DILocalVariable(name: "__dummy2", scope: !5448, file: !2, line: 159, type: !174)
!5452 = !DILocation(line: 143, column: 24, scope: !5426)
!5453 = !DILocation(line: 143, column: 33, scope: !5426)
!5454 = !DILocation(line: 143, column: 45, scope: !5426)
!5455 = !DILocation(line: 143, column: 57, scope: !5426)
!5456 = !DILocation(line: 143, column: 66, scope: !5426)
!5457 = !DILocation(line: 145, column: 2, scope: !5426)
!5458 = !DILocation(line: 145, column: 6, scope: !5426)
!5459 = !DILocation(line: 145, column: 11, scope: !5426)
!5460 = !DILocation(line: 146, column: 2, scope: !5426)
!5461 = !DILocation(line: 146, column: 6, scope: !5426)
!5462 = !DILocation(line: 147, column: 2, scope: !5426)
!5463 = !DILocation(line: 147, column: 16, scope: !5426)
!5464 = !DILocation(line: 148, column: 2, scope: !5426)
!5465 = !DILocation(line: 148, column: 6, scope: !5426)
!5466 = !DILocation(line: 151, column: 6, scope: !5443)
!5467 = !DILocation(line: 151, column: 11, scope: !5443)
!5468 = !DILocation(line: 151, column: 6, scope: !5426)
!5469 = !DILocation(line: 152, column: 3, scope: !5441)
!5470 = !DILocation(line: 152, column: 3, scope: !5446)
!5471 = !DILocation(line: 152, column: 3, scope: !5445)
!5472 = !DILocation(line: 152, column: 3, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5445, file: !2, line: 152, column: 3)
!5474 = !DILocation(line: 152, column: 3, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5445, file: !2, line: 152, column: 3)
!5476 = !{i64 2155082072, i64 2155082101, i64 2155082147, i64 2155082205, i64 2155082259, i64 2155082313, i64 2155082368, i64 2155082399, i64 2155082707, i64 2155082713, i64 2155082760, i64 2155082783, i64 2155082809}
!5477 = !DILocation(line: 152, column: 3, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5445, file: !2, line: 152, column: 3)
!5479 = !DILocation(line: 152, column: 3, scope: !5442)
!5480 = !DILocation(line: 153, column: 3, scope: !5442)
!5481 = !DILocation(line: 156, column: 26, scope: !5426)
!5482 = !DILocation(line: 156, column: 34, scope: !5426)
!5483 = !DILocation(line: 156, column: 40, scope: !5426)
!5484 = !DILocation(line: 156, column: 47, scope: !5426)
!5485 = !DILocation(line: 156, column: 8, scope: !5426)
!5486 = !DILocation(line: 156, column: 6, scope: !5426)
!5487 = !DILocation(line: 157, column: 9, scope: !5426)
!5488 = !DILocation(line: 157, column: 16, scope: !5426)
!5489 = !DILocation(line: 157, column: 7, scope: !5426)
!5490 = !DILocation(line: 159, column: 2, scope: !5426)
!5491 = !DILocation(line: 159, column: 2, scope: !5450)
!5492 = !DILocation(line: 159, column: 2, scope: !5448)
!5493 = !DILocation(line: 159, column: 2, scope: !5449)
!5494 = !DILocation(line: 162, column: 30, scope: !5426)
!5495 = !DILocation(line: 162, column: 36, scope: !5426)
!5496 = !DILocation(line: 162, column: 40, scope: !5426)
!5497 = !DILocation(line: 162, column: 8, scope: !5426)
!5498 = !DILocation(line: 162, column: 6, scope: !5426)
!5499 = !DILocation(line: 163, column: 6, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5426, file: !2, line: 163, column: 6)
!5501 = !DILocation(line: 163, column: 10, scope: !5500)
!5502 = !DILocation(line: 163, column: 6, scope: !5426)
!5503 = !DILocation(line: 164, column: 42, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5500, file: !2, line: 163, column: 15)
!5505 = !DILocation(line: 164, column: 3, scope: !5504)
!5506 = !DILocation(line: 165, column: 10, scope: !5504)
!5507 = !DILocation(line: 165, column: 3, scope: !5504)
!5508 = !DILocation(line: 169, column: 12, scope: !5426)
!5509 = !DILocation(line: 169, column: 11, scope: !5426)
!5510 = !DILocation(line: 169, column: 8, scope: !5426)
!5511 = !DILocation(line: 170, column: 9, scope: !5426)
!5512 = !DILocation(line: 170, column: 6, scope: !5426)
!5513 = !DILocation(line: 171, column: 11, scope: !5426)
!5514 = !DILocation(line: 171, column: 8, scope: !5426)
!5515 = !DILocation(line: 174, column: 31, scope: !5426)
!5516 = !DILocation(line: 174, column: 37, scope: !5426)
!5517 = !DILocation(line: 174, column: 41, scope: !5426)
!5518 = !DILocation(line: 174, column: 56, scope: !5426)
!5519 = !DILocation(line: 174, column: 8, scope: !5426)
!5520 = !DILocation(line: 174, column: 6, scope: !5426)
!5521 = !DILocation(line: 176, column: 41, scope: !5426)
!5522 = !DILocation(line: 176, column: 2, scope: !5426)
!5523 = !DILocation(line: 178, column: 9, scope: !5426)
!5524 = !DILocation(line: 178, column: 2, scope: !5426)
!5525 = !DILocation(line: 179, column: 1, scope: !5426)
!5526 = distinct !DISubprogram(name: "iosf_mbi_available", scope: !2, file: !2, line: 182, type: !3683, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5527 = !DILocation(line: 185, column: 9, scope: !5526)
!5528 = !DILocation(line: 185, column: 2, scope: !5526)
!5529 = distinct !DISubprogram(name: "iosf_mbi_punit_acquire", scope: !2, file: !2, line: 214, type: !2569, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5530)
!5530 = !{!5531, !5546, !5547, !5551}
!5531 = !DILocalVariable(name: "__wq_entry", scope: !5532, file: !2, line: 220, type: !5535)
!5532 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 220, column: 3)
!5533 = distinct !DILexicalBlock(scope: !5534, file: !2, line: 220, column: 3)
!5534 = distinct !DILexicalBlock(scope: !5529, file: !2, line: 218, column: 46)
!5535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !759, line: 30, size: 320, elements: !5536)
!5536 = !{!5537, !5538, !5539, !5545}
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5535, file: !759, line: 31, baseType: !13, size: 32)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5535, file: !759, line: 32, baseType: !170, size: 64, offset: 64)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5535, file: !759, line: 33, baseType: !5540, size: 64, offset: 128)
!5540 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !759, line: 16, baseType: !5541)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{!121, !5544, !13, !121, !170}
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5535, size: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5535, file: !759, line: 34, baseType: !180, size: 128, offset: 192)
!5546 = !DILocalVariable(name: "__ret", scope: !5532, file: !2, line: 220, type: !171)
!5547 = !DILocalVariable(name: "__int", scope: !5548, file: !2, line: 220, type: !171)
!5548 = distinct !DILexicalBlock(scope: !5549, file: !2, line: 220, column: 3)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !2, line: 220, column: 3)
!5550 = distinct !DILexicalBlock(scope: !5532, file: !2, line: 220, column: 3)
!5551 = !DILabel(scope: !5532, name: "__out", file: !2, line: 220)
!5552 = !DILocation(line: 217, column: 2, scope: !5529)
!5553 = !DILocation(line: 218, column: 2, scope: !5529)
!5554 = !DILocation(line: 218, column: 9, scope: !5529)
!5555 = !DILocation(line: 218, column: 40, scope: !5529)
!5556 = !DILocation(line: 219, column: 3, scope: !5534)
!5557 = !DILocation(line: 220, column: 3, scope: !5534)
!5558 = !DILocation(line: 220, column: 3, scope: !5533)
!5559 = !DILocation(line: 220, column: 3, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 220, column: 3)
!5561 = !DILocation(line: 220, column: 3, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 220, column: 3)
!5563 = !DILocation(line: 220, column: 3, scope: !5532)
!5564 = !DILocation(line: 220, column: 3, scope: !5548)
!5565 = !DILocation(line: 220, column: 3, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5548, file: !2, line: 220, column: 3)
!5567 = !DILocation(line: 220, column: 3, scope: !5549)
!5568 = distinct !{!5568, !5569, !5569, !5570}
!5569 = !DILocation(line: 220, column: 3, scope: !5550)
!5570 = !{!"llvm.loop.unroll.disable"}
!5571 = !DILocation(line: 222, column: 3, scope: !5534)
!5572 = distinct !{!5572, !5553, !5573, !5574, !5570}
!5573 = !DILocation(line: 223, column: 2, scope: !5529)
!5574 = !{!"llvm.loop.mustprogress"}
!5575 = !DILocation(line: 228, column: 34, scope: !5529)
!5576 = !DILocation(line: 229, column: 2, scope: !5529)
!5577 = !DILocation(line: 230, column: 1, scope: !5529)
!5578 = !DISubprogram(name: "mutex_lock", scope: !643, file: !643, line: 227, type: !5579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{null, !5581}
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!5582 = !DISubprogram(name: "mutex_unlock", scope: !643, file: !643, line: 246, type: !5579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5583 = !DILocation(line: 112, column: 2, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5065, file: !5066, line: 112, column: 2)
!5585 = !DILocation(line: 112, column: 2, scope: !5065)
!5586 = !DILocation(line: 113, column: 1, scope: !5065)
!5587 = !DISubprogram(name: "init_wait_entry", scope: !759, file: !759, line: 290, type: !5588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{null, !5544, !121}
!5590 = !DISubprogram(name: "prepare_to_wait_event", scope: !759, file: !759, line: 1199, type: !5591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!171, !5593, !5544, !121}
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!5594 = !DISubprogram(name: "schedule", scope: !1540, file: !1540, line: 303, type: !2569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5595 = !DISubprogram(name: "finish_wait", scope: !759, file: !759, line: 1200, type: !5596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{null, !5593, !5544}
!5598 = distinct !DISubprogram(name: "iosf_mbi_punit_release", scope: !2, file: !2, line: 233, type: !2569, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5599)
!5599 = !{!5600}
!5600 = !DILocalVariable(name: "do_wakeup", scope: !5598, file: !2, line: 235, type: !889)
!5601 = !DILocation(line: 235, column: 2, scope: !5598)
!5602 = !DILocation(line: 235, column: 7, scope: !5598)
!5603 = !DILocation(line: 237, column: 2, scope: !5598)
!5604 = !DILocation(line: 238, column: 34, scope: !5598)
!5605 = !DILocation(line: 239, column: 14, scope: !5598)
!5606 = !DILocation(line: 239, column: 47, scope: !5598)
!5607 = !DILocation(line: 239, column: 12, scope: !5598)
!5608 = !DILocation(line: 240, column: 2, scope: !5598)
!5609 = !DILocation(line: 242, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 242, column: 6)
!5611 = !{i8 0, i8 2}
!5612 = !DILocation(line: 242, column: 6, scope: !5598)
!5613 = !DILocation(line: 243, column: 3, scope: !5610)
!5614 = !DILocation(line: 244, column: 1, scope: !5598)
!5615 = !DISubprogram(name: "__wake_up", scope: !759, file: !759, line: 212, type: !5616, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!121, !5593, !13, !121, !170}
!5618 = distinct !DISubprogram(name: "iosf_mbi_block_punit_i2c_access", scope: !2, file: !2, line: 312, type: !3924, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5619)
!5619 = !{!5620, !5621, !5622, !5623, !5624, !5627, !5630, !5634, !5635, !5639, !5640, !5641, !5642, !5645}
!5620 = !DILocalVariable(name: "start", scope: !5618, file: !2, line: 314, type: !174)
!5621 = !DILocalVariable(name: "end", scope: !5618, file: !2, line: 314, type: !174)
!5622 = !DILocalVariable(name: "ret", scope: !5618, file: !2, line: 315, type: !121)
!5623 = !DILocalVariable(name: "sem", scope: !5618, file: !2, line: 316, type: !426)
!5624 = !DILocalVariable(name: "__ret_warn_on", scope: !5625, file: !2, line: 318, type: !121)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !2, line: 318, column: 6)
!5626 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 318, column: 6)
!5627 = !DILocalVariable(name: "__flags", scope: !5628, file: !2, line: 318, type: !121)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !2, line: 318, column: 6)
!5629 = distinct !DILexicalBlock(scope: !5625, file: !2, line: 318, column: 6)
!5630 = !DILocalVariable(name: "__wq_entry", scope: !5631, file: !2, line: 325, type: !5535)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !2, line: 325, column: 3)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !2, line: 325, column: 3)
!5633 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 323, column: 48)
!5634 = !DILocalVariable(name: "__ret", scope: !5631, file: !2, line: 325, type: !171)
!5635 = !DILocalVariable(name: "__int", scope: !5636, file: !2, line: 325, type: !171)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !2, line: 325, column: 3)
!5637 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 325, column: 3)
!5638 = distinct !DILexicalBlock(scope: !5631, file: !2, line: 325, column: 3)
!5639 = !DILabel(scope: !5631, name: "__out", file: !2, line: 325)
!5640 = !DILabel(scope: !5618, name: "error", file: !2, line: 368)
!5641 = !DILabel(scope: !5618, name: "success", file: !2, line: 372)
!5642 = !DILocalVariable(name: "__ret_warn_on", scope: !5643, file: !2, line: 373, type: !121)
!5643 = distinct !DILexicalBlock(scope: !5644, file: !2, line: 373, column: 7)
!5644 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 373, column: 6)
!5645 = !DILocalVariable(name: "__flags", scope: !5646, file: !2, line: 373, type: !121)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !2, line: 373, column: 7)
!5647 = distinct !DILexicalBlock(scope: !5643, file: !2, line: 373, column: 7)
!5648 = !DILocation(line: 314, column: 2, scope: !5618)
!5649 = !DILocation(line: 314, column: 16, scope: !5618)
!5650 = !DILocation(line: 314, column: 23, scope: !5618)
!5651 = !DILocation(line: 315, column: 2, scope: !5618)
!5652 = !DILocation(line: 315, column: 6, scope: !5618)
!5653 = !DILocation(line: 316, column: 2, scope: !5618)
!5654 = !DILocation(line: 316, column: 6, scope: !5618)
!5655 = !DILocation(line: 318, column: 6, scope: !5625)
!5656 = !DILocation(line: 318, column: 6, scope: !5629)
!5657 = !DILocation(line: 318, column: 6, scope: !5628)
!5658 = !DILocation(line: 318, column: 6, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 318, column: 6)
!5660 = !DILocation(line: 318, column: 6, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 318, column: 6)
!5662 = !{i64 2155097398, i64 2155097427, i64 2155097473, i64 2155097531, i64 2155097585, i64 2155097639, i64 2155097694, i64 2155097725, i64 2155098033, i64 2155098039, i64 2155098086, i64 2155098109, i64 2155098135}
!5663 = !DILocation(line: 318, column: 6, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5628, file: !2, line: 318, column: 6)
!5665 = !DILocation(line: 318, column: 6, scope: !5626)
!5666 = !DILocation(line: 318, column: 6, scope: !5618)
!5667 = !DILocation(line: 319, column: 3, scope: !5626)
!5668 = !DILocation(line: 321, column: 2, scope: !5618)
!5669 = !DILocation(line: 323, column: 2, scope: !5618)
!5670 = !DILocation(line: 323, column: 9, scope: !5618)
!5671 = !DILocation(line: 323, column: 42, scope: !5618)
!5672 = !DILocation(line: 324, column: 3, scope: !5633)
!5673 = !DILocation(line: 325, column: 3, scope: !5633)
!5674 = !DILocation(line: 325, column: 3, scope: !5632)
!5675 = !DILocation(line: 325, column: 3, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5632, file: !2, line: 325, column: 3)
!5677 = !DILocation(line: 325, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5632, file: !2, line: 325, column: 3)
!5679 = !DILocation(line: 325, column: 3, scope: !5631)
!5680 = !DILocation(line: 325, column: 3, scope: !5636)
!5681 = !DILocation(line: 325, column: 3, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5636, file: !2, line: 325, column: 3)
!5683 = !DILocation(line: 325, column: 3, scope: !5637)
!5684 = distinct !{!5684, !5685, !5685, !5570}
!5685 = !DILocation(line: 325, column: 3, scope: !5638)
!5686 = !DILocation(line: 327, column: 3, scope: !5633)
!5687 = distinct !{!5687, !5669, !5688, !5574, !5570}
!5688 = !DILocation(line: 328, column: 2, scope: !5618)
!5689 = !DILocation(line: 330, column: 6, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 330, column: 6)
!5691 = !DILocation(line: 330, column: 37, scope: !5690)
!5692 = !DILocation(line: 330, column: 6, scope: !5618)
!5693 = !DILocation(line: 331, column: 3, scope: !5690)
!5694 = !DILocation(line: 333, column: 2, scope: !5618)
!5695 = !DILocation(line: 341, column: 2, scope: !5618)
!5696 = !DILocation(line: 345, column: 9, scope: !5618)
!5697 = !DILocation(line: 344, column: 8, scope: !5618)
!5698 = !DILocation(line: 344, column: 6, scope: !5618)
!5699 = !DILocation(line: 346, column: 6, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 346, column: 6)
!5701 = !DILocation(line: 346, column: 6, scope: !5618)
!5702 = !DILocation(line: 347, column: 3, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5704, file: !2, line: 347, column: 3)
!5704 = distinct !DILexicalBlock(scope: !5700, file: !2, line: 346, column: 11)
!5705 = !DILocation(line: 347, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5703, file: !2, line: 347, column: 3)
!5707 = !DILocation(line: 348, column: 3, scope: !5704)
!5708 = !DILocation(line: 352, column: 10, scope: !5618)
!5709 = !DILocation(line: 352, column: 8, scope: !5618)
!5710 = !DILocation(line: 353, column: 8, scope: !5618)
!5711 = !DILocation(line: 353, column: 16, scope: !5618)
!5712 = !DILocation(line: 353, column: 14, scope: !5618)
!5713 = !DILocation(line: 353, column: 6, scope: !5618)
!5714 = !DILocation(line: 354, column: 2, scope: !5618)
!5715 = !DILocation(line: 355, column: 9, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 354, column: 5)
!5717 = !DILocation(line: 355, column: 7, scope: !5716)
!5718 = !DILocation(line: 356, column: 8, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5716, file: !2, line: 356, column: 7)
!5720 = !DILocation(line: 356, column: 12, scope: !5719)
!5721 = !DILocation(line: 356, column: 15, scope: !5719)
!5722 = !DILocation(line: 356, column: 7, scope: !5716)
!5723 = !DILocation(line: 357, column: 28, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5719, file: !2, line: 356, column: 20)
!5725 = !DILocation(line: 357, column: 26, scope: !5724)
!5726 = !DILocation(line: 360, column: 4, scope: !5724)
!5727 = !DILocation(line: 363, column: 3, scope: !5716)
!5728 = !DILocation(line: 364, column: 2, scope: !5716)
!5729 = !DILocation(line: 364, column: 11, scope: !5618)
!5730 = distinct !{!5730, !5714, !5731, !5574, !5570}
!5731 = !DILocation(line: 364, column: 36, scope: !5618)
!5732 = !DILocation(line: 366, column: 6, scope: !5618)
!5733 = !DILocation(line: 367, column: 2, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 367, column: 2)
!5735 = !DILocation(line: 367, column: 2, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5734, file: !2, line: 367, column: 2)
!5737 = !DILocation(line: 367, column: 2, scope: !5618)
!5738 = !DILocation(line: 368, column: 1, scope: !5618)
!5739 = !DILocation(line: 369, column: 2, scope: !5618)
!5740 = !DILocation(line: 370, column: 7, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5618, file: !2, line: 370, column: 6)
!5742 = !DILocation(line: 370, column: 6, scope: !5618)
!5743 = !DILocation(line: 371, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5741, file: !2, line: 371, column: 3)
!5745 = !DILocation(line: 371, column: 3, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5744, file: !2, line: 371, column: 3)
!5747 = !DILocation(line: 371, column: 3, scope: !5741)
!5748 = !DILocation(line: 370, column: 28, scope: !5741)
!5749 = !DILocation(line: 372, column: 1, scope: !5618)
!5750 = !DILocation(line: 373, column: 7, scope: !5643)
!5751 = !DILocation(line: 373, column: 7, scope: !5647)
!5752 = !DILocation(line: 373, column: 7, scope: !5646)
!5753 = !DILocation(line: 373, column: 7, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 373, column: 7)
!5755 = !DILocation(line: 373, column: 7, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 373, column: 7)
!5757 = !{i64 2155102957, i64 2155102986, i64 2155103032, i64 2155103090, i64 2155103144, i64 2155103198, i64 2155103253, i64 2155103284, i64 2155103592, i64 2155103598, i64 2155103645, i64 2155103668, i64 2155103694}
!5758 = !DILocation(line: 373, column: 7, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 373, column: 7)
!5760 = !DILocation(line: 373, column: 7, scope: !5644)
!5761 = !DILocation(line: 373, column: 6, scope: !5618)
!5762 = !DILocation(line: 374, column: 33, scope: !5644)
!5763 = !DILocation(line: 374, column: 3, scope: !5644)
!5764 = !DILocation(line: 376, column: 2, scope: !5618)
!5765 = !DILocation(line: 378, column: 9, scope: !5618)
!5766 = !DILocation(line: 378, column: 2, scope: !5618)
!5767 = !DILocation(line: 379, column: 1, scope: !5618)
!5768 = !DISubprogram(name: "blocking_notifier_call_chain", scope: !4545, file: !4545, line: 171, type: !5769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!121, !4543, !174, !170}
!5771 = !DISubprogram(name: "cpu_latency_qos_update_request", scope: !12, file: !12, line: 150, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !5774, !815}
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5775 = !DISubprogram(name: "_dev_err", scope: !5776, file: !5776, line: 50, type: !5777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5776 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5777 = !DISubroutineType(types: !5778)
!5778 = !{null, !4302, !198, null}
!5779 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !5780, file: !5780, line: 515, type: !5781, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5783)
!5780 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!174, !3440}
!5783 = !{!5784}
!5784 = !DILocalVariable(name: "m", arg: 1, scope: !5779, file: !5780, line: 515, type: !3440)
!5785 = !DILocation(line: 515, column: 74, scope: !5779)
!5786 = !DILocation(line: 517, column: 27, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5779, file: !5780, line: 517, column: 6)
!5788 = !DILocation(line: 517, column: 6, scope: !5787)
!5789 = !DILocation(line: 517, column: 6, scope: !5779)
!5790 = !DILocation(line: 518, column: 12, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5792, file: !5780, line: 518, column: 7)
!5792 = distinct !DILexicalBlock(scope: !5787, file: !5780, line: 517, column: 31)
!5793 = !DILocation(line: 518, column: 14, scope: !5791)
!5794 = !DILocation(line: 518, column: 7, scope: !5792)
!5795 = !DILocation(line: 519, column: 4, scope: !5791)
!5796 = !DILocation(line: 520, column: 28, scope: !5792)
!5797 = !DILocation(line: 520, column: 10, scope: !5792)
!5798 = !DILocation(line: 520, column: 3, scope: !5792)
!5799 = !DILocation(line: 522, column: 29, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5787, file: !5780, line: 521, column: 9)
!5801 = !DILocation(line: 522, column: 10, scope: !5800)
!5802 = !DILocation(line: 522, column: 3, scope: !5800)
!5803 = !DILocation(line: 524, column: 1, scope: !5779)
!5804 = distinct !DISubprogram(name: "iosf_mbi_get_sem", scope: !2, file: !2, line: 247, type: !5805, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5807)
!5805 = !DISubroutineType(types: !5806)
!5806 = !{!121, !2272}
!5807 = !{!5808, !5809}
!5808 = !DILocalVariable(name: "sem", arg: 1, scope: !5804, file: !2, line: 247, type: !2272)
!5809 = !DILocalVariable(name: "ret", scope: !5804, file: !2, line: 249, type: !121)
!5810 = !DILocation(line: 247, column: 34, scope: !5804)
!5811 = !DILocation(line: 249, column: 2, scope: !5804)
!5812 = !DILocation(line: 249, column: 6, scope: !5804)
!5813 = !DILocation(line: 252, column: 8, scope: !5804)
!5814 = !DILocation(line: 252, column: 30, scope: !5804)
!5815 = !DILocation(line: 251, column: 8, scope: !5804)
!5816 = !DILocation(line: 251, column: 6, scope: !5804)
!5817 = !DILocation(line: 253, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5804, file: !2, line: 253, column: 6)
!5819 = !DILocation(line: 253, column: 6, scope: !5804)
!5820 = !DILocation(line: 254, column: 3, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5822, file: !2, line: 254, column: 3)
!5822 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 253, column: 11)
!5823 = !DILocation(line: 254, column: 3, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5821, file: !2, line: 254, column: 3)
!5825 = !DILocation(line: 255, column: 10, scope: !5822)
!5826 = !DILocation(line: 255, column: 3, scope: !5822)
!5827 = !DILocation(line: 258, column: 3, scope: !5804)
!5828 = !DILocation(line: 258, column: 7, scope: !5804)
!5829 = !DILocation(line: 259, column: 2, scope: !5804)
!5830 = !DILocation(line: 260, column: 1, scope: !5804)
!5831 = distinct !DISubprogram(name: "usleep_range", scope: !5832, file: !5832, line: 66, type: !5833, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5835)
!5832 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!5833 = !DISubroutineType(types: !5834)
!5834 = !{null, !174, !174}
!5835 = !{!5836, !5837}
!5836 = !DILocalVariable(name: "min", arg: 1, scope: !5831, file: !5832, line: 66, type: !174)
!5837 = !DILocalVariable(name: "max", arg: 2, scope: !5831, file: !5832, line: 66, type: !174)
!5838 = !DILocation(line: 66, column: 47, scope: !5831)
!5839 = !DILocation(line: 66, column: 66, scope: !5831)
!5840 = !DILocation(line: 68, column: 21, scope: !5831)
!5841 = !DILocation(line: 68, column: 26, scope: !5831)
!5842 = !DILocation(line: 68, column: 2, scope: !5831)
!5843 = !DILocation(line: 69, column: 1, scope: !5831)
!5844 = distinct !DISubprogram(name: "iosf_mbi_reset_semaphore", scope: !2, file: !2, line: 262, type: !2569, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5845 = !DILocation(line: 265, column: 8, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5844, file: !2, line: 264, column: 6)
!5847 = !DILocation(line: 264, column: 6, scope: !5846)
!5848 = !DILocation(line: 264, column: 6, scope: !5844)
!5849 = !DILocation(line: 266, column: 3, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5846, file: !2, line: 266, column: 3)
!5851 = !DILocation(line: 266, column: 3, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5850, file: !2, line: 266, column: 3)
!5853 = !DILocation(line: 266, column: 3, scope: !5846)
!5854 = !DILocation(line: 268, column: 2, scope: !5844)
!5855 = !DILocation(line: 270, column: 2, scope: !5844)
!5856 = !DILocation(line: 272, column: 1, scope: !5844)
!5857 = distinct !DISubprogram(name: "iosf_mbi_unblock_punit_i2c_access", scope: !2, file: !2, line: 382, type: !2569, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5858)
!5858 = !{!5859}
!5859 = !DILocalVariable(name: "do_wakeup", scope: !5857, file: !2, line: 384, type: !889)
!5860 = !DILocation(line: 384, column: 2, scope: !5857)
!5861 = !DILocation(line: 384, column: 7, scope: !5857)
!5862 = !DILocation(line: 386, column: 2, scope: !5857)
!5863 = !DILocation(line: 387, column: 32, scope: !5857)
!5864 = !DILocation(line: 388, column: 6, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5857, file: !2, line: 388, column: 6)
!5866 = !DILocation(line: 388, column: 37, scope: !5865)
!5867 = !DILocation(line: 388, column: 6, scope: !5857)
!5868 = !DILocation(line: 389, column: 3, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5865, file: !2, line: 388, column: 43)
!5870 = !DILocation(line: 392, column: 13, scope: !5869)
!5871 = !DILocation(line: 393, column: 2, scope: !5869)
!5872 = !DILocation(line: 394, column: 2, scope: !5857)
!5873 = !DILocation(line: 396, column: 6, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5857, file: !2, line: 396, column: 6)
!5875 = !DILocation(line: 396, column: 6, scope: !5857)
!5876 = !DILocation(line: 397, column: 3, scope: !5874)
!5877 = !DILocation(line: 398, column: 1, scope: !5857)
!5878 = distinct !DISubprogram(name: "iosf_mbi_register_pmic_bus_access_notifier", scope: !2, file: !2, line: 401, type: !5879, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5881)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!121, !4549}
!5881 = !{!5882, !5883}
!5882 = !DILocalVariable(name: "nb", arg: 1, scope: !5878, file: !2, line: 401, type: !4549)
!5883 = !DILocalVariable(name: "ret", scope: !5878, file: !2, line: 403, type: !121)
!5884 = !DILocation(line: 401, column: 71, scope: !5878)
!5885 = !DILocation(line: 403, column: 2, scope: !5878)
!5886 = !DILocation(line: 403, column: 6, scope: !5878)
!5887 = !DILocation(line: 406, column: 2, scope: !5878)
!5888 = !DILocation(line: 408, column: 41, scope: !5878)
!5889 = !DILocation(line: 407, column: 8, scope: !5878)
!5890 = !DILocation(line: 407, column: 6, scope: !5878)
!5891 = !DILocation(line: 409, column: 2, scope: !5878)
!5892 = !DILocation(line: 411, column: 9, scope: !5878)
!5893 = !DILocation(line: 412, column: 1, scope: !5878)
!5894 = !DILocation(line: 411, column: 2, scope: !5878)
!5895 = !DISubprogram(name: "blocking_notifier_chain_register", scope: !4545, file: !4545, line: 148, type: !5896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!121, !4543, !4549}
!5898 = distinct !DISubprogram(name: "iosf_mbi_unregister_pmic_bus_access_notifier_unlocked", scope: !2, file: !2, line: 415, type: !5879, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5899)
!5899 = !{!5900}
!5900 = !DILocalVariable(name: "nb", arg: 1, scope: !5898, file: !2, line: 416, type: !4549)
!5901 = !DILocation(line: 416, column: 25, scope: !5898)
!5902 = !DILocation(line: 418, column: 2, scope: !5898)
!5903 = !DILocation(line: 421, column: 41, scope: !5898)
!5904 = !DILocation(line: 420, column: 9, scope: !5898)
!5905 = !DILocation(line: 420, column: 2, scope: !5898)
!5906 = distinct !DISubprogram(name: "iosf_mbi_assert_punit_acquired", scope: !2, file: !2, line: 438, type: !2569, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5907)
!5907 = !{!5908, !5910}
!5908 = !DILocalVariable(name: "__ret_warn_on", scope: !5909, file: !2, line: 440, type: !121)
!5909 = distinct !DILexicalBlock(scope: !5906, file: !2, line: 440, column: 2)
!5910 = !DILocalVariable(name: "__flags", scope: !5911, file: !2, line: 440, type: !121)
!5911 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 440, column: 2)
!5912 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 440, column: 2)
!5913 = !DILocation(line: 440, column: 2, scope: !5909)
!5914 = !DILocation(line: 440, column: 2, scope: !5912)
!5915 = !DILocation(line: 440, column: 2, scope: !5911)
!5916 = !DILocation(line: 440, column: 2, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5911, file: !2, line: 440, column: 2)
!5918 = !DILocation(line: 440, column: 2, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5911, file: !2, line: 440, column: 2)
!5920 = !{i64 2155121170, i64 2155121199, i64 2155121245, i64 2155121303, i64 2155121357, i64 2155121411, i64 2155121466, i64 2155121497, i64 2155121805, i64 2155121811, i64 2155121858, i64 2155121881, i64 2155121907}
!5921 = !DILocation(line: 440, column: 2, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5911, file: !2, line: 440, column: 2)
!5923 = !DILocation(line: 440, column: 2, scope: !5906)
!5924 = !DILocation(line: 441, column: 1, scope: !5906)
!5925 = !DISubprogram(name: "blocking_notifier_chain_unregister", scope: !4545, file: !4545, line: 162, type: !5896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5926 = distinct !DISubprogram(name: "iosf_mbi_unregister_pmic_bus_access_notifier", scope: !2, file: !2, line: 425, type: !5879, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5927)
!5927 = !{!5928, !5929}
!5928 = !DILocalVariable(name: "nb", arg: 1, scope: !5926, file: !2, line: 425, type: !4549)
!5929 = !DILocalVariable(name: "ret", scope: !5926, file: !2, line: 427, type: !121)
!5930 = !DILocation(line: 425, column: 73, scope: !5926)
!5931 = !DILocation(line: 427, column: 2, scope: !5926)
!5932 = !DILocation(line: 427, column: 6, scope: !5926)
!5933 = !DILocation(line: 430, column: 2, scope: !5926)
!5934 = !DILocation(line: 431, column: 62, scope: !5926)
!5935 = !DILocation(line: 431, column: 8, scope: !5926)
!5936 = !DILocation(line: 431, column: 6, scope: !5926)
!5937 = !DILocation(line: 432, column: 2, scope: !5926)
!5938 = !DILocation(line: 434, column: 9, scope: !5926)
!5939 = !DILocation(line: 435, column: 1, scope: !5926)
!5940 = !DILocation(line: 434, column: 2, scope: !5926)
!5941 = distinct !DISubprogram(name: "iosf_mbi_exit", scope: !2, file: !2, line: 555, type: !2569, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5942 = !DILocation(line: 557, column: 2, scope: !5941)
!5943 = !DILocation(line: 559, column: 2, scope: !5941)
!5944 = !DILocation(line: 560, column: 14, scope: !5941)
!5945 = !DILocation(line: 560, column: 2, scope: !5941)
!5946 = !DILocation(line: 561, column: 11, scope: !5941)
!5947 = !DILocation(line: 563, column: 2, scope: !5941)
!5948 = !DILocation(line: 564, column: 1, scope: !5941)
!5949 = distinct !DISubprogram(name: "iosf_debugfs_remove", scope: !2, file: !2, line: 511, type: !2569, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5950 = !DILocation(line: 511, column: 48, scope: !5949)
!5951 = !DISubprogram(name: "pci_unregister_driver", scope: !4211, file: !4211, line: 1564, type: !5952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5952 = !DISubroutineType(types: !5953)
!5953 = !{null, !4852}
!5954 = !DISubprogram(name: "pci_dev_put", scope: !4211, file: !4211, line: 1148, type: !4876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5955 = !DISubprogram(name: "cpu_latency_qos_remove_request", scope: !12, file: !12, line: 151, type: !5956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = !DISubroutineType(types: !5957)
!5957 = !{null, !5774}
!5958 = distinct !DISubprogram(name: "__initstub__kmod_iosf_mbi__304_566_iosf_mbi_init6", scope: !2, file: !2, line: 566, type: !3924, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5959 = !DILocation(line: 566, column: 1, scope: !5958)
!5960 = distinct !DISubprogram(name: "iosf_mbi_init", scope: !2, file: !2, line: 546, type: !3924, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5961 = !DILocation(line: 548, column: 2, scope: !5960)
!5962 = !DILocation(line: 550, column: 2, scope: !5960)
!5963 = !DILocation(line: 552, column: 9, scope: !5960)
!5964 = !DILocation(line: 552, column: 2, scope: !5960)
!5965 = !DISubprogram(name: "pci_write_config_dword", scope: !4211, file: !4211, line: 1218, type: !5966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5966 = !DISubroutineType(types: !5967)
!5967 = !{!121, !5968, !121, !426}
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!5970 = !DISubprogram(name: "pci_read_config_dword", scope: !4211, file: !4211, line: 1215, type: !5971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!121, !5968, !121, !2272}
!5973 = distinct !DISubprogram(name: "pcibios_err_to_errno", scope: !4211, file: !4211, line: 748, type: !1584, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5974)
!5974 = !{!5975}
!5975 = !DILocalVariable(name: "err", arg: 1, scope: !5973, file: !4211, line: 748, type: !121)
!5976 = !DILocation(line: 748, column: 44, scope: !5973)
!5977 = !DILocation(line: 750, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5973, file: !4211, line: 750, column: 6)
!5979 = !DILocation(line: 750, column: 10, scope: !5978)
!5980 = !DILocation(line: 750, column: 6, scope: !5973)
!5981 = !DILocation(line: 751, column: 10, scope: !5978)
!5982 = !DILocation(line: 751, column: 3, scope: !5978)
!5983 = !DILocation(line: 753, column: 10, scope: !5973)
!5984 = !DILocation(line: 753, column: 2, scope: !5973)
!5985 = !DILocation(line: 755, column: 3, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5973, file: !4211, line: 753, column: 15)
!5987 = !DILocation(line: 757, column: 3, scope: !5986)
!5988 = !DILocation(line: 759, column: 3, scope: !5986)
!5989 = !DILocation(line: 761, column: 3, scope: !5986)
!5990 = !DILocation(line: 763, column: 3, scope: !5986)
!5991 = !DILocation(line: 765, column: 3, scope: !5986)
!5992 = !DILocation(line: 768, column: 2, scope: !5973)
!5993 = !DILocation(line: 769, column: 1, scope: !5973)
!5994 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5203, file: !5203, line: 43, type: !5995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5995 = !DISubroutineType(types: !5996)
!5996 = !{null, !5206, !174}
!5997 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !5780, file: !5780, line: 458, type: !5781, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5998)
!5998 = !{!5999}
!5999 = !DILocalVariable(name: "m", arg: 1, scope: !5997, file: !5780, line: 458, type: !3440)
!6000 = !DILocation(line: 458, column: 66, scope: !5997)
!6001 = !DILocation(line: 460, column: 10, scope: !5997)
!6002 = !DILocation(line: 460, column: 12, scope: !5997)
!6003 = !DILocation(line: 460, column: 34, scope: !5997)
!6004 = !DILocation(line: 460, column: 39, scope: !5997)
!6005 = !DILocation(line: 460, column: 2, scope: !5997)
!6006 = !DISubprogram(name: "__msecs_to_jiffies", scope: !5780, file: !5780, line: 451, type: !5781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6007 = !DISubprogram(name: "usleep_range_state", scope: !5832, file: !5832, line: 63, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !174, !174, !13}
!6010 = distinct !DISubprogram(name: "iosf_mbi_probe", scope: !2, file: !2, line: 514, type: !4872, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6011)
!6011 = !{!6012, !6013, !6014}
!6012 = !DILocalVariable(name: "pdev", arg: 1, scope: !6010, file: !2, line: 514, type: !4209)
!6013 = !DILocalVariable(name: "dev_id", arg: 2, scope: !6010, file: !2, line: 515, type: !4858)
!6014 = !DILocalVariable(name: "ret", scope: !6010, file: !2, line: 517, type: !121)
!6015 = !DILocation(line: 514, column: 43, scope: !6010)
!6016 = !DILocation(line: 515, column: 34, scope: !6010)
!6017 = !DILocation(line: 517, column: 2, scope: !6010)
!6018 = !DILocation(line: 517, column: 6, scope: !6010)
!6019 = !DILocation(line: 519, column: 26, scope: !6010)
!6020 = !DILocation(line: 519, column: 8, scope: !6010)
!6021 = !DILocation(line: 519, column: 6, scope: !6010)
!6022 = !DILocation(line: 520, column: 6, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 520, column: 6)
!6024 = !DILocation(line: 520, column: 10, scope: !6023)
!6025 = !DILocation(line: 520, column: 6, scope: !6010)
!6026 = !DILocation(line: 521, column: 3, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6028, file: !2, line: 521, column: 3)
!6028 = distinct !DILexicalBlock(scope: !6023, file: !2, line: 520, column: 15)
!6029 = !DILocation(line: 521, column: 3, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 521, column: 3)
!6031 = !DILocation(line: 522, column: 10, scope: !6028)
!6032 = !DILocation(line: 522, column: 3, scope: !6028)
!6033 = !DILocation(line: 525, column: 25, scope: !6010)
!6034 = !DILocation(line: 525, column: 13, scope: !6010)
!6035 = !DILocation(line: 525, column: 11, scope: !6010)
!6036 = !DILocation(line: 526, column: 25, scope: !6010)
!6037 = !DILocation(line: 526, column: 33, scope: !6010)
!6038 = !DILocation(line: 526, column: 23, scope: !6010)
!6039 = !DILocation(line: 528, column: 2, scope: !6010)
!6040 = !DILocation(line: 529, column: 1, scope: !6010)
!6041 = !DISubprogram(name: "pci_enable_device", scope: !4211, file: !4211, line: 1290, type: !4884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6042 = !DISubprogram(name: "pci_dev_get", scope: !4211, file: !4211, line: 1147, type: !6043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6043 = !DISubroutineType(types: !6044)
!6044 = !{!4209, !4209}
!6045 = distinct !DISubprogram(name: "iosf_debugfs_init", scope: !2, file: !2, line: 510, type: !2569, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6046 = !DILocation(line: 510, column: 46, scope: !6045)
!6047 = !DISubprogram(name: "cpu_latency_qos_add_request", scope: !12, file: !12, line: 149, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6048 = !DISubprogram(name: "__pci_register_driver", scope: !4211, file: !4211, line: 1557, type: !6049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!121, !4852, !175, !198}
