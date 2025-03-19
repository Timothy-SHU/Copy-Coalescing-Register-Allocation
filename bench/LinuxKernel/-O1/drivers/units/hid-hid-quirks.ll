; ModuleID = 'drivers/hid/hid-quirks.c'
source_filename = "drivers/hid/hid-quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hid_ignore: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hid_ignore ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hid_quirks_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hid_quirks_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hid_quirks_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hid_quirks_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hid_lookup_quirk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hid_lookup_quirk ; .previous"

%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.hid_device_id = type { i16, i16, i32, i32, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.kref, i32, %struct.hid_bpf }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hid_bpf = type { ptr, i32, [2 x ptr], i8, %struct.spinlock }
%struct.quirks_list_struct = type { %struct.hid_device_id, %struct.list_head }

@.str = private unnamed_addr constant [27 x i8] c"HOLTEK  B-LINK USB Audio  \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"www.masterkit.ru MA901\00", align 1, !dbg !7
@elan_acpi_id = internal constant [53 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"ELAN0000\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0100\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0600\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0601\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0602\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0603\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0604\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0605\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0606\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0607\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0608\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0609\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN060B\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN060C\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN060F\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0610\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0611\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0612\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0615\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0616\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0617\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0618\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0619\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN061A\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN061C\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN061D\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN061E\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN061F\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0620\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0621\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0622\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0623\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0624\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0625\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0626\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0627\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0628\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0629\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN062A\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN062B\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN062C\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN062D\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN062E\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN062F\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0631\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0632\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0633\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0634\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0635\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0636\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN0637\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"ELAN1000\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !12
@hid_mouse_ignore_list = internal constant [64 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 634, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 635, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 636, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 637, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 638, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 639, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 640, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 832, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i64 0 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !329
@hid_ignore_list = internal constant [154 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1120, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1120, i32 8, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1761, i32 41301, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 16, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 32, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 33, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 34, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 35, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 36, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5834, i32 5378, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1423, i32 38688, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5926, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5979, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1994, i32 47104, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4815, i32 28945, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3224, i32 4416, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5751, i32 259, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33162, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33348, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3468, i32 14, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 21760, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 29719, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4293, i32 33178, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 512, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3455, i32 256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 777, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 774, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 127, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 206, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 244, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2417, i32 8197, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1040, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1194, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 25210, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 144, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 257, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 259, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 260, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 261, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 262, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 263, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 264, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 512, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 513, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 514, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 515, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 516, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 517, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 518, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 519, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 768, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 769, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 770, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 771, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 772, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 773, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 774, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 775, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 776, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 777, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1024, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1025, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1026, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1027, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1028, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1029, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1280, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1281, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1282, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1283, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1284, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4096, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4097, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4098, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4099, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4100, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4101, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4102, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4103, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1816, i32 53248, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2830, i32 37712, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2126, i32 4097, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7040, i32 55040, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20483, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1112, i32 88, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4096, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4097, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4112, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4113, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4128, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4129, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4145, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4146, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4147, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4149, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4152, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4160, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4162, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4163, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4224, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4225, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4240, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4272, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4352, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4353, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4608, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4624, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8192, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8208, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8224, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8240, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8272, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8273, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8288, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8304, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8320, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8336, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8352, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 17728, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 118, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 122, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 50, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 51, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 66, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 62199, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1024, i32 50009, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 100, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 120, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 130, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 200, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 208, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 218, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 300, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 400, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 500, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 600, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 3, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8482, i32 4660, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1137, i32 1559, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3487, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6109, i32 21760, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 27027, i32 45057, i64 0 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !335
@__UNIQUE_ID___addressable_hid_ignore332 = internal global ptr @hid_ignore, section ".discard.addressable", align 8, !dbg !311
@.str.2 = private unnamed_addr constant [17 x i8] c"0x%hx:0x%hx:0x%x\00", align 1, !dbg !313
@.str.3 = private unnamed_addr constant [45 x i8] c"\014Could not parse HID quirk module param %s\0A\00", align 1, !dbg !318
@__UNIQUE_ID___addressable_hid_quirks_init333 = internal global ptr @hid_quirks_init, section ".discard.addressable", align 8, !dbg !323
@__UNIQUE_ID___addressable_hid_quirks_exit334 = internal global ptr @hid_quirks_exit, section ".discard.addressable", align 8, !dbg !325
@dquirks_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dquirks_lock, i64 16), ptr getelementptr (i8, ptr @dquirks_lock, i64 16) } }, align 8, !dbg !347
@__UNIQUE_ID___addressable_hid_lookup_quirk335 = internal global ptr @hid_lookup_quirk, section ".discard.addressable", align 8, !dbg !327
@dquirks_list = internal global %struct.list_head { ptr @dquirks_list, ptr @dquirks_list }, align 8, !dbg !345
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !340
@hid_have_special_driver = internal constant [209 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 2522, i32 6, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 10, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 26, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 555, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 772, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 541, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 542, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 543, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 544, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 545, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 546, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 556, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 557, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 558, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 591, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 592, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 593, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 634, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 635, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 636, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 637, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 638, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 639, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 640, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 832, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 569, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 570, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 571, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 597, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 598, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 599, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 615, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 668, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 666, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33026, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 33538, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1293, i32 12801, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4128, i32 6, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1130, i32 35, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1130, i32 39, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1048, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4387, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4389, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 5153, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56929, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56932, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 48289, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 60801, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1304, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 3, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 8, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1149, i32 8257, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50451, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50444, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49409, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50948, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49930, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50450, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49685, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49686, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49812, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49674, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49681, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49689, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49743, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49795, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49678, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49811, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49798, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49799, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49813, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51715, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51716, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49816, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49818, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49817, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49819, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49820, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49688, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50723, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50726, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1900, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 227, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 59, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 219, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 220, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1821, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 249, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1811, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1840, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 157, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 72, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 180, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1872, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1842, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 1793, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1382, i32 12292, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 3, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 6, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 7, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 8, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 9, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 10, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 11, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 12, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 13, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 14, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 15, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 16, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 17, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 18, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 19, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 20, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 3, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3888, i32 273, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6321, i32 55, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1049, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1049, i32 1536, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1133, i32 774, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 774, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 872, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1545, i32 873, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 4096, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 981, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 981, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 1071, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 1071, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 774, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 616, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 616, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 1476, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 1476, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2508, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1356, i32 2508, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 2976, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 587, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1356, i32 884, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4933, i32 12296, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1276, i32 1496, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1134, i32 21880, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1134, i32 21879, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1894, i32 516, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6020, i32 4, i64 0 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !369
@hid_quirks = internal constant [183 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1750, i32 37, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1750, i32 38, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 5540, i32 36886, i64 268435456 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 2, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 2536, i32 49, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 8209, i32 1813, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1075, i32 4353, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1131, i32 65296, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 591, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8708, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8712, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8709, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8706, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8736, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8723, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 32801, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8196, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 45469, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4179, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 2361, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1534, i32 20, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 211, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 28, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 244, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 243, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 81, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 255, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 242, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 241, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6935, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6969, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6931, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6968, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6921, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6929, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6930, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6964, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6974, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6933, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 1054, i32 12844, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 16700, i32 12314, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 16700, i32 17667, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 3083, i32 24491, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 2, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 3, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6147, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6211, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6214, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6145, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6144, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3823, i32 1, i64 72 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 -1, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 32, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 8198, i32 280, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 10600, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 6, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5242, i32 57406, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5538, i32 79, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1351, i32 28672, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12304, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12307, i64 64 }, %struct.hid_device_id { i16 5, i16 0, i32 10232, i32 3006, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 10232, i32 3007, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 16, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 48, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 32, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41110, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41619, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2634, i64 1024 }, %struct.hid_device_id { i16 5, i16 0, i32 1008, i32 17994, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2890, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 4938, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2378, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2369, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 1601, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 8010, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 7350, i32 26240, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 4754, i32 18245, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 311, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20485, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20495, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20496, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20497, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20498, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20499, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20500, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20501, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20502, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20503, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20505, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20506, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20507, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 4128, i32 34952, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24590, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24717, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24601, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24622, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24723, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49159, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49271, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49741, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49178, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49242, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49258, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 5840, i32 3020, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1923, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 203, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2014, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1945, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1959, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1961, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 33410, i32 12801, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 6000, i32 65280, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6017, i32 2717, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 2231, i32 1, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1854, i32 769, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 6256, i32 272, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6438, i32 3, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1539, i32 5634, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5376, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i64 65600 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5648, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5696, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1523, i32 255, i64 128 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32770, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32771, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32769, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 9488, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19746, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20010, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19727, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19813, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20002, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1455, i32 12386, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12289, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12291, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12296, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 3034, i32 338, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 3, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 241, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 65303, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1884, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 597, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1890, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 2922, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 39, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 35, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5013, i32 44, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 7247, i32 2, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1647, i32 14208, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4144, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 2071, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 37376, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4115, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1072, i32 52651, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 2048, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 4864, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2755, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2808, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 7440, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 6851, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 22288, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 10265, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 28193, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1635, i32 259, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 7165, i32 5768, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34946, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34947, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1578, i32 513, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 24577, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 100, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8569, i32 4, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1281, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1280, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1282, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 26231, i32 34818, i64 72 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34816, i64 72 }, %struct.hid_device_id { i16 3, i16 0, i32 5824, i32 1505, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 2178, i64 8 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !374
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_hid_ignore332, ptr @__UNIQUE_ID___addressable_hid_quirks_init333, ptr @__UNIQUE_ID___addressable_hid_quirks_exit334, ptr @__UNIQUE_ID___addressable_hid_lookup_quirk335], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @hid_ignore(ptr noundef %hdev) #0 align 16 !dbg !402 {
entry:
  %retval = alloca i1, align 1
  %hdev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !5758, metadata !DIExpression()), !dbg !5760
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5761
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5759, metadata !DIExpression()), !dbg !5762
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !5763
  %quirks = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 26, !dbg !5765
  %1 = load i32, ptr %quirks, align 4, !dbg !5765
  %conv = zext i32 %1 to i64, !dbg !5763
  %and = and i64 %conv, 1073741824, !dbg !5766
  %tobool = icmp ne i64 %and, 0, !dbg !5766
  br i1 %tobool, label %if.then, label %if.end, !dbg !5767

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5768

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %hdev.addr, align 8, !dbg !5769
  %quirks1 = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 26, !dbg !5771
  %3 = load i32, ptr %quirks1, align 4, !dbg !5771
  %conv2 = zext i32 %3 to i64, !dbg !5769
  %and3 = and i64 %conv2, 4, !dbg !5772
  %tobool4 = icmp ne i64 %and3, 0, !dbg !5772
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5773

if.then5:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5774

if.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %hdev.addr, align 8, !dbg !5775
  %vendor = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 10, !dbg !5776
  %5 = load i32, ptr %vendor, align 8, !dbg !5776
  switch i32 %5, label %sw.epilog [
    i32 1984, label %sw.bb
    i32 1133, label %sw.bb13
    i32 5570, label %sw.bb30
    i32 2903, label %sw.bb40
    i32 3141, label %sw.bb50
    i32 4303, label %sw.bb59
    i32 5824, label %sw.bb76
    i32 1267, label %sw.bb92
  ], !dbg !5777

sw.bb:                                            ; preds = %if.end6
  %6 = load ptr, ptr %hdev.addr, align 8, !dbg !5778
  %product = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 11, !dbg !5781
  %7 = load i32, ptr %product, align 4, !dbg !5781
  %cmp = icmp uge i32 %7, 5376, !dbg !5782
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !5783

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load ptr, ptr %hdev.addr, align 8, !dbg !5784
  %product8 = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 11, !dbg !5785
  %9 = load i32, ptr %product8, align 4, !dbg !5785
  %cmp9 = icmp ule i32 %9, 5631, !dbg !5786
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5787

if.then11:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !5788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5788

if.end12:                                         ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !5789

sw.bb13:                                          ; preds = %if.end6
  %10 = load ptr, ptr %hdev.addr, align 8, !dbg !5790
  %product14 = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 11, !dbg !5792
  %11 = load i32, ptr %product14, align 4, !dbg !5792
  %cmp15 = icmp uge i32 %11, 49424, !dbg !5793
  br i1 %cmp15, label %land.lhs.true17, label %if.end22, !dbg !5794

land.lhs.true17:                                  ; preds = %sw.bb13
  %12 = load ptr, ptr %hdev.addr, align 8, !dbg !5795
  %product18 = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 11, !dbg !5796
  %13 = load i32, ptr %product18, align 4, !dbg !5796
  %cmp19 = icmp ule i32 %13, 49487, !dbg !5797
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5798

if.then21:                                        ; preds = %land.lhs.true17
  store i1 true, ptr %retval, align 1, !dbg !5799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5799

if.end22:                                         ; preds = %land.lhs.true17, %sw.bb13
  %14 = load ptr, ptr %hdev.addr, align 8, !dbg !5800
  %product23 = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 11, !dbg !5802
  %15 = load i32, ptr %product23, align 4, !dbg !5802
  %cmp24 = icmp eq i32 %15, 2574, !dbg !5803
  br i1 %cmp24, label %land.lhs.true26, label %if.end29, !dbg !5804

land.lhs.true26:                                  ; preds = %if.end22
  %16 = load ptr, ptr %hdev.addr, align 8, !dbg !5805
  %name = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 32, !dbg !5806
  %arraydecay = getelementptr inbounds [128 x i8], ptr %name, i64 0, i64 0, !dbg !5805
  %call = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef @.str) #16, !dbg !5807
  %tobool27 = icmp ne i32 %call, 0, !dbg !5807
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !5808

if.then28:                                        ; preds = %land.lhs.true26
  store i1 true, ptr %retval, align 1, !dbg !5809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5809

if.end29:                                         ; preds = %land.lhs.true26, %if.end22
  br label %sw.epilog, !dbg !5810

sw.bb30:                                          ; preds = %if.end6
  %17 = load ptr, ptr %hdev.addr, align 8, !dbg !5811
  %product31 = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 11, !dbg !5813
  %18 = load i32, ptr %product31, align 4, !dbg !5813
  %cmp32 = icmp uge i32 %18, 52, !dbg !5814
  br i1 %cmp32, label %land.lhs.true34, label %if.end39, !dbg !5815

land.lhs.true34:                                  ; preds = %sw.bb30
  %19 = load ptr, ptr %hdev.addr, align 8, !dbg !5816
  %product35 = getelementptr inbounds %struct.hid_device, ptr %19, i32 0, i32 11, !dbg !5817
  %20 = load i32, ptr %product35, align 4, !dbg !5817
  %cmp36 = icmp ule i32 %20, 70, !dbg !5818
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !5819

if.then38:                                        ; preds = %land.lhs.true34
  store i1 true, ptr %retval, align 1, !dbg !5820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5820

if.end39:                                         ; preds = %land.lhs.true34, %sw.bb30
  br label %sw.epilog, !dbg !5821

sw.bb40:                                          ; preds = %if.end6
  %21 = load ptr, ptr %hdev.addr, align 8, !dbg !5822
  %product41 = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 11, !dbg !5824
  %22 = load i32, ptr %product41, align 4, !dbg !5824
  %cmp42 = icmp uge i32 %22, 20480, !dbg !5825
  br i1 %cmp42, label %land.lhs.true44, label %if.end49, !dbg !5826

land.lhs.true44:                                  ; preds = %sw.bb40
  %23 = load ptr, ptr %hdev.addr, align 8, !dbg !5827
  %product45 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 11, !dbg !5828
  %24 = load i32, ptr %product45, align 4, !dbg !5828
  %cmp46 = icmp ule i32 %24, 36863, !dbg !5829
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !5830

if.then48:                                        ; preds = %land.lhs.true44
  store i1 true, ptr %retval, align 1, !dbg !5831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5831

if.end49:                                         ; preds = %land.lhs.true44, %sw.bb40
  br label %sw.epilog, !dbg !5832

sw.bb50:                                          ; preds = %if.end6
  %25 = load ptr, ptr %hdev.addr, align 8, !dbg !5833
  %product51 = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 11, !dbg !5835
  %26 = load i32, ptr %product51, align 4, !dbg !5835
  %cmp52 = icmp eq i32 %26, 4112, !dbg !5836
  br i1 %cmp52, label %land.lhs.true54, label %if.end58, !dbg !5837

land.lhs.true54:                                  ; preds = %sw.bb50
  %27 = load ptr, ptr %hdev.addr, align 8, !dbg !5838
  %type = getelementptr inbounds %struct.hid_device, ptr %27, i32 0, i32 13, !dbg !5839
  %28 = load i32, ptr %type, align 4, !dbg !5839
  %cmp55 = icmp eq i32 %28, 2, !dbg !5840
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !5841

if.then57:                                        ; preds = %land.lhs.true54
  store i1 true, ptr %retval, align 1, !dbg !5842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842

if.end58:                                         ; preds = %land.lhs.true54, %sw.bb50
  br label %sw.epilog, !dbg !5843

sw.bb59:                                          ; preds = %if.end6
  %29 = load ptr, ptr %hdev.addr, align 8, !dbg !5844
  %product60 = getelementptr inbounds %struct.hid_device, ptr %29, i32 0, i32 11, !dbg !5846
  %30 = load i32, ptr %product60, align 4, !dbg !5846
  %cmp61 = icmp uge i32 %30, 21760, !dbg !5847
  br i1 %cmp61, label %land.lhs.true63, label %lor.lhs.false, !dbg !5848

land.lhs.true63:                                  ; preds = %sw.bb59
  %31 = load ptr, ptr %hdev.addr, align 8, !dbg !5849
  %product64 = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 11, !dbg !5850
  %32 = load i32, ptr %product64, align 4, !dbg !5850
  %cmp65 = icmp ule i32 %32, 21763, !dbg !5851
  br i1 %cmp65, label %if.then74, label %lor.lhs.false, !dbg !5852

lor.lhs.false:                                    ; preds = %land.lhs.true63, %sw.bb59
  %33 = load ptr, ptr %hdev.addr, align 8, !dbg !5853
  %product67 = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 11, !dbg !5854
  %34 = load i32, ptr %product67, align 4, !dbg !5854
  %cmp68 = icmp uge i32 %34, 32865, !dbg !5855
  br i1 %cmp68, label %land.lhs.true70, label %if.end75, !dbg !5856

land.lhs.true70:                                  ; preds = %lor.lhs.false
  %35 = load ptr, ptr %hdev.addr, align 8, !dbg !5857
  %product71 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 11, !dbg !5858
  %36 = load i32, ptr %product71, align 4, !dbg !5858
  %cmp72 = icmp ule i32 %36, 32872, !dbg !5859
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !5860

if.then74:                                        ; preds = %land.lhs.true70, %land.lhs.true63
  store i1 true, ptr %retval, align 1, !dbg !5861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5861

if.end75:                                         ; preds = %land.lhs.true70, %lor.lhs.false
  br label %sw.epilog, !dbg !5862

sw.bb76:                                          ; preds = %if.end6
  %37 = load ptr, ptr %hdev.addr, align 8, !dbg !5863
  %product77 = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 11, !dbg !5865
  %38 = load i32, ptr %product77, align 4, !dbg !5865
  %cmp78 = icmp eq i32 %38, 1503, !dbg !5866
  br i1 %cmp78, label %land.lhs.true80, label %if.end91, !dbg !5867

land.lhs.true80:                                  ; preds = %sw.bb76
  %39 = load ptr, ptr %hdev.addr, align 8, !dbg !5868
  %bus = getelementptr inbounds %struct.hid_device, ptr %39, i32 0, i32 8, !dbg !5869
  %40 = load i16, ptr %bus, align 4, !dbg !5869
  %conv81 = zext i16 %40 to i32, !dbg !5868
  %cmp82 = icmp eq i32 %conv81, 3, !dbg !5870
  br i1 %cmp82, label %land.lhs.true84, label %if.end91, !dbg !5871

land.lhs.true84:                                  ; preds = %land.lhs.true80
  %41 = load ptr, ptr %hdev.addr, align 8, !dbg !5872
  %name85 = getelementptr inbounds %struct.hid_device, ptr %41, i32 0, i32 32, !dbg !5873
  %arraydecay86 = getelementptr inbounds [128 x i8], ptr %name85, i64 0, i64 0, !dbg !5872
  %call87 = call i32 @strncmp(ptr noundef %arraydecay86, ptr noundef @.str.1, i64 noundef 22) #16, !dbg !5874
  %cmp88 = icmp eq i32 %call87, 0, !dbg !5875
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !5876

if.then90:                                        ; preds = %land.lhs.true84
  store i1 true, ptr %retval, align 1, !dbg !5877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5877

if.end91:                                         ; preds = %land.lhs.true84, %land.lhs.true80, %sw.bb76
  br label %sw.epilog, !dbg !5878

sw.bb92:                                          ; preds = %if.end6
  %42 = load ptr, ptr %hdev.addr, align 8, !dbg !5879
  %product93 = getelementptr inbounds %struct.hid_device, ptr %42, i32 0, i32 11, !dbg !5881
  %43 = load i32, ptr %product93, align 4, !dbg !5881
  %cmp94 = icmp eq i32 %43, 1025, !dbg !5882
  br i1 %cmp94, label %if.then100, label %lor.lhs.false96, !dbg !5883

lor.lhs.false96:                                  ; preds = %sw.bb92
  %44 = load ptr, ptr %hdev.addr, align 8, !dbg !5884
  %product97 = getelementptr inbounds %struct.hid_device, ptr %44, i32 0, i32 11, !dbg !5885
  %45 = load i32, ptr %product97, align 4, !dbg !5885
  %cmp98 = icmp eq i32 %45, 1024, !dbg !5886
  br i1 %cmp98, label %if.then100, label %if.end119, !dbg !5887

if.then100:                                       ; preds = %lor.lhs.false96, %sw.bb92
  store i32 0, ptr %i, align 4, !dbg !5888
  br label %for.cond, !dbg !5890

for.cond:                                         ; preds = %for.inc, %if.then100
  %46 = load i32, ptr %i, align 4, !dbg !5891
  %idxprom = sext i32 %46 to i64, !dbg !5893
  %arrayidx = getelementptr [53 x %struct.acpi_device_id], ptr @elan_acpi_id, i64 0, i64 %idxprom, !dbg !5893
  %id = getelementptr inbounds %struct.acpi_device_id, ptr %arrayidx, i32 0, i32 0, !dbg !5894
  %arraydecay101 = getelementptr inbounds [16 x i8], ptr %id, i64 0, i64 0, !dbg !5893
  %call102 = call i64 @strlen(ptr noundef %arraydecay101) #16, !dbg !5895
  %tobool103 = icmp ne i64 %call102, 0, !dbg !5896
  br i1 %tobool103, label %for.body, label %for.end, !dbg !5896

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %hdev.addr, align 8, !dbg !5897
  %name104 = getelementptr inbounds %struct.hid_device, ptr %47, i32 0, i32 32, !dbg !5899
  %arraydecay105 = getelementptr inbounds [128 x i8], ptr %name104, i64 0, i64 0, !dbg !5897
  %48 = load i32, ptr %i, align 4, !dbg !5900
  %idxprom106 = sext i32 %48 to i64, !dbg !5901
  %arrayidx107 = getelementptr [53 x %struct.acpi_device_id], ptr @elan_acpi_id, i64 0, i64 %idxprom106, !dbg !5901
  %id108 = getelementptr inbounds %struct.acpi_device_id, ptr %arrayidx107, i32 0, i32 0, !dbg !5902
  %arraydecay109 = getelementptr inbounds [16 x i8], ptr %id108, i64 0, i64 0, !dbg !5901
  %49 = load i32, ptr %i, align 4, !dbg !5903
  %idxprom110 = sext i32 %49 to i64, !dbg !5904
  %arrayidx111 = getelementptr [53 x %struct.acpi_device_id], ptr @elan_acpi_id, i64 0, i64 %idxprom110, !dbg !5904
  %id112 = getelementptr inbounds %struct.acpi_device_id, ptr %arrayidx111, i32 0, i32 0, !dbg !5905
  %arraydecay113 = getelementptr inbounds [16 x i8], ptr %id112, i64 0, i64 0, !dbg !5904
  %call114 = call i64 @strlen(ptr noundef %arraydecay113) #16, !dbg !5906
  %call115 = call i32 @strncmp(ptr noundef %arraydecay105, ptr noundef %arraydecay109, i64 noundef %call114) #16, !dbg !5907
  %tobool116 = icmp ne i32 %call115, 0, !dbg !5907
  br i1 %tobool116, label %if.end118, label %if.then117, !dbg !5908

if.then117:                                       ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !5909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5909

if.end118:                                        ; preds = %for.body
  br label %for.inc, !dbg !5910

for.inc:                                          ; preds = %if.end118
  %50 = load i32, ptr %i, align 4, !dbg !5911
  %inc = add i32 %50, 1, !dbg !5911
  store i32 %inc, ptr %i, align 4, !dbg !5911
  br label %for.cond, !dbg !5912, !llvm.loop !5913

for.end:                                          ; preds = %for.cond
  br label %if.end119, !dbg !5914

if.end119:                                        ; preds = %for.end, %lor.lhs.false96
  br label %sw.epilog, !dbg !5917

sw.epilog:                                        ; preds = %if.end6, %if.end119, %if.end91, %if.end75, %if.end58, %if.end49, %if.end39, %if.end29, %if.end12
  %51 = load ptr, ptr %hdev.addr, align 8, !dbg !5918
  %type120 = getelementptr inbounds %struct.hid_device, ptr %51, i32 0, i32 13, !dbg !5920
  %52 = load i32, ptr %type120, align 4, !dbg !5920
  %cmp121 = icmp eq i32 %52, 1, !dbg !5921
  br i1 %cmp121, label %land.lhs.true123, label %if.end127, !dbg !5922

land.lhs.true123:                                 ; preds = %sw.epilog
  %53 = load ptr, ptr %hdev.addr, align 8, !dbg !5923
  %call124 = call ptr @hid_match_id(ptr noundef %53, ptr noundef @hid_mouse_ignore_list) #16, !dbg !5924
  %tobool125 = icmp ne ptr %call124, null, !dbg !5924
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !5925

if.then126:                                       ; preds = %land.lhs.true123
  store i1 true, ptr %retval, align 1, !dbg !5926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5926

if.end127:                                        ; preds = %land.lhs.true123, %sw.epilog
  %54 = load ptr, ptr %hdev.addr, align 8, !dbg !5927
  %call128 = call ptr @hid_match_id(ptr noundef %54, ptr noundef @hid_ignore_list) #16, !dbg !5928
  %tobool129 = icmp ne ptr %call128, null, !dbg !5929
  %lnot = xor i1 %tobool129, true, !dbg !5929
  %lnot130 = xor i1 %lnot, true, !dbg !5930
  store i1 %lnot130, ptr %retval, align 1, !dbg !5931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5931

cleanup:                                          ; preds = %if.end127, %if.then126, %if.then117, %if.then90, %if.then74, %if.then57, %if.then48, %if.then38, %if.then28, %if.then21, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5932
  %55 = load i1, ptr %retval, align 1, !dbg !5932
  ret i1 %55, !dbg !5932
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5933 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5937 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5940 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5943 dso_local ptr @hid_match_id(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hid_quirks_init(ptr noundef %quirks_param, i16 noundef zeroext %bus, i32 noundef %count) #0 align 16 !dbg !5948 {
entry:
  %quirks_param.addr = alloca ptr, align 8
  %bus.addr = alloca i16, align 2
  %count.addr = alloca i32, align 4
  %id = alloca %struct.hid_device_id, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %vendor = alloca i16, align 2
  %product = alloca i16, align 2
  %quirks = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %quirks_param, ptr %quirks_param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %quirks_param.addr, metadata !5953, metadata !DIExpression()), !dbg !5962
  store i16 %bus, ptr %bus.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5954, metadata !DIExpression()), !dbg !5963
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5955, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 24, ptr %id) #15, !dbg !5965
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5956, metadata !DIExpression()), !dbg !5966
  call void @llvm.memset.p0.i64(ptr align 8 %id, i8 0, i64 24, i1 false), !dbg !5966
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #15, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5957, metadata !DIExpression()), !dbg !5968
  store i32 0, ptr %n, align 4, !dbg !5968
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #15, !dbg !5967
  call void @llvm.dbg.declare(metadata ptr %m, metadata !5958, metadata !DIExpression()), !dbg !5969
  call void @llvm.lifetime.start.p0(i64 2, ptr %vendor) #15, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !5959, metadata !DIExpression()), !dbg !5971
  call void @llvm.lifetime.start.p0(i64 2, ptr %product) #15, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %product, metadata !5960, metadata !DIExpression()), !dbg !5972
  call void @llvm.lifetime.start.p0(i64 4, ptr %quirks) #15, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %quirks, metadata !5961, metadata !DIExpression()), !dbg !5974
  %0 = load i16, ptr %bus.addr, align 2, !dbg !5975
  %bus1 = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 0, !dbg !5976
  store i16 %0, ptr %bus1, align 8, !dbg !5977
  br label %for.cond, !dbg !5978

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %n, align 4, !dbg !5979
  %2 = load i32, ptr %count.addr, align 4, !dbg !5982
  %cmp = icmp slt i32 %1, %2, !dbg !5983
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5984

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %quirks_param.addr, align 8, !dbg !5985
  %4 = load i32, ptr %n, align 4, !dbg !5986
  %idxprom = sext i32 %4 to i64, !dbg !5985
  %arrayidx = getelementptr ptr, ptr %3, i64 %idxprom, !dbg !5985
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5985
  %tobool = icmp ne ptr %5, null, !dbg !5984
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !5987
  br i1 %6, label %for.body, label %for.end, !dbg !5988

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %quirks_param.addr, align 8, !dbg !5989
  %8 = load i32, ptr %n, align 4, !dbg !5991
  %idxprom2 = sext i32 %8 to i64, !dbg !5989
  %arrayidx3 = getelementptr ptr, ptr %7, i64 %idxprom2, !dbg !5989
  %9 = load ptr, ptr %arrayidx3, align 8, !dbg !5989
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %9, ptr noundef @.str.2, ptr noundef %vendor, ptr noundef %product, ptr noundef %quirks) #16, !dbg !5992
  store i32 %call, ptr %m, align 4, !dbg !5993
  %10 = load i16, ptr %vendor, align 2, !dbg !5994
  %conv = zext i16 %10 to i32, !dbg !5995
  %vendor4 = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 2, !dbg !5996
  store i32 %conv, ptr %vendor4, align 4, !dbg !5997
  %11 = load i16, ptr %product, align 2, !dbg !5998
  %conv5 = zext i16 %11 to i32, !dbg !5999
  %product6 = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 3, !dbg !6000
  store i32 %conv5, ptr %product6, align 8, !dbg !6001
  %12 = load i32, ptr %m, align 4, !dbg !6002
  %cmp7 = icmp ne i32 %12, 3, !dbg !6004
  br i1 %cmp7, label %if.then, label %lor.lhs.false, !dbg !6005

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, ptr %quirks, align 4, !dbg !6006
  %conv9 = zext i32 %13 to i64, !dbg !6006
  %call10 = call i32 @hid_modify_dquirk(ptr noundef %id, i64 noundef %conv9) #16, !dbg !6007
  %cmp11 = icmp ne i32 %call10, 0, !dbg !6008
  br i1 %cmp11, label %if.then, label %if.end, !dbg !6009

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %do.body, !dbg !6010

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6013

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6013

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %quirks_param.addr, align 8, !dbg !6010
  %15 = load i32, ptr %n, align 4, !dbg !6010
  %idxprom13 = sext i32 %15 to i64, !dbg !6010
  %arrayidx14 = getelementptr ptr, ptr %14, i64 %idxprom13, !dbg !6010
  %16 = load ptr, ptr %arrayidx14, align 8, !dbg !6010
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %16) #17, !dbg !6010
  store i32 %call15, ptr %tmp, align 4, !dbg !6013
  %17 = load i32, ptr %tmp, align 4, !dbg !6010
  br label %if.end, !dbg !6015

if.end:                                           ; preds = %do.end, %lor.lhs.false
  br label %for.inc, !dbg !6016

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %n, align 4, !dbg !6017
  %inc = add i32 %18, 1, !dbg !6017
  store i32 %inc, ptr %n, align 4, !dbg !6017
  br label %for.cond, !dbg !6018, !llvm.loop !6019

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %quirks) #15, !dbg !6021
  call void @llvm.lifetime.end.p0(i64 2, ptr %product) #15, !dbg !6021
  call void @llvm.lifetime.end.p0(i64 2, ptr %vendor) #15, !dbg !6021
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #15, !dbg !6021
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #15, !dbg !6021
  call void @llvm.lifetime.end.p0(i64 24, ptr %id) #15, !dbg !6021
  ret i32 0, !dbg !6022
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6023 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hid_modify_dquirk(ptr noundef %id, i64 noundef %quirks) #0 align 16 !dbg !6027 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %quirks.addr = alloca i64, align 8
  %hdev = alloca ptr, align 8
  %q_new = alloca ptr, align 8
  %q = alloca ptr, align 8
  %list_edited = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr23 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6031, metadata !DIExpression()), !dbg !6045
  store i64 %quirks, ptr %quirks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %quirks.addr, metadata !6032, metadata !DIExpression()), !dbg !6046
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdev) #15, !dbg !6047
  call void @llvm.dbg.declare(metadata ptr %hdev, metadata !6033, metadata !DIExpression()), !dbg !6048
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_new) #15, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %q_new, metadata !6034, metadata !DIExpression()), !dbg !6050
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6049
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6035, metadata !DIExpression()), !dbg !6051
  call void @llvm.lifetime.start.p0(i64 4, ptr %list_edited) #15, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %list_edited, metadata !6036, metadata !DIExpression()), !dbg !6053
  store i32 0, ptr %list_edited, align 4, !dbg !6053
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6037, metadata !DIExpression()), !dbg !6055
  store i32 0, ptr %ret, align 4, !dbg !6055
  %call = call noalias ptr @kzalloc(i64 noundef 7632, i32 noundef 3264) #18, !dbg !6056
  store ptr %call, ptr %hdev, align 8, !dbg !6057
  %0 = load ptr, ptr %hdev, align 8, !dbg !6058
  %tobool = icmp ne ptr %0, null, !dbg !6058
  br i1 %tobool, label %if.end, label %if.then, !dbg !6060

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef 3264) #18, !dbg !6062
  store ptr %call1, ptr %q_new, align 8, !dbg !6063
  %1 = load ptr, ptr %q_new, align 8, !dbg !6064
  %tobool2 = icmp ne ptr %1, null, !dbg !6064
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6066

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %ret, align 4, !dbg !6067
  br label %out, !dbg !6069

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %id.addr, align 8, !dbg !6070
  %bus = getelementptr inbounds %struct.hid_device_id, ptr %2, i32 0, i32 0, !dbg !6071
  %3 = load i16, ptr %bus, align 8, !dbg !6071
  %4 = load ptr, ptr %q_new, align 8, !dbg !6072
  %hid_bl_item = getelementptr inbounds %struct.quirks_list_struct, ptr %4, i32 0, i32 0, !dbg !6073
  %bus5 = getelementptr inbounds %struct.hid_device_id, ptr %hid_bl_item, i32 0, i32 0, !dbg !6074
  store i16 %3, ptr %bus5, align 8, !dbg !6075
  %5 = load ptr, ptr %hdev, align 8, !dbg !6076
  %bus6 = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 8, !dbg !6077
  store i16 %3, ptr %bus6, align 4, !dbg !6078
  %6 = load ptr, ptr %id.addr, align 8, !dbg !6079
  %group = getelementptr inbounds %struct.hid_device_id, ptr %6, i32 0, i32 1, !dbg !6080
  %7 = load i16, ptr %group, align 2, !dbg !6080
  %8 = load ptr, ptr %q_new, align 8, !dbg !6081
  %hid_bl_item7 = getelementptr inbounds %struct.quirks_list_struct, ptr %8, i32 0, i32 0, !dbg !6082
  %group8 = getelementptr inbounds %struct.hid_device_id, ptr %hid_bl_item7, i32 0, i32 1, !dbg !6083
  store i16 %7, ptr %group8, align 2, !dbg !6084
  %9 = load ptr, ptr %hdev, align 8, !dbg !6085
  %group9 = getelementptr inbounds %struct.hid_device, ptr %9, i32 0, i32 9, !dbg !6086
  store i16 %7, ptr %group9, align 2, !dbg !6087
  %10 = load ptr, ptr %id.addr, align 8, !dbg !6088
  %vendor = getelementptr inbounds %struct.hid_device_id, ptr %10, i32 0, i32 2, !dbg !6089
  %11 = load i32, ptr %vendor, align 4, !dbg !6089
  %12 = load ptr, ptr %q_new, align 8, !dbg !6090
  %hid_bl_item10 = getelementptr inbounds %struct.quirks_list_struct, ptr %12, i32 0, i32 0, !dbg !6091
  %vendor11 = getelementptr inbounds %struct.hid_device_id, ptr %hid_bl_item10, i32 0, i32 2, !dbg !6092
  store i32 %11, ptr %vendor11, align 4, !dbg !6093
  %13 = load ptr, ptr %hdev, align 8, !dbg !6094
  %vendor12 = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 10, !dbg !6095
  store i32 %11, ptr %vendor12, align 8, !dbg !6096
  %14 = load ptr, ptr %id.addr, align 8, !dbg !6097
  %product = getelementptr inbounds %struct.hid_device_id, ptr %14, i32 0, i32 3, !dbg !6098
  %15 = load i32, ptr %product, align 8, !dbg !6098
  %16 = load ptr, ptr %q_new, align 8, !dbg !6099
  %hid_bl_item13 = getelementptr inbounds %struct.quirks_list_struct, ptr %16, i32 0, i32 0, !dbg !6100
  %product14 = getelementptr inbounds %struct.hid_device_id, ptr %hid_bl_item13, i32 0, i32 3, !dbg !6101
  store i32 %15, ptr %product14, align 8, !dbg !6102
  %17 = load ptr, ptr %hdev, align 8, !dbg !6103
  %product15 = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 11, !dbg !6104
  store i32 %15, ptr %product15, align 4, !dbg !6105
  %18 = load i64, ptr %quirks.addr, align 8, !dbg !6106
  %19 = load ptr, ptr %q_new, align 8, !dbg !6107
  %hid_bl_item16 = getelementptr inbounds %struct.quirks_list_struct, ptr %19, i32 0, i32 0, !dbg !6108
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %hid_bl_item16, i32 0, i32 4, !dbg !6109
  store i64 %18, ptr %driver_data, align 8, !dbg !6110
  call void @mutex_lock(ptr noundef @dquirks_lock) #16, !dbg !6111
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6038, metadata !DIExpression()), !dbg !6112
  %20 = load ptr, ptr @dquirks_list, align 8, !dbg !6112
  store ptr %20, ptr %__mptr, align 8, !dbg !6112
  %21 = load ptr, ptr %__mptr, align 8, !dbg !6112
  %add.ptr = getelementptr i8, ptr %21, i64 -24, !dbg !6112
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6113
  %22 = load ptr, ptr %tmp, align 8, !dbg !6112
  store ptr %22, ptr %q, align 8, !dbg !6113
  br label %for.cond, !dbg !6113

for.cond:                                         ; preds = %for.inc, %if.end4
  %23 = load ptr, ptr %q, align 8, !dbg !6114
  %node = getelementptr inbounds %struct.quirks_list_struct, ptr %23, i32 0, i32 1, !dbg !6114
  %cmp = icmp eq ptr %node, @dquirks_list, !dbg !6114
  %lnot = xor i1 %cmp, true, !dbg !6114
  br i1 %lnot, label %for.body, label %for.end, !dbg !6113

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %hdev, align 8, !dbg !6115
  %25 = load ptr, ptr %q, align 8, !dbg !6118
  %hid_bl_item17 = getelementptr inbounds %struct.quirks_list_struct, ptr %25, i32 0, i32 0, !dbg !6119
  %call18 = call zeroext i1 @hid_match_one_id(ptr noundef %24, ptr noundef %hid_bl_item17) #16, !dbg !6120
  br i1 %call18, label %if.then19, label %if.end22, !dbg !6121

if.then19:                                        ; preds = %for.body
  %26 = load ptr, ptr %q, align 8, !dbg !6122
  %node20 = getelementptr inbounds %struct.quirks_list_struct, ptr %26, i32 0, i32 1, !dbg !6124
  %27 = load ptr, ptr %q_new, align 8, !dbg !6125
  %node21 = getelementptr inbounds %struct.quirks_list_struct, ptr %27, i32 0, i32 1, !dbg !6126
  call void @list_replace(ptr noundef %node20, ptr noundef %node21) #16, !dbg !6127
  %28 = load ptr, ptr %q, align 8, !dbg !6128
  call void @kfree(ptr noundef %28) #16, !dbg !6129
  store i32 1, ptr %list_edited, align 4, !dbg !6130
  br label %for.end, !dbg !6131

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !6132

for.inc:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr23) #15, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %__mptr23, metadata !6041, metadata !DIExpression()), !dbg !6133
  %29 = load ptr, ptr %q, align 8, !dbg !6133
  %node24 = getelementptr inbounds %struct.quirks_list_struct, ptr %29, i32 0, i32 1, !dbg !6133
  %next = getelementptr inbounds %struct.list_head, ptr %node24, i32 0, i32 0, !dbg !6133
  %30 = load ptr, ptr %next, align 8, !dbg !6133
  store ptr %30, ptr %__mptr23, align 8, !dbg !6133
  %31 = load ptr, ptr %__mptr23, align 8, !dbg !6133
  %add.ptr26 = getelementptr i8, ptr %31, i64 -24, !dbg !6133
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !6133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr23) #15, !dbg !6114
  %32 = load ptr, ptr %tmp25, align 8, !dbg !6133
  store ptr %32, ptr %q, align 8, !dbg !6114
  br label %for.cond, !dbg !6114, !llvm.loop !6134

for.end:                                          ; preds = %if.then19, %for.cond
  %33 = load i32, ptr %list_edited, align 4, !dbg !6136
  %tobool27 = icmp ne i32 %33, 0, !dbg !6136
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !6138

if.then28:                                        ; preds = %for.end
  %34 = load ptr, ptr %q_new, align 8, !dbg !6139
  %node29 = getelementptr inbounds %struct.quirks_list_struct, ptr %34, i32 0, i32 1, !dbg !6140
  call void @list_add_tail(ptr noundef %node29, ptr noundef @dquirks_list) #16, !dbg !6141
  br label %if.end30, !dbg !6141

if.end30:                                         ; preds = %if.then28, %for.end
  call void @mutex_unlock(ptr noundef @dquirks_lock) #16, !dbg !6142
  br label %out, !dbg !6142

out:                                              ; preds = %if.end30, %if.then3
  call void @llvm.dbg.label(metadata !6044), !dbg !6143
  %35 = load ptr, ptr %hdev, align 8, !dbg !6144
  call void @kfree(ptr noundef %35) #16, !dbg !6145
  %36 = load i32, ptr %ret, align 4, !dbg !6146
  store i32 %36, ptr %retval, align 4, !dbg !6147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6147

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 4, ptr %list_edited) #15, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_new) #15, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdev) #15, !dbg !6148
  %37 = load i32, ptr %retval, align 4, !dbg !6148
  ret i32 %37, !dbg !6148
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6149 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hid_quirks_exit(i16 noundef zeroext %bus) #0 align 16 !dbg !6153 {
entry:
  %bus.addr = alloca i16, align 2
  store i16 %bus, ptr %bus.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  %0 = load i16, ptr %bus.addr, align 2, !dbg !6159
  call void @hid_remove_all_dquirks(i16 noundef zeroext %0) #16, !dbg !6160
  ret void, !dbg !6161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hid_remove_all_dquirks(i16 noundef zeroext %bus) #0 align 16 !dbg !6162 {
entry:
  %bus.addr = alloca i16, align 2
  %q = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store i16 %bus, ptr %bus.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6164, metadata !DIExpression()), !dbg !6175
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6176
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6165, metadata !DIExpression()), !dbg !6177
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15, !dbg !6176
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !6166, metadata !DIExpression()), !dbg !6178
  call void @mutex_lock(ptr noundef @dquirks_lock) #16, !dbg !6179
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6180
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6167, metadata !DIExpression()), !dbg !6180
  %0 = load ptr, ptr @dquirks_list, align 8, !dbg !6180
  store ptr %0, ptr %__mptr, align 8, !dbg !6180
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6180
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !6180
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6181
  %2 = load ptr, ptr %tmp, align 8, !dbg !6180
  store ptr %2, ptr %q, align 8, !dbg !6181
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !6182
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6170, metadata !DIExpression()), !dbg !6182
  %3 = load ptr, ptr %q, align 8, !dbg !6182
  %node = getelementptr inbounds %struct.quirks_list_struct, ptr %3, i32 0, i32 1, !dbg !6182
  %next = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !6182
  %4 = load ptr, ptr %next, align 8, !dbg !6182
  store ptr %4, ptr %__mptr1, align 8, !dbg !6182
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !6182
  %add.ptr3 = getelementptr i8, ptr %5, i64 -24, !dbg !6182
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !6181
  %6 = load ptr, ptr %tmp2, align 8, !dbg !6182
  store ptr %6, ptr %temp, align 8, !dbg !6181
  br label %for.cond, !dbg !6181

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %q, align 8, !dbg !6183
  %node4 = getelementptr inbounds %struct.quirks_list_struct, ptr %7, i32 0, i32 1, !dbg !6183
  %cmp = icmp eq ptr %node4, @dquirks_list, !dbg !6183
  %lnot = xor i1 %cmp, true, !dbg !6183
  br i1 %lnot, label %for.body, label %for.end, !dbg !6181

for.body:                                         ; preds = %for.cond
  %8 = load i16, ptr %bus.addr, align 2, !dbg !6184
  %conv = zext i16 %8 to i32, !dbg !6184
  %cmp5 = icmp eq i32 %conv, 65535, !dbg !6187
  br i1 %cmp5, label %if.then, label %lor.lhs.false, !dbg !6188

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i16, ptr %bus.addr, align 2, !dbg !6189
  %conv7 = zext i16 %9 to i32, !dbg !6189
  %10 = load ptr, ptr %q, align 8, !dbg !6190
  %hid_bl_item = getelementptr inbounds %struct.quirks_list_struct, ptr %10, i32 0, i32 0, !dbg !6191
  %bus8 = getelementptr inbounds %struct.hid_device_id, ptr %hid_bl_item, i32 0, i32 0, !dbg !6192
  %11 = load i16, ptr %bus8, align 8, !dbg !6192
  %conv9 = zext i16 %11 to i32, !dbg !6190
  %cmp10 = icmp eq i32 %conv7, %conv9, !dbg !6193
  br i1 %cmp10, label %if.then, label %if.end, !dbg !6194

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %12 = load ptr, ptr %q, align 8, !dbg !6195
  %node12 = getelementptr inbounds %struct.quirks_list_struct, ptr %12, i32 0, i32 1, !dbg !6197
  call void @list_del(ptr noundef %node12) #16, !dbg !6198
  %13 = load ptr, ptr %q, align 8, !dbg !6199
  call void @kfree(ptr noundef %13) #16, !dbg !6200
  br label %if.end, !dbg !6201

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !6202

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %temp, align 8, !dbg !6183
  store ptr %14, ptr %q, align 8, !dbg !6183
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #15, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !6172, metadata !DIExpression()), !dbg !6203
  %15 = load ptr, ptr %temp, align 8, !dbg !6203
  %node14 = getelementptr inbounds %struct.quirks_list_struct, ptr %15, i32 0, i32 1, !dbg !6203
  %next15 = getelementptr inbounds %struct.list_head, ptr %node14, i32 0, i32 0, !dbg !6203
  %16 = load ptr, ptr %next15, align 8, !dbg !6203
  store ptr %16, ptr %__mptr13, align 8, !dbg !6203
  %17 = load ptr, ptr %__mptr13, align 8, !dbg !6203
  %add.ptr17 = getelementptr i8, ptr %17, i64 -24, !dbg !6203
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !6203
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #15, !dbg !6183
  %18 = load ptr, ptr %tmp16, align 8, !dbg !6203
  store ptr %18, ptr %temp, align 8, !dbg !6183
  br label %for.cond, !dbg !6183, !llvm.loop !6204

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @dquirks_lock) #16, !dbg !6206
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15, !dbg !6207
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6207
  ret void, !dbg !6207
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @hid_lookup_quirk(ptr noundef %hdev) #0 align 16 !dbg !6208 {
entry:
  %retval = alloca i64, align 8
  %hdev.addr = alloca ptr, align 8
  %quirks = alloca i64, align 8
  %quirk_entry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6212, metadata !DIExpression()), !dbg !6215
  call void @llvm.lifetime.start.p0(i64 8, ptr %quirks) #15, !dbg !6216
  call void @llvm.dbg.declare(metadata ptr %quirks, metadata !6213, metadata !DIExpression()), !dbg !6217
  store i64 0, ptr %quirks, align 8, !dbg !6217
  call void @llvm.lifetime.start.p0(i64 8, ptr %quirk_entry) #15, !dbg !6218
  call void @llvm.dbg.declare(metadata ptr %quirk_entry, metadata !6214, metadata !DIExpression()), !dbg !6219
  store ptr null, ptr %quirk_entry, align 8, !dbg !6219
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6220
  %bus = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 8, !dbg !6222
  %1 = load i16, ptr %bus, align 4, !dbg !6222
  %conv = zext i16 %1 to i32, !dbg !6220
  %cmp = icmp eq i32 %conv, 3, !dbg !6223
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6224

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %hdev.addr, align 8, !dbg !6225
  %vendor = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 10, !dbg !6226
  %3 = load i32, ptr %vendor, align 8, !dbg !6226
  %cmp2 = icmp eq i32 %3, 1028, !dbg !6227
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !6228

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %hdev.addr, align 8, !dbg !6229
  %product = getelementptr inbounds %struct.hid_device, ptr %4, i32 0, i32 11, !dbg !6230
  %5 = load i32, ptr %product, align 4, !dbg !6230
  %cmp5 = icmp uge i32 %5, 768, !dbg !6231
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !6232

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %6 = load ptr, ptr %hdev.addr, align 8, !dbg !6233
  %product8 = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 11, !dbg !6234
  %7 = load i32, ptr %product8, align 4, !dbg !6234
  %cmp9 = icmp ule i32 %7, 1023, !dbg !6235
  br i1 %cmp9, label %if.then, label %if.end, !dbg !6236

if.then:                                          ; preds = %land.lhs.true7
  store i64 536870912, ptr %retval, align 8, !dbg !6237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6237

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %entry
  %8 = load ptr, ptr %hdev.addr, align 8, !dbg !6238
  %bus11 = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 8, !dbg !6240
  %9 = load i16, ptr %bus11, align 4, !dbg !6240
  %conv12 = zext i16 %9 to i32, !dbg !6238
  %cmp13 = icmp eq i32 %conv12, 3, !dbg !6241
  br i1 %cmp13, label %land.lhs.true15, label %if.end31, !dbg !6242

land.lhs.true15:                                  ; preds = %if.end
  %10 = load ptr, ptr %hdev.addr, align 8, !dbg !6243
  %vendor16 = getelementptr inbounds %struct.hid_device, ptr %10, i32 0, i32 10, !dbg !6244
  %11 = load i32, ptr %vendor16, align 8, !dbg !6244
  %cmp17 = icmp eq i32 %11, 2830, !dbg !6245
  br i1 %cmp17, label %if.then19, label %if.end31, !dbg !6246

if.then19:                                        ; preds = %land.lhs.true15
  %12 = load ptr, ptr %hdev.addr, align 8, !dbg !6247
  %product20 = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 11, !dbg !6249
  %13 = load i32, ptr %product20, align 4, !dbg !6249
  switch i32 %13, label %sw.epilog [
    i32 1042, label %sw.bb
    i32 1056, label %sw.bb25
  ], !dbg !6250

sw.bb:                                            ; preds = %if.then19
  %14 = load ptr, ptr %hdev.addr, align 8, !dbg !6251
  %version = getelementptr inbounds %struct.hid_device, ptr %14, i32 0, i32 12, !dbg !6254
  %15 = load i32, ptr %version, align 8, !dbg !6254
  %cmp21 = icmp ult i32 %15, 273, !dbg !6255
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6256

if.then23:                                        ; preds = %sw.bb
  store i64 4, ptr %retval, align 8, !dbg !6257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6257

if.end24:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !6258

sw.bb25:                                          ; preds = %if.then19
  %16 = load ptr, ptr %hdev.addr, align 8, !dbg !6259
  %version26 = getelementptr inbounds %struct.hid_device, ptr %16, i32 0, i32 12, !dbg !6261
  %17 = load i32, ptr %version26, align 8, !dbg !6261
  %cmp27 = icmp ult i32 %17, 532, !dbg !6262
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !6263

if.then29:                                        ; preds = %sw.bb25
  store i64 4, ptr %retval, align 8, !dbg !6264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6264

if.end30:                                         ; preds = %sw.bb25
  br label %sw.epilog, !dbg !6265

sw.epilog:                                        ; preds = %if.then19, %if.end30, %if.end24
  br label %if.end31, !dbg !6266

if.end31:                                         ; preds = %sw.epilog, %land.lhs.true15, %if.end
  call void @mutex_lock(ptr noundef @dquirks_lock) #16, !dbg !6267
  %18 = load ptr, ptr %hdev.addr, align 8, !dbg !6268
  %call = call ptr @hid_exists_dquirk(ptr noundef %18) #16, !dbg !6269
  store ptr %call, ptr %quirk_entry, align 8, !dbg !6270
  %19 = load ptr, ptr %quirk_entry, align 8, !dbg !6271
  %tobool = icmp ne ptr %19, null, !dbg !6271
  br i1 %tobool, label %if.then32, label %if.else, !dbg !6273

if.then32:                                        ; preds = %if.end31
  %20 = load ptr, ptr %quirk_entry, align 8, !dbg !6274
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %20, i32 0, i32 4, !dbg !6275
  %21 = load i64, ptr %driver_data, align 8, !dbg !6275
  store i64 %21, ptr %quirks, align 8, !dbg !6276
  br label %if.end34, !dbg !6277

if.else:                                          ; preds = %if.end31
  %22 = load ptr, ptr %hdev.addr, align 8, !dbg !6278
  %call33 = call i64 @hid_gets_squirk(ptr noundef %22) #16, !dbg !6279
  store i64 %call33, ptr %quirks, align 8, !dbg !6280
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  call void @mutex_unlock(ptr noundef @dquirks_lock) #16, !dbg !6281
  %23 = load i64, ptr %quirks, align 8, !dbg !6282
  store i64 %23, ptr %retval, align 8, !dbg !6283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

cleanup:                                          ; preds = %if.end34, %if.then29, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %quirk_entry) #15, !dbg !6284
  call void @llvm.lifetime.end.p0(i64 8, ptr %quirks) #15, !dbg !6284
  %24 = load i64, ptr %retval, align 8, !dbg !6284
  ret i64 %24, !dbg !6284
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6285 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hid_exists_dquirk(ptr noundef %hdev) #0 align 16 !dbg !6289 {
entry:
  %hdev.addr = alloca ptr, align 8
  %q = alloca ptr, align 8
  %bl_entry = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6294, metadata !DIExpression()), !dbg !6303
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #15, !dbg !6304
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6295, metadata !DIExpression()), !dbg !6305
  call void @llvm.lifetime.start.p0(i64 8, ptr %bl_entry) #15, !dbg !6306
  call void @llvm.dbg.declare(metadata ptr %bl_entry, metadata !6296, metadata !DIExpression()), !dbg !6307
  store ptr null, ptr %bl_entry, align 8, !dbg !6307
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6297, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr @dquirks_list, align 8, !dbg !6308
  store ptr %0, ptr %__mptr, align 8, !dbg !6308
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6308
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !6308
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6308
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6309
  %2 = load ptr, ptr %tmp, align 8, !dbg !6308
  store ptr %2, ptr %q, align 8, !dbg !6309
  br label %for.cond, !dbg !6309

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %q, align 8, !dbg !6310
  %node = getelementptr inbounds %struct.quirks_list_struct, ptr %3, i32 0, i32 1, !dbg !6310
  %cmp = icmp eq ptr %node, @dquirks_list, !dbg !6310
  %lnot = xor i1 %cmp, true, !dbg !6310
  br i1 %lnot, label %for.body, label %for.end, !dbg !6309

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %hdev.addr, align 8, !dbg !6311
  %5 = load ptr, ptr %q, align 8, !dbg !6314
  %hid_bl_item = getelementptr inbounds %struct.quirks_list_struct, ptr %5, i32 0, i32 0, !dbg !6315
  %call = call zeroext i1 @hid_match_one_id(ptr noundef %4, ptr noundef %hid_bl_item) #16, !dbg !6316
  br i1 %call, label %if.then, label %if.end, !dbg !6317

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %q, align 8, !dbg !6318
  %hid_bl_item1 = getelementptr inbounds %struct.quirks_list_struct, ptr %6, i32 0, i32 0, !dbg !6320
  store ptr %hid_bl_item1, ptr %bl_entry, align 8, !dbg !6321
  br label %for.end, !dbg !6322

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6323

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6300, metadata !DIExpression()), !dbg !6324
  %7 = load ptr, ptr %q, align 8, !dbg !6324
  %node3 = getelementptr inbounds %struct.quirks_list_struct, ptr %7, i32 0, i32 1, !dbg !6324
  %next = getelementptr inbounds %struct.list_head, ptr %node3, i32 0, i32 0, !dbg !6324
  %8 = load ptr, ptr %next, align 8, !dbg !6324
  store ptr %8, ptr %__mptr2, align 8, !dbg !6324
  %9 = load ptr, ptr %__mptr2, align 8, !dbg !6324
  %add.ptr5 = getelementptr i8, ptr %9, i64 -24, !dbg !6324
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !6324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !6310
  %10 = load ptr, ptr %tmp4, align 8, !dbg !6324
  store ptr %10, ptr %q, align 8, !dbg !6310
  br label %for.cond, !dbg !6310, !llvm.loop !6325

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load ptr, ptr %bl_entry, align 8, !dbg !6327
  %cmp6 = icmp ne ptr %11, null, !dbg !6329
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !6330

if.then7:                                         ; preds = %for.end
  store i32 0, ptr %tmp8, align 4, !dbg !6331
  %12 = load i32, ptr %tmp8, align 4, !dbg !6334
  br label %if.end9, !dbg !6335

if.end9:                                          ; preds = %if.then7, %for.end
  %13 = load ptr, ptr %bl_entry, align 8, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %bl_entry) #15, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #15, !dbg !6337
  ret ptr %13, !dbg !6338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hid_gets_squirk(ptr noundef %hdev) #0 align 16 !dbg !6339 {
entry:
  %hdev.addr = alloca ptr, align 8
  %bl_entry = alloca ptr, align 8
  %quirks = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6341, metadata !DIExpression()), !dbg !6344
  call void @llvm.lifetime.start.p0(i64 8, ptr %bl_entry) #15, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %bl_entry, metadata !6342, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 8, ptr %quirks) #15, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %quirks, metadata !6343, metadata !DIExpression()), !dbg !6348
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6349
  %initial_quirks = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 27, !dbg !6350
  %1 = load i32, ptr %initial_quirks, align 8, !dbg !6350
  %conv = zext i32 %1 to i64, !dbg !6349
  store i64 %conv, ptr %quirks, align 8, !dbg !6348
  %2 = load ptr, ptr %hdev.addr, align 8, !dbg !6351
  %call = call ptr @hid_match_id(ptr noundef %2, ptr noundef @hid_ignore_list) #16, !dbg !6353
  %tobool = icmp ne ptr %call, null, !dbg !6353
  br i1 %tobool, label %if.then, label %if.end, !dbg !6354

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %quirks, align 8, !dbg !6355
  %or = or i64 %3, 4, !dbg !6355
  store i64 %or, ptr %quirks, align 8, !dbg !6355
  br label %if.end, !dbg !6356

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %hdev.addr, align 8, !dbg !6357
  %call1 = call ptr @hid_match_id(ptr noundef %4, ptr noundef @hid_have_special_driver) #16, !dbg !6359
  %tobool2 = icmp ne ptr %call1, null, !dbg !6359
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !6360

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %quirks, align 8, !dbg !6361
  %or4 = or i64 %5, 524288, !dbg !6361
  store i64 %or4, ptr %quirks, align 8, !dbg !6361
  br label %if.end5, !dbg !6362

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load ptr, ptr %hdev.addr, align 8, !dbg !6363
  %call6 = call ptr @hid_match_id(ptr noundef %6, ptr noundef @hid_quirks) #16, !dbg !6364
  store ptr %call6, ptr %bl_entry, align 8, !dbg !6365
  %7 = load ptr, ptr %bl_entry, align 8, !dbg !6366
  %cmp = icmp ne ptr %7, null, !dbg !6368
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !6369

if.then8:                                         ; preds = %if.end5
  %8 = load ptr, ptr %bl_entry, align 8, !dbg !6370
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %8, i32 0, i32 4, !dbg !6371
  %9 = load i64, ptr %driver_data, align 8, !dbg !6371
  %10 = load i64, ptr %quirks, align 8, !dbg !6372
  %or9 = or i64 %10, %9, !dbg !6372
  store i64 %or9, ptr %quirks, align 8, !dbg !6372
  br label %if.end10, !dbg !6373

if.end10:                                         ; preds = %if.then8, %if.end5
  %11 = load i64, ptr %quirks, align 8, !dbg !6374
  %tobool11 = icmp ne i64 %11, 0, !dbg !6374
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6376

if.then12:                                        ; preds = %if.end10
  store i32 0, ptr %tmp, align 4, !dbg !6377
  %12 = load i32, ptr %tmp, align 4, !dbg !6380
  br label %if.end13, !dbg !6381

if.end13:                                         ; preds = %if.then12, %if.end10
  %13 = load i64, ptr %quirks, align 8, !dbg !6382
  call void @llvm.lifetime.end.p0(i64 8, ptr %quirks) #15, !dbg !6383
  call void @llvm.lifetime.end.p0(i64 8, ptr %bl_entry) #15, !dbg !6383
  ret i64 %13, !dbg !6384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6385 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6386 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  %0 = load i64, ptr %size.addr, align 8, !dbg !6394
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6395
  %or = or i32 %1, 256, !dbg !6396
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !6397
  ret ptr %call, !dbg !6398
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6399 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6401, metadata !DIExpression()), !dbg !6406
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6402, metadata !DIExpression()), !dbg !6407
  %0 = load i64, ptr %size.addr, align 8, !dbg !6408
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6409
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6410

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6411
  %tobool = icmp ne i64 %2, 0, !dbg !6411
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6412

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6413
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6403, metadata !DIExpression()), !dbg !6414
  %3 = load i64, ptr %size.addr, align 8, !dbg !6415
  %cmp = icmp ugt i64 %3, 8192, !dbg !6417
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6418

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6419
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6420
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6421
  store ptr %call, ptr %retval, align 8, !dbg !6422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6422

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6423
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6423
  store i32 %call2, ptr %index, align 4, !dbg !6424
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6425
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6426
  %9 = ptrtoint ptr %8 to i64, !dbg !6426
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6427
  %idxprom = zext i32 %call3 to i64, !dbg !6428
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6428
  %10 = load i32, ptr %index, align 4, !dbg !6429
  %idxprom4 = zext i32 %10 to i64, !dbg !6428
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6428
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6428
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6430
  %13 = load i64, ptr %size.addr, align 8, !dbg !6431
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !6432
  store ptr %call6, ptr %retval, align 8, !dbg !6433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6433

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6434
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6435
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6436
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6437
  store ptr %call8, ptr %retval, align 8, !dbg !6438
  br label %return, !dbg !6438

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6439
  ret ptr %16, !dbg !6439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6440 dso_local zeroext i1 @hid_match_one_id(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_replace(ptr noundef %old, ptr noundef %new) #8 align 16 !dbg !6443 {
entry:
  %old.addr = alloca ptr, align 8
  %new.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !6448, metadata !DIExpression()), !dbg !6450
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  %0 = load ptr, ptr %old.addr, align 8, !dbg !6452
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6453
  %1 = load ptr, ptr %next, align 8, !dbg !6453
  %2 = load ptr, ptr %new.addr, align 8, !dbg !6454
  %next1 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6455
  store ptr %1, ptr %next1, align 8, !dbg !6456
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6457
  %4 = load ptr, ptr %new.addr, align 8, !dbg !6458
  %next2 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !6459
  %5 = load ptr, ptr %next2, align 8, !dbg !6459
  %prev = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !6460
  store ptr %3, ptr %prev, align 8, !dbg !6461
  %6 = load ptr, ptr %old.addr, align 8, !dbg !6462
  %prev3 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !6463
  %7 = load ptr, ptr %prev3, align 8, !dbg !6463
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6464
  %prev4 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6465
  store ptr %7, ptr %prev4, align 8, !dbg !6466
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6467
  %10 = load ptr, ptr %new.addr, align 8, !dbg !6468
  %prev5 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1, !dbg !6469
  %11 = load ptr, ptr %prev5, align 8, !dbg !6469
  %next6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !6470
  store ptr %9, ptr %next6, align 8, !dbg !6471
  ret void, !dbg !6472
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6473 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #8 align 16 !dbg !6476 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6478, metadata !DIExpression()), !dbg !6480
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6479, metadata !DIExpression()), !dbg !6481
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6482
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6483
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6484
  %2 = load ptr, ptr %prev, align 8, !dbg !6484
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6485
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !6486
  ret void, !dbg !6487
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6488 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6489 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6493, metadata !DIExpression()), !dbg !6495
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6494, metadata !DIExpression()), !dbg !6496
  %0 = load i64, ptr %size.addr, align 8, !dbg !6497
  %tobool = icmp ne i64 %0, 0, !dbg !6497
  br i1 %tobool, label %if.end, label %if.then, !dbg !6499

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6500
  br label %return, !dbg !6500

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6501
  %cmp = icmp ule i64 %1, 8, !dbg !6503
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6504

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6505
  br label %return, !dbg !6505

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6506
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6508
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6509

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6510
  %cmp4 = icmp ule i64 %3, 96, !dbg !6511
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6512

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6513
  br label %return, !dbg !6513

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6514
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6516
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6517

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6518
  %cmp9 = icmp ule i64 %5, 192, !dbg !6519
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6520

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6521
  br label %return, !dbg !6521

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6522
  %cmp12 = icmp ule i64 %6, 8, !dbg !6524
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6525

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6526
  br label %return, !dbg !6526

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6527
  %cmp15 = icmp ule i64 %7, 16, !dbg !6529
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6530

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6531
  br label %return, !dbg !6531

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6532
  %cmp18 = icmp ule i64 %8, 32, !dbg !6534
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6535

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6536
  br label %return, !dbg !6536

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6537
  %cmp21 = icmp ule i64 %9, 64, !dbg !6539
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6540

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6541
  br label %return, !dbg !6541

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6542
  %cmp24 = icmp ule i64 %10, 128, !dbg !6544
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6545

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6546
  br label %return, !dbg !6546

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6547
  %cmp27 = icmp ule i64 %11, 256, !dbg !6549
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6550

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6551
  br label %return, !dbg !6551

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6552
  %cmp30 = icmp ule i64 %12, 512, !dbg !6554
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6555

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6556
  br label %return, !dbg !6556

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6557
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6559
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6560

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6561
  br label %return, !dbg !6561

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6562
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6564
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6565

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6566
  br label %return, !dbg !6566

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6567
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6569
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6570

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6571
  br label %return, !dbg !6571

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6572
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6574
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6575

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6576
  br label %return, !dbg !6576

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6577
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6579
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6580

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6581
  br label %return, !dbg !6581

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6582
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6584
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6585

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6586
  br label %return, !dbg !6586

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6587
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6589
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6590

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6591
  br label %return, !dbg !6591

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6592
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6594
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6595

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6596
  br label %return, !dbg !6596

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6597
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6599
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6600

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6601
  br label %return, !dbg !6601

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6602
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6604
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6605

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6606
  br label %return, !dbg !6606

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6607
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6609
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6610

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6611
  br label %return, !dbg !6611

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6612
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6614
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6615

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6616
  br label %return, !dbg !6616

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6617, !range !6619, !noundef !1713
  %tobool69 = trunc i8 %25 to i1, !dbg !6617
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6620

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6621

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !6622, !srcloc !6625
  unreachable, !dbg !6622

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6626

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6627

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6628

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6630

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6628

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #15, !dbg !6632, !srcloc !6634
  br label %do.end75, !dbg !6632

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6628

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6635
  br label %return, !dbg !6635

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6636
  ret i32 %26, !dbg !6636
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6637 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6642 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6650
  %and = and i32 %0, 17, !dbg !6650
  %cmp = icmp eq i32 %and, 0, !dbg !6650
  %lnot = xor i1 %cmp, true, !dbg !6650
  %lnot1 = xor i1 %lnot, true, !dbg !6650
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6650
  %conv = sext i32 %lnot.ext to i64, !dbg !6650
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6650
  %tobool = icmp ne i64 %expval, 0, !dbg !6650
  br i1 %tobool, label %if.then, label %if.end, !dbg !6652

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6654
  %and2 = and i32 %1, 1, !dbg !6656
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6656
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6657

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6658
  br label %return, !dbg !6658

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6659
  br label %return, !dbg !6659

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6661
  ret i32 %2, !dbg !6661
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6662 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6663 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !6664 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6668, metadata !DIExpression()), !dbg !6671
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6669, metadata !DIExpression()), !dbg !6672
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6670, metadata !DIExpression()), !dbg !6673
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6674
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6676
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6677
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !6678
  br i1 %call, label %if.end, label %if.then, !dbg !6679

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6680

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6681
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6682
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6683
  store ptr %3, ptr %prev1, align 8, !dbg !6684
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6685
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6686
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6687
  store ptr %5, ptr %next2, align 8, !dbg !6688
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6689
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6690
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6691
  store ptr %7, ptr %prev3, align 8, !dbg !6692
  br label %do.body, !dbg !6693

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6694

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6696

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6694

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6698
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6698
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6698
  store volatile ptr %9, ptr %next6, align 8, !dbg !6698
  br label %do.end7, !dbg !6698

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6694

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6700
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !6701 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6705, metadata !DIExpression()), !dbg !6708
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6706, metadata !DIExpression()), !dbg !6709
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6707, metadata !DIExpression()), !dbg !6710
  ret i1 true, !dbg !6711
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #8 align 16 !dbg !6712 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6716, metadata !DIExpression()), !dbg !6717
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6718
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !6719
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6720
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6721
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6722
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6723
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6724
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6725
  ret void, !dbg !6726
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #8 align 16 !dbg !6727 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6731
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !6733
  br i1 %call, label %if.end, label %if.then, !dbg !6734

if.then:                                          ; preds = %entry
  br label %return, !dbg !6735

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6736
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6737
  %2 = load ptr, ptr %prev, align 8, !dbg !6737
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6738
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6739
  %4 = load ptr, ptr %next, align 8, !dbg !6739
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !6740
  br label %return, !dbg !6741

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6741
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #8 align 16 !dbg !6742 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6746, metadata !DIExpression()), !dbg !6747
  ret i1 true, !dbg !6748
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !6749 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6751, metadata !DIExpression()), !dbg !6753
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6752, metadata !DIExpression()), !dbg !6754
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6755
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6756
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6757
  store ptr %0, ptr %prev1, align 8, !dbg !6758
  br label %do.body, !dbg !6759

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6760

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6762

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6760

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6764
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6764
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6764
  store volatile ptr %2, ptr %next4, align 8, !dbg !6764
  br label %do.end5, !dbg !6764

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6760

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6766
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!393, !394, !395, !396, !397, !398, !399, !400}
!llvm.ident = !{!401}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1000, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/hid/hid-quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "67433d9e4a9de996fd7eeaaaf7654ff8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1035, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "elan_acpi_id", scope: !14, file: !379, line: 23, type: !380, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/hid/.hid-quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/hid/hid\22 -D KBUILD_BASENAME=\22hid_quirks\22 -D KBUILD_MODNAME=\22hid\22 -D __KBUILD_MODNAME=kmod_hid -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/hid/hid-quirks.ll drivers/hid/hid-quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !291, globals: !310, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !23, !30, !38, !133, !140, !148, !164, !169, !176, !182, !187, !193, !199, !206, !211, !219, !226, !235, !240, !245, !251, !263, !269, !276, !281}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hid_type", file: !17, line: 590, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/hid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "facbe92db88800ffaa28a6349726e893")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "HID_TYPE_OTHER", value: 0)
!21 = !DIEnumerator(name: "HID_TYPE_USBMOUSE", value: 1)
!22 = !DIEnumerator(name: "HID_TYPE_USBNONE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hid_report_type", file: !24, line: 49, baseType: !18, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/uapi/linux/hid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "034407528c11c4b77ac29c67f5d79960")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "HID_INPUT_REPORT", value: 0)
!27 = !DIEnumerator(name: "HID_OUTPUT_REPORT", value: 1)
!28 = !DIEnumerator(name: "HID_FEATURE_REPORT", value: 2)
!29 = !DIEnumerator(name: "HID_REPORT_TYPES", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !31, line: 9, baseType: !18, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!34 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!35 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!36 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!37 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !40, file: !39, line: 147, baseType: !18, size: 32, elements: !130)
!39 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !39, line: 135, size: 512, elements: !41)
!41 = !{!42, !45, !47, !49, !53, !54, !70, !128, !129}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !40, file: !39, line: 136, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, file: !39, line: 137, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !40, file: !39, line: 138, baseType: !48, size: 32, offset: 128)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !40, file: !39, line: 139, baseType: !50, size: 16, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !51, line: 24, baseType: !52)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !39, line: 150, baseType: !38, size: 32, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !40, file: !39, line: 151, baseType: !55, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !39, line: 64, baseType: !57)
!57 = !DISubroutineType(types: !58)
!58 = !{!48, !59, !48, !46, !60, !66}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !51, line: 61, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !63, line: 72, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !63, line: 16, baseType: !65)
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !51, line: 52, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !63, line: 88, baseType: !69)
!69 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !40, file: !39, line: 152, baseType: !71, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !39, line: 117, size: 256, elements: !73)
!73 = !{!74, !79}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !72, file: !39, line: 118, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !51, line: 174, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 172, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !76, file: !51, line: 173, baseType: !48, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !72, file: !39, line: 119, baseType: !80, size: 192, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !81, line: 41, baseType: !82)
!81 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !81, line: 37, size: 192, elements: !83)
!83 = !{!84, !122}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !82, file: !81, line: 38, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !86, line: 29, baseType: !87)
!86 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !86, line: 17, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !87, file: !86, line: 18, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !86, line: 18, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !90, file: !86, line: 19, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !94, line: 14, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !93, file: !94, line: 15, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !98, line: 44, baseType: !99)
!98 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !98, line: 14, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 15, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 15, size: 32, elements: !103)
!103 = !{!104, !105, !115}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !102, file: !98, line: 16, baseType: !75, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !98, line: 24, baseType: !106, size: 16)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !98, line: 24, size: 16, elements: !107)
!107 = !{!108, !114}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !106, file: !98, line: 25, baseType: !109, size: 8)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !110, line: 17, baseType: !111)
!110 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !112, line: 21, baseType: !113)
!112 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !106, file: !98, line: 26, baseType: !109, size: 8, offset: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !98, line: 28, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !102, file: !98, line: 28, size: 32, elements: !117)
!117 = !{!118, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !116, file: !98, line: 29, baseType: !119, size: 16)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !110, line: 19, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !112, line: 24, baseType: !52)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !116, file: !98, line: 30, baseType: !119, size: 16, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !82, file: !81, line: 39, baseType: !123, size: 128, offset: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !51, line: 190, size: 128, elements: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !51, line: 191, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !51, line: 191, baseType: !126, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !40, file: !39, line: 153, baseType: !46, size: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !40, file: !39, line: 154, baseType: !46, size: 64, offset: 448)
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!132 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !134, line: 312, baseType: !18, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!135 = !{!136, !137, !138, !139}
!136 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!137 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!138 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!139 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !141, line: 68, baseType: !18, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!144 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !149, line: 1325, baseType: !18, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!151 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!152 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!153 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!154 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!155 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!156 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!157 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!158 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!159 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!160 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!161 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!162 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!163 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !165, line: 32, baseType: !18, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!168 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !170, line: 15, baseType: !18, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!171 = !{!172, !173, !174, !175}
!172 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!173 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!174 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!175 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !177, line: 26, baseType: !18, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!178 = !{!179, !180, !181}
!179 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!180 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!181 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !183, line: 2052, baseType: !18, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!184 = !{!185, !186}
!185 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!186 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !188, line: 54, baseType: !18, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "USRQUOTA", value: 0)
!191 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!192 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !194, line: 45, baseType: !18, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!197 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!198 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !200, line: 487, baseType: !18, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!201 = !{!202, !203, !204, !205}
!202 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!203 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!204 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!205 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !207, line: 65, baseType: !18, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!208 = !{!209, !210}
!209 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!210 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !212, line: 620, baseType: !18, size: 32, elements: !213)
!212 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!213 = !{!214, !215, !216, !217, !218}
!214 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!215 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!216 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!217 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!218 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !212, line: 597, baseType: !48, size: 32, elements: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!222 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!223 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!224 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!225 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !200, line: 547, baseType: !18, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!229 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!230 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!231 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!232 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!233 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!234 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !200, line: 564, baseType: !18, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!238 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !200, line: 577, baseType: !18, size: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!243 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!244 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !200, line: 503, baseType: !18, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250}
!247 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!248 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!249 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!250 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !252, line: 44, baseType: !18, size: 32, elements: !253)
!252 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262}
!254 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!255 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!256 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!257 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!258 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!259 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!260 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!261 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!262 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !264, line: 16, baseType: !18, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!265 = !{!266, !267, !268}
!266 = !DIEnumerator(name: "TT_NONE", value: 0)
!267 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!268 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !270, line: 51, baseType: !18, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!271 = !{!272, !273, !274, !275}
!272 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!273 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!274 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!275 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 10, baseType: !18, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!278 = !{!279, !280}
!279 = !DIEnumerator(name: "false", value: 0)
!280 = !DIEnumerator(name: "true", value: 1)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !282, line: 364, baseType: !18, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!283 = !{!284, !285, !286, !287, !288, !289, !290}
!284 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!285 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!286 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!287 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!288 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!289 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!290 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!291 = !{!46, !120, !292, !293, !65, !308}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !51, line: 154, baseType: !18)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quirks_list_struct", file: !2, line: 1061, size: 320, elements: !295)
!295 = !{!296, !307}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "hid_bl_item", scope: !294, file: !2, line: 1062, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !298, line: 173, size: 192, elements: !299)
!298 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!299 = !{!300, !301, !302, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !297, file: !298, line: 174, baseType: !120, size: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !297, file: !298, line: 175, baseType: !120, size: 16, offset: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !297, file: !298, line: 176, baseType: !303, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !112, line: 27, baseType: !18)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !297, file: !298, line: 177, baseType: !303, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !297, file: !298, line: 178, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !298, line: 15, baseType: !65)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !2, line: 1063, baseType: !123, size: 128, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!310 = !{!0, !7, !311, !313, !318, !323, !325, !327, !12, !329, !335, !340, !345, !347, !369, !374}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hid_ignore332", scope: !14, file: !2, line: 1058, type: !46, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1205, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 17)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1213, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 45)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hid_quirks_init333", scope: !14, file: !2, line: 1220, type: !46, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hid_quirks_exit334", scope: !14, file: !2, line: 1237, type: !46, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hid_lookup_quirk335", scope: !14, file: !2, line: 1315, type: !46, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "hid_mouse_ignore_list", scope: !14, file: !2, line: 904, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 12288, elements: !333)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!333 = !{!334}
!334 = !DISubrange(count: 64)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "hid_ignore_list", scope: !14, file: !2, line: 730, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 29568, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 154)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !282, line: 480, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 21)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "dquirks_list", scope: !14, file: !2, line: 1066, type: !123, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "dquirks_lock", scope: !14, file: !2, line: 1067, type: !349, isLocal: true, isDefinition: true)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !350, line: 66, size: 256, elements: !351)
!350 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!351 = !{!352, !361, !363, !368}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !349, file: !350, line: 67, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !354, line: 13, baseType: !355)
!354 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !51, line: 181, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 179, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !356, file: !51, line: 180, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !110, line: 22, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !112, line: 30, baseType: !69)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !349, file: !350, line: 68, baseType: !362, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !94, line: 23, baseType: !93)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !349, file: !350, line: 70, baseType: !364, size: 32, offset: 96)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !365, line: 15, size: 32, elements: !366)
!365 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !364, file: !365, line: 20, baseType: !75, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !349, file: !350, line: 72, baseType: !123, size: 128, offset: 128)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "hid_have_special_driver", scope: !14, file: !2, line: 228, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 40128, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 209)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "hid_quirks", scope: !14, file: !2, line: 27, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 35136, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 183)
!379 = !DIFile(filename: "./include/linux/input/elan-i2c-ids.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2ebb956e514be35a113285b01bd8c6f4")
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 13568, elements: !391)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !298, line: 217, size: 256, elements: !383)
!383 = !{!384, !388, !389, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !382, file: !298, line: 218, baseType: !385, size: 128)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !382, file: !298, line: 219, baseType: !306, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !382, file: !298, line: 220, baseType: !303, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !382, file: !298, line: 221, baseType: !303, size: 32, offset: 224)
!391 = !{!392}
!392 = !DISubrange(count: 53)
!393 = !{i32 7, !"Dwarf Version", i32 5}
!394 = !{i32 2, !"Debug Info Version", i32 3}
!395 = !{i32 1, !"wchar_size", i32 2}
!396 = !{i32 8, !"cf-protection-branch", i32 1}
!397 = !{i32 4, !"function_return_thunk_extern", i32 1}
!398 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!399 = !{i32 1, !"Code Model", i32 2}
!400 = !{i32 1, !"override-stack-alignment", i32 8}
!401 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!402 = distinct !DISubprogram(name: "hid_ignore", scope: !2, file: !2, line: 972, type: !403, scopeLine: 973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5757)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 35, baseType: !406)
!406 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !17, line: 605, size: 61056, elements: !409)
!409 = !{!410, !412, !413, !414, !415, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !5587, !5588, !5595, !5596, !5672, !5673, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5726, !5727, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !408, file: !17, line: 606, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !408, file: !17, line: 607, baseType: !18, size: 32, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !408, file: !17, line: 608, baseType: !411, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !408, file: !17, line: 609, baseType: !18, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !408, file: !17, line: 610, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !17, line: 463, size: 128, elements: !418)
!418 = !{!419, !420, !421, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !417, file: !17, line: 464, baseType: !48, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !17, line: 465, baseType: !18, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !417, file: !17, line: 466, baseType: !18, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !417, file: !17, line: 467, baseType: !18, size: 32, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !408, file: !17, line: 611, baseType: !18, size: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !408, file: !17, line: 612, baseType: !18, size: 32, offset: 352)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !408, file: !17, line: 613, baseType: !18, size: 32, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !408, file: !17, line: 614, baseType: !120, size: 16, offset: 416)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !408, file: !17, line: 615, baseType: !120, size: 16, offset: 432)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !408, file: !17, line: 616, baseType: !303, size: 32, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !408, file: !17, line: 617, baseType: !303, size: 32, offset: 480)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !408, file: !17, line: 618, baseType: !303, size: 32, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !17, line: 619, baseType: !16, size: 32, offset: 544)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !408, file: !17, line: 620, baseType: !18, size: 32, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !408, file: !17, line: 621, baseType: !434, size: 49728, offset: 640)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 49728, elements: !711)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !17, line: 548, size: 16576, elements: !436)
!436 = !{!437, !438, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !435, file: !17, line: 549, baseType: !18, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !435, file: !17, line: 550, baseType: !123, size: 128, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !435, file: !17, line: 551, baseType: !440, size: 16384, offset: 192)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 16384, elements: !5572)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !17, line: 528, size: 17152, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !5574, !5582, !5583, !5584, !5585, !5586}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !442, file: !17, line: 529, baseType: !123, size: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !442, file: !17, line: 530, baseType: !123, size: 128, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "field_entry_list", scope: !442, file: !17, line: 531, baseType: !123, size: 128, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !442, file: !17, line: 532, baseType: !18, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !17, line: 533, baseType: !23, size: 32, offset: 416)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !442, file: !17, line: 534, baseType: !18, size: 32, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !442, file: !17, line: 535, baseType: !451, size: 16384, offset: 512)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 16384, elements: !5572)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !17, line: 488, size: 1088, elements: !454)
!454 = !{!455, !456, !457, !458, !477, !478, !479, !480, !481, !482, !483, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !5570, !5571}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !453, file: !17, line: 489, baseType: !18, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !453, file: !17, line: 490, baseType: !18, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !453, file: !17, line: 491, baseType: !18, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !453, file: !17, line: 492, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !17, line: 470, size: 192, elements: !461)
!461 = !{!462, !463, !464, !465, !468, !469, !470, !471, !472, !473, !474}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !460, file: !17, line: 471, baseType: !18, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !460, file: !17, line: 472, baseType: !18, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !460, file: !17, line: 473, baseType: !18, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !460, file: !17, line: 474, baseType: !466, size: 8, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !112, line: 20, baseType: !467)
!467 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !460, file: !17, line: 477, baseType: !466, size: 8, offset: 104)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !460, file: !17, line: 478, baseType: !120, size: 16, offset: 112)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !17, line: 479, baseType: !111, size: 8, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !460, file: !17, line: 480, baseType: !466, size: 8, offset: 136)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !460, file: !17, line: 481, baseType: !466, size: 8, offset: 144)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !460, file: !17, line: 482, baseType: !466, size: 8, offset: 152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !460, file: !17, line: 483, baseType: !475, size: 16, offset: 160)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !112, line: 23, baseType: !476)
!476 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !453, file: !17, line: 493, baseType: !18, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !17, line: 494, baseType: !18, size: 32, offset: 224)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !453, file: !17, line: 495, baseType: !18, size: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !453, file: !17, line: 496, baseType: !18, size: 32, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !453, file: !17, line: 497, baseType: !18, size: 32, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !453, file: !17, line: 498, baseType: !18, size: 32, offset: 352)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !453, file: !17, line: 499, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !112, line: 26, baseType: !48)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "new_value", scope: !453, file: !17, line: 500, baseType: !484, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "usages_priorities", scope: !453, file: !17, line: 501, baseType: !484, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !453, file: !17, line: 504, baseType: !485, size: 32, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !453, file: !17, line: 505, baseType: !485, size: 32, offset: 608)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !453, file: !17, line: 506, baseType: !485, size: 32, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !453, file: !17, line: 507, baseType: !485, size: 32, offset: 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !453, file: !17, line: 508, baseType: !485, size: 32, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !453, file: !17, line: 509, baseType: !18, size: 32, offset: 736)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ignored", scope: !453, file: !17, line: 510, baseType: !405, size: 8, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !453, file: !17, line: 511, baseType: !441, size: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !453, file: !17, line: 512, baseType: !18, size: 32, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !453, file: !17, line: 514, baseType: !498, size: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !17, line: 580, size: 512, elements: !500)
!500 = !{!501, !502, !503, !5566, !5567, !5568, !5569}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !499, file: !17, line: 581, baseType: !123, size: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !499, file: !17, line: 582, baseType: !441, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !499, file: !17, line: 583, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !506, line: 137, size: 10880, elements: !507)
!506 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!507 = !{!508, !509, !510, !511, !519, !523, !524, !528, !529, !530, !531, !532, !533, !537, !538, !539, !540, !541, !542, !559, !564, !5435, !5438, !5439, !5440, !5442, !5445, !5455, !5456, !5457, !5458, !5459, !5463, !5467, !5471, !5475, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5562, !5563, !5565}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !506, line: 138, baseType: !43, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !505, file: !506, line: 139, baseType: !43, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !505, file: !506, line: 140, baseType: !43, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !505, file: !506, line: 141, baseType: !512, size: 64, offset: 192)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !513, line: 59, size: 64, elements: !514)
!513 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !512, file: !513, line: 60, baseType: !120, size: 16)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !512, file: !513, line: 61, baseType: !120, size: 16, offset: 16)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !512, file: !513, line: 62, baseType: !120, size: 16, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !512, file: !513, line: 63, baseType: !120, size: 16, offset: 48)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !505, file: !506, line: 143, baseType: !520, size: 64, offset: 256)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 64, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 1)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !505, file: !506, line: 145, baseType: !520, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !505, file: !506, line: 146, baseType: !525, size: 768, offset: 384)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 768, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 12)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !505, file: !506, line: 147, baseType: !520, size: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !505, file: !506, line: 148, baseType: !520, size: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !505, file: !506, line: 149, baseType: !520, size: 64, offset: 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !505, file: !506, line: 150, baseType: !520, size: 64, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !505, file: !506, line: 151, baseType: !520, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !505, file: !506, line: 152, baseType: !534, size: 128, offset: 1472)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 2)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !505, file: !506, line: 153, baseType: !520, size: 64, offset: 1600)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !505, file: !506, line: 155, baseType: !18, size: 32, offset: 1664)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !505, file: !506, line: 157, baseType: !18, size: 32, offset: 1696)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !505, file: !506, line: 158, baseType: !18, size: 32, offset: 1728)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !505, file: !506, line: 159, baseType: !46, size: 64, offset: 1792)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !505, file: !506, line: 161, baseType: !543, size: 64, offset: 1856)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!48, !504, !546, !558}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !513, line: 117, size: 320, elements: !549)
!549 = !{!550, !551, !552, !553, !554}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !513, line: 119, baseType: !111, size: 8)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !548, file: !513, line: 120, baseType: !111, size: 8, offset: 8)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !548, file: !513, line: 121, baseType: !120, size: 16, offset: 16)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !548, file: !513, line: 122, baseType: !303, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !548, file: !513, line: 123, baseType: !555, size: 256, offset: 64)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 32)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !505, file: !506, line: 164, baseType: !560, size: 64, offset: 1920)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!48, !504, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !505, file: !506, line: 167, baseType: !565, size: 64, offset: 1984)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !506, line: 546, size: 960, elements: !567)
!567 = !{!568, !635, !639, !643, !647, !648, !652, !653, !654, !655, !656, !657}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !566, file: !506, line: 547, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!48, !504, !572, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !513, line: 454, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !583, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !513, line: 455, baseType: !120, size: 16)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !573, file: !513, line: 456, baseType: !475, size: 16, offset: 16)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !573, file: !513, line: 457, baseType: !120, size: 16, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !573, file: !513, line: 458, baseType: !579, size: 32, offset: 48)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !513, line: 320, size: 32, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !579, file: !513, line: 321, baseType: !120, size: 16)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !579, file: !513, line: 322, baseType: !120, size: 16, offset: 16)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !573, file: !513, line: 459, baseType: !584, size: 32, offset: 80)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !513, line: 310, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !584, file: !513, line: 311, baseType: !120, size: 16)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !584, file: !513, line: 312, baseType: !120, size: 16, offset: 16)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !573, file: !513, line: 467, baseType: !589, size: 256, offset: 128)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !513, line: 461, size: 256, elements: !590)
!590 = !{!591, !602, !608, !620, !630}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !589, file: !513, line: 462, baseType: !592, size: 80)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !513, line: 349, size: 80, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !592, file: !513, line: 350, baseType: !475, size: 16)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !592, file: !513, line: 351, baseType: !596, size: 64, offset: 16)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !513, line: 337, size: 64, elements: !597)
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !596, file: !513, line: 338, baseType: !120, size: 16)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !596, file: !513, line: 339, baseType: !120, size: 16, offset: 16)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !596, file: !513, line: 340, baseType: !120, size: 16, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !596, file: !513, line: 341, baseType: !120, size: 16, offset: 48)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !589, file: !513, line: 463, baseType: !603, size: 96)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !513, line: 360, size: 96, elements: !604)
!604 = !{!605, !606, !607}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !603, file: !513, line: 361, baseType: !475, size: 16)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !603, file: !513, line: 362, baseType: !475, size: 16, offset: 16)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !603, file: !513, line: 363, baseType: !596, size: 64, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !589, file: !513, line: 464, baseType: !609, size: 256)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !513, line: 405, size: 256, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !609, file: !513, line: 406, baseType: !120, size: 16)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !609, file: !513, line: 407, baseType: !120, size: 16, offset: 16)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !609, file: !513, line: 408, baseType: !475, size: 16, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !609, file: !513, line: 409, baseType: !475, size: 16, offset: 48)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !609, file: !513, line: 410, baseType: !120, size: 16, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !609, file: !513, line: 412, baseType: !596, size: 64, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !609, file: !513, line: 414, baseType: !303, size: 32, offset: 160)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !609, file: !513, line: 415, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !589, file: !513, line: 465, baseType: !621, size: 192)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 192, elements: !535)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !513, line: 376, size: 96, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !622, file: !513, line: 377, baseType: !120, size: 16)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !622, file: !513, line: 378, baseType: !120, size: 16, offset: 16)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !622, file: !513, line: 380, baseType: !475, size: 16, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !622, file: !513, line: 381, baseType: !475, size: 16, offset: 48)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !622, file: !513, line: 383, baseType: !120, size: 16, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !622, file: !513, line: 384, baseType: !475, size: 16, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !589, file: !513, line: 466, baseType: !631, size: 32)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !513, line: 426, size: 32, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !631, file: !513, line: 427, baseType: !120, size: 16)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !631, file: !513, line: 428, baseType: !120, size: 16, offset: 16)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !566, file: !506, line: 549, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!48, !504, !48}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !566, file: !506, line: 551, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!48, !504, !48, !48}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !566, file: !506, line: 552, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !504, !119}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !566, file: !506, line: 553, baseType: !644, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !566, file: !506, line: 555, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !565}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !566, file: !506, line: 557, baseType: !46, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !566, file: !506, line: 559, baseType: !534, size: 128, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !566, file: !506, line: 561, baseType: !349, size: 256, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !566, file: !506, line: 563, baseType: !48, size: 32, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !566, file: !506, line: 564, baseType: !572, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !566, file: !506, line: 565, baseType: !658, offset: 960)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, elements: !750)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !183, line: 994, size: 1856, align: 64, elements: !661)
!661 = !{!662, !681, !682, !684, !685, !686, !687, !688, !763, !1130, !1139, !5425, !5426, !5427, !5428, !5429, !5430, !5432, !5433, !5434}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !183, line: 995, baseType: !663, size: 128)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !183, line: 995, size: 128, elements: !664)
!664 = !{!665, !671, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !663, file: !183, line: 996, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !667, line: 60, size: 64, elements: !668)
!667 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !666, file: !667, line: 61, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !663, file: !183, line: 997, baseType: !672, size: 128, align: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !51, line: 232, size: 128, align: 64, elements: !673)
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !51, line: 233, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !672, file: !51, line: 234, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !675}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !663, file: !183, line: 998, baseType: !18, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !660, file: !183, line: 1005, baseType: !85, size: 32, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !660, file: !183, line: 1006, baseType: !683, size: 32, offset: 160)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !51, line: 156, baseType: !18)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !660, file: !183, line: 1007, baseType: !353, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !660, file: !183, line: 1008, baseType: !349, size: 256, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !660, file: !183, line: 1009, baseType: !67, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !660, file: !183, line: 1010, baseType: !18, size: 32, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !660, file: !183, line: 1011, baseType: !689, size: 256, offset: 640)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !183, line: 948, size: 256, elements: !690)
!690 = !{!691, !714, !752, !753, !761, !762}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !689, file: !183, line: 949, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !693, line: 34, baseType: !694)
!693 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !693, line: 25, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !694, file: !693, line: 26, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !698, line: 27, baseType: !699)
!698 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !698, line: 13, size: 64, elements: !700)
!700 = !{!701, !713}
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !698, line: 14, baseType: !702, size: 32)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !698, line: 14, size: 32, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !702, file: !698, line: 15, baseType: !75, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !698, line: 16, baseType: !706, size: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !698, line: 16, size: 32, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !706, file: !698, line: 18, baseType: !109, size: 8)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !706, file: !698, line: 19, baseType: !710, size: 24, offset: 8)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 24, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 3)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !699, file: !698, line: 26, baseType: !97, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !689, file: !183, line: 950, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !31, line: 59, size: 768, elements: !717)
!717 = !{!718, !724, !725, !726, !739, !740, !741, !742}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !31, line: 61, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !720, line: 113, baseType: !721)
!720 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !720, line: 111, size: 32, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !721, file: !720, line: 112, baseType: !75, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !716, file: !31, line: 62, baseType: !18, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !31, line: 63, baseType: !85, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !716, file: !31, line: 65, baseType: !727, size: 256, offset: 128)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 256, elements: !737)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !51, line: 194, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !728, file: !51, line: 195, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !51, line: 198, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !51, line: 199, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !732, file: !51, line: 199, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!737 = !{!738}
!738 = !DISubrange(count: 4)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !716, file: !31, line: 66, baseType: !728, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !716, file: !31, line: 68, baseType: !80, size: 192, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !716, file: !31, line: 69, baseType: !672, size: 128, align: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !716, file: !31, line: 70, baseType: !743, offset: 768)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, elements: !750)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !31, line: 54, size: 128, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !744, file: !31, line: 55, baseType: !48, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !744, file: !31, line: 56, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !31, line: 56, flags: DIFlagFwdDecl)
!750 = !{!751}
!751 = !DISubrange(count: -1)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !689, file: !183, line: 951, baseType: !30, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !689, file: !183, line: 952, baseType: !754, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !755, line: 23, baseType: !756)
!755 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 21, size: 32, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !756, file: !755, line: 22, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !51, line: 37, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !63, line: 49, baseType: !18)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !689, file: !183, line: 952, baseType: !754, size: 32, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !689, file: !183, line: 953, baseType: !48, size: 32, offset: 224)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !660, file: !183, line: 1012, baseType: !764, size: 64, offset: 896)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !767, line: 110, size: 1472, elements: !768)
!767 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!768 = !{!769, !770, !771, !778, !779, !780, !781, !782, !783, !784, !785, !794, !795, !796, !797, !798, !799, !927, !928, !929, !930, !931, !962, !1116, !1117, !1125}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !766, file: !767, line: 111, baseType: !353, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !766, file: !767, line: 112, baseType: !754, size: 32, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !766, file: !767, line: 113, baseType: !772, size: 32, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !755, line: 28, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 26, size: 32, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !773, file: !755, line: 27, baseType: !776, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !51, line: 38, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !63, line: 50, baseType: !18)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !766, file: !767, line: 114, baseType: !754, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !766, file: !767, line: 115, baseType: !772, size: 32, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !766, file: !767, line: 116, baseType: !754, size: 32, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !766, file: !767, line: 117, baseType: !772, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !766, file: !767, line: 118, baseType: !754, size: 32, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !766, file: !767, line: 119, baseType: !772, size: 32, offset: 288)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !766, file: !767, line: 120, baseType: !18, size: 32, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !766, file: !767, line: 121, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !787, line: 24, baseType: !788)
!787 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !787, line: 24, size: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !788, file: !787, line: 24, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !110, line: 23, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !112, line: 31, baseType: !793)
!793 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !766, file: !767, line: 122, baseType: !786, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !766, file: !767, line: 123, baseType: !786, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !766, file: !767, line: 124, baseType: !786, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !766, file: !767, line: 125, baseType: !786, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !766, file: !767, line: 127, baseType: !113, size: 8, offset: 704)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !766, file: !767, line: 129, baseType: !800, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !802, line: 195, size: 1728, elements: !803)
!802 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!803 = !{!804, !805, !809, !821, !830, !833, !834, !841, !842, !843, !844, !848, !849, !850, !851, !852, !891, !912}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !801, file: !802, line: 196, baseType: !719, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !801, file: !802, line: 197, baseType: !806, size: 32, offset: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !802, line: 28, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !51, line: 104, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !110, line: 20, baseType: !485)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !802, line: 198, baseType: !810, size: 192, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !802, line: 198, size: 192, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !810, file: !802, line: 199, baseType: !123, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !810, file: !802, line: 200, baseType: !814, size: 192, align: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !815, line: 5, size: 192, align: 64, elements: !816)
!815 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!816 = !{!817, !818, !820}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !814, file: !815, line: 6, baseType: !65, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !814, file: !815, line: 7, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !814, file: !815, line: 8, baseType: !819, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !801, file: !802, line: 205, baseType: !822, size: 320, offset: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !823, line: 48, size: 320, elements: !824)
!823 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!824 = !{!825, !826, !827, !828, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !823, line: 49, baseType: !353, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !822, file: !823, line: 55, baseType: !353, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !822, file: !823, line: 57, baseType: !364, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !822, file: !823, line: 59, baseType: !362, size: 32, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !822, file: !823, line: 60, baseType: !123, size: 128, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !801, file: !802, line: 206, baseType: !831, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !802, line: 206, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !801, file: !802, line: 207, baseType: !46, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !802, line: 208, baseType: !835, size: 64, offset: 704)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !802, line: 208, size: 64, elements: !836)
!836 = !{!837, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !835, file: !802, line: 209, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !839, line: 8, baseType: !360)
!839 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!840 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !835, file: !802, line: 210, baseType: !838, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !801, file: !802, line: 212, baseType: !838, size: 64, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !801, file: !802, line: 213, baseType: !754, size: 32, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !801, file: !802, line: 214, baseType: !772, size: 32, offset: 864)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !801, file: !802, line: 215, baseType: !845, size: 32, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !802, line: 31, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 110, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !110, line: 21, baseType: !303)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !801, file: !802, line: 216, baseType: !52, size: 16, offset: 928)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !801, file: !802, line: 217, baseType: !52, size: 16, offset: 944)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !801, file: !802, line: 221, baseType: !476, size: 16, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !802, line: 228, baseType: !65, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !802, line: 245, baseType: !853, size: 320, offset: 1088)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !802, line: 245, size: 320, elements: !854)
!854 = !{!855, !882}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !853, file: !802, line: 246, baseType: !856, size: 320)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !802, line: 114, size: 320, elements: !857)
!857 = !{!858, !859, !871, !874, !881}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !856, file: !802, line: 116, baseType: !65, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !802, line: 117, baseType: !860, size: 64, offset: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !802, line: 117, size: 64, elements: !861)
!861 = !{!862, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !802, line: 118, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !802, line: 118, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !863, file: !802, line: 120, baseType: !119, size: 16)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !863, file: !802, line: 121, baseType: !867, size: 48, offset: 16)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 6)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !860, file: !802, line: 127, baseType: !65, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !802, line: 129, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !802, line: 102, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !856, file: !802, line: 130, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !802, line: 108, size: 192, elements: !877)
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !876, file: !802, line: 109, baseType: !672, size: 128, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !876, file: !802, line: 110, baseType: !719, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !876, file: !802, line: 111, baseType: !405, size: 8, offset: 160)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !856, file: !802, line: 131, baseType: !43, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !802, line: 247, baseType: !883, size: 320)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !802, line: 247, size: 320, elements: !884)
!884 = !{!885, !886, !887, !888, !889}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !883, file: !802, line: 248, baseType: !65, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !883, file: !802, line: 249, baseType: !65, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !883, file: !802, line: 250, baseType: !872, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !883, file: !802, line: 251, baseType: !875, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !883, file: !802, line: 252, baseType: !890, size: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !802, line: 260, baseType: !892, size: 256, offset: 1408)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !802, line: 260, size: 256, elements: !893)
!893 = !{!894, !900}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !892, file: !802, line: 261, baseType: !895, size: 256)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !802, line: 134, size: 256, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !895, file: !802, line: 135, baseType: !46, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !895, file: !802, line: 136, baseType: !899, size: 256)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !737)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !802, line: 262, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !802, line: 262, size: 256, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !901, file: !802, line: 264, baseType: !123, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !901, file: !802, line: 265, baseType: !905, size: 128, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !906, line: 22, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!907 = !{!908, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !905, file: !906, line: 23, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !906, line: 23, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !905, file: !906, line: 24, baseType: !65, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !801, file: !802, line: 280, baseType: !913, size: 64, offset: 1664)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !802, line: 176, size: 192, elements: !915)
!915 = !{!916, !925, !926}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !914, file: !802, line: 177, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !802, line: 171, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!48, !800, !921, !923, !800}
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !914, file: !802, line: 178, baseType: !800, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !914, file: !802, line: 179, baseType: !872, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !766, file: !767, line: 130, baseType: !800, size: 64, offset: 832)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !766, file: !767, line: 131, baseType: !800, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !766, file: !767, line: 132, baseType: !800, size: 64, offset: 960)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !766, file: !767, line: 135, baseType: !46, size: 64, offset: 1024)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !766, file: !767, line: 137, baseType: !932, size: 64, offset: 1088)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !934, line: 14, size: 1088, elements: !935)
!934 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!935 = !{!936, !937, !946, !947, !948, !949, !950, !951}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !933, file: !934, line: 15, baseType: !719, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !933, file: !934, line: 17, baseType: !938, size: 320, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !939, line: 22, size: 320, elements: !940)
!939 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!940 = !{!941, !942, !943, !944}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !938, file: !939, line: 23, baseType: !362, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !938, file: !939, line: 24, baseType: !359, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !938, file: !939, line: 26, baseType: !123, size: 128, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !938, file: !939, line: 28, baseType: !945, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !933, file: !934, line: 19, baseType: !65, size: 64, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !933, file: !934, line: 20, baseType: !353, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !933, file: !934, line: 23, baseType: !732, size: 128, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !933, file: !934, line: 24, baseType: !754, size: 32, offset: 640)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !933, file: !934, line: 29, baseType: !353, size: 64, offset: 704)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !933, file: !934, line: 36, baseType: !952, size: 320, offset: 768)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !953, line: 15, size: 320, elements: !954)
!953 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!954 = !{!955, !956, !957, !958, !959, !960, !961}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !953, line: 16, baseType: !362, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !952, file: !953, line: 18, baseType: !48, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !952, file: !953, line: 19, baseType: !48, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !952, file: !953, line: 20, baseType: !48, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !952, file: !953, line: 21, baseType: !48, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !952, file: !953, line: 22, baseType: !65, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !952, file: !953, line: 23, baseType: !65, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !766, file: !767, line: 138, baseType: !963, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !965, line: 68, size: 4800, elements: !966)
!965 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!966 = !{!967, !989, !990, !991, !992, !993, !994, !995, !1006, !1007, !1008, !1009, !1010, !1011, !1023, !1096, !1097, !1111, !1114}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !964, file: !965, line: 69, baseType: !968, size: 576)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !965, line: 23, size: 576, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !968, file: !965, line: 24, baseType: !847, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !965, line: 25, baseType: !972, size: 512, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !965, line: 25, size: 512, elements: !973)
!973 = !{!974, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !972, file: !965, line: 26, baseType: !975, size: 480)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 480, elements: !981)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !965, line: 17, size: 96, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !976, file: !965, line: 18, baseType: !847, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !976, file: !965, line: 19, baseType: !847, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !976, file: !965, line: 20, baseType: !847, size: 32, offset: 64)
!981 = !{!982}
!982 = !DISubrange(count: 5)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !965, line: 27, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !965, line: 27, size: 128, elements: !985)
!985 = !{!986, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !984, file: !965, line: 28, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !984, file: !965, line: 29, baseType: !987, size: 64, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !964, file: !965, line: 70, baseType: !968, size: 576, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !964, file: !965, line: 71, baseType: !968, size: 576, offset: 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !964, file: !965, line: 72, baseType: !963, size: 64, offset: 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !964, file: !965, line: 73, baseType: !48, size: 32, offset: 1792)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !964, file: !965, line: 74, baseType: !754, size: 32, offset: 1824)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !964, file: !965, line: 75, baseType: !772, size: 32, offset: 1856)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !964, file: !965, line: 76, baseType: !996, size: 192, offset: 1920)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !997, line: 9, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!998 = !{!999, !1000, !1004, !1005}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !996, file: !997, line: 10, baseType: !353, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !996, file: !997, line: 11, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !997, line: 7, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !996, file: !997, line: 12, baseType: !18, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !996, file: !997, line: 13, baseType: !719, size: 32, offset: 160)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !964, file: !965, line: 77, baseType: !65, size: 64, offset: 2112)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !964, file: !965, line: 80, baseType: !405, size: 8, offset: 2176)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !964, file: !965, line: 88, baseType: !123, size: 128, offset: 2240)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !964, file: !965, line: 89, baseType: !800, size: 64, offset: 2368)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !964, file: !965, line: 90, baseType: !822, size: 320, offset: 2432)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !964, file: !965, line: 97, baseType: !1012, size: 256, offset: 2752)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1013, line: 98, size: 256, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1012, file: !1013, line: 99, baseType: !353, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1012, file: !1013, line: 100, baseType: !123, size: 128, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1012, file: !1013, line: 101, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1013, line: 21, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !964, file: !965, line: 99, baseType: !1024, size: 768, offset: 3008)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !39, line: 199, size: 768, elements: !1025)
!1025 = !{!1026, !1031}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1024, file: !39, line: 200, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!48, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1024, file: !39, line: 201, baseType: !1032, size: 704, offset: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !39, line: 193, size: 704, elements: !1033)
!1033 = !{!1034, !1092}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1032, file: !39, line: 195, baseType: !1035, size: 640)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !39, line: 173, size: 640, elements: !1036)
!1036 = !{!1037, !1049, !1061, !1062, !1082, !1083, !1085, !1091}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !39, line: 174, baseType: !1038, size: 192)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !39, line: 174, size: 192, elements: !1039)
!1039 = !{!1040, !1048}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !39, line: 175, baseType: !1041, size: 192)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !39, line: 175, size: 192, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1041, file: !39, line: 176, baseType: !59, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1041, file: !39, line: 177, baseType: !48, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1041, file: !39, line: 178, baseType: !48, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1041, file: !39, line: 179, baseType: !48, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1041, file: !39, line: 180, baseType: !48, size: 32, offset: 160)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1038, file: !39, line: 182, baseType: !672, size: 128, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1035, file: !39, line: 184, baseType: !1050, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1052, line: 26, size: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1051, file: !1052, line: 27, baseType: !18, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1051, file: !1052, line: 28, baseType: !1056, size: 192, offset: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1057, line: 43, size: 192, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1056, file: !1057, line: 44, baseType: !362, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1056, file: !1057, line: 45, baseType: !123, size: 128, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1035, file: !39, line: 185, baseType: !59, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1035, file: !39, line: 186, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !39, line: 204, size: 960, elements: !1065)
!1065 = !{!1066, !1067, !1071, !1078}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1064, file: !39, line: 205, baseType: !1024, size: 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1064, file: !39, line: 206, baseType: !1068, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1030, !1063}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1064, file: !39, line: 207, baseType: !1072, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1075, !1076, !1077}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1064, file: !39, line: 209, baseType: !1079, size: 64, offset: 896)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!48, !1075, !59}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1035, file: !39, line: 187, baseType: !1030, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1035, file: !39, line: 188, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1035, file: !39, line: 189, baseType: !1086, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !39, line: 157, size: 256, elements: !1088)
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1087, file: !39, line: 158, baseType: !814, size: 192, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1087, file: !39, line: 159, baseType: !1075, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1035, file: !39, line: 190, baseType: !728, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1032, file: !39, line: 196, baseType: !1093, size: 64, offset: 640)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !815, line: 12, size: 64, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1093, file: !815, line: 13, baseType: !819, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !964, file: !965, line: 100, baseType: !1075, size: 64, offset: 3776)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !964, file: !965, line: 102, baseType: !1098, size: 64, offset: 3840)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !965, line: 107, size: 1152, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105, !1109}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1099, file: !965, line: 108, baseType: !732, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1099, file: !965, line: 109, baseType: !963, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !965, line: 110, baseType: !754, size: 32, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !965, line: 111, baseType: !75, size: 32, offset: 224)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1099, file: !965, line: 112, baseType: !1106, size: 640, offset: 256)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 640, elements: !1107)
!1107 = !{!1108}
!1108 = !DISubrange(count: 10)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1099, file: !965, line: 113, baseType: !1110, size: 256, offset: 896)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 256, elements: !737)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !964, file: !965, line: 103, baseType: !1112, size: 640, offset: 3904)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 640, elements: !1107)
!1113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !964, file: !965, line: 104, baseType: !1115, size: 256, offset: 4544)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 256, elements: !737)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !766, file: !767, line: 139, baseType: !1098, size: 64, offset: 1216)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !766, file: !767, line: 140, baseType: !1118, size: 64, offset: 1280)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !767, line: 25, size: 64, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1119, file: !767, line: 26, baseType: !75, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1119, file: !767, line: 27, baseType: !48, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1119, file: !767, line: 28, baseType: !1124, offset: 64)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, elements: !750)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !767, line: 142, baseType: !1126, size: 128, offset: 1344)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !767, line: 142, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1126, file: !767, line: 143, baseType: !48, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1126, file: !767, line: 144, baseType: !672, size: 128, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !660, file: !183, line: 1013, baseType: !1131, size: 256, offset: 960)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !183, line: 970, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1131, file: !183, line: 971, baseType: !65, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1131, file: !183, line: 972, baseType: !18, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1131, file: !183, line: 973, baseType: !18, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1131, file: !183, line: 974, baseType: !18, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1131, file: !183, line: 975, baseType: !18, size: 32, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1131, file: !183, line: 976, baseType: !67, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !660, file: !183, line: 1014, baseType: !1140, size: 128, offset: 1216)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1141, line: 8, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1142 = !{!1143, !5424}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1140, file: !1141, line: 9, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1146, line: 70, size: 256, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1147 = !{!1148, !5421, !5422, !5423}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1145, file: !1146, line: 71, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1151, line: 82, size: 1536, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1152 = !{!1153, !1154, !1164, !1172, !1173, !1188, !5388, !5390, !5403, !5404, !5405, !5406, !5407, !5413, !5414, !5415}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1150, file: !1151, line: 84, baseType: !18, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1150, file: !1151, line: 85, baseType: !1155, size: 32, offset: 32)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1156, line: 275, baseType: !1157)
!1156 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1156, line: 275, size: 32, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1157, file: !1156, line: 275, baseType: !1160, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1156, line: 69, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1156, line: 64, size: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1161, file: !1156, line: 65, baseType: !18, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1150, file: !1151, line: 86, baseType: !1165, size: 128, offset: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1166, line: 38, size: 128, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1167 = !{!1168, !1170}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1165, file: !1166, line: 39, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1165, file: !1166, line: 39, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1150, file: !1151, line: 87, baseType: !1149, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1150, file: !1151, line: 88, baseType: !1174, size: 128, offset: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1151, line: 49, size: 128, elements: !1175)
!1175 = !{!1176, !1185}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1151, line: 50, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1151, line: 50, size: 64, elements: !1178)
!1178 = !{!1179, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !1151, line: 51, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !1151, line: 51, size: 64, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1180, file: !1151, line: 52, baseType: !847, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1180, file: !1151, line: 52, baseType: !847, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1177, file: !1151, line: 54, baseType: !791, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1174, file: !1151, line: 56, baseType: !1186, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1150, file: !1151, line: 89, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !183, line: 641, size: 4800, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1201, !1202, !1395, !5204, !5205, !5206, !5207, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5370, !5373, !5374, !5375, !5384, !5385, !5386, !5387}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1190, file: !183, line: 642, baseType: !50, size: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1190, file: !183, line: 643, baseType: !52, size: 16, offset: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1190, file: !183, line: 644, baseType: !754, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1190, file: !183, line: 645, baseType: !123, size: 128, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1190, file: !183, line: 646, baseType: !772, size: 32, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1190, file: !183, line: 647, baseType: !18, size: 32, offset: 224)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1190, file: !183, line: 650, baseType: !1199, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !183, line: 607, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1190, file: !183, line: 651, baseType: !1199, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1190, file: !183, line: 654, baseType: !1203, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !183, line: 1966, size: 2048, align: 512, elements: !1206)
!1206 = !{!1207, !1211, !1224, !1230, !1234, !1238, !1242, !1246, !1250, !1254, !1258, !1259, !1265, !1269, !1306, !1337, !1344, !1350, !1354, !1358, !1362, !1366, !1370, !1376, !1380}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1205, file: !183, line: 1967, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1149, !1189, !1149, !18}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1205, file: !183, line: 1968, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!43, !1149, !1189, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1217, line: 10, size: 128, elements: !1218)
!1217 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1218 = !{!1219, !1223}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1216, file: !1217, line: 11, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !46}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1216, file: !1217, line: 12, baseType: !46, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1205, file: !183, line: 1969, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!48, !1228, !1189, !48}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !787, line: 42, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1205, file: !183, line: 1970, baseType: !1231, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1199, !1189, !48, !405}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1205, file: !183, line: 1972, baseType: !1235, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!48, !1149, !890, !48}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1205, file: !183, line: 1974, baseType: !1239, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!48, !1228, !1189, !1149, !50, !405}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1205, file: !183, line: 1976, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!48, !1149, !1189, !1149}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1205, file: !183, line: 1977, baseType: !1247, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!48, !1189, !1149}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1205, file: !183, line: 1978, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!48, !1228, !1189, !1149, !43}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1205, file: !183, line: 1980, baseType: !1255, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!48, !1228, !1189, !1149, !50}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1205, file: !183, line: 1982, baseType: !1247, size: 64, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1205, file: !183, line: 1983, baseType: !1260, size: 64, offset: 704)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!48, !1228, !1189, !1149, !50, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !51, line: 21, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !51, line: 18, baseType: !847)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1205, file: !183, line: 1985, baseType: !1266, size: 64, offset: 768)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!48, !1228, !1189, !1149, !1189, !1149, !18}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1205, file: !183, line: 1987, baseType: !1270, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!48, !1228, !1149, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !183, line: 226, size: 640, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1288, !1297, !1298, !1303, !1304, !1305}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1274, file: !183, line: 227, baseType: !18, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1274, file: !183, line: 228, baseType: !50, size: 16, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !183, line: 241, baseType: !1279, size: 32, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !183, line: 241, size: 32, elements: !1280)
!1280 = !{!1281, !1282}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1279, file: !183, line: 242, baseType: !754, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1279, file: !183, line: 243, baseType: !1283, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1284, line: 16, baseType: !1285)
!1284 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 14, size: 32, elements: !1286)
!1286 = !{!1287}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1285, file: !1284, line: 15, baseType: !759, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !183, line: 245, baseType: !1289, size: 32, offset: 96)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1274, file: !183, line: 245, size: 32, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1289, file: !183, line: 246, baseType: !772, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1289, file: !183, line: 247, baseType: !1293, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1284, line: 20, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 18, size: 32, elements: !1295)
!1295 = !{!1296}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1294, file: !1284, line: 19, baseType: !776, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1274, file: !183, line: 249, baseType: !67, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1274, file: !183, line: 250, baseType: !1299, size: 128, offset: 192)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !839, line: 13, size: 128, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1299, file: !839, line: 14, baseType: !838, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1299, file: !839, line: 15, baseType: !1113, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1274, file: !183, line: 251, baseType: !1299, size: 128, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1274, file: !183, line: 252, baseType: !1299, size: 128, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1274, file: !183, line: 259, baseType: !659, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1205, file: !183, line: 1988, baseType: !1307, size: 64, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!48, !1228, !1310, !1312, !847, !18}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1314, line: 22, size: 1280, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1313, file: !1314, line: 23, baseType: !847, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1313, file: !1314, line: 24, baseType: !50, size: 16, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1313, file: !1314, line: 25, baseType: !18, size: 32, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1313, file: !1314, line: 26, baseType: !846, size: 32, offset: 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1313, file: !1314, line: 27, baseType: !791, size: 64, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1313, file: !1314, line: 28, baseType: !791, size: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1313, file: !1314, line: 41, baseType: !791, size: 64, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1313, file: !1314, line: 42, baseType: !1263, size: 32, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1313, file: !1314, line: 43, baseType: !1263, size: 32, offset: 352)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1313, file: !1314, line: 44, baseType: !754, size: 32, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1313, file: !1314, line: 45, baseType: !772, size: 32, offset: 416)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1313, file: !1314, line: 46, baseType: !67, size: 64, offset: 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1313, file: !1314, line: 47, baseType: !1299, size: 128, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1313, file: !1314, line: 48, baseType: !1299, size: 128, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1313, file: !1314, line: 49, baseType: !1299, size: 128, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1313, file: !1314, line: 50, baseType: !1299, size: 128, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1313, file: !1314, line: 51, baseType: !791, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1313, file: !1314, line: 52, baseType: !791, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1313, file: !1314, line: 53, baseType: !847, size: 32, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1313, file: !1314, line: 54, baseType: !847, size: 32, offset: 1184)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1313, file: !1314, line: 55, baseType: !791, size: 64, offset: 1216)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1205, file: !183, line: 1990, baseType: !1338, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!1341, !1149, !890, !61}
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !51, line: 66, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !63, line: 73, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !63, line: 15, baseType: !1113)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1205, file: !183, line: 1991, baseType: !1345, size: 64, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!48, !1189, !1348, !791, !791}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !183, line: 55, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1205, file: !183, line: 1993, baseType: !1351, size: 64, offset: 1088)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!48, !1189, !48}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1205, file: !183, line: 1994, baseType: !1355, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!48, !1189, !1149, !659, !18, !50}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1205, file: !183, line: 1997, baseType: !1359, size: 64, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!48, !1228, !1189, !659, !50}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1205, file: !183, line: 1999, baseType: !1363, size: 64, offset: 1280)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!1199, !1228, !1149, !48}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1205, file: !183, line: 2001, baseType: !1367, size: 64, offset: 1344)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!48, !1228, !1149, !1199, !48}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1205, file: !183, line: 2003, baseType: !1371, size: 64, offset: 1408)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!48, !1228, !1149, !1374}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !183, line: 76, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1205, file: !183, line: 2005, baseType: !1377, size: 64, offset: 1472)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!48, !1149, !1374}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1205, file: !183, line: 2006, baseType: !1381, size: 64, offset: 1536)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1384, !1189}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !183, line: 3192, size: 192, elements: !1386)
!1386 = !{!1387, !1394}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1385, file: !183, line: 3193, baseType: !1388, size: 128)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1389, line: 296, size: 128, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1390 = !{!1391, !1392, !1393}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1388, file: !1389, line: 297, baseType: !85, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1388, file: !1389, line: 299, baseType: !292, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1388, file: !1389, line: 300, baseType: !46, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1385, file: !183, line: 3194, baseType: !847, size: 32, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1190, file: !183, line: 655, baseType: !1396, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !183, line: 1190, size: 10752, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !2761, !2893, !2933, !3016, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3033, !3037, !3038, !3506, !3509, !3567, !3570, !3571, !3572, !3613, !5081, !5082, !5083, !5084, !5085, !5086, !5089, !5090, !5096, !5097, !5098, !5099, !5158, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1397, file: !183, line: 1191, baseType: !123, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1397, file: !183, line: 1192, baseType: !1263, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1397, file: !183, line: 1193, baseType: !113, size: 8, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1397, file: !183, line: 1194, baseType: !65, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1397, file: !183, line: 1195, baseType: !67, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1397, file: !183, line: 1196, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !183, line: 2366, size: 576, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1417, !1421, !1425, !1429, !2749, !2750, !2751, !2753, !2754, !2755, !2757, !2758, !2759, !2760}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !183, line: 2367, baseType: !43, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1406, file: !183, line: 2368, baseType: !48, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1406, file: !183, line: 2376, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!48, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1416, line: 32, flags: DIFlagFwdDecl)
!1416 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1406, file: !183, line: 2377, baseType: !1418, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !183, line: 75, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1406, file: !183, line: 2378, baseType: !1422, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!1149, !1405, !48, !43, !46}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1406, file: !183, line: 2380, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !1396}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1406, file: !183, line: 2381, baseType: !1430, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !134, line: 402, size: 9216, align: 512, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1439, !2411, !2437, !2438, !2439, !2440, !2444, !2447, !2448, !2449, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2514, !2518, !2536, !2554, !2555, !2556, !2557, !2566, !2589, !2590, !2593, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2607, !2608, !2707, !2715, !2716, !2717, !2719, !2723, !2724, !2728, !2729, !2730, !2731, !2733, !2734, !2735, !2742, !2743, !2744, !2748}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1431, file: !134, line: 403, baseType: !133, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1431, file: !134, line: 406, baseType: !123, size: 128, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1431, file: !134, line: 409, baseType: !1436, size: 448, offset: 192)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 56)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1431, file: !134, line: 417, baseType: !1440, size: 768, offset: 640)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !134, line: 45, size: 768, elements: !1441)
!1441 = !{!1442, !2405, !2406, !2407, !2410}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1440, file: !134, line: 46, baseType: !1443, size: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1444, line: 64, size: 512, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1445 = !{!1446, !1447, !1448, !1450, !1492, !2262, !2395, !2400, !2401, !2402, !2403, !2404}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !1444, line: 65, baseType: !43, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1443, file: !1444, line: 66, baseType: !123, size: 128, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1443, file: !1444, line: 67, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1443, file: !1444, line: 68, baseType: !1451, size: 64, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1444, line: 168, size: 768, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1452, file: !1444, line: 169, baseType: !123, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1452, file: !1444, line: 170, baseType: !85, size: 32, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1452, file: !1444, line: 171, baseType: !1443, size: 512, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1452, file: !1444, line: 172, baseType: !1458, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1444, line: 133, size: 192, elements: !1461)
!1461 = !{!1462, !1469, !1474}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1460, file: !1444, line: 134, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!48, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1460, file: !1444, line: 135, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!43, !1467}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1460, file: !1444, line: 136, baseType: !1475, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!48, !1467, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1444, line: 125, size: 20736, elements: !1481)
!1481 = !{!1482, !1484, !1486, !1487, !1491}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1480, file: !1444, line: 126, baseType: !1483, size: 192)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 192, elements: !711)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1480, file: !1444, line: 127, baseType: !1485, size: 4096, offset: 192)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 4096, elements: !333)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1480, file: !1444, line: 128, baseType: !48, size: 32, offset: 4288)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1480, file: !1444, line: 129, baseType: !1488, size: 16384, offset: 4320)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 2048)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1480, file: !1444, line: 130, baseType: !48, size: 32, offset: 20704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1443, file: !1444, line: 69, baseType: !1493, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1444, line: 116, size: 384, elements: !1496)
!1496 = !{!1497, !1501, !1520, !2226, !2254, !2258}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1495, file: !1444, line: 117, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1449}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1495, file: !1444, line: 118, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1505, line: 254, size: 128, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1506 = !{!1507, !1516}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1504, file: !1505, line: 255, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!1341, !1449, !1511, !890}
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1505, line: 30, size: 128, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1512, file: !1505, line: 31, baseType: !43, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1512, file: !1505, line: 32, baseType: !50, size: 16, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1504, file: !1505, line: 256, baseType: !1517, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1341, !1449, !1511, !43, !61}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1495, file: !1444, line: 119, baseType: !1521, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1505, line: 84, size: 320, elements: !1525)
!1525 = !{!1526, !1527, !1531, !2222, !2224}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1524, file: !1505, line: 85, baseType: !43, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1524, file: !1505, line: 86, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!50, !1449, !1511, !48}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1524, file: !1505, line: 88, baseType: !1532, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!50, !1449, !1535, !48}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1505, line: 175, size: 512, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !2213, !2217, !2218}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1536, file: !1505, line: 176, baseType: !1512, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1536, file: !1505, line: 177, baseType: !61, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1536, file: !1505, line: 178, baseType: !46, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1536, file: !1505, line: 179, baseType: !1542, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !183, line: 472, size: 1536, align: 64, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1558, !1559, !1560, !2205, !2206, !2207, !2210, !2211, !2212}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1546, file: !183, line: 473, baseType: !1189, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1546, file: !183, line: 474, baseType: !1388, size: 128, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1546, file: !183, line: 475, baseType: !822, size: 320, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1546, file: !183, line: 476, baseType: !292, size: 32, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1546, file: !183, line: 477, baseType: !75, size: 32, offset: 544)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1546, file: !183, line: 482, baseType: !1554, size: 128, offset: 576)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !815, line: 26, size: 128, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1554, file: !815, line: 27, baseType: !1093, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1554, file: !815, line: 28, baseType: !819, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1546, file: !183, line: 483, baseType: !65, size: 64, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1546, file: !183, line: 484, baseType: !65, size: 64, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1546, file: !183, line: 485, baseType: !1561, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !183, line: 404, size: 1280, elements: !1564)
!1564 = !{!1565, !2030, !2100, !2104, !2108, !2114, !2120, !2124, !2129, !2133, !2137, !2141, !2169, !2173, !2177, !2181, !2186, !2190, !2197, !2201}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1563, file: !183, line: 405, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!48, !1569, !2010}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !149, line: 74, size: 512, align: 128, elements: !1571)
!1571 = !{!1572, !1573, !2004, !2009}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !149, line: 75, baseType: !65, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !149, line: 83, baseType: !1574, size: 320, offset: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !149, line: 83, size: 320, elements: !1575)
!1575 = !{!1576, !1597, !1611, !1615, !2003}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !149, line: 84, baseType: !1577, size: 320)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !149, line: 84, size: 320, elements: !1578)
!1578 = !{!1579, !1590, !1591, !1596}
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !149, line: 90, baseType: !1580, size: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !149, line: 90, size: 128, elements: !1581)
!1581 = !{!1582, !1583, !1588, !1589}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1580, file: !149, line: 91, baseType: !123, size: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !149, line: 94, baseType: !1584, size: 128)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1580, file: !149, line: 94, size: 128, elements: !1585)
!1585 = !{!1586, !1587}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1584, file: !149, line: 96, baseType: !46, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1584, file: !149, line: 98, baseType: !18, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1580, file: !149, line: 102, baseType: !123, size: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1580, file: !149, line: 103, baseType: !123, size: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1577, file: !149, line: 106, baseType: !1545, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !149, line: 107, baseType: !1592, size: 64, offset: 192)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !149, line: 107, size: 64, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1592, file: !149, line: 108, baseType: !65, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1592, file: !149, line: 109, baseType: !65, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1577, file: !149, line: 117, baseType: !65, size: 64, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !149, line: 119, baseType: !1598, size: 320)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !149, line: 119, size: 320, elements: !1599)
!1599 = !{!1600, !1601, !1604, !1605, !1606}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1598, file: !149, line: 124, baseType: !65, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1598, file: !149, line: 125, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !149, line: 125, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1598, file: !149, line: 126, baseType: !65, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1598, file: !149, line: 127, baseType: !65, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1598, file: !149, line: 128, baseType: !1607, size: 64, offset: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1598, file: !149, line: 128, size: 64, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1607, file: !149, line: 133, baseType: !65, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1607, file: !149, line: 138, baseType: !353, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !149, line: 141, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !149, line: 141, size: 64, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1612, file: !149, line: 142, baseType: !65, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !149, line: 144, baseType: !1616, size: 128)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1574, file: !149, line: 144, size: 128, elements: !1617)
!1617 = !{!1618, !2002}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1616, file: !149, line: 146, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !141, line: 126, size: 1216, elements: !1621)
!1621 = !{!1622, !1632, !1653, !1654, !1655, !1656, !1657, !1984, !1985, !1986}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1620, file: !141, line: 127, baseType: !1623, size: 384)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !141, line: 21, size: 384, elements: !1624)
!1624 = !{!1625, !1626, !1628, !1629, !1630, !1631}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1623, file: !141, line: 22, baseType: !65, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1623, file: !141, line: 23, baseType: !1627, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1623, file: !141, line: 24, baseType: !1627, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1623, file: !141, line: 25, baseType: !65, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1623, file: !141, line: 26, baseType: !65, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1623, file: !141, line: 27, baseType: !65, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1620, file: !141, line: 128, baseType: !1633, size: 128, offset: 384)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1634, line: 105, size: 128, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1633, file: !1634, line: 110, baseType: !65, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1633, file: !1634, line: 118, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1634, line: 95, size: 448, elements: !1640)
!1640 = !{!1641, !1642, !1648, !1649, !1650, !1651, !1652}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1639, file: !1634, line: 96, baseType: !353, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1639, file: !1634, line: 97, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1634, line: 60, baseType: !1645)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1639, file: !1634, line: 98, baseType: !1643, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1639, file: !1634, line: 99, baseType: !405, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1639, file: !1634, line: 100, baseType: !405, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1639, file: !1634, line: 101, baseType: !672, size: 128, align: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1639, file: !1634, line: 102, baseType: !1647, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1620, file: !141, line: 129, baseType: !1051, size: 256, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1620, file: !141, line: 130, baseType: !140, size: 32, offset: 768)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !141, line: 131, baseType: !18, size: 32, offset: 800)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1620, file: !141, line: 132, baseType: !65, size: 64, offset: 832)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1620, file: !141, line: 133, baseType: !1658, size: 64, offset: 896)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !141, line: 77, size: 192, elements: !1661)
!1661 = !{!1662, !1666, !1980}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1660, file: !141, line: 83, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1569}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1660, file: !141, line: 89, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !149, line: 1184, baseType: !18)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1673, line: 512, size: 896, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1674 = !{!1675, !1947, !1948, !1955, !1962, !1972, !1973, !1974, !1976, !1978}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1673, line: 513, baseType: !1676, size: 320)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 513, size: 320, elements: !1677)
!1677 = !{!1678, !1943, !1944, !1945, !1946}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1676, file: !1673, line: 514, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !149, line: 625, size: 1344, elements: !1681)
!1681 = !{!1682, !1691, !1848, !1854, !1861, !1862, !1867, !1868, !1873, !1874, !1877, !1936, !1937, !1938, !1939, !1940, !1941}
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !149, line: 628, baseType: !1683, size: 128)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !149, line: 628, size: 128, elements: !1684)
!1684 = !{!1685, !1690}
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !149, line: 629, baseType: !1686, size: 128)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !149, line: 629, size: 128, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1686, file: !149, line: 631, baseType: !65, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1686, file: !149, line: 632, baseType: !65, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1683, file: !149, line: 635, baseType: !672, size: 128, align: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1680, file: !149, line: 639, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !149, line: 733, size: 10240, elements: !1694)
!1694 = !{!1695, !1846}
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !149, line: 734, baseType: !1696, size: 10240)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1693, file: !149, line: 734, size: 10240, elements: !1697)
!1697 = !{!1698, !1702, !1716, !1720, !1721, !1722, !1723, !1724, !1725, !1734, !1735, !1736, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1775, !1777, !1780, !1826, !1827, !1828, !1831, !1832, !1833, !1836, !1837, !1838, !1844, !1845}
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !149, line: 739, baseType: !1699, size: 512, align: 512)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1696, file: !149, line: 739, size: 512, align: 512, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1699, file: !149, line: 747, baseType: !75, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1696, file: !149, line: 750, baseType: !1703, size: 128, offset: 512)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1704, line: 218, size: 128, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1705 = !{!1706, !1714, !1715}
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !1704, line: 219, baseType: !1707, size: 32)
!1707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !1704, line: 219, size: 32, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1707, file: !1704, line: 220, baseType: !85, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1707, file: !1704, line: 221, baseType: !1711)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1704, line: 197, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1704, line: 197, elements: !1713)
!1713 = !{}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1703, file: !1704, line: 223, baseType: !18, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1703, file: !1704, line: 224, baseType: !46, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1696, file: !149, line: 752, baseType: !1717, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!65, !659, !65, !65, !65, !65}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1696, file: !149, line: 756, baseType: !65, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1696, file: !149, line: 757, baseType: !65, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1696, file: !149, line: 760, baseType: !65, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1696, file: !149, line: 761, baseType: !65, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1696, file: !149, line: 763, baseType: !65, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1696, file: !149, line: 764, baseType: !1726, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1728, line: 299, baseType: !1729)
!1728 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1728, line: 299, size: 64, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1729, file: !1728, line: 299, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1733, line: 18, baseType: !65)
!1733 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1696, file: !149, line: 773, baseType: !75, size: 32, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1696, file: !149, line: 785, baseType: !75, size: 32, offset: 1120)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1696, file: !149, line: 795, baseType: !1737, size: 64, offset: 1152)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !149, line: 726, size: 128, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1738, file: !149, line: 727, baseType: !791, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1738, file: !149, line: 728, baseType: !48, size: 32, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1696, file: !149, line: 801, baseType: !65, size: 64, offset: 1216)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1696, file: !149, line: 804, baseType: !353, size: 64, offset: 1280)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1696, file: !149, line: 806, baseType: !48, size: 32, offset: 1344)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1696, file: !149, line: 808, baseType: !85, size: 32, offset: 1376)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1696, file: !149, line: 823, baseType: !822, size: 320, offset: 1408)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1696, file: !149, line: 825, baseType: !123, size: 128, offset: 1728)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1696, file: !149, line: 845, baseType: !48, size: 32, offset: 1856)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1696, file: !149, line: 849, baseType: !65, size: 64, offset: 1920)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1696, file: !149, line: 850, baseType: !65, size: 64, offset: 1984)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1696, file: !149, line: 852, baseType: !65, size: 64, offset: 2048)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1696, file: !149, line: 853, baseType: !65, size: 64, offset: 2112)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1696, file: !149, line: 854, baseType: !355, size: 64, offset: 2176)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1696, file: !149, line: 855, baseType: !65, size: 64, offset: 2240)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1696, file: !149, line: 856, baseType: !65, size: 64, offset: 2304)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1696, file: !149, line: 857, baseType: !65, size: 64, offset: 2368)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1696, file: !149, line: 858, baseType: !65, size: 64, offset: 2432)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1696, file: !149, line: 865, baseType: !1160, size: 32, offset: 2496)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1696, file: !149, line: 867, baseType: !85, size: 32, offset: 2528)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1696, file: !149, line: 869, baseType: !65, size: 64, offset: 2560)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1696, file: !149, line: 869, baseType: !65, size: 64, offset: 2624)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1696, file: !149, line: 869, baseType: !65, size: 64, offset: 2688)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1696, file: !149, line: 869, baseType: !65, size: 64, offset: 2752)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1696, file: !149, line: 870, baseType: !65, size: 64, offset: 2816)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1696, file: !149, line: 870, baseType: !65, size: 64, offset: 2880)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1696, file: !149, line: 870, baseType: !65, size: 64, offset: 2944)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1696, file: !149, line: 871, baseType: !65, size: 64, offset: 3008)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1696, file: !149, line: 871, baseType: !65, size: 64, offset: 3072)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1696, file: !149, line: 871, baseType: !65, size: 64, offset: 3136)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1696, file: !149, line: 871, baseType: !65, size: 64, offset: 3200)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1696, file: !149, line: 873, baseType: !1772, size: 3328, offset: 3264)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 3328, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 52)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1696, file: !149, line: 875, baseType: !1776, size: 1280, offset: 6592)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 1280, elements: !737)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1696, file: !149, line: 877, baseType: !1778, size: 64, offset: 7872)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !149, line: 877, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1696, file: !149, line: 880, baseType: !1781, size: 1088, offset: 7936)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1782, line: 72, baseType: !1783)
!1782 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1782, line: 23, size: 1088, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1792, !1793, !1794, !1795, !1822, !1823, !1824}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1783, file: !1782, line: 28, baseType: !791, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1783, file: !1782, line: 38, baseType: !355, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1783, file: !1782, line: 40, baseType: !65, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1783, file: !1782, line: 43, baseType: !822, size: 320, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1783, file: !1782, line: 44, baseType: !1790, size: 64, offset: 512)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1782, line: 44, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1783, file: !1782, line: 48, baseType: !65, size: 64, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1783, file: !1782, line: 59, baseType: !349, size: 256, offset: 640)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1783, file: !1782, line: 60, baseType: !46, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1783, file: !1782, line: 61, baseType: !1796, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1799, line: 13, size: 1216, elements: !1800)
!1799 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1798, file: !1799, line: 14, baseType: !46, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1798, file: !1799, line: 15, baseType: !65, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1798, file: !1799, line: 17, baseType: !65, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1798, file: !1799, line: 17, baseType: !65, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1798, file: !1799, line: 18, baseType: !65, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1798, file: !1799, line: 18, baseType: !65, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1798, file: !1799, line: 19, baseType: !1808, size: 64, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1798, file: !1799, line: 21, baseType: !1113, size: 64, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1798, file: !1799, line: 23, baseType: !1113, size: 64, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1798, file: !1799, line: 24, baseType: !1113, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1798, file: !1799, line: 25, baseType: !1113, size: 64, offset: 640)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1798, file: !1799, line: 26, baseType: !1113, size: 64, offset: 704)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1798, file: !1799, line: 27, baseType: !1113, size: 64, offset: 768)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1798, file: !1799, line: 28, baseType: !1113, size: 64, offset: 832)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1798, file: !1799, line: 29, baseType: !1113, size: 64, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1798, file: !1799, line: 30, baseType: !1113, size: 64, offset: 960)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1798, file: !1799, line: 31, baseType: !1113, size: 64, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1798, file: !1799, line: 32, baseType: !1113, size: 64, offset: 1088)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1798, file: !1799, line: 33, baseType: !1113, size: 64, offset: 1152)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1783, file: !1782, line: 63, baseType: !75, size: 32, offset: 1024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1783, file: !1782, line: 69, baseType: !119, size: 16, offset: 1056)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1783, file: !1782, line: 70, baseType: !1825, size: 16, offset: 1072)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !110, line: 18, baseType: !475)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !149, line: 882, baseType: !65, size: 64, offset: 9024)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1696, file: !149, line: 885, baseType: !85, size: 32, offset: 9088)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1696, file: !149, line: 886, baseType: !1829, size: 64, offset: 9152)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !149, line: 732, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1696, file: !149, line: 901, baseType: !963, size: 64, offset: 9216)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1696, file: !149, line: 904, baseType: !659, size: 64, offset: 9280)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1696, file: !149, line: 906, baseType: !1834, size: 64, offset: 9344)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !149, line: 906, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1696, file: !149, line: 930, baseType: !75, size: 32, offset: 9408)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1696, file: !149, line: 933, baseType: !75, size: 32, offset: 9440)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1696, file: !149, line: 935, baseType: !1839, size: 64, offset: 9472)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !270, line: 103, size: 64, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1839, file: !270, line: 104, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !270, line: 101, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1696, file: !149, line: 940, baseType: !353, size: 64, offset: 9536)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1696, file: !149, line: 942, baseType: !1012, size: 256, offset: 9600)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1693, file: !149, line: 986, baseType: !1847, offset: 10240)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !750)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1680, file: !149, line: 640, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1728, line: 297, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1728, line: 297, size: 64, elements: !1851)
!1851 = !{!1852}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1850, file: !1728, line: 297, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1733, line: 19, baseType: !65)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !149, line: 646, baseType: !1855, size: 64, offset: 256)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !149, line: 646, size: 64, elements: !1856)
!1856 = !{!1857, !1860}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1855, file: !149, line: 647, baseType: !1858, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !149, line: 542, baseType: !65)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1855, file: !149, line: 648, baseType: !1859, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1680, file: !149, line: 666, baseType: !48, size: 32, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1680, file: !149, line: 667, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !149, line: 579, size: 320, elements: !1865)
!1865 = !{!1866}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1864, file: !149, line: 580, baseType: !822, size: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1680, file: !149, line: 670, baseType: !405, size: 8, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1680, file: !149, line: 681, baseType: !1869, size: 256, offset: 512)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !149, line: 678, size: 256, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1869, file: !149, line: 679, baseType: !814, size: 192, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1869, file: !149, line: 680, baseType: !65, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1680, file: !149, line: 689, baseType: !123, size: 128, offset: 768)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1680, file: !149, line: 691, baseType: !1875, size: 64, offset: 896)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !149, line: 691, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1680, file: !149, line: 694, baseType: !1878, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1673, line: 563, size: 1024, elements: !1881)
!1881 = !{!1882, !1886, !1887, !1891, !1895, !1899, !1900, !1904, !1908, !1912, !1913, !1914, !1918, !1922, !1928, !1932}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1880, file: !1673, line: 564, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1679}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1880, file: !1673, line: 569, baseType: !1883, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1880, file: !1673, line: 571, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!48, !1679, !65}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1880, file: !1673, line: 572, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!48, !1679}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1880, file: !1673, line: 578, baseType: !1896, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!48, !1679, !65, !65, !65}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1880, file: !1673, line: 580, baseType: !1667, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1880, file: !1673, line: 581, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1670, !1671, !18}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1880, file: !1673, line: 582, baseType: !1905, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!1670, !1671, !65, !65}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1880, file: !1673, line: 584, baseType: !1909, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!65, !1679}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1880, file: !1673, line: 588, baseType: !1667, size: 64, offset: 576)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1880, file: !1673, line: 591, baseType: !1667, size: 64, offset: 640)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1880, file: !1673, line: 597, baseType: !1915, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!48, !1679, !65, !46, !48, !48}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1880, file: !1673, line: 603, baseType: !1919, size: 64, offset: 768)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!43, !1679}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1880, file: !1673, line: 613, baseType: !1923, size: 64, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!48, !1679, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !149, line: 717, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1880, file: !1673, line: 625, baseType: !1929, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1926, !1679, !65}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1880, file: !1673, line: 633, baseType: !1933, size: 64, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1569, !1679, !65}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1680, file: !149, line: 697, baseType: !65, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1680, file: !149, line: 699, baseType: !659, size: 64, offset: 1088)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1680, file: !149, line: 700, baseType: !46, size: 64, offset: 1152)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1680, file: !149, line: 711, baseType: !353, size: 64, offset: 1216)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1680, file: !149, line: 717, baseType: !1926, size: 64, offset: 1280)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1680, file: !149, line: 722, baseType: !1942, offset: 1344)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !149, line: 570, elements: !1713)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1676, file: !1673, line: 515, baseType: !292, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1676, file: !1673, line: 516, baseType: !65, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1676, file: !1673, line: 517, baseType: !65, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1676, file: !1673, line: 518, baseType: !65, size: 64, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1673, line: 520, baseType: !148, size: 32, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1672, file: !1673, line: 522, baseType: !1949, size: 64, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1733, line: 22, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1733, line: 22, size: 64, elements: !1952)
!1952 = !{!1953}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1951, file: !1733, line: 22, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1733, line: 15, baseType: !65)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1672, file: !1673, line: 524, baseType: !1956, size: 64, offset: 448)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1728, line: 372, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1728, line: 372, size: 64, elements: !1959)
!1959 = !{!1960}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1958, file: !1728, line: 372, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1733, line: 16, baseType: !65)
!1962 = !DIDerivedType(tag: DW_TAG_member, scope: !1672, file: !1673, line: 527, baseType: !1963, size: 64, offset: 512)
!1963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1672, file: !1673, line: 527, size: 64, elements: !1964)
!1964 = !{!1965, !1971}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1963, file: !1673, line: 528, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1733, line: 21, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1733, line: 21, size: 64, elements: !1968)
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1967, file: !1733, line: 21, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1733, line: 14, baseType: !65)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1963, file: !1673, line: 529, baseType: !1950, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1672, file: !1673, line: 534, baseType: !1569, size: 64, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1672, file: !1673, line: 535, baseType: !1569, size: 64, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1672, file: !1673, line: 541, baseType: !1975, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1672, file: !1673, line: 545, baseType: !1977, size: 64, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1672, file: !1673, line: 549, baseType: !1979, size: 64, offset: 832)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1728, line: 520, baseType: !1569)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1660, file: !141, line: 100, baseType: !1981, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!48, !1619, !65, !65, !48}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1620, file: !141, line: 134, baseType: !46, size: 64, offset: 960)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1620, file: !141, line: 135, baseType: !48, size: 32, offset: 1024)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !141, line: 136, baseType: !1987, size: 128, offset: 1088)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !141, line: 136, size: 128, elements: !1988)
!1988 = !{!1989, !1995}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1987, file: !141, line: 137, baseType: !1990, size: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1991, line: 6, size: 128, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1990, file: !1991, line: 7, baseType: !791, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1990, file: !1991, line: 8, baseType: !791, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !141, line: 138, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !141, line: 138, elements: !1997)
!1997 = !{!1998, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1996, file: !141, line: 138, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !141, line: 138, elements: !1713)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1996, file: !141, line: 138, baseType: !2001)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1990, elements: !750)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1616, file: !149, line: 147, baseType: !46, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1574, file: !149, line: 161, baseType: !672, size: 128, align: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !149, line: 164, baseType: !2005, size: 32, offset: 384)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !149, line: 164, size: 32, elements: !2006)
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2005, file: !149, line: 169, baseType: !75, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2005, file: !149, line: 177, baseType: !18, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1570, file: !149, line: 181, baseType: !75, size: 32, offset: 416)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !165, line: 42, size: 384, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2011, file: !165, line: 43, baseType: !1113, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2011, file: !165, line: 45, baseType: !1113, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2011, file: !165, line: 52, baseType: !67, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2011, file: !165, line: 53, baseType: !67, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2011, file: !165, line: 55, baseType: !164, size: 32, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2011, file: !165, line: 57, baseType: !18, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2011, file: !165, line: 58, baseType: !18, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2011, file: !165, line: 59, baseType: !18, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2011, file: !165, line: 60, baseType: !18, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2011, file: !165, line: 61, baseType: !18, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2011, file: !165, line: 62, baseType: !18, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2011, file: !165, line: 63, baseType: !18, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2011, file: !165, line: 71, baseType: !18, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2011, file: !165, line: 78, baseType: !2027, size: 64, offset: 320)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !165, line: 78, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1563, file: !183, line: 406, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!48, !659, !2034}
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !149, line: 293, size: 1536, elements: !2036)
!2036 = !{!2037, !2067, !2081}
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !149, line: 295, baseType: !2038, size: 512)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !149, line: 295, size: 512, elements: !2039)
!2039 = !{!2040, !2066}
!2040 = !DIDerivedType(tag: DW_TAG_member, scope: !2038, file: !149, line: 296, baseType: !2041, size: 448)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2038, file: !149, line: 296, size: 448, elements: !2042)
!2042 = !{!2043, !2044, !2053, !2054, !2055, !2064, !2065}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !149, line: 298, baseType: !65, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !149, line: 299, baseType: !2045, size: 128, offset: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !149, line: 299, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2045, file: !149, line: 300, baseType: !123, size: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !149, line: 302, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !149, line: 302, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2049, file: !149, line: 303, baseType: !46, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2049, file: !149, line: 305, baseType: !18, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2041, file: !149, line: 310, baseType: !1545, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2041, file: !149, line: 311, baseType: !65, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2041, file: !149, line: 312, baseType: !2056, size: 64, offset: 320)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !149, line: 312, size: 64, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2056, file: !149, line: 313, baseType: !46, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2056, file: !149, line: 314, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !149, line: 257, baseType: !2061)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 255, size: 64, elements: !2062)
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2061, file: !149, line: 256, baseType: !65, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2041, file: !149, line: 316, baseType: !75, size: 32, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2041, file: !149, line: 317, baseType: !75, size: 32, offset: 416)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2038, file: !149, line: 323, baseType: !1570, size: 512, align: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !149, line: 325, baseType: !2068, size: 512, offset: 512)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !149, line: 325, size: 512, elements: !2069)
!2069 = !{!2070, !2080}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !149, line: 326, baseType: !2071, size: 320)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !149, line: 326, size: 320, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2071, file: !149, line: 327, baseType: !65, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2071, file: !149, line: 328, baseType: !65, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2071, file: !149, line: 329, baseType: !65, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2071, file: !149, line: 331, baseType: !75, size: 32, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2071, file: !149, line: 332, baseType: !75, size: 32, offset: 224)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2071, file: !149, line: 333, baseType: !75, size: 32, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2071, file: !149, line: 335, baseType: !18, size: 32, offset: 288)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2068, file: !149, line: 339, baseType: !1570, size: 512, align: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2035, file: !149, line: 341, baseType: !2082, size: 512, offset: 1024)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !149, line: 341, size: 512, elements: !2083)
!2083 = !{!2084, !2093, !2099}
!2084 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !149, line: 342, baseType: !2085, size: 384)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2082, file: !149, line: 342, size: 384, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2085, file: !149, line: 343, baseType: !65, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2085, file: !149, line: 344, baseType: !65, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2085, file: !149, line: 346, baseType: !46, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2085, file: !149, line: 347, baseType: !46, size: 64, offset: 192)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2085, file: !149, line: 348, baseType: !46, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2085, file: !149, line: 349, baseType: !46, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !149, line: 352, baseType: !2094, size: 256)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2082, file: !149, line: 352, size: 256, elements: !2095)
!2095 = !{!2096, !2097, !2098}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2094, file: !149, line: 353, baseType: !65, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2094, file: !149, line: 354, baseType: !65, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2094, file: !149, line: 356, baseType: !123, size: 128, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2082, file: !149, line: 359, baseType: !1570, size: 512, align: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1563, file: !183, line: 409, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!48, !1545, !2010}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1563, file: !183, line: 412, baseType: !2105, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!405, !1545, !2034}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1563, file: !183, line: 414, baseType: !2109, size: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !183, line: 310, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1563, file: !183, line: 416, baseType: !2115, size: 64, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!48, !659, !1545, !67, !18, !2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1563, file: !183, line: 419, baseType: !2121, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!48, !659, !1545, !67, !18, !18, !1569, !46}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1563, file: !183, line: 424, baseType: !2125, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!2128, !1545, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !51, line: 131, baseType: !791)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1563, file: !183, line: 425, baseType: !2130, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !2034, !61, !61}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1563, file: !183, line: 426, baseType: !2134, size: 64, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!405, !2034, !292}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1563, file: !183, line: 427, baseType: !2138, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2034}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1563, file: !183, line: 428, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!1341, !2145, !2167}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !183, line: 373, size: 384, elements: !2147)
!2147 = !{!2148, !2149, !2150, !2154, !2155, !2156, !2157}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2146, file: !183, line: 374, baseType: !659, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2146, file: !183, line: 375, baseType: !67, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2146, file: !183, line: 376, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !2145, !1113}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2146, file: !183, line: 377, baseType: !46, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2146, file: !183, line: 378, baseType: !48, size: 32, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2146, file: !183, line: 379, baseType: !119, size: 16, offset: 288)
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !183, line: 380, baseType: !2158, size: 64, offset: 320)
!2158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !183, line: 380, size: 64, elements: !2159)
!2159 = !{!2160, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2158, file: !183, line: 386, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !183, line: 386, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2158, file: !183, line: 395, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!1341, !46}
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !183, line: 69, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1563, file: !183, line: 433, baseType: !2170, size: 64, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!48, !1545, !2034, !2034, !169}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1563, file: !183, line: 435, baseType: !2174, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!48, !2034}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1563, file: !183, line: 436, baseType: !2178, size: 64, offset: 896)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!405, !2034, !61, !61}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1563, file: !183, line: 438, baseType: !2182, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2034, !2185, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1563, file: !183, line: 439, baseType: !2187, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!48, !1545, !1569}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1563, file: !183, line: 442, baseType: !2191, size: 64, offset: 1088)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!48, !2194, !659, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !183, line: 66, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1563, file: !183, line: 444, baseType: !2198, size: 64, offset: 1152)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !659}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1563, file: !183, line: 445, baseType: !2202, size: 64, offset: 1216)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!48, !2145, !2167}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !183, line: 486, baseType: !65, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1546, file: !183, line: 487, baseType: !822, size: 320, offset: 960)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1546, file: !183, line: 488, baseType: !2208, size: 32, offset: 1280)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2209, line: 8, baseType: !847)
!2209 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1546, file: !183, line: 489, baseType: !85, size: 32, offset: 1312)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1546, file: !183, line: 490, baseType: !123, size: 128, offset: 1344)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1546, file: !183, line: 491, baseType: !46, size: 64, offset: 1472)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1536, file: !1505, line: 180, baseType: !2214, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!1341, !659, !1449, !1535, !890, !67, !61}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1536, file: !1505, line: 182, baseType: !2214, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1536, file: !1505, line: 184, baseType: !2219, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!48, !659, !1449, !1535, !1679}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1524, file: !1505, line: 90, baseType: !2223, size: 64, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1524, file: !1505, line: 91, baseType: !2225, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1495, file: !1444, line: 120, baseType: !2227, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2230, !1467}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !177, line: 39, size: 384, elements: !2233)
!2233 = !{!2234, !2235, !2239, !2243, !2249, !2253}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2232, file: !177, line: 40, baseType: !176, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2232, file: !177, line: 41, baseType: !2236, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!405}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2232, file: !177, line: 42, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!46}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2232, file: !177, line: 43, baseType: !2244, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1808, !2247}
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !177, line: 19, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2232, file: !177, line: 44, baseType: !2250, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!1808}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2232, file: !177, line: 45, baseType: !1220, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1495, file: !1444, line: 121, baseType: !2255, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!1808, !1467}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1495, file: !1444, line: 122, baseType: !2259, size: 64, offset: 320)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !1467, !1076, !1077}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1443, file: !1444, line: 70, baseType: !2263, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1416, line: 190, size: 1152, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2387, !2388, !2389, !2390, !2391, !2394}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2264, file: !1416, line: 191, baseType: !75, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2264, file: !1416, line: 192, baseType: !75, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2264, file: !1416, line: 202, baseType: !2263, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2264, file: !1416, line: 203, baseType: !43, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2264, file: !1416, line: 205, baseType: !814, size: 192, align: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2264, file: !1416, line: 207, baseType: !1808, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2264, file: !1416, line: 208, baseType: !18, size: 32, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !1416, line: 209, baseType: !2274, size: 256, offset: 512)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !1416, line: 209, size: 256, elements: !2275)
!2275 = !{!2276, !2285, !2289}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2274, file: !1416, line: 210, baseType: !2277, size: 256)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1416, line: 153, size: 256, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2284}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2277, file: !1416, line: 154, baseType: !65, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2277, file: !1416, line: 156, baseType: !1093, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2277, file: !1416, line: 162, baseType: !2282, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1416, line: 162, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2277, file: !1416, line: 167, baseType: !65, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2274, file: !1416, line: 211, baseType: !2286, size: 64)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1416, line: 170, size: 64, elements: !2287)
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2286, file: !1416, line: 171, baseType: !2263, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2274, file: !1416, line: 212, baseType: !2290, size: 256)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1416, line: 174, size: 256, elements: !2291)
!2291 = !{!2292, !2382, !2385, !2386}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2290, file: !1416, line: 175, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2295)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1416, line: 271, size: 768, elements: !2296)
!2296 = !{!2297, !2355, !2359, !2360, !2361, !2362, !2363, !2367, !2368, !2369, !2370, !2378}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2295, file: !1416, line: 276, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!48, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1416, line: 251, size: 1216, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2302, file: !1416, line: 253, baseType: !2263, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2302, file: !1416, line: 254, baseType: !659, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2302, file: !1416, line: 255, baseType: !2307, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2309, line: 17, size: 960, elements: !2310)
!2309 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2340, !2341, !2344}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2308, file: !2309, line: 18, baseType: !890, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2308, file: !2309, line: 19, baseType: !61, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2308, file: !2309, line: 20, baseType: !61, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2308, file: !2309, line: 21, baseType: !61, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2308, file: !2309, line: 22, baseType: !61, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2308, file: !2309, line: 23, baseType: !67, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2308, file: !2309, line: 24, baseType: !67, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2308, file: !2309, line: 25, baseType: !349, size: 256, offset: 448)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2308, file: !2309, line: 26, baseType: !2320, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2309, line: 32, size: 256, elements: !2323)
!2323 = !{!2324, !2328, !2332, !2336}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2322, file: !2309, line: 33, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!46, !2307, !66}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2322, file: !2309, line: 34, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2307, !46}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2322, file: !2309, line: 35, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!46, !2307, !46, !66}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2322, file: !2309, line: 36, baseType: !2337, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!48, !2307, !46}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2308, file: !2309, line: 27, baseType: !48, size: 32, offset: 768)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2308, file: !2309, line: 28, baseType: !2342, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2308, file: !2309, line: 29, baseType: !46, size: 64, offset: 896)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2302, file: !1416, line: 256, baseType: !46, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2302, file: !1416, line: 259, baseType: !349, size: 256, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2302, file: !1416, line: 260, baseType: !349, size: 256, offset: 512)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2302, file: !1416, line: 261, baseType: !48, size: 32, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2302, file: !1416, line: 262, baseType: !123, size: 128, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2302, file: !1416, line: 263, baseType: !890, size: 64, offset: 960)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2302, file: !1416, line: 265, baseType: !61, size: 64, offset: 1024)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2302, file: !1416, line: 266, baseType: !405, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2302, file: !1416, line: 267, baseType: !405, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2302, file: !1416, line: 268, baseType: !1878, size: 64, offset: 1152)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2295, file: !1416, line: 277, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2301}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2295, file: !1416, line: 290, baseType: !2337, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2295, file: !1416, line: 292, baseType: !2325, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2295, file: !1416, line: 293, baseType: !2333, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2295, file: !1416, line: 294, baseType: !2329, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2295, file: !1416, line: 296, baseType: !2364, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!1341, !2301, !890, !61, !67}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2295, file: !1416, line: 306, baseType: !61, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2295, file: !1416, line: 313, baseType: !405, size: 8, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2295, file: !1416, line: 314, baseType: !2364, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2295, file: !1416, line: 317, baseType: !2371, size: 64, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!2374, !2301, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2375, line: 59, baseType: !18)
!2375 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1416, line: 31, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2295, file: !1416, line: 320, baseType: !2379, size: 64, offset: 704)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!48, !2301, !1679}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2290, file: !1416, line: 176, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1416, line: 35, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2290, file: !1416, line: 177, baseType: !67, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2290, file: !1416, line: 178, baseType: !2263, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2264, file: !1416, line: 215, baseType: !46, size: 64, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2264, file: !1416, line: 221, baseType: !791, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !1416, line: 223, baseType: !52, size: 16, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2264, file: !1416, line: 224, baseType: !50, size: 16, offset: 912)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2264, file: !1416, line: 225, baseType: !2392, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1416, line: 36, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2264, file: !1416, line: 227, baseType: !672, size: 128, align: 64, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1443, file: !1444, line: 71, baseType: !2396, size: 32, offset: 448)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2397, line: 19, size: 32, elements: !2398)
!2397 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2398 = !{!2399}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2396, file: !2397, line: 20, baseType: !719, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1443, file: !1444, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1443, file: !1444, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1443, file: !1444, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1443, file: !1444, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1443, file: !1444, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1440, file: !134, line: 47, baseType: !1430, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1440, file: !134, line: 48, baseType: !1449, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1440, file: !134, line: 49, baseType: !2408, size: 64, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !134, line: 49, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1440, file: !134, line: 50, baseType: !1050, size: 64, offset: 704)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1431, file: !134, line: 418, baseType: !2412, size: 64, offset: 1408)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !134, line: 53, size: 448, elements: !2414)
!2414 = !{!2415, !2416, !2421, !2425, !2429, !2433}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2413, file: !134, line: 54, baseType: !1512, size: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2413, file: !134, line: 55, baseType: !2417, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!1341, !2412, !2420, !890}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2413, file: !134, line: 57, baseType: !2422, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!1341, !2412, !2420, !43, !61}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2413, file: !134, line: 59, baseType: !2426, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !1430, !43}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2413, file: !134, line: 60, baseType: !2430, size: 64, offset: 320)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!48, !1430}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2413, file: !134, line: 61, baseType: !2434, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !1430}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1431, file: !134, line: 419, baseType: !43, size: 64, offset: 1472)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1431, file: !134, line: 420, baseType: !43, size: 64, offset: 1536)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1431, file: !134, line: 421, baseType: !1449, size: 64, offset: 1600)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1431, file: !134, line: 424, baseType: !2441, size: 64, offset: 1664)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !134, line: 424, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1431, file: !134, line: 425, baseType: !2445, size: 64, offset: 1728)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1431, file: !134, line: 426, baseType: !18, size: 32, offset: 1792)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1431, file: !134, line: 435, baseType: !349, size: 256, offset: 1856)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1431, file: !134, line: 437, baseType: !2450, size: 64, offset: 2112)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2452, line: 69, size: 320, elements: !2453)
!2452 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2453 = !{!2454, !2455, !2456, !2473, !2475, !2477, !2478}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2451, file: !2452, line: 70, baseType: !43, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2451, file: !2452, line: 71, baseType: !1430, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2451, file: !2452, line: 72, baseType: !2457, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2459)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2452, line: 47, size: 256, elements: !2460)
!2460 = !{!2461, !2462, !2468, !2472}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2459, file: !2452, line: 49, baseType: !18, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2459, file: !2452, line: 51, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!48, !43, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2459, file: !2452, line: 53, baseType: !2469, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!48, !890, !2466}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2459, file: !2452, line: 55, baseType: !1220, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2451, file: !2452, line: 73, baseType: !2474, size: 16, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2451, file: !2452, line: 74, baseType: !2476, size: 8, offset: 208)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !110, line: 16, baseType: !466)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2451, file: !2452, line: 75, baseType: !109, size: 8, offset: 216)
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2451, file: !2452, line: 76, baseType: !2479, size: 64, offset: 256)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2451, file: !2452, line: 76, size: 64, elements: !2480)
!2480 = !{!2481, !2482, !2489}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2479, file: !2452, line: 77, baseType: !46, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2479, file: !2452, line: 78, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2452, line: 86, size: 128, elements: !2486)
!2486 = !{!2487, !2488}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2485, file: !2452, line: 87, baseType: !18, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2485, file: !2452, line: 88, baseType: !890, size: 64, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2479, file: !2452, line: 79, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2492)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2452, line: 92, size: 256, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497, !2498}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2492, file: !2452, line: 94, baseType: !18, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2492, file: !2452, line: 95, baseType: !18, size: 32, offset: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2492, file: !2452, line: 96, baseType: !558, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2492, file: !2452, line: 97, baseType: !2457, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2492, file: !2452, line: 98, baseType: !46, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1431, file: !134, line: 438, baseType: !18, size: 32, offset: 2176)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1431, file: !134, line: 441, baseType: !18, size: 32, offset: 2208)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1431, file: !134, line: 442, baseType: !2441, size: 64, offset: 2240)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1431, file: !134, line: 443, baseType: !2445, size: 64, offset: 2304)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1431, file: !134, line: 444, baseType: !405, size: 8, offset: 2368)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1431, file: !134, line: 451, baseType: !405, size: 8, offset: 2376)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1431, file: !134, line: 454, baseType: !18, size: 32, offset: 2400)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1431, file: !134, line: 455, baseType: !2507, size: 64, offset: 2432)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2509, line: 23, size: 96, elements: !2510)
!2509 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2510 = !{!2511, !2512, !2513}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2508, file: !2509, line: 24, baseType: !48, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2508, file: !2509, line: 24, baseType: !48, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2508, file: !2509, line: 24, baseType: !48, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1431, file: !134, line: 458, baseType: !2515, size: 64, offset: 2496)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!48}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1431, file: !134, line: 460, baseType: !2519, size: 4032, align: 512, offset: 2560)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2520, size: 4032, elements: !2534)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !134, line: 362, size: 576, elements: !2521)
!2521 = !{!2522, !2523, !2524}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2520, file: !134, line: 363, baseType: !46, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2520, file: !134, line: 364, baseType: !18, size: 32, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2520, file: !134, line: 367, baseType: !2525, size: 448, offset: 128)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !134, line: 319, size: 448, elements: !2526)
!2526 = !{!2527, !2528}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2525, file: !134, line: 320, baseType: !1430, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2525, file: !134, line: 321, baseType: !2529, size: 384, offset: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2530, line: 40, size: 384, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2529, file: !2530, line: 41, baseType: !2533, size: 384, align: 64)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 384, align: 64, elements: !535)
!2534 = !{!2535}
!2535 = !DISubrange(count: 7)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1431, file: !134, line: 463, baseType: !2537, size: 192, offset: 6592)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2538, line: 8, size: 192, elements: !2539)
!2538 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2539 = !{!2540, !2541, !2543}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2537, file: !2538, line: 10, baseType: !18, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2537, file: !2538, line: 11, baseType: !2542, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2537, file: !2538, line: 12, baseType: !2544, size: 64, offset: 128)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2546, line: 59, size: 48, elements: !2547)
!2546 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2545, file: !2546, line: 60, baseType: !1825, size: 16)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2545, file: !2546, line: 61, baseType: !1825, size: 16, offset: 16)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2545, file: !2546, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2545, file: !2546, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2545, file: !2546, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2545, file: !2546, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1431, file: !134, line: 465, baseType: !65, size: 64, offset: 6784)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1431, file: !134, line: 469, baseType: !18, size: 32, offset: 6848)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1431, file: !134, line: 470, baseType: !123, size: 128, offset: 6912)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1431, file: !134, line: 471, baseType: !2558, size: 64, offset: 7040)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2560, line: 33, size: 96, elements: !2561)
!2560 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2559, file: !2560, line: 37, baseType: !48, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2559, file: !2560, line: 43, baseType: !48, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2559, file: !2560, line: 45, baseType: !52, size: 16, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !2560, line: 47, baseType: !52, size: 16, offset: 80)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1431, file: !134, line: 476, baseType: !2567, size: 64, offset: 7104)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !134, line: 378, size: 256, elements: !2569)
!2569 = !{!2570, !2586, !2587, !2588}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2568, file: !134, line: 379, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2573, line: 204, baseType: !2574)
!2573 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2573, line: 197, size: 192, elements: !2575)
!2575 = !{!2576, !2578, !2579, !2580, !2582, !2584}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2574, file: !2573, line: 198, baseType: !2577, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2573, line: 21, baseType: !303)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2574, file: !2573, line: 199, baseType: !113, size: 8, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2574, file: !2573, line: 200, baseType: !113, size: 8, offset: 40)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2574, file: !2573, line: 201, baseType: !2581, size: 16, offset: 48)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2573, line: 17, baseType: !120)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2574, file: !2573, line: 202, baseType: !2583, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2573, line: 16, baseType: !792)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2574, file: !2573, line: 203, baseType: !2585, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2573, line: 22, baseType: !792)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2568, file: !134, line: 380, baseType: !18, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2568, file: !134, line: 381, baseType: !890, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2568, file: !134, line: 382, baseType: !890, size: 64, offset: 192)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1431, file: !134, line: 477, baseType: !2568, size: 256, offset: 7168)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1431, file: !134, line: 480, baseType: !2591, size: 64, offset: 7424)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !134, line: 480, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1431, file: !134, line: 483, baseType: !2594, size: 64, offset: 7488)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !134, line: 483, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1431, file: !134, line: 488, baseType: !890, size: 64, offset: 7552)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1431, file: !134, line: 492, baseType: !46, size: 64, offset: 7616)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1431, file: !134, line: 493, baseType: !18, size: 32, offset: 7680)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1431, file: !134, line: 495, baseType: !46, size: 64, offset: 7744)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1431, file: !134, line: 496, baseType: !18, size: 32, offset: 7808)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1431, file: !134, line: 499, baseType: !18, size: 32, offset: 7840)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1431, file: !134, line: 500, baseType: !2603, size: 64, offset: 7872)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2605, line: 45, baseType: !2606)
!2605 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1431, file: !134, line: 503, baseType: !18, size: 32, offset: 7936)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1431, file: !134, line: 504, baseType: !2609, size: 64, offset: 8000)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2612, line: 96, size: 192, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2613 = !{!2614, !2615, !2668, !2671}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2611, file: !2612, line: 97, baseType: !18, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2611, file: !2612, line: 98, baseType: !2616, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2612, line: 24, size: 3072, elements: !2618)
!2618 = !{!2619, !2621, !2622, !2623, !2624, !2637, !2638, !2639, !2640, !2652, !2653, !2654, !2665, !2666, !2667}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2617, file: !2612, line: 26, baseType: !2620, size: 128)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 128, elements: !535)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2617, file: !2612, line: 27, baseType: !2620, size: 128, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2617, file: !2612, line: 28, baseType: !48, size: 32, offset: 256)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2617, file: !2612, line: 31, baseType: !85, size: 32, align: 512, offset: 512)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2617, file: !2612, line: 32, baseType: !2625, size: 960, offset: 576)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2626, line: 206, size: 960, elements: !2627)
!2626 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2627 = !{!2628, !2629, !2632, !2634, !2635, !2636}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2625, file: !2626, line: 207, baseType: !675, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2625, file: !2626, line: 208, baseType: !2630, size: 256, offset: 64)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2631, size: 256, elements: !737)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2625, file: !2626, line: 209, baseType: !2633, size: 256, offset: 320)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 256, elements: !737)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2625, file: !2626, line: 213, baseType: !1113, size: 64, offset: 576)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2625, file: !2626, line: 215, baseType: !1115, size: 256, offset: 640)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2625, file: !2626, line: 216, baseType: !109, size: 8, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2617, file: !2612, line: 33, baseType: !65, size: 64, offset: 1536)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2617, file: !2612, line: 34, baseType: !65, size: 64, offset: 1600)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2617, file: !2612, line: 35, baseType: !405, size: 8, offset: 1664)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2617, file: !2612, line: 36, baseType: !2641, size: 320, offset: 1728)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2642, line: 11, size: 320, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2643 = !{!2644, !2645, !2646, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2641, file: !2642, line: 16, baseType: !732, size: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2641, file: !2642, line: 17, baseType: !65, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2641, file: !2642, line: 18, baseType: !2647, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2641, file: !2642, line: 19, baseType: !847, size: 32, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2617, file: !2612, line: 37, baseType: !1012, size: 256, offset: 2048)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2617, file: !2612, line: 38, baseType: !672, size: 128, align: 64, offset: 2304)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2617, file: !2612, line: 39, baseType: !2655, size: 64, offset: 2432)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2612, line: 49, size: 768, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2664}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2656, file: !2612, line: 50, baseType: !85, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2656, file: !2612, line: 51, baseType: !2633, size: 256, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2656, file: !2612, line: 53, baseType: !2633, size: 256, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2656, file: !2612, line: 54, baseType: !65, size: 64, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2656, file: !2612, line: 55, baseType: !2655, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2656, file: !2612, line: 56, baseType: !48, size: 32, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2656, file: !2612, line: 57, baseType: !48, size: 32, offset: 736)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2617, file: !2612, line: 40, baseType: !65, size: 64, offset: 2496)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2617, file: !2612, line: 42, baseType: !48, size: 32, offset: 2560)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2617, file: !2612, line: 43, baseType: !2610, size: 64, offset: 2624)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2611, file: !2612, line: 99, baseType: !2669, offset: 128)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2670, line: 211, elements: !1713)
!2670 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2611, file: !2612, line: 100, baseType: !2672, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2612, line: 63, size: 3008, elements: !2674)
!2674 = !{!2675, !2676, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2706}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2673, file: !2612, line: 64, baseType: !2655, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2673, file: !2612, line: 65, baseType: !2677, size: 192, offset: 64)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2655, size: 192, elements: !711)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2673, file: !2612, line: 67, baseType: !48, size: 32, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2673, file: !2612, line: 68, baseType: !349, size: 256, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2673, file: !2612, line: 69, baseType: !85, size: 32, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2673, file: !2612, line: 70, baseType: !349, size: 256, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2673, file: !2612, line: 71, baseType: !65, size: 64, offset: 896)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2673, file: !2612, line: 72, baseType: !65, size: 64, offset: 960)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2673, file: !2612, line: 73, baseType: !65, size: 64, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2673, file: !2612, line: 74, baseType: !65, size: 64, offset: 1088)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2673, file: !2612, line: 75, baseType: !65, size: 64, offset: 1152)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2673, file: !2612, line: 76, baseType: !65, size: 64, offset: 1216)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2673, file: !2612, line: 77, baseType: !65, size: 64, offset: 1280)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2673, file: !2612, line: 78, baseType: !65, size: 64, offset: 1344)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2673, file: !2612, line: 79, baseType: !405, size: 8, offset: 1408)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2673, file: !2612, line: 80, baseType: !65, size: 64, offset: 1472)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2673, file: !2612, line: 81, baseType: !349, size: 256, offset: 1536)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2673, file: !2612, line: 82, baseType: !1051, size: 256, offset: 1792)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2673, file: !2612, line: 84, baseType: !75, size: 32, offset: 2048)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2673, file: !2612, line: 87, baseType: !65, size: 64, offset: 2112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2673, file: !2612, line: 88, baseType: !65, size: 64, offset: 2176)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2673, file: !2612, line: 89, baseType: !2698, size: 704, offset: 2240)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1013, line: 111, size: 704, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2705}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2698, file: !1013, line: 112, baseType: !1012, size: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2698, file: !1013, line: 113, baseType: !2641, size: 320, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2698, file: !1013, line: 116, baseType: !2703, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1013, line: 18, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2698, file: !1013, line: 117, baseType: !48, size: 32, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2673, file: !2612, line: 90, baseType: !2610, size: 64, offset: 2944)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1431, file: !134, line: 515, baseType: !2708, size: 64, offset: 8064)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2710, line: 117, size: 128, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2711 = !{!2712, !2713, !2714}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2709, file: !2710, line: 118, baseType: !808, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2709, file: !2710, line: 119, baseType: !808, size: 32, offset: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2709, file: !2710, line: 120, baseType: !1113, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1431, file: !134, line: 516, baseType: !18, size: 32, offset: 8128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1431, file: !134, line: 519, baseType: !18, size: 32, offset: 8160)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1431, file: !134, line: 520, baseType: !2718, size: 64, offset: 8192)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1431, file: !134, line: 523, baseType: !2720, size: 64, offset: 8256)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !134, line: 523, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1431, file: !134, line: 524, baseType: !18, size: 32, offset: 8320)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1431, file: !134, line: 525, baseType: !2725, size: 64, offset: 8384)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !134, line: 525, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1431, file: !134, line: 526, baseType: !18, size: 32, offset: 8448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1431, file: !134, line: 533, baseType: !46, size: 64, offset: 8512)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1431, file: !134, line: 534, baseType: !18, size: 32, offset: 8576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1431, file: !134, line: 535, baseType: !2732, size: 64, offset: 8640)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1431, file: !134, line: 536, baseType: !18, size: 32, offset: 8704)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1431, file: !134, line: 539, baseType: !48, size: 32, offset: 8736)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1431, file: !134, line: 540, baseType: !2736, size: 64, offset: 8768)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2738, line: 32, size: 64, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2739 = !{!2740, !2741}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2737, file: !2738, line: 33, baseType: !808, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2737, file: !2738, line: 34, baseType: !808, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1431, file: !134, line: 563, baseType: !123, size: 128, offset: 8832)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1431, file: !134, line: 565, baseType: !123, size: 128, offset: 8960)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1431, file: !134, line: 568, baseType: !2745, size: 64, offset: 9088)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1431, file: !134, line: 570, baseType: !75, size: 32, offset: 9152)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1406, file: !183, line: 2382, baseType: !1405, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1406, file: !183, line: 2383, baseType: !728, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1406, file: !183, line: 2385, baseType: !2752, offset: 576)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2670, line: 206, elements: !1713)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1406, file: !183, line: 2386, baseType: !2752, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1406, file: !183, line: 2387, baseType: !2752, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1406, file: !183, line: 2388, baseType: !2756, offset: 576)
!2756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2752, elements: !711)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1406, file: !183, line: 2390, baseType: !2752, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1406, file: !183, line: 2391, baseType: !2752, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1406, file: !183, line: 2392, baseType: !2752, offset: 576)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1406, file: !183, line: 2393, baseType: !2752, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1397, file: !183, line: 1197, baseType: !2762, size: 64, offset: 384)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2764)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !183, line: 2057, size: 1664, elements: !2765)
!2765 = !{!2766, !2770, !2774, !2775, !2779, !2783, !2787, !2788, !2789, !2793, !2797, !2801, !2802, !2803, !2809, !2813, !2814, !2818, !2819, !2820, !2821, !2825, !2829, !2876, !2891, !2892}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2764, file: !183, line: 2058, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!1189, !1396}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2764, file: !183, line: 2059, baseType: !2771, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !1189}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2764, file: !183, line: 2060, baseType: !2771, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2764, file: !183, line: 2062, baseType: !2776, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !1189, !48}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2764, file: !183, line: 2063, baseType: !2780, size: 64, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!48, !1189, !2010}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2764, file: !183, line: 2064, baseType: !2784, size: 64, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!48, !1189}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2764, file: !183, line: 2065, baseType: !2771, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2764, file: !183, line: 2066, baseType: !1426, size: 64, offset: 448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2764, file: !183, line: 2067, baseType: !2790, size: 64, offset: 512)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!48, !1396, !48}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2764, file: !183, line: 2068, baseType: !2794, size: 64, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!48, !1396, !182}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2764, file: !183, line: 2069, baseType: !2798, size: 64, offset: 640)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!48, !1396}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2764, file: !183, line: 2070, baseType: !2794, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2764, file: !183, line: 2071, baseType: !2798, size: 64, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2764, file: !183, line: 2072, baseType: !2804, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!48, !1149, !2807}
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !183, line: 62, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2764, file: !183, line: 2073, baseType: !2810, size: 64, offset: 896)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!48, !1396, !2542, !890}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2764, file: !183, line: 2074, baseType: !1426, size: 64, offset: 960)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2764, file: !183, line: 2076, baseType: !2815, size: 64, offset: 1024)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!48, !2307, !1149}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2764, file: !183, line: 2077, baseType: !2815, size: 64, offset: 1088)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2764, file: !183, line: 2078, baseType: !2815, size: 64, offset: 1152)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2764, file: !183, line: 2079, baseType: !2815, size: 64, offset: 1216)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2764, file: !183, line: 2081, baseType: !2822, size: 64, offset: 1280)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!1341, !1396, !48, !890, !61, !67}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2764, file: !183, line: 2082, baseType: !2826, size: 64, offset: 1344)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!1341, !1396, !48, !43, !61, !67}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2764, file: !183, line: 2083, baseType: !2830, size: 64, offset: 1408)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!2833, !1189}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !188, line: 296, size: 1664, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2861, !2862, !2863}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2835, file: !188, line: 297, baseType: !732, size: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2835, file: !188, line: 298, baseType: !123, size: 128, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2835, file: !188, line: 299, baseType: !123, size: 128, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2835, file: !188, line: 300, baseType: !123, size: 128, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2835, file: !188, line: 301, baseType: !349, size: 256, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2835, file: !188, line: 302, baseType: !85, size: 32, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2835, file: !188, line: 303, baseType: !75, size: 32, offset: 800)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2835, file: !188, line: 304, baseType: !1396, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2835, file: !188, line: 305, baseType: !2846, size: 64, offset: 896)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !188, line: 68, size: 64, elements: !2847)
!2847 = !{!2848, !2860}
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !2846, file: !188, line: 69, baseType: !2849, size: 32)
!2849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2846, file: !188, line: 69, size: 32, elements: !2850)
!2850 = !{!2851, !2852, !2853}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2849, file: !188, line: 70, baseType: !754, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2849, file: !188, line: 71, baseType: !772, size: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2849, file: !188, line: 72, baseType: !2854, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2855, line: 24, baseType: !2856)
!2855 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2855, line: 22, size: 32, elements: !2857)
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2856, file: !2855, line: 23, baseType: !2859, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2855, line: 20, baseType: !760)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2846, file: !188, line: 74, baseType: !187, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2835, file: !188, line: 306, baseType: !67, size: 64, offset: 960)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2835, file: !188, line: 307, baseType: !65, size: 64, offset: 1024)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2835, file: !188, line: 308, baseType: !2864, size: 576, offset: 1088)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !188, line: 205, size: 576, elements: !2865)
!2865 = !{!2866, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2864, file: !188, line: 206, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !188, line: 66, baseType: !69)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2864, file: !188, line: 207, baseType: !2867, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2864, file: !188, line: 208, baseType: !2867, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2864, file: !188, line: 209, baseType: !2867, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2864, file: !188, line: 210, baseType: !2867, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2864, file: !188, line: 211, baseType: !2867, size: 64, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2864, file: !188, line: 212, baseType: !2867, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2864, file: !188, line: 213, baseType: !838, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2864, file: !188, line: 214, baseType: !838, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2764, file: !183, line: 2085, baseType: !2877, size: 64, offset: 1472)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!1113, !1396, !2880}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2882, line: 15, size: 256, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2883 = !{!2884, !2885, !2886, !2887, !2888}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2881, file: !2882, line: 16, baseType: !292, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2881, file: !2882, line: 19, baseType: !48, size: 32, offset: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2881, file: !2882, line: 26, baseType: !65, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2881, file: !2882, line: 33, baseType: !65, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2881, file: !2882, line: 36, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !149, line: 33, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2764, file: !183, line: 2087, baseType: !2877, size: 64, offset: 1536)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2764, file: !183, line: 2089, baseType: !1426, size: 64, offset: 1600)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1397, file: !183, line: 1198, baseType: !2894, size: 64, offset: 448)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !188, line: 324, size: 704, elements: !2897)
!2897 = !{!2898, !2902, !2906, !2910, !2911, !2912, !2913, !2914, !2919, !2924, !2928}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2896, file: !188, line: 325, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!48, !2834}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2896, file: !188, line: 326, baseType: !2903, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!2834, !1396, !48}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2896, file: !188, line: 327, baseType: !2907, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2834}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2896, file: !188, line: 328, baseType: !2899, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2896, file: !188, line: 329, baseType: !2899, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2896, file: !188, line: 330, baseType: !2899, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2896, file: !188, line: 331, baseType: !2790, size: 64, offset: 384)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2896, file: !188, line: 334, baseType: !2915, size: 64, offset: 448)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!2918, !1189}
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2896, file: !188, line: 335, baseType: !2920, size: 64, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!48, !1189, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2896, file: !188, line: 337, baseType: !2925, size: 64, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!48, !1189, !2918}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2896, file: !188, line: 339, baseType: !2929, size: 64, offset: 640)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!48, !1396, !2932}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1397, file: !183, line: 1199, baseType: !2934, size: 64, offset: 512)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2936)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !188, line: 430, size: 704, elements: !2937)
!2937 = !{!2938, !2942, !2943, !2947, !2948, !2949, !2964, !2987, !2991, !2992, !3015}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2936, file: !188, line: 431, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!48, !1396, !48, !48, !1310}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2936, file: !188, line: 432, baseType: !2790, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2936, file: !188, line: 433, baseType: !2944, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!48, !1396, !18}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2936, file: !188, line: 434, baseType: !2944, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2936, file: !188, line: 435, baseType: !2790, size: 64, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2936, file: !188, line: 436, baseType: !2950, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!48, !1396, !48, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !188, line: 417, size: 256, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2954, file: !188, line: 418, baseType: !48, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2954, file: !188, line: 419, baseType: !18, size: 32, offset: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2954, file: !188, line: 420, baseType: !18, size: 32, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2954, file: !188, line: 422, baseType: !18, size: 32, offset: 96)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2954, file: !188, line: 423, baseType: !18, size: 32, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2954, file: !188, line: 424, baseType: !18, size: 32, offset: 160)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2954, file: !188, line: 425, baseType: !18, size: 32, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2954, file: !188, line: 426, baseType: !18, size: 32, offset: 224)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2936, file: !188, line: 437, baseType: !2965, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!48, !1396, !2846, !2968}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !188, line: 345, size: 960, elements: !2970)
!2970 = !{!2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2969, file: !188, line: 346, baseType: !48, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2969, file: !188, line: 347, baseType: !791, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2969, file: !188, line: 348, baseType: !791, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2969, file: !188, line: 349, baseType: !791, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2969, file: !188, line: 350, baseType: !791, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2969, file: !188, line: 351, baseType: !791, size: 64, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2969, file: !188, line: 352, baseType: !791, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2969, file: !188, line: 353, baseType: !359, size: 64, offset: 448)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2969, file: !188, line: 355, baseType: !359, size: 64, offset: 512)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2969, file: !188, line: 356, baseType: !48, size: 32, offset: 576)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2969, file: !188, line: 357, baseType: !48, size: 32, offset: 608)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2969, file: !188, line: 358, baseType: !791, size: 64, offset: 640)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2969, file: !188, line: 359, baseType: !791, size: 64, offset: 704)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2969, file: !188, line: 360, baseType: !791, size: 64, offset: 768)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2969, file: !188, line: 361, baseType: !359, size: 64, offset: 832)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2969, file: !188, line: 362, baseType: !48, size: 32, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2936, file: !188, line: 438, baseType: !2988, size: 64, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!48, !1396, !2932, !2968}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2936, file: !188, line: 440, baseType: !2965, size: 64, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2936, file: !188, line: 441, baseType: !2993, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!48, !1396, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !188, line: 411, size: 1408, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2997, file: !188, line: 412, baseType: !18, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2997, file: !188, line: 413, baseType: !3001, size: 1344, offset: 64)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3002, size: 1344, elements: !711)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !188, line: 397, size: 448, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3014}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3002, file: !188, line: 398, baseType: !18, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3002, file: !188, line: 399, baseType: !18, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3002, file: !188, line: 401, baseType: !18, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3002, file: !188, line: 402, baseType: !18, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3002, file: !188, line: 403, baseType: !18, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3002, file: !188, line: 404, baseType: !18, size: 32, offset: 160)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3002, file: !188, line: 405, baseType: !18, size: 32, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3002, file: !188, line: 406, baseType: !793, size: 64, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3002, file: !188, line: 407, baseType: !3013, size: 64, offset: 320)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !51, line: 132, baseType: !791)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3002, file: !188, line: 408, baseType: !3013, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2936, file: !188, line: 442, baseType: !2944, size: 64, offset: 640)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1397, file: !183, line: 1200, baseType: !3017, size: 64, offset: 576)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3019)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !183, line: 54, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1397, file: !183, line: 1201, baseType: !65, size: 64, offset: 640)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1397, file: !183, line: 1202, baseType: !65, size: 64, offset: 704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1397, file: !183, line: 1203, baseType: !65, size: 64, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1397, file: !183, line: 1204, baseType: !1149, size: 64, offset: 832)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1397, file: !183, line: 1205, baseType: !822, size: 320, offset: 896)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1397, file: !183, line: 1206, baseType: !48, size: 32, offset: 1216)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1397, file: !183, line: 1207, baseType: !75, size: 32, offset: 1248)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1397, file: !183, line: 1209, baseType: !46, size: 64, offset: 1280)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1397, file: !183, line: 1211, baseType: !3029, size: 64, offset: 1344)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !183, line: 1211, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1397, file: !183, line: 1223, baseType: !3034, size: 64, offset: 1408)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1166, line: 34, size: 64, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3034, file: !1166, line: 35, baseType: !1169, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1397, file: !183, line: 1224, baseType: !123, size: 128, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1397, file: !183, line: 1225, baseType: !3039, size: 64, offset: 1600)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !3041, line: 40, size: 7424, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!3042 = !{!3043, !3044, !3045, !3049, !3053, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3080, !3081}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !3040, file: !3041, line: 41, baseType: !2128, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !3040, file: !3041, line: 42, baseType: !2128, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !3040, file: !3041, line: 43, baseType: !3046, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !3048, line: 1453, flags: DIFlagFwdDecl)
!3048 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !3040, file: !3041, line: 44, baseType: !3050, size: 64, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3052, line: 74, flags: DIFlagFwdDecl)
!3052 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !3040, file: !3041, line: 45, baseType: !3054, size: 64, offset: 256)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !3041, line: 45, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !3040, file: !3041, line: 46, baseType: !65, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !3040, file: !3041, line: 47, baseType: !405, size: 8, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !3040, file: !3041, line: 48, baseType: !109, size: 8, offset: 392)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !3040, file: !3041, line: 49, baseType: !405, size: 8, offset: 400)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !3040, file: !3041, line: 50, baseType: !405, size: 8, offset: 408)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !3040, file: !3041, line: 51, baseType: !1263, size: 32, offset: 416)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !3040, file: !3041, line: 52, baseType: !75, size: 32, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !3040, file: !3041, line: 53, baseType: !85, size: 32, offset: 480)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !3040, file: !3041, line: 54, baseType: !1189, size: 64, offset: 512)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !3040, file: !3041, line: 55, baseType: !46, size: 64, offset: 576)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !3040, file: !3041, line: 56, baseType: !46, size: 64, offset: 640)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !3040, file: !3041, line: 57, baseType: !3068, size: 64, offset: 704)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3070)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !3041, line: 57, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !3040, file: !3041, line: 58, baseType: !349, size: 256, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !3040, file: !3041, line: 60, baseType: !48, size: 32, offset: 1024)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !3040, file: !3041, line: 61, baseType: !48, size: 32, offset: 1056)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !3040, file: !3041, line: 62, baseType: !1449, size: 64, offset: 1088)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !3040, file: !3041, line: 65, baseType: !349, size: 256, offset: 1152)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !3040, file: !3041, line: 66, baseType: !1396, size: 64, offset: 1408)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !3040, file: !3041, line: 68, baseType: !3078, size: 64, offset: 1472)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !3041, line: 68, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !3040, file: !3041, line: 72, baseType: !405, size: 8, offset: 1536)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !3040, file: !3041, line: 77, baseType: !3082, size: 5824, offset: 1600)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !200, line: 705, size: 5824, elements: !3083)
!3083 = !{!3084, !3085, !3087, !3090, !3091, !3144, !3221, !3222, !3223, !3224, !3225, !3232, !3392, !3405, !3415, !3419, !3421, !3422, !3423, !3427, !3434, !3435, !3438, !3441, !3445, !3448, !3449, !3450, !3451, !3452, !3453, !3483, !3484, !3485, !3488, !3491, !3500, !3501, !3502, !3503, !3504, !3505}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3082, file: !200, line: 706, baseType: !1443, size: 512)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3082, file: !200, line: 707, baseType: !3086, size: 64, offset: 512)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3082, file: !200, line: 709, baseType: !3088, size: 64, offset: 576)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !200, line: 37, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3082, file: !200, line: 711, baseType: !43, size: 64, offset: 640)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3082, file: !200, line: 712, baseType: !3092, size: 64, offset: 704)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3094)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !200, line: 89, size: 384, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3104, !3109, !3113}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3094, file: !200, line: 90, baseType: !43, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3094, file: !200, line: 91, baseType: !1521, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3094, file: !200, line: 92, baseType: !3099, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!48, !3102, !1479}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3094, file: !200, line: 93, baseType: !3105, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!890, !3102, !3108, !1076, !1077}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3094, file: !200, line: 95, baseType: !3110, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3086}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3094, file: !200, line: 97, baseType: !3114, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3116)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !212, line: 286, size: 1472, elements: !3117)
!3117 = !{!3118, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3116, file: !212, line: 287, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!48, !3086}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3116, file: !212, line: 288, baseType: !3110, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3116, file: !212, line: 289, baseType: !3119, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3116, file: !212, line: 290, baseType: !3119, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3116, file: !212, line: 291, baseType: !3119, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3116, file: !212, line: 292, baseType: !3119, size: 64, offset: 320)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3116, file: !212, line: 293, baseType: !3119, size: 64, offset: 384)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3116, file: !212, line: 294, baseType: !3119, size: 64, offset: 448)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3116, file: !212, line: 295, baseType: !3119, size: 64, offset: 512)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3116, file: !212, line: 296, baseType: !3119, size: 64, offset: 576)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3116, file: !212, line: 297, baseType: !3119, size: 64, offset: 640)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3116, file: !212, line: 298, baseType: !3119, size: 64, offset: 704)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3116, file: !212, line: 299, baseType: !3119, size: 64, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3116, file: !212, line: 300, baseType: !3119, size: 64, offset: 832)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3116, file: !212, line: 301, baseType: !3119, size: 64, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3116, file: !212, line: 302, baseType: !3119, size: 64, offset: 960)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3116, file: !212, line: 303, baseType: !3119, size: 64, offset: 1024)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3116, file: !212, line: 304, baseType: !3119, size: 64, offset: 1088)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3116, file: !212, line: 305, baseType: !3119, size: 64, offset: 1152)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3116, file: !212, line: 306, baseType: !3119, size: 64, offset: 1216)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3116, file: !212, line: 307, baseType: !3119, size: 64, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3116, file: !212, line: 308, baseType: !3119, size: 64, offset: 1344)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3116, file: !212, line: 309, baseType: !3119, size: 64, offset: 1408)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3082, file: !200, line: 714, baseType: !3145, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3147)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3148, line: 80, size: 1344, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3220}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3147, file: !3148, line: 81, baseType: !43, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3147, file: !3148, line: 82, baseType: !43, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3147, file: !3148, line: 83, baseType: !1521, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3147, file: !3148, line: 84, baseType: !1521, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3147, file: !3148, line: 85, baseType: !1521, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3147, file: !3148, line: 87, baseType: !3156, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!48, !3086, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !194, line: 96, size: 1152, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3167, !3168, !3181, !3183, !3184, !3185, !3186, !3187, !3195, !3196, !3197, !3198, !3199, !3200}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3160, file: !194, line: 97, baseType: !43, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3160, file: !194, line: 98, baseType: !3145, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3160, file: !194, line: 100, baseType: !1430, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3160, file: !194, line: 101, baseType: !43, size: 64, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3160, file: !194, line: 103, baseType: !405, size: 8, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3160, file: !194, line: 104, baseType: !193, size: 32, offset: 288)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3160, file: !194, line: 106, baseType: !3169, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !298, line: 282, size: 1600, elements: !3172)
!3172 = !{!3173, !3175, !3176, !3180}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3171, file: !298, line: 283, baseType: !3174, size: 256)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !556)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3171, file: !298, line: 284, baseType: !3174, size: 256, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3171, file: !298, line: 285, baseType: !3177, size: 1024, offset: 512)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !3178)
!3178 = !{!3179}
!3179 = !DISubrange(count: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3171, file: !298, line: 286, baseType: !1808, size: 64, offset: 1536)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3160, file: !194, line: 107, baseType: !3182, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3160, file: !194, line: 109, baseType: !3119, size: 64, offset: 448)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3160, file: !194, line: 110, baseType: !3110, size: 64, offset: 512)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3160, file: !194, line: 111, baseType: !3119, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3160, file: !194, line: 112, baseType: !3110, size: 64, offset: 640)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3160, file: !194, line: 113, baseType: !3188, size: 64, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!48, !3086, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !212, line: 60, baseType: !3192)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !212, line: 58, size: 32, elements: !3193)
!3193 = !{!3194}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3192, file: !212, line: 59, baseType: !48, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3160, file: !194, line: 114, baseType: !3119, size: 64, offset: 768)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3160, file: !194, line: 115, baseType: !1521, size: 64, offset: 832)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3160, file: !194, line: 116, baseType: !1521, size: 64, offset: 896)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3160, file: !194, line: 118, baseType: !3114, size: 64, offset: 960)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3160, file: !194, line: 119, baseType: !3110, size: 64, offset: 1024)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3160, file: !194, line: 121, baseType: !3201, size: 64, offset: 1088)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !194, line: 121, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3147, file: !3148, line: 88, baseType: !3099, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3147, file: !3148, line: 89, baseType: !3119, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3147, file: !3148, line: 90, baseType: !3110, size: 64, offset: 512)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3147, file: !3148, line: 91, baseType: !3110, size: 64, offset: 576)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3147, file: !3148, line: 92, baseType: !3110, size: 64, offset: 640)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3147, file: !3148, line: 94, baseType: !3119, size: 64, offset: 704)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3147, file: !3148, line: 95, baseType: !3119, size: 64, offset: 768)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3147, file: !3148, line: 97, baseType: !3188, size: 64, offset: 832)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3147, file: !3148, line: 98, baseType: !3119, size: 64, offset: 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3147, file: !3148, line: 100, baseType: !3119, size: 64, offset: 960)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3147, file: !3148, line: 102, baseType: !3119, size: 64, offset: 1024)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3147, file: !3148, line: 103, baseType: !3110, size: 64, offset: 1088)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3147, file: !3148, line: 105, baseType: !3114, size: 64, offset: 1152)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3147, file: !3148, line: 107, baseType: !3217, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3148, line: 107, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3147, file: !3148, line: 109, baseType: !405, size: 8, offset: 1280)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3082, file: !200, line: 715, baseType: !3159, size: 64, offset: 832)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3082, file: !200, line: 717, baseType: !46, size: 64, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3082, file: !200, line: 719, baseType: !46, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3082, file: !200, line: 721, baseType: !349, size: 256, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3082, file: !200, line: 725, baseType: !3226, size: 448, offset: 1280)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !200, line: 517, size: 448, elements: !3227)
!3227 = !{!3228, !3229, !3230, !3231}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3226, file: !200, line: 518, baseType: !123, size: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3226, file: !200, line: 519, baseType: !123, size: 128, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3226, file: !200, line: 520, baseType: !123, size: 128, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3226, file: !200, line: 521, baseType: !199, size: 32, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3082, file: !200, line: 726, baseType: !3233, size: 2496, offset: 1728)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !212, line: 663, size: 2496, elements: !3234)
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3279, !3280, !3281, !3282, !3283, !3284, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3385, !3389}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3233, file: !212, line: 664, baseType: !3191, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3233, file: !212, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3233, file: !212, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3233, file: !212, line: 667, baseType: !405, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3233, file: !212, line: 668, baseType: !405, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3233, file: !212, line: 669, baseType: !405, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3233, file: !212, line: 670, baseType: !405, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3233, file: !212, line: 671, baseType: !405, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3233, file: !212, line: 672, baseType: !405, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3233, file: !212, line: 673, baseType: !405, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3233, file: !212, line: 674, baseType: !405, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3233, file: !212, line: 675, baseType: !847, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3233, file: !212, line: 676, baseType: !85, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3233, file: !212, line: 678, baseType: !123, size: 128, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3233, file: !212, line: 679, baseType: !1051, size: 256, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3233, file: !212, line: 680, baseType: !3251, size: 64, offset: 512)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3253, line: 43, size: 1536, elements: !3254)
!3253 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3262, !3263, !3264, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3252, file: !3253, line: 44, baseType: !43, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3252, file: !3253, line: 45, baseType: !48, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3252, file: !3253, line: 46, baseType: !123, size: 128, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3252, file: !3253, line: 47, baseType: !85, size: 32, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3252, file: !3253, line: 48, baseType: !3260, size: 64, offset: 320)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !212, line: 629, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3252, file: !3253, line: 49, baseType: !2641, size: 320, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3252, file: !3253, line: 50, baseType: !65, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3252, file: !3253, line: 51, baseType: !3265, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3266, line: 29, baseType: !359)
!3266 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3252, file: !3253, line: 52, baseType: !3265, size: 64, offset: 832)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3252, file: !3253, line: 53, baseType: !3265, size: 64, offset: 896)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3252, file: !3253, line: 54, baseType: !3265, size: 64, offset: 960)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3252, file: !3253, line: 55, baseType: !3265, size: 64, offset: 1024)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3252, file: !3253, line: 56, baseType: !65, size: 64, offset: 1088)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3252, file: !3253, line: 57, baseType: !65, size: 64, offset: 1152)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3252, file: !3253, line: 58, baseType: !65, size: 64, offset: 1216)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3252, file: !3253, line: 59, baseType: !65, size: 64, offset: 1280)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3252, file: !3253, line: 60, baseType: !65, size: 64, offset: 1344)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3252, file: !3253, line: 61, baseType: !3086, size: 64, offset: 1408)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3252, file: !3253, line: 62, baseType: !405, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3252, file: !3253, line: 63, baseType: !405, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3233, file: !212, line: 681, baseType: !405, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3233, file: !212, line: 682, baseType: !405, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3233, file: !212, line: 683, baseType: !405, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3233, file: !212, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3233, file: !212, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3233, file: !212, line: 690, baseType: !3285, size: 512, offset: 640)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !207, line: 118, size: 512, elements: !3286)
!3286 = !{!3287, !3293, !3294, !3299, !3347, !3348, !3349, !3350}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3285, file: !207, line: 119, baseType: !3288, size: 256)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3289, line: 9, size: 256, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3290 = !{!3291, !3292}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3288, file: !3289, line: 10, baseType: !814, size: 192, align: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3288, file: !3289, line: 11, baseType: !3265, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3285, file: !207, line: 120, baseType: !3265, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3285, file: !207, line: 121, baseType: !3295, size: 64, offset: 320)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!206, !3298}
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3285, file: !207, line: 122, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !207, line: 159, size: 512, align: 512, elements: !3302)
!3302 = !{!3303, !3328, !3329, !3332, !3337, !3338, !3342, !3346}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3301, file: !207, line: 160, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !207, line: 215, size: 4608, align: 512, elements: !3306)
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3305, file: !207, line: 216, baseType: !362, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3305, file: !207, line: 217, baseType: !18, size: 32, offset: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3305, file: !207, line: 218, baseType: !18, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3305, file: !207, line: 219, baseType: !18, size: 32, offset: 96)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3305, file: !207, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3305, file: !207, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3305, file: !207, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3305, file: !207, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3305, file: !207, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3305, file: !207, line: 226, baseType: !18, size: 32, offset: 160)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3305, file: !207, line: 227, baseType: !52, size: 16, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3305, file: !207, line: 228, baseType: !52, size: 16, offset: 208)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3305, file: !207, line: 229, baseType: !18, size: 32, offset: 224)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3305, file: !207, line: 235, baseType: !3265, size: 64, offset: 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3305, file: !207, line: 236, baseType: !3298, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3305, file: !207, line: 237, baseType: !3265, size: 64, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3305, file: !207, line: 238, baseType: !3298, size: 64, offset: 448)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3305, file: !207, line: 239, baseType: !3325, size: 4096, align: 512, offset: 512)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3301, size: 4096, align: 512, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 8)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3301, file: !207, line: 161, baseType: !18, size: 32, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3301, file: !207, line: 162, baseType: !3330, size: 32, offset: 96)
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !51, line: 32, baseType: !3331)
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !63, line: 96, baseType: !48)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3301, file: !207, line: 163, baseType: !3333, size: 32, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1156, line: 274, baseType: !3334)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1156, line: 274, size: 32, elements: !3335)
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3334, file: !1156, line: 274, baseType: !1160, size: 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3301, file: !207, line: 164, baseType: !3298, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3301, file: !207, line: 165, baseType: !3339, size: 128, offset: 256)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3289, line: 14, size: 128, elements: !3340)
!3340 = !{!3341}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3339, file: !3289, line: 15, baseType: !1554, size: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3301, file: !207, line: 166, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!3265}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3301, file: !207, line: 167, baseType: !3265, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3285, file: !207, line: 123, baseType: !109, size: 8, offset: 448)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3285, file: !207, line: 124, baseType: !109, size: 8, offset: 456)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3285, file: !207, line: 125, baseType: !109, size: 8, offset: 464)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3285, file: !207, line: 126, baseType: !109, size: 8, offset: 472)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3233, file: !212, line: 691, baseType: !791, size: 64, offset: 1152)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3233, file: !212, line: 692, baseType: !1012, size: 256, offset: 1216)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3233, file: !212, line: 693, baseType: !80, size: 192, offset: 1472)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3233, file: !212, line: 694, baseType: !3260, size: 64, offset: 1664)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3233, file: !212, line: 695, baseType: !75, size: 32, offset: 1728)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3233, file: !212, line: 696, baseType: !75, size: 32, offset: 1760)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3233, file: !212, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3233, file: !212, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3233, file: !212, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3233, file: !212, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3233, file: !212, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3233, file: !212, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3233, file: !212, line: 703, baseType: !405, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3233, file: !212, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3233, file: !212, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3233, file: !212, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3233, file: !212, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3233, file: !212, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3233, file: !212, line: 709, baseType: !18, size: 32, offset: 1824)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3233, file: !212, line: 710, baseType: !211, size: 32, offset: 1856)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3233, file: !212, line: 711, baseType: !219, size: 32, offset: 1888)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3233, file: !212, line: 712, baseType: !219, size: 32, offset: 1920)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3233, file: !212, line: 713, baseType: !48, size: 32, offset: 1952)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3233, file: !212, line: 714, baseType: !48, size: 32, offset: 1984)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3233, file: !212, line: 715, baseType: !791, size: 64, offset: 2048)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3233, file: !212, line: 716, baseType: !791, size: 64, offset: 2112)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3233, file: !212, line: 717, baseType: !791, size: 64, offset: 2176)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3233, file: !212, line: 718, baseType: !791, size: 64, offset: 2240)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3233, file: !212, line: 720, baseType: !3380, size: 64, offset: 2304)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !212, line: 632, size: 64, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3381, file: !212, line: 633, baseType: !85, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3381, file: !212, line: 634, baseType: !18, size: 32, offset: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3233, file: !212, line: 721, baseType: !3386, size: 64, offset: 2368)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !3086, !808}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3233, file: !212, line: 722, baseType: !3390, size: 64, offset: 2432)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !212, line: 722, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3082, file: !200, line: 727, baseType: !3393, size: 64, offset: 4224)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !212, line: 742, size: 1792, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3402, !3403, !3404}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3394, file: !212, line: 743, baseType: !3116, size: 1472)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3394, file: !212, line: 744, baseType: !3119, size: 64, offset: 1472)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3394, file: !212, line: 745, baseType: !3399, size: 64, offset: 1536)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !3086, !405}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3394, file: !212, line: 746, baseType: !3119, size: 64, offset: 1600)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3394, file: !212, line: 747, baseType: !3110, size: 64, offset: 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3394, file: !212, line: 748, baseType: !3110, size: 64, offset: 1728)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3082, file: !200, line: 736, baseType: !3406, size: 128, offset: 4288)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !200, line: 529, size: 128, elements: !3407)
!3407 = !{!3408, !3412}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3406, file: !200, line: 531, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3411, line: 13, flags: DIFlagFwdDecl)
!3411 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3406, file: !200, line: 532, baseType: !3413, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !200, line: 49, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3082, file: !200, line: 738, baseType: !3416, size: 64, offset: 4416)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !200, line: 738, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3082, file: !200, line: 740, baseType: !3420, size: 64, offset: 4480)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3082, file: !200, line: 741, baseType: !791, size: 64, offset: 4544)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3082, file: !200, line: 746, baseType: !791, size: 64, offset: 4608)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3082, file: !200, line: 747, baseType: !3424, size: 64, offset: 4672)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !200, line: 747, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3082, file: !200, line: 749, baseType: !3428, size: 64, offset: 4736)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !200, line: 428, size: 128, elements: !3430)
!3430 = !{!3431, !3432, !3433}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3429, file: !200, line: 433, baseType: !18, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3429, file: !200, line: 434, baseType: !18, size: 32, offset: 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3429, file: !200, line: 435, baseType: !65, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3082, file: !200, line: 751, baseType: !123, size: 128, offset: 4800)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3082, file: !200, line: 762, baseType: !3436, size: 64, offset: 4928)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !200, line: 762, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3082, file: !200, line: 770, baseType: !3439, offset: 4992)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3440, line: 5, elements: !1713)
!3440 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3082, file: !200, line: 772, baseType: !3442, size: 64, offset: 4992)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3444, line: 18, flags: DIFlagFwdDecl)
!3444 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3082, file: !200, line: 773, baseType: !3446, size: 64, offset: 5056)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3148, line: 22, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3082, file: !200, line: 776, baseType: !48, size: 32, offset: 5120)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3082, file: !200, line: 778, baseType: !1263, size: 32, offset: 5152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3082, file: !200, line: 779, baseType: !847, size: 32, offset: 5184)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3082, file: !200, line: 781, baseType: !85, size: 32, offset: 5216)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3082, file: !200, line: 782, baseType: !123, size: 128, offset: 5248)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3082, file: !200, line: 784, baseType: !3454, size: 64, offset: 5376)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3457, line: 52, size: 768, elements: !3458)
!3457 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3458 = !{!3459, !3460, !3461, !3462, !3463, !3467, !3471, !3472, !3473, !3474, !3478, !3482}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3456, file: !3457, line: 53, baseType: !43, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3456, file: !3457, line: 55, baseType: !1521, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3456, file: !3457, line: 56, baseType: !1521, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3456, file: !3457, line: 58, baseType: !3099, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3456, file: !3457, line: 59, baseType: !3464, size: 64, offset: 256)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!890, !3102, !3108}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3456, file: !3457, line: 61, baseType: !3468, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3454}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3456, file: !3457, line: 62, baseType: !3110, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3456, file: !3457, line: 64, baseType: !3119, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3456, file: !3457, line: 66, baseType: !2230, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3456, file: !3457, line: 67, baseType: !3475, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!1808, !3102}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3456, file: !3457, line: 69, baseType: !3479, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !3102, !1076, !1077}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3456, file: !3457, line: 71, baseType: !3114, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3082, file: !200, line: 785, baseType: !1521, size: 64, offset: 5440)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3082, file: !200, line: 787, baseType: !3110, size: 64, offset: 5504)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3082, file: !200, line: 788, baseType: !3486, size: 64, offset: 5568)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !200, line: 46, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3082, file: !200, line: 789, baseType: !3489, size: 64, offset: 5632)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !200, line: 48, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3082, file: !200, line: 791, baseType: !3492, size: 64, offset: 5696)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !200, line: 597, size: 128, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3493, file: !200, line: 598, baseType: !226, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3493, file: !200, line: 599, baseType: !235, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3493, file: !200, line: 600, baseType: !240, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3493, file: !200, line: 601, baseType: !405, size: 8, offset: 96)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3493, file: !200, line: 602, baseType: !405, size: 8, offset: 104)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3082, file: !200, line: 793, baseType: !245, size: 32, offset: 5760)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3082, file: !200, line: 795, baseType: !405, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3082, file: !200, line: 796, baseType: !405, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3082, file: !200, line: 797, baseType: !405, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3082, file: !200, line: 798, baseType: !405, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3082, file: !200, line: 799, baseType: !405, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1397, file: !183, line: 1226, baseType: !3507, size: 64, offset: 1664)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !183, line: 1226, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1397, file: !183, line: 1227, baseType: !3510, size: 64, offset: 1728)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !252, line: 163, size: 6848, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3559, !3560, !3561, !3562, !3564, !3565, !3566}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3511, file: !252, line: 164, baseType: !791, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3511, file: !252, line: 165, baseType: !814, size: 192, align: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3511, file: !252, line: 166, baseType: !123, size: 128, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3511, file: !252, line: 167, baseType: !65, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3511, file: !252, line: 168, baseType: !65, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3511, file: !252, line: 170, baseType: !2396, size: 32, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3511, file: !252, line: 171, baseType: !18, size: 32, offset: 544)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3511, file: !252, line: 172, baseType: !18, size: 32, offset: 576)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3511, file: !252, line: 173, baseType: !18, size: 32, offset: 608)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3511, file: !252, line: 173, baseType: !18, size: 32, offset: 640)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3511, file: !252, line: 179, baseType: !353, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3511, file: !252, line: 184, baseType: !65, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3511, file: !252, line: 186, baseType: !3526, size: 4672, offset: 832)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !252, line: 105, size: 4672, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3526, file: !252, line: 106, baseType: !3510, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3526, file: !252, line: 108, baseType: !65, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3526, file: !252, line: 109, baseType: !65, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3526, file: !252, line: 111, baseType: !123, size: 128, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3526, file: !252, line: 112, baseType: !123, size: 128, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3526, file: !252, line: 113, baseType: !123, size: 128, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3526, file: !252, line: 114, baseType: !123, size: 128, offset: 576)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3526, file: !252, line: 115, baseType: !85, size: 32, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3526, file: !252, line: 117, baseType: !75, size: 32, offset: 736)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3526, file: !252, line: 118, baseType: !1776, size: 1280, offset: 768)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3526, file: !252, line: 120, baseType: !65, size: 64, offset: 2048)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3526, file: !252, line: 121, baseType: !65, size: 64, offset: 2112)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3526, file: !252, line: 122, baseType: !65, size: 64, offset: 2176)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3526, file: !252, line: 123, baseType: !65, size: 64, offset: 2240)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3526, file: !252, line: 124, baseType: !65, size: 64, offset: 2304)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3526, file: !252, line: 132, baseType: !65, size: 64, offset: 2368)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3526, file: !252, line: 133, baseType: !65, size: 64, offset: 2432)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3526, file: !252, line: 135, baseType: !3546, size: 384, offset: 2496)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3547, line: 76, size: 384, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3548 = !{!3549, !3550, !3551}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3546, file: !3547, line: 78, baseType: !938, size: 320)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3546, file: !3547, line: 80, baseType: !18, size: 32, offset: 320)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3546, file: !3547, line: 81, baseType: !362, size: 32, offset: 352)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3526, file: !252, line: 136, baseType: !48, size: 32, offset: 2880)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3526, file: !252, line: 137, baseType: !251, size: 32, offset: 2912)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3526, file: !252, line: 139, baseType: !85, size: 32, offset: 2944)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3526, file: !252, line: 140, baseType: !123, size: 128, offset: 3008)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3526, file: !252, line: 141, baseType: !2698, size: 704, offset: 3136)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3526, file: !252, line: 142, baseType: !2698, size: 704, offset: 3840)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3526, file: !252, line: 144, baseType: !123, size: 128, offset: 4544)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3511, file: !252, line: 187, baseType: !123, size: 128, offset: 5504)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3511, file: !252, line: 193, baseType: !80, size: 192, offset: 5632)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3511, file: !252, line: 195, baseType: !3086, size: 64, offset: 5824)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3511, file: !252, line: 196, baseType: !3563, size: 512, offset: 5888)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !333)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3511, file: !252, line: 197, baseType: !3086, size: 64, offset: 6400)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3511, file: !252, line: 199, baseType: !2641, size: 320, offset: 6464)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3511, file: !252, line: 202, baseType: !1149, size: 64, offset: 6784)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1397, file: !183, line: 1228, baseType: !3568, size: 64, offset: 1792)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !183, line: 1228, flags: DIFlagFwdDecl)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1397, file: !183, line: 1229, baseType: !732, size: 128, offset: 1856)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1397, file: !183, line: 1230, baseType: !18, size: 32, offset: 1984)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1397, file: !183, line: 1231, baseType: !3573, size: 2496, offset: 2048)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !188, line: 521, size: 2496, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3579, !3611}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3573, file: !188, line: 522, baseType: !18, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3573, file: !188, line: 523, baseType: !822, size: 320, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3573, file: !188, line: 524, baseType: !3578, size: 192, offset: 384)
!3578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 192, elements: !711)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3573, file: !188, line: 525, baseType: !3580, size: 1728, offset: 576)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3581, size: 1728, elements: !711)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !188, line: 222, size: 576, elements: !3582)
!3582 = !{!3583, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3581, file: !188, line: 223, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !188, line: 445, size: 256, elements: !3586)
!3586 = !{!3587, !3588, !3601, !3602}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3585, file: !188, line: 446, baseType: !48, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3585, file: !188, line: 447, baseType: !3589, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3591)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !188, line: 312, size: 512, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3591, file: !188, line: 313, baseType: !2790, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3591, file: !188, line: 314, baseType: !2790, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3591, file: !188, line: 315, baseType: !2790, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3591, file: !188, line: 316, baseType: !2790, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3591, file: !188, line: 317, baseType: !2899, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3591, file: !188, line: 318, baseType: !2899, size: 64, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3591, file: !188, line: 319, baseType: !2899, size: 64, offset: 384)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3591, file: !188, line: 320, baseType: !2929, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3585, file: !188, line: 448, baseType: !1430, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3585, file: !188, line: 449, baseType: !3584, size: 64, offset: 192)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3581, file: !188, line: 224, baseType: !48, size: 32, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3581, file: !188, line: 226, baseType: !123, size: 128, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3581, file: !188, line: 227, baseType: !65, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3581, file: !188, line: 228, baseType: !18, size: 32, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3581, file: !188, line: 229, baseType: !18, size: 32, offset: 352)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3581, file: !188, line: 230, baseType: !2867, size: 64, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3581, file: !188, line: 231, baseType: !2867, size: 64, offset: 448)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3581, file: !188, line: 232, baseType: !46, size: 64, offset: 512)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3573, file: !188, line: 526, baseType: !3612, size: 192, offset: 2304)
!3612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3589, size: 192, elements: !711)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1397, file: !183, line: 1233, baseType: !3614, size: 2368, offset: 4544)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !183, line: 1184, size: 2368, elements: !3615)
!3615 = !{!3616, !3617, !3618}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3614, file: !183, line: 1185, baseType: !52, size: 16)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3614, file: !183, line: 1186, baseType: !52, size: 16, offset: 16)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3614, file: !183, line: 1187, baseType: !3619, size: 2304, offset: 64)
!3619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3620, size: 2304, elements: !711)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3621, line: 12, size: 768, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3622 = !{!3623, !3631, !3632, !5079, !5080}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3620, file: !3621, line: 13, baseType: !3624, size: 384)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3625, line: 17, size: 384, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3624, file: !3625, line: 18, baseType: !48, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3624, file: !3625, line: 19, baseType: !48, size: 32, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3624, file: !3625, line: 20, baseType: !80, size: 192, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3624, file: !3625, line: 22, baseType: !672, size: 128, align: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3620, file: !3621, line: 14, baseType: !558, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3620, file: !3621, line: 15, baseType: !3633, size: 64, offset: 448)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3634, line: 16, size: 64, elements: !3635)
!3634 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3635 = !{!3636}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3633, file: !3634, line: 17, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !3048, line: 746, size: 58368, elements: !3639)
!3639 = !{!3640, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3720, !3731, !3751, !3755, !3758, !3789, !3790, !3791, !3792, !3800, !3802, !3803, !3804, !3805, !3806, !3807, !3818, !3819, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3836, !3837, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3925, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3973, !3979, !3980, !3981, !3982, !3983, !3985, !3988, !3995, !4000, !4003, !4006, !4009, !4301, !4499, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4537, !4538, !4539, !4548, !4556, !4557, !4558, !4559, !4560, !4565, !4566, !4567, !4570, !4571, !4574, !4577, !4580, !4587, !4590, !4591, !4677, !4678, !4679, !4680, !4681, !4687, !4688, !4689, !4690, !4691, !4692, !4695, !4698, !4699, !4702, !4703, !4704, !4707, !4708, !4709, !4710, !4711, !4712, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4744, !4747, !4753, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4835, !4837, !4838, !4839, !4840, !4841, !4842, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4860, !4861, !4862}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3638, file: !3048, line: 752, baseType: !3641, size: 192)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3642, line: 56, size: 192, elements: !3643)
!3642 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3643 = !{!3644, !3645, !3646, !3647}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3641, file: !3642, line: 57, baseType: !65, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3641, file: !3642, line: 58, baseType: !65, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3641, file: !3642, line: 59, baseType: !847, size: 32, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3641, file: !3642, line: 61, baseType: !847, size: 32, offset: 160)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3638, file: !3048, line: 754, baseType: !18, size: 32, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3638, file: !3048, line: 767, baseType: !46, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3638, file: !3048, line: 768, baseType: !719, size: 32, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3638, file: !3048, line: 770, baseType: !18, size: 32, offset: 352)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3638, file: !3048, line: 771, baseType: !18, size: 32, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3638, file: !3048, line: 774, baseType: !48, size: 32, offset: 416)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3638, file: !3048, line: 775, baseType: !3655, size: 128, offset: 448)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3656, line: 58, size: 128, elements: !3657)
!3656 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3657 = !{!3658, !3659, !3664, !3665}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3655, file: !3656, line: 59, baseType: !666, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !3656, line: 60, baseType: !3660, size: 32, offset: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !3656, line: 60, size: 32, elements: !3661)
!3661 = !{!3662, !3663}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3660, file: !3656, line: 61, baseType: !18, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3660, file: !3656, line: 62, baseType: !75, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3655, file: !3656, line: 65, baseType: !119, size: 16, offset: 96)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3655, file: !3656, line: 65, baseType: !119, size: 16, offset: 112)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3638, file: !3048, line: 776, baseType: !18, size: 32, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3638, file: !3048, line: 777, baseType: !65, size: 64, offset: 640)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3638, file: !3048, line: 778, baseType: !3637, size: 64, offset: 704)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3638, file: !3048, line: 787, baseType: !48, size: 32, offset: 768)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3638, file: !3048, line: 788, baseType: !48, size: 32, offset: 800)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3638, file: !3048, line: 790, baseType: !48, size: 32, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3638, file: !3048, line: 792, baseType: !48, size: 32, offset: 864)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3638, file: !3048, line: 793, baseType: !48, size: 32, offset: 896)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3638, file: !3048, line: 794, baseType: !48, size: 32, offset: 928)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3638, file: !3048, line: 795, baseType: !18, size: 32, offset: 960)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3638, file: !3048, line: 797, baseType: !3677, size: 2048, offset: 1024)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !3048, line: 551, size: 2048, elements: !3678)
!3678 = !{!3679, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3699, !3702, !3703, !3704}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3677, file: !3048, line: 553, baseType: !3680, size: 128)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !3048, line: 411, size: 128, elements: !3681)
!3681 = !{!3682, !3683}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3680, file: !3048, line: 412, baseType: !65, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3680, file: !3048, line: 413, baseType: !847, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3677, file: !3048, line: 554, baseType: !814, size: 192, align: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3677, file: !3048, line: 555, baseType: !791, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3677, file: !3048, line: 556, baseType: !791, size: 64, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3677, file: !3048, line: 558, baseType: !123, size: 128, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3677, file: !3048, line: 559, baseType: !18, size: 32, offset: 576)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3677, file: !3048, line: 561, baseType: !791, size: 64, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3677, file: !3048, line: 562, baseType: !791, size: 64, offset: 704)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3677, file: !3048, line: 563, baseType: !791, size: 64, offset: 768)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3677, file: !3048, line: 564, baseType: !791, size: 64, offset: 832)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3677, file: !3048, line: 565, baseType: !359, size: 64, offset: 896)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3677, file: !3048, line: 566, baseType: !791, size: 64, offset: 960)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3677, file: !3048, line: 568, baseType: !791, size: 64, offset: 1024)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3677, file: !3048, line: 571, baseType: !48, size: 32, offset: 1088)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3677, file: !3048, line: 572, baseType: !3698, size: 64, offset: 1152)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3677, file: !3048, line: 574, baseType: !3700, size: 64, offset: 1216)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !3048, line: 49, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3677, file: !3048, line: 576, baseType: !3700, size: 64, offset: 1280)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3677, file: !3048, line: 578, baseType: !65, size: 64, offset: 1344)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3677, file: !3048, line: 588, baseType: !3705, size: 512, align: 512, offset: 1536)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !3048, line: 497, size: 512, align: 512, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3705, file: !3048, line: 498, baseType: !791, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3705, file: !3048, line: 499, baseType: !791, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3705, file: !3048, line: 500, baseType: !791, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3705, file: !3048, line: 501, baseType: !847, size: 32, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3705, file: !3048, line: 502, baseType: !847, size: 32, offset: 224)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3705, file: !3048, line: 503, baseType: !65, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3705, file: !3048, line: 504, baseType: !65, size: 64, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3705, file: !3048, line: 505, baseType: !65, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3705, file: !3048, line: 506, baseType: !3716, size: 64, align: 64, offset: 448)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !3048, line: 445, size: 64, align: 64, elements: !3717)
!3717 = !{!3718, !3719}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3716, file: !3048, line: 446, baseType: !18, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3716, file: !3048, line: 447, baseType: !18, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3638, file: !3048, line: 798, baseType: !3721, size: 384, offset: 3072)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !3048, line: 592, size: 384, elements: !3722)
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3721, file: !3048, line: 593, baseType: !123, size: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3721, file: !3048, line: 594, baseType: !65, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3721, file: !3048, line: 595, baseType: !65, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3721, file: !3048, line: 596, baseType: !18, size: 32, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3721, file: !3048, line: 597, baseType: !52, size: 16, offset: 288)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3721, file: !3048, line: 598, baseType: !52, size: 16, offset: 304)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3721, file: !3048, line: 600, baseType: !3730, size: 64, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3638, file: !3048, line: 799, baseType: !3732, size: 1792, offset: 3456)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !3048, line: 610, size: 1792, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3732, file: !3048, line: 611, baseType: !814, size: 192, align: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3732, file: !3048, line: 618, baseType: !791, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3732, file: !3048, line: 619, baseType: !791, size: 64, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3732, file: !3048, line: 620, baseType: !791, size: 64, offset: 320)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3732, file: !3048, line: 621, baseType: !791, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3732, file: !3048, line: 622, baseType: !791, size: 64, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3732, file: !3048, line: 629, baseType: !359, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3732, file: !3048, line: 630, baseType: !791, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3732, file: !3048, line: 631, baseType: !18, size: 32, offset: 640)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3732, file: !3048, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3732, file: !3048, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3732, file: !3048, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3732, file: !3048, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3732, file: !3048, line: 662, baseType: !3285, size: 512, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3732, file: !3048, line: 671, baseType: !3285, size: 512, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3732, file: !3048, line: 679, baseType: !3750, size: 64, offset: 1728)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3638, file: !3048, line: 800, baseType: !3752, size: 64, offset: 5248)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !3048, line: 800, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3638, file: !3048, line: 809, baseType: !3756, size: 64, offset: 5312)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !3048, line: 70, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3638, file: !3048, line: 825, baseType: !3759, size: 2048, align: 512, offset: 5632)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !3048, line: 509, size: 2048, align: 512, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3759, file: !3048, line: 511, baseType: !791, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3759, file: !3048, line: 512, baseType: !791, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3759, file: !3048, line: 513, baseType: !791, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3759, file: !3048, line: 514, baseType: !791, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3759, file: !3048, line: 515, baseType: !791, size: 64, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3759, file: !3048, line: 516, baseType: !791, size: 64, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3759, file: !3048, line: 518, baseType: !791, size: 64, offset: 384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3759, file: !3048, line: 519, baseType: !791, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3759, file: !3048, line: 520, baseType: !359, size: 64, offset: 512)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3759, file: !3048, line: 522, baseType: !791, size: 64, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3759, file: !3048, line: 523, baseType: !791, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3759, file: !3048, line: 524, baseType: !359, size: 64, offset: 704)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3759, file: !3048, line: 526, baseType: !359, size: 64, offset: 768)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3759, file: !3048, line: 527, baseType: !791, size: 64, offset: 832)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3759, file: !3048, line: 529, baseType: !791, size: 64, offset: 896)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3759, file: !3048, line: 530, baseType: !791, size: 64, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3759, file: !3048, line: 531, baseType: !791, size: 64, offset: 1024)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3759, file: !3048, line: 532, baseType: !791, size: 64, offset: 1088)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3759, file: !3048, line: 533, baseType: !791, size: 64, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3759, file: !3048, line: 535, baseType: !791, size: 64, offset: 1216)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3759, file: !3048, line: 536, baseType: !791, size: 64, offset: 1280)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3759, file: !3048, line: 537, baseType: !791, size: 64, offset: 1344)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3759, file: !3048, line: 538, baseType: !791, size: 64, offset: 1408)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3759, file: !3048, line: 539, baseType: !791, size: 64, offset: 1472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3759, file: !3048, line: 540, baseType: !791, size: 64, offset: 1536)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3759, file: !3048, line: 541, baseType: !791, size: 64, offset: 1600)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3759, file: !3048, line: 542, baseType: !791, size: 64, offset: 1664)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3759, file: !3048, line: 543, baseType: !791, size: 64, offset: 1728)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3638, file: !3048, line: 833, baseType: !18, size: 32, offset: 7680)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3638, file: !3048, line: 836, baseType: !18, size: 32, offset: 7712)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3638, file: !3048, line: 837, baseType: !48, size: 32, offset: 7744)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3638, file: !3048, line: 838, baseType: !3793, size: 64, offset: 7808)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3796, line: 19, baseType: !3797)
!3796 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3796, line: 19, size: 64, elements: !3798)
!3798 = !{!3799}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3797, file: !3796, line: 19, baseType: !520, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3638, file: !3048, line: 839, baseType: !3801, size: 64, offset: 7872)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3638, file: !3048, line: 840, baseType: !3795, size: 64, offset: 7936)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3638, file: !3048, line: 841, baseType: !46, size: 64, offset: 8000)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3638, file: !3048, line: 843, baseType: !52, size: 16, offset: 8064)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3638, file: !3048, line: 845, baseType: !52, size: 16, offset: 8080)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3638, file: !3048, line: 848, baseType: !48, size: 32, offset: 8096)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3638, file: !3048, line: 849, baseType: !3808, size: 32, offset: 8128)
!3808 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !3048, line: 718, size: 32, elements: !3809)
!3809 = !{!3810, !3817}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3808, file: !3048, line: 724, baseType: !3811, size: 32)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3808, file: !3048, line: 719, size: 32, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3811, file: !3048, line: 720, baseType: !109, size: 8)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3811, file: !3048, line: 721, baseType: !109, size: 8, offset: 8)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3811, file: !3048, line: 722, baseType: !109, size: 8, offset: 16)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3811, file: !3048, line: 723, baseType: !109, size: 8, offset: 24)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3808, file: !3048, line: 725, baseType: !847, size: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3638, file: !3048, line: 850, baseType: !123, size: 128, offset: 8192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3638, file: !3048, line: 851, baseType: !3820, size: 64, offset: 8320)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !3048, line: 60, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3638, file: !3048, line: 855, baseType: !65, size: 64, offset: 8384)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3638, file: !3048, line: 856, baseType: !109, size: 8, offset: 8448)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3638, file: !3048, line: 857, baseType: !109, size: 8, offset: 8456)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3638, file: !3048, line: 858, baseType: !48, size: 32, offset: 8480)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3638, file: !3048, line: 859, baseType: !123, size: 128, offset: 8512)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3638, file: !3048, line: 860, baseType: !48, size: 32, offset: 8640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3638, file: !3048, line: 861, baseType: !123, size: 128, offset: 8704)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3638, file: !3048, line: 873, baseType: !3830, size: 256, offset: 8832)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !3048, line: 376, size: 256, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3835}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3830, file: !3048, line: 381, baseType: !65, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3830, file: !3048, line: 384, baseType: !793, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3830, file: !3048, line: 389, baseType: !793, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3830, file: !3048, line: 392, baseType: !793, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3638, file: !3048, line: 875, baseType: !123, size: 128, offset: 9088)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3638, file: !3048, line: 877, baseType: !3838, size: 320, offset: 9216)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3839, line: 86, size: 320, elements: !3840)
!3839 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3838, file: !3839, line: 87, baseType: !48, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3838, file: !3839, line: 88, baseType: !123, size: 128, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3838, file: !3839, line: 89, baseType: !123, size: 128, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3638, file: !3048, line: 878, baseType: !814, size: 192, align: 64, offset: 9536)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3638, file: !3048, line: 881, baseType: !1692, size: 64, offset: 9728)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3638, file: !3048, line: 882, baseType: !1692, size: 64, offset: 9792)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3638, file: !3048, line: 884, baseType: !48, size: 32, offset: 9856)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3638, file: !3048, line: 885, baseType: !48, size: 32, offset: 9888)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3638, file: !3048, line: 886, baseType: !48, size: 32, offset: 9920)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3638, file: !3048, line: 888, baseType: !48, size: 32, offset: 9952)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3638, file: !3048, line: 890, baseType: !65, size: 64, offset: 9984)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3638, file: !3048, line: 893, baseType: !18, size: 32, offset: 10048)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3638, file: !3048, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3638, file: !3048, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3638, file: !3048, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3638, file: !3048, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3638, file: !3048, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3638, file: !3048, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3638, file: !3048, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3638, file: !3048, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3638, file: !3048, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3638, file: !3048, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3638, file: !3048, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3638, file: !3048, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3638, file: !3048, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3638, file: !3048, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3638, file: !3048, line: 969, baseType: !65, size: 64, offset: 10176)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3638, file: !3048, line: 971, baseType: !3869, size: 448, offset: 10240)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !264, line: 25, size: 448, elements: !3870)
!3870 = !{!3871, !3872, !3877}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3869, file: !264, line: 26, baseType: !65, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3869, file: !264, line: 27, baseType: !3873, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!1113, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, scope: !3869, file: !264, line: 28, baseType: !3878, size: 320, offset: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3869, file: !264, line: 28, size: 320, elements: !3879)
!3879 = !{!3880, !3890, !3915}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3878, file: !264, line: 37, baseType: !3881, size: 320)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !264, line: 30, size: 320, elements: !3882)
!3882 = !{!3883, !3885, !3886, !3887, !3888, !3889}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3881, file: !264, line: 31, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3881, file: !264, line: 32, baseType: !847, size: 32, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3881, file: !264, line: 33, baseType: !847, size: 32, offset: 96)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3881, file: !264, line: 34, baseType: !847, size: 32, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3881, file: !264, line: 35, baseType: !791, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3881, file: !264, line: 36, baseType: !3884, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3878, file: !264, line: 47, baseType: !3891, size: 192)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !264, line: 39, size: 192, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3914}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3891, file: !264, line: 40, baseType: !3330, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3891, file: !264, line: 41, baseType: !263, size: 32, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !3891, file: !264, line: 42, baseType: !3896, size: 64, offset: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3891, file: !264, line: 42, size: 64, elements: !3897)
!3897 = !{!3898, !3906}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3896, file: !264, line: 43, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3901, line: 7, size: 128, elements: !3902)
!3901 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3902 = !{!3903, !3905}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3900, file: !3901, line: 8, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !63, line: 93, baseType: !69)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3900, file: !3901, line: 9, baseType: !69, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3896, file: !264, line: 44, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3909, line: 7, size: 64, elements: !3910)
!3909 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3910 = !{!3911, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3908, file: !3909, line: 8, baseType: !3912, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3909, line: 5, baseType: !808)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3908, file: !3909, line: 9, baseType: !808, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3891, file: !264, line: 46, baseType: !791, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3878, file: !264, line: 55, baseType: !3916, size: 256)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3878, file: !264, line: 49, size: 256, elements: !3917)
!3917 = !{!3918, !3921, !3922, !3923, !3924}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3916, file: !264, line: 50, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !264, line: 14, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3916, file: !264, line: 51, baseType: !48, size: 32, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3916, file: !264, line: 52, baseType: !48, size: 32, offset: 96)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3916, file: !264, line: 53, baseType: !65, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3916, file: !264, line: 54, baseType: !65, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3638, file: !3048, line: 973, baseType: !3926, size: 32, offset: 10688)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !51, line: 27, baseType: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !63, line: 28, baseType: !48)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3638, file: !3048, line: 974, baseType: !3926, size: 32, offset: 10720)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3638, file: !3048, line: 978, baseType: !65, size: 64, offset: 10752)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3638, file: !3048, line: 987, baseType: !3637, size: 64, offset: 10816)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3638, file: !3048, line: 990, baseType: !3637, size: 64, offset: 10880)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3638, file: !3048, line: 995, baseType: !123, size: 128, offset: 10944)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3638, file: !3048, line: 996, baseType: !123, size: 128, offset: 11072)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3638, file: !3048, line: 997, baseType: !3637, size: 64, offset: 11200)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3638, file: !3048, line: 1005, baseType: !123, size: 128, offset: 11264)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3638, file: !3048, line: 1006, baseType: !123, size: 128, offset: 11392)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3638, file: !3048, line: 1009, baseType: !715, size: 64, offset: 11520)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3638, file: !3048, line: 1010, baseType: !3939, size: 512, offset: 11584)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 512, elements: !737)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3638, file: !3048, line: 1011, baseType: !123, size: 128, offset: 12096)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3638, file: !3048, line: 1012, baseType: !123, size: 128, offset: 12224)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3638, file: !3048, line: 1014, baseType: !1050, size: 64, offset: 12352)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3638, file: !3048, line: 1017, baseType: !2542, size: 64, offset: 12416)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3638, file: !3048, line: 1020, baseType: !2542, size: 64, offset: 12480)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3638, file: !3048, line: 1023, baseType: !46, size: 64, offset: 12544)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3638, file: !3048, line: 1025, baseType: !791, size: 64, offset: 12608)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3638, file: !3048, line: 1026, baseType: !791, size: 64, offset: 12672)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3638, file: !3048, line: 1031, baseType: !791, size: 64, offset: 12736)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3638, file: !3048, line: 1032, baseType: !3950, size: 192, offset: 12800)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !3048, line: 324, size: 192, elements: !3951)
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3950, file: !3048, line: 326, baseType: !791, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3950, file: !3048, line: 327, baseType: !791, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3950, file: !3048, line: 328, baseType: !362, size: 32, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3638, file: !3048, line: 1041, baseType: !65, size: 64, offset: 12992)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3638, file: !3048, line: 1042, baseType: !65, size: 64, offset: 13056)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3638, file: !3048, line: 1045, baseType: !791, size: 64, offset: 13120)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3638, file: !3048, line: 1048, baseType: !791, size: 64, offset: 13184)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3638, file: !3048, line: 1051, baseType: !65, size: 64, offset: 13248)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3638, file: !3048, line: 1052, baseType: !65, size: 64, offset: 13312)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3638, file: !3048, line: 1055, baseType: !3962, size: 640, offset: 13376)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3963, line: 132, size: 640, elements: !3964)
!3963 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3964 = !{!3965, !3971, !3972}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3962, file: !3963, line: 133, baseType: !3966, size: 576)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3967, size: 576, elements: !711)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3963, line: 117, size: 192, elements: !3968)
!3968 = !{!3969, !3970}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3967, file: !3963, line: 118, baseType: !791, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3967, file: !3963, line: 119, baseType: !3339, size: 128, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3962, file: !3963, line: 134, baseType: !18, size: 32, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3962, file: !3963, line: 135, baseType: !18, size: 32, offset: 608)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3638, file: !3048, line: 1058, baseType: !3974, size: 448, offset: 14016)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3963, line: 144, size: 448, elements: !3975)
!3975 = !{!3976, !3977, !3978}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3974, file: !3963, line: 145, baseType: !672, size: 128, align: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3974, file: !3963, line: 146, baseType: !349, size: 256, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3974, file: !3963, line: 147, baseType: !18, size: 32, offset: 384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3638, file: !3048, line: 1064, baseType: !764, size: 64, offset: 14464)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3638, file: !3048, line: 1067, baseType: !764, size: 64, offset: 14528)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3638, file: !3048, line: 1070, baseType: !764, size: 64, offset: 14592)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3638, file: !3048, line: 1074, baseType: !800, size: 64, offset: 14656)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3638, file: !3048, line: 1084, baseType: !3984, size: 128, offset: 14720)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !386)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3638, file: !3048, line: 1086, baseType: !3986, size: 64, offset: 14848)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !3048, line: 55, flags: DIFlagFwdDecl)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3638, file: !3048, line: 1089, baseType: !3989, size: 64, offset: 14912)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3990, line: 12, size: 64, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3991 = !{!3992}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3989, file: !3990, line: 13, baseType: !3993, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3990, line: 8, flags: DIFlagFwdDecl)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3638, file: !3048, line: 1090, baseType: !3996, size: 128, offset: 14976)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3997, line: 13, size: 128, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3998 = !{!3999}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3996, file: !3997, line: 14, baseType: !123, size: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3638, file: !3048, line: 1097, baseType: !4001, size: 64, offset: 15104)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !3048, line: 50, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3638, file: !3048, line: 1100, baseType: !4004, size: 64, offset: 15168)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !3048, line: 1100, flags: DIFlagFwdDecl)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3638, file: !3048, line: 1103, baseType: !4007, size: 64, offset: 15232)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !3048, line: 53, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3638, file: !3048, line: 1107, baseType: !4010, size: 64, offset: 15296)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4012, line: 31, size: 576, elements: !4013)
!4012 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4013 = !{!4014, !4015, !4018, !4021, !4024, !4025, !4028, !4031, !4032}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4011, file: !4012, line: 32, baseType: !719, size: 32)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4011, file: !4012, line: 33, baseType: !4016, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4012, line: 9, flags: DIFlagFwdDecl)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4011, file: !4012, line: 34, baseType: !4019, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4012, line: 10, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4011, file: !4012, line: 35, baseType: !4022, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4012, line: 8, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4011, file: !4012, line: 36, baseType: !748, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4011, file: !4012, line: 37, baseType: !4026, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !802, line: 34, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4011, file: !4012, line: 38, baseType: !4029, size: 64, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4012, line: 38, flags: DIFlagFwdDecl)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4011, file: !4012, line: 39, baseType: !4029, size: 64, offset: 448)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4011, file: !4012, line: 40, baseType: !4033, size: 64, offset: 512)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4035, line: 771, size: 384, elements: !4036)
!4035 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4036 = !{!4037, !4038, !4039, !4040}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4034, file: !4035, line: 772, baseType: !996, size: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4034, file: !4035, line: 773, baseType: !963, size: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4034, file: !4035, line: 774, baseType: !1098, size: 64, offset: 256)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4034, file: !4035, line: 775, baseType: !4041, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4043, line: 209, size: 4736, elements: !4044)
!4043 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4044 = !{!4045, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4042, file: !4043, line: 215, baseType: !4046, size: 896)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4047, size: 896, elements: !4104)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4043, line: 152, size: 1600, elements: !4049)
!4049 = !{!4050, !4155, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4279}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4048, file: !4043, line: 154, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4043, line: 389, size: 7872, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4073, !4074, !4078, !4079, !4080, !4081, !4082, !4083, !4101, !4102, !4106, !4107, !4108, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4142, !4145, !4146, !4153}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4052, file: !4043, line: 391, baseType: !4048, size: 1600)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4052, file: !4043, line: 393, baseType: !65, size: 64, offset: 1600)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4052, file: !4043, line: 401, baseType: !48, size: 32, offset: 1664)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4052, file: !4043, line: 404, baseType: !48, size: 32, offset: 1696)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4052, file: !4043, line: 417, baseType: !48, size: 32, offset: 1728)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4052, file: !4043, line: 418, baseType: !48, size: 32, offset: 1760)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4052, file: !4043, line: 419, baseType: !48, size: 32, offset: 1792)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4052, file: !4043, line: 432, baseType: !48, size: 32, offset: 1824)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4052, file: !4043, line: 433, baseType: !48, size: 32, offset: 1856)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4052, file: !4043, line: 434, baseType: !48, size: 32, offset: 1888)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4052, file: !4043, line: 436, baseType: !48, size: 32, offset: 1920)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4052, file: !4043, line: 439, baseType: !18, size: 32, offset: 1952)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4052, file: !4043, line: 441, baseType: !2263, size: 64, offset: 1984)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4052, file: !4043, line: 442, baseType: !4068, size: 448, offset: 2048)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4043, line: 138, size: 448, elements: !4069)
!4069 = !{!4070, !4071, !4072}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4068, file: !4043, line: 140, baseType: !2263, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4068, file: !4043, line: 141, baseType: !65, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4068, file: !4043, line: 142, baseType: !2641, size: 320, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4052, file: !4043, line: 443, baseType: !4068, size: 448, offset: 2496)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4052, file: !4043, line: 446, baseType: !4075, offset: 2944)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4068, elements: !4076)
!4076 = !{!4077}
!4077 = !DISubrange(count: 0)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4052, file: !4043, line: 455, baseType: !119, size: 16, offset: 2944)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4052, file: !4043, line: 456, baseType: !119, size: 16, offset: 2960)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4052, file: !4043, line: 457, baseType: !119, size: 16, offset: 2976)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4052, file: !4043, line: 458, baseType: !119, size: 16, offset: 2992)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4052, file: !4043, line: 461, baseType: !4046, size: 896, offset: 3008)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4052, file: !4043, line: 463, baseType: !4084, size: 64, offset: 3904)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4043, line: 537, size: 41664, elements: !4086)
!4086 = !{!4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4100}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4085, file: !4043, line: 538, baseType: !2282, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4085, file: !4043, line: 541, baseType: !18, size: 32, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4085, file: !4043, line: 544, baseType: !48, size: 32, offset: 96)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4085, file: !4043, line: 547, baseType: !123, size: 128, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4085, file: !4043, line: 548, baseType: !672, size: 128, align: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4085, file: !4043, line: 555, baseType: !4052, size: 7872, offset: 384)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4085, file: !4043, line: 558, baseType: !4051, size: 64, offset: 8256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4085, file: !4043, line: 561, baseType: !75, size: 32, offset: 8320)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4085, file: !4043, line: 564, baseType: !18, size: 32, offset: 8352)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4085, file: !4043, line: 567, baseType: !4097, size: 32768, offset: 8384)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !4098)
!4098 = !{!4099}
!4099 = !DISubrange(count: 4096)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4085, file: !4043, line: 570, baseType: !3563, size: 512, offset: 41152)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4052, file: !4043, line: 469, baseType: !123, size: 128, offset: 3968)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4052, file: !4043, line: 478, baseType: !4103, size: 1792, offset: 4096)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1792, elements: !4104)
!4104 = !{!4105}
!4105 = !DISubrange(count: 14)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4052, file: !4043, line: 487, baseType: !4051, size: 64, offset: 5888)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4052, file: !4043, line: 488, baseType: !4051, size: 64, offset: 5952)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4052, file: !4043, line: 491, baseType: !4109, size: 64, offset: 6016)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4043, line: 327, size: 896, elements: !4111)
!4111 = !{!4112, !4115, !4125, !4126, !4127, !4128, !4129}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4110, file: !4043, line: 332, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4114, line: 64, elements: !1713)
!4114 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4110, file: !4043, line: 333, baseType: !4116, size: 192)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4043, line: 299, size: 192, elements: !4117)
!4117 = !{!4118}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4116, file: !4043, line: 300, baseType: !4119, size: 192)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4120, line: 17, size: 192, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4121 = !{!4122, !4123, !4124}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4119, file: !4120, line: 18, baseType: !791, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4119, file: !4120, line: 19, baseType: !791, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4119, file: !4120, line: 20, baseType: !793, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4110, file: !4043, line: 339, baseType: !4116, size: 192, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4110, file: !4043, line: 347, baseType: !4116, size: 192, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4110, file: !4043, line: 353, baseType: !4116, size: 192, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4110, file: !4043, line: 366, baseType: !4051, size: 64, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4110, file: !4043, line: 367, baseType: !4051, size: 64, offset: 832)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4052, file: !4043, line: 492, baseType: !123, size: 128, offset: 6080)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4052, file: !4043, line: 495, baseType: !4116, size: 192, offset: 6208)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4052, file: !4043, line: 496, baseType: !4116, size: 192, offset: 6400)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4052, file: !4043, line: 497, baseType: !3950, size: 192, offset: 6592)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4052, file: !4043, line: 503, baseType: !123, size: 128, offset: 6784)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4052, file: !4043, line: 504, baseType: !349, size: 256, offset: 6912)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4052, file: !4043, line: 507, baseType: !80, size: 192, offset: 7168)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4052, file: !4043, line: 510, baseType: !1012, size: 256, offset: 7360)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4052, file: !4043, line: 513, baseType: !4139, size: 64, offset: 7616)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4141, line: 214, elements: !1713)
!4141 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4052, file: !4043, line: 516, baseType: !4143, offset: 7680)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4144, line: 76, elements: !1713)
!4144 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4052, file: !4043, line: 519, baseType: !75, size: 32, offset: 7680)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4052, file: !4043, line: 522, baseType: !4147, size: 128, offset: 7712)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4043, line: 370, size: 128, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4147, file: !4043, line: 372, baseType: !405, size: 8)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4147, file: !4043, line: 375, baseType: !48, size: 32, offset: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4147, file: !4043, line: 380, baseType: !48, size: 32, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4147, file: !4043, line: 386, baseType: !48, size: 32, offset: 96)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4052, file: !4043, line: 529, baseType: !4154, offset: 7872)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4051, elements: !750)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4048, file: !4043, line: 157, baseType: !4156, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4043, line: 669, size: 1984, elements: !4158)
!4158 = !{!4159, !4163, !4167, !4171, !4172, !4173, !4174, !4178, !4182, !4183, !4189, !4193, !4194, !4195, !4199, !4203, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4224, !4225, !4262, !4263}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4157, file: !4043, line: 670, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!4047, !4047}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4157, file: !4043, line: 671, baseType: !4164, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!48, !4047}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4157, file: !4043, line: 672, baseType: !4168, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{null, !4047}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4157, file: !4043, line: 673, baseType: !4168, size: 64, offset: 192)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4157, file: !4043, line: 674, baseType: !4168, size: 64, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4157, file: !4043, line: 675, baseType: !4168, size: 64, offset: 320)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4157, file: !4043, line: 676, baseType: !4175, size: 64, offset: 384)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{null, !4047, !48}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4157, file: !4043, line: 677, baseType: !4179, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!48, !2307, !4047}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4157, file: !4043, line: 679, baseType: !4179, size: 64, offset: 512)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4157, file: !4043, line: 682, baseType: !4184, size: 64, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!48, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4043, line: 30, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4157, file: !4043, line: 683, baseType: !4190, size: 64, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !4187}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4157, file: !4043, line: 684, baseType: !4190, size: 64, offset: 704)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4157, file: !4043, line: 685, baseType: !2745, size: 64, offset: 768)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4157, file: !4043, line: 686, baseType: !4196, size: 64, offset: 832)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!48, !3637, !4041}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4157, file: !4043, line: 688, baseType: !4200, size: 64, offset: 896)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{null, !3637, !4041}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4157, file: !4043, line: 689, baseType: !4204, size: 64, offset: 960)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !3637}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4157, file: !4043, line: 690, baseType: !4204, size: 64, offset: 1024)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4157, file: !4043, line: 691, baseType: !4204, size: 64, offset: 1088)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4157, file: !4043, line: 692, baseType: !4168, size: 64, offset: 1152)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4157, file: !4043, line: 694, baseType: !405, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4157, file: !4043, line: 707, baseType: !405, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4157, file: !4043, line: 719, baseType: !405, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4157, file: !4043, line: 722, baseType: !48, size: 32, offset: 1248)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4157, file: !4043, line: 723, baseType: !43, size: 64, offset: 1280)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4157, file: !4043, line: 726, baseType: !43, size: 64, offset: 1344)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4157, file: !4043, line: 729, baseType: !4084, size: 64, offset: 1408)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4157, file: !4043, line: 732, baseType: !4218, size: 192, offset: 1472)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4219, line: 19, size: 192, elements: !4220)
!4219 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4220 = !{!4221, !4222, !4223}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4218, file: !4219, line: 20, baseType: !1388, size: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4218, file: !4219, line: 21, baseType: !18, size: 32, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4218, file: !4219, line: 22, baseType: !18, size: 32, offset: 160)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4157, file: !4043, line: 738, baseType: !123, size: 128, offset: 1664)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4157, file: !4043, line: 744, baseType: !4226, size: 64, offset: 1792)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4043, line: 580, size: 1728, elements: !4228)
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4238, !4239, !4240, !4244, !4248, !4249, !4250, !4251, !4252, !4256, !4260, !4261}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4227, file: !4043, line: 586, baseType: !3563, size: 512)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4227, file: !4043, line: 587, baseType: !65, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4227, file: !4043, line: 593, baseType: !61, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4227, file: !4043, line: 596, baseType: !18, size: 32, offset: 640)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4227, file: !4043, line: 604, baseType: !18, size: 32, offset: 672)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4227, file: !4043, line: 610, baseType: !4156, size: 64, offset: 704)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4227, file: !4043, line: 611, baseType: !123, size: 128, offset: 768)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4227, file: !4043, line: 612, baseType: !4237, size: 64, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4227, file: !4043, line: 614, baseType: !2298, size: 64, offset: 960)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4227, file: !4043, line: 615, baseType: !2356, size: 64, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4227, file: !4043, line: 621, baseType: !4241, size: 64, offset: 1088)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!791, !4047, !4226}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4227, file: !4043, line: 625, baseType: !4245, size: 64, offset: 1152)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!359, !4047, !4226}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4227, file: !4043, line: 628, baseType: !2337, size: 64, offset: 1216)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4227, file: !4043, line: 631, baseType: !2325, size: 64, offset: 1280)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4227, file: !4043, line: 632, baseType: !2333, size: 64, offset: 1344)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4227, file: !4043, line: 633, baseType: !2329, size: 64, offset: 1408)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4227, file: !4043, line: 640, baseType: !4253, size: 64, offset: 1472)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!48, !4047, !4226, !791}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4227, file: !4043, line: 645, baseType: !4257, size: 64, offset: 1536)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!48, !4047, !4226, !359}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4227, file: !4043, line: 654, baseType: !2364, size: 64, offset: 1600)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4227, file: !4043, line: 657, baseType: !2371, size: 64, offset: 1664)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4157, file: !4043, line: 745, baseType: !4226, size: 64, offset: 1856)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4157, file: !4043, line: 754, baseType: !18, size: 32, offset: 1920)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4048, file: !4043, line: 160, baseType: !1633, size: 128, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4048, file: !4043, line: 163, baseType: !123, size: 128, offset: 256)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4048, file: !4043, line: 164, baseType: !123, size: 128, offset: 384)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4048, file: !4043, line: 167, baseType: !123, size: 128, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4048, file: !4043, line: 173, baseType: !48, size: 32, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4048, file: !4043, line: 175, baseType: !18, size: 32, offset: 672)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4048, file: !4043, line: 183, baseType: !791, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4048, file: !4043, line: 189, baseType: !75, size: 32, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4048, file: !4043, line: 192, baseType: !1012, size: 256, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4048, file: !4043, line: 193, baseType: !4274, size: 448, offset: 1088)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1013, line: 120, size: 448, elements: !4275)
!4275 = !{!4276, !4277, !4278}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4274, file: !1013, line: 121, baseType: !1012, size: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4274, file: !1013, line: 122, baseType: !672, size: 128, align: 64, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4274, file: !1013, line: 125, baseType: !2703, size: 64, offset: 384)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4048, file: !4043, line: 199, baseType: !4047, size: 64, offset: 1536)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4042, file: !4043, line: 218, baseType: !719, size: 32, offset: 896)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4042, file: !4043, line: 226, baseType: !4041, size: 64, offset: 960)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4042, file: !4043, line: 229, baseType: !4051, size: 64, offset: 1024)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4042, file: !4043, line: 232, baseType: !48, size: 32, offset: 1088)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4042, file: !4043, line: 241, baseType: !123, size: 128, offset: 1152)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4042, file: !4043, line: 242, baseType: !123, size: 128, offset: 1280)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4042, file: !4043, line: 243, baseType: !123, size: 128, offset: 1408)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4042, file: !4043, line: 246, baseType: !123, size: 128, offset: 1536)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4042, file: !4043, line: 255, baseType: !4103, size: 1792, offset: 1664)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4042, file: !4043, line: 258, baseType: !123, size: 128, offset: 3456)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4042, file: !4043, line: 259, baseType: !123, size: 128, offset: 3584)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4042, file: !4043, line: 265, baseType: !732, size: 128, offset: 3712)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4042, file: !4043, line: 271, baseType: !123, size: 128, offset: 3840)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4042, file: !4043, line: 277, baseType: !123, size: 128, offset: 3968)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4042, file: !4043, line: 278, baseType: !123, size: 128, offset: 4096)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4042, file: !4043, line: 279, baseType: !123, size: 128, offset: 4224)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4042, file: !4043, line: 288, baseType: !4051, size: 64, offset: 4352)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4042, file: !4043, line: 289, baseType: !4051, size: 64, offset: 4416)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4042, file: !4043, line: 290, baseType: !4041, size: 64, offset: 4480)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4042, file: !4043, line: 293, baseType: !405, size: 8, offset: 4544)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4042, file: !4043, line: 296, baseType: !672, size: 128, align: 64, offset: 4608)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3638, file: !3048, line: 1110, baseType: !4302, size: 64, offset: 15360)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4304, line: 93, size: 8768, elements: !4305)
!4304 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4354, !4363, !4364, !4366, !4367, !4368, !4371, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4409, !4410, !4417, !4427, !4489, !4490, !4493, !4494, !4495, !4496, !4497, !4498}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4303, file: !4304, line: 94, baseType: !719, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4303, file: !4304, line: 95, baseType: !75, size: 32, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4303, file: !4304, line: 96, baseType: !48, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4303, file: !4304, line: 97, baseType: !48, size: 32, offset: 96)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4303, file: !4304, line: 98, baseType: !123, size: 128, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4303, file: !4304, line: 100, baseType: !80, size: 192, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4303, file: !4304, line: 103, baseType: !3637, size: 64, offset: 448)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4303, file: !4304, line: 106, baseType: !4314, size: 192, offset: 512)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4315, line: 32, size: 192, elements: !4316)
!4315 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4316 = !{!4317, !4318}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4314, file: !4315, line: 33, baseType: !123, size: 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4314, file: !4315, line: 34, baseType: !4319, size: 64, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4320, line: 25, baseType: !4321)
!4320 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4320, line: 23, size: 64, elements: !4322)
!4322 = !{!4323}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4321, file: !4320, line: 24, baseType: !520, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4303, file: !4304, line: 109, baseType: !728, size: 64, offset: 704)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4303, file: !4304, line: 112, baseType: !48, size: 32, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4303, file: !4304, line: 114, baseType: !48, size: 32, offset: 800)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4303, file: !4304, line: 115, baseType: !3637, size: 64, offset: 832)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4303, file: !4304, line: 118, baseType: !48, size: 32, offset: 896)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4303, file: !4304, line: 119, baseType: !18, size: 32, offset: 928)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4303, file: !4304, line: 121, baseType: !4331, size: 64, offset: 960)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4304, line: 80, size: 448, elements: !4333)
!4333 = !{!4334, !4335, !4341}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4332, file: !4304, line: 81, baseType: !75, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4332, file: !4304, line: 82, baseType: !4336, size: 128, offset: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4304, line: 75, size: 128, elements: !4337)
!4337 = !{!4338, !4339}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4336, file: !4304, line: 76, baseType: !3637, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4336, file: !4304, line: 77, baseType: !4340, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4332, file: !4304, line: 83, baseType: !1051, size: 256, offset: 192)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4303, file: !4304, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4303, file: !4304, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4303, file: !4304, line: 138, baseType: !18, size: 32, offset: 1056)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4303, file: !4304, line: 139, baseType: !123, size: 128, offset: 1088)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4303, file: !4304, line: 142, baseType: !3285, size: 512, offset: 1216)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4303, file: !4304, line: 143, baseType: !3265, size: 64, offset: 1728)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4303, file: !4304, line: 150, baseType: !4349, size: 256, offset: 1792)
!4349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4350, size: 256, elements: !535)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4304, line: 38, size: 128, elements: !4351)
!4351 = !{!4352, !4353}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4350, file: !4304, line: 39, baseType: !791, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4350, file: !4304, line: 40, baseType: !791, size: 64, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4303, file: !4304, line: 156, baseType: !4355, size: 192, offset: 2048)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4304, line: 66, size: 192, elements: !4356)
!4356 = !{!4357}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4355, file: !4304, line: 67, baseType: !4358, size: 192)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4304, line: 47, size: 192, elements: !4359)
!4359 = !{!4360, !4361, !4362}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4358, file: !4304, line: 48, baseType: !355, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4358, file: !4304, line: 49, baseType: !355, size: 64, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4358, file: !4304, line: 50, baseType: !355, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4303, file: !4304, line: 160, baseType: !3962, size: 640, offset: 2240)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4303, file: !4304, line: 163, baseType: !4365, size: 256, offset: 2880)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 256, elements: !737)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4303, file: !4304, line: 169, baseType: !715, size: 64, offset: 3136)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4303, file: !4304, line: 172, baseType: !48, size: 32, offset: 3200)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4303, file: !4304, line: 174, baseType: !4369, size: 64, offset: 3264)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4304, line: 174, flags: DIFlagFwdDecl)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4303, file: !4304, line: 185, baseType: !4372, size: 64, offset: 3328)
!4372 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1156, line: 860, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1156, line: 853, size: 64, elements: !4374)
!4374 = !{!4375, !4376}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4373, file: !1156, line: 858, baseType: !1155, size: 32)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4373, file: !1156, line: 859, baseType: !85, size: 32, offset: 32)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4303, file: !4304, line: 186, baseType: !791, size: 64, offset: 3392)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4303, file: !4304, line: 186, baseType: !791, size: 64, offset: 3456)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4303, file: !4304, line: 186, baseType: !791, size: 64, offset: 3520)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4303, file: !4304, line: 186, baseType: !791, size: 64, offset: 3584)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4303, file: !4304, line: 187, baseType: !791, size: 64, offset: 3648)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4303, file: !4304, line: 188, baseType: !791, size: 64, offset: 3712)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4303, file: !4304, line: 189, baseType: !3950, size: 192, offset: 3776)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4303, file: !4304, line: 190, baseType: !65, size: 64, offset: 3968)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4303, file: !4304, line: 190, baseType: !65, size: 64, offset: 4032)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4303, file: !4304, line: 190, baseType: !65, size: 64, offset: 4096)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4303, file: !4304, line: 190, baseType: !65, size: 64, offset: 4160)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4303, file: !4304, line: 191, baseType: !65, size: 64, offset: 4224)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4303, file: !4304, line: 191, baseType: !65, size: 64, offset: 4288)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4303, file: !4304, line: 191, baseType: !65, size: 64, offset: 4352)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4303, file: !4304, line: 191, baseType: !65, size: 64, offset: 4416)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4303, file: !4304, line: 192, baseType: !65, size: 64, offset: 4480)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4303, file: !4304, line: 192, baseType: !65, size: 64, offset: 4544)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4303, file: !4304, line: 192, baseType: !65, size: 64, offset: 4608)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4303, file: !4304, line: 192, baseType: !65, size: 64, offset: 4672)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4303, file: !4304, line: 193, baseType: !65, size: 64, offset: 4736)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4303, file: !4304, line: 193, baseType: !65, size: 64, offset: 4800)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4303, file: !4304, line: 194, baseType: !4399, size: 448, offset: 4864)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4400, line: 12, size: 448, elements: !4401)
!4400 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4399, file: !4400, line: 15, baseType: !791, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4399, file: !4400, line: 17, baseType: !791, size: 64, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4399, file: !4400, line: 19, baseType: !791, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4399, file: !4400, line: 21, baseType: !791, size: 64, offset: 192)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4399, file: !4400, line: 29, baseType: !791, size: 64, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4399, file: !4400, line: 35, baseType: !791, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4399, file: !4400, line: 44, baseType: !791, size: 64, offset: 384)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4303, file: !4304, line: 202, baseType: !793, size: 64, offset: 5312)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4303, file: !4304, line: 213, baseType: !4411, size: 2048, offset: 5376)
!4411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4412, size: 2048, elements: !386)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4413, line: 43, size: 128, elements: !4414)
!4413 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4414 = !{!4415, !4416}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4412, file: !4413, line: 44, baseType: !64, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4412, file: !4413, line: 45, baseType: !64, size: 64, offset: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4303, file: !4304, line: 216, baseType: !4418, size: 448, offset: 7424)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4304, line: 30, size: 448, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4424, !4425, !4426}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4418, file: !4304, line: 31, baseType: !48, size: 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4418, file: !4304, line: 32, baseType: !1113, size: 64, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4418, file: !4304, line: 33, baseType: !65, size: 64, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4418, file: !4304, line: 34, baseType: !791, size: 64, offset: 192)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4418, file: !4304, line: 34, baseType: !791, size: 64, offset: 256)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4418, file: !4304, line: 35, baseType: !65, size: 64, offset: 320)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4418, file: !4304, line: 35, baseType: !65, size: 64, offset: 384)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4303, file: !4304, line: 219, baseType: !4428, size: 64, offset: 7872)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4430, line: 41, size: 3456, elements: !4431)
!4430 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4429, file: !4430, line: 47, baseType: !120, size: 16)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4429, file: !4430, line: 48, baseType: !303, size: 32, offset: 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4429, file: !4430, line: 54, baseType: !111, size: 8, offset: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4429, file: !4430, line: 55, baseType: !111, size: 8, offset: 72)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4429, file: !4430, line: 73, baseType: !792, size: 64, align: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4429, file: !4430, line: 74, baseType: !792, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4429, file: !4430, line: 81, baseType: !792, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4429, file: !4430, line: 82, baseType: !792, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4429, file: !4430, line: 85, baseType: !792, size: 64, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4429, file: !4430, line: 86, baseType: !792, size: 64, offset: 448)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4429, file: !4430, line: 94, baseType: !792, size: 64, offset: 512)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4429, file: !4430, line: 102, baseType: !792, size: 64, offset: 576)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4429, file: !4430, line: 107, baseType: !3174, size: 256, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4429, file: !4430, line: 108, baseType: !111, size: 8, align: 64, offset: 896)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4429, file: !4430, line: 110, baseType: !4447, size: 24, offset: 904)
!4447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 24, elements: !711)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4429, file: !4430, line: 111, baseType: !303, size: 32, align: 64, offset: 960)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4429, file: !4430, line: 113, baseType: !303, size: 32, offset: 992)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4429, file: !4430, line: 114, baseType: !303, size: 32, offset: 1024)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4429, file: !4430, line: 115, baseType: !303, size: 32, offset: 1056)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4429, file: !4430, line: 117, baseType: !303, size: 32, offset: 1088)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4429, file: !4430, line: 118, baseType: !792, size: 64, align: 64, offset: 1152)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4429, file: !4430, line: 120, baseType: !792, size: 64, offset: 1216)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4429, file: !4430, line: 121, baseType: !792, size: 64, offset: 1280)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4429, file: !4430, line: 122, baseType: !792, size: 64, offset: 1344)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4429, file: !4430, line: 123, baseType: !792, size: 64, offset: 1408)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4429, file: !4430, line: 133, baseType: !792, size: 64, offset: 1472)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4429, file: !4430, line: 137, baseType: !792, size: 64, offset: 1536)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4429, file: !4430, line: 142, baseType: !792, size: 64, offset: 1600)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4429, file: !4430, line: 143, baseType: !792, size: 64, offset: 1664)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4429, file: !4430, line: 146, baseType: !792, size: 64, offset: 1728)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4429, file: !4430, line: 147, baseType: !792, size: 64, offset: 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4429, file: !4430, line: 148, baseType: !792, size: 64, offset: 1856)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4429, file: !4430, line: 149, baseType: !792, size: 64, offset: 1920)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4429, file: !4430, line: 154, baseType: !792, size: 64, offset: 1984)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4429, file: !4430, line: 155, baseType: !792, size: 64, offset: 2048)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4429, file: !4430, line: 156, baseType: !792, size: 64, offset: 2112)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4429, file: !4430, line: 158, baseType: !792, size: 64, offset: 2176)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4429, file: !4430, line: 159, baseType: !792, size: 64, offset: 2240)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4429, file: !4430, line: 162, baseType: !792, size: 64, offset: 2304)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4429, file: !4430, line: 163, baseType: !792, size: 64, offset: 2368)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4429, file: !4430, line: 164, baseType: !792, size: 64, offset: 2432)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4429, file: !4430, line: 167, baseType: !792, size: 64, offset: 2496)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4429, file: !4430, line: 168, baseType: !792, size: 64, offset: 2560)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4429, file: !4430, line: 171, baseType: !792, size: 64, offset: 2624)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4429, file: !4430, line: 172, baseType: !792, size: 64, offset: 2688)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4429, file: !4430, line: 175, baseType: !792, size: 64, offset: 2752)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4429, file: !4430, line: 178, baseType: !792, size: 64, offset: 2816)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4429, file: !4430, line: 179, baseType: !792, size: 64, offset: 2880)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4429, file: !4430, line: 182, baseType: !303, size: 32, offset: 2944)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4429, file: !4430, line: 186, baseType: !792, size: 64, align: 64, offset: 3008)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4429, file: !4430, line: 194, baseType: !792, size: 64, offset: 3072)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4429, file: !4430, line: 195, baseType: !792, size: 64, offset: 3136)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4429, file: !4430, line: 199, baseType: !792, size: 64, offset: 3200)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4429, file: !4430, line: 200, baseType: !792, size: 64, offset: 3264)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4429, file: !4430, line: 203, baseType: !792, size: 64, offset: 3328)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4429, file: !4430, line: 204, baseType: !792, size: 64, offset: 3392)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4303, file: !4304, line: 222, baseType: !18, size: 32, offset: 7936)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4303, file: !4304, line: 223, baseType: !4491, size: 64, offset: 8000)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4304, line: 223, flags: DIFlagFwdDecl)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4303, file: !4304, line: 230, baseType: !405, size: 8, offset: 8064)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4303, file: !4304, line: 231, baseType: !476, size: 16, offset: 8080)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4303, file: !4304, line: 232, baseType: !476, size: 16, offset: 8096)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4303, file: !4304, line: 234, baseType: !1692, size: 64, offset: 8128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4303, file: !4304, line: 237, baseType: !349, size: 256, offset: 8192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4303, file: !4304, line: 243, baseType: !822, size: 320, offset: 8448)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3638, file: !3048, line: 1111, baseType: !4500, size: 64, offset: 15424)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4304, line: 20, size: 16640, elements: !4502)
!4502 = !{!4503, !4504, !4505, !4506}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4501, file: !4304, line: 21, baseType: !85, size: 32)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4501, file: !4304, line: 22, baseType: !719, size: 32, offset: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4501, file: !4304, line: 23, baseType: !80, size: 192, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4501, file: !4304, line: 24, baseType: !4507, size: 16384, offset: 256)
!4507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4508, size: 16384, elements: !333)
!4508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4315, line: 51, size: 256, elements: !4509)
!4509 = !{!4510}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4508, file: !4315, line: 52, baseType: !4511, size: 256)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4315, line: 37, size: 256, elements: !4512)
!4512 = !{!4513, !4520, !4521, !4525}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4511, file: !4315, line: 39, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4515, line: 83, baseType: !4516)
!4515 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4515, line: 82, baseType: !4518)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{null, !48}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4511, file: !4315, line: 40, baseType: !65, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4511, file: !4315, line: 46, baseType: !4522, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4515, line: 86, baseType: !4523)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4515, line: 85, baseType: !2746)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4511, file: !4315, line: 48, baseType: !4319, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3638, file: !3048, line: 1112, baseType: !4319, size: 64, offset: 15488)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3638, file: !3048, line: 1113, baseType: !4319, size: 64, offset: 15552)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3638, file: !3048, line: 1115, baseType: !4319, size: 64, offset: 15616)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3638, file: !3048, line: 1116, baseType: !4314, size: 192, offset: 15680)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3638, file: !3048, line: 1117, baseType: !65, size: 64, offset: 15872)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3638, file: !3048, line: 1118, baseType: !61, size: 64, offset: 15936)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3638, file: !3048, line: 1119, baseType: !18, size: 32, offset: 16000)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3638, file: !3048, line: 1121, baseType: !675, size: 64, offset: 16064)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3638, file: !3048, line: 1125, baseType: !4535, size: 64, offset: 16128)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !3048, line: 43, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3638, file: !3048, line: 1127, baseType: !754, size: 32, offset: 16192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3638, file: !3048, line: 1128, baseType: !18, size: 32, offset: 16224)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3638, file: !3048, line: 1130, baseType: !4540, size: 128, offset: 16256)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4541, line: 37, size: 128, elements: !4542)
!4541 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4542 = !{!4543, !4544, !4545}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4540, file: !4541, line: 38, baseType: !48, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4540, file: !4541, line: 39, baseType: !75, size: 32, offset: 32)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4540, file: !4541, line: 40, baseType: !4546, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4541, line: 24, flags: DIFlagFwdDecl)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3638, file: !3048, line: 1131, baseType: !4549, size: 256, offset: 16384)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4550, line: 12, size: 256, elements: !4551)
!4550 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4551 = !{!4552, !4553, !4554, !4555}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4549, file: !4550, line: 13, baseType: !890, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4549, file: !4550, line: 14, baseType: !65, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4549, file: !4550, line: 15, baseType: !65, size: 64, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4549, file: !4550, line: 16, baseType: !405, size: 8, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3638, file: !3048, line: 1134, baseType: !791, size: 64, offset: 16640)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3638, file: !3048, line: 1135, baseType: !791, size: 64, offset: 16704)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3638, file: !3048, line: 1138, baseType: !85, size: 32, offset: 16768)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3638, file: !3048, line: 1141, baseType: !362, size: 32, offset: 16800)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3638, file: !3048, line: 1143, baseType: !4561, size: 64, offset: 16832)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !3048, line: 735, size: 64, elements: !4562)
!4562 = !{!4563}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4561, file: !3048, line: 736, baseType: !4564, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3638, file: !3048, line: 1147, baseType: !1554, size: 128, offset: 16896)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3638, file: !3048, line: 1149, baseType: !3637, size: 64, offset: 17024)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3638, file: !3048, line: 1151, baseType: !4568, size: 64, offset: 17088)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !3048, line: 1151, flags: DIFlagFwdDecl)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3638, file: !3048, line: 1188, baseType: !46, size: 64, offset: 17152)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3638, file: !3048, line: 1191, baseType: !4572, size: 64, offset: 17216)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3048, line: 44, flags: DIFlagFwdDecl)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3638, file: !3048, line: 1194, baseType: !4575, size: 64, offset: 17280)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !3048, line: 45, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3638, file: !3048, line: 1197, baseType: !4578, size: 64, offset: 17344)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3048, line: 61, flags: DIFlagFwdDecl)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3638, file: !3048, line: 1199, baseType: !4581, size: 64, offset: 17408)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3052, line: 99, size: 128, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4582, file: !3052, line: 100, baseType: !353, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4582, file: !3052, line: 101, baseType: !75, size: 32, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4582, file: !3052, line: 103, baseType: !52, size: 16, offset: 96)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3638, file: !3048, line: 1202, baseType: !4588, size: 64, offset: 17472)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !3048, line: 48, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3638, file: !3048, line: 1205, baseType: !65, size: 64, offset: 17536)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3638, file: !3048, line: 1206, baseType: !4592, size: 64, offset: 17600)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4315, line: 14, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4315, line: 12, size: 384, elements: !4595)
!4595 = !{!4596}
!4596 = !DIDerivedType(tag: DW_TAG_member, scope: !4594, file: !4315, line: 13, baseType: !4597, size: 384)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4594, file: !4315, line: 13, size: 384, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4602}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4597, file: !4315, line: 13, baseType: !48, size: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4597, file: !4315, line: 13, baseType: !48, size: 32, offset: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4597, file: !4315, line: 13, baseType: !48, size: 32, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4597, file: !4315, line: 13, baseType: !4603, size: 256, offset: 128)
!4603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4604, line: 37, size: 256, elements: !4605)
!4604 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4605 = !{!4606, !4611, !4624, !4630, !4639, !4666, !4671}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4603, file: !4604, line: 42, baseType: !4607, size: 64)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 39, size: 64, elements: !4608)
!4608 = !{!4609, !4610}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4607, file: !4604, line: 40, baseType: !3927, size: 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4607, file: !4604, line: 41, baseType: !760, size: 32, offset: 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4603, file: !4604, line: 50, baseType: !4612, size: 192)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 45, size: 192, elements: !4613)
!4613 = !{!4614, !4616, !4617, !4623}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4612, file: !4604, line: 46, baseType: !4615, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !63, line: 95, baseType: !48)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4612, file: !4604, line: 47, baseType: !48, size: 32, offset: 32)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4612, file: !4604, line: 48, baseType: !4618, size: 64, offset: 64)
!4618 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4604, line: 11, baseType: !4619)
!4619 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4604, line: 8, size: 64, elements: !4620)
!4620 = !{!4621, !4622}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4619, file: !4604, line: 9, baseType: !48, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4619, file: !4604, line: 10, baseType: !46, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4612, file: !4604, line: 49, baseType: !48, size: 32, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4603, file: !4604, line: 57, baseType: !4625, size: 128)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 53, size: 128, elements: !4626)
!4626 = !{!4627, !4628, !4629}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4625, file: !4604, line: 54, baseType: !3927, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4625, file: !4604, line: 55, baseType: !760, size: 32, offset: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4625, file: !4604, line: 56, baseType: !4618, size: 64, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4603, file: !4604, line: 66, baseType: !4631, size: 256)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 60, size: 256, elements: !4632)
!4632 = !{!4633, !4634, !4635, !4636, !4638}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4631, file: !4604, line: 61, baseType: !3927, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4631, file: !4604, line: 62, baseType: !760, size: 32, offset: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4631, file: !4604, line: 63, baseType: !48, size: 32, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4631, file: !4604, line: 64, baseType: !4637, size: 64, offset: 128)
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !63, line: 94, baseType: !1343)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4631, file: !4604, line: 65, baseType: !4637, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4603, file: !4604, line: 105, baseType: !4640, size: 256)
!4640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 69, size: 256, elements: !4641)
!4641 = !{!4642, !4643}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4640, file: !4604, line: 70, baseType: !46, size: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, scope: !4640, file: !4604, line: 79, baseType: !4644, size: 192, offset: 64)
!4644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4640, file: !4604, line: 79, size: 192, elements: !4645)
!4645 = !{!4646, !4647, !4648, !4655, !4660}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4644, file: !4604, line: 81, baseType: !48, size: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4644, file: !4604, line: 86, baseType: !476, size: 16)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4644, file: !4604, line: 92, baseType: !4649, size: 192)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4644, file: !4604, line: 88, size: 192, elements: !4650)
!4650 = !{!4651, !4653, !4654}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4649, file: !4604, line: 89, baseType: !4652, size: 64)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !3326)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4649, file: !4604, line: 90, baseType: !46, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4649, file: !4604, line: 91, baseType: !46, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4644, file: !4604, line: 97, baseType: !4656, size: 96)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4644, file: !4604, line: 94, size: 96, elements: !4657)
!4657 = !{!4658, !4659}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4656, file: !4604, line: 95, baseType: !4652, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4656, file: !4604, line: 96, baseType: !303, size: 32, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4644, file: !4604, line: 103, baseType: !4661, size: 128)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4644, file: !4604, line: 99, size: 128, elements: !4662)
!4662 = !{!4663, !4664, !4665}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4661, file: !4604, line: 100, baseType: !65, size: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4661, file: !4604, line: 101, baseType: !303, size: 32, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4661, file: !4604, line: 102, baseType: !303, size: 32, offset: 96)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4603, file: !4604, line: 111, baseType: !4667, size: 128)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 108, size: 128, elements: !4668)
!4668 = !{!4669, !4670}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4667, file: !4604, line: 109, baseType: !1113, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4667, file: !4604, line: 110, baseType: !48, size: 32, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4603, file: !4604, line: 118, baseType: !4672, size: 128)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4603, file: !4604, line: 114, size: 128, elements: !4673)
!4673 = !{!4674, !4675, !4676}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4672, file: !4604, line: 115, baseType: !46, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4672, file: !4604, line: 116, baseType: !48, size: 32, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4672, file: !4604, line: 117, baseType: !18, size: 32, offset: 96)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3638, file: !3048, line: 1208, baseType: !4399, size: 448, offset: 17664)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3638, file: !3048, line: 1215, baseType: !791, size: 64, offset: 18112)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3638, file: !3048, line: 1217, baseType: !791, size: 64, offset: 18176)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3638, file: !3048, line: 1219, baseType: !791, size: 64, offset: 18240)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3638, file: !3048, line: 1223, baseType: !4682, size: 64, offset: 18304)
!4682 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4683, line: 99, baseType: !4684)
!4683 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4683, line: 99, size: 64, elements: !4685)
!4685 = !{!4686}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4684, file: !4683, line: 99, baseType: !520, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3638, file: !3048, line: 1225, baseType: !1155, size: 32, offset: 18368)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3638, file: !3048, line: 1226, baseType: !48, size: 32, offset: 18400)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3638, file: !3048, line: 1227, baseType: !48, size: 32, offset: 18432)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3638, file: !3048, line: 1231, baseType: !4041, size: 64, offset: 18496)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3638, file: !3048, line: 1233, baseType: !123, size: 128, offset: 18560)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3638, file: !3048, line: 1240, baseType: !4693, size: 64, offset: 18688)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !3048, line: 62, flags: DIFlagFwdDecl)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3638, file: !3048, line: 1242, baseType: !4696, size: 64, offset: 18752)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3048, line: 1242, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3638, file: !3048, line: 1244, baseType: !123, size: 128, offset: 18816)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3638, file: !3048, line: 1245, baseType: !4700, size: 64, offset: 18944)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !3048, line: 51, flags: DIFlagFwdDecl)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3638, file: !3048, line: 1246, baseType: !349, size: 256, offset: 19008)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3638, file: !3048, line: 1247, baseType: !18, size: 32, offset: 19264)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3638, file: !3048, line: 1250, baseType: !4705, size: 64, offset: 19328)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !3048, line: 57, flags: DIFlagFwdDecl)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3638, file: !3048, line: 1251, baseType: !349, size: 256, offset: 19392)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3638, file: !3048, line: 1252, baseType: !123, size: 128, offset: 19648)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3638, file: !3048, line: 1259, baseType: !1926, size: 64, offset: 19776)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3638, file: !3048, line: 1260, baseType: !476, size: 16, offset: 19840)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3638, file: !3048, line: 1261, baseType: !476, size: 16, offset: 19856)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3638, file: !3048, line: 1314, baseType: !4713, size: 64, offset: 19904)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4715, line: 62, size: 256, align: 256, elements: !4716)
!4715 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4716 = !{!4717, !4718, !4719, !4720, !4721, !4722, !4723}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4714, file: !4715, line: 75, baseType: !303, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4714, file: !4715, line: 90, baseType: !303, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4714, file: !4715, line: 112, baseType: !792, size: 64, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4714, file: !4715, line: 132, baseType: !303, size: 32, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4714, file: !4715, line: 140, baseType: !303, size: 32, offset: 160)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4714, file: !4715, line: 149, baseType: !303, size: 32, offset: 192)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4714, file: !4715, line: 154, baseType: !4724, offset: 224)
!4724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !750)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3638, file: !3048, line: 1315, baseType: !847, size: 32, offset: 19968)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3638, file: !3048, line: 1316, baseType: !847, size: 32, offset: 20000)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3638, file: !3048, line: 1321, baseType: !65, size: 64, offset: 20032)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3638, file: !3048, line: 1325, baseType: !48, size: 32, offset: 20096)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3638, file: !3048, line: 1326, baseType: !48, size: 32, offset: 20128)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3638, file: !3048, line: 1327, baseType: !48, size: 32, offset: 20160)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3638, file: !3048, line: 1328, baseType: !48, size: 32, offset: 20192)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3638, file: !3048, line: 1329, baseType: !672, size: 128, align: 64, offset: 20224)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3638, file: !3048, line: 1332, baseType: !4734, size: 128, offset: 20352)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4735, line: 51, size: 128, elements: !4736)
!4735 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4736 = !{!4737, !4742, !4743}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4734, file: !4735, line: 60, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4739, line: 7, size: 64, elements: !4740)
!4739 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4740 = !{!4741}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4738, file: !4739, line: 12, baseType: !3797, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4734, file: !4735, line: 63, baseType: !405, size: 8, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4734, file: !4735, line: 70, baseType: !405, size: 8, offset: 72)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3638, file: !3048, line: 1335, baseType: !4745, size: 64, offset: 20480)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !3048, line: 59, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3638, file: !3048, line: 1337, baseType: !4748, size: 128, offset: 20544)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4735, line: 39, size: 128, elements: !4749)
!4749 = !{!4750, !4751, !4752}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4748, file: !4735, line: 40, baseType: !1569, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4748, file: !4735, line: 42, baseType: !303, size: 32, offset: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4748, file: !4735, line: 43, baseType: !303, size: 32, offset: 96)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3638, file: !3048, line: 1340, baseType: !4754, size: 64, offset: 20672)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !3048, line: 69, flags: DIFlagFwdDecl)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3638, file: !3048, line: 1351, baseType: !48, size: 32, offset: 20736)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3638, file: !3048, line: 1352, baseType: !48, size: 32, offset: 20768)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3638, file: !3048, line: 1354, baseType: !65, size: 64, offset: 20800)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3638, file: !3048, line: 1364, baseType: !791, size: 64, offset: 20864)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3638, file: !3048, line: 1365, baseType: !791, size: 64, offset: 20928)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3638, file: !3048, line: 1412, baseType: !65, size: 64, offset: 20992)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3638, file: !3048, line: 1453, baseType: !3046, size: 64, offset: 21056)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3638, file: !3048, line: 1457, baseType: !4764, size: 64, offset: 21120)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !270, line: 61, size: 576, elements: !4766)
!4766 = !{!4767, !4768, !4787, !4790, !4791, !4824, !4834}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4765, file: !270, line: 62, baseType: !269, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, scope: !4765, file: !270, line: 64, baseType: !4769, size: 192, offset: 64)
!4769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4765, file: !270, line: 64, size: 192, elements: !4770)
!4770 = !{!4771, !4782}
!4771 = !DIDerivedType(tag: DW_TAG_member, scope: !4769, file: !270, line: 65, baseType: !4772, size: 192)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4769, file: !270, line: 65, size: 192, elements: !4773)
!4773 = !{!4774, !4781}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4772, file: !270, line: 66, baseType: !4775, size: 128)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4776, line: 50, size: 128, elements: !4777)
!4776 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4777 = !{!4778, !4779, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4775, file: !4776, line: 52, baseType: !65, size: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4775, file: !4776, line: 54, baseType: !18, size: 32, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4775, file: !4776, line: 55, baseType: !18, size: 32, offset: 96)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4772, file: !270, line: 67, baseType: !65, size: 64, offset: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, scope: !4769, file: !270, line: 70, baseType: !4783, size: 192)
!4783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4769, file: !270, line: 70, size: 192, elements: !4784)
!4784 = !{!4785, !4786}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4783, file: !270, line: 71, baseType: !672, size: 128, align: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4783, file: !270, line: 72, baseType: !65, size: 64, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4765, file: !270, line: 76, baseType: !4788, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !270, line: 76, flags: DIFlagFwdDecl)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4765, file: !270, line: 77, baseType: !65, size: 64, offset: 320)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4765, file: !270, line: 79, baseType: !4792, size: 64, offset: 384)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4776, line: 25, size: 256, elements: !4794)
!4794 = !{!4795, !4801, !4805}
!4795 = !DIDerivedType(tag: DW_TAG_member, scope: !4793, file: !4776, line: 26, baseType: !4796, size: 128)
!4796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4793, file: !4776, line: 26, size: 128, elements: !4797)
!4797 = !{!4798, !4800}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4796, file: !4776, line: 27, baseType: !4799, size: 128)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !386)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4796, file: !4776, line: 28, baseType: !4799, size: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4793, file: !4776, line: 31, baseType: !4802, size: 64, offset: 128)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4804)
!4804 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4776, line: 23, flags: DIFlagFwdDecl)
!4805 = !DIDerivedType(tag: DW_TAG_member, scope: !4793, file: !4776, line: 33, baseType: !4806, size: 64, offset: 192)
!4806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4793, file: !4776, line: 33, size: 64, elements: !4807)
!4807 = !{!4808, !4814, !4819}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4806, file: !4776, line: 38, baseType: !4809, size: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4806, file: !4776, line: 34, size: 64, elements: !4810)
!4810 = !{!4811, !4812, !4813}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4809, file: !4776, line: 35, baseType: !808, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4809, file: !4776, line: 36, baseType: !109, size: 8, offset: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4809, file: !4776, line: 37, baseType: !109, size: 8, offset: 40)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4806, file: !4776, line: 42, baseType: !4815, size: 16)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4806, file: !4776, line: 39, size: 16, elements: !4816)
!4816 = !{!4817, !4818}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4815, file: !4776, line: 40, baseType: !109, size: 8)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4815, file: !4776, line: 41, baseType: !109, size: 8, offset: 8)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4806, file: !4776, line: 46, baseType: !4820, size: 16)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4806, file: !4776, line: 43, size: 16, elements: !4821)
!4821 = !{!4822, !4823}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4820, file: !4776, line: 44, baseType: !109, size: 8)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4820, file: !4776, line: 45, baseType: !109, size: 8, offset: 8)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4765, file: !270, line: 81, baseType: !4825, size: 64, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !270, line: 85, size: 384, elements: !4827)
!4827 = !{!4828, !4829, !4830, !4831, !4832, !4833}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4826, file: !270, line: 86, baseType: !4788, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4826, file: !270, line: 87, baseType: !65, size: 64, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4826, file: !270, line: 88, baseType: !65, size: 64, offset: 128)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4826, file: !270, line: 89, baseType: !65, size: 64, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4826, file: !270, line: 90, baseType: !405, size: 8, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4826, file: !270, line: 92, baseType: !4825, size: 64, offset: 320)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4765, file: !270, line: 82, baseType: !18, size: 32, offset: 512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3638, file: !3048, line: 1463, baseType: !4836, offset: 21184)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !3048, line: 739, elements: !1713)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3638, file: !3048, line: 1470, baseType: !672, size: 128, align: 64, offset: 21184)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3638, file: !3048, line: 1471, baseType: !719, size: 32, offset: 21312)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3638, file: !3048, line: 1472, baseType: !48, size: 32, offset: 21344)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3638, file: !3048, line: 1474, baseType: !3637, size: 64, offset: 21376)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3638, file: !3048, line: 1475, baseType: !2641, size: 320, offset: 21440)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3638, file: !3048, line: 1478, baseType: !4843, size: 64, offset: 21760)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4845, line: 14, flags: DIFlagFwdDecl)
!4845 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3638, file: !3048, line: 1482, baseType: !719, size: 32, offset: 21824)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3638, file: !3048, line: 1489, baseType: !46, size: 64, offset: 21888)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3638, file: !3048, line: 1504, baseType: !46, size: 64, offset: 21952)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3638, file: !3048, line: 1505, baseType: !792, size: 64, offset: 22016)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3638, file: !3048, line: 1506, baseType: !791, size: 64, offset: 22080)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3638, file: !3048, line: 1507, baseType: !792, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3638, file: !3048, line: 1508, baseType: !792, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3638, file: !3048, line: 1509, baseType: !792, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3638, file: !3048, line: 1510, baseType: !672, size: 128, align: 64, offset: 22208)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3638, file: !3048, line: 1511, baseType: !48, size: 32, offset: 22336)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3638, file: !3048, line: 1515, baseType: !4857, size: 64, offset: 22400)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !667, line: 56, size: 64, elements: !4858)
!4858 = !{!4859}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4857, file: !667, line: 57, baseType: !670, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3638, file: !3048, line: 1518, baseType: !4857, size: 64, offset: 22464)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3638, file: !3048, line: 1528, baseType: !672, size: 128, align: 64, offset: 22528)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3638, file: !3048, line: 1552, baseType: !4863, size: 35328, offset: 23040)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4864, line: 430, size: 35328, elements: !4865)
!4864 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4865 = !{!4866, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4895, !4896, !4897, !4898, !4899, !4900, !4903, !4904, !4905, !4906}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4863, file: !4864, line: 432, baseType: !4867, size: 192)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4868, size: 192, elements: !711)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4869, line: 16, size: 64, elements: !4870)
!4869 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4870 = !{!4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4868, file: !4869, line: 17, baseType: !119, size: 16)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4868, file: !4869, line: 18, baseType: !119, size: 16, offset: 16)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4868, file: !4869, line: 19, baseType: !119, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4868, file: !4869, line: 19, baseType: !119, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4868, file: !4869, line: 19, baseType: !119, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4868, file: !4869, line: 19, baseType: !119, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4868, file: !4869, line: 19, baseType: !119, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4868, file: !4869, line: 20, baseType: !119, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4868, file: !4869, line: 20, baseType: !119, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4868, file: !4869, line: 20, baseType: !119, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4868, file: !4869, line: 20, baseType: !119, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4868, file: !4869, line: 20, baseType: !119, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4868, file: !4869, line: 20, baseType: !119, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4863, file: !4864, line: 436, baseType: !65, size: 64, offset: 192)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4863, file: !4864, line: 440, baseType: !52, size: 16, offset: 256)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4863, file: !4864, line: 441, baseType: !52, size: 16, offset: 272)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4863, file: !4864, line: 442, baseType: !52, size: 16, offset: 288)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4863, file: !4864, line: 443, baseType: !52, size: 16, offset: 304)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4863, file: !4864, line: 447, baseType: !65, size: 64, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4863, file: !4864, line: 448, baseType: !65, size: 64, offset: 384)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4863, file: !4864, line: 459, baseType: !4892, size: 256, offset: 448)
!4892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4893, size: 256, elements: !737)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4864, line: 428, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4863, file: !4864, line: 461, baseType: !65, size: 64, offset: 704)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4863, file: !4864, line: 463, baseType: !65, size: 64, offset: 768)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4863, file: !4864, line: 465, baseType: !65, size: 64, offset: 832)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4863, file: !4864, line: 466, baseType: !65, size: 64, offset: 896)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4863, file: !4864, line: 467, baseType: !65, size: 64, offset: 960)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4863, file: !4864, line: 473, baseType: !4901, size: 64, offset: 1024)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4864, line: 10, flags: DIFlagFwdDecl)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4863, file: !4864, line: 480, baseType: !65, size: 64, offset: 1088)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4863, file: !4864, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4863, file: !4864, line: 491, baseType: !847, size: 32, offset: 1184)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4863, file: !4864, line: 501, baseType: !4907, size: 33792, offset: 1536)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4908, line: 448, size: 33792, elements: !4909)
!4908 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4909 = !{!4910, !4911, !4912, !5070, !5071, !5077, !5078}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4907, file: !4908, line: 461, baseType: !18, size: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4907, file: !4908, line: 468, baseType: !65, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4907, file: !4908, line: 476, baseType: !4913, size: 64, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4908, line: 356, size: 33280, align: 512, elements: !4915)
!4915 = !{!4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4914, file: !4908, line: 358, baseType: !18, size: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4914, file: !4908, line: 361, baseType: !18, size: 32, offset: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4914, file: !4908, line: 364, baseType: !791, size: 64, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4914, file: !4908, line: 367, baseType: !791, size: 64, offset: 128)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4914, file: !4908, line: 370, baseType: !791, size: 64, offset: 192)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4914, file: !4908, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4914, file: !4908, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4914, file: !4908, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4914, file: !4908, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4914, file: !4908, line: 397, baseType: !4926, size: 32768, offset: 512)
!4926 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4908, line: 348, size: 32768, elements: !4927)
!4927 = !{!4928, !4943, !4978, !5055, !5068}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4926, file: !4908, line: 349, baseType: !4929, size: 896)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4908, line: 12, size: 896, elements: !4930)
!4930 = !{!4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4942}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4929, file: !4908, line: 13, baseType: !847, size: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4929, file: !4908, line: 14, baseType: !847, size: 32, offset: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4929, file: !4908, line: 15, baseType: !847, size: 32, offset: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4929, file: !4908, line: 16, baseType: !847, size: 32, offset: 96)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4929, file: !4908, line: 17, baseType: !847, size: 32, offset: 128)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4929, file: !4908, line: 18, baseType: !847, size: 32, offset: 160)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4929, file: !4908, line: 19, baseType: !847, size: 32, offset: 192)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4929, file: !4908, line: 22, baseType: !4939, size: 640, offset: 224)
!4939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 640, elements: !4940)
!4940 = !{!4941}
!4941 = !DISubrange(count: 20)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4929, file: !4908, line: 25, baseType: !847, size: 32, offset: 864)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4926, file: !4908, line: 350, baseType: !4944, size: 4096, align: 128)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4908, line: 34, size: 4096, align: 128, elements: !4945)
!4945 = !{!4946, !4947, !4948, !4949, !4950, !4965, !4966, !4967, !4969, !4971, !4973}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4944, file: !4908, line: 35, baseType: !119, size: 16)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4944, file: !4908, line: 36, baseType: !119, size: 16, offset: 16)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4944, file: !4908, line: 37, baseType: !119, size: 16, offset: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4944, file: !4908, line: 38, baseType: !119, size: 16, offset: 48)
!4950 = !DIDerivedType(tag: DW_TAG_member, scope: !4944, file: !4908, line: 39, baseType: !4951, size: 128, offset: 64)
!4951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4944, file: !4908, line: 39, size: 128, elements: !4952)
!4952 = !{!4953, !4958}
!4953 = !DIDerivedType(tag: DW_TAG_member, scope: !4951, file: !4908, line: 40, baseType: !4954, size: 128)
!4954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4951, file: !4908, line: 40, size: 128, elements: !4955)
!4955 = !{!4956, !4957}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4954, file: !4908, line: 41, baseType: !791, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4954, file: !4908, line: 42, baseType: !791, size: 64, offset: 64)
!4958 = !DIDerivedType(tag: DW_TAG_member, scope: !4951, file: !4908, line: 44, baseType: !4959, size: 128)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4951, file: !4908, line: 44, size: 128, elements: !4960)
!4960 = !{!4961, !4962, !4963, !4964}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4959, file: !4908, line: 45, baseType: !847, size: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4959, file: !4908, line: 46, baseType: !847, size: 32, offset: 32)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4959, file: !4908, line: 47, baseType: !847, size: 32, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4959, file: !4908, line: 48, baseType: !847, size: 32, offset: 96)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4944, file: !4908, line: 51, baseType: !847, size: 32, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4944, file: !4908, line: 52, baseType: !847, size: 32, offset: 224)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4944, file: !4908, line: 55, baseType: !4968, size: 1024, offset: 256)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 1024, elements: !556)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4944, file: !4908, line: 58, baseType: !4970, size: 2048, offset: 1280)
!4970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 2048, elements: !333)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4944, file: !4908, line: 60, baseType: !4972, size: 384, offset: 3328)
!4972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 384, elements: !526)
!4973 = !DIDerivedType(tag: DW_TAG_member, scope: !4944, file: !4908, line: 62, baseType: !4974, size: 384, offset: 3712)
!4974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4944, file: !4908, line: 62, size: 384, elements: !4975)
!4975 = !{!4976, !4977}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4974, file: !4908, line: 63, baseType: !4972, size: 384)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4974, file: !4908, line: 64, baseType: !4972, size: 384)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4926, file: !4908, line: 351, baseType: !4979, size: 1088)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4908, line: 79, size: 1088, elements: !4980)
!4980 = !{!4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !5054}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4979, file: !4908, line: 80, baseType: !847, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4979, file: !4908, line: 81, baseType: !847, size: 32, offset: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4979, file: !4908, line: 82, baseType: !847, size: 32, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4979, file: !4908, line: 83, baseType: !847, size: 32, offset: 96)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4979, file: !4908, line: 84, baseType: !847, size: 32, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4979, file: !4908, line: 85, baseType: !847, size: 32, offset: 160)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4979, file: !4908, line: 86, baseType: !847, size: 32, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4979, file: !4908, line: 88, baseType: !4939, size: 640, offset: 224)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4979, file: !4908, line: 89, baseType: !109, size: 8, offset: 864)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4979, file: !4908, line: 90, baseType: !109, size: 8, offset: 872)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4979, file: !4908, line: 91, baseType: !109, size: 8, offset: 880)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4979, file: !4908, line: 92, baseType: !109, size: 8, offset: 888)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4979, file: !4908, line: 93, baseType: !109, size: 8, offset: 896)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4979, file: !4908, line: 94, baseType: !109, size: 8, offset: 904)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4979, file: !4908, line: 95, baseType: !4996, size: 64, offset: 960)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4998, line: 11, size: 128, elements: !4999)
!4998 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4999 = !{!5000, !5001}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4997, file: !4998, line: 12, baseType: !1113, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4997, file: !4998, line: 13, baseType: !5002, size: 64, offset: 64)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5004, line: 103, size: 1344, elements: !5005)
!5004 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5005 = !{!5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5034, !5035, !5036}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5003, file: !5004, line: 109, baseType: !65, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5003, file: !5004, line: 110, baseType: !65, size: 64, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5003, file: !5004, line: 111, baseType: !65, size: 64, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5003, file: !5004, line: 112, baseType: !65, size: 64, offset: 192)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5003, file: !5004, line: 113, baseType: !65, size: 64, offset: 256)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5003, file: !5004, line: 114, baseType: !65, size: 64, offset: 320)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5003, file: !5004, line: 117, baseType: !65, size: 64, offset: 384)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5003, file: !5004, line: 118, baseType: !65, size: 64, offset: 448)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5003, file: !5004, line: 119, baseType: !65, size: 64, offset: 512)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5003, file: !5004, line: 120, baseType: !65, size: 64, offset: 576)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5003, file: !5004, line: 121, baseType: !65, size: 64, offset: 640)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5003, file: !5004, line: 122, baseType: !65, size: 64, offset: 704)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5003, file: !5004, line: 123, baseType: !65, size: 64, offset: 768)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5003, file: !5004, line: 124, baseType: !65, size: 64, offset: 832)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5003, file: !5004, line: 125, baseType: !65, size: 64, offset: 896)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5003, file: !5004, line: 139, baseType: !65, size: 64, offset: 960)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5003, file: !5004, line: 142, baseType: !65, size: 64, offset: 1024)
!5023 = !DIDerivedType(tag: DW_TAG_member, scope: !5003, file: !5004, line: 144, baseType: !5024, size: 64, offset: 1088)
!5024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5003, file: !5004, line: 144, size: 64, elements: !5025)
!5025 = !{!5026, !5027, !5028}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5024, file: !5004, line: 146, baseType: !119, size: 16)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5024, file: !5004, line: 148, baseType: !791, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5024, file: !5004, line: 150, baseType: !5029, size: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5004, line: 59, size: 64, elements: !5030)
!5030 = !{!5031, !5032, !5033}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5029, file: !5004, line: 61, baseType: !791, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5029, file: !5004, line: 63, baseType: !791, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5029, file: !5004, line: 65, baseType: !791, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5003, file: !5004, line: 153, baseType: !65, size: 64, offset: 1152)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5003, file: !5004, line: 154, baseType: !65, size: 64, offset: 1216)
!5036 = !DIDerivedType(tag: DW_TAG_member, scope: !5003, file: !5004, line: 156, baseType: !5037, size: 64, offset: 1280)
!5037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5003, file: !5004, line: 156, size: 64, elements: !5038)
!5038 = !{!5039, !5040, !5041}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5037, file: !5004, line: 158, baseType: !119, size: 16)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5037, file: !5004, line: 160, baseType: !791, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5037, file: !5004, line: 162, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5004, line: 69, size: 64, elements: !5043)
!5043 = !{!5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5042, file: !5004, line: 71, baseType: !791, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5042, file: !5004, line: 73, baseType: !791, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5042, file: !5004, line: 75, baseType: !791, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5042, file: !5004, line: 77, baseType: !791, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5042, file: !5004, line: 80, baseType: !791, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5042, file: !5004, line: 83, baseType: !791, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5042, file: !5004, line: 86, baseType: !791, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5042, file: !5004, line: 88, baseType: !791, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5042, file: !5004, line: 93, baseType: !791, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5042, file: !5004, line: 100, baseType: !791, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4979, file: !4908, line: 96, baseType: !847, size: 32, offset: 1024)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4926, file: !4908, line: 352, baseType: !5056, size: 4608, align: 512)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4908, line: 333, size: 4608, align: 512, elements: !5057)
!5057 = !{!5058, !5059, !5066}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5056, file: !4908, line: 334, baseType: !4944, size: 4096, align: 128)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5056, file: !4908, line: 335, baseType: !5060, size: 512, offset: 4096)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4908, line: 312, size: 512, elements: !5061)
!5061 = !{!5062, !5063, !5064}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5060, file: !4908, line: 313, baseType: !791, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5060, file: !4908, line: 314, baseType: !791, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5060, file: !4908, line: 315, baseType: !5065, size: 384, offset: 128)
!5065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 384, elements: !868)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5056, file: !4908, line: 336, baseType: !5067, offset: 4608)
!5067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, elements: !750)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4926, file: !4908, line: 353, baseType: !5069, size: 32768)
!5069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 32768, elements: !4098)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4907, file: !4908, line: 484, baseType: !4913, size: 64, offset: 192)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4907, file: !4908, line: 491, baseType: !5072, size: 128, offset: 256)
!5072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4908, line: 404, size: 128, elements: !5073)
!5073 = !{!5074, !5075, !5076}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5072, file: !4908, line: 424, baseType: !791, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5072, file: !4908, line: 432, baseType: !18, size: 32, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5072, file: !4908, line: 440, baseType: !18, size: 32, offset: 96)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4907, file: !4908, line: 498, baseType: !5072, size: 128, offset: 384)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4907, file: !4908, line: 508, baseType: !4914, size: 33280, align: 512, offset: 512)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3620, file: !3621, line: 16, baseType: !80, size: 192, offset: 512)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3620, file: !3621, line: 17, baseType: !75, size: 32, offset: 704)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1397, file: !183, line: 1240, baseType: !46, size: 64, offset: 6912)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1397, file: !183, line: 1243, baseType: !847, size: 32, offset: 6976)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1397, file: !183, line: 1245, baseType: !838, size: 64, offset: 7040)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1397, file: !183, line: 1246, baseType: !838, size: 64, offset: 7104)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1397, file: !183, line: 1248, baseType: !303, size: 32, offset: 7168)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1397, file: !183, line: 1249, baseType: !5087, size: 64, offset: 7232)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !183, line: 634, flags: DIFlagFwdDecl)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1397, file: !183, line: 1252, baseType: !3174, size: 256, offset: 7296)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1397, file: !183, line: 1253, baseType: !5091, size: 128, offset: 7552)
!5091 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5092, line: 21, baseType: !5093)
!5092 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5092, line: 19, size: 128, elements: !5094)
!5094 = !{!5095}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5093, file: !5092, line: 20, baseType: !385, size: 128)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1397, file: !183, line: 1255, baseType: !18, size: 32, offset: 7680)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1397, file: !183, line: 1261, baseType: !349, size: 256, offset: 7744)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1397, file: !183, line: 1267, baseType: !43, size: 64, offset: 8000)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1397, file: !183, line: 1269, baseType: !5100, size: 64, offset: 8064)
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5102)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1151, line: 128, size: 1024, align: 512, elements: !5103)
!5103 = !{!5104, !5108, !5109, !5116, !5122, !5126, !5130, !5134, !5135, !5139, !5143, !5148, !5152}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !5102, file: !1151, line: 129, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!48, !1149, !18}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !5102, file: !1151, line: 130, baseType: !5105, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !5102, file: !1151, line: 131, baseType: !5110, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!48, !5113, !5115}
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !5102, file: !1151, line: 132, baseType: !5117, size: 64, offset: 192)
!5117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5118, size: 64)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!48, !5113, !18, !43, !5120}
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !5102, file: !1151, line: 134, baseType: !5123, size: 64, offset: 256)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!48, !5113}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !5102, file: !1151, line: 135, baseType: !5127, size: 64, offset: 320)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!48, !1149}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !5102, file: !1151, line: 136, baseType: !5131, size: 64, offset: 384)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{null, !1149}
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !5102, file: !1151, line: 137, baseType: !5131, size: 64, offset: 448)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !5102, file: !1151, line: 138, baseType: !5136, size: 64, offset: 512)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{null, !1149, !1189}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !5102, file: !1151, line: 139, baseType: !5140, size: 64, offset: 576)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!890, !1149, !890, !48}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !5102, file: !1151, line: 140, baseType: !5144, size: 64, offset: 640)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!1144, !5147}
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !5102, file: !1151, line: 141, baseType: !5149, size: 64, offset: 704)
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!48, !1310, !405}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !5102, file: !1151, line: 142, baseType: !5153, size: 64, offset: 768)
!5153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5154, size: 64)
!5154 = !DISubroutineType(types: !5155)
!5155 = !{!1149, !1149, !5156}
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1397, file: !183, line: 1271, baseType: !5159, size: 448, offset: 8128)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2882, line: 63, size: 448, elements: !5160)
!5160 = !{!5161, !5166, !5167, !5168, !5169, !5170, !5171}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5159, file: !2882, line: 64, baseType: !5162, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!65, !5165, !2880}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5159, file: !2882, line: 66, baseType: !5162, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5159, file: !2882, line: 69, baseType: !1113, size: 64, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5159, file: !2882, line: 70, baseType: !48, size: 32, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5159, file: !2882, line: 71, baseType: !18, size: 32, offset: 224)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5159, file: !2882, line: 74, baseType: !123, size: 128, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5159, file: !2882, line: 85, baseType: !5172, size: 64, offset: 384)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1397, file: !183, line: 1274, baseType: !353, size: 64, offset: 8576)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1397, file: !183, line: 1280, baseType: !353, size: 64, offset: 8640)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1397, file: !183, line: 1283, baseType: !48, size: 32, offset: 8704)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1397, file: !183, line: 1286, baseType: !2208, size: 32, offset: 8736)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1397, file: !183, line: 1289, baseType: !2703, size: 64, offset: 8768)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1397, file: !183, line: 1290, baseType: !728, size: 64, offset: 8832)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1397, file: !183, line: 1297, baseType: !963, size: 64, offset: 8896)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1397, file: !183, line: 1304, baseType: !5181, size: 64, offset: 8960)
!5181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5182, line: 49, size: 64, elements: !5183)
!5182 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5183 = !{!5184}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5181, file: !5182, line: 50, baseType: !5185, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5186, size: 64)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5182, line: 41, size: 512, align: 512, elements: !5187)
!5187 = !{!5188, !5189, !5194}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5186, file: !5182, line: 43, baseType: !85, size: 32)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5186, file: !5182, line: 45, baseType: !5190, size: 192, offset: 64)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5182, line: 29, size: 192, elements: !5191)
!5191 = !{!5192, !5193}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5190, file: !5182, line: 30, baseType: !123, size: 128)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5190, file: !5182, line: 32, baseType: !1113, size: 64, offset: 128)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5186, file: !5182, line: 46, baseType: !1113, size: 64, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1397, file: !183, line: 1305, baseType: !5181, size: 64, offset: 9024)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1397, file: !183, line: 1306, baseType: !672, size: 128, align: 64, offset: 9088)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1397, file: !183, line: 1307, baseType: !1012, size: 256, offset: 9216)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1397, file: !183, line: 1309, baseType: !349, size: 256, offset: 9472)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1397, file: !183, line: 1314, baseType: !48, size: 32, offset: 9728)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1397, file: !183, line: 1317, baseType: !85, size: 32, align: 512, offset: 10240)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1397, file: !183, line: 1318, baseType: !123, size: 128, offset: 10304)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1397, file: !183, line: 1320, baseType: !85, size: 32, offset: 10432)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1397, file: !183, line: 1321, baseType: !123, size: 128, offset: 10496)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1190, file: !183, line: 656, baseType: !1545, size: 64, offset: 512)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1190, file: !183, line: 659, baseType: !46, size: 64, offset: 576)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1190, file: !183, line: 663, baseType: !65, size: 64, offset: 640)
!5207 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !183, line: 671, baseType: !5208, size: 32, offset: 704)
!5208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !183, line: 671, size: 32, elements: !5209)
!5209 = !{!5210, !5212}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5208, file: !183, line: 672, baseType: !5211, size: 32)
!5211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5208, file: !183, line: 673, baseType: !18, size: 32)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1190, file: !183, line: 675, baseType: !1263, size: 32, offset: 736)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1190, file: !183, line: 676, baseType: !67, size: 64, offset: 768)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1190, file: !183, line: 677, baseType: !1299, size: 128, offset: 832)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1190, file: !183, line: 678, baseType: !1299, size: 128, offset: 960)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1190, file: !183, line: 679, baseType: !1299, size: 128, offset: 1088)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1190, file: !183, line: 680, baseType: !85, size: 32, offset: 1216)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1190, file: !183, line: 681, baseType: !52, size: 16, offset: 1248)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1190, file: !183, line: 682, baseType: !109, size: 8, offset: 1264)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1190, file: !183, line: 683, baseType: !109, size: 8, offset: 1272)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1190, file: !183, line: 684, baseType: !3013, size: 64, offset: 1280)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1190, file: !183, line: 691, baseType: !65, size: 64, offset: 1344)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1190, file: !183, line: 692, baseType: !822, size: 320, offset: 1408)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1190, file: !183, line: 694, baseType: !65, size: 64, offset: 1728)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1190, file: !183, line: 695, baseType: !65, size: 64, offset: 1792)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1190, file: !183, line: 697, baseType: !732, size: 128, offset: 1856)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1190, file: !183, line: 698, baseType: !123, size: 128, offset: 1984)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1190, file: !183, line: 707, baseType: !123, size: 128, offset: 2112)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1190, file: !183, line: 708, baseType: !123, size: 128, offset: 2240)
!5231 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !183, line: 709, baseType: !5232, size: 128, offset: 2368)
!5232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !183, line: 709, size: 128, elements: !5233)
!5233 = !{!5234, !5235}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5232, file: !183, line: 710, baseType: !728, size: 64)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5232, file: !183, line: 711, baseType: !672, size: 128, align: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1190, file: !183, line: 713, baseType: !355, size: 64, offset: 2496)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1190, file: !183, line: 714, baseType: !355, size: 64, offset: 2560)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1190, file: !183, line: 715, baseType: !75, size: 32, offset: 2624)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1190, file: !183, line: 716, baseType: !75, size: 32, offset: 2656)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1190, file: !183, line: 717, baseType: !75, size: 32, offset: 2688)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1190, file: !183, line: 719, baseType: !75, size: 32, offset: 2720)
!5242 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !183, line: 721, baseType: !5243, size: 64, offset: 2752)
!5243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !183, line: 721, size: 64, elements: !5244)
!5244 = !{!5245, !5369}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5243, file: !183, line: 722, baseType: !5246, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5248)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !183, line: 1914, size: 2112, elements: !5249)
!5249 = !{!5250, !5251, !5255, !5259, !5263, !5264, !5265, !5271, !5284, !5288, !5292, !5293, !5297, !5298, !5302, !5307, !5308, !5312, !5316, !5322, !5323, !5327, !5328, !5332, !5336, !5337, !5342, !5346, !5350, !5354, !5358, !5359, !5365}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5248, file: !183, line: 1915, baseType: !1430, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5248, file: !183, line: 1916, baseType: !5252, size: 64, offset: 64)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!67, !659, !67, !48}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5248, file: !183, line: 1917, baseType: !5256, size: 64, offset: 128)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!1341, !659, !890, !61, !66}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5248, file: !183, line: 1918, baseType: !5260, size: 64, offset: 192)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!1341, !659, !43, !61, !66}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !5248, file: !183, line: 1919, baseType: !2142, size: 64, offset: 256)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !5248, file: !183, line: 1920, baseType: !2142, size: 64, offset: 320)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !5248, file: !183, line: 1921, baseType: !5266, size: 64, offset: 384)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!48, !2145, !5269, !18}
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !183, line: 53, flags: DIFlagFwdDecl)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !5248, file: !183, line: 1923, baseType: !5272, size: 64, offset: 448)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!48, !659, !5275}
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !183, line: 1858, size: 128, elements: !5277)
!5277 = !{!5278, !5283}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !5276, file: !183, line: 1859, baseType: !5279, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !183, line: 1855, baseType: !5280)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!405, !5275, !43, !48, !67, !791, !18}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5276, file: !183, line: 1860, baseType: !67, size: 64, offset: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5248, file: !183, line: 1924, baseType: !5285, size: 64, offset: 512)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!2374, !659, !2376}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !5248, file: !183, line: 1925, baseType: !5289, size: 64, offset: 576)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!1113, !659, !18, !65}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !5248, file: !183, line: 1926, baseType: !5289, size: 64, offset: 640)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5248, file: !183, line: 1927, baseType: !5294, size: 64, offset: 704)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!48, !659, !1679}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !5248, file: !183, line: 1928, baseType: !65, size: 64, offset: 768)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5248, file: !183, line: 1929, baseType: !5299, size: 64, offset: 832)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5300, size: 64)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{!48, !1189, !659}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5248, file: !183, line: 1930, baseType: !5303, size: 64, offset: 896)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!48, !659, !5306}
!5306 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !183, line: 1061, baseType: !46)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5248, file: !183, line: 1931, baseType: !5299, size: 64, offset: 960)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !5248, file: !183, line: 1932, baseType: !5309, size: 64, offset: 1024)
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!48, !659, !67, !67, !48}
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !5248, file: !183, line: 1933, baseType: !5313, size: 64, offset: 1088)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!48, !48, !659, !48}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5248, file: !183, line: 1934, baseType: !5317, size: 64, offset: 1152)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!48, !659, !48, !5320}
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !183, line: 1063, flags: DIFlagFwdDecl)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !5248, file: !183, line: 1935, baseType: !1717, size: 64, offset: 1216)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !5248, file: !183, line: 1936, baseType: !5324, size: 64, offset: 1280)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = !DISubroutineType(types: !5326)
!5326 = !{!48, !48}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !5248, file: !183, line: 1937, baseType: !5317, size: 64, offset: 1344)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !5248, file: !183, line: 1938, baseType: !5329, size: 64, offset: 1408)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!1341, !4745, !659, !66, !61, !18}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !5248, file: !183, line: 1939, baseType: !5333, size: 64, offset: 1472)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!1341, !659, !66, !4745, !61, !18}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !5248, file: !183, line: 1940, baseType: !2198, size: 64, offset: 1536)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !5248, file: !183, line: 1941, baseType: !5338, size: 64, offset: 1600)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!48, !659, !48, !5341, !2119}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !5248, file: !183, line: 1942, baseType: !5343, size: 64, offset: 1664)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!1113, !659, !48, !67, !67}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !5248, file: !183, line: 1944, baseType: !5347, size: 64, offset: 1728)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !2307, !659}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !5248, file: !183, line: 1948, baseType: !5351, size: 64, offset: 1792)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!1341, !659, !67, !659, !67, !61, !18}
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !5248, file: !183, line: 1950, baseType: !5355, size: 64, offset: 1856)
!5355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5356, size: 64)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!67, !659, !67, !659, !67, !67, !18}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !5248, file: !183, line: 1953, baseType: !5309, size: 64, offset: 1920)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !5248, file: !183, line: 1954, baseType: !5360, size: 64, offset: 1984)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!48, !5363, !18}
!5363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5364, size: 64)
!5364 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !183, line: 1911, flags: DIFlagFwdDecl)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !5248, file: !183, line: 1955, baseType: !5366, size: 64, offset: 2048)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!48, !5363, !5269, !18}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5243, file: !183, line: 723, baseType: !2771, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1190, file: !183, line: 725, baseType: !5371, size: 64, offset: 2816)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !183, line: 725, flags: DIFlagFwdDecl)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1190, file: !183, line: 726, baseType: !1546, size: 1536, align: 64, offset: 2880)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1190, file: !183, line: 727, baseType: !123, size: 128, offset: 4416)
!5375 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !183, line: 728, baseType: !5376, size: 64, offset: 4544)
!5376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !183, line: 728, size: 64, elements: !5377)
!5377 = !{!5378, !5379, !5382, !5383}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5376, file: !183, line: 729, baseType: !4745, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5376, file: !183, line: 730, baseType: !5380, size: 64)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !183, line: 730, flags: DIFlagFwdDecl)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5376, file: !183, line: 731, baseType: !890, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5376, file: !183, line: 732, baseType: !18, size: 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1190, file: !183, line: 735, baseType: !303, size: 32, offset: 4608)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1190, file: !183, line: 738, baseType: !303, size: 32, offset: 4640)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1190, file: !183, line: 739, baseType: !5087, size: 64, offset: 4672)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1190, file: !183, line: 750, baseType: !46, size: 64, offset: 4736)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1150, file: !1151, line: 91, baseType: !5389, size: 256, offset: 448)
!5389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !556)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1150, file: !1151, line: 94, baseType: !5391, size: 64, offset: 704)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !5392, line: 25, size: 64, elements: !5393)
!5392 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!5393 = !{!5394}
!5394 = !DIDerivedType(tag: DW_TAG_member, scope: !5391, file: !5392, line: 26, baseType: !5395, size: 64)
!5395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5391, file: !5392, line: 26, size: 64, elements: !5396)
!5396 = !{!5397, !5398}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !5395, file: !5392, line: 28, baseType: !792, size: 64, align: 64)
!5398 = !DIDerivedType(tag: DW_TAG_member, scope: !5395, file: !5392, line: 30, baseType: !5399, size: 64)
!5399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5395, file: !5392, line: 30, size: 64, elements: !5400)
!5400 = !{!5401, !5402}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5399, file: !5392, line: 31, baseType: !85, size: 32)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5399, file: !5392, line: 32, baseType: !48, size: 32, offset: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1150, file: !1151, line: 95, baseType: !5100, size: 64, offset: 768)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1150, file: !1151, line: 96, baseType: !1396, size: 64, offset: 832)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1150, file: !1151, line: 97, baseType: !65, size: 64, offset: 896)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1150, file: !1151, line: 98, baseType: !46, size: 64, offset: 960)
!5407 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1151, line: 100, baseType: !5408, size: 128, offset: 1024)
!5408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1151, line: 100, size: 128, elements: !5409)
!5409 = !{!5410, !5411}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5408, file: !1151, line: 101, baseType: !123, size: 128)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5408, file: !1151, line: 102, baseType: !5412, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1150, file: !1151, line: 104, baseType: !123, size: 128, offset: 1152)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1150, file: !1151, line: 105, baseType: !123, size: 128, offset: 1280)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1150, file: !1151, line: 113, baseType: !5416, size: 128, offset: 1408)
!5416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1150, file: !1151, line: 109, size: 128, elements: !5417)
!5417 = !{!5418, !5419, !5420}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5416, file: !1151, line: 110, baseType: !732, size: 128)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5416, file: !1151, line: 111, baseType: !1165, size: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5416, file: !1151, line: 112, baseType: !672, size: 128, align: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1145, file: !1146, line: 72, baseType: !1396, size: 64, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1145, file: !1146, line: 73, baseType: !48, size: 32, offset: 128)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1145, file: !1146, line: 74, baseType: !1228, size: 64, offset: 192)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1140, file: !1141, line: 10, baseType: !1149, size: 64, offset: 64)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !660, file: !183, line: 1015, baseType: !1189, size: 64, offset: 1344)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !660, file: !183, line: 1016, baseType: !5246, size: 64, offset: 1408)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !660, file: !183, line: 1018, baseType: !791, size: 64, offset: 1472)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !660, file: !183, line: 1020, baseType: !46, size: 64, offset: 1536)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !660, file: !183, line: 1023, baseType: !46, size: 64, offset: 1600)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !660, file: !183, line: 1027, baseType: !5431, size: 64, offset: 1664)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !660, file: !183, line: 1029, baseType: !1545, size: 64, offset: 1728)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !660, file: !183, line: 1030, baseType: !2208, size: 32, offset: 1792)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !660, file: !183, line: 1031, baseType: !2208, size: 32, offset: 1824)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !505, file: !506, line: 169, baseType: !5436, size: 64, offset: 2048)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !506, line: 24, flags: DIFlagFwdDecl)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !505, file: !506, line: 171, baseType: !18, size: 32, offset: 2112)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !505, file: !506, line: 172, baseType: !2641, size: 320, offset: 2176)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !505, file: !506, line: 174, baseType: !5441, size: 64, offset: 2496)
!5441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !535)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !505, file: !506, line: 176, baseType: !5443, size: 64, offset: 2560)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !506, line: 176, flags: DIFlagFwdDecl)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !505, file: !506, line: 178, baseType: !5446, size: 64, offset: 2624)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !513, line: 93, size: 192, elements: !5448)
!5448 = !{!5449, !5450, !5451, !5452, !5453, !5454}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5447, file: !513, line: 94, baseType: !485, size: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5447, file: !513, line: 95, baseType: !485, size: 32, offset: 32)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5447, file: !513, line: 96, baseType: !485, size: 32, offset: 64)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !5447, file: !513, line: 97, baseType: !485, size: 32, offset: 96)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !5447, file: !513, line: 98, baseType: !485, size: 32, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !5447, file: !513, line: 99, baseType: !485, size: 32, offset: 160)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !505, file: !506, line: 180, baseType: !525, size: 768, offset: 2688)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !505, file: !506, line: 181, baseType: !520, size: 64, offset: 3456)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !505, file: !506, line: 182, baseType: !520, size: 64, offset: 3520)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !505, file: !506, line: 183, baseType: !520, size: 64, offset: 3584)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !505, file: !506, line: 185, baseType: !5460, size: 64, offset: 3648)
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5461, size: 64)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{!48, !504}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !505, file: !506, line: 186, baseType: !5464, size: 64, offset: 3712)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{null, !504}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !505, file: !506, line: 187, baseType: !5468, size: 64, offset: 3776)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!48, !504, !659}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !505, file: !506, line: 188, baseType: !5472, size: 64, offset: 3840)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!48, !504, !18, !18, !48}
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !505, file: !506, line: 190, baseType: !5476, size: 64, offset: 3904)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !506, line: 345, size: 576, elements: !5478)
!5478 = !{!5479, !5480, !5481, !5482, !5483, !5549, !5550}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5477, file: !506, line: 347, baseType: !46, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5477, file: !506, line: 349, baseType: !48, size: 32, offset: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5477, file: !506, line: 350, baseType: !43, size: 64, offset: 128)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5477, file: !506, line: 352, baseType: !504, size: 64, offset: 192)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5477, file: !506, line: 353, baseType: !5484, size: 64, offset: 256)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !506, line: 310, size: 960, elements: !5486)
!5486 = !{!5487, !5488, !5492, !5503, !5507, !5511, !5538, !5542, !5543, !5544, !5545, !5546, !5547, !5548}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5485, file: !506, line: 312, baseType: !46, size: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5485, file: !506, line: 314, baseType: !5489, size: 64, offset: 64)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{null, !5476, !18, !18, !48}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5485, file: !506, line: 315, baseType: !5493, size: 64, offset: 128)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{null, !5476, !5496, !18}
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5498)
!5498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !506, line: 32, size: 64, elements: !5499)
!5499 = !{!5500, !5501, !5502}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5498, file: !506, line: 33, baseType: !120, size: 16)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5498, file: !506, line: 34, baseType: !120, size: 16, offset: 16)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5498, file: !506, line: 35, baseType: !485, size: 32, offset: 32)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5485, file: !506, line: 317, baseType: !5504, size: 64, offset: 192)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!405, !5476, !18, !18, !48}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5485, file: !506, line: 318, baseType: !5508, size: 64, offset: 256)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!405, !5484, !504}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !5485, file: !506, line: 319, baseType: !5512, size: 64, offset: 320)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DISubroutineType(types: !5514)
!5514 = !{!48, !5484, !504, !5515}
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5517)
!5517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !298, line: 362, size: 1600, elements: !5518)
!5518 = !{!5519, !5520, !5521, !5522, !5523, !5524, !5526, !5528, !5529, !5530, !5531, !5532, !5533, !5535, !5536, !5537}
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5517, file: !298, line: 364, baseType: !306, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !5517, file: !298, line: 366, baseType: !120, size: 16, offset: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5517, file: !298, line: 367, baseType: !120, size: 16, offset: 80)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5517, file: !298, line: 368, baseType: !120, size: 16, offset: 96)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5517, file: !298, line: 369, baseType: !120, size: 16, offset: 112)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !5517, file: !298, line: 371, baseType: !5525, size: 64, offset: 128)
!5525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 64, elements: !521)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !5517, file: !298, line: 372, baseType: !5527, size: 768, offset: 192)
!5527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 768, elements: !526)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !5517, file: !298, line: 373, baseType: !5525, size: 64, offset: 960)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !5517, file: !298, line: 374, baseType: !5525, size: 64, offset: 1024)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !5517, file: !298, line: 375, baseType: !5525, size: 64, offset: 1088)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !5517, file: !298, line: 376, baseType: !5525, size: 64, offset: 1152)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !5517, file: !298, line: 377, baseType: !5525, size: 64, offset: 1216)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !5517, file: !298, line: 378, baseType: !5534, size: 128, offset: 1280)
!5534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 128, elements: !535)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !5517, file: !298, line: 379, baseType: !5525, size: 64, offset: 1408)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !5517, file: !298, line: 380, baseType: !5525, size: 64, offset: 1472)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !5517, file: !298, line: 382, baseType: !306, size: 64, offset: 1536)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5485, file: !506, line: 320, baseType: !5539, size: 64, offset: 384)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{null, !5476}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5485, file: !506, line: 321, baseType: !5539, size: 64, offset: 448)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !5485, file: !506, line: 323, baseType: !405, size: 8, offset: 512)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5485, file: !506, line: 324, baseType: !48, size: 32, offset: 544)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5485, file: !506, line: 325, baseType: !43, size: 64, offset: 576)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5485, file: !506, line: 327, baseType: !5515, size: 64, offset: 640)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !5485, file: !506, line: 329, baseType: !123, size: 128, offset: 704)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5485, file: !506, line: 330, baseType: !123, size: 128, offset: 832)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !5477, file: !506, line: 355, baseType: !123, size: 128, offset: 320)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !5477, file: !506, line: 356, baseType: !123, size: 128, offset: 448)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !505, file: !506, line: 192, baseType: !85, size: 32, offset: 3968)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !505, file: !506, line: 193, baseType: !349, size: 256, offset: 4032)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !505, file: !506, line: 195, baseType: !18, size: 32, offset: 4288)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !505, file: !506, line: 196, baseType: !405, size: 8, offset: 4320)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !505, file: !506, line: 198, baseType: !3082, size: 5824, offset: 4352)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !505, file: !506, line: 200, baseType: !123, size: 128, offset: 10176)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !506, line: 201, baseType: !123, size: 128, offset: 10304)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !505, file: !506, line: 203, baseType: !18, size: 32, offset: 10432)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !505, file: !506, line: 204, baseType: !18, size: 32, offset: 10464)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !505, file: !506, line: 205, baseType: !5561, size: 64, offset: 10496)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !505, file: !506, line: 207, baseType: !405, size: 8, offset: 10560)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !505, file: !506, line: 209, baseType: !5564, size: 192, offset: 10624)
!5564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3265, size: 192, elements: !711)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !505, file: !506, line: 211, baseType: !405, size: 8, offset: 10816)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !17, line: 584, baseType: !43, size: 64, offset: 256)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !499, file: !17, line: 585, baseType: !123, size: 128, offset: 320)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !499, file: !17, line: 586, baseType: !18, size: 32, offset: 448)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !499, file: !17, line: 587, baseType: !405, size: 8, offset: 480)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !453, file: !17, line: 515, baseType: !120, size: 16, offset: 1024)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "slot_idx", scope: !453, file: !17, line: 516, baseType: !18, size: 32, offset: 1056)
!5572 = !{!5573}
!5573 = !DISubrange(count: 256)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "field_entries", scope: !442, file: !17, line: 536, baseType: !5575, size: 64, offset: 16896)
!5575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5576, size: 64)
!5576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field_entry", file: !17, line: 521, size: 256, elements: !5577)
!5577 = !{!5578, !5579, !5580, !5581}
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5576, file: !17, line: 522, baseType: !123, size: 128)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5576, file: !17, line: 523, baseType: !452, size: 64, offset: 128)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5576, file: !17, line: 524, baseType: !18, size: 32, offset: 192)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5576, file: !17, line: 525, baseType: !485, size: 32, offset: 224)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !442, file: !17, line: 537, baseType: !18, size: 32, offset: 16960)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !442, file: !17, line: 538, baseType: !18, size: 32, offset: 16992)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !442, file: !17, line: 539, baseType: !407, size: 64, offset: 17024)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "tool_active", scope: !442, file: !17, line: 542, baseType: !405, size: 8, offset: 17088)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "tool", scope: !442, file: !17, line: 543, baseType: !18, size: 32, offset: 17120)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !408, file: !17, line: 622, baseType: !1012, size: 256, offset: 50368)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !408, file: !17, line: 624, baseType: !5589, size: 192, offset: 50624)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !5590, line: 15, size: 192, elements: !5591)
!5590 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6d1be1d1ca9e1e7e6ce72ef8c4c814f")
!5591 = !{!5592, !5593, !5594}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5589, file: !5590, line: 16, baseType: !362, size: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5589, file: !5590, line: 17, baseType: !18, size: 32, offset: 32)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !5589, file: !5590, line: 18, baseType: !123, size: 128, offset: 64)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !408, file: !17, line: 625, baseType: !3082, size: 5824, offset: 50816)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !408, file: !17, line: 626, baseType: !5597, size: 64, offset: 56640)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !17, line: 809, size: 2496, elements: !5599)
!5599 = !{!5600, !5601, !5603, !5604, !5605, !5609, !5613, !5617, !5623, !5628, !5636, !5640, !5644, !5648, !5653, !5654, !5658, !5662, !5666, !5670, !5671}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5598, file: !17, line: 810, baseType: !890, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5598, file: !17, line: 811, baseType: !5602, size: 64, offset: 64)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !5598, file: !17, line: 813, baseType: !123, size: 128, offset: 128)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !5598, file: !17, line: 814, baseType: !85, size: 32, offset: 256)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5598, file: !17, line: 816, baseType: !5606, size: 64, offset: 320)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{!405, !407, !405}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5598, file: !17, line: 817, baseType: !5610, size: 64, offset: 384)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!48, !407, !5602}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5598, file: !17, line: 818, baseType: !5614, size: 64, offset: 448)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{null, !407}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !5598, file: !17, line: 820, baseType: !5618, size: 64, offset: 512)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5620)
!5620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !17, line: 759, size: 32, elements: !5621)
!5621 = !{!5622}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !5620, file: !17, line: 760, baseType: !303, size: 32)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !5598, file: !17, line: 821, baseType: !5624, size: 64, offset: 576)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!48, !407, !441, !5627, !48}
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !5598, file: !17, line: 823, baseType: !5629, size: 64, offset: 640)
!5629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5630, size: 64)
!5630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5631)
!5631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !17, line: 762, size: 96, elements: !5632)
!5632 = !{!5633, !5634, !5635}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !5631, file: !17, line: 763, baseType: !303, size: 32)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !5631, file: !17, line: 764, baseType: !303, size: 32, offset: 32)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !5631, file: !17, line: 765, baseType: !303, size: 32, offset: 64)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5598, file: !17, line: 824, baseType: !5637, size: 64, offset: 704)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!48, !407, !452, !459, !485}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !5598, file: !17, line: 826, baseType: !5641, size: 64, offset: 768)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{null, !407, !441}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !5598, file: !17, line: 828, baseType: !5645, size: 64, offset: 832)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 64)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!411, !407, !411, !558}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !5598, file: !17, line: 831, baseType: !5649, size: 64, offset: 896)
!5649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{!48, !407, !498, !452, !459, !5652, !2542}
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !5598, file: !17, line: 834, baseType: !5649, size: 64, offset: 960)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !5598, file: !17, line: 837, baseType: !5655, size: 64, offset: 1024)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!48, !407, !498}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !5598, file: !17, line: 839, baseType: !5659, size: 64, offset: 1088)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{null, !407, !452, !459}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5598, file: !17, line: 843, baseType: !5663, size: 64, offset: 1152)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!48, !407, !3191}
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5598, file: !17, line: 844, baseType: !5667, size: 64, offset: 1216)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!48, !407}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5598, file: !17, line: 845, baseType: !5667, size: 64, offset: 1280)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5598, file: !17, line: 848, baseType: !3160, size: 1152, offset: 1344)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "devres_group_id", scope: !408, file: !17, line: 627, baseType: !46, size: 64, offset: 56704)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !408, file: !17, line: 629, baseType: !5674, size: 64, offset: 56768)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5676)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !17, line: 871, size: 832, elements: !5677)
!5677 = !{!5678, !5679, !5680, !5681, !5682, !5686, !5687, !5691, !5692, !5696, !5700, !5704, !5706}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5676, file: !17, line: 872, baseType: !5667, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5676, file: !17, line: 873, baseType: !5614, size: 64, offset: 64)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5676, file: !17, line: 875, baseType: !5667, size: 64, offset: 128)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5676, file: !17, line: 876, baseType: !5614, size: 64, offset: 192)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5676, file: !17, line: 878, baseType: !5683, size: 64, offset: 256)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!48, !407, !48}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !5676, file: !17, line: 880, baseType: !5667, size: 64, offset: 320)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5676, file: !17, line: 882, baseType: !5688, size: 64, offset: 384)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{null, !407, !441, !48}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5676, file: !17, line: 885, baseType: !5667, size: 64, offset: 448)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !5676, file: !17, line: 887, baseType: !5693, size: 64, offset: 512)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!48, !407, !113, !411, !61, !113, !48}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !5676, file: !17, line: 891, baseType: !5697, size: 64, offset: 576)
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!48, !407, !411, !61}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !5676, file: !17, line: 893, baseType: !5701, size: 64, offset: 640)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!48, !407, !48, !48, !48}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "may_wakeup", scope: !5676, file: !17, line: 894, baseType: !5705, size: 64, offset: 704)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "max_buffer_size", scope: !5676, file: !17, line: 896, baseType: !18, size: 32, offset: 768)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !408, file: !17, line: 630, baseType: !349, size: 256, offset: 56832)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !408, file: !17, line: 631, baseType: !18, size: 32, offset: 57088)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !408, file: !17, line: 651, baseType: !65, size: 64, offset: 57152)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !408, file: !17, line: 652, baseType: !18, size: 32, offset: 57216)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !408, file: !17, line: 653, baseType: !18, size: 32, offset: 57248)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "initial_quirks", scope: !408, file: !17, line: 654, baseType: !18, size: 32, offset: 57280)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !408, file: !17, line: 655, baseType: !405, size: 8, offset: 57312)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !408, file: !17, line: 657, baseType: !123, size: 128, offset: 57344)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !408, file: !17, line: 658, baseType: !46, size: 64, offset: 57472)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !408, file: !17, line: 659, baseType: !46, size: 64, offset: 57536)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !17, line: 661, baseType: !3177, size: 1024, offset: 57600)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !408, file: !17, line: 662, baseType: !3563, size: 512, offset: 58624)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !408, file: !17, line: 663, baseType: !3563, size: 512, offset: 59136)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !408, file: !17, line: 665, baseType: !46, size: 64, offset: 59648)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !408, file: !17, line: 668, baseType: !5667, size: 64, offset: 59712)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !408, file: !17, line: 671, baseType: !5723, size: 64, offset: 59776)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!48, !407, !18}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !408, file: !17, line: 672, baseType: !5614, size: 64, offset: 59840)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !408, file: !17, line: 673, baseType: !5728, size: 64, offset: 59904)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{null, !407, !452, !459, !485}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !408, file: !17, line: 675, baseType: !5641, size: 64, offset: 59968)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !408, file: !17, line: 678, baseType: !52, size: 16, offset: 60032)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !408, file: !17, line: 679, baseType: !1149, size: 64, offset: 60096)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !408, file: !17, line: 680, baseType: !1149, size: 64, offset: 60160)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !408, file: !17, line: 681, baseType: !1149, size: 64, offset: 60224)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !408, file: !17, line: 682, baseType: !123, size: 128, offset: 60288)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !408, file: !17, line: 683, baseType: !85, size: 32, offset: 60416)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !408, file: !17, line: 684, baseType: !80, size: 192, offset: 60480)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !408, file: !17, line: 685, baseType: !2396, size: 32, offset: 60672)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !408, file: !17, line: 687, baseType: !18, size: 32, offset: 60704)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !408, file: !17, line: 690, baseType: !5742, size: 320, offset: 60736)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_bpf", file: !5743, line: 129, size: 320, elements: !5744)
!5743 = !DIFile(filename: "./include/linux/hid_bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54a7e6fca4bb5ac7d355f792070fab62")
!5744 = !{!5745, !5746, !5747, !5755, !5756}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !5742, file: !5743, line: 130, baseType: !5627, size: 64)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_data", scope: !5742, file: !5743, line: 134, baseType: !847, size: 32, offset: 64)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "progs", scope: !5742, file: !5743, line: 136, baseType: !5748, size: 128, offset: 128)
!5748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5749, size: 128, elements: !535)
!5749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5750, size: 64)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_bpf_prog_list", file: !5743, line: 123, size: 1040, elements: !5751)
!5751 = !{!5752, !5754}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "prog_idx", scope: !5750, file: !5743, line: 124, baseType: !5753, size: 1024)
!5753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 1024, elements: !333)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "prog_cnt", scope: !5750, file: !5743, line: 125, baseType: !109, size: 8, offset: 1024)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !5742, file: !5743, line: 137, baseType: !405, size: 8, offset: 256)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "progs_lock", scope: !5742, file: !5743, line: 139, baseType: !85, size: 32, offset: 288)
!5757 = !{!5758, !5759}
!5758 = !DILocalVariable(name: "hdev", arg: 1, scope: !402, file: !2, line: 972, type: !407)
!5759 = !DILocalVariable(name: "i", scope: !402, file: !2, line: 974, type: !48)
!5760 = !DILocation(line: 972, column: 36, scope: !402)
!5761 = !DILocation(line: 974, column: 2, scope: !402)
!5762 = !DILocation(line: 974, column: 6, scope: !402)
!5763 = !DILocation(line: 976, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !402, file: !2, line: 976, column: 6)
!5765 = !DILocation(line: 976, column: 12, scope: !5764)
!5766 = !DILocation(line: 976, column: 19, scope: !5764)
!5767 = !DILocation(line: 976, column: 6, scope: !402)
!5768 = !DILocation(line: 977, column: 3, scope: !5764)
!5769 = !DILocation(line: 978, column: 6, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !402, file: !2, line: 978, column: 6)
!5771 = !DILocation(line: 978, column: 12, scope: !5770)
!5772 = !DILocation(line: 978, column: 19, scope: !5770)
!5773 = !DILocation(line: 978, column: 6, scope: !402)
!5774 = !DILocation(line: 979, column: 3, scope: !5770)
!5775 = !DILocation(line: 981, column: 10, scope: !402)
!5776 = !DILocation(line: 981, column: 16, scope: !402)
!5777 = !DILocation(line: 981, column: 2, scope: !402)
!5778 = !DILocation(line: 984, column: 7, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 984, column: 7)
!5780 = distinct !DILexicalBlock(scope: !402, file: !2, line: 981, column: 24)
!5781 = !DILocation(line: 984, column: 13, scope: !5779)
!5782 = !DILocation(line: 984, column: 21, scope: !5779)
!5783 = !DILocation(line: 984, column: 58, scope: !5779)
!5784 = !DILocation(line: 985, column: 7, scope: !5779)
!5785 = !DILocation(line: 985, column: 13, scope: !5779)
!5786 = !DILocation(line: 985, column: 21, scope: !5779)
!5787 = !DILocation(line: 984, column: 7, scope: !5780)
!5788 = !DILocation(line: 986, column: 4, scope: !5779)
!5789 = !DILocation(line: 987, column: 3, scope: !5780)
!5790 = !DILocation(line: 989, column: 7, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 989, column: 7)
!5792 = !DILocation(line: 989, column: 13, scope: !5791)
!5793 = !DILocation(line: 989, column: 21, scope: !5791)
!5794 = !DILocation(line: 989, column: 61, scope: !5791)
!5795 = !DILocation(line: 990, column: 7, scope: !5791)
!5796 = !DILocation(line: 990, column: 13, scope: !5791)
!5797 = !DILocation(line: 990, column: 21, scope: !5791)
!5798 = !DILocation(line: 989, column: 7, scope: !5780)
!5799 = !DILocation(line: 991, column: 4, scope: !5791)
!5800 = !DILocation(line: 999, column: 7, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 999, column: 7)
!5802 = !DILocation(line: 999, column: 13, scope: !5801)
!5803 = !DILocation(line: 999, column: 21, scope: !5801)
!5804 = !DILocation(line: 999, column: 56, scope: !5801)
!5805 = !DILocation(line: 1000, column: 15, scope: !5801)
!5806 = !DILocation(line: 1000, column: 21, scope: !5801)
!5807 = !DILocation(line: 1000, column: 8, scope: !5801)
!5808 = !DILocation(line: 999, column: 7, scope: !5780)
!5809 = !DILocation(line: 1001, column: 4, scope: !5801)
!5810 = !DILocation(line: 1002, column: 3, scope: !5780)
!5811 = !DILocation(line: 1004, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 1004, column: 7)
!5813 = !DILocation(line: 1004, column: 13, scope: !5812)
!5814 = !DILocation(line: 1004, column: 21, scope: !5812)
!5815 = !DILocation(line: 1004, column: 60, scope: !5812)
!5816 = !DILocation(line: 1005, column: 7, scope: !5812)
!5817 = !DILocation(line: 1005, column: 13, scope: !5812)
!5818 = !DILocation(line: 1005, column: 21, scope: !5812)
!5819 = !DILocation(line: 1004, column: 7, scope: !5780)
!5820 = !DILocation(line: 1006, column: 4, scope: !5812)
!5821 = !DILocation(line: 1007, column: 3, scope: !5780)
!5822 = !DILocation(line: 1009, column: 7, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 1009, column: 7)
!5824 = !DILocation(line: 1009, column: 13, scope: !5823)
!5825 = !DILocation(line: 1009, column: 21, scope: !5823)
!5826 = !DILocation(line: 1009, column: 59, scope: !5823)
!5827 = !DILocation(line: 1010, column: 7, scope: !5823)
!5828 = !DILocation(line: 1010, column: 13, scope: !5823)
!5829 = !DILocation(line: 1010, column: 21, scope: !5823)
!5830 = !DILocation(line: 1009, column: 7, scope: !5780)
!5831 = !DILocation(line: 1011, column: 4, scope: !5823)
!5832 = !DILocation(line: 1012, column: 3, scope: !5780)
!5833 = !DILocation(line: 1014, column: 7, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 1014, column: 7)
!5835 = !DILocation(line: 1014, column: 13, scope: !5834)
!5836 = !DILocation(line: 1014, column: 21, scope: !5834)
!5837 = !DILocation(line: 1014, column: 49, scope: !5834)
!5838 = !DILocation(line: 1015, column: 7, scope: !5834)
!5839 = !DILocation(line: 1015, column: 13, scope: !5834)
!5840 = !DILocation(line: 1015, column: 18, scope: !5834)
!5841 = !DILocation(line: 1014, column: 7, scope: !5780)
!5842 = !DILocation(line: 1016, column: 4, scope: !5834)
!5843 = !DILocation(line: 1017, column: 3, scope: !5780)
!5844 = !DILocation(line: 1020, column: 8, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 1020, column: 7)
!5846 = !DILocation(line: 1020, column: 14, scope: !5845)
!5847 = !DILocation(line: 1020, column: 22, scope: !5845)
!5848 = !DILocation(line: 1020, column: 60, scope: !5845)
!5849 = !DILocation(line: 1021, column: 8, scope: !5845)
!5850 = !DILocation(line: 1021, column: 14, scope: !5845)
!5851 = !DILocation(line: 1021, column: 22, scope: !5845)
!5852 = !DILocation(line: 1021, column: 60, scope: !5845)
!5853 = !DILocation(line: 1022, column: 8, scope: !5845)
!5854 = !DILocation(line: 1022, column: 14, scope: !5845)
!5855 = !DILocation(line: 1022, column: 22, scope: !5845)
!5856 = !DILocation(line: 1022, column: 60, scope: !5845)
!5857 = !DILocation(line: 1023, column: 8, scope: !5845)
!5858 = !DILocation(line: 1023, column: 14, scope: !5845)
!5859 = !DILocation(line: 1023, column: 22, scope: !5845)
!5860 = !DILocation(line: 1020, column: 7, scope: !5780)
!5861 = !DILocation(line: 1024, column: 4, scope: !5845)
!5862 = !DILocation(line: 1025, column: 3, scope: !5780)
!5863 = !DILocation(line: 1033, column: 7, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 1033, column: 7)
!5865 = !DILocation(line: 1033, column: 13, scope: !5864)
!5866 = !DILocation(line: 1033, column: 21, scope: !5864)
!5867 = !DILocation(line: 1033, column: 50, scope: !5864)
!5868 = !DILocation(line: 1034, column: 7, scope: !5864)
!5869 = !DILocation(line: 1034, column: 13, scope: !5864)
!5870 = !DILocation(line: 1034, column: 17, scope: !5864)
!5871 = !DILocation(line: 1034, column: 28, scope: !5864)
!5872 = !DILocation(line: 1035, column: 15, scope: !5864)
!5873 = !DILocation(line: 1035, column: 21, scope: !5864)
!5874 = !DILocation(line: 1035, column: 7, scope: !5864)
!5875 = !DILocation(line: 1035, column: 57, scope: !5864)
!5876 = !DILocation(line: 1033, column: 7, scope: !5780)
!5877 = !DILocation(line: 1036, column: 4, scope: !5864)
!5878 = !DILocation(line: 1037, column: 3, scope: !5780)
!5879 = !DILocation(line: 1044, column: 8, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 1044, column: 7)
!5881 = !DILocation(line: 1044, column: 14, scope: !5880)
!5882 = !DILocation(line: 1044, column: 22, scope: !5880)
!5883 = !DILocation(line: 1044, column: 32, scope: !5880)
!5884 = !DILocation(line: 1044, column: 35, scope: !5880)
!5885 = !DILocation(line: 1044, column: 41, scope: !5880)
!5886 = !DILocation(line: 1044, column: 49, scope: !5880)
!5887 = !DILocation(line: 1044, column: 7, scope: !5780)
!5888 = !DILocation(line: 1045, column: 11, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 1045, column: 4)
!5890 = !DILocation(line: 1045, column: 9, scope: !5889)
!5891 = !DILocation(line: 1045, column: 36, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5889, file: !2, line: 1045, column: 4)
!5893 = !DILocation(line: 1045, column: 23, scope: !5892)
!5894 = !DILocation(line: 1045, column: 39, scope: !5892)
!5895 = !DILocation(line: 1045, column: 16, scope: !5892)
!5896 = !DILocation(line: 1045, column: 4, scope: !5889)
!5897 = !DILocation(line: 1046, column: 18, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5892, file: !2, line: 1046, column: 9)
!5899 = !DILocation(line: 1046, column: 24, scope: !5898)
!5900 = !DILocation(line: 1046, column: 43, scope: !5898)
!5901 = !DILocation(line: 1046, column: 30, scope: !5898)
!5902 = !DILocation(line: 1046, column: 46, scope: !5898)
!5903 = !DILocation(line: 1047, column: 31, scope: !5898)
!5904 = !DILocation(line: 1047, column: 18, scope: !5898)
!5905 = !DILocation(line: 1047, column: 34, scope: !5898)
!5906 = !DILocation(line: 1047, column: 11, scope: !5898)
!5907 = !DILocation(line: 1046, column: 10, scope: !5898)
!5908 = !DILocation(line: 1046, column: 9, scope: !5892)
!5909 = !DILocation(line: 1048, column: 6, scope: !5898)
!5910 = !DILocation(line: 1047, column: 37, scope: !5898)
!5911 = !DILocation(line: 1045, column: 44, scope: !5892)
!5912 = !DILocation(line: 1045, column: 4, scope: !5892)
!5913 = distinct !{!5913, !5896, !5914, !5915, !5916}
!5914 = !DILocation(line: 1048, column: 13, scope: !5889)
!5915 = !{!"llvm.loop.mustprogress"}
!5916 = !{!"llvm.loop.unroll.disable"}
!5917 = !DILocation(line: 1049, column: 3, scope: !5780)
!5918 = !DILocation(line: 1052, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !402, file: !2, line: 1052, column: 6)
!5920 = !DILocation(line: 1052, column: 12, scope: !5919)
!5921 = !DILocation(line: 1052, column: 17, scope: !5919)
!5922 = !DILocation(line: 1052, column: 38, scope: !5919)
!5923 = !DILocation(line: 1053, column: 19, scope: !5919)
!5924 = !DILocation(line: 1053, column: 6, scope: !5919)
!5925 = !DILocation(line: 1052, column: 6, scope: !402)
!5926 = !DILocation(line: 1054, column: 3, scope: !5919)
!5927 = !DILocation(line: 1056, column: 24, scope: !402)
!5928 = !DILocation(line: 1056, column: 11, scope: !402)
!5929 = !DILocation(line: 1056, column: 10, scope: !402)
!5930 = !DILocation(line: 1056, column: 9, scope: !402)
!5931 = !DILocation(line: 1056, column: 2, scope: !402)
!5932 = !DILocation(line: 1057, column: 1, scope: !402)
!5933 = !DISubprogram(name: "strcmp", scope: !5934, file: !5934, line: 88, type: !5935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5934 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5935 = !DISubroutineType(types: !5936)
!5936 = !{!48, !43, !43}
!5937 = !DISubprogram(name: "strncmp", scope: !5934, file: !5934, line: 91, type: !5938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!48, !43, !43, !62}
!5940 = !DISubprogram(name: "strlen", scope: !5934, file: !5934, line: 128, type: !5941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!65, !43}
!5943 = !DISubprogram(name: "hid_match_id", scope: !17, file: !17, line: 972, type: !5944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{!5602, !5946, !5602}
!5946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5947, size: 64)
!5947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!5948 = distinct !DISubprogram(name: "hid_quirks_init", scope: !2, file: !2, line: 1194, type: !5949, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !5952)
!5949 = !DISubroutineType(types: !5950)
!5950 = !{!48, !5951, !120, !48}
!5951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!5952 = !{!5953, !5954, !5955, !5956, !5957, !5958, !5959, !5960, !5961}
!5953 = !DILocalVariable(name: "quirks_param", arg: 1, scope: !5948, file: !2, line: 1194, type: !5951)
!5954 = !DILocalVariable(name: "bus", arg: 2, scope: !5948, file: !2, line: 1194, type: !120)
!5955 = !DILocalVariable(name: "count", arg: 3, scope: !5948, file: !2, line: 1194, type: !48)
!5956 = !DILocalVariable(name: "id", scope: !5948, file: !2, line: 1196, type: !297)
!5957 = !DILocalVariable(name: "n", scope: !5948, file: !2, line: 1197, type: !48)
!5958 = !DILocalVariable(name: "m", scope: !5948, file: !2, line: 1197, type: !48)
!5959 = !DILocalVariable(name: "vendor", scope: !5948, file: !2, line: 1198, type: !52)
!5960 = !DILocalVariable(name: "product", scope: !5948, file: !2, line: 1198, type: !52)
!5961 = !DILocalVariable(name: "quirks", scope: !5948, file: !2, line: 1199, type: !847)
!5962 = !DILocation(line: 1194, column: 28, scope: !5948)
!5963 = !DILocation(line: 1194, column: 48, scope: !5948)
!5964 = !DILocation(line: 1194, column: 57, scope: !5948)
!5965 = !DILocation(line: 1196, column: 2, scope: !5948)
!5966 = !DILocation(line: 1196, column: 23, scope: !5948)
!5967 = !DILocation(line: 1197, column: 2, scope: !5948)
!5968 = !DILocation(line: 1197, column: 6, scope: !5948)
!5969 = !DILocation(line: 1197, column: 13, scope: !5948)
!5970 = !DILocation(line: 1198, column: 2, scope: !5948)
!5971 = !DILocation(line: 1198, column: 21, scope: !5948)
!5972 = !DILocation(line: 1198, column: 29, scope: !5948)
!5973 = !DILocation(line: 1199, column: 2, scope: !5948)
!5974 = !DILocation(line: 1199, column: 6, scope: !5948)
!5975 = !DILocation(line: 1201, column: 11, scope: !5948)
!5976 = !DILocation(line: 1201, column: 5, scope: !5948)
!5977 = !DILocation(line: 1201, column: 9, scope: !5948)
!5978 = !DILocation(line: 1203, column: 2, scope: !5948)
!5979 = !DILocation(line: 1203, column: 9, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 1203, column: 2)
!5981 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 1203, column: 2)
!5982 = !DILocation(line: 1203, column: 13, scope: !5980)
!5983 = !DILocation(line: 1203, column: 11, scope: !5980)
!5984 = !DILocation(line: 1203, column: 19, scope: !5980)
!5985 = !DILocation(line: 1203, column: 22, scope: !5980)
!5986 = !DILocation(line: 1203, column: 35, scope: !5980)
!5987 = !DILocation(line: 0, scope: !5980)
!5988 = !DILocation(line: 1203, column: 2, scope: !5981)
!5989 = !DILocation(line: 1205, column: 14, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5980, file: !2, line: 1203, column: 44)
!5991 = !DILocation(line: 1205, column: 27, scope: !5990)
!5992 = !DILocation(line: 1205, column: 7, scope: !5990)
!5993 = !DILocation(line: 1205, column: 5, scope: !5990)
!5994 = !DILocation(line: 1208, column: 22, scope: !5990)
!5995 = !DILocation(line: 1208, column: 15, scope: !5990)
!5996 = !DILocation(line: 1208, column: 6, scope: !5990)
!5997 = !DILocation(line: 1208, column: 13, scope: !5990)
!5998 = !DILocation(line: 1209, column: 23, scope: !5990)
!5999 = !DILocation(line: 1209, column: 16, scope: !5990)
!6000 = !DILocation(line: 1209, column: 6, scope: !5990)
!6001 = !DILocation(line: 1209, column: 14, scope: !5990)
!6002 = !DILocation(line: 1211, column: 7, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5990, file: !2, line: 1211, column: 7)
!6004 = !DILocation(line: 1211, column: 9, scope: !6003)
!6005 = !DILocation(line: 1211, column: 14, scope: !6003)
!6006 = !DILocation(line: 1212, column: 30, scope: !6003)
!6007 = !DILocation(line: 1212, column: 7, scope: !6003)
!6008 = !DILocation(line: 1212, column: 38, scope: !6003)
!6009 = !DILocation(line: 1211, column: 7, scope: !5990)
!6010 = !DILocation(line: 1213, column: 4, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 1213, column: 4)
!6012 = distinct !DILexicalBlock(scope: !6003, file: !2, line: 1212, column: 44)
!6013 = !DILocation(line: 1213, column: 4, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6011, file: !2, line: 1213, column: 4)
!6015 = !DILocation(line: 1215, column: 3, scope: !6012)
!6016 = !DILocation(line: 1216, column: 2, scope: !5990)
!6017 = !DILocation(line: 1203, column: 40, scope: !5980)
!6018 = !DILocation(line: 1203, column: 2, scope: !5980)
!6019 = distinct !{!6019, !5988, !6020, !5915, !5916}
!6020 = !DILocation(line: 1216, column: 2, scope: !5981)
!6021 = !DILocation(line: 1219, column: 1, scope: !5948)
!6022 = !DILocation(line: 1218, column: 2, scope: !5948)
!6023 = !DISubprogram(name: "sscanf", scope: !6024, file: !6024, line: 20, type: !6025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6025 = !DISubroutineType(types: !6026)
!6026 = !{!48, !43, !43, null}
!6027 = distinct !DISubprogram(name: "hid_modify_dquirk", scope: !2, file: !2, line: 1115, type: !6028, scopeLine: 1117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6030)
!6028 = !DISubroutineType(types: !6029)
!6029 = !{!48, !5602, !1627}
!6030 = !{!6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038, !6041, !6044}
!6031 = !DILocalVariable(name: "id", arg: 1, scope: !6027, file: !2, line: 1115, type: !5602)
!6032 = !DILocalVariable(name: "quirks", arg: 2, scope: !6027, file: !2, line: 1116, type: !1627)
!6033 = !DILocalVariable(name: "hdev", scope: !6027, file: !2, line: 1118, type: !407)
!6034 = !DILocalVariable(name: "q_new", scope: !6027, file: !2, line: 1119, type: !293)
!6035 = !DILocalVariable(name: "q", scope: !6027, file: !2, line: 1119, type: !293)
!6036 = !DILocalVariable(name: "list_edited", scope: !6027, file: !2, line: 1120, type: !48)
!6037 = !DILocalVariable(name: "ret", scope: !6027, file: !2, line: 1121, type: !48)
!6038 = !DILocalVariable(name: "__mptr", scope: !6039, file: !2, line: 1141, type: !46)
!6039 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 1141, column: 2)
!6040 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 1141, column: 2)
!6041 = !DILocalVariable(name: "__mptr", scope: !6042, file: !2, line: 1141, type: !46)
!6042 = distinct !DILexicalBlock(scope: !6043, file: !2, line: 1141, column: 2)
!6043 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 1141, column: 2)
!6044 = !DILabel(scope: !6027, name: "out", file: !2, line: 1159)
!6045 = !DILocation(line: 1115, column: 58, scope: !6027)
!6046 = !DILocation(line: 1116, column: 29, scope: !6027)
!6047 = !DILocation(line: 1118, column: 2, scope: !6027)
!6048 = !DILocation(line: 1118, column: 21, scope: !6027)
!6049 = !DILocation(line: 1119, column: 2, scope: !6027)
!6050 = !DILocation(line: 1119, column: 29, scope: !6027)
!6051 = !DILocation(line: 1119, column: 37, scope: !6027)
!6052 = !DILocation(line: 1120, column: 2, scope: !6027)
!6053 = !DILocation(line: 1120, column: 6, scope: !6027)
!6054 = !DILocation(line: 1121, column: 2, scope: !6027)
!6055 = !DILocation(line: 1121, column: 6, scope: !6027)
!6056 = !DILocation(line: 1123, column: 9, scope: !6027)
!6057 = !DILocation(line: 1123, column: 7, scope: !6027)
!6058 = !DILocation(line: 1124, column: 7, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 1124, column: 6)
!6060 = !DILocation(line: 1124, column: 6, scope: !6027)
!6061 = !DILocation(line: 1125, column: 3, scope: !6059)
!6062 = !DILocation(line: 1127, column: 10, scope: !6027)
!6063 = !DILocation(line: 1127, column: 8, scope: !6027)
!6064 = !DILocation(line: 1128, column: 7, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 1128, column: 6)
!6066 = !DILocation(line: 1128, column: 6, scope: !6027)
!6067 = !DILocation(line: 1129, column: 7, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6065, file: !2, line: 1128, column: 14)
!6069 = !DILocation(line: 1130, column: 3, scope: !6068)
!6070 = !DILocation(line: 1133, column: 39, scope: !6027)
!6071 = !DILocation(line: 1133, column: 43, scope: !6027)
!6072 = !DILocation(line: 1133, column: 14, scope: !6027)
!6073 = !DILocation(line: 1133, column: 21, scope: !6027)
!6074 = !DILocation(line: 1133, column: 33, scope: !6027)
!6075 = !DILocation(line: 1133, column: 37, scope: !6027)
!6076 = !DILocation(line: 1133, column: 2, scope: !6027)
!6077 = !DILocation(line: 1133, column: 8, scope: !6027)
!6078 = !DILocation(line: 1133, column: 12, scope: !6027)
!6079 = !DILocation(line: 1134, column: 43, scope: !6027)
!6080 = !DILocation(line: 1134, column: 47, scope: !6027)
!6081 = !DILocation(line: 1134, column: 16, scope: !6027)
!6082 = !DILocation(line: 1134, column: 23, scope: !6027)
!6083 = !DILocation(line: 1134, column: 35, scope: !6027)
!6084 = !DILocation(line: 1134, column: 41, scope: !6027)
!6085 = !DILocation(line: 1134, column: 2, scope: !6027)
!6086 = !DILocation(line: 1134, column: 8, scope: !6027)
!6087 = !DILocation(line: 1134, column: 14, scope: !6027)
!6088 = !DILocation(line: 1135, column: 45, scope: !6027)
!6089 = !DILocation(line: 1135, column: 49, scope: !6027)
!6090 = !DILocation(line: 1135, column: 17, scope: !6027)
!6091 = !DILocation(line: 1135, column: 24, scope: !6027)
!6092 = !DILocation(line: 1135, column: 36, scope: !6027)
!6093 = !DILocation(line: 1135, column: 43, scope: !6027)
!6094 = !DILocation(line: 1135, column: 2, scope: !6027)
!6095 = !DILocation(line: 1135, column: 8, scope: !6027)
!6096 = !DILocation(line: 1135, column: 15, scope: !6027)
!6097 = !DILocation(line: 1136, column: 47, scope: !6027)
!6098 = !DILocation(line: 1136, column: 51, scope: !6027)
!6099 = !DILocation(line: 1136, column: 18, scope: !6027)
!6100 = !DILocation(line: 1136, column: 25, scope: !6027)
!6101 = !DILocation(line: 1136, column: 37, scope: !6027)
!6102 = !DILocation(line: 1136, column: 45, scope: !6027)
!6103 = !DILocation(line: 1136, column: 2, scope: !6027)
!6104 = !DILocation(line: 1136, column: 8, scope: !6027)
!6105 = !DILocation(line: 1136, column: 16, scope: !6027)
!6106 = !DILocation(line: 1137, column: 35, scope: !6027)
!6107 = !DILocation(line: 1137, column: 2, scope: !6027)
!6108 = !DILocation(line: 1137, column: 9, scope: !6027)
!6109 = !DILocation(line: 1137, column: 21, scope: !6027)
!6110 = !DILocation(line: 1137, column: 33, scope: !6027)
!6111 = !DILocation(line: 1139, column: 2, scope: !6027)
!6112 = !DILocation(line: 1141, column: 2, scope: !6039)
!6113 = !DILocation(line: 1141, column: 2, scope: !6040)
!6114 = !DILocation(line: 1141, column: 2, scope: !6043)
!6115 = !DILocation(line: 1143, column: 24, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6117, file: !2, line: 1143, column: 7)
!6117 = distinct !DILexicalBlock(scope: !6043, file: !2, line: 1141, column: 46)
!6118 = !DILocation(line: 1143, column: 31, scope: !6116)
!6119 = !DILocation(line: 1143, column: 34, scope: !6116)
!6120 = !DILocation(line: 1143, column: 7, scope: !6116)
!6121 = !DILocation(line: 1143, column: 7, scope: !6117)
!6122 = !DILocation(line: 1145, column: 18, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6116, file: !2, line: 1143, column: 48)
!6124 = !DILocation(line: 1145, column: 21, scope: !6123)
!6125 = !DILocation(line: 1145, column: 28, scope: !6123)
!6126 = !DILocation(line: 1145, column: 35, scope: !6123)
!6127 = !DILocation(line: 1145, column: 4, scope: !6123)
!6128 = !DILocation(line: 1146, column: 10, scope: !6123)
!6129 = !DILocation(line: 1146, column: 4, scope: !6123)
!6130 = !DILocation(line: 1147, column: 16, scope: !6123)
!6131 = !DILocation(line: 1148, column: 4, scope: !6123)
!6132 = !DILocation(line: 1152, column: 2, scope: !6117)
!6133 = !DILocation(line: 1141, column: 2, scope: !6042)
!6134 = distinct !{!6134, !6113, !6135, !5915, !5916}
!6135 = !DILocation(line: 1152, column: 2, scope: !6040)
!6136 = !DILocation(line: 1154, column: 7, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6027, file: !2, line: 1154, column: 6)
!6138 = !DILocation(line: 1154, column: 6, scope: !6027)
!6139 = !DILocation(line: 1155, column: 18, scope: !6137)
!6140 = !DILocation(line: 1155, column: 25, scope: !6137)
!6141 = !DILocation(line: 1155, column: 3, scope: !6137)
!6142 = !DILocation(line: 1157, column: 2, scope: !6027)
!6143 = !DILocation(line: 1159, column: 2, scope: !6027)
!6144 = !DILocation(line: 1160, column: 8, scope: !6027)
!6145 = !DILocation(line: 1160, column: 2, scope: !6027)
!6146 = !DILocation(line: 1161, column: 9, scope: !6027)
!6147 = !DILocation(line: 1161, column: 2, scope: !6027)
!6148 = !DILocation(line: 1162, column: 1, scope: !6027)
!6149 = !DISubprogram(name: "_printk", scope: !6150, file: !6150, line: 153, type: !6151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6150 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6151 = !DISubroutineType(types: !6152)
!6152 = !{!48, !43, null}
!6153 = distinct !DISubprogram(name: "hid_quirks_exit", scope: !2, file: !2, line: 1233, type: !6154, scopeLine: 1234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6156)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{null, !120}
!6156 = !{!6157}
!6157 = !DILocalVariable(name: "bus", arg: 1, scope: !6153, file: !2, line: 1233, type: !120)
!6158 = !DILocation(line: 1233, column: 28, scope: !6153)
!6159 = !DILocation(line: 1235, column: 25, scope: !6153)
!6160 = !DILocation(line: 1235, column: 2, scope: !6153)
!6161 = !DILocation(line: 1236, column: 1, scope: !6153)
!6162 = distinct !DISubprogram(name: "hid_remove_all_dquirks", scope: !2, file: !2, line: 1173, type: !6154, scopeLine: 1174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6163)
!6163 = !{!6164, !6165, !6166, !6167, !6170, !6172}
!6164 = !DILocalVariable(name: "bus", arg: 1, scope: !6162, file: !2, line: 1173, type: !120)
!6165 = !DILocalVariable(name: "q", scope: !6162, file: !2, line: 1175, type: !293)
!6166 = !DILocalVariable(name: "temp", scope: !6162, file: !2, line: 1175, type: !293)
!6167 = !DILocalVariable(name: "__mptr", scope: !6168, file: !2, line: 1178, type: !46)
!6168 = distinct !DILexicalBlock(scope: !6169, file: !2, line: 1178, column: 2)
!6169 = distinct !DILexicalBlock(scope: !6162, file: !2, line: 1178, column: 2)
!6170 = !DILocalVariable(name: "__mptr", scope: !6171, file: !2, line: 1178, type: !46)
!6171 = distinct !DILexicalBlock(scope: !6169, file: !2, line: 1178, column: 2)
!6172 = !DILocalVariable(name: "__mptr", scope: !6173, file: !2, line: 1178, type: !46)
!6173 = distinct !DILexicalBlock(scope: !6174, file: !2, line: 1178, column: 2)
!6174 = distinct !DILexicalBlock(scope: !6169, file: !2, line: 1178, column: 2)
!6175 = !DILocation(line: 1173, column: 42, scope: !6162)
!6176 = !DILocation(line: 1175, column: 2, scope: !6162)
!6177 = !DILocation(line: 1175, column: 29, scope: !6162)
!6178 = !DILocation(line: 1175, column: 33, scope: !6162)
!6179 = !DILocation(line: 1177, column: 2, scope: !6162)
!6180 = !DILocation(line: 1178, column: 2, scope: !6168)
!6181 = !DILocation(line: 1178, column: 2, scope: !6169)
!6182 = !DILocation(line: 1178, column: 2, scope: !6171)
!6183 = !DILocation(line: 1178, column: 2, scope: !6174)
!6184 = !DILocation(line: 1179, column: 7, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !2, line: 1179, column: 7)
!6186 = distinct !DILexicalBlock(scope: !6174, file: !2, line: 1178, column: 57)
!6187 = !DILocation(line: 1179, column: 11, scope: !6185)
!6188 = !DILocation(line: 1179, column: 26, scope: !6185)
!6189 = !DILocation(line: 1179, column: 29, scope: !6185)
!6190 = !DILocation(line: 1179, column: 36, scope: !6185)
!6191 = !DILocation(line: 1179, column: 39, scope: !6185)
!6192 = !DILocation(line: 1179, column: 51, scope: !6185)
!6193 = !DILocation(line: 1179, column: 33, scope: !6185)
!6194 = !DILocation(line: 1179, column: 7, scope: !6186)
!6195 = !DILocation(line: 1180, column: 14, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6185, file: !2, line: 1179, column: 56)
!6197 = !DILocation(line: 1180, column: 17, scope: !6196)
!6198 = !DILocation(line: 1180, column: 4, scope: !6196)
!6199 = !DILocation(line: 1181, column: 10, scope: !6196)
!6200 = !DILocation(line: 1181, column: 4, scope: !6196)
!6201 = !DILocation(line: 1182, column: 3, scope: !6196)
!6202 = !DILocation(line: 1183, column: 2, scope: !6186)
!6203 = !DILocation(line: 1178, column: 2, scope: !6173)
!6204 = distinct !{!6204, !6181, !6205, !5915, !5916}
!6205 = !DILocation(line: 1183, column: 2, scope: !6169)
!6206 = !DILocation(line: 1184, column: 2, scope: !6162)
!6207 = !DILocation(line: 1186, column: 1, scope: !6162)
!6208 = distinct !DISubprogram(name: "hid_lookup_quirk", scope: !2, file: !2, line: 1279, type: !6209, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6211)
!6209 = !DISubroutineType(types: !6210)
!6210 = !{!65, !5946}
!6211 = !{!6212, !6213, !6214}
!6212 = !DILocalVariable(name: "hdev", arg: 1, scope: !6208, file: !2, line: 1279, type: !5946)
!6213 = !DILocalVariable(name: "quirks", scope: !6208, file: !2, line: 1281, type: !65)
!6214 = !DILocalVariable(name: "quirk_entry", scope: !6208, file: !2, line: 1282, type: !5602)
!6215 = !DILocation(line: 1279, column: 57, scope: !6208)
!6216 = !DILocation(line: 1281, column: 2, scope: !6208)
!6217 = !DILocation(line: 1281, column: 16, scope: !6208)
!6218 = !DILocation(line: 1282, column: 2, scope: !6208)
!6219 = !DILocation(line: 1282, column: 30, scope: !6208)
!6220 = !DILocation(line: 1285, column: 6, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6208, file: !2, line: 1285, column: 6)
!6222 = !DILocation(line: 1285, column: 12, scope: !6221)
!6223 = !DILocation(line: 1285, column: 16, scope: !6221)
!6224 = !DILocation(line: 1285, column: 27, scope: !6221)
!6225 = !DILocation(line: 1286, column: 6, scope: !6221)
!6226 = !DILocation(line: 1286, column: 12, scope: !6221)
!6227 = !DILocation(line: 1286, column: 19, scope: !6221)
!6228 = !DILocation(line: 1286, column: 40, scope: !6221)
!6229 = !DILocation(line: 1287, column: 6, scope: !6221)
!6230 = !DILocation(line: 1287, column: 12, scope: !6221)
!6231 = !DILocation(line: 1287, column: 20, scope: !6221)
!6232 = !DILocation(line: 1287, column: 47, scope: !6221)
!6233 = !DILocation(line: 1288, column: 6, scope: !6221)
!6234 = !DILocation(line: 1288, column: 12, scope: !6221)
!6235 = !DILocation(line: 1288, column: 20, scope: !6221)
!6236 = !DILocation(line: 1285, column: 6, scope: !6208)
!6237 = !DILocation(line: 1289, column: 3, scope: !6221)
!6238 = !DILocation(line: 1292, column: 6, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6208, file: !2, line: 1292, column: 6)
!6240 = !DILocation(line: 1292, column: 12, scope: !6239)
!6241 = !DILocation(line: 1292, column: 16, scope: !6239)
!6242 = !DILocation(line: 1292, column: 27, scope: !6239)
!6243 = !DILocation(line: 1292, column: 30, scope: !6239)
!6244 = !DILocation(line: 1292, column: 36, scope: !6239)
!6245 = !DILocation(line: 1292, column: 43, scope: !6239)
!6246 = !DILocation(line: 1292, column: 6, scope: !6208)
!6247 = !DILocation(line: 1293, column: 11, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6239, file: !2, line: 1292, column: 67)
!6249 = !DILocation(line: 1293, column: 17, scope: !6248)
!6250 = !DILocation(line: 1293, column: 3, scope: !6248)
!6251 = !DILocation(line: 1295, column: 8, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 1295, column: 8)
!6253 = distinct !DILexicalBlock(scope: !6248, file: !2, line: 1293, column: 26)
!6254 = !DILocation(line: 1295, column: 14, scope: !6252)
!6255 = !DILocation(line: 1295, column: 22, scope: !6252)
!6256 = !DILocation(line: 1295, column: 8, scope: !6253)
!6257 = !DILocation(line: 1296, column: 5, scope: !6252)
!6258 = !DILocation(line: 1297, column: 4, scope: !6253)
!6259 = !DILocation(line: 1299, column: 8, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 1299, column: 8)
!6261 = !DILocation(line: 1299, column: 14, scope: !6260)
!6262 = !DILocation(line: 1299, column: 22, scope: !6260)
!6263 = !DILocation(line: 1299, column: 8, scope: !6253)
!6264 = !DILocation(line: 1300, column: 5, scope: !6260)
!6265 = !DILocation(line: 1301, column: 4, scope: !6253)
!6266 = !DILocation(line: 1303, column: 2, scope: !6248)
!6267 = !DILocation(line: 1305, column: 2, scope: !6208)
!6268 = !DILocation(line: 1306, column: 34, scope: !6208)
!6269 = !DILocation(line: 1306, column: 16, scope: !6208)
!6270 = !DILocation(line: 1306, column: 14, scope: !6208)
!6271 = !DILocation(line: 1307, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6208, file: !2, line: 1307, column: 6)
!6273 = !DILocation(line: 1307, column: 6, scope: !6208)
!6274 = !DILocation(line: 1308, column: 12, scope: !6272)
!6275 = !DILocation(line: 1308, column: 25, scope: !6272)
!6276 = !DILocation(line: 1308, column: 10, scope: !6272)
!6277 = !DILocation(line: 1308, column: 3, scope: !6272)
!6278 = !DILocation(line: 1310, column: 28, scope: !6272)
!6279 = !DILocation(line: 1310, column: 12, scope: !6272)
!6280 = !DILocation(line: 1310, column: 10, scope: !6272)
!6281 = !DILocation(line: 1311, column: 2, scope: !6208)
!6282 = !DILocation(line: 1313, column: 9, scope: !6208)
!6283 = !DILocation(line: 1313, column: 2, scope: !6208)
!6284 = !DILocation(line: 1314, column: 1, scope: !6208)
!6285 = !DISubprogram(name: "mutex_lock", scope: !350, file: !350, line: 227, type: !6286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6286 = !DISubroutineType(types: !6287)
!6287 = !{null, !6288}
!6288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!6289 = distinct !DISubprogram(name: "hid_exists_dquirk", scope: !2, file: !2, line: 1082, type: !6290, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6293)
!6290 = !DISubroutineType(types: !6291)
!6291 = !{!6292, !5946}
!6292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!6293 = !{!6294, !6295, !6296, !6297, !6300}
!6294 = !DILocalVariable(name: "hdev", arg: 1, scope: !6289, file: !2, line: 1082, type: !5946)
!6295 = !DILocalVariable(name: "q", scope: !6289, file: !2, line: 1084, type: !293)
!6296 = !DILocalVariable(name: "bl_entry", scope: !6289, file: !2, line: 1085, type: !6292)
!6297 = !DILocalVariable(name: "__mptr", scope: !6298, file: !2, line: 1087, type: !46)
!6298 = distinct !DILexicalBlock(scope: !6299, file: !2, line: 1087, column: 2)
!6299 = distinct !DILexicalBlock(scope: !6289, file: !2, line: 1087, column: 2)
!6300 = !DILocalVariable(name: "__mptr", scope: !6301, file: !2, line: 1087, type: !46)
!6301 = distinct !DILexicalBlock(scope: !6302, file: !2, line: 1087, column: 2)
!6302 = distinct !DILexicalBlock(scope: !6299, file: !2, line: 1087, column: 2)
!6303 = !DILocation(line: 1082, column: 73, scope: !6289)
!6304 = !DILocation(line: 1084, column: 2, scope: !6289)
!6305 = !DILocation(line: 1084, column: 29, scope: !6289)
!6306 = !DILocation(line: 1085, column: 2, scope: !6289)
!6307 = !DILocation(line: 1085, column: 24, scope: !6289)
!6308 = !DILocation(line: 1087, column: 2, scope: !6298)
!6309 = !DILocation(line: 1087, column: 2, scope: !6299)
!6310 = !DILocation(line: 1087, column: 2, scope: !6302)
!6311 = !DILocation(line: 1088, column: 24, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6313, file: !2, line: 1088, column: 7)
!6313 = distinct !DILexicalBlock(scope: !6302, file: !2, line: 1087, column: 46)
!6314 = !DILocation(line: 1088, column: 31, scope: !6312)
!6315 = !DILocation(line: 1088, column: 34, scope: !6312)
!6316 = !DILocation(line: 1088, column: 7, scope: !6312)
!6317 = !DILocation(line: 1088, column: 7, scope: !6313)
!6318 = !DILocation(line: 1089, column: 16, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6312, file: !2, line: 1088, column: 48)
!6320 = !DILocation(line: 1089, column: 19, scope: !6319)
!6321 = !DILocation(line: 1089, column: 13, scope: !6319)
!6322 = !DILocation(line: 1090, column: 4, scope: !6319)
!6323 = !DILocation(line: 1092, column: 2, scope: !6313)
!6324 = !DILocation(line: 1087, column: 2, scope: !6301)
!6325 = distinct !{!6325, !6309, !6326, !5915, !5916}
!6326 = !DILocation(line: 1092, column: 2, scope: !6299)
!6327 = !DILocation(line: 1094, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6289, file: !2, line: 1094, column: 6)
!6329 = !DILocation(line: 1094, column: 15, scope: !6328)
!6330 = !DILocation(line: 1094, column: 6, scope: !6289)
!6331 = !DILocation(line: 1095, column: 3, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 1095, column: 3)
!6333 = distinct !DILexicalBlock(scope: !6328, file: !2, line: 1095, column: 3)
!6334 = !DILocation(line: 1095, column: 3, scope: !6333)
!6335 = !DILocation(line: 1095, column: 3, scope: !6328)
!6336 = !DILocation(line: 1099, column: 9, scope: !6289)
!6337 = !DILocation(line: 1100, column: 1, scope: !6289)
!6338 = !DILocation(line: 1099, column: 2, scope: !6289)
!6339 = distinct !DISubprogram(name: "hid_gets_squirk", scope: !2, file: !2, line: 1249, type: !6209, scopeLine: 1250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6340)
!6340 = !{!6341, !6342, !6343}
!6341 = !DILocalVariable(name: "hdev", arg: 1, scope: !6339, file: !2, line: 1249, type: !5946)
!6342 = !DILocalVariable(name: "bl_entry", scope: !6339, file: !2, line: 1251, type: !5602)
!6343 = !DILocalVariable(name: "quirks", scope: !6339, file: !2, line: 1252, type: !65)
!6344 = !DILocation(line: 1249, column: 63, scope: !6339)
!6345 = !DILocation(line: 1251, column: 2, scope: !6339)
!6346 = !DILocation(line: 1251, column: 30, scope: !6339)
!6347 = !DILocation(line: 1252, column: 2, scope: !6339)
!6348 = !DILocation(line: 1252, column: 16, scope: !6339)
!6349 = !DILocation(line: 1252, column: 25, scope: !6339)
!6350 = !DILocation(line: 1252, column: 31, scope: !6339)
!6351 = !DILocation(line: 1254, column: 19, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6339, file: !2, line: 1254, column: 6)
!6353 = !DILocation(line: 1254, column: 6, scope: !6352)
!6354 = !DILocation(line: 1254, column: 6, scope: !6339)
!6355 = !DILocation(line: 1255, column: 10, scope: !6352)
!6356 = !DILocation(line: 1255, column: 3, scope: !6352)
!6357 = !DILocation(line: 1257, column: 19, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6339, file: !2, line: 1257, column: 6)
!6359 = !DILocation(line: 1257, column: 6, scope: !6358)
!6360 = !DILocation(line: 1257, column: 6, scope: !6339)
!6361 = !DILocation(line: 1258, column: 10, scope: !6358)
!6362 = !DILocation(line: 1258, column: 3, scope: !6358)
!6363 = !DILocation(line: 1260, column: 26, scope: !6339)
!6364 = !DILocation(line: 1260, column: 13, scope: !6339)
!6365 = !DILocation(line: 1260, column: 11, scope: !6339)
!6366 = !DILocation(line: 1261, column: 6, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6339, file: !2, line: 1261, column: 6)
!6368 = !DILocation(line: 1261, column: 15, scope: !6367)
!6369 = !DILocation(line: 1261, column: 6, scope: !6339)
!6370 = !DILocation(line: 1262, column: 13, scope: !6367)
!6371 = !DILocation(line: 1262, column: 23, scope: !6367)
!6372 = !DILocation(line: 1262, column: 10, scope: !6367)
!6373 = !DILocation(line: 1262, column: 3, scope: !6367)
!6374 = !DILocation(line: 1264, column: 6, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6339, file: !2, line: 1264, column: 6)
!6376 = !DILocation(line: 1264, column: 6, scope: !6339)
!6377 = !DILocation(line: 1265, column: 3, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6379, file: !2, line: 1265, column: 3)
!6379 = distinct !DILexicalBlock(scope: !6375, file: !2, line: 1265, column: 3)
!6380 = !DILocation(line: 1265, column: 3, scope: !6379)
!6381 = !DILocation(line: 1265, column: 3, scope: !6375)
!6382 = !DILocation(line: 1267, column: 9, scope: !6339)
!6383 = !DILocation(line: 1268, column: 1, scope: !6339)
!6384 = !DILocation(line: 1267, column: 2, scope: !6339)
!6385 = !DISubprogram(name: "mutex_unlock", scope: !350, file: !350, line: 246, type: !6286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6386 = distinct !DISubprogram(name: "kzalloc", scope: !282, file: !282, line: 719, type: !6387, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!46, !61, !292}
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "size", arg: 1, scope: !6386, file: !282, line: 719, type: !61)
!6391 = !DILocalVariable(name: "flags", arg: 2, scope: !6386, file: !282, line: 719, type: !292)
!6392 = !DILocation(line: 719, column: 52, scope: !6386)
!6393 = !DILocation(line: 719, column: 64, scope: !6386)
!6394 = !DILocation(line: 721, column: 17, scope: !6386)
!6395 = !DILocation(line: 721, column: 23, scope: !6386)
!6396 = !DILocation(line: 721, column: 29, scope: !6386)
!6397 = !DILocation(line: 721, column: 9, scope: !6386)
!6398 = !DILocation(line: 721, column: 2, scope: !6386)
!6399 = distinct !DISubprogram(name: "kmalloc", scope: !282, file: !282, line: 591, type: !6387, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6400)
!6400 = !{!6401, !6402, !6403}
!6401 = !DILocalVariable(name: "size", arg: 1, scope: !6399, file: !282, line: 591, type: !61)
!6402 = !DILocalVariable(name: "flags", arg: 2, scope: !6399, file: !282, line: 591, type: !292)
!6403 = !DILocalVariable(name: "index", scope: !6404, file: !282, line: 594, type: !18)
!6404 = distinct !DILexicalBlock(scope: !6405, file: !282, line: 593, column: 42)
!6405 = distinct !DILexicalBlock(scope: !6399, file: !282, line: 593, column: 6)
!6406 = !DILocation(line: 591, column: 61, scope: !6399)
!6407 = !DILocation(line: 591, column: 73, scope: !6399)
!6408 = !DILocation(line: 593, column: 27, scope: !6405)
!6409 = !DILocation(line: 593, column: 6, scope: !6405)
!6410 = !DILocation(line: 593, column: 33, scope: !6405)
!6411 = !DILocation(line: 593, column: 36, scope: !6405)
!6412 = !DILocation(line: 593, column: 6, scope: !6399)
!6413 = !DILocation(line: 594, column: 3, scope: !6404)
!6414 = !DILocation(line: 594, column: 16, scope: !6404)
!6415 = !DILocation(line: 596, column: 7, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6404, file: !282, line: 596, column: 7)
!6417 = !DILocation(line: 596, column: 12, scope: !6416)
!6418 = !DILocation(line: 596, column: 7, scope: !6404)
!6419 = !DILocation(line: 597, column: 25, scope: !6416)
!6420 = !DILocation(line: 597, column: 31, scope: !6416)
!6421 = !DILocation(line: 597, column: 11, scope: !6416)
!6422 = !DILocation(line: 597, column: 4, scope: !6416)
!6423 = !DILocation(line: 599, column: 11, scope: !6404)
!6424 = !DILocation(line: 599, column: 9, scope: !6404)
!6425 = !DILocation(line: 601, column: 33, scope: !6404)
!6426 = !DILocation(line: 601, column: 40, scope: !6404)
!6427 = !DILocation(line: 601, column: 20, scope: !6404)
!6428 = !DILocation(line: 601, column: 5, scope: !6404)
!6429 = !DILocation(line: 601, column: 51, scope: !6404)
!6430 = !DILocation(line: 602, column: 5, scope: !6404)
!6431 = !DILocation(line: 602, column: 12, scope: !6404)
!6432 = !DILocation(line: 600, column: 10, scope: !6404)
!6433 = !DILocation(line: 600, column: 3, scope: !6404)
!6434 = !DILocation(line: 603, column: 2, scope: !6405)
!6435 = !DILocation(line: 604, column: 19, scope: !6399)
!6436 = !DILocation(line: 604, column: 25, scope: !6399)
!6437 = !DILocation(line: 604, column: 9, scope: !6399)
!6438 = !DILocation(line: 604, column: 2, scope: !6399)
!6439 = !DILocation(line: 605, column: 1, scope: !6399)
!6440 = !DISubprogram(name: "hid_match_one_id", scope: !17, file: !17, line: 970, type: !6441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6441 = !DISubroutineType(types: !6442)
!6442 = !{!405, !5946, !5602}
!6443 = distinct !DISubprogram(name: "list_replace", scope: !6444, file: !6444, line: 241, type: !6445, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6447)
!6444 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6445 = !DISubroutineType(types: !6446)
!6446 = !{null, !126, !126}
!6447 = !{!6448, !6449}
!6448 = !DILocalVariable(name: "old", arg: 1, scope: !6443, file: !6444, line: 241, type: !126)
!6449 = !DILocalVariable(name: "new", arg: 2, scope: !6443, file: !6444, line: 242, type: !126)
!6450 = !DILocation(line: 241, column: 51, scope: !6443)
!6451 = !DILocation(line: 242, column: 23, scope: !6443)
!6452 = !DILocation(line: 244, column: 14, scope: !6443)
!6453 = !DILocation(line: 244, column: 19, scope: !6443)
!6454 = !DILocation(line: 244, column: 2, scope: !6443)
!6455 = !DILocation(line: 244, column: 7, scope: !6443)
!6456 = !DILocation(line: 244, column: 12, scope: !6443)
!6457 = !DILocation(line: 245, column: 20, scope: !6443)
!6458 = !DILocation(line: 245, column: 2, scope: !6443)
!6459 = !DILocation(line: 245, column: 7, scope: !6443)
!6460 = !DILocation(line: 245, column: 13, scope: !6443)
!6461 = !DILocation(line: 245, column: 18, scope: !6443)
!6462 = !DILocation(line: 246, column: 14, scope: !6443)
!6463 = !DILocation(line: 246, column: 19, scope: !6443)
!6464 = !DILocation(line: 246, column: 2, scope: !6443)
!6465 = !DILocation(line: 246, column: 7, scope: !6443)
!6466 = !DILocation(line: 246, column: 12, scope: !6443)
!6467 = !DILocation(line: 247, column: 20, scope: !6443)
!6468 = !DILocation(line: 247, column: 2, scope: !6443)
!6469 = !DILocation(line: 247, column: 7, scope: !6443)
!6470 = !DILocation(line: 247, column: 13, scope: !6443)
!6471 = !DILocation(line: 247, column: 18, scope: !6443)
!6472 = !DILocation(line: 248, column: 1, scope: !6443)
!6473 = !DISubprogram(name: "kfree", scope: !282, file: !282, line: 227, type: !6474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{null, !1808}
!6476 = distinct !DISubprogram(name: "list_add_tail", scope: !6444, file: !6444, line: 181, type: !6445, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6477)
!6477 = !{!6478, !6479}
!6478 = !DILocalVariable(name: "new", arg: 1, scope: !6476, file: !6444, line: 181, type: !126)
!6479 = !DILocalVariable(name: "head", arg: 2, scope: !6476, file: !6444, line: 181, type: !126)
!6480 = !DILocation(line: 181, column: 52, scope: !6476)
!6481 = !DILocation(line: 181, column: 75, scope: !6476)
!6482 = !DILocation(line: 183, column: 13, scope: !6476)
!6483 = !DILocation(line: 183, column: 18, scope: !6476)
!6484 = !DILocation(line: 183, column: 24, scope: !6476)
!6485 = !DILocation(line: 183, column: 30, scope: !6476)
!6486 = !DILocation(line: 183, column: 2, scope: !6476)
!6487 = !DILocation(line: 184, column: 1, scope: !6476)
!6488 = !DISubprogram(name: "kmalloc_large", scope: !282, file: !282, line: 531, type: !6387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6489 = distinct !DISubprogram(name: "__kmalloc_index", scope: !282, file: !282, line: 444, type: !6490, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6492)
!6490 = !DISubroutineType(types: !6491)
!6491 = !{!18, !61, !405}
!6492 = !{!6493, !6494}
!6493 = !DILocalVariable(name: "size", arg: 1, scope: !6489, file: !282, line: 444, type: !61)
!6494 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6489, file: !282, line: 445, type: !405)
!6495 = !DILocation(line: 444, column: 60, scope: !6489)
!6496 = !DILocation(line: 445, column: 16, scope: !6489)
!6497 = !DILocation(line: 447, column: 7, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 447, column: 6)
!6499 = !DILocation(line: 447, column: 6, scope: !6489)
!6500 = !DILocation(line: 448, column: 3, scope: !6498)
!6501 = !DILocation(line: 450, column: 6, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 450, column: 6)
!6503 = !DILocation(line: 450, column: 11, scope: !6502)
!6504 = !DILocation(line: 450, column: 6, scope: !6489)
!6505 = !DILocation(line: 451, column: 3, scope: !6502)
!6506 = !DILocation(line: 453, column: 32, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 453, column: 6)
!6508 = !DILocation(line: 453, column: 37, scope: !6507)
!6509 = !DILocation(line: 453, column: 42, scope: !6507)
!6510 = !DILocation(line: 453, column: 45, scope: !6507)
!6511 = !DILocation(line: 453, column: 50, scope: !6507)
!6512 = !DILocation(line: 453, column: 6, scope: !6489)
!6513 = !DILocation(line: 454, column: 3, scope: !6507)
!6514 = !DILocation(line: 455, column: 32, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 455, column: 6)
!6516 = !DILocation(line: 455, column: 37, scope: !6515)
!6517 = !DILocation(line: 455, column: 43, scope: !6515)
!6518 = !DILocation(line: 455, column: 46, scope: !6515)
!6519 = !DILocation(line: 455, column: 51, scope: !6515)
!6520 = !DILocation(line: 455, column: 6, scope: !6489)
!6521 = !DILocation(line: 456, column: 3, scope: !6515)
!6522 = !DILocation(line: 457, column: 6, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 457, column: 6)
!6524 = !DILocation(line: 457, column: 11, scope: !6523)
!6525 = !DILocation(line: 457, column: 6, scope: !6489)
!6526 = !DILocation(line: 457, column: 26, scope: !6523)
!6527 = !DILocation(line: 458, column: 6, scope: !6528)
!6528 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 458, column: 6)
!6529 = !DILocation(line: 458, column: 11, scope: !6528)
!6530 = !DILocation(line: 458, column: 6, scope: !6489)
!6531 = !DILocation(line: 458, column: 26, scope: !6528)
!6532 = !DILocation(line: 459, column: 6, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 459, column: 6)
!6534 = !DILocation(line: 459, column: 11, scope: !6533)
!6535 = !DILocation(line: 459, column: 6, scope: !6489)
!6536 = !DILocation(line: 459, column: 26, scope: !6533)
!6537 = !DILocation(line: 460, column: 6, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 460, column: 6)
!6539 = !DILocation(line: 460, column: 11, scope: !6538)
!6540 = !DILocation(line: 460, column: 6, scope: !6489)
!6541 = !DILocation(line: 460, column: 26, scope: !6538)
!6542 = !DILocation(line: 461, column: 6, scope: !6543)
!6543 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 461, column: 6)
!6544 = !DILocation(line: 461, column: 11, scope: !6543)
!6545 = !DILocation(line: 461, column: 6, scope: !6489)
!6546 = !DILocation(line: 461, column: 26, scope: !6543)
!6547 = !DILocation(line: 462, column: 6, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 462, column: 6)
!6549 = !DILocation(line: 462, column: 11, scope: !6548)
!6550 = !DILocation(line: 462, column: 6, scope: !6489)
!6551 = !DILocation(line: 462, column: 26, scope: !6548)
!6552 = !DILocation(line: 463, column: 6, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 463, column: 6)
!6554 = !DILocation(line: 463, column: 11, scope: !6553)
!6555 = !DILocation(line: 463, column: 6, scope: !6489)
!6556 = !DILocation(line: 463, column: 26, scope: !6553)
!6557 = !DILocation(line: 464, column: 6, scope: !6558)
!6558 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 464, column: 6)
!6559 = !DILocation(line: 464, column: 11, scope: !6558)
!6560 = !DILocation(line: 464, column: 6, scope: !6489)
!6561 = !DILocation(line: 464, column: 26, scope: !6558)
!6562 = !DILocation(line: 465, column: 6, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 465, column: 6)
!6564 = !DILocation(line: 465, column: 11, scope: !6563)
!6565 = !DILocation(line: 465, column: 6, scope: !6489)
!6566 = !DILocation(line: 465, column: 26, scope: !6563)
!6567 = !DILocation(line: 466, column: 6, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 466, column: 6)
!6569 = !DILocation(line: 466, column: 11, scope: !6568)
!6570 = !DILocation(line: 466, column: 6, scope: !6489)
!6571 = !DILocation(line: 466, column: 26, scope: !6568)
!6572 = !DILocation(line: 467, column: 6, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 467, column: 6)
!6574 = !DILocation(line: 467, column: 11, scope: !6573)
!6575 = !DILocation(line: 467, column: 6, scope: !6489)
!6576 = !DILocation(line: 467, column: 26, scope: !6573)
!6577 = !DILocation(line: 468, column: 6, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 468, column: 6)
!6579 = !DILocation(line: 468, column: 11, scope: !6578)
!6580 = !DILocation(line: 468, column: 6, scope: !6489)
!6581 = !DILocation(line: 468, column: 26, scope: !6578)
!6582 = !DILocation(line: 469, column: 6, scope: !6583)
!6583 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 469, column: 6)
!6584 = !DILocation(line: 469, column: 11, scope: !6583)
!6585 = !DILocation(line: 469, column: 6, scope: !6489)
!6586 = !DILocation(line: 469, column: 26, scope: !6583)
!6587 = !DILocation(line: 470, column: 6, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 470, column: 6)
!6589 = !DILocation(line: 470, column: 11, scope: !6588)
!6590 = !DILocation(line: 470, column: 6, scope: !6489)
!6591 = !DILocation(line: 470, column: 26, scope: !6588)
!6592 = !DILocation(line: 471, column: 6, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 471, column: 6)
!6594 = !DILocation(line: 471, column: 11, scope: !6593)
!6595 = !DILocation(line: 471, column: 6, scope: !6489)
!6596 = !DILocation(line: 471, column: 26, scope: !6593)
!6597 = !DILocation(line: 472, column: 6, scope: !6598)
!6598 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 472, column: 6)
!6599 = !DILocation(line: 472, column: 11, scope: !6598)
!6600 = !DILocation(line: 472, column: 6, scope: !6489)
!6601 = !DILocation(line: 472, column: 26, scope: !6598)
!6602 = !DILocation(line: 473, column: 6, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 473, column: 6)
!6604 = !DILocation(line: 473, column: 11, scope: !6603)
!6605 = !DILocation(line: 473, column: 6, scope: !6489)
!6606 = !DILocation(line: 473, column: 26, scope: !6603)
!6607 = !DILocation(line: 474, column: 6, scope: !6608)
!6608 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 474, column: 6)
!6609 = !DILocation(line: 474, column: 11, scope: !6608)
!6610 = !DILocation(line: 474, column: 6, scope: !6489)
!6611 = !DILocation(line: 474, column: 27, scope: !6608)
!6612 = !DILocation(line: 475, column: 6, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 475, column: 6)
!6614 = !DILocation(line: 475, column: 11, scope: !6613)
!6615 = !DILocation(line: 475, column: 6, scope: !6489)
!6616 = !DILocation(line: 475, column: 32, scope: !6613)
!6617 = !DILocation(line: 477, column: 50, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6489, file: !282, line: 477, column: 6)
!6619 = !{i8 0, i8 2}
!6620 = !DILocation(line: 477, column: 6, scope: !6489)
!6621 = !DILocation(line: 478, column: 3, scope: !6618)
!6622 = !DILocation(line: 478, column: 3, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6624, file: !282, line: 478, column: 3)
!6624 = distinct !DILexicalBlock(scope: !6618, file: !282, line: 478, column: 3)
!6625 = !{i32 -2143446590}
!6626 = !DILocation(line: 478, column: 3, scope: !6624)
!6627 = !DILocation(line: 480, column: 3, scope: !6618)
!6628 = !DILocation(line: 480, column: 3, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6618, file: !282, line: 480, column: 3)
!6630 = !DILocation(line: 480, column: 3, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6629, file: !282, line: 480, column: 3)
!6632 = !DILocation(line: 480, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6629, file: !282, line: 480, column: 3)
!6634 = !{i64 2151520909, i64 2151520938, i64 2151520984, i64 2151521042, i64 2151521096, i64 2151521150, i64 2151521205, i64 2151521236}
!6635 = !DILocation(line: 483, column: 2, scope: !6489)
!6636 = !DILocation(line: 484, column: 1, scope: !6489)
!6637 = !DISubprogram(name: "kmalloc_trace", scope: !282, file: !282, line: 525, type: !6638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6638 = !DISubroutineType(types: !6639)
!6639 = !{!46, !6640, !292, !61}
!6640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6641, size: 64)
!6641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4845, line: 11, flags: DIFlagFwdDecl)
!6642 = distinct !DISubprogram(name: "kmalloc_type", scope: !282, file: !282, line: 401, type: !6643, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6645)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!281, !292, !65}
!6645 = !{!6646, !6647}
!6646 = !DILocalVariable(name: "flags", arg: 1, scope: !6642, file: !282, line: 401, type: !292)
!6647 = !DILocalVariable(name: "caller", arg: 2, scope: !6642, file: !282, line: 401, type: !65)
!6648 = !DILocation(line: 401, column: 67, scope: !6642)
!6649 = !DILocation(line: 401, column: 88, scope: !6642)
!6650 = !DILocation(line: 407, column: 6, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6642, file: !282, line: 407, column: 6)
!6652 = !DILocation(line: 407, column: 6, scope: !6642)
!6653 = !DILocation(line: 413, column: 3, scope: !6651)
!6654 = !DILocation(line: 423, column: 38, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6642, file: !282, line: 423, column: 6)
!6656 = !DILocation(line: 423, column: 44, scope: !6655)
!6657 = !DILocation(line: 423, column: 6, scope: !6642)
!6658 = !DILocation(line: 424, column: 3, scope: !6655)
!6659 = !DILocation(line: 426, column: 3, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6642, file: !282, line: 425, column: 6)
!6661 = !DILocation(line: 429, column: 1, scope: !6642)
!6662 = !DISubprogram(name: "__kmalloc", scope: !282, file: !282, line: 488, type: !6387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6663 = !DISubprogram(name: "__compiletime_assert_117", scope: !282, file: !282, line: 478, type: !2746, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6664 = distinct !DISubprogram(name: "__list_add", scope: !6444, file: !6444, line: 146, type: !6665, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{null, !126, !126, !126}
!6667 = !{!6668, !6669, !6670}
!6668 = !DILocalVariable(name: "new", arg: 1, scope: !6664, file: !6444, line: 146, type: !126)
!6669 = !DILocalVariable(name: "prev", arg: 2, scope: !6664, file: !6444, line: 147, type: !126)
!6670 = !DILocalVariable(name: "next", arg: 3, scope: !6664, file: !6444, line: 148, type: !126)
!6671 = !DILocation(line: 146, column: 49, scope: !6664)
!6672 = !DILocation(line: 147, column: 28, scope: !6664)
!6673 = !DILocation(line: 148, column: 28, scope: !6664)
!6674 = !DILocation(line: 150, column: 24, scope: !6675)
!6675 = distinct !DILexicalBlock(scope: !6664, file: !6444, line: 150, column: 6)
!6676 = !DILocation(line: 150, column: 29, scope: !6675)
!6677 = !DILocation(line: 150, column: 35, scope: !6675)
!6678 = !DILocation(line: 150, column: 7, scope: !6675)
!6679 = !DILocation(line: 150, column: 6, scope: !6664)
!6680 = !DILocation(line: 151, column: 3, scope: !6675)
!6681 = !DILocation(line: 153, column: 15, scope: !6664)
!6682 = !DILocation(line: 153, column: 2, scope: !6664)
!6683 = !DILocation(line: 153, column: 8, scope: !6664)
!6684 = !DILocation(line: 153, column: 13, scope: !6664)
!6685 = !DILocation(line: 154, column: 14, scope: !6664)
!6686 = !DILocation(line: 154, column: 2, scope: !6664)
!6687 = !DILocation(line: 154, column: 7, scope: !6664)
!6688 = !DILocation(line: 154, column: 12, scope: !6664)
!6689 = !DILocation(line: 155, column: 14, scope: !6664)
!6690 = !DILocation(line: 155, column: 2, scope: !6664)
!6691 = !DILocation(line: 155, column: 7, scope: !6664)
!6692 = !DILocation(line: 155, column: 12, scope: !6664)
!6693 = !DILocation(line: 156, column: 2, scope: !6664)
!6694 = !DILocation(line: 156, column: 2, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6664, file: !6444, line: 156, column: 2)
!6696 = !DILocation(line: 156, column: 2, scope: !6697)
!6697 = distinct !DILexicalBlock(scope: !6695, file: !6444, line: 156, column: 2)
!6698 = !DILocation(line: 156, column: 2, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6695, file: !6444, line: 156, column: 2)
!6700 = !DILocation(line: 157, column: 1, scope: !6664)
!6701 = distinct !DISubprogram(name: "__list_add_valid", scope: !6444, file: !6444, line: 128, type: !6702, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6704)
!6702 = !DISubroutineType(types: !6703)
!6703 = !{!405, !126, !126, !126}
!6704 = !{!6705, !6706, !6707}
!6705 = !DILocalVariable(name: "new", arg: 1, scope: !6701, file: !6444, line: 128, type: !126)
!6706 = !DILocalVariable(name: "prev", arg: 2, scope: !6701, file: !6444, line: 129, type: !126)
!6707 = !DILocalVariable(name: "next", arg: 3, scope: !6701, file: !6444, line: 130, type: !126)
!6708 = !DILocation(line: 128, column: 55, scope: !6701)
!6709 = !DILocation(line: 129, column: 23, scope: !6701)
!6710 = !DILocation(line: 130, column: 23, scope: !6701)
!6711 = !DILocation(line: 132, column: 2, scope: !6701)
!6712 = distinct !DISubprogram(name: "list_del", scope: !6444, file: !6444, line: 227, type: !6713, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6715)
!6713 = !DISubroutineType(types: !6714)
!6714 = !{null, !126}
!6715 = !{!6716}
!6716 = !DILocalVariable(name: "entry", arg: 1, scope: !6712, file: !6444, line: 227, type: !126)
!6717 = !DILocation(line: 227, column: 47, scope: !6712)
!6718 = !DILocation(line: 229, column: 19, scope: !6712)
!6719 = !DILocation(line: 229, column: 2, scope: !6712)
!6720 = !DILocation(line: 230, column: 2, scope: !6712)
!6721 = !DILocation(line: 230, column: 9, scope: !6712)
!6722 = !DILocation(line: 230, column: 14, scope: !6712)
!6723 = !DILocation(line: 231, column: 2, scope: !6712)
!6724 = !DILocation(line: 231, column: 9, scope: !6712)
!6725 = !DILocation(line: 231, column: 14, scope: !6712)
!6726 = !DILocation(line: 232, column: 1, scope: !6712)
!6727 = distinct !DISubprogram(name: "__list_del_entry", scope: !6444, file: !6444, line: 213, type: !6713, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6728)
!6728 = !{!6729}
!6729 = !DILocalVariable(name: "entry", arg: 1, scope: !6727, file: !6444, line: 213, type: !126)
!6730 = !DILocation(line: 213, column: 55, scope: !6727)
!6731 = !DILocation(line: 215, column: 30, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6727, file: !6444, line: 215, column: 6)
!6733 = !DILocation(line: 215, column: 7, scope: !6732)
!6734 = !DILocation(line: 215, column: 6, scope: !6727)
!6735 = !DILocation(line: 216, column: 3, scope: !6732)
!6736 = !DILocation(line: 218, column: 13, scope: !6727)
!6737 = !DILocation(line: 218, column: 20, scope: !6727)
!6738 = !DILocation(line: 218, column: 26, scope: !6727)
!6739 = !DILocation(line: 218, column: 33, scope: !6727)
!6740 = !DILocation(line: 218, column: 2, scope: !6727)
!6741 = !DILocation(line: 219, column: 1, scope: !6727)
!6742 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6444, file: !6444, line: 134, type: !6743, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6745)
!6743 = !DISubroutineType(types: !6744)
!6744 = !{!405, !126}
!6745 = !{!6746}
!6746 = !DILocalVariable(name: "entry", arg: 1, scope: !6742, file: !6444, line: 134, type: !126)
!6747 = !DILocation(line: 134, column: 61, scope: !6742)
!6748 = !DILocation(line: 136, column: 2, scope: !6742)
!6749 = distinct !DISubprogram(name: "__list_del", scope: !6444, file: !6444, line: 193, type: !6445, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6750)
!6750 = !{!6751, !6752}
!6751 = !DILocalVariable(name: "prev", arg: 1, scope: !6749, file: !6444, line: 193, type: !126)
!6752 = !DILocalVariable(name: "next", arg: 2, scope: !6749, file: !6444, line: 193, type: !126)
!6753 = !DILocation(line: 193, column: 50, scope: !6749)
!6754 = !DILocation(line: 193, column: 75, scope: !6749)
!6755 = !DILocation(line: 195, column: 15, scope: !6749)
!6756 = !DILocation(line: 195, column: 2, scope: !6749)
!6757 = !DILocation(line: 195, column: 8, scope: !6749)
!6758 = !DILocation(line: 195, column: 13, scope: !6749)
!6759 = !DILocation(line: 196, column: 2, scope: !6749)
!6760 = !DILocation(line: 196, column: 2, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6749, file: !6444, line: 196, column: 2)
!6762 = !DILocation(line: 196, column: 2, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6761, file: !6444, line: 196, column: 2)
!6764 = !DILocation(line: 196, column: 2, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6761, file: !6444, line: 196, column: 2)
!6766 = !DILocation(line: 197, column: 1, scope: !6749)
