; ModuleID = 'drivers/usb/core/quirks.c'
source_filename = "drivers/usb/core/quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, [4 x i8], ptr, i32, [2 x i32], [4 x i8], ptr, ptr, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, [4 x i8], ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [3 x i8], i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i64, i32, i16, i32, ptr, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i64] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i64, %struct.atomic_t, i8, %union.anon.14, i64 }
%union.anon.14 = type { ptr }
%struct.quirk_entry = type { i16, i16, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__param_str_quirks = internal constant [15 x i8] c"usbcore.quirks\00", align 1, !dbg !0
@quirks_param_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @quirks_param_set, ptr @param_get_string, ptr null }, align 8, !dbg !5047
@quirks_param_string = internal global %struct.kparam_string { i32 128, ptr @quirks_param }, align 8, !dbg !5061
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @quirks_param_ops, i16 420, i8 6, i8 0, %union.anon.13 { ptr @quirks_param_string } }, section "__param", align 8, !dbg !5032
@__UNIQUE_ID_quirks271 = internal constant [89 x i8] c"usbcore.parm=quirks:Add/modify USB quirks by specifying quirks=vendorID:productID:quirks\00", section ".modinfo", align 1, !dbg !5034
@usb_endpoint_ignore = internal constant [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i64 1 }, %struct.usb_device_id { i16 1027, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i64 129 }, %struct.usb_device_id { i16 1027, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i64 133 }, %struct.usb_device_id { i16 1027, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i64 133 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !5065
@usb_quirk_list = internal constant [125 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 516, i16 24613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 536, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 536, i16 1025, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1008, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 16192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1054, i16 12320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1060, i16 13571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1118, i16 1990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1130, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2085, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1133, i16 2156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1133, i16 2241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16094, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 1137, i16 341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1151, i16 -16365, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1204, i16 1318, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1240, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1255, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1255, i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1256, i16 26113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1267, i16 137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1267, i16 897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1267, i16 8632, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 256 }, %struct.usb_device_id { i16 3, i16 1410, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1410, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1423, i16 -28076, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1452, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1484, i16 8807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1507, i16 1558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1592, i16 2579, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 1659, i16 10033, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1088 }, %struct.usb_device_id { i16 3, i16 1699, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 1725, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 2052, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32768 }, %struct.usb_device_id { i16 3, i16 1891, i16 402, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1921, i16 21891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 1921, i16 21905, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 2131, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 2284, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2308, i16 24833, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24834, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2048 }, %struct.usb_device_id { i16 3, i16 2308, i16 24835, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2048 }, %struct.usb_device_id { i16 3, i16 2342, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32768 }, %struct.usb_device_id { i16 3, i16 2342, i16 13107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 2385, i16 5734, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 2389, i16 28696, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2389, i16 28697, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2389, i16 29720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2389, i16 30497, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2389, i16 31768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2389, i16 32281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2389, i16 32545, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2417, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4 }, %struct.usb_device_id { i16 3, i16 2465, i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8192 }, %struct.usb_device_id { i16 3, i16 2652, i16 8225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2706, i16 145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2821, i16 6112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 512 }, %struct.usb_device_id { i16 3, i16 3034, i16 337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 3034, i16 1159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 3141, i16 28758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 512 }, %struct.usb_device_id { i16 3, i16 4046, i16 3550, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 4310, i16 8704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1 }, %struct.usb_device_id { i16 3, i16 4661, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 4661, i16 -32239, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 4817, i16 5563, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 4817, i16 5571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 5398, i16 -31192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 5426, i16 278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 128 }, %struct.usb_device_id { i16 3, i16 6127, i16 4120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 6127, i16 4121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 6127, i16 29196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 6127, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 6127, i16 -24558, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4096 }, %struct.usb_device_id { i16 3, i16 6127, i16 -23673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 6408, i16 4885, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 32 }, %struct.usb_device_id { i16 3, i16 6666, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 128 }, %struct.usb_device_id { i16 3, i16 6720, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 16384 }, %struct.usb_device_id { i16 3, i16 6940, i16 6931, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6933, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 6940, i16 6963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6966, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 64 }, %struct.usb_device_id { i16 3, i16 6940, i16 6968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8256 }, %struct.usb_device_id { i16 3, i16 7107, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 4 }, %struct.usb_device_id { i16 3, i16 7285, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 7649, i16 -16126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17093, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 7899, i16 -17073, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 8053, i16 2327, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 8256, i16 29184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 9094, i16 12564, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 12569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 9094, i16 13582, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 11336, i16 306, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 65536 }, %struct.usb_device_id { i16 3, i16 11427, i16 49, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 11491, i16 -27293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1024 }, %struct.usb_device_id { i16 3, i16 16700, i16 -20382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 1026 }, %struct.usb_device_id { i16 3, i16 17046, i16 30064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 8 }, %struct.usb_device_id { i16 3, i16 -32634, i16 -3675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !5086
@usb_amd_resume_quirk_list = internal constant [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6127, i16 24622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1008, i16 11082, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 -16294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i64 2 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !5091
@usb_interface_quirk_list = internal constant [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 1133, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 14, i8 1, i8 0, i8 0, i64 2 }, %struct.usb_device_id zeroinitializer], align 16, !dbg !5094
@quirk_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @quirk_mutex, i64 16), ptr getelementptr (i8, ptr @quirk_mutex, i64 16) } }, align 8, !dbg !5097
@quirk_list = internal global ptr null, align 8, !dbg !5039
@quirk_count = internal global i32 0, align 4, !dbg !5054
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1, !dbg !5049
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !5052
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5056
@quirks_param = internal global [128 x i8] zeroinitializer, align 16, !dbg !5063
@llvm.compiler.used = appending global [2 x ptr] [ptr @__param_quirks, ptr @__UNIQUE_ID_quirks271], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @usb_endpoint_is_ignored(ptr noundef %udev, ptr noundef %intf, ptr noundef %epd) #0 align 16 !dbg !5111 {
entry:
  %retval = alloca i1, align 1
  %udev.addr = alloca ptr, align 8
  %intf.addr = alloca ptr, align 8
  %epd.addr = alloca ptr, align 8
  %id = alloca ptr, align 8
  %address = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5116, metadata !DIExpression()), !dbg !5122
  store ptr %intf, ptr %intf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %intf.addr, metadata !5117, metadata !DIExpression()), !dbg !5123
  store ptr %epd, ptr %epd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %epd.addr, metadata !5118, metadata !DIExpression()), !dbg !5124
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #14, !dbg !5125
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5119, metadata !DIExpression()), !dbg !5126
  call void @llvm.lifetime.start.p0(i64 4, ptr %address) #14, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %address, metadata !5121, metadata !DIExpression()), !dbg !5128
  store ptr @usb_endpoint_ignore, ptr %id, align 8, !dbg !5129
  br label %for.cond, !dbg !5131

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %id, align 8, !dbg !5132
  %match_flags = getelementptr inbounds %struct.usb_device_id, ptr %0, i32 0, i32 0, !dbg !5134
  %1 = load i16, ptr %match_flags, align 8, !dbg !5134
  %tobool = icmp ne i16 %1, 0, !dbg !5135
  br i1 %tobool, label %for.body, label %for.end, !dbg !5135

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %udev.addr, align 8, !dbg !5136
  %3 = load ptr, ptr %id, align 8, !dbg !5139
  %call = call i32 @usb_match_device(ptr noundef %2, ptr noundef %3) #15, !dbg !5140
  %tobool1 = icmp ne i32 %call, 0, !dbg !5140
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5141

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5142

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %udev.addr, align 8, !dbg !5143
  %5 = load ptr, ptr %intf.addr, align 8, !dbg !5145
  %6 = load ptr, ptr %id, align 8, !dbg !5146
  %call2 = call i32 @usb_match_one_id_intf(ptr noundef %4, ptr noundef %5, ptr noundef %6) #15, !dbg !5147
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5147
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5148

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !5149

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %id, align 8, !dbg !5150
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %7, i32 0, i32 12, !dbg !5151
  %8 = load i64, ptr %driver_info, align 8, !dbg !5151
  %conv = trunc i64 %8 to i32, !dbg !5150
  store i32 %conv, ptr %address, align 4, !dbg !5152
  %9 = load i32, ptr %address, align 4, !dbg !5153
  %10 = load ptr, ptr %epd.addr, align 8, !dbg !5155
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2, !dbg !5156
  %11 = load i8, ptr %bEndpointAddress, align 1, !dbg !5156
  %conv6 = zext i8 %11 to i32, !dbg !5155
  %cmp = icmp eq i32 %9, %conv6, !dbg !5157
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !5158

if.then8:                                         ; preds = %if.end5
  store i1 true, ptr %retval, align 1, !dbg !5159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5159

if.end9:                                          ; preds = %if.end5
  br label %for.inc, !dbg !5160

for.inc:                                          ; preds = %if.end9, %if.then4, %if.then
  %12 = load ptr, ptr %id, align 8, !dbg !5161
  %incdec.ptr = getelementptr %struct.usb_device_id, ptr %12, i32 1, !dbg !5161
  store ptr %incdec.ptr, ptr %id, align 8, !dbg !5161
  br label %for.cond, !dbg !5162, !llvm.loop !5163

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !5167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5167

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %address) #14, !dbg !5168
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #14, !dbg !5168
  %13 = load i1, ptr %retval, align 1, !dbg !5168
  ret i1 %13, !dbg !5168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5169 dso_local i32 @usb_match_device(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5173 dso_local i32 @usb_match_one_id_intf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_detect_quirks(ptr noundef %udev) #0 align 16 !dbg !5176 {
entry:
  %udev.addr = alloca ptr, align 8
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5180, metadata !DIExpression()), !dbg !5181
  %0 = load ptr, ptr %udev.addr, align 8, !dbg !5182
  %call = call i32 @usb_detect_static_quirks(ptr noundef %0, ptr noundef @usb_quirk_list) #15, !dbg !5183
  %1 = load ptr, ptr %udev.addr, align 8, !dbg !5184
  %quirks = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 38, !dbg !5185
  store i32 %call, ptr %quirks, align 4, !dbg !5186
  %2 = load ptr, ptr %udev.addr, align 8, !dbg !5187
  %call1 = call i32 @usb_amd_resume_quirk(ptr noundef %2) #15, !dbg !5189
  %tobool = icmp ne i32 %call1, 0, !dbg !5189
  br i1 %tobool, label %if.then, label %if.end, !dbg !5190

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %udev.addr, align 8, !dbg !5191
  %call2 = call i32 @usb_detect_static_quirks(ptr noundef %3, ptr noundef @usb_amd_resume_quirk_list) #15, !dbg !5192
  %4 = load ptr, ptr %udev.addr, align 8, !dbg !5193
  %quirks3 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 38, !dbg !5194
  %5 = load i32, ptr %quirks3, align 4, !dbg !5195
  %or = or i32 %5, %call2, !dbg !5195
  store i32 %or, ptr %quirks3, align 4, !dbg !5195
  br label %if.end, !dbg !5193

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %udev.addr, align 8, !dbg !5196
  %call4 = call i32 @usb_detect_dynamic_quirks(ptr noundef %6) #15, !dbg !5197
  %7 = load ptr, ptr %udev.addr, align 8, !dbg !5198
  %quirks5 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 38, !dbg !5199
  %8 = load i32, ptr %quirks5, align 4, !dbg !5200
  %xor = xor i32 %8, %call4, !dbg !5200
  store i32 %xor, ptr %quirks5, align 4, !dbg !5200
  %9 = load ptr, ptr %udev.addr, align 8, !dbg !5201
  %quirks6 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 38, !dbg !5203
  %10 = load i32, ptr %quirks6, align 4, !dbg !5203
  %tobool7 = icmp ne i32 %10, 0, !dbg !5201
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5204

if.then8:                                         ; preds = %if.end
  br label %if.end9, !dbg !5205

if.end9:                                          ; preds = %if.then8, %if.end
  %11 = load ptr, ptr %udev.addr, align 8, !dbg !5206
  %quirks10 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 38, !dbg !5208
  %12 = load i32, ptr %quirks10, align 4, !dbg !5208
  %conv = zext i32 %12 to i64, !dbg !5206
  %and = and i64 %conv, 16, !dbg !5209
  %tobool11 = icmp ne i64 %and, 0, !dbg !5209
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5210

if.then12:                                        ; preds = %if.end9
  %13 = load ptr, ptr %udev.addr, align 8, !dbg !5211
  %persist_enabled = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 29, !dbg !5212
  %bf.load = load i16, ptr %persist_enabled, align 1, !dbg !5213
  %bf.clear = and i16 %bf.load, -3, !dbg !5213
  %bf.set = or i16 %bf.clear, 2, !dbg !5213
  store i16 %bf.set, ptr %persist_enabled, align 1, !dbg !5213
  br label %if.end13, !dbg !5211

if.end13:                                         ; preds = %if.then12, %if.end9
  ret void, !dbg !5214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_detect_static_quirks(ptr noundef %udev, ptr noundef %id) #0 align 16 !dbg !5215 {
entry:
  %udev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %quirks = alloca i32, align 4
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5219, metadata !DIExpression()), !dbg !5222
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5220, metadata !DIExpression()), !dbg !5223
  call void @llvm.lifetime.start.p0(i64 4, ptr %quirks) #14, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %quirks, metadata !5221, metadata !DIExpression()), !dbg !5225
  store i32 0, ptr %quirks, align 4, !dbg !5225
  br label %for.cond, !dbg !5226

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %id.addr, align 8, !dbg !5227
  %match_flags = getelementptr inbounds %struct.usb_device_id, ptr %0, i32 0, i32 0, !dbg !5230
  %1 = load i16, ptr %match_flags, align 8, !dbg !5230
  %tobool = icmp ne i16 %1, 0, !dbg !5231
  br i1 %tobool, label %for.body, label %for.end, !dbg !5231

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %udev.addr, align 8, !dbg !5232
  %3 = load ptr, ptr %id.addr, align 8, !dbg !5235
  %call = call i32 @usb_match_device(ptr noundef %2, ptr noundef %3) #15, !dbg !5236
  %tobool1 = icmp ne i32 %call, 0, !dbg !5236
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5237

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5238

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %id.addr, align 8, !dbg !5239
  %match_flags2 = getelementptr inbounds %struct.usb_device_id, ptr %4, i32 0, i32 0, !dbg !5241
  %5 = load i16, ptr %match_flags2, align 8, !dbg !5241
  %conv = zext i16 %5 to i32, !dbg !5239
  %and = and i32 %conv, 896, !dbg !5242
  %tobool3 = icmp ne i32 %and, 0, !dbg !5242
  br i1 %tobool3, label %land.lhs.true, label %if.end6, !dbg !5243

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %udev.addr, align 8, !dbg !5244
  %7 = load ptr, ptr %id.addr, align 8, !dbg !5245
  %call4 = call zeroext i1 @usb_match_any_interface(ptr noundef %6, ptr noundef %7) #15, !dbg !5246
  br i1 %call4, label %if.end6, label %if.then5, !dbg !5247

if.then5:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !5248

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %id.addr, align 8, !dbg !5249
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %8, i32 0, i32 12, !dbg !5250
  %9 = load i64, ptr %driver_info, align 8, !dbg !5250
  %conv7 = trunc i64 %9 to i32, !dbg !5251
  %10 = load i32, ptr %quirks, align 4, !dbg !5252
  %or = or i32 %10, %conv7, !dbg !5252
  store i32 %or, ptr %quirks, align 4, !dbg !5252
  br label %for.inc, !dbg !5253

for.inc:                                          ; preds = %if.end6, %if.then5, %if.then
  %11 = load ptr, ptr %id.addr, align 8, !dbg !5254
  %incdec.ptr = getelementptr %struct.usb_device_id, ptr %11, i32 1, !dbg !5254
  store ptr %incdec.ptr, ptr %id.addr, align 8, !dbg !5254
  br label %for.cond, !dbg !5255, !llvm.loop !5256

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %quirks, align 4, !dbg !5258
  call void @llvm.lifetime.end.p0(i64 4, ptr %quirks) #14, !dbg !5259
  ret i32 %12, !dbg !5260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_amd_resume_quirk(ptr noundef %udev) #0 align 16 !dbg !5261 {
entry:
  %retval = alloca i32, align 4
  %udev.addr = alloca ptr, align 8
  %hcd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5265, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 8, ptr %hcd) #14, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %hcd, metadata !5266, metadata !DIExpression()), !dbg !5269
  %0 = load ptr, ptr %udev.addr, align 8, !dbg !5270
  %bus = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 14, !dbg !5271
  %1 = load ptr, ptr %bus, align 8, !dbg !5271
  %call = call ptr @bus_to_hcd(ptr noundef %1) #15, !dbg !5272
  store ptr %call, ptr %hcd, align 8, !dbg !5273
  %2 = load ptr, ptr %udev.addr, align 8, !dbg !5274
  %level = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 27, !dbg !5276
  %3 = load i8, ptr %level, align 1, !dbg !5276
  %conv = zext i8 %3 to i32, !dbg !5274
  %cmp = icmp eq i32 %conv, 1, !dbg !5277
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5278

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %hcd, align 8, !dbg !5279
  %amd_resume_bug = getelementptr inbounds %struct.usb_hcd, ptr %4, i32 0, i32 14, !dbg !5280
  %bf.load = load i16, ptr %amd_resume_bug, align 4, !dbg !5280
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !5280
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5280
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5280
  %cmp2 = icmp eq i32 %bf.cast, 1, !dbg !5281
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5282

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5283

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5284

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hcd) #14, !dbg !5285
  %5 = load i32, ptr %retval, align 4, !dbg !5285
  ret i32 %5, !dbg !5285
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @usb_detect_dynamic_quirks(ptr noundef %udev) #0 align 16 !dbg !5286 {
entry:
  %udev.addr = alloca ptr, align 8
  %vid = alloca i16, align 2
  %pid = alloca i16, align 2
  %i = alloca i32, align 4
  %flags = alloca i32, align 4
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5290, metadata !DIExpression()), !dbg !5295
  call void @llvm.lifetime.start.p0(i64 2, ptr %vid) #14, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %vid, metadata !5291, metadata !DIExpression()), !dbg !5297
  %0 = load ptr, ptr %udev.addr, align 8, !dbg !5298
  %descriptor = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 17, !dbg !5298
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, ptr %descriptor, i32 0, i32 7, !dbg !5298
  %1 = load i16, ptr %idVendor, align 8, !dbg !5298
  store i16 %1, ptr %vid, align 2, !dbg !5297
  call void @llvm.lifetime.start.p0(i64 2, ptr %pid) #14, !dbg !5299
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !5292, metadata !DIExpression()), !dbg !5300
  %2 = load ptr, ptr %udev.addr, align 8, !dbg !5301
  %descriptor1 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 17, !dbg !5301
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, ptr %descriptor1, i32 0, i32 8, !dbg !5301
  %3 = load i16, ptr %idProduct, align 2, !dbg !5301
  store i16 %3, ptr %pid, align 2, !dbg !5300
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5293, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5294, metadata !DIExpression()), !dbg !5304
  store i32 0, ptr %flags, align 4, !dbg !5304
  call void @mutex_lock(ptr noundef @quirk_mutex) #15, !dbg !5305
  store i32 0, ptr %i, align 4, !dbg !5306
  br label %for.cond, !dbg !5308

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !5309
  %5 = load i32, ptr @quirk_count, align 4, !dbg !5311
  %cmp = icmp ult i32 %4, %5, !dbg !5312
  br i1 %cmp, label %for.body, label %for.end, !dbg !5313

for.body:                                         ; preds = %for.cond
  %6 = load i16, ptr %vid, align 2, !dbg !5314
  %conv = zext i16 %6 to i32, !dbg !5314
  %7 = load ptr, ptr @quirk_list, align 8, !dbg !5317
  %8 = load i32, ptr %i, align 4, !dbg !5318
  %idxprom = sext i32 %8 to i64, !dbg !5317
  %arrayidx = getelementptr %struct.quirk_entry, ptr %7, i64 %idxprom, !dbg !5317
  %vid2 = getelementptr inbounds %struct.quirk_entry, ptr %arrayidx, i32 0, i32 0, !dbg !5319
  %9 = load i16, ptr %vid2, align 4, !dbg !5319
  %conv3 = zext i16 %9 to i32, !dbg !5317
  %cmp4 = icmp eq i32 %conv, %conv3, !dbg !5320
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !5321

land.lhs.true:                                    ; preds = %for.body
  %10 = load i16, ptr %pid, align 2, !dbg !5322
  %conv6 = zext i16 %10 to i32, !dbg !5322
  %11 = load ptr, ptr @quirk_list, align 8, !dbg !5323
  %12 = load i32, ptr %i, align 4, !dbg !5324
  %idxprom7 = sext i32 %12 to i64, !dbg !5323
  %arrayidx8 = getelementptr %struct.quirk_entry, ptr %11, i64 %idxprom7, !dbg !5323
  %pid9 = getelementptr inbounds %struct.quirk_entry, ptr %arrayidx8, i32 0, i32 1, !dbg !5325
  %13 = load i16, ptr %pid9, align 2, !dbg !5325
  %conv10 = zext i16 %13 to i32, !dbg !5323
  %cmp11 = icmp eq i32 %conv6, %conv10, !dbg !5326
  br i1 %cmp11, label %if.then, label %if.end, !dbg !5327

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr @quirk_list, align 8, !dbg !5328
  %15 = load i32, ptr %i, align 4, !dbg !5330
  %idxprom13 = sext i32 %15 to i64, !dbg !5328
  %arrayidx14 = getelementptr %struct.quirk_entry, ptr %14, i64 %idxprom13, !dbg !5328
  %flags15 = getelementptr inbounds %struct.quirk_entry, ptr %arrayidx14, i32 0, i32 2, !dbg !5331
  %16 = load i32, ptr %flags15, align 4, !dbg !5331
  store i32 %16, ptr %flags, align 4, !dbg !5332
  br label %for.end, !dbg !5333

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5334

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !dbg !5335
  %inc = add i32 %17, 1, !dbg !5335
  store i32 %inc, ptr %i, align 4, !dbg !5335
  br label %for.cond, !dbg !5336, !llvm.loop !5337

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @quirk_mutex) #15, !dbg !5339
  %18 = load i32, ptr %flags, align 4, !dbg !5340
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !5341
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5341
  call void @llvm.lifetime.end.p0(i64 2, ptr %pid) #14, !dbg !5341
  call void @llvm.lifetime.end.p0(i64 2, ptr %vid) #14, !dbg !5341
  ret i32 %18, !dbg !5342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_detect_interface_quirks(ptr noundef %udev) #0 align 16 !dbg !5343 {
entry:
  %udev.addr = alloca ptr, align 8
  %quirks = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5345, metadata !DIExpression()), !dbg !5347
  call void @llvm.lifetime.start.p0(i64 4, ptr %quirks) #14, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %quirks, metadata !5346, metadata !DIExpression()), !dbg !5349
  %0 = load ptr, ptr %udev.addr, align 8, !dbg !5350
  %call = call i32 @usb_detect_static_quirks(ptr noundef %0, ptr noundef @usb_interface_quirk_list) #15, !dbg !5351
  store i32 %call, ptr %quirks, align 4, !dbg !5352
  %1 = load i32, ptr %quirks, align 4, !dbg !5353
  %cmp = icmp eq i32 %1, 0, !dbg !5355
  br i1 %cmp, label %if.then, label %if.end, !dbg !5356

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5357

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %quirks, align 4, !dbg !5358
  %3 = load ptr, ptr %udev.addr, align 8, !dbg !5359
  %quirks1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 38, !dbg !5360
  %4 = load i32, ptr %quirks1, align 4, !dbg !5361
  %or = or i32 %4, %2, !dbg !5361
  store i32 %or, ptr %quirks1, align 4, !dbg !5361
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5362
  br label %cleanup, !dbg !5362

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %quirks) #14, !dbg !5362
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5362

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @usb_release_quirk_list() #0 align 16 !dbg !5363 {
entry:
  call void @mutex_lock(ptr noundef @quirk_mutex) #15, !dbg !5364
  %0 = load ptr, ptr @quirk_list, align 8, !dbg !5365
  call void @kfree(ptr noundef %0) #15, !dbg !5366
  store ptr null, ptr @quirk_list, align 8, !dbg !5367
  call void @mutex_unlock(ptr noundef @quirk_mutex) #15, !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5370 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5373 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5376 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @quirks_param_set(ptr noundef %value, ptr noundef %kp) #0 align 16 !dbg !5377 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %val = alloca ptr, align 8
  %p = alloca ptr, align 8
  %field = alloca ptr, align 8
  %vid = alloca i16, align 2
  %pid = alloca i16, align 2
  %flags = alloca i32, align 4
  %i = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.quirk_entry, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5379, metadata !DIExpression()), !dbg !5390
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5380, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5381, metadata !DIExpression()), !dbg !5393
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5382, metadata !DIExpression()), !dbg !5394
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #14, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %field, metadata !5383, metadata !DIExpression()), !dbg !5395
  call void @llvm.lifetime.start.p0(i64 2, ptr %vid) #14, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %vid, metadata !5384, metadata !DIExpression()), !dbg !5397
  call void @llvm.lifetime.start.p0(i64 2, ptr %pid) #14, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %pid, metadata !5385, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #14, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5386, metadata !DIExpression()), !dbg !5400
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #14, !dbg !5401
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5387, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5388, metadata !DIExpression()), !dbg !5404
  %0 = load ptr, ptr %value.addr, align 8, !dbg !5405
  %call = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #15, !dbg !5406
  store ptr %call, ptr %val, align 8, !dbg !5407
  %1 = load ptr, ptr %val, align 8, !dbg !5408
  %tobool = icmp ne ptr %1, null, !dbg !5408
  br i1 %tobool, label %if.end, label %if.then, !dbg !5410

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5411

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %val, align 8, !dbg !5412
  %3 = load ptr, ptr %kp.addr, align 8, !dbg !5413
  %call1 = call i32 @param_set_copystring(ptr noundef %2, ptr noundef %3) #15, !dbg !5414
  store i32 %call1, ptr %err, align 4, !dbg !5415
  %4 = load i32, ptr %err, align 4, !dbg !5416
  %tobool2 = icmp ne i32 %4, 0, !dbg !5416
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5418

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %val, align 8, !dbg !5419
  call void @kfree(ptr noundef %5) #15, !dbg !5421
  %6 = load i32, ptr %err, align 4, !dbg !5422
  store i32 %6, ptr %retval, align 4, !dbg !5423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5423

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @quirk_mutex) #15, !dbg !5424
  %7 = load ptr, ptr %val, align 8, !dbg !5425
  %8 = load i8, ptr %7, align 1, !dbg !5427
  %tobool5 = icmp ne i8 %8, 0, !dbg !5427
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5428

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr @quirk_count, align 4, !dbg !5429
  %9 = load ptr, ptr @quirk_list, align 8, !dbg !5431
  call void @kfree(ptr noundef %9) #15, !dbg !5432
  store ptr null, ptr @quirk_list, align 8, !dbg !5433
  br label %unlock, !dbg !5434

if.end7:                                          ; preds = %if.end4
  store i32 1, ptr @quirk_count, align 4, !dbg !5435
  store i64 0, ptr %i, align 8, !dbg !5437
  br label %for.cond, !dbg !5438

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load ptr, ptr %val, align 8, !dbg !5439
  %11 = load i64, ptr %i, align 8, !dbg !5441
  %arrayidx = getelementptr i8, ptr %10, i64 %11, !dbg !5439
  %12 = load i8, ptr %arrayidx, align 1, !dbg !5439
  %tobool8 = icmp ne i8 %12, 0, !dbg !5442
  br i1 %tobool8, label %for.body, label %for.end, !dbg !5442

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %val, align 8, !dbg !5443
  %14 = load i64, ptr %i, align 8, !dbg !5445
  %arrayidx9 = getelementptr i8, ptr %13, i64 %14, !dbg !5443
  %15 = load i8, ptr %arrayidx9, align 1, !dbg !5443
  %conv = zext i8 %15 to i32, !dbg !5443
  %cmp = icmp eq i32 %conv, 44, !dbg !5446
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5447

if.then11:                                        ; preds = %for.body
  %16 = load i32, ptr @quirk_count, align 4, !dbg !5448
  %inc = add i32 %16, 1, !dbg !5448
  store i32 %inc, ptr @quirk_count, align 4, !dbg !5448
  br label %if.end12, !dbg !5449

if.end12:                                         ; preds = %if.then11, %for.body
  br label %for.inc, !dbg !5450

for.inc:                                          ; preds = %if.end12
  %17 = load i64, ptr %i, align 8, !dbg !5451
  %inc13 = add i64 %17, 1, !dbg !5451
  store i64 %inc13, ptr %i, align 8, !dbg !5451
  br label %for.cond, !dbg !5452, !llvm.loop !5453

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr @quirk_list, align 8, !dbg !5455
  %tobool14 = icmp ne ptr %18, null, !dbg !5455
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5457

if.then15:                                        ; preds = %for.end
  %19 = load ptr, ptr @quirk_list, align 8, !dbg !5458
  call void @kfree(ptr noundef %19) #15, !dbg !5460
  store ptr null, ptr @quirk_list, align 8, !dbg !5461
  br label %if.end16, !dbg !5462

if.end16:                                         ; preds = %if.then15, %for.end
  %20 = load i32, ptr @quirk_count, align 4, !dbg !5463
  %conv17 = zext i32 %20 to i64, !dbg !5463
  %call18 = call noalias ptr @kcalloc(i64 noundef %conv17, i64 noundef 8, i32 noundef 3264) #16, !dbg !5464
  store ptr %call18, ptr @quirk_list, align 8, !dbg !5465
  %21 = load ptr, ptr @quirk_list, align 8, !dbg !5466
  %tobool19 = icmp ne ptr %21, null, !dbg !5466
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !5468

if.then20:                                        ; preds = %if.end16
  store i32 0, ptr @quirk_count, align 4, !dbg !5469
  call void @mutex_unlock(ptr noundef @quirk_mutex) #15, !dbg !5471
  %22 = load ptr, ptr %val, align 8, !dbg !5472
  call void @kfree(ptr noundef %22) #15, !dbg !5473
  store i32 -12, ptr %retval, align 4, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end21:                                         ; preds = %if.end16
  store i64 0, ptr %i, align 8, !dbg !5475
  %23 = load ptr, ptr %val, align 8, !dbg !5477
  store ptr %23, ptr %p, align 8, !dbg !5478
  br label %for.cond22, !dbg !5479

for.cond22:                                       ; preds = %for.end115, %if.end21
  %24 = load ptr, ptr %p, align 8, !dbg !5480
  %tobool23 = icmp ne ptr %24, null, !dbg !5480
  br i1 %tobool23, label %land.rhs, label %land.end, !dbg !5482

land.rhs:                                         ; preds = %for.cond22
  %25 = load ptr, ptr %p, align 8, !dbg !5483
  %26 = load i8, ptr %25, align 1, !dbg !5484
  %conv24 = zext i8 %26 to i32, !dbg !5484
  %tobool25 = icmp ne i32 %conv24, 0, !dbg !5482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond22
  %27 = phi i1 [ false, %for.cond22 ], [ %tobool25, %land.rhs ], !dbg !5485
  br i1 %27, label %for.body26, label %for.end121, !dbg !5486

for.body26:                                       ; preds = %land.end
  %call27 = call ptr @strsep(ptr noundef %p, ptr noundef @.str) #15, !dbg !5487
  store ptr %call27, ptr %field, align 8, !dbg !5489
  %28 = load ptr, ptr %field, align 8, !dbg !5490
  %tobool28 = icmp ne ptr %28, null, !dbg !5490
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5492

if.then29:                                        ; preds = %for.body26
  br label %for.end121, !dbg !5493

if.end30:                                         ; preds = %for.body26
  %29 = load ptr, ptr %field, align 8, !dbg !5494
  %call31 = call i32 @kstrtou16(ptr noundef %29, i32 noundef 16, ptr noundef %vid) #15, !dbg !5496
  %tobool32 = icmp ne i32 %call31, 0, !dbg !5496
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5497

if.then33:                                        ; preds = %if.end30
  br label %for.end121, !dbg !5498

if.end34:                                         ; preds = %if.end30
  %call35 = call ptr @strsep(ptr noundef %p, ptr noundef @.str) #15, !dbg !5499
  store ptr %call35, ptr %field, align 8, !dbg !5500
  %30 = load ptr, ptr %field, align 8, !dbg !5501
  %tobool36 = icmp ne ptr %30, null, !dbg !5501
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5503

if.then37:                                        ; preds = %if.end34
  br label %for.end121, !dbg !5504

if.end38:                                         ; preds = %if.end34
  %31 = load ptr, ptr %field, align 8, !dbg !5505
  %call39 = call i32 @kstrtou16(ptr noundef %31, i32 noundef 16, ptr noundef %pid) #15, !dbg !5507
  %tobool40 = icmp ne i32 %call39, 0, !dbg !5507
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5508

if.then41:                                        ; preds = %if.end38
  br label %for.end121, !dbg !5509

if.end42:                                         ; preds = %if.end38
  %call43 = call ptr @strsep(ptr noundef %p, ptr noundef @.str.1) #15, !dbg !5510
  store ptr %call43, ptr %field, align 8, !dbg !5511
  %32 = load ptr, ptr %field, align 8, !dbg !5512
  %tobool44 = icmp ne ptr %32, null, !dbg !5512
  br i1 %tobool44, label %lor.lhs.false, label %if.then46, !dbg !5514

lor.lhs.false:                                    ; preds = %if.end42
  %33 = load ptr, ptr %field, align 8, !dbg !5515
  %34 = load i8, ptr %33, align 1, !dbg !5516
  %tobool45 = icmp ne i8 %34, 0, !dbg !5516
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !5517

if.then46:                                        ; preds = %lor.lhs.false, %if.end42
  br label %for.end121, !dbg !5518

if.end47:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %flags, align 4, !dbg !5519
  br label %for.cond48, !dbg !5521

for.cond48:                                       ; preds = %for.inc114, %if.end47
  %35 = load ptr, ptr %field, align 8, !dbg !5522
  %36 = load i8, ptr %35, align 1, !dbg !5524
  %tobool49 = icmp ne i8 %36, 0, !dbg !5525
  br i1 %tobool49, label %for.body50, label %for.end115, !dbg !5525

for.body50:                                       ; preds = %for.cond48
  %37 = load ptr, ptr %field, align 8, !dbg !5526
  %38 = load i8, ptr %37, align 1, !dbg !5528
  %conv51 = zext i8 %38 to i32, !dbg !5528
  switch i32 %conv51, label %sw.epilog [
    i32 97, label %sw.bb
    i32 98, label %sw.bb54
    i32 99, label %sw.bb58
    i32 100, label %sw.bb62
    i32 101, label %sw.bb66
    i32 102, label %sw.bb70
    i32 103, label %sw.bb74
    i32 104, label %sw.bb78
    i32 105, label %sw.bb82
    i32 106, label %sw.bb86
    i32 107, label %sw.bb90
    i32 108, label %sw.bb94
    i32 109, label %sw.bb98
    i32 110, label %sw.bb102
    i32 111, label %sw.bb106
    i32 112, label %sw.bb110
  ], !dbg !5529

sw.bb:                                            ; preds = %for.body50
  %39 = load i32, ptr %flags, align 4, !dbg !5530
  %conv52 = zext i32 %39 to i64, !dbg !5530
  %or = or i64 %conv52, 1, !dbg !5530
  %conv53 = trunc i64 %or to i32, !dbg !5530
  store i32 %conv53, ptr %flags, align 4, !dbg !5530
  br label %sw.epilog, !dbg !5532

sw.bb54:                                          ; preds = %for.body50
  %40 = load i32, ptr %flags, align 4, !dbg !5533
  %conv55 = zext i32 %40 to i64, !dbg !5533
  %or56 = or i64 %conv55, 2, !dbg !5533
  %conv57 = trunc i64 %or56 to i32, !dbg !5533
  store i32 %conv57, ptr %flags, align 4, !dbg !5533
  br label %sw.epilog, !dbg !5534

sw.bb58:                                          ; preds = %for.body50
  %41 = load i32, ptr %flags, align 4, !dbg !5535
  %conv59 = zext i32 %41 to i64, !dbg !5535
  %or60 = or i64 %conv59, 4, !dbg !5535
  %conv61 = trunc i64 %or60 to i32, !dbg !5535
  store i32 %conv61, ptr %flags, align 4, !dbg !5535
  br label %sw.epilog, !dbg !5536

sw.bb62:                                          ; preds = %for.body50
  %42 = load i32, ptr %flags, align 4, !dbg !5537
  %conv63 = zext i32 %42 to i64, !dbg !5537
  %or64 = or i64 %conv63, 8, !dbg !5537
  %conv65 = trunc i64 %or64 to i32, !dbg !5537
  store i32 %conv65, ptr %flags, align 4, !dbg !5537
  br label %sw.epilog, !dbg !5538

sw.bb66:                                          ; preds = %for.body50
  %43 = load i32, ptr %flags, align 4, !dbg !5539
  %conv67 = zext i32 %43 to i64, !dbg !5539
  %or68 = or i64 %conv67, 16, !dbg !5539
  %conv69 = trunc i64 %or68 to i32, !dbg !5539
  store i32 %conv69, ptr %flags, align 4, !dbg !5539
  br label %sw.epilog, !dbg !5540

sw.bb70:                                          ; preds = %for.body50
  %44 = load i32, ptr %flags, align 4, !dbg !5541
  %conv71 = zext i32 %44 to i64, !dbg !5541
  %or72 = or i64 %conv71, 32, !dbg !5541
  %conv73 = trunc i64 %or72 to i32, !dbg !5541
  store i32 %conv73, ptr %flags, align 4, !dbg !5541
  br label %sw.epilog, !dbg !5542

sw.bb74:                                          ; preds = %for.body50
  %45 = load i32, ptr %flags, align 4, !dbg !5543
  %conv75 = zext i32 %45 to i64, !dbg !5543
  %or76 = or i64 %conv75, 64, !dbg !5543
  %conv77 = trunc i64 %or76 to i32, !dbg !5543
  store i32 %conv77, ptr %flags, align 4, !dbg !5543
  br label %sw.epilog, !dbg !5544

sw.bb78:                                          ; preds = %for.body50
  %46 = load i32, ptr %flags, align 4, !dbg !5545
  %conv79 = zext i32 %46 to i64, !dbg !5545
  %or80 = or i64 %conv79, 128, !dbg !5545
  %conv81 = trunc i64 %or80 to i32, !dbg !5545
  store i32 %conv81, ptr %flags, align 4, !dbg !5545
  br label %sw.epilog, !dbg !5546

sw.bb82:                                          ; preds = %for.body50
  %47 = load i32, ptr %flags, align 4, !dbg !5547
  %conv83 = zext i32 %47 to i64, !dbg !5547
  %or84 = or i64 %conv83, 256, !dbg !5547
  %conv85 = trunc i64 %or84 to i32, !dbg !5547
  store i32 %conv85, ptr %flags, align 4, !dbg !5547
  br label %sw.epilog, !dbg !5548

sw.bb86:                                          ; preds = %for.body50
  %48 = load i32, ptr %flags, align 4, !dbg !5549
  %conv87 = zext i32 %48 to i64, !dbg !5549
  %or88 = or i64 %conv87, 512, !dbg !5549
  %conv89 = trunc i64 %or88 to i32, !dbg !5549
  store i32 %conv89, ptr %flags, align 4, !dbg !5549
  br label %sw.epilog, !dbg !5550

sw.bb90:                                          ; preds = %for.body50
  %49 = load i32, ptr %flags, align 4, !dbg !5551
  %conv91 = zext i32 %49 to i64, !dbg !5551
  %or92 = or i64 %conv91, 1024, !dbg !5551
  %conv93 = trunc i64 %or92 to i32, !dbg !5551
  store i32 %conv93, ptr %flags, align 4, !dbg !5551
  br label %sw.epilog, !dbg !5552

sw.bb94:                                          ; preds = %for.body50
  %50 = load i32, ptr %flags, align 4, !dbg !5553
  %conv95 = zext i32 %50 to i64, !dbg !5553
  %or96 = or i64 %conv95, 2048, !dbg !5553
  %conv97 = trunc i64 %or96 to i32, !dbg !5553
  store i32 %conv97, ptr %flags, align 4, !dbg !5553
  br label %sw.epilog, !dbg !5554

sw.bb98:                                          ; preds = %for.body50
  %51 = load i32, ptr %flags, align 4, !dbg !5555
  %conv99 = zext i32 %51 to i64, !dbg !5555
  %or100 = or i64 %conv99, 4096, !dbg !5555
  %conv101 = trunc i64 %or100 to i32, !dbg !5555
  store i32 %conv101, ptr %flags, align 4, !dbg !5555
  br label %sw.epilog, !dbg !5556

sw.bb102:                                         ; preds = %for.body50
  %52 = load i32, ptr %flags, align 4, !dbg !5557
  %conv103 = zext i32 %52 to i64, !dbg !5557
  %or104 = or i64 %conv103, 8192, !dbg !5557
  %conv105 = trunc i64 %or104 to i32, !dbg !5557
  store i32 %conv105, ptr %flags, align 4, !dbg !5557
  br label %sw.epilog, !dbg !5558

sw.bb106:                                         ; preds = %for.body50
  %53 = load i32, ptr %flags, align 4, !dbg !5559
  %conv107 = zext i32 %53 to i64, !dbg !5559
  %or108 = or i64 %conv107, 16384, !dbg !5559
  %conv109 = trunc i64 %or108 to i32, !dbg !5559
  store i32 %conv109, ptr %flags, align 4, !dbg !5559
  br label %sw.epilog, !dbg !5560

sw.bb110:                                         ; preds = %for.body50
  %54 = load i32, ptr %flags, align 4, !dbg !5561
  %conv111 = zext i32 %54 to i64, !dbg !5561
  %or112 = or i64 %conv111, 65536, !dbg !5561
  %conv113 = trunc i64 %or112 to i32, !dbg !5561
  store i32 %conv113, ptr %flags, align 4, !dbg !5561
  br label %sw.epilog, !dbg !5562

sw.epilog:                                        ; preds = %for.body50, %sw.bb110, %sw.bb106, %sw.bb102, %sw.bb98, %sw.bb94, %sw.bb90, %sw.bb86, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70, %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb
  br label %for.inc114, !dbg !5563

for.inc114:                                       ; preds = %sw.epilog
  %55 = load ptr, ptr %field, align 8, !dbg !5564
  %incdec.ptr = getelementptr i8, ptr %55, i32 1, !dbg !5564
  store ptr %incdec.ptr, ptr %field, align 8, !dbg !5564
  br label %for.cond48, !dbg !5565, !llvm.loop !5566

for.end115:                                       ; preds = %for.cond48
  %56 = load ptr, ptr @quirk_list, align 8, !dbg !5568
  %57 = load i64, ptr %i, align 8, !dbg !5569
  %inc116 = add i64 %57, 1, !dbg !5569
  store i64 %inc116, ptr %i, align 8, !dbg !5569
  %arrayidx117 = getelementptr %struct.quirk_entry, ptr %56, i64 %57, !dbg !5568
  %vid118 = getelementptr inbounds %struct.quirk_entry, ptr %.compoundliteral, i32 0, i32 0, !dbg !5570
  %58 = load i16, ptr %vid, align 2, !dbg !5571
  store i16 %58, ptr %vid118, align 4, !dbg !5570
  %pid119 = getelementptr inbounds %struct.quirk_entry, ptr %.compoundliteral, i32 0, i32 1, !dbg !5570
  %59 = load i16, ptr %pid, align 2, !dbg !5572
  store i16 %59, ptr %pid119, align 2, !dbg !5570
  %flags120 = getelementptr inbounds %struct.quirk_entry, ptr %.compoundliteral, i32 0, i32 2, !dbg !5570
  %60 = load i32, ptr %flags, align 4, !dbg !5573
  store i32 %60, ptr %flags120, align 4, !dbg !5570
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx117, ptr align 4 %.compoundliteral, i64 8, i1 false), !dbg !5574
  br label %for.cond22, !dbg !5575, !llvm.loop !5576

for.end121:                                       ; preds = %if.then46, %if.then41, %if.then37, %if.then33, %if.then29, %land.end
  %61 = load i64, ptr %i, align 8, !dbg !5578
  %62 = load i32, ptr @quirk_count, align 4, !dbg !5580
  %conv122 = zext i32 %62 to i64, !dbg !5580
  %cmp123 = icmp ult i64 %61, %conv122, !dbg !5581
  br i1 %cmp123, label %if.then125, label %if.end127, !dbg !5582

if.then125:                                       ; preds = %for.end121
  %63 = load i64, ptr %i, align 8, !dbg !5583
  %conv126 = trunc i64 %63 to i32, !dbg !5583
  store i32 %conv126, ptr @quirk_count, align 4, !dbg !5584
  br label %if.end127, !dbg !5585

if.end127:                                        ; preds = %if.then125, %for.end121
  br label %unlock, !dbg !5580

unlock:                                           ; preds = %if.end127, %if.then6
  call void @llvm.dbg.label(metadata !5389), !dbg !5586
  call void @mutex_unlock(ptr noundef @quirk_mutex) #15, !dbg !5587
  %64 = load ptr, ptr %val, align 8, !dbg !5588
  call void @kfree(ptr noundef %64) #15, !dbg !5589
  store i32 0, ptr %retval, align 4, !dbg !5590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5590

cleanup:                                          ; preds = %unlock, %if.then20, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 2, ptr %pid) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 2, ptr %vid) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !5591
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !5591
  %65 = load i32, ptr %retval, align 4, !dbg !5591
  ret i32 %65, !dbg !5591
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5592 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5596 dso_local i32 @param_set_copystring(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5597 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5601, metadata !DIExpression()), !dbg !5604
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5602, metadata !DIExpression()), !dbg !5605
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5603, metadata !DIExpression()), !dbg !5606
  %0 = load i64, ptr %n.addr, align 8, !dbg !5607
  %1 = load i64, ptr %size.addr, align 8, !dbg !5608
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5609
  %or = or i32 %2, 256, !dbg !5610
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #16, !dbg !5611
  ret ptr %call, !dbg !5612
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5613 dso_local ptr @strsep(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5616 dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5621 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5623, metadata !DIExpression()), !dbg !5627
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5624, metadata !DIExpression()), !dbg !5628
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5625, metadata !DIExpression()), !dbg !5629
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5626, metadata !DIExpression()), !dbg !5631
  %0 = load i64, ptr %n.addr, align 8, !dbg !5632
  %1 = load i64, ptr %size.addr, align 8, !dbg !5632
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5632
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5632
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5632
  store i64 %4, ptr %bytes, align 8, !dbg !5632
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !5632
  %lnot = xor i1 %call, true, !dbg !5632
  %lnot1 = xor i1 %lnot, true, !dbg !5632
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5632
  %conv = sext i32 %lnot.ext to i64, !dbg !5632
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5632
  %tobool = icmp ne i64 %expval, 0, !dbg !5632
  br i1 %tobool, label %if.then, label %if.end, !dbg !5634

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5635

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5636
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5638
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5639

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5640
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5641
  br i1 %8, label %if.then2, label %if.end4, !dbg !5642

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5643
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5644
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !5645
  store ptr %call3, ptr %retval, align 8, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5647
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5648
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !5649
  store ptr %call5, ptr %retval, align 8, !dbg !5650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5650

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !5651
  %13 = load ptr, ptr %retval, align 8, !dbg !5651
  ret ptr %13, !dbg !5651
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !5652 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5659, !range !5660, !noundef !587
  %tobool = trunc i8 %0 to i1, !dbg !5659
  %lnot = xor i1 %tobool, true, !dbg !5659
  %lnot1 = xor i1 %lnot, true, !dbg !5659
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5659
  %conv = sext i32 %lnot.ext to i64, !dbg !5659
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5659
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5659
  ret i1 %tobool2, !dbg !5661
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5662 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5666, metadata !DIExpression()), !dbg !5671
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5667, metadata !DIExpression()), !dbg !5672
  %0 = load i64, ptr %size.addr, align 8, !dbg !5673
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5674
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5675

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5676
  %tobool = icmp ne i64 %2, 0, !dbg !5676
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5677

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !5678
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5668, metadata !DIExpression()), !dbg !5679
  %3 = load i64, ptr %size.addr, align 8, !dbg !5680
  %cmp = icmp ugt i64 %3, 8192, !dbg !5682
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5683

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5684
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5685
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5686
  store ptr %call, ptr %retval, align 8, !dbg !5687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5687

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5688
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !5688
  store i32 %call2, ptr %index, align 4, !dbg !5689
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5690
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5691
  %9 = ptrtoint ptr %8 to i64, !dbg !5691
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !5692
  %idxprom = zext i32 %call3 to i64, !dbg !5693
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5693
  %10 = load i32, ptr %index, align 4, !dbg !5694
  %idxprom4 = zext i32 %10 to i64, !dbg !5693
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5693
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5693
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5695
  %13 = load i64, ptr %size.addr, align 8, !dbg !5696
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5697
  store ptr %call6, ptr %retval, align 8, !dbg !5698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5698

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !5699
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5700
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5701
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5702
  store ptr %call8, ptr %retval, align 8, !dbg !5703
  br label %return, !dbg !5703

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5704
  ret ptr %16, !dbg !5704
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5705 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5706 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5707 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5711, metadata !DIExpression()), !dbg !5713
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5712, metadata !DIExpression()), !dbg !5714
  %0 = load i64, ptr %size.addr, align 8, !dbg !5715
  %tobool = icmp ne i64 %0, 0, !dbg !5715
  br i1 %tobool, label %if.end, label %if.then, !dbg !5717

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5718
  br label %return, !dbg !5718

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5719
  %cmp = icmp ule i64 %1, 8, !dbg !5721
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5722

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5723
  br label %return, !dbg !5723

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5724
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5726
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5727

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5728
  %cmp4 = icmp ule i64 %3, 96, !dbg !5729
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5730

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5732
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5734
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5735

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5736
  %cmp9 = icmp ule i64 %5, 192, !dbg !5737
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5738

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5739
  br label %return, !dbg !5739

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5740
  %cmp12 = icmp ule i64 %6, 8, !dbg !5742
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5743

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5744
  br label %return, !dbg !5744

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5745
  %cmp15 = icmp ule i64 %7, 16, !dbg !5747
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5748

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5749
  br label %return, !dbg !5749

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5750
  %cmp18 = icmp ule i64 %8, 32, !dbg !5752
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5753

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5754
  br label %return, !dbg !5754

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5755
  %cmp21 = icmp ule i64 %9, 64, !dbg !5757
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5758

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5759
  br label %return, !dbg !5759

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5760
  %cmp24 = icmp ule i64 %10, 128, !dbg !5762
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5763

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5764
  br label %return, !dbg !5764

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5765
  %cmp27 = icmp ule i64 %11, 256, !dbg !5767
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5768

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5769
  br label %return, !dbg !5769

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5770
  %cmp30 = icmp ule i64 %12, 512, !dbg !5772
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5773

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5774
  br label %return, !dbg !5774

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5775
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5777
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5778

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5779
  br label %return, !dbg !5779

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5780
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5782
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5783

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5784
  br label %return, !dbg !5784

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5785
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5787
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5788

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5790
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5792
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5793

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5794
  br label %return, !dbg !5794

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5795
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5797
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5798

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5799
  br label %return, !dbg !5799

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5800
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5802
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5803

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5804
  br label %return, !dbg !5804

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5805
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5807
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5808

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5809
  br label %return, !dbg !5809

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5810
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5812
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5813

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5814
  br label %return, !dbg !5814

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5815
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5817
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5818

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5819
  br label %return, !dbg !5819

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5820
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5822
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5823

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5824
  br label %return, !dbg !5824

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5825
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5827
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5828

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5829
  br label %return, !dbg !5829

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5830
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5832
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5833

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5834
  br label %return, !dbg !5834

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5835, !range !5660, !noundef !587
  %tobool69 = trunc i8 %25 to i1, !dbg !5835
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5837

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5838

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #19, !dbg !5839, !srcloc !5842
  unreachable, !dbg !5839

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5843

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5844

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5845

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5847

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5845

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !5849, !srcloc !5851
  br label %do.end75, !dbg !5849

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5845

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5853
  ret i32 %26, !dbg !5853
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5854 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !5860 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5864, metadata !DIExpression()), !dbg !5866
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5865, metadata !DIExpression()), !dbg !5867
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5868
  %and = and i32 %0, 17, !dbg !5868
  %cmp = icmp eq i32 %and, 0, !dbg !5868
  %lnot = xor i1 %cmp, true, !dbg !5868
  %lnot1 = xor i1 %lnot, true, !dbg !5868
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5868
  %conv = sext i32 %lnot.ext to i64, !dbg !5868
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5868
  %tobool = icmp ne i64 %expval, 0, !dbg !5868
  br i1 %tobool, label %if.then, label %if.end, !dbg !5870

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5871
  br label %return, !dbg !5871

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5872
  %and2 = and i32 %1, 1, !dbg !5874
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5874
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5875

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5876
  br label %return, !dbg !5876

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5877
  br label %return, !dbg !5877

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5879
  ret i32 %2, !dbg !5879
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5880 dso_local void @__compiletime_assert_263() #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @usb_match_any_interface(ptr noundef %udev, ptr noundef %id) #0 align 16 !dbg !5881 {
entry:
  %retval = alloca i1, align 1
  %udev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cfg = alloca ptr, align 8
  %j = alloca i32, align 4
  %cache = alloca ptr, align 8
  %intf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %udev, ptr %udev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %udev.addr, metadata !5885, metadata !DIExpression()), !dbg !5898
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5886, metadata !DIExpression()), !dbg !5899
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5900
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5887, metadata !DIExpression()), !dbg !5901
  store i32 0, ptr %i, align 4, !dbg !5902
  br label %for.cond, !dbg !5903

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5904
  %1 = load ptr, ptr %udev.addr, align 8, !dbg !5905
  %descriptor = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 17, !dbg !5906
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, ptr %descriptor, i32 0, i32 13, !dbg !5907
  %2 = load i8, ptr %bNumConfigurations, align 1, !dbg !5907
  %conv = zext i8 %2 to i32, !dbg !5905
  %cmp = icmp ult i32 %0, %conv, !dbg !5908
  br i1 %cmp, label %for.body, label %for.end21, !dbg !5909

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cfg) #14, !dbg !5910
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !5888, metadata !DIExpression()), !dbg !5911
  %3 = load ptr, ptr %udev.addr, align 8, !dbg !5912
  %config = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 20, !dbg !5913
  %4 = load ptr, ptr %config, align 8, !dbg !5913
  %5 = load i32, ptr %i, align 4, !dbg !5914
  %idxprom = zext i32 %5 to i64, !dbg !5912
  %arrayidx = getelementptr %struct.usb_host_config, ptr %4, i64 %idxprom, !dbg !5912
  store ptr %arrayidx, ptr %cfg, align 8, !dbg !5911
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !5915
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5892, metadata !DIExpression()), !dbg !5916
  store i32 0, ptr %j, align 4, !dbg !5917
  br label %for.cond2, !dbg !5918

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !dbg !5919
  %7 = load ptr, ptr %cfg, align 8, !dbg !5920
  %desc = getelementptr inbounds %struct.usb_host_config, ptr %7, i32 0, i32 0, !dbg !5921
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %desc, i32 0, i32 3, !dbg !5922
  %8 = load i8, ptr %bNumInterfaces, align 4, !dbg !5922
  %conv3 = zext i8 %8 to i32, !dbg !5920
  %cmp4 = icmp ult i32 %6, %conv3, !dbg !5923
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !5924

for.body6:                                        ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #14, !dbg !5925
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !5893, metadata !DIExpression()), !dbg !5926
  call void @llvm.lifetime.start.p0(i64 8, ptr %intf) #14, !dbg !5927
  call void @llvm.dbg.declare(metadata ptr %intf, metadata !5897, metadata !DIExpression()), !dbg !5928
  %9 = load ptr, ptr %cfg, align 8, !dbg !5929
  %intf_cache = getelementptr inbounds %struct.usb_host_config, ptr %9, i32 0, i32 4, !dbg !5930
  %10 = load i32, ptr %j, align 4, !dbg !5931
  %idxprom7 = zext i32 %10 to i64, !dbg !5929
  %arrayidx8 = getelementptr [32 x ptr], ptr %intf_cache, i64 0, i64 %idxprom7, !dbg !5929
  %11 = load ptr, ptr %arrayidx8, align 8, !dbg !5929
  store ptr %11, ptr %cache, align 8, !dbg !5932
  %12 = load ptr, ptr %cache, align 8, !dbg !5933
  %num_altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %12, i32 0, i32 0, !dbg !5935
  %13 = load i32, ptr %num_altsetting, align 8, !dbg !5935
  %cmp9 = icmp eq i32 %13, 0, !dbg !5936
  br i1 %cmp9, label %if.then, label %if.end, !dbg !5937

if.then:                                          ; preds = %for.body6
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5938

if.end:                                           ; preds = %for.body6
  %14 = load ptr, ptr %cache, align 8, !dbg !5939
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, ptr %14, i32 0, i32 2, !dbg !5940
  %arrayidx11 = getelementptr [0 x %struct.usb_host_interface], ptr %altsetting, i64 0, i64 0, !dbg !5939
  store ptr %arrayidx11, ptr %intf, align 8, !dbg !5941
  %15 = load ptr, ptr %udev.addr, align 8, !dbg !5942
  %16 = load ptr, ptr %intf, align 8, !dbg !5944
  %17 = load ptr, ptr %id.addr, align 8, !dbg !5945
  %call = call i32 @usb_match_one_id_intf(ptr noundef %15, ptr noundef %16, ptr noundef %17) #15, !dbg !5946
  %tobool = icmp ne i32 %call, 0, !dbg !5946
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !5947

if.then12:                                        ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5948

if.end13:                                         ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5949
  br label %cleanup, !dbg !5949

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %intf) #14, !dbg !5949
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #14, !dbg !5949
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5950

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %18 = load i32, ptr %j, align 4, !dbg !5951
  %inc = add i32 %18, 1, !dbg !5951
  store i32 %inc, ptr %j, align 4, !dbg !5951
  br label %for.cond2, !dbg !5952, !llvm.loop !5953

for.end:                                          ; preds = %for.cond2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5955
  br label %cleanup15, !dbg !5955

cleanup15:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !5955
  call void @llvm.lifetime.end.p0(i64 8, ptr %cfg) #14, !dbg !5955
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %cleanup22 [
    i32 0, label %cleanup.cont18
  ]

cleanup.cont18:                                   ; preds = %cleanup15
  br label %for.inc19, !dbg !5956

for.inc19:                                        ; preds = %cleanup.cont18
  %19 = load i32, ptr %i, align 4, !dbg !5957
  %inc20 = add i32 %19, 1, !dbg !5957
  store i32 %inc20, ptr %i, align 4, !dbg !5957
  br label %for.cond, !dbg !5958, !llvm.loop !5959

for.end21:                                        ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !5961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !5961

cleanup22:                                        ; preds = %for.end21, %cleanup15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5962
  %20 = load i1, ptr %retval, align 1, !dbg !5962
  ret i1 %20, !dbg !5962
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_to_hcd(ptr noundef %bus) #6 align 16 !dbg !5963 {
entry:
  %bus.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5967, metadata !DIExpression()), !dbg !5970
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5968, metadata !DIExpression()), !dbg !5971
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5971
  store ptr %0, ptr %__mptr, align 8, !dbg !5971
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5971
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5971
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !5972
  %2 = load ptr, ptr %tmp, align 8, !dbg !5971
  ret ptr %2, !dbg !5973
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0,1) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109}
!llvm.ident = !{!5110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_quirks", scope: !2, file: !3, line: 172, type: !5099, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/core/.quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/core/usbcore\22 -D KBUILD_BASENAME=\22quirks\22 -D KBUILD_MODNAME=\22usbcore\22 -D __KBUILD_MODNAME=kmod_usbcore -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/core/quirks.ll drivers/usb/core/quirks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196, globals: !5031, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dcc117fc0722a6c32c6637f9c9f64d99")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57, !63, !75, !84, !91, !97, !104, !112, !120, !126, !135, !140, !145, !151, !158, !163, !168, !178, !184, !190}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !64, line: 1189, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80d6f45aac89efdd60a6063143f79a70")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74}
!66 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0)
!67 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1)
!68 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2)
!69 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3)
!70 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4)
!71 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5)
!72 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6)
!73 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7)
!74 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !64, line: 1179, baseType: !7, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0)
!78 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1)
!79 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2)
!80 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3)
!81 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4)
!82 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5)
!83 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_ssp_rate", file: !85, line: 37, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10fa12c4560379d26e545265c72e34ff")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "USB_SSP_GEN_UNKNOWN", value: 0)
!88 = !DIEnumerator(name: "USB_SSP_GEN_2x1", value: 1)
!89 = !DIEnumerator(name: "USB_SSP_GEN_1x2", value: 2)
!90 = !DIEnumerator(name: "USB_SSP_GEN_2x2", value: 3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !92, line: 45, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!95 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!96 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !98, line: 487, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!101 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!102 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!103 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !105, line: 620, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!108 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!109 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!110 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!111 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !105, line: 597, baseType: !113, size: 32, elements: !114)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!116 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!117 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!118 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!119 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !121, line: 30, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!124 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!125 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !98, line: 547, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134}
!128 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!130 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!131 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!132 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!133 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!134 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !98, line: 564, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!138 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !98, line: 577, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!143 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !98, line: 503, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!149 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!150 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !152, line: 95, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01f3cab1cef729fb6cd7609abdb96587")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0)
!155 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1)
!156 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2)
!157 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_wireless_status", file: !152, line: 172, baseType: !7, size: 32, elements: !159)
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "USB_WIRELESS_STATUS_NA", value: 0)
!161 = !DIEnumerator(name: "USB_WIRELESS_STATUS_DISCONNECTED", value: 1)
!162 = !DIEnumerator(name: "USB_WIRELESS_STATUS_CONNECTED", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !164, line: 10, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!165 = !{!166, !167}
!166 = !DIEnumerator(name: "false", value: 0)
!167 = !DIEnumerator(name: "true", value: 1)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !169, line: 364, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!170 = !{!171, !172, !173, !174, !175, !176, !177}
!171 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!172 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!176 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!177 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !179, line: 11, baseType: !7, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!180 = !{!181, !182, !183}
!181 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!182 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!183 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !64, line: 1214, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "USB3_LPM_U0", value: 0)
!187 = !DIEnumerator(name: "USB3_LPM_U1", value: 1)
!188 = !DIEnumerator(name: "USB3_LPM_U2", value: 2)
!189 = !DIEnumerator(name: "USB3_LPM_U3", value: 3)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !191, line: 62, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7dec1a8757c1422b029643f18514a056")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0)
!194 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1)
!195 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2)
!196 = !{!197, !748, !374, !352, !452, !3974, !271, !4502}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !199)
!199 = !{!200, !201, !208, !213, !3650, !3676, !3677, !3678, !3679, !3683, !3686, !3687, !3688, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3755, !3759, !3777, !3794, !3795, !3796, !3797, !3806, !3829, !3830, !3833, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3847, !3848, !3934, !3942, !3943, !3944, !3946, !3950, !3951, !3955, !3956, !3957, !3958, !3960, !3961, !3962, !3969, !3970, !3971, !3973}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !198, file: !6, line: 403, baseType: !5, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !198, file: !6, line: 406, baseType: !202, size: 128, offset: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !203, line: 190, size: 128, elements: !204)
!203 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !203, line: 191, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !203, line: 191, baseType: !206, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !6, line: 409, baseType: !209, size: 448, offset: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 448, elements: !211)
!210 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !{!212}
!212 = !DISubrange(count: 56)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !198, file: !6, line: 417, baseType: !214, size: 768, offset: 640)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !215)
!215 = !{!216, !3644, !3645, !3646, !3649}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !214, file: !6, line: 46, baseType: !217, size: 512)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !218, line: 64, size: 512, elements: !219)
!218 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!219 = !{!220, !223, !224, !226, !315, !3531, !3634, !3639, !3640, !3641, !3642, !3643}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !218, line: 65, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !217, file: !218, line: 66, baseType: !202, size: 128, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !217, file: !218, line: 67, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !217, file: !218, line: 68, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !218, line: 168, size: 768, elements: !229)
!229 = !{!230, !231, !274, !275}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !228, file: !218, line: 169, baseType: !202, size: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !228, file: !218, line: 170, baseType: !232, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !233, line: 29, baseType: !234)
!233 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !233, line: 17, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !233, line: 18, baseType: !237, size: 32)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !233, line: 18, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !237, file: !233, line: 19, baseType: !240, size: 32)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !241, line: 14, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !240, file: !241, line: 15, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !245, line: 44, baseType: !246)
!245 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !245, line: 14, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !245, line: 15, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !245, line: 15, size: 32, elements: !250)
!250 = !{!251, !256, !266}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !249, file: !245, line: 16, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !203, line: 174, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 172, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !253, file: !203, line: 173, baseType: !113, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !245, line: 24, baseType: !257, size: 16)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !245, line: 24, size: 16, elements: !258)
!258 = !{!259, !265}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !257, file: !245, line: 25, baseType: !260, size: 8)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !261, line: 17, baseType: !262)
!261 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !263, line: 21, baseType: !264)
!263 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!264 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !257, file: !245, line: 26, baseType: !260, size: 8, offset: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !245, line: 28, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !245, line: 28, size: 32, elements: !268)
!268 = !{!269, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !267, file: !245, line: 29, baseType: !270, size: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !261, line: 19, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !263, line: 24, baseType: !272)
!272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !267, file: !245, line: 30, baseType: !270, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !228, file: !218, line: 171, baseType: !217, size: 512, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !228, file: !218, line: 172, baseType: !276, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !218, line: 133, size: 192, elements: !279)
!279 = !{!280, !287, !292}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !278, file: !218, line: 134, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!113, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !218, line: 135, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!221, !285}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !278, file: !218, line: 136, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!113, !285, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !218, line: 125, size: 20736, elements: !299)
!299 = !{!300, !305, !309, !310, !314}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !298, file: !218, line: 126, baseType: !301, size: 192)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!303 = !{!304}
!304 = !DISubrange(count: 3)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !298, file: !218, line: 127, baseType: !306, size: 4096, offset: 192)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 4096, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !298, file: !218, line: 128, baseType: !113, size: 32, offset: 4288)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !298, file: !218, line: 129, baseType: !311, size: 16384, offset: 4320)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 16384, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 2048)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !298, file: !218, line: 130, baseType: !113, size: 32, offset: 20704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !217, file: !218, line: 69, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !218, line: 116, size: 384, elements: !319)
!319 = !{!320, !324, !353, !3493, !3521, !3525}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !318, file: !218, line: 117, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !225}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !318, file: !218, line: 118, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !328, line: 254, size: 128, elements: !329)
!328 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!329 = !{!330, !345}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !327, file: !328, line: 255, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !225, !339, !302}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !203, line: 66, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !336, line: 73, baseType: !337)
!336 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !336, line: 15, baseType: !338)
!338 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !328, line: 30, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !340, file: !328, line: 31, baseType: !221, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !340, file: !328, line: 32, baseType: !344, size: 16, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !203, line: 24, baseType: !272)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !327, file: !328, line: 256, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!334, !225, !339, !221, !349}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !203, line: 61, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !336, line: 72, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !336, line: 16, baseType: !352)
!352 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !318, file: !218, line: 119, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !328, line: 84, size: 320, elements: !358)
!358 = !{!359, !360, !364, !3489, !3491}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !328, line: 85, baseType: !221, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !357, file: !328, line: 86, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!344, !225, !339, !113}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !357, file: !328, line: 88, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!344, !225, !368, !113}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !328, line: 175, size: 512, elements: !370)
!370 = !{!371, !372, !373, !375, !3480, !3484, !3485}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !369, file: !328, line: 176, baseType: !340, size: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !369, file: !328, line: 177, baseType: !349, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !369, file: !328, line: 178, baseType: !374, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !369, file: !328, line: 179, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !381)
!381 = !{!382, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3474, !3475, !3476, !3477, !3478, !3479}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !380, file: !14, line: 473, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !385)
!385 = !{!386, !387, !388, !396, !397, !404, !405, !408, !409, !3253, !3254, !3255, !3256, !3257, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3297, !3300, !3301, !3302, !3311, !3312, !3313, !3314}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !384, file: !14, line: 642, baseType: !344, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !384, file: !14, line: 643, baseType: !272, size: 16, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !384, file: !14, line: 644, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !390, line: 23, baseType: !391)
!390 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 21, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !391, file: !390, line: 22, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !203, line: 37, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !336, line: 49, baseType: !7)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !384, file: !14, line: 645, baseType: !202, size: 128, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !384, file: !14, line: 646, baseType: !398, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !390, line: 28, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 26, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !399, file: !390, line: 27, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !203, line: 38, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !336, line: 50, baseType: !7)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !384, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !384, file: !14, line: 650, baseType: !406, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !384, file: !14, line: 651, baseType: !406, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !384, file: !14, line: 654, baseType: !410, size: 64, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !413)
!413 = !{!414, !3078, !3091, !3095, !3099, !3103, !3107, !3111, !3115, !3119, !3123, !3124, !3128, !3132, !3169, !3198, !3202, !3208, !3212, !3216, !3220, !3224, !3228, !3234, !3238}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !412, file: !14, line: 1967, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !383, !418, !7}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !420, line: 82, size: 1536, elements: !421)
!420 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!421 = !{!422, !423, !433, !441, !442, !462, !463, !467, !480, !3061, !3062, !3063, !3064, !3070, !3071, !3072}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !419, file: !420, line: 84, baseType: !7, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !419, file: !420, line: 85, baseType: !424, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !425, line: 275, baseType: !426)
!425 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !425, line: 275, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !426, file: !425, line: 275, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !425, line: 69, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !425, line: 64, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !430, file: !425, line: 65, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !419, file: !420, line: 86, baseType: !434, size: 128, offset: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !435, line: 38, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !435, line: 39, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !434, file: !435, line: 39, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !419, file: !420, line: 87, baseType: !418, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !419, file: !420, line: 88, baseType: !443, size: 128, offset: 256)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !420, line: 49, size: 128, elements: !444)
!444 = !{!445, !459}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !420, line: 50, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !420, line: 50, size: 64, elements: !447)
!447 = !{!448, !455}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !420, line: 51, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !420, line: 51, size: 64, elements: !450)
!450 = !{!451, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !449, file: !420, line: 52, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !261, line: 21, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !263, line: 27, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !449, file: !420, line: 52, baseType: !452, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !446, file: !420, line: 54, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !261, line: 23, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !263, line: 31, baseType: !458)
!458 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !420, line: 56, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !419, file: !420, line: 89, baseType: !383, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !419, file: !420, line: 91, baseType: !464, size: 256, offset: 448)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !419, file: !420, line: 94, baseType: !468, size: 64, offset: 704)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !469, line: 25, size: 64, elements: !470)
!469 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !469, line: 26, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !468, file: !469, line: 26, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !472, file: !469, line: 28, baseType: !457, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !469, line: 30, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !469, line: 30, size: 64, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !469, line: 31, baseType: !232, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !469, line: 32, baseType: !113, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !419, file: !420, line: 95, baseType: !481, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !420, line: 128, size: 1024, align: 512, elements: !484)
!484 = !{!485, !489, !490, !497, !503, !507, !511, !515, !516, !520, !524, !3051, !3055}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !483, file: !420, line: 129, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!113, !418, !7}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !483, file: !420, line: 130, baseType: !486, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !483, file: !420, line: 131, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!113, !494, !496}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !483, file: !420, line: 132, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!113, !494, !7, !221, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !483, file: !420, line: 134, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!113, !494}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !483, file: !420, line: 135, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!113, !418}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !483, file: !420, line: 136, baseType: !512, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !418}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !483, file: !420, line: 137, baseType: !512, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !483, file: !420, line: 138, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !418, !383}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !483, file: !420, line: 139, baseType: !521, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!302, !418, !302, !113}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !483, file: !420, line: 140, baseType: !525, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !3050}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !530, line: 70, size: 256, elements: !531)
!530 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!531 = !{!532, !533, !3046, !3047}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !529, file: !530, line: 71, baseType: !418, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !529, file: !530, line: 72, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !536)
!536 = !{!537, !538, !541, !542, !543, !547, !596, !758, !798, !888, !892, !893, !894, !895, !896, !905, !906, !907, !908, !913, !917, !918, !921, !924, !927, !930, !931, !932, !973, !2977, !2978, !2979, !2980, !2981, !2982, !2985, !2987, !2994, !2995, !2996, !2997, !2998, !3013, !3014, !3015, !3016, !3017, !3020, !3021, !3022, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !535, file: !14, line: 1191, baseType: !202, size: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !535, file: !14, line: 1192, baseType: !539, size: 32, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !203, line: 21, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !203, line: 18, baseType: !452)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !535, file: !14, line: 1193, baseType: !264, size: 8, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !535, file: !14, line: 1194, baseType: !352, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !535, file: !14, line: 1195, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !203, line: 52, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !336, line: 88, baseType: !546)
!546 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !535, file: !14, line: 1196, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !550)
!550 = !{!551, !552, !553, !560, !564, !568, !572, !573, !574, !584, !588, !589, !590, !592, !593, !594, !595}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !549, file: !14, line: 2367, baseType: !221, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !549, file: !14, line: 2368, baseType: !113, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !549, file: !14, line: 2376, baseType: !554, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!113, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !559, line: 32, flags: DIFlagFwdDecl)
!559 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!560 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !549, file: !14, line: 2377, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !549, file: !14, line: 2378, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!418, !548, !113, !221, !374}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !549, file: !14, line: 2380, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !534}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !549, file: !14, line: 2381, baseType: !197, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !14, line: 2382, baseType: !548, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !549, file: !14, line: 2383, baseType: !575, size: 64, offset: 512)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !203, line: 194, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !575, file: !203, line: 195, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !203, line: 198, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !203, line: 199, baseType: !578, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !579, file: !203, line: 199, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !549, file: !14, line: 2385, baseType: !585, offset: 576)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !586, line: 206, elements: !587)
!586 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!587 = !{}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !549, file: !14, line: 2386, baseType: !585, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !549, file: !14, line: 2387, baseType: !585, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !549, file: !14, line: 2388, baseType: !591, offset: 576)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, elements: !303)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !549, file: !14, line: 2390, baseType: !585, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !549, file: !14, line: 2391, baseType: !585, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !549, file: !14, line: 2392, baseType: !585, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !549, file: !14, line: 2393, baseType: !585, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !535, file: !14, line: 1197, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !600)
!600 = !{!601, !605, !609, !610, !614, !620, !624, !625, !626, !630, !634, !638, !639, !640, !646, !651, !652, !659, !660, !661, !662, !666, !670, !739, !756, !757}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !599, file: !14, line: 2058, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!383, !534}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !599, file: !14, line: 2059, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !383}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !599, file: !14, line: 2060, baseType: !606, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !599, file: !14, line: 2062, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !383, !113}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !599, file: !14, line: 2063, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!113, !383, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !599, file: !14, line: 2064, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!113, !383}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !599, file: !14, line: 2065, baseType: !606, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !599, file: !14, line: 2066, baseType: !569, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !599, file: !14, line: 2067, baseType: !627, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!113, !534, !113}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !599, file: !14, line: 2068, baseType: !631, size: 64, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!113, !534, !13}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !599, file: !14, line: 2069, baseType: !635, size: 64, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!113, !534}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !599, file: !14, line: 2070, baseType: !631, size: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !599, file: !14, line: 2071, baseType: !635, size: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !599, file: !14, line: 2072, baseType: !641, size: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!113, !418, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !599, file: !14, line: 2073, baseType: !647, size: 64, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!113, !534, !650, !302}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !599, file: !14, line: 2074, baseType: !569, size: 64, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !599, file: !14, line: 2076, baseType: !653, size: 64, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!113, !656, !418}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !658, line: 66, flags: DIFlagFwdDecl)
!658 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!659 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !599, file: !14, line: 2077, baseType: !653, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !599, file: !14, line: 2078, baseType: !653, size: 64, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !599, file: !14, line: 2079, baseType: !653, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !599, file: !14, line: 2081, baseType: !663, size: 64, offset: 1280)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!334, !534, !113, !302, !349, !544}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !599, file: !14, line: 2082, baseType: !667, size: 64, offset: 1344)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!334, !534, !113, !221, !349, !544}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !599, file: !14, line: 2083, baseType: !671, size: 64, offset: 1408)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!674, !383}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !703, !704, !705, !706, !722, !723, !724}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !676, file: !19, line: 297, baseType: !579, size: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !676, file: !19, line: 298, baseType: !202, size: 128, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !676, file: !19, line: 299, baseType: !202, size: 128, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !676, file: !19, line: 300, baseType: !202, size: 128, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !676, file: !19, line: 301, baseType: !683, size: 256, offset: 512)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !684, line: 66, size: 256, elements: !685)
!684 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!685 = !{!686, !695, !697, !702}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !683, file: !684, line: 67, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !688, line: 13, baseType: !689)
!688 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !203, line: 181, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 179, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !690, file: !203, line: 180, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !261, line: 22, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !263, line: 30, baseType: !546)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !683, file: !684, line: 68, baseType: !696, size: 32, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !241, line: 23, baseType: !240)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !683, file: !684, line: 70, baseType: !698, size: 32, offset: 96)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !699, line: 15, size: 32, elements: !700)
!699 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !698, file: !699, line: 20, baseType: !252, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !683, file: !684, line: 72, baseType: !202, size: 128, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !676, file: !19, line: 302, baseType: !232, size: 32, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !676, file: !19, line: 303, baseType: !252, size: 32, offset: 800)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !676, file: !19, line: 304, baseType: !534, size: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !676, file: !19, line: 305, baseType: !707, size: 64, offset: 896)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !708)
!708 = !{!709, !721}
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !707, file: !19, line: 69, baseType: !710, size: 32)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !707, file: !19, line: 69, size: 32, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !710, file: !19, line: 70, baseType: !389, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !710, file: !19, line: 71, baseType: !398, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !710, file: !19, line: 72, baseType: !715, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !716, line: 24, baseType: !717)
!716 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !716, line: 22, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !717, file: !716, line: 23, baseType: !720, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !716, line: 20, baseType: !395)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !707, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !676, file: !19, line: 306, baseType: !544, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !676, file: !19, line: 307, baseType: !352, size: 64, offset: 1024)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !676, file: !19, line: 308, baseType: !725, size: 576, offset: 1088)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !726)
!726 = !{!727, !729, !730, !731, !732, !733, !734, !735, !738}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !725, file: !19, line: 206, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !546)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !725, file: !19, line: 207, baseType: !728, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !725, file: !19, line: 208, baseType: !728, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !725, file: !19, line: 209, baseType: !728, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !725, file: !19, line: 210, baseType: !728, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !725, file: !19, line: 211, baseType: !728, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !725, file: !19, line: 212, baseType: !728, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !725, file: !19, line: 213, baseType: !736, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !737, line: 8, baseType: !694)
!737 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !725, file: !19, line: 214, baseType: !736, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !599, file: !14, line: 2085, baseType: !740, size: 64, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!338, !534, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !745, line: 15, size: 256, elements: !746)
!745 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!746 = !{!747, !749, !750, !751, !752}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !744, file: !745, line: 16, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !203, line: 154, baseType: !7)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !744, file: !745, line: 19, baseType: !113, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !744, file: !745, line: 26, baseType: !352, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !744, file: !745, line: 33, baseType: !352, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !744, file: !745, line: 36, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !755, line: 33, flags: DIFlagFwdDecl)
!755 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !599, file: !14, line: 2087, baseType: !740, size: 64, offset: 1536)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !599, file: !14, line: 2089, baseType: !569, size: 64, offset: 1600)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !535, file: !14, line: 1198, baseType: !759, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !762)
!762 = !{!763, !767, !771, !775, !776, !777, !778, !779, !784, !789, !793}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !761, file: !19, line: 325, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!113, !675}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !761, file: !19, line: 326, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!675, !534, !113}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !761, file: !19, line: 327, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !675}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !761, file: !19, line: 328, baseType: !764, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !761, file: !19, line: 329, baseType: !764, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !761, file: !19, line: 330, baseType: !764, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !761, file: !19, line: 331, baseType: !627, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !761, file: !19, line: 334, baseType: !780, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !383}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !761, file: !19, line: 335, baseType: !785, size: 64, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!113, !383, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !761, file: !19, line: 337, baseType: !790, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!113, !383, !783}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !761, file: !19, line: 339, baseType: !794, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!113, !534, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !535, file: !14, line: 1199, baseType: !799, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !802)
!802 = !{!803, !814, !815, !819, !820, !821, !836, !859, !863, !864, !887}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !801, file: !19, line: 431, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!113, !534, !113, !113, !807}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !810, line: 8, size: 128, elements: !811)
!810 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !809, file: !810, line: 9, baseType: !528, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !809, file: !810, line: 10, baseType: !418, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !801, file: !19, line: 432, baseType: !627, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !801, file: !19, line: 433, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!113, !534, !7}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !801, file: !19, line: 434, baseType: !816, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !801, file: !19, line: 435, baseType: !627, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !801, file: !19, line: 436, baseType: !822, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!113, !534, !113, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !826, file: !19, line: 418, baseType: !113, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !826, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !826, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !826, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !826, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !826, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !826, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !826, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !801, file: !19, line: 437, baseType: !837, size: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!113, !534, !707, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !841, file: !19, line: 346, baseType: !113, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !841, file: !19, line: 347, baseType: !456, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !841, file: !19, line: 348, baseType: !456, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !841, file: !19, line: 349, baseType: !456, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !841, file: !19, line: 350, baseType: !456, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !841, file: !19, line: 351, baseType: !456, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !841, file: !19, line: 352, baseType: !456, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !841, file: !19, line: 353, baseType: !693, size: 64, offset: 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !841, file: !19, line: 355, baseType: !693, size: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !841, file: !19, line: 356, baseType: !113, size: 32, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !841, file: !19, line: 357, baseType: !113, size: 32, offset: 608)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !841, file: !19, line: 358, baseType: !456, size: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !841, file: !19, line: 359, baseType: !456, size: 64, offset: 704)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !841, file: !19, line: 360, baseType: !456, size: 64, offset: 768)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !841, file: !19, line: 361, baseType: !693, size: 64, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !841, file: !19, line: 362, baseType: !113, size: 32, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !801, file: !19, line: 438, baseType: !860, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!113, !534, !797, !840}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !801, file: !19, line: 440, baseType: !837, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !801, file: !19, line: 441, baseType: !865, size: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!113, !534, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !869, file: !19, line: 412, baseType: !7, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !869, file: !19, line: 413, baseType: !873, size: 1344, offset: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 1344, elements: !303)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !884, !886}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !19, line: 398, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !874, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !874, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !874, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !874, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !874, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !874, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !874, file: !19, line: 406, baseType: !458, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !874, file: !19, line: 407, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !203, line: 132, baseType: !456)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !874, file: !19, line: 408, baseType: !885, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !801, file: !19, line: 442, baseType: !816, size: 64, offset: 640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !535, file: !14, line: 1200, baseType: !889, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !535, file: !14, line: 1201, baseType: !352, size: 64, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !535, file: !14, line: 1202, baseType: !352, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !535, file: !14, line: 1203, baseType: !352, size: 64, offset: 768)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !535, file: !14, line: 1204, baseType: !418, size: 64, offset: 832)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !535, file: !14, line: 1205, baseType: !897, size: 320, offset: 896)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !898, line: 48, size: 320, elements: !899)
!898 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!899 = !{!900, !901, !902, !903, !904}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !897, file: !898, line: 49, baseType: !687, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !898, line: 55, baseType: !687, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !897, file: !898, line: 57, baseType: !698, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !897, file: !898, line: 59, baseType: !696, size: 32, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !897, file: !898, line: 60, baseType: !202, size: 128, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !535, file: !14, line: 1206, baseType: !113, size: 32, offset: 1216)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !535, file: !14, line: 1207, baseType: !252, size: 32, offset: 1248)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !535, file: !14, line: 1209, baseType: !374, size: 64, offset: 1280)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !535, file: !14, line: 1211, baseType: !909, size: 64, offset: 1344)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !535, file: !14, line: 1223, baseType: !914, size: 64, offset: 1408)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !435, line: 34, size: 64, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !914, file: !435, line: 35, baseType: !438, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !535, file: !14, line: 1224, baseType: !202, size: 128, offset: 1472)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !535, file: !14, line: 1225, baseType: !919, size: 64, offset: 1600)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !535, file: !14, line: 1226, baseType: !922, size: 64, offset: 1664)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !535, file: !14, line: 1227, baseType: !925, size: 64, offset: 1728)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !535, file: !14, line: 1228, baseType: !928, size: 64, offset: 1792)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !535, file: !14, line: 1229, baseType: !579, size: 128, offset: 1856)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !535, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !535, file: !14, line: 1231, baseType: !933, size: 2496, offset: 2048)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !934)
!934 = !{!935, !936, !937, !939, !971}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !933, file: !19, line: 522, baseType: !7, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !933, file: !19, line: 523, baseType: !897, size: 320, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !933, file: !19, line: 524, baseType: !938, size: 192, offset: 384)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 192, elements: !303)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !933, file: !19, line: 525, baseType: !940, size: 1728, offset: 576)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 1728, elements: !303)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !942)
!942 = !{!943, !963, !964, !965, !966, !967, !968, !969, !970}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !941, file: !19, line: 223, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !946)
!946 = !{!947, !948, !961, !962}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !945, file: !19, line: 446, baseType: !113, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !945, file: !19, line: 447, baseType: !949, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !951, file: !19, line: 313, baseType: !627, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !951, file: !19, line: 314, baseType: !627, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !951, file: !19, line: 315, baseType: !627, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !951, file: !19, line: 316, baseType: !627, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !951, file: !19, line: 317, baseType: !764, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !951, file: !19, line: 318, baseType: !764, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !951, file: !19, line: 319, baseType: !764, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !951, file: !19, line: 320, baseType: !794, size: 64, offset: 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !945, file: !19, line: 448, baseType: !197, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !945, file: !19, line: 449, baseType: !944, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !941, file: !19, line: 224, baseType: !113, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !941, file: !19, line: 226, baseType: !202, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !941, file: !19, line: 227, baseType: !352, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !941, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !941, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !941, file: !19, line: 230, baseType: !728, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !941, file: !19, line: 231, baseType: !728, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !941, file: !19, line: 232, baseType: !374, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !933, file: !19, line: 526, baseType: !972, size: 192, offset: 2304)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !949, size: 192, elements: !303)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !535, file: !14, line: 1233, baseType: !974, size: 2368, offset: 4544)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !974, file: !14, line: 1185, baseType: !272, size: 16)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !974, file: !14, line: 1186, baseType: !272, size: 16, offset: 16)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !974, file: !14, line: 1187, baseType: !979, size: 2304, offset: 64)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 2304, elements: !303)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !981, line: 12, size: 768, elements: !982)
!981 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!982 = !{!983, !1005, !1007, !2975, !2976}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !980, file: !981, line: 13, baseType: !984, size: 384)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !985, line: 17, size: 384, elements: !986)
!985 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!986 = !{!987, !988, !989, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !984, file: !985, line: 18, baseType: !113, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !984, file: !985, line: 19, baseType: !113, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !984, file: !985, line: 20, baseType: !990, size: 192, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !991, line: 41, baseType: !992)
!991 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !991, line: 37, size: 192, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !992, file: !991, line: 38, baseType: !232, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !992, file: !991, line: 39, baseType: !202, size: 128, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !984, file: !985, line: 22, baseType: !997, size: 128, align: 64, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !203, line: 232, size: 128, align: 64, elements: !998)
!998 = !{!999, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !997, file: !203, line: 233, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !997, file: !203, line: 234, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !1000}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !980, file: !981, line: 14, baseType: !1006, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !980, file: !981, line: 15, baseType: !1008, size: 64, offset: 448)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1009, line: 16, size: 64, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1008, file: !1009, line: 17, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !658, line: 746, size: 58368, elements: !1014)
!1014 = !{!1015, !1023, !1024, !1025, !1031, !1032, !1033, !1034, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1112, !1123, !1218, !1222, !1225, !1256, !1257, !1258, !1259, !1270, !1272, !1273, !1274, !1275, !1276, !1277, !1288, !1289, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1306, !1307, !1314, !1315, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2063, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2078, !2079, !2080, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2122, !2128, !2129, !2130, !2131, !2132, !2136, !2139, !2146, !2151, !2154, !2157, !2160, !2163, !2303, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2343, !2344, !2345, !2354, !2362, !2363, !2364, !2365, !2366, !2371, !2372, !2373, !2376, !2377, !2380, !2383, !2386, !2394, !2397, !2398, !2484, !2485, !2486, !2487, !2488, !2494, !2495, !2496, !2497, !2500, !2501, !2504, !2507, !2508, !2511, !2512, !2513, !2516, !2517, !2518, !2519, !2520, !2521, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2553, !2554, !2620, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2632, !2704, !2706, !2707, !2708, !2709, !2710, !2722, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2752, !2753, !2754}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1013, file: !658, line: 752, baseType: !1016, size: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1017, line: 56, size: 192, elements: !1018)
!1017 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1018 = !{!1019, !1020, !1021, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !1017, line: 57, baseType: !352, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1016, file: !1017, line: 58, baseType: !352, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1016, file: !1017, line: 59, baseType: !452, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1016, file: !1017, line: 61, baseType: !452, size: 32, offset: 160)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1013, file: !658, line: 754, baseType: !7, size: 32, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1013, file: !658, line: 767, baseType: !374, size: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1013, file: !658, line: 768, baseType: !1026, size: 32, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1027, line: 113, baseType: !1028)
!1027 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1027, line: 111, size: 32, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1028, file: !1027, line: 112, baseType: !252, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !658, line: 770, baseType: !7, size: 32, offset: 352)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1013, file: !658, line: 771, baseType: !7, size: 32, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1013, file: !658, line: 774, baseType: !113, size: 32, offset: 416)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1013, file: !658, line: 775, baseType: !1035, size: 128, offset: 448)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1036, line: 58, size: 128, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1037 = !{!1038, !1044, !1049, !1050}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1035, file: !1036, line: 59, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1040, line: 60, size: 64, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1039, file: !1040, line: 61, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !1036, line: 60, baseType: !1045, size: 32, offset: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !1036, line: 60, size: 32, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1045, file: !1036, line: 61, baseType: !7, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1045, file: !1036, line: 62, baseType: !252, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1035, file: !1036, line: 65, baseType: !270, size: 16, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1035, file: !1036, line: 65, baseType: !270, size: 16, offset: 112)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1013, file: !658, line: 776, baseType: !7, size: 32, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1013, file: !658, line: 777, baseType: !352, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1013, file: !658, line: 778, baseType: !1012, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1013, file: !658, line: 787, baseType: !113, size: 32, offset: 768)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1013, file: !658, line: 788, baseType: !113, size: 32, offset: 800)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1013, file: !658, line: 790, baseType: !113, size: 32, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1013, file: !658, line: 792, baseType: !113, size: 32, offset: 864)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1013, file: !658, line: 793, baseType: !113, size: 32, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1013, file: !658, line: 794, baseType: !113, size: 32, offset: 928)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1013, file: !658, line: 795, baseType: !7, size: 32, offset: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1013, file: !658, line: 797, baseType: !1062, size: 2048, offset: 1024)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !658, line: 551, size: 2048, elements: !1063)
!1063 = !{!1064, !1069, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1091, !1094, !1095, !1096}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1062, file: !658, line: 553, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !658, line: 411, size: 128, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1065, file: !658, line: 412, baseType: !352, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1065, file: !658, line: 413, baseType: !452, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1062, file: !658, line: 554, baseType: !1070, size: 192, align: 64, offset: 128)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1071, line: 5, size: 192, align: 64, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1072 = !{!1073, !1074, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1070, file: !1071, line: 6, baseType: !352, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1070, file: !1071, line: 7, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1070, file: !1071, line: 8, baseType: !1075, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1062, file: !658, line: 555, baseType: !456, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1062, file: !658, line: 556, baseType: !456, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1062, file: !658, line: 558, baseType: !202, size: 128, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1062, file: !658, line: 559, baseType: !7, size: 32, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1062, file: !658, line: 561, baseType: !456, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1062, file: !658, line: 562, baseType: !456, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1062, file: !658, line: 563, baseType: !456, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1062, file: !658, line: 564, baseType: !456, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1062, file: !658, line: 565, baseType: !693, size: 64, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1062, file: !658, line: 566, baseType: !456, size: 64, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1062, file: !658, line: 568, baseType: !456, size: 64, offset: 1024)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1062, file: !658, line: 571, baseType: !113, size: 32, offset: 1088)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1062, file: !658, line: 572, baseType: !1090, size: 64, offset: 1152)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1062, file: !658, line: 574, baseType: !1092, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !658, line: 49, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1062, file: !658, line: 576, baseType: !1092, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1062, file: !658, line: 578, baseType: !352, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1062, file: !658, line: 588, baseType: !1097, size: 512, align: 512, offset: 1536)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !658, line: 497, size: 512, align: 512, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1097, file: !658, line: 498, baseType: !456, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1097, file: !658, line: 499, baseType: !456, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1097, file: !658, line: 500, baseType: !456, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1097, file: !658, line: 501, baseType: !452, size: 32, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1097, file: !658, line: 502, baseType: !452, size: 32, offset: 224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1097, file: !658, line: 503, baseType: !352, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1097, file: !658, line: 504, baseType: !352, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1097, file: !658, line: 505, baseType: !352, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1097, file: !658, line: 506, baseType: !1108, size: 64, align: 64, offset: 448)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !658, line: 445, size: 64, align: 64, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1108, file: !658, line: 446, baseType: !7, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1108, file: !658, line: 447, baseType: !7, size: 32, offset: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1013, file: !658, line: 798, baseType: !1113, size: 384, offset: 3072)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !658, line: 592, size: 384, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1113, file: !658, line: 593, baseType: !202, size: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1113, file: !658, line: 594, baseType: !352, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1113, file: !658, line: 595, baseType: !352, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1113, file: !658, line: 596, baseType: !7, size: 32, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1113, file: !658, line: 597, baseType: !272, size: 16, offset: 288)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1113, file: !658, line: 598, baseType: !272, size: 16, offset: 304)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1113, file: !658, line: 600, baseType: !1122, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1013, file: !658, line: 799, baseType: !1124, size: 1792, offset: 3456)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !658, line: 610, size: 1792, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1215, !1216}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1124, file: !658, line: 611, baseType: !1070, size: 192, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1124, file: !658, line: 618, baseType: !456, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1124, file: !658, line: 619, baseType: !456, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1124, file: !658, line: 620, baseType: !456, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1124, file: !658, line: 621, baseType: !456, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1124, file: !658, line: 622, baseType: !456, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1124, file: !658, line: 629, baseType: !693, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1124, file: !658, line: 630, baseType: !456, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1124, file: !658, line: 631, baseType: !7, size: 32, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1124, file: !658, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1124, file: !658, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1124, file: !658, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1124, file: !658, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1124, file: !658, line: 662, baseType: !1140, size: 512, offset: 704)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1141)
!1141 = !{!1142, !1150, !1151, !1156, !1211, !1212, !1213, !1214}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1140, file: !25, line: 119, baseType: !1143, size: 256)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1144, line: 9, size: 256, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1143, file: !1144, line: 10, baseType: !1070, size: 192, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1143, file: !1144, line: 11, baseType: !1148, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1149, line: 29, baseType: !693)
!1149 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1140, file: !25, line: 120, baseType: !1148, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1140, file: !25, line: 121, baseType: !1152, size: 64, offset: 320)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!24, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1140, file: !25, line: 122, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1159)
!1159 = !{!1160, !1185, !1186, !1189, !1194, !1195, !1206, !1210}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1158, file: !25, line: 160, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1162, file: !25, line: 216, baseType: !696, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1162, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1162, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1162, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1162, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1162, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1162, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1162, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1162, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1162, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1162, file: !25, line: 227, baseType: !272, size: 16, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1162, file: !25, line: 228, baseType: !272, size: 16, offset: 208)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1162, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1162, file: !25, line: 235, baseType: !1148, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1162, file: !25, line: 236, baseType: !1155, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1162, file: !25, line: 237, baseType: !1148, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1162, file: !25, line: 238, baseType: !1155, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1162, file: !25, line: 239, baseType: !1182, size: 4096, align: 512, offset: 512)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 4096, align: 512, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 8)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1158, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1158, file: !25, line: 162, baseType: !1187, size: 32, offset: 96)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !203, line: 32, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !336, line: 96, baseType: !113)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1158, file: !25, line: 163, baseType: !1190, size: 32, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !425, line: 274, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !425, line: 274, size: 32, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1191, file: !425, line: 274, baseType: !429, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1158, file: !25, line: 164, baseType: !1155, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1158, file: !25, line: 165, baseType: !1196, size: 128, offset: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1144, line: 14, size: 128, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1196, file: !1144, line: 15, baseType: !1199, size: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1071, line: 26, size: 128, elements: !1200)
!1200 = !{!1201, !1205}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1199, file: !1071, line: 27, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1071, line: 12, size: 64, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1202, file: !1071, line: 13, baseType: !1075, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1199, file: !1071, line: 28, baseType: !1075, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1158, file: !25, line: 166, baseType: !1207, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1148}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1158, file: !25, line: 167, baseType: !1148, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1140, file: !25, line: 123, baseType: !260, size: 8, offset: 448)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1140, file: !25, line: 124, baseType: !260, size: 8, offset: 456)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1140, file: !25, line: 125, baseType: !260, size: 8, offset: 464)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1140, file: !25, line: 126, baseType: !260, size: 8, offset: 472)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1124, file: !658, line: 671, baseType: !1140, size: 512, offset: 1216)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1124, file: !658, line: 679, baseType: !1217, size: 64, offset: 1728)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1013, file: !658, line: 800, baseType: !1219, size: 64, offset: 5248)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !658, line: 800, flags: DIFlagFwdDecl)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1013, file: !658, line: 809, baseType: !1223, size: 64, offset: 5312)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !658, line: 70, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1013, file: !658, line: 825, baseType: !1226, size: 2048, align: 512, offset: 5632)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !658, line: 509, size: 2048, align: 512, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1226, file: !658, line: 511, baseType: !456, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1226, file: !658, line: 512, baseType: !456, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1226, file: !658, line: 513, baseType: !456, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1226, file: !658, line: 514, baseType: !456, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1226, file: !658, line: 515, baseType: !456, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1226, file: !658, line: 516, baseType: !456, size: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1226, file: !658, line: 518, baseType: !456, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1226, file: !658, line: 519, baseType: !456, size: 64, offset: 448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1226, file: !658, line: 520, baseType: !693, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1226, file: !658, line: 522, baseType: !456, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1226, file: !658, line: 523, baseType: !456, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1226, file: !658, line: 524, baseType: !693, size: 64, offset: 704)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1226, file: !658, line: 526, baseType: !693, size: 64, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1226, file: !658, line: 527, baseType: !456, size: 64, offset: 832)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1226, file: !658, line: 529, baseType: !456, size: 64, offset: 896)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1226, file: !658, line: 530, baseType: !456, size: 64, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1226, file: !658, line: 531, baseType: !456, size: 64, offset: 1024)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1226, file: !658, line: 532, baseType: !456, size: 64, offset: 1088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1226, file: !658, line: 533, baseType: !456, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1226, file: !658, line: 535, baseType: !456, size: 64, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1226, file: !658, line: 536, baseType: !456, size: 64, offset: 1280)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1226, file: !658, line: 537, baseType: !456, size: 64, offset: 1344)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1226, file: !658, line: 538, baseType: !456, size: 64, offset: 1408)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1226, file: !658, line: 539, baseType: !456, size: 64, offset: 1472)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1226, file: !658, line: 540, baseType: !456, size: 64, offset: 1536)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1226, file: !658, line: 541, baseType: !456, size: 64, offset: 1600)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1226, file: !658, line: 542, baseType: !456, size: 64, offset: 1664)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1226, file: !658, line: 543, baseType: !456, size: 64, offset: 1728)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1013, file: !658, line: 833, baseType: !7, size: 32, offset: 7680)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1013, file: !658, line: 836, baseType: !7, size: 32, offset: 7712)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1013, file: !658, line: 837, baseType: !113, size: 32, offset: 7744)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1013, file: !658, line: 838, baseType: !1260, size: 64, offset: 7808)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1263, line: 19, baseType: !1264)
!1263 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1263, line: 19, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1264, file: !1263, line: 19, baseType: !1267, size: 64)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 64, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 1)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1013, file: !658, line: 839, baseType: !1271, size: 64, offset: 7872)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1013, file: !658, line: 840, baseType: !1262, size: 64, offset: 7936)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1013, file: !658, line: 841, baseType: !374, size: 64, offset: 8000)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1013, file: !658, line: 843, baseType: !272, size: 16, offset: 8064)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1013, file: !658, line: 845, baseType: !272, size: 16, offset: 8080)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1013, file: !658, line: 848, baseType: !113, size: 32, offset: 8096)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1013, file: !658, line: 849, baseType: !1278, size: 32, offset: 8128)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !658, line: 718, size: 32, elements: !1279)
!1279 = !{!1280, !1287}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1278, file: !658, line: 724, baseType: !1281, size: 32)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1278, file: !658, line: 719, size: 32, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1281, file: !658, line: 720, baseType: !260, size: 8)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1281, file: !658, line: 721, baseType: !260, size: 8, offset: 8)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1281, file: !658, line: 722, baseType: !260, size: 8, offset: 16)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1281, file: !658, line: 723, baseType: !260, size: 8, offset: 24)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1278, file: !658, line: 725, baseType: !452, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1013, file: !658, line: 850, baseType: !202, size: 128, offset: 8192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1013, file: !658, line: 851, baseType: !1290, size: 64, offset: 8320)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !658, line: 60, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1013, file: !658, line: 855, baseType: !352, size: 64, offset: 8384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1013, file: !658, line: 856, baseType: !260, size: 8, offset: 8448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1013, file: !658, line: 857, baseType: !260, size: 8, offset: 8456)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1013, file: !658, line: 858, baseType: !113, size: 32, offset: 8480)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1013, file: !658, line: 859, baseType: !202, size: 128, offset: 8512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1013, file: !658, line: 860, baseType: !113, size: 32, offset: 8640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1013, file: !658, line: 861, baseType: !202, size: 128, offset: 8704)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1013, file: !658, line: 873, baseType: !1300, size: 256, offset: 8832)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !658, line: 376, size: 256, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1300, file: !658, line: 381, baseType: !352, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1300, file: !658, line: 384, baseType: !458, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1300, file: !658, line: 389, baseType: !458, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1300, file: !658, line: 392, baseType: !458, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1013, file: !658, line: 875, baseType: !202, size: 128, offset: 9088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1013, file: !658, line: 877, baseType: !1308, size: 320, offset: 9216)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1309, line: 86, size: 320, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1308, file: !1309, line: 87, baseType: !113, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1308, file: !1309, line: 88, baseType: !202, size: 128, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1308, file: !1309, line: 89, baseType: !202, size: 128, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1013, file: !658, line: 878, baseType: !1070, size: 192, align: 64, offset: 9536)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1013, file: !658, line: 881, baseType: !1316, size: 64, offset: 9728)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !755, line: 733, size: 10240, elements: !1318)
!1318 = !{!1319, !1982}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !755, line: 734, baseType: !1320, size: 10240)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !755, line: 734, size: 10240, elements: !1321)
!1321 = !{!1322, !1326, !1339, !1846, !1847, !1848, !1849, !1850, !1851, !1858, !1859, !1860, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1899, !1901, !1904, !1951, !1952, !1953, !1956, !1957, !1958, !1961, !1962, !1963, !1969, !1970}
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !755, line: 739, baseType: !1323, size: 512, align: 512)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !755, line: 739, size: 512, align: 512, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1323, file: !755, line: 747, baseType: !252, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1320, file: !755, line: 750, baseType: !1327, size: 128, offset: 512)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1328, line: 218, size: 128, elements: !1329)
!1328 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1329 = !{!1330, !1337, !1338}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !1328, line: 219, baseType: !1331, size: 32)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1327, file: !1328, line: 219, size: 32, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1331, file: !1328, line: 220, baseType: !232, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1331, file: !1328, line: 221, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1328, line: 197, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 197, elements: !587)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1327, file: !1328, line: 223, baseType: !7, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1327, file: !1328, line: 224, baseType: !374, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1320, file: !755, line: 752, baseType: !1340, size: 64, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!352, !1343, !352, !352, !352, !352}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1345)
!1345 = !{!1346, !1352, !1353, !1355, !1356, !1357, !1358, !1359, !1411, !1606, !1615, !1616, !1617, !1836, !1837, !1838, !1839, !1841, !1842, !1845}
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !14, line: 995, baseType: !1347, size: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !14, line: 995, size: 128, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1347, file: !14, line: 996, baseType: !1039, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1347, file: !14, line: 997, baseType: !997, size: 128, align: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1347, file: !14, line: 998, baseType: !7, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1344, file: !14, line: 1005, baseType: !232, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1344, file: !14, line: 1006, baseType: !1354, size: 32, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !203, line: 156, baseType: !7)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1344, file: !14, line: 1007, baseType: !687, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1344, file: !14, line: 1008, baseType: !683, size: 256, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1344, file: !14, line: 1009, baseType: !544, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1344, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1344, file: !14, line: 1011, baseType: !1360, size: 256, offset: 640)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1361)
!1361 = !{!1362, !1383, !1407, !1408, !1409, !1410}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !14, line: 949, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1364, line: 34, baseType: !1365)
!1364 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1364, line: 25, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1365, file: !1364, line: 26, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1369, line: 27, baseType: !1370)
!1369 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1369, line: 13, size: 64, elements: !1371)
!1371 = !{!1372, !1382}
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !1369, line: 14, baseType: !1373, size: 32)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !1369, line: 14, size: 32, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1373, file: !1369, line: 15, baseType: !252, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !1369, line: 16, baseType: !1377, size: 32)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !1369, line: 16, size: 32, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1377, file: !1369, line: 18, baseType: !260, size: 8)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1377, file: !1369, line: 19, baseType: !1381, size: 24, offset: 8)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 24, elements: !303)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1370, file: !1369, line: 26, baseType: !244, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1360, file: !14, line: 950, baseType: !1384, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1394, !1395, !1396, !1397}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1385, file: !30, line: 61, baseType: !1026, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1385, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !30, line: 63, baseType: !232, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1385, file: !30, line: 65, baseType: !1391, size: 256, offset: 128)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 256, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 4)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1385, file: !30, line: 66, baseType: !575, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1385, file: !30, line: 68, baseType: !990, size: 192, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1385, file: !30, line: 69, baseType: !997, size: 128, align: 64, offset: 640)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1385, file: !30, line: 70, baseType: !1398, offset: 768)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, elements: !1405)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1399, file: !30, line: 55, baseType: !113, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1399, file: !30, line: 56, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1405 = !{!1406}
!1406 = !DISubrange(count: -1)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1360, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1360, file: !14, line: 952, baseType: !389, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1360, file: !14, line: 952, baseType: !389, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1360, file: !14, line: 953, baseType: !113, size: 32, offset: 224)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1344, file: !14, line: 1012, baseType: !1412, size: 64, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1415, line: 110, size: 1472, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1433, !1434, !1435, !1436, !1437, !1438, !1551, !1552, !1553, !1554, !1555, !1586, !1589, !1593, !1601}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1414, file: !1415, line: 111, baseType: !687, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1414, file: !1415, line: 112, baseType: !389, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1414, file: !1415, line: 113, baseType: !398, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1414, file: !1415, line: 114, baseType: !389, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1414, file: !1415, line: 115, baseType: !398, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1414, file: !1415, line: 116, baseType: !389, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1414, file: !1415, line: 117, baseType: !398, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1414, file: !1415, line: 118, baseType: !389, size: 32, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1414, file: !1415, line: 119, baseType: !398, size: 32, offset: 288)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1414, file: !1415, line: 120, baseType: !7, size: 32, offset: 320)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1414, file: !1415, line: 121, baseType: !1428, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1429, line: 24, baseType: !1430)
!1429 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1429, line: 24, size: 64, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1430, file: !1429, line: 24, baseType: !456, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1414, file: !1415, line: 122, baseType: !1428, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1414, file: !1415, line: 123, baseType: !1428, size: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1414, file: !1415, line: 124, baseType: !1428, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1414, file: !1415, line: 125, baseType: !1428, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1414, file: !1415, line: 127, baseType: !264, size: 8, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1414, file: !1415, line: 129, baseType: !1439, size: 64, offset: 768)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1441, line: 195, size: 1728, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1442 = !{!1443, !1444, !1449, !1454, !1455, !1458, !1459, !1464, !1465, !1466, !1467, !1470, !1471, !1472, !1474, !1475, !1515, !1536}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1440, file: !1441, line: 196, baseType: !1026, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1440, file: !1441, line: 197, baseType: !1445, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1441, line: 28, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !203, line: 104, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !261, line: 20, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !263, line: 26, baseType: !113)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 198, baseType: !1450, size: 192, offset: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 198, size: 192, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1450, file: !1441, line: 199, baseType: !202, size: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1450, file: !1441, line: 200, baseType: !1070, size: 192, align: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1440, file: !1441, line: 205, baseType: !897, size: 320, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1440, file: !1441, line: 206, baseType: !1456, size: 64, offset: 576)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1441, line: 206, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1440, file: !1441, line: 207, baseType: !374, size: 64, offset: 640)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 208, baseType: !1460, size: 64, offset: 704)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 208, size: 64, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1460, file: !1441, line: 209, baseType: !736, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1460, file: !1441, line: 210, baseType: !736, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1440, file: !1441, line: 212, baseType: !736, size: 64, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1440, file: !1441, line: 213, baseType: !389, size: 32, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1440, file: !1441, line: 214, baseType: !398, size: 32, offset: 864)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1440, file: !1441, line: 215, baseType: !1468, size: 32, offset: 896)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1441, line: 31, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !203, line: 110, baseType: !452)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1440, file: !1441, line: 216, baseType: !272, size: 16, offset: 928)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1440, file: !1441, line: 217, baseType: !272, size: 16, offset: 944)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1440, file: !1441, line: 221, baseType: !1473, size: 16, offset: 960)
!1473 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1441, line: 228, baseType: !352, size: 64, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 245, baseType: !1476, size: 320, offset: 1088)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 245, size: 320, elements: !1477)
!1477 = !{!1478, !1507}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1476, file: !1441, line: 246, baseType: !1479, size: 320)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1441, line: 114, size: 320, elements: !1480)
!1480 = !{!1481, !1482, !1494, !1497, !1506}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1479, file: !1441, line: 116, baseType: !352, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1479, file: !1441, line: 117, baseType: !1483, size: 64, offset: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1479, file: !1441, line: 117, size: 64, elements: !1484)
!1484 = !{!1485, !1493}
!1485 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1441, line: 118, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1483, file: !1441, line: 118, size: 64, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1486, file: !1441, line: 120, baseType: !270, size: 16)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1486, file: !1441, line: 121, baseType: !1490, size: 48, offset: 16)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 48, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 6)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1483, file: !1441, line: 127, baseType: !352, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1479, file: !1441, line: 129, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1441, line: 102, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1479, file: !1441, line: 130, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1441, line: 108, size: 192, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1499, file: !1441, line: 109, baseType: !997, size: 128, align: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1499, file: !1441, line: 110, baseType: !1026, size: 32, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1499, file: !1441, line: 111, baseType: !1504, size: 8, offset: 160)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !203, line: 35, baseType: !1505)
!1505 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1479, file: !1441, line: 131, baseType: !221, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1441, line: 247, baseType: !1508, size: 320)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !1441, line: 247, size: 320, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1508, file: !1441, line: 248, baseType: !352, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1508, file: !1441, line: 249, baseType: !352, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1508, file: !1441, line: 250, baseType: !1495, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1508, file: !1441, line: 251, baseType: !1498, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1508, file: !1441, line: 252, baseType: !302, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1441, line: 260, baseType: !1516, size: 256, offset: 1408)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1441, line: 260, size: 256, elements: !1517)
!1517 = !{!1518, !1524}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1516, file: !1441, line: 261, baseType: !1519, size: 256)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1441, line: 134, size: 256, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1519, file: !1441, line: 135, baseType: !374, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !1441, line: 136, baseType: !1523, size: 256)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 256, elements: !1392)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1441, line: 262, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !1441, line: 262, size: 256, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1525, file: !1441, line: 264, baseType: !202, size: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1525, file: !1441, line: 265, baseType: !1529, size: 128, offset: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1530, line: 22, size: 128, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1531 = !{!1532, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1529, file: !1530, line: 23, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1530, line: 23, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1529, file: !1530, line: 24, baseType: !352, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1440, file: !1441, line: 280, baseType: !1537, size: 64, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1441, line: 176, size: 192, elements: !1539)
!1539 = !{!1540, !1549, !1550}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1538, file: !1441, line: 177, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1441, line: 171, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!113, !1439, !1545, !1547, !1439}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1496)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1538, file: !1441, line: 178, baseType: !1439, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1538, file: !1441, line: 179, baseType: !1495, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1414, file: !1415, line: 130, baseType: !1439, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1414, file: !1415, line: 131, baseType: !1439, size: 64, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1414, file: !1415, line: 132, baseType: !1439, size: 64, offset: 960)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1414, file: !1415, line: 135, baseType: !374, size: 64, offset: 1024)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1414, file: !1415, line: 137, baseType: !1556, size: 64, offset: 1088)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1558, line: 14, size: 1088, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1559 = !{!1560, !1561, !1570, !1571, !1572, !1573, !1574, !1575}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1557, file: !1558, line: 15, baseType: !1026, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1557, file: !1558, line: 17, baseType: !1562, size: 320, offset: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1563, line: 22, size: 320, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1564 = !{!1565, !1566, !1567, !1568}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1563, line: 23, baseType: !696, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1562, file: !1563, line: 24, baseType: !693, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1562, file: !1563, line: 26, baseType: !202, size: 128, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1562, file: !1563, line: 28, baseType: !1569, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1557, file: !1558, line: 19, baseType: !352, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1557, file: !1558, line: 20, baseType: !687, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1557, file: !1558, line: 23, baseType: !579, size: 128, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1557, file: !1558, line: 24, baseType: !389, size: 32, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1557, file: !1558, line: 29, baseType: !687, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1557, file: !1558, line: 36, baseType: !1576, size: 320, offset: 768)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1577, line: 15, size: 320, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1576, file: !1577, line: 16, baseType: !696, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1576, file: !1577, line: 18, baseType: !113, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1576, file: !1577, line: 19, baseType: !113, size: 32, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1576, file: !1577, line: 20, baseType: !113, size: 32, offset: 96)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1576, file: !1577, line: 21, baseType: !113, size: 32, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1576, file: !1577, line: 22, baseType: !352, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1577, line: 23, baseType: !352, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1414, file: !1415, line: 138, baseType: !1587, size: 64, offset: 1152)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !390, line: 18, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1414, file: !1415, line: 139, baseType: !1590, size: 64, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1592, line: 16, flags: DIFlagFwdDecl)
!1592 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1414, file: !1415, line: 140, baseType: !1594, size: 64, offset: 1280)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1415, line: 25, size: 64, elements: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1595, file: !1415, line: 26, baseType: !252, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1595, file: !1415, line: 27, baseType: !113, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1595, file: !1415, line: 28, baseType: !1600, offset: 64)
!1600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, elements: !1405)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 142, baseType: !1602, size: 128, offset: 1344)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 142, size: 128, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1602, file: !1415, line: 143, baseType: !113, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1602, file: !1415, line: 144, baseType: !997, size: 128, align: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1344, file: !14, line: 1013, baseType: !1607, size: 256, offset: 960)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1607, file: !14, line: 971, baseType: !352, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1607, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1607, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1607, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1607, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1607, file: !14, line: 976, baseType: !544, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1344, file: !14, line: 1014, baseType: !809, size: 128, offset: 1216)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1344, file: !14, line: 1015, baseType: !383, size: 64, offset: 1344)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1344, file: !14, line: 1016, baseType: !1618, size: 64, offset: 1408)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1621)
!1621 = !{!1622, !1623, !1627, !1632, !1636, !1664, !1665, !1671, !1684, !1692, !1696, !1697, !1758, !1759, !1763, !1768, !1769, !1773, !1777, !1783, !1784, !1788, !1789, !1795, !1799, !1803, !1809, !1813, !1817, !1821, !1825, !1826, !1832}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1620, file: !14, line: 1915, baseType: !197, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1620, file: !14, line: 1916, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!544, !1343, !544, !113}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1620, file: !14, line: 1917, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!334, !1343, !302, !349, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1620, file: !14, line: 1918, baseType: !1633, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!334, !1343, !221, !349, !1631}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1620, file: !14, line: 1919, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!334, !1640, !1662}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1649, !1650, !1651, !1652}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1641, file: !14, line: 374, baseType: !1343, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1641, file: !14, line: 375, baseType: !544, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1641, file: !14, line: 376, baseType: !1646, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !1640, !338}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1641, file: !14, line: 377, baseType: !374, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1641, file: !14, line: 378, baseType: !113, size: 32, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1641, file: !14, line: 379, baseType: !270, size: 16, offset: 288)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1641, file: !14, line: 380, baseType: !1653, size: 64, offset: 320)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1641, file: !14, line: 380, size: 64, elements: !1654)
!1654 = !{!1655, !1658}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1653, file: !14, line: 386, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1653, file: !14, line: 395, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!334, !374}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1620, file: !14, line: 1920, baseType: !1637, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1620, file: !14, line: 1921, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!113, !1640, !1669, !7}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1620, file: !14, line: 1923, baseType: !1672, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!113, !1343, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1677)
!1677 = !{!1678, !1683}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1676, file: !14, line: 1859, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!1504, !1675, !221, !113, !544, !456, !7}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1676, file: !14, line: 1860, baseType: !544, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1620, file: !14, line: 1924, baseType: !1685, size: 64, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1688, !1343, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1689, line: 59, baseType: !7)
!1689 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !559, line: 31, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1620, file: !14, line: 1925, baseType: !1693, size: 64, offset: 576)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!338, !1343, !7, !352}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1620, file: !14, line: 1926, baseType: !1693, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1620, file: !14, line: 1927, baseType: !1698, size: 64, offset: 704)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!113, !1343, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !755, line: 625, size: 1344, elements: !1703)
!1703 = !{!1704, !1713, !1714, !1722, !1729, !1730, !1735, !1736, !1741, !1742, !1745, !1749, !1750, !1751, !1752, !1753, !1756}
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !755, line: 628, baseType: !1705, size: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !755, line: 628, size: 128, elements: !1706)
!1706 = !{!1707, !1712}
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !755, line: 629, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1705, file: !755, line: 629, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1708, file: !755, line: 631, baseType: !352, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1708, file: !755, line: 632, baseType: !352, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1705, file: !755, line: 635, baseType: !997, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1702, file: !755, line: 639, baseType: !1316, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1702, file: !755, line: 640, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1716, line: 297, baseType: !1717)
!1716 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1716, line: 297, size: 64, elements: !1718)
!1718 = !{!1719}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1717, file: !1716, line: 297, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1721, line: 19, baseType: !352)
!1721 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !755, line: 646, baseType: !1723, size: 64, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !755, line: 646, size: 64, elements: !1724)
!1724 = !{!1725, !1728}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1723, file: !755, line: 647, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1727)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !755, line: 542, baseType: !352)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1723, file: !755, line: 648, baseType: !1727, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1702, file: !755, line: 666, baseType: !113, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1702, file: !755, line: 667, baseType: !1731, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !755, line: 579, size: 320, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !755, line: 580, baseType: !897, size: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1702, file: !755, line: 670, baseType: !1504, size: 8, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1702, file: !755, line: 681, baseType: !1737, size: 256, offset: 512)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1702, file: !755, line: 678, size: 256, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1737, file: !755, line: 679, baseType: !1070, size: 192, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1737, file: !755, line: 680, baseType: !352, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1702, file: !755, line: 689, baseType: !202, size: 128, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1702, file: !755, line: 691, baseType: !1743, size: 64, offset: 896)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !755, line: 691, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1702, file: !755, line: 694, baseType: !1746, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !755, line: 694, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1702, file: !755, line: 697, baseType: !352, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1702, file: !755, line: 699, baseType: !1343, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1702, file: !755, line: 700, baseType: !374, size: 64, offset: 1152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1702, file: !755, line: 711, baseType: !687, size: 64, offset: 1216)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1702, file: !755, line: 717, baseType: !1754, size: 64, offset: 1280)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !658, line: 54, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1702, file: !755, line: 722, baseType: !1757, offset: 1344)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !755, line: 570, elements: !587)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1620, file: !14, line: 1928, baseType: !352, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1620, file: !14, line: 1929, baseType: !1760, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!113, !383, !1343}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1620, file: !14, line: 1930, baseType: !1764, size: 64, offset: 896)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!113, !1343, !1767}
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !374)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1620, file: !14, line: 1931, baseType: !1760, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1620, file: !14, line: 1932, baseType: !1770, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!113, !1343, !544, !544, !113}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1620, file: !14, line: 1933, baseType: !1774, size: 64, offset: 1088)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!113, !113, !1343, !113}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1620, file: !14, line: 1934, baseType: !1778, size: 64, offset: 1152)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!113, !1343, !113, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1620, file: !14, line: 1935, baseType: !1340, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1620, file: !14, line: 1936, baseType: !1785, size: 64, offset: 1280)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!113, !113}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1620, file: !14, line: 1937, baseType: !1778, size: 64, offset: 1344)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1620, file: !14, line: 1938, baseType: !1790, size: 64, offset: 1408)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!334, !1793, !1343, !1631, !349, !7}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !658, line: 59, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1620, file: !14, line: 1939, baseType: !1796, size: 64, offset: 1472)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!334, !1343, !1631, !1793, !349, !7}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1620, file: !14, line: 1940, baseType: !1800, size: 64, offset: 1536)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1343}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1620, file: !14, line: 1941, baseType: !1804, size: 64, offset: 1600)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!113, !1343, !113, !1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1620, file: !14, line: 1942, baseType: !1810, size: 64, offset: 1664)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!338, !1343, !113, !544, !544}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1620, file: !14, line: 1944, baseType: !1814, size: 64, offset: 1728)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !656, !1343}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1620, file: !14, line: 1948, baseType: !1818, size: 64, offset: 1792)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!334, !1343, !544, !1343, !544, !349, !7}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1620, file: !14, line: 1950, baseType: !1822, size: 64, offset: 1856)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!544, !1343, !544, !1343, !544, !544, !7}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1620, file: !14, line: 1953, baseType: !1770, size: 64, offset: 1920)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1620, file: !14, line: 1954, baseType: !1827, size: 64, offset: 1984)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!113, !1830, !7}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1620, file: !14, line: 1955, baseType: !1833, size: 64, offset: 2048)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!113, !1830, !1669, !7}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1344, file: !14, line: 1018, baseType: !456, size: 64, offset: 1472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1344, file: !14, line: 1020, baseType: !374, size: 64, offset: 1536)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1344, file: !14, line: 1023, baseType: !374, size: 64, offset: 1600)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1344, file: !14, line: 1027, baseType: !1840, size: 64, offset: 1664)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1344, file: !14, line: 1029, baseType: !379, size: 64, offset: 1728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1344, file: !14, line: 1030, baseType: !1843, size: 32, offset: 1792)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1844, line: 8, baseType: !452)
!1844 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1344, file: !14, line: 1031, baseType: !1843, size: 32, offset: 1824)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1320, file: !755, line: 756, baseType: !352, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1320, file: !755, line: 757, baseType: !352, size: 64, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1320, file: !755, line: 760, baseType: !352, size: 64, offset: 832)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1320, file: !755, line: 761, baseType: !352, size: 64, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1320, file: !755, line: 763, baseType: !352, size: 64, offset: 960)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1320, file: !755, line: 764, baseType: !1852, size: 64, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1716, line: 299, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1716, line: 299, size: 64, elements: !1855)
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1854, file: !1716, line: 299, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1721, line: 18, baseType: !352)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1320, file: !755, line: 773, baseType: !252, size: 32, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1320, file: !755, line: 785, baseType: !252, size: 32, offset: 1120)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1320, file: !755, line: 795, baseType: !1861, size: 64, offset: 1152)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !755, line: 726, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1862, file: !755, line: 727, baseType: !456, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1862, file: !755, line: 728, baseType: !113, size: 32, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1320, file: !755, line: 801, baseType: !352, size: 64, offset: 1216)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1320, file: !755, line: 804, baseType: !687, size: 64, offset: 1280)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1320, file: !755, line: 806, baseType: !113, size: 32, offset: 1344)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1320, file: !755, line: 808, baseType: !232, size: 32, offset: 1376)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1320, file: !755, line: 823, baseType: !897, size: 320, offset: 1408)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1320, file: !755, line: 825, baseType: !202, size: 128, offset: 1728)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1320, file: !755, line: 845, baseType: !113, size: 32, offset: 1856)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1320, file: !755, line: 849, baseType: !352, size: 64, offset: 1920)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1320, file: !755, line: 850, baseType: !352, size: 64, offset: 1984)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1320, file: !755, line: 852, baseType: !352, size: 64, offset: 2048)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1320, file: !755, line: 853, baseType: !352, size: 64, offset: 2112)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1320, file: !755, line: 854, baseType: !689, size: 64, offset: 2176)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1320, file: !755, line: 855, baseType: !352, size: 64, offset: 2240)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1320, file: !755, line: 856, baseType: !352, size: 64, offset: 2304)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1320, file: !755, line: 857, baseType: !352, size: 64, offset: 2368)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1320, file: !755, line: 858, baseType: !352, size: 64, offset: 2432)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1320, file: !755, line: 865, baseType: !429, size: 32, offset: 2496)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1320, file: !755, line: 867, baseType: !232, size: 32, offset: 2528)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1320, file: !755, line: 869, baseType: !352, size: 64, offset: 2560)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1320, file: !755, line: 869, baseType: !352, size: 64, offset: 2624)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1320, file: !755, line: 869, baseType: !352, size: 64, offset: 2688)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1320, file: !755, line: 869, baseType: !352, size: 64, offset: 2752)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1320, file: !755, line: 870, baseType: !352, size: 64, offset: 2816)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1320, file: !755, line: 870, baseType: !352, size: 64, offset: 2880)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1320, file: !755, line: 870, baseType: !352, size: 64, offset: 2944)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1320, file: !755, line: 871, baseType: !352, size: 64, offset: 3008)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1320, file: !755, line: 871, baseType: !352, size: 64, offset: 3072)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1320, file: !755, line: 871, baseType: !352, size: 64, offset: 3136)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1320, file: !755, line: 871, baseType: !352, size: 64, offset: 3200)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1320, file: !755, line: 873, baseType: !1896, size: 3328, offset: 3264)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 3328, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 52)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1320, file: !755, line: 875, baseType: !1900, size: 1280, offset: 6592)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1562, size: 1280, elements: !1392)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1320, file: !755, line: 877, baseType: !1902, size: 64, offset: 7872)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !755, line: 877, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1320, file: !755, line: 880, baseType: !1905, size: 1088, offset: 7936)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1906, line: 72, baseType: !1907)
!1906 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1906, line: 23, size: 1088, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1916, !1917, !1918, !1919, !1946, !1947, !1948}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1907, file: !1906, line: 28, baseType: !456, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1907, file: !1906, line: 38, baseType: !689, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1907, file: !1906, line: 40, baseType: !352, size: 64, offset: 128)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1907, file: !1906, line: 43, baseType: !897, size: 320, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1907, file: !1906, line: 44, baseType: !1914, size: 64, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1906, line: 44, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1906, line: 48, baseType: !352, size: 64, offset: 576)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1907, file: !1906, line: 59, baseType: !683, size: 256, offset: 640)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1907, file: !1906, line: 60, baseType: !374, size: 64, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1907, file: !1906, line: 61, baseType: !1920, size: 64, offset: 960)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1923, line: 13, size: 1216, elements: !1924)
!1923 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1922, file: !1923, line: 14, baseType: !374, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1922, file: !1923, line: 15, baseType: !352, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1922, file: !1923, line: 17, baseType: !352, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1922, file: !1923, line: 17, baseType: !352, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1922, file: !1923, line: 18, baseType: !352, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1922, file: !1923, line: 18, baseType: !352, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1922, file: !1923, line: 19, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1922, file: !1923, line: 21, baseType: !338, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1922, file: !1923, line: 23, baseType: !338, size: 64, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1922, file: !1923, line: 24, baseType: !338, size: 64, offset: 576)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1922, file: !1923, line: 25, baseType: !338, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1922, file: !1923, line: 26, baseType: !338, size: 64, offset: 704)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1922, file: !1923, line: 27, baseType: !338, size: 64, offset: 768)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1922, file: !1923, line: 28, baseType: !338, size: 64, offset: 832)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1922, file: !1923, line: 29, baseType: !338, size: 64, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1922, file: !1923, line: 30, baseType: !338, size: 64, offset: 960)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1922, file: !1923, line: 31, baseType: !338, size: 64, offset: 1024)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1922, file: !1923, line: 32, baseType: !338, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1922, file: !1923, line: 33, baseType: !338, size: 64, offset: 1152)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1907, file: !1906, line: 63, baseType: !252, size: 32, offset: 1024)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1907, file: !1906, line: 69, baseType: !270, size: 16, offset: 1056)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1907, file: !1906, line: 70, baseType: !1949, size: 16, offset: 1072)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !261, line: 18, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !263, line: 23, baseType: !1473)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !755, line: 882, baseType: !352, size: 64, offset: 9024)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1320, file: !755, line: 885, baseType: !232, size: 32, offset: 9088)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1320, file: !755, line: 886, baseType: !1954, size: 64, offset: 9152)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !755, line: 732, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1320, file: !755, line: 901, baseType: !1587, size: 64, offset: 9216)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1320, file: !755, line: 904, baseType: !1343, size: 64, offset: 9280)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1320, file: !755, line: 906, baseType: !1959, size: 64, offset: 9344)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !755, line: 906, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1320, file: !755, line: 930, baseType: !252, size: 32, offset: 9408)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1320, file: !755, line: 933, baseType: !252, size: 32, offset: 9440)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1320, file: !755, line: 935, baseType: !1964, size: 64, offset: 9472)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1964, file: !44, line: 104, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1320, file: !755, line: 940, baseType: !687, size: 64, offset: 9536)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1320, file: !755, line: 942, baseType: !1971, size: 256, offset: 9600)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1972, line: 98, size: 256, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1973 = !{!1974, !1975, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1971, file: !1972, line: 99, baseType: !687, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1971, file: !1972, line: 100, baseType: !202, size: 128, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1971, file: !1972, line: 101, baseType: !1977, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1972, line: 21, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1317, file: !755, line: 986, baseType: !1983, offset: 10240)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, elements: !1405)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1013, file: !658, line: 882, baseType: !1316, size: 64, offset: 9792)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1013, file: !658, line: 884, baseType: !113, size: 32, offset: 9856)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1013, file: !658, line: 885, baseType: !113, size: 32, offset: 9888)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1013, file: !658, line: 886, baseType: !113, size: 32, offset: 9920)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1013, file: !658, line: 888, baseType: !113, size: 32, offset: 9952)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1013, file: !658, line: 890, baseType: !352, size: 64, offset: 9984)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1013, file: !658, line: 893, baseType: !7, size: 32, offset: 10048)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1013, file: !658, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1013, file: !658, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1013, file: !658, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1013, file: !658, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1013, file: !658, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1013, file: !658, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1013, file: !658, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1013, file: !658, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1013, file: !658, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1013, file: !658, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1013, file: !658, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1013, file: !658, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1013, file: !658, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1013, file: !658, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1013, file: !658, line: 969, baseType: !352, size: 64, offset: 10176)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1013, file: !658, line: 971, baseType: !2007, size: 448, offset: 10240)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2008)
!2008 = !{!2009, !2010, !2015}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2007, file: !38, line: 26, baseType: !352, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2007, file: !38, line: 27, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!338, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !38, line: 28, baseType: !2016, size: 320, offset: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !38, line: 28, size: 320, elements: !2017)
!2017 = !{!2018, !2028, !2053}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2016, file: !38, line: 37, baseType: !2019, size: 320)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !38, line: 30, size: 320, elements: !2020)
!2020 = !{!2021, !2023, !2024, !2025, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2019, file: !38, line: 31, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2019, file: !38, line: 32, baseType: !452, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2019, file: !38, line: 33, baseType: !452, size: 32, offset: 96)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2019, file: !38, line: 34, baseType: !452, size: 32, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2019, file: !38, line: 35, baseType: !456, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2019, file: !38, line: 36, baseType: !2022, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2016, file: !38, line: 47, baseType: !2029, size: 192)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !38, line: 39, size: 192, elements: !2030)
!2030 = !{!2031, !2032, !2033, !2052}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2029, file: !38, line: 40, baseType: !1187, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2029, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !38, line: 42, baseType: !2034, size: 64, offset: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !38, line: 42, size: 64, elements: !2035)
!2035 = !{!2036, !2044}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2034, file: !38, line: 43, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2039, line: 7, size: 128, elements: !2040)
!2039 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2040 = !{!2041, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2038, file: !2039, line: 8, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !336, line: 93, baseType: !546)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2038, file: !2039, line: 9, baseType: !546, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2034, file: !38, line: 44, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2047, line: 7, size: 64, elements: !2048)
!2047 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2048 = !{!2049, !2051}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2046, file: !2047, line: 8, baseType: !2050, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2047, line: 5, baseType: !1447)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2046, file: !2047, line: 9, baseType: !1447, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2029, file: !38, line: 46, baseType: !456, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2016, file: !38, line: 55, baseType: !2054, size: 256)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !38, line: 49, size: 256, elements: !2055)
!2055 = !{!2056, !2059, !2060, !2061, !2062}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2054, file: !38, line: 50, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2054, file: !38, line: 51, baseType: !113, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2054, file: !38, line: 52, baseType: !113, size: 32, offset: 96)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2054, file: !38, line: 53, baseType: !352, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2054, file: !38, line: 54, baseType: !352, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1013, file: !658, line: 973, baseType: !2064, size: 32, offset: 10688)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !203, line: 27, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !336, line: 28, baseType: !113)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1013, file: !658, line: 974, baseType: !2064, size: 32, offset: 10720)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1013, file: !658, line: 978, baseType: !352, size: 64, offset: 10752)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1013, file: !658, line: 987, baseType: !1012, size: 64, offset: 10816)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1013, file: !658, line: 990, baseType: !1012, size: 64, offset: 10880)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1013, file: !658, line: 995, baseType: !202, size: 128, offset: 10944)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1013, file: !658, line: 996, baseType: !202, size: 128, offset: 11072)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1013, file: !658, line: 997, baseType: !1012, size: 64, offset: 11200)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1013, file: !658, line: 1005, baseType: !202, size: 128, offset: 11264)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1013, file: !658, line: 1006, baseType: !202, size: 128, offset: 11392)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1013, file: !658, line: 1009, baseType: !1384, size: 64, offset: 11520)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1013, file: !658, line: 1010, baseType: !2077, size: 512, offset: 11584)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 512, elements: !1392)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1013, file: !658, line: 1011, baseType: !202, size: 128, offset: 12096)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1013, file: !658, line: 1012, baseType: !202, size: 128, offset: 12224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1013, file: !658, line: 1014, baseType: !2081, size: 64, offset: 12352)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2083, line: 26, size: 256, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2082, file: !2083, line: 27, baseType: !7, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2082, file: !2083, line: 28, baseType: !2087, size: 192, offset: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2088, line: 43, size: 192, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2087, file: !2088, line: 44, baseType: !696, size: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2087, file: !2088, line: 45, baseType: !202, size: 128, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1013, file: !658, line: 1017, baseType: !650, size: 64, offset: 12416)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1013, file: !658, line: 1020, baseType: !650, size: 64, offset: 12480)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1013, file: !658, line: 1023, baseType: !374, size: 64, offset: 12544)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1013, file: !658, line: 1025, baseType: !456, size: 64, offset: 12608)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1013, file: !658, line: 1026, baseType: !456, size: 64, offset: 12672)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1013, file: !658, line: 1031, baseType: !456, size: 64, offset: 12736)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1013, file: !658, line: 1032, baseType: !2099, size: 192, offset: 12800)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !658, line: 324, size: 192, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2099, file: !658, line: 326, baseType: !456, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2099, file: !658, line: 327, baseType: !456, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2099, file: !658, line: 328, baseType: !696, size: 32, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1013, file: !658, line: 1041, baseType: !352, size: 64, offset: 12992)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1013, file: !658, line: 1042, baseType: !352, size: 64, offset: 13056)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1013, file: !658, line: 1045, baseType: !456, size: 64, offset: 13120)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1013, file: !658, line: 1048, baseType: !456, size: 64, offset: 13184)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1013, file: !658, line: 1051, baseType: !352, size: 64, offset: 13248)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1013, file: !658, line: 1052, baseType: !352, size: 64, offset: 13312)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1013, file: !658, line: 1055, baseType: !2111, size: 640, offset: 13376)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2112, line: 132, size: 640, elements: !2113)
!2112 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2113 = !{!2114, !2120, !2121}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2111, file: !2112, line: 133, baseType: !2115, size: 576)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, size: 576, elements: !303)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2112, line: 117, size: 192, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2116, file: !2112, line: 118, baseType: !456, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2116, file: !2112, line: 119, baseType: !1196, size: 128, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2111, file: !2112, line: 134, baseType: !7, size: 32, offset: 576)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2111, file: !2112, line: 135, baseType: !7, size: 32, offset: 608)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1013, file: !658, line: 1058, baseType: !2123, size: 448, offset: 14016)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2112, line: 144, size: 448, elements: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2123, file: !2112, line: 145, baseType: !997, size: 128, align: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2123, file: !2112, line: 146, baseType: !683, size: 256, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2123, file: !2112, line: 147, baseType: !7, size: 32, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1013, file: !658, line: 1064, baseType: !1412, size: 64, offset: 14464)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1013, file: !658, line: 1067, baseType: !1412, size: 64, offset: 14528)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1013, file: !658, line: 1070, baseType: !1412, size: 64, offset: 14592)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1013, file: !658, line: 1074, baseType: !1439, size: 64, offset: 14656)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1013, file: !658, line: 1084, baseType: !2133, size: 128, offset: 14720)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, elements: !2134)
!2134 = !{!2135}
!2135 = !DISubrange(count: 16)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1013, file: !658, line: 1086, baseType: !2137, size: 64, offset: 14848)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !658, line: 55, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1013, file: !658, line: 1089, baseType: !2140, size: 64, offset: 14912)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2141, line: 12, size: 64, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2142 = !{!2143}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2140, file: !2141, line: 13, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2141, line: 8, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1013, file: !658, line: 1090, baseType: !2147, size: 128, offset: 14976)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2148, line: 13, size: 128, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2147, file: !2148, line: 14, baseType: !202, size: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1013, file: !658, line: 1097, baseType: !2152, size: 64, offset: 15104)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !658, line: 50, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1013, file: !658, line: 1100, baseType: !2155, size: 64, offset: 15168)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !658, line: 1100, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1013, file: !658, line: 1103, baseType: !2158, size: 64, offset: 15232)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !658, line: 53, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1013, file: !658, line: 1107, baseType: !2161, size: 64, offset: 15296)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !658, line: 56, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1013, file: !658, line: 1110, baseType: !2164, size: 64, offset: 15360)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2166, line: 93, size: 8768, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2217, !2226, !2227, !2229, !2230, !2231, !2234, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2272, !2273, !2280, !2290, !2293, !2294, !2297, !2298, !2299, !2300, !2301, !2302}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2165, file: !2166, line: 94, baseType: !1026, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2165, file: !2166, line: 95, baseType: !252, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2165, file: !2166, line: 96, baseType: !113, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2165, file: !2166, line: 97, baseType: !113, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2165, file: !2166, line: 98, baseType: !202, size: 128, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2165, file: !2166, line: 100, baseType: !990, size: 192, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2165, file: !2166, line: 103, baseType: !1012, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2165, file: !2166, line: 106, baseType: !2176, size: 192, offset: 512)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1592, line: 32, size: 192, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2176, file: !1592, line: 33, baseType: !202, size: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2176, file: !1592, line: 34, baseType: !2180, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2181, line: 25, baseType: !2182)
!2181 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2181, line: 23, size: 64, elements: !2183)
!2183 = !{!2184}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2182, file: !2181, line: 24, baseType: !1267, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2165, file: !2166, line: 109, baseType: !575, size: 64, offset: 704)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2165, file: !2166, line: 112, baseType: !113, size: 32, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2165, file: !2166, line: 114, baseType: !113, size: 32, offset: 800)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2165, file: !2166, line: 115, baseType: !1012, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2165, file: !2166, line: 118, baseType: !113, size: 32, offset: 896)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !2166, line: 119, baseType: !7, size: 32, offset: 928)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2165, file: !2166, line: 121, baseType: !2192, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2166, line: 80, size: 448, elements: !2194)
!2194 = !{!2195, !2196, !2202}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2193, file: !2166, line: 81, baseType: !252, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2193, file: !2166, line: 82, baseType: !2197, size: 128, offset: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2166, line: 75, size: 128, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2197, file: !2166, line: 76, baseType: !1012, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2197, file: !2166, line: 77, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2193, file: !2166, line: 83, baseType: !2082, size: 256, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2165, file: !2166, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2165, file: !2166, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2165, file: !2166, line: 138, baseType: !7, size: 32, offset: 1056)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2165, file: !2166, line: 139, baseType: !202, size: 128, offset: 1088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2165, file: !2166, line: 142, baseType: !1140, size: 512, offset: 1216)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2165, file: !2166, line: 143, baseType: !1148, size: 64, offset: 1728)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2165, file: !2166, line: 150, baseType: !2210, size: 256, offset: 1792)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2211, size: 256, elements: !2215)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2166, line: 38, size: 128, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2211, file: !2166, line: 39, baseType: !456, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2211, file: !2166, line: 40, baseType: !456, size: 64, offset: 64)
!2215 = !{!2216}
!2216 = !DISubrange(count: 2)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2165, file: !2166, line: 156, baseType: !2218, size: 192, offset: 2048)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2166, line: 66, size: 192, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2218, file: !2166, line: 67, baseType: !2221, size: 192)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2166, line: 47, size: 192, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2221, file: !2166, line: 48, baseType: !689, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2221, file: !2166, line: 49, baseType: !689, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2221, file: !2166, line: 50, baseType: !689, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2165, file: !2166, line: 160, baseType: !2111, size: 640, offset: 2240)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2165, file: !2166, line: 163, baseType: !2228, size: 256, offset: 2880)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1384, size: 256, elements: !1392)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2165, file: !2166, line: 169, baseType: !1384, size: 64, offset: 3136)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2165, file: !2166, line: 172, baseType: !113, size: 32, offset: 3200)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2165, file: !2166, line: 174, baseType: !2232, size: 64, offset: 3264)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2166, line: 174, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2165, file: !2166, line: 185, baseType: !2235, size: 64, offset: 3328)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !425, line: 860, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 853, size: 64, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2236, file: !425, line: 858, baseType: !424, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2236, file: !425, line: 859, baseType: !232, size: 32, offset: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2165, file: !2166, line: 186, baseType: !456, size: 64, offset: 3392)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2165, file: !2166, line: 186, baseType: !456, size: 64, offset: 3456)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2165, file: !2166, line: 186, baseType: !456, size: 64, offset: 3520)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2165, file: !2166, line: 186, baseType: !456, size: 64, offset: 3584)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2165, file: !2166, line: 187, baseType: !456, size: 64, offset: 3648)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2165, file: !2166, line: 188, baseType: !456, size: 64, offset: 3712)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2165, file: !2166, line: 189, baseType: !2099, size: 192, offset: 3776)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2165, file: !2166, line: 190, baseType: !352, size: 64, offset: 3968)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2165, file: !2166, line: 190, baseType: !352, size: 64, offset: 4032)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2165, file: !2166, line: 190, baseType: !352, size: 64, offset: 4096)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2165, file: !2166, line: 190, baseType: !352, size: 64, offset: 4160)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2165, file: !2166, line: 191, baseType: !352, size: 64, offset: 4224)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2165, file: !2166, line: 191, baseType: !352, size: 64, offset: 4288)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2165, file: !2166, line: 191, baseType: !352, size: 64, offset: 4352)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2165, file: !2166, line: 191, baseType: !352, size: 64, offset: 4416)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2165, file: !2166, line: 192, baseType: !352, size: 64, offset: 4480)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2165, file: !2166, line: 192, baseType: !352, size: 64, offset: 4544)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2165, file: !2166, line: 192, baseType: !352, size: 64, offset: 4608)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2165, file: !2166, line: 192, baseType: !352, size: 64, offset: 4672)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2165, file: !2166, line: 193, baseType: !352, size: 64, offset: 4736)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2165, file: !2166, line: 193, baseType: !352, size: 64, offset: 4800)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2165, file: !2166, line: 194, baseType: !2262, size: 448, offset: 4864)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2263, line: 12, size: 448, elements: !2264)
!2263 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2262, file: !2263, line: 15, baseType: !456, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2262, file: !2263, line: 17, baseType: !456, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2262, file: !2263, line: 19, baseType: !456, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2262, file: !2263, line: 21, baseType: !456, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2262, file: !2263, line: 29, baseType: !456, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2262, file: !2263, line: 35, baseType: !456, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2262, file: !2263, line: 44, baseType: !456, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2165, file: !2166, line: 202, baseType: !458, size: 64, offset: 5312)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2165, file: !2166, line: 213, baseType: !2274, size: 2048, offset: 5376)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, size: 2048, elements: !2134)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2276, line: 43, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2275, file: !2276, line: 44, baseType: !351, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2275, file: !2276, line: 45, baseType: !351, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2165, file: !2166, line: 216, baseType: !2281, size: 448, offset: 7424)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2166, line: 30, size: 448, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2281, file: !2166, line: 31, baseType: !113, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2281, file: !2166, line: 32, baseType: !338, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2281, file: !2166, line: 33, baseType: !352, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2281, file: !2166, line: 34, baseType: !456, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2281, file: !2166, line: 34, baseType: !456, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2281, file: !2166, line: 35, baseType: !352, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2281, file: !2166, line: 35, baseType: !352, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2165, file: !2166, line: 219, baseType: !2291, size: 64, offset: 7872)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2166, line: 219, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2165, file: !2166, line: 222, baseType: !7, size: 32, offset: 7936)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2165, file: !2166, line: 223, baseType: !2295, size: 64, offset: 8000)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2166, line: 223, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2165, file: !2166, line: 230, baseType: !1504, size: 8, offset: 8064)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2165, file: !2166, line: 231, baseType: !1473, size: 16, offset: 8080)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2165, file: !2166, line: 232, baseType: !1473, size: 16, offset: 8096)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2165, file: !2166, line: 234, baseType: !1316, size: 64, offset: 8128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2165, file: !2166, line: 237, baseType: !683, size: 256, offset: 8192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2165, file: !2166, line: 243, baseType: !897, size: 320, offset: 8448)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1013, file: !658, line: 1111, baseType: !2304, size: 64, offset: 15424)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2166, line: 20, size: 16640, elements: !2306)
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2305, file: !2166, line: 21, baseType: !232, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2305, file: !2166, line: 22, baseType: !1026, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2305, file: !2166, line: 23, baseType: !990, size: 192, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2305, file: !2166, line: 24, baseType: !2311, size: 16384, offset: 256)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 16384, elements: !307)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1592, line: 51, size: 256, elements: !2313)
!2313 = !{!2314}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2312, file: !1592, line: 52, baseType: !2315, size: 256)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1592, line: 37, size: 256, elements: !2316)
!2316 = !{!2317, !2324, !2325, !2331}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2315, file: !1592, line: 39, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2319, line: 83, baseType: !2320)
!2319 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2319, line: 82, baseType: !2322)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !113}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2315, file: !1592, line: 40, baseType: !352, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2315, file: !1592, line: 46, baseType: !2326, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2319, line: 86, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2319, line: 85, baseType: !2329)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2315, file: !1592, line: 48, baseType: !2180, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1013, file: !658, line: 1112, baseType: !2180, size: 64, offset: 15488)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1013, file: !658, line: 1113, baseType: !2180, size: 64, offset: 15552)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1013, file: !658, line: 1115, baseType: !2180, size: 64, offset: 15616)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1013, file: !658, line: 1116, baseType: !2176, size: 192, offset: 15680)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1013, file: !658, line: 1117, baseType: !352, size: 64, offset: 15872)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1013, file: !658, line: 1118, baseType: !349, size: 64, offset: 15936)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1013, file: !658, line: 1119, baseType: !7, size: 32, offset: 16000)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1013, file: !658, line: 1121, baseType: !1000, size: 64, offset: 16064)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1013, file: !658, line: 1125, baseType: !2341, size: 64, offset: 16128)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !658, line: 43, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1013, file: !658, line: 1127, baseType: !389, size: 32, offset: 16192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1013, file: !658, line: 1128, baseType: !7, size: 32, offset: 16224)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1013, file: !658, line: 1130, baseType: !2346, size: 128, offset: 16256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2347, line: 37, size: 128, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2348 = !{!2349, !2350, !2351}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2346, file: !2347, line: 38, baseType: !113, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2346, file: !2347, line: 39, baseType: !252, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2346, file: !2347, line: 40, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2347, line: 24, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1013, file: !658, line: 1131, baseType: !2355, size: 256, offset: 16384)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2356, line: 12, size: 256, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2355, file: !2356, line: 13, baseType: !302, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2355, file: !2356, line: 14, baseType: !352, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2355, file: !2356, line: 15, baseType: !352, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2355, file: !2356, line: 16, baseType: !1504, size: 8, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1013, file: !658, line: 1134, baseType: !456, size: 64, offset: 16640)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1013, file: !658, line: 1135, baseType: !456, size: 64, offset: 16704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1013, file: !658, line: 1138, baseType: !232, size: 32, offset: 16768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1013, file: !658, line: 1141, baseType: !696, size: 32, offset: 16800)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1013, file: !658, line: 1143, baseType: !2367, size: 64, offset: 16832)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !658, line: 735, size: 64, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2367, file: !658, line: 736, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1013, file: !658, line: 1147, baseType: !1199, size: 128, offset: 16896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1013, file: !658, line: 1149, baseType: !1012, size: 64, offset: 17024)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1013, file: !658, line: 1151, baseType: !2374, size: 64, offset: 17088)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !658, line: 1151, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1013, file: !658, line: 1188, baseType: !374, size: 64, offset: 17152)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1013, file: !658, line: 1191, baseType: !2378, size: 64, offset: 17216)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !658, line: 44, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1013, file: !658, line: 1194, baseType: !2381, size: 64, offset: 17280)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !658, line: 45, flags: DIFlagFwdDecl)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1013, file: !658, line: 1197, baseType: !2384, size: 64, offset: 17344)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !658, line: 61, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1013, file: !658, line: 1199, baseType: !2387, size: 64, offset: 17408)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2389, line: 99, size: 128, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2388, file: !2389, line: 100, baseType: !687, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2388, file: !2389, line: 101, baseType: !252, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2388, file: !2389, line: 103, baseType: !272, size: 16, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1013, file: !658, line: 1202, baseType: !2395, size: 64, offset: 17472)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !658, line: 48, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1013, file: !658, line: 1205, baseType: !352, size: 64, offset: 17536)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1013, file: !658, line: 1206, baseType: !2399, size: 64, offset: 17600)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1592, line: 14, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1592, line: 12, size: 384, elements: !2402)
!2402 = !{!2403}
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2401, file: !1592, line: 13, baseType: !2404, size: 384)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2401, file: !1592, line: 13, size: 384, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2404, file: !1592, line: 13, baseType: !113, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2404, file: !1592, line: 13, baseType: !113, size: 32, offset: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2404, file: !1592, line: 13, baseType: !113, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2404, file: !1592, line: 13, baseType: !2410, size: 256, offset: 128)
!2410 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2411, line: 37, size: 256, elements: !2412)
!2411 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2412 = !{!2413, !2418, !2431, !2437, !2446, !2473, !2478}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2410, file: !2411, line: 42, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 39, size: 64, elements: !2415)
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2414, file: !2411, line: 40, baseType: !2065, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2414, file: !2411, line: 41, baseType: !395, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2410, file: !2411, line: 50, baseType: !2419, size: 192)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 45, size: 192, elements: !2420)
!2420 = !{!2421, !2423, !2424, !2430}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2419, file: !2411, line: 46, baseType: !2422, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !336, line: 95, baseType: !113)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2419, file: !2411, line: 47, baseType: !113, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2419, file: !2411, line: 48, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2411, line: 11, baseType: !2426)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2411, line: 8, size: 64, elements: !2427)
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2426, file: !2411, line: 9, baseType: !113, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2426, file: !2411, line: 10, baseType: !374, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2419, file: !2411, line: 49, baseType: !113, size: 32, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2410, file: !2411, line: 57, baseType: !2432, size: 128)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 53, size: 128, elements: !2433)
!2433 = !{!2434, !2435, !2436}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2432, file: !2411, line: 54, baseType: !2065, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2432, file: !2411, line: 55, baseType: !395, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2432, file: !2411, line: 56, baseType: !2425, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2410, file: !2411, line: 66, baseType: !2438, size: 256)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 60, size: 256, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2445}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2438, file: !2411, line: 61, baseType: !2065, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2438, file: !2411, line: 62, baseType: !395, size: 32, offset: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2438, file: !2411, line: 63, baseType: !113, size: 32, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2438, file: !2411, line: 64, baseType: !2444, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !336, line: 94, baseType: !337)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2438, file: !2411, line: 65, baseType: !2444, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2410, file: !2411, line: 105, baseType: !2447, size: 256)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 69, size: 256, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2447, file: !2411, line: 70, baseType: !374, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2447, file: !2411, line: 79, baseType: !2451, size: 192, offset: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2447, file: !2411, line: 79, size: 192, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2462, !2467}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2451, file: !2411, line: 81, baseType: !113, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2451, file: !2411, line: 86, baseType: !1473, size: 16)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2451, file: !2411, line: 92, baseType: !2456, size: 192)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !2411, line: 88, size: 192, elements: !2457)
!2457 = !{!2458, !2460, !2461}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2456, file: !2411, line: 89, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 64, elements: !1183)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2456, file: !2411, line: 90, baseType: !374, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2456, file: !2411, line: 91, baseType: !374, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2451, file: !2411, line: 97, baseType: !2463, size: 96)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !2411, line: 94, size: 96, elements: !2464)
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2463, file: !2411, line: 95, baseType: !2459, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2463, file: !2411, line: 96, baseType: !453, size: 32, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2451, file: !2411, line: 103, baseType: !2468, size: 128)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2451, file: !2411, line: 99, size: 128, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2468, file: !2411, line: 100, baseType: !352, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2468, file: !2411, line: 101, baseType: !453, size: 32, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2468, file: !2411, line: 102, baseType: !453, size: 32, offset: 96)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2410, file: !2411, line: 111, baseType: !2474, size: 128)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 108, size: 128, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2474, file: !2411, line: 109, baseType: !338, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2474, file: !2411, line: 110, baseType: !113, size: 32, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2410, file: !2411, line: 118, baseType: !2479, size: 128)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2410, file: !2411, line: 114, size: 128, elements: !2480)
!2480 = !{!2481, !2482, !2483}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2479, file: !2411, line: 115, baseType: !374, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2479, file: !2411, line: 116, baseType: !113, size: 32, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2479, file: !2411, line: 117, baseType: !7, size: 32, offset: 96)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1013, file: !658, line: 1208, baseType: !2262, size: 448, offset: 17664)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1013, file: !658, line: 1215, baseType: !456, size: 64, offset: 18112)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1013, file: !658, line: 1217, baseType: !456, size: 64, offset: 18176)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1013, file: !658, line: 1219, baseType: !456, size: 64, offset: 18240)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1013, file: !658, line: 1223, baseType: !2489, size: 64, offset: 18304)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2490, line: 99, baseType: !2491)
!2490 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2490, line: 99, size: 64, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2491, file: !2490, line: 99, baseType: !1267, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1013, file: !658, line: 1225, baseType: !424, size: 32, offset: 18368)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1013, file: !658, line: 1226, baseType: !113, size: 32, offset: 18400)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1013, file: !658, line: 1227, baseType: !113, size: 32, offset: 18432)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1013, file: !658, line: 1231, baseType: !2498, size: 64, offset: 18496)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !658, line: 1231, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1013, file: !658, line: 1233, baseType: !202, size: 128, offset: 18560)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1013, file: !658, line: 1240, baseType: !2502, size: 64, offset: 18688)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !658, line: 62, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1013, file: !658, line: 1242, baseType: !2505, size: 64, offset: 18752)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !658, line: 1242, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1013, file: !658, line: 1244, baseType: !202, size: 128, offset: 18816)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1013, file: !658, line: 1245, baseType: !2509, size: 64, offset: 18944)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !658, line: 51, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1013, file: !658, line: 1246, baseType: !683, size: 256, offset: 19008)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1013, file: !658, line: 1247, baseType: !7, size: 32, offset: 19264)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1013, file: !658, line: 1250, baseType: !2514, size: 64, offset: 19328)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !658, line: 57, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1013, file: !658, line: 1251, baseType: !683, size: 256, offset: 19392)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1013, file: !658, line: 1252, baseType: !202, size: 128, offset: 19648)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1013, file: !658, line: 1259, baseType: !1754, size: 64, offset: 19776)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1013, file: !658, line: 1260, baseType: !1473, size: 16, offset: 19840)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1013, file: !658, line: 1261, baseType: !1473, size: 16, offset: 19856)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1013, file: !658, line: 1314, baseType: !2522, size: 64, offset: 19904)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2524, line: 62, size: 256, align: 256, elements: !2525)
!2524 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2525 = !{!2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2523, file: !2524, line: 75, baseType: !453, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2523, file: !2524, line: 90, baseType: !453, size: 32, offset: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2523, file: !2524, line: 112, baseType: !457, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2523, file: !2524, line: 132, baseType: !453, size: 32, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2523, file: !2524, line: 140, baseType: !453, size: 32, offset: 160)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2523, file: !2524, line: 149, baseType: !453, size: 32, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2523, file: !2524, line: 154, baseType: !2533, offset: 224)
!2533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, elements: !1405)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1013, file: !658, line: 1315, baseType: !452, size: 32, offset: 19968)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1013, file: !658, line: 1316, baseType: !452, size: 32, offset: 20000)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1013, file: !658, line: 1321, baseType: !352, size: 64, offset: 20032)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1013, file: !658, line: 1325, baseType: !113, size: 32, offset: 20096)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1013, file: !658, line: 1326, baseType: !113, size: 32, offset: 20128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1013, file: !658, line: 1327, baseType: !113, size: 32, offset: 20160)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1013, file: !658, line: 1328, baseType: !113, size: 32, offset: 20192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1013, file: !658, line: 1329, baseType: !997, size: 128, align: 64, offset: 20224)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1013, file: !658, line: 1332, baseType: !2543, size: 128, offset: 20352)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2544, line: 51, size: 128, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2545 = !{!2546, !2551, !2552}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2543, file: !2544, line: 60, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2548, line: 7, size: 64, elements: !2549)
!2548 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2549 = !{!2550}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2547, file: !2548, line: 12, baseType: !1264, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2543, file: !2544, line: 63, baseType: !1504, size: 8, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2543, file: !2544, line: 70, baseType: !1504, size: 8, offset: 72)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1013, file: !658, line: 1335, baseType: !1793, size: 64, offset: 20480)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1013, file: !658, line: 1337, baseType: !2555, size: 128, offset: 20544)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2544, line: 39, size: 128, elements: !2556)
!2556 = !{!2557, !2618, !2619}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2555, file: !2544, line: 40, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !755, line: 74, size: 512, align: 128, elements: !2560)
!2560 = !{!2561, !2562, !2612, !2617}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2559, file: !755, line: 75, baseType: !352, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !755, line: 83, baseType: !2563, size: 320, offset: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !755, line: 83, size: 320, elements: !2564)
!2564 = !{!2565, !2586, !2600, !2604, !2611}
!2565 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !755, line: 84, baseType: !2566, size: 320)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2563, file: !755, line: 84, size: 320, elements: !2567)
!2567 = !{!2568, !2579, !2580, !2585}
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !755, line: 90, baseType: !2569, size: 128)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2566, file: !755, line: 90, size: 128, elements: !2570)
!2570 = !{!2571, !2572, !2577, !2578}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2569, file: !755, line: 91, baseType: !202, size: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !2569, file: !755, line: 94, baseType: !2573, size: 128)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2569, file: !755, line: 94, size: 128, elements: !2574)
!2574 = !{!2575, !2576}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2573, file: !755, line: 96, baseType: !374, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2573, file: !755, line: 98, baseType: !7, size: 32, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2569, file: !755, line: 102, baseType: !202, size: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2569, file: !755, line: 103, baseType: !202, size: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2566, file: !755, line: 106, baseType: !379, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !755, line: 107, baseType: !2581, size: 64, offset: 192)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2566, file: !755, line: 107, size: 64, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2581, file: !755, line: 108, baseType: !352, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2581, file: !755, line: 109, baseType: !352, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2566, file: !755, line: 117, baseType: !352, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !755, line: 119, baseType: !2587, size: 320)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2563, file: !755, line: 119, size: 320, elements: !2588)
!2588 = !{!2589, !2590, !2593, !2594, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2587, file: !755, line: 124, baseType: !352, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2587, file: !755, line: 125, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !755, line: 125, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2587, file: !755, line: 126, baseType: !352, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2587, file: !755, line: 127, baseType: !352, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !755, line: 128, baseType: !2596, size: 64, offset: 256)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2587, file: !755, line: 128, size: 64, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2596, file: !755, line: 133, baseType: !352, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2596, file: !755, line: 138, baseType: !687, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !755, line: 141, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2563, file: !755, line: 141, size: 64, elements: !2602)
!2602 = !{!2603}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2601, file: !755, line: 142, baseType: !352, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !755, line: 144, baseType: !2605, size: 128)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2563, file: !755, line: 144, size: 128, elements: !2606)
!2606 = !{!2607, !2610}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2605, file: !755, line: 146, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !755, line: 146, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2605, file: !755, line: 147, baseType: !374, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2563, file: !755, line: 161, baseType: !997, size: 128, align: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !755, line: 164, baseType: !2613, size: 32, offset: 384)
!2613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !755, line: 164, size: 32, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2613, file: !755, line: 169, baseType: !252, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2613, file: !755, line: 177, baseType: !7, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2559, file: !755, line: 181, baseType: !252, size: 32, offset: 416)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2555, file: !2544, line: 42, baseType: !453, size: 32, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2555, file: !2544, line: 43, baseType: !453, size: 32, offset: 96)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1013, file: !658, line: 1340, baseType: !2621, size: 64, offset: 20672)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !658, line: 69, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1013, file: !658, line: 1351, baseType: !113, size: 32, offset: 20736)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1013, file: !658, line: 1352, baseType: !113, size: 32, offset: 20768)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1013, file: !658, line: 1354, baseType: !352, size: 64, offset: 20800)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1013, file: !658, line: 1364, baseType: !456, size: 64, offset: 20864)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1013, file: !658, line: 1365, baseType: !456, size: 64, offset: 20928)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1013, file: !658, line: 1412, baseType: !352, size: 64, offset: 20992)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1013, file: !658, line: 1453, baseType: !2630, size: 64, offset: 21056)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !658, line: 1453, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1013, file: !658, line: 1457, baseType: !2633, size: 64, offset: 21120)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2635)
!2635 = !{!2636, !2637, !2656, !2659, !2660, !2693, !2703}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2634, file: !44, line: 62, baseType: !43, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !44, line: 64, baseType: !2638, size: 192, offset: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !44, line: 64, size: 192, elements: !2639)
!2639 = !{!2640, !2651}
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !44, line: 65, baseType: !2641, size: 192)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !44, line: 65, size: 192, elements: !2642)
!2642 = !{!2643, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2641, file: !44, line: 66, baseType: !2644, size: 128)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2645, line: 50, size: 128, elements: !2646)
!2645 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2646 = !{!2647, !2648, !2649}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2644, file: !2645, line: 52, baseType: !352, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2644, file: !2645, line: 54, baseType: !7, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2644, file: !2645, line: 55, baseType: !7, size: 32, offset: 96)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2641, file: !44, line: 67, baseType: !352, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !44, line: 70, baseType: !2652, size: 192)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !44, line: 70, size: 192, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2652, file: !44, line: 71, baseType: !997, size: 128, align: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2652, file: !44, line: 72, baseType: !352, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2634, file: !44, line: 76, baseType: !2657, size: 64, offset: 256)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2634, file: !44, line: 77, baseType: !352, size: 64, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2634, file: !44, line: 79, baseType: !2661, size: 64, offset: 384)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2645, line: 25, size: 256, elements: !2663)
!2663 = !{!2664, !2670, !2674}
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2662, file: !2645, line: 26, baseType: !2665, size: 128)
!2665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2662, file: !2645, line: 26, size: 128, elements: !2666)
!2666 = !{!2667, !2669}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2665, file: !2645, line: 27, baseType: !2668, size: 128)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 128, elements: !2134)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2665, file: !2645, line: 28, baseType: !2668, size: 128)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !2645, line: 31, baseType: !2671, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2645, line: 23, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2662, file: !2645, line: 33, baseType: !2675, size: 64, offset: 192)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2662, file: !2645, line: 33, size: 64, elements: !2676)
!2676 = !{!2677, !2683, !2688}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2675, file: !2645, line: 38, baseType: !2678, size: 64)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2645, line: 34, size: 64, elements: !2679)
!2679 = !{!2680, !2681, !2682}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2678, file: !2645, line: 35, baseType: !1447, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2678, file: !2645, line: 36, baseType: !260, size: 8, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2678, file: !2645, line: 37, baseType: !260, size: 8, offset: 40)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2675, file: !2645, line: 42, baseType: !2684, size: 16)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2645, line: 39, size: 16, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2684, file: !2645, line: 40, baseType: !260, size: 8)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2684, file: !2645, line: 41, baseType: !260, size: 8, offset: 8)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2675, file: !2645, line: 46, baseType: !2689, size: 16)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2645, line: 43, size: 16, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2689, file: !2645, line: 44, baseType: !260, size: 8)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2689, file: !2645, line: 45, baseType: !260, size: 8, offset: 8)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2634, file: !44, line: 81, baseType: !2694, size: 64, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2696)
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2702}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2695, file: !44, line: 86, baseType: !2657, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2695, file: !44, line: 87, baseType: !352, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2695, file: !44, line: 88, baseType: !352, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2695, file: !44, line: 89, baseType: !352, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2695, file: !44, line: 90, baseType: !1504, size: 8, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2695, file: !44, line: 92, baseType: !2694, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2634, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1013, file: !658, line: 1463, baseType: !2705, offset: 21184)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !658, line: 739, elements: !587)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1013, file: !658, line: 1470, baseType: !997, size: 128, align: 64, offset: 21184)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1013, file: !658, line: 1471, baseType: !1026, size: 32, offset: 21312)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1013, file: !658, line: 1472, baseType: !113, size: 32, offset: 21344)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1013, file: !658, line: 1474, baseType: !1012, size: 64, offset: 21376)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1013, file: !658, line: 1475, baseType: !2711, size: 320, offset: 21440)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2712, line: 11, size: 320, elements: !2713)
!2712 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2713 = !{!2714, !2715, !2716, !2721}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2711, file: !2712, line: 16, baseType: !579, size: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2711, file: !2712, line: 17, baseType: !352, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2711, file: !2712, line: 18, baseType: !2717, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2711, file: !2712, line: 19, baseType: !452, size: 32, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1013, file: !658, line: 1478, baseType: !2723, size: 64, offset: 21760)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2725, line: 49, size: 512, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2733, !2734, !2735, !2737}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2724, file: !2725, line: 50, baseType: !2723, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2724, file: !2725, line: 51, baseType: !374, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2724, file: !2725, line: 52, baseType: !352, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2724, file: !2725, line: 53, baseType: !352, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2724, file: !2725, line: 54, baseType: !2732, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2724, file: !2725, line: 56, baseType: !7, size: 32, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2724, file: !2725, line: 58, baseType: !7, size: 32, offset: 352)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2724, file: !2725, line: 59, baseType: !2736, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !203, line: 159, baseType: !456)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2724, file: !2725, line: 60, baseType: !1932, size: 64, offset: 448)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1013, file: !658, line: 1482, baseType: !1026, size: 32, offset: 21824)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1013, file: !658, line: 1489, baseType: !374, size: 64, offset: 21888)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1013, file: !658, line: 1504, baseType: !374, size: 64, offset: 21952)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1013, file: !658, line: 1505, baseType: !457, size: 64, offset: 22016)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1013, file: !658, line: 1506, baseType: !456, size: 64, offset: 22080)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1013, file: !658, line: 1507, baseType: !457, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1013, file: !658, line: 1508, baseType: !457, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1013, file: !658, line: 1509, baseType: !457, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1013, file: !658, line: 1510, baseType: !997, size: 128, align: 64, offset: 22208)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1013, file: !658, line: 1511, baseType: !113, size: 32, offset: 22336)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1013, file: !658, line: 1515, baseType: !2749, size: 64, offset: 22400)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1040, line: 56, size: 64, elements: !2750)
!2750 = !{!2751}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2749, file: !1040, line: 57, baseType: !1043, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1013, file: !658, line: 1518, baseType: !2749, size: 64, offset: 22464)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1013, file: !658, line: 1528, baseType: !997, size: 128, align: 64, offset: 22528)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1013, file: !658, line: 1552, baseType: !2755, size: 35328, offset: 23040)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2756, line: 430, size: 35328, elements: !2757)
!2756 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2757 = !{!2758, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2787, !2788, !2789, !2790, !2791, !2792, !2795, !2796, !2797, !2798}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2755, file: !2756, line: 432, baseType: !2759, size: 192)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2760, size: 192, elements: !303)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2761, line: 16, size: 64, elements: !2762)
!2761 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2760, file: !2761, line: 17, baseType: !270, size: 16)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2760, file: !2761, line: 18, baseType: !270, size: 16, offset: 16)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2760, file: !2761, line: 19, baseType: !270, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2760, file: !2761, line: 19, baseType: !270, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2760, file: !2761, line: 19, baseType: !270, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2760, file: !2761, line: 19, baseType: !270, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2760, file: !2761, line: 19, baseType: !270, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2760, file: !2761, line: 20, baseType: !270, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2760, file: !2761, line: 20, baseType: !270, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2760, file: !2761, line: 20, baseType: !270, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2760, file: !2761, line: 20, baseType: !270, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2760, file: !2761, line: 20, baseType: !270, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2760, file: !2761, line: 20, baseType: !270, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2755, file: !2756, line: 436, baseType: !352, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2755, file: !2756, line: 440, baseType: !272, size: 16, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2755, file: !2756, line: 441, baseType: !272, size: 16, offset: 272)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2755, file: !2756, line: 442, baseType: !272, size: 16, offset: 288)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2755, file: !2756, line: 443, baseType: !272, size: 16, offset: 304)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2755, file: !2756, line: 447, baseType: !352, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2755, file: !2756, line: 448, baseType: !352, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2755, file: !2756, line: 459, baseType: !2784, size: 256, offset: 448)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2785, size: 256, elements: !1392)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2756, line: 428, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2755, file: !2756, line: 461, baseType: !352, size: 64, offset: 704)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2755, file: !2756, line: 463, baseType: !352, size: 64, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2755, file: !2756, line: 465, baseType: !352, size: 64, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2755, file: !2756, line: 466, baseType: !352, size: 64, offset: 896)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2755, file: !2756, line: 467, baseType: !352, size: 64, offset: 960)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2755, file: !2756, line: 473, baseType: !2793, size: 64, offset: 1024)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2756, line: 10, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2755, file: !2756, line: 480, baseType: !352, size: 64, offset: 1088)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2755, file: !2756, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2755, file: !2756, line: 491, baseType: !452, size: 32, offset: 1184)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2755, file: !2756, line: 501, baseType: !2799, size: 33792, offset: 1536)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2800, line: 448, size: 33792, elements: !2801)
!2800 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2801 = !{!2802, !2803, !2804, !2966, !2967, !2973, !2974}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2799, file: !2800, line: 461, baseType: !7, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2799, file: !2800, line: 468, baseType: !352, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2799, file: !2800, line: 476, baseType: !2805, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2800, line: 356, size: 33280, align: 512, elements: !2807)
!2807 = !{!2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2806, file: !2800, line: 358, baseType: !7, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2806, file: !2800, line: 361, baseType: !7, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2806, file: !2800, line: 364, baseType: !456, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2806, file: !2800, line: 367, baseType: !456, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2806, file: !2800, line: 370, baseType: !456, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2806, file: !2800, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2806, file: !2800, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2806, file: !2800, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2806, file: !2800, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2806, file: !2800, line: 397, baseType: !2818, size: 32768, offset: 512)
!2818 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2800, line: 348, size: 32768, elements: !2819)
!2819 = !{!2820, !2835, !2872, !2949, !2962}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2818, file: !2800, line: 349, baseType: !2821, size: 896)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2800, line: 12, size: 896, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2834}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2821, file: !2800, line: 13, baseType: !452, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2821, file: !2800, line: 14, baseType: !452, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2821, file: !2800, line: 15, baseType: !452, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2821, file: !2800, line: 16, baseType: !452, size: 32, offset: 96)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2821, file: !2800, line: 17, baseType: !452, size: 32, offset: 128)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2821, file: !2800, line: 18, baseType: !452, size: 32, offset: 160)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2821, file: !2800, line: 19, baseType: !452, size: 32, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2821, file: !2800, line: 22, baseType: !2831, size: 640, offset: 224)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 640, elements: !2832)
!2832 = !{!2833}
!2833 = !DISubrange(count: 20)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2821, file: !2800, line: 25, baseType: !452, size: 32, offset: 864)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2818, file: !2800, line: 350, baseType: !2836, size: 4096, align: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2800, line: 34, size: 4096, align: 128, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2857, !2858, !2859, !2861, !2863, !2867}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2836, file: !2800, line: 35, baseType: !270, size: 16)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2836, file: !2800, line: 36, baseType: !270, size: 16, offset: 16)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2836, file: !2800, line: 37, baseType: !270, size: 16, offset: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2836, file: !2800, line: 38, baseType: !270, size: 16, offset: 48)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !2836, file: !2800, line: 39, baseType: !2843, size: 128, offset: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2836, file: !2800, line: 39, size: 128, elements: !2844)
!2844 = !{!2845, !2850}
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2843, file: !2800, line: 40, baseType: !2846, size: 128)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2843, file: !2800, line: 40, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2846, file: !2800, line: 41, baseType: !456, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2846, file: !2800, line: 42, baseType: !456, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !2843, file: !2800, line: 44, baseType: !2851, size: 128)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2843, file: !2800, line: 44, size: 128, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2851, file: !2800, line: 45, baseType: !452, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2851, file: !2800, line: 46, baseType: !452, size: 32, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2851, file: !2800, line: 47, baseType: !452, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2851, file: !2800, line: 48, baseType: !452, size: 32, offset: 96)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2836, file: !2800, line: 51, baseType: !452, size: 32, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2836, file: !2800, line: 52, baseType: !452, size: 32, offset: 224)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2836, file: !2800, line: 55, baseType: !2860, size: 1024, offset: 256)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 1024, elements: !465)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2836, file: !2800, line: 58, baseType: !2862, size: 2048, offset: 1280)
!2862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 2048, elements: !307)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2836, file: !2800, line: 60, baseType: !2864, size: 384, offset: 3328)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 384, elements: !2865)
!2865 = !{!2866}
!2866 = !DISubrange(count: 12)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !2836, file: !2800, line: 62, baseType: !2868, size: 384, offset: 3712)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2836, file: !2800, line: 62, size: 384, elements: !2869)
!2869 = !{!2870, !2871}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2868, file: !2800, line: 63, baseType: !2864, size: 384)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2868, file: !2800, line: 64, baseType: !2864, size: 384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2818, file: !2800, line: 351, baseType: !2873, size: 1088)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2800, line: 79, size: 1088, elements: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2948}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2873, file: !2800, line: 80, baseType: !452, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2873, file: !2800, line: 81, baseType: !452, size: 32, offset: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2873, file: !2800, line: 82, baseType: !452, size: 32, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2873, file: !2800, line: 83, baseType: !452, size: 32, offset: 96)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2873, file: !2800, line: 84, baseType: !452, size: 32, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2873, file: !2800, line: 85, baseType: !452, size: 32, offset: 160)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2873, file: !2800, line: 86, baseType: !452, size: 32, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2873, file: !2800, line: 88, baseType: !2831, size: 640, offset: 224)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2873, file: !2800, line: 89, baseType: !260, size: 8, offset: 864)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2873, file: !2800, line: 90, baseType: !260, size: 8, offset: 872)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2873, file: !2800, line: 91, baseType: !260, size: 8, offset: 880)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2873, file: !2800, line: 92, baseType: !260, size: 8, offset: 888)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2873, file: !2800, line: 93, baseType: !260, size: 8, offset: 896)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2873, file: !2800, line: 94, baseType: !260, size: 8, offset: 904)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2873, file: !2800, line: 95, baseType: !2890, size: 64, offset: 960)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2892, line: 11, size: 128, elements: !2893)
!2892 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2891, file: !2892, line: 12, baseType: !338, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2891, file: !2892, line: 13, baseType: !2896, size: 64, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2898, line: 103, size: 1344, elements: !2899)
!2898 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2928, !2929, !2930}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2897, file: !2898, line: 109, baseType: !352, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2897, file: !2898, line: 110, baseType: !352, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2897, file: !2898, line: 111, baseType: !352, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2897, file: !2898, line: 112, baseType: !352, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2897, file: !2898, line: 113, baseType: !352, size: 64, offset: 256)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2897, file: !2898, line: 114, baseType: !352, size: 64, offset: 320)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2897, file: !2898, line: 117, baseType: !352, size: 64, offset: 384)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2897, file: !2898, line: 118, baseType: !352, size: 64, offset: 448)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2897, file: !2898, line: 119, baseType: !352, size: 64, offset: 512)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2897, file: !2898, line: 120, baseType: !352, size: 64, offset: 576)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2897, file: !2898, line: 121, baseType: !352, size: 64, offset: 640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2897, file: !2898, line: 122, baseType: !352, size: 64, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2897, file: !2898, line: 123, baseType: !352, size: 64, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2897, file: !2898, line: 124, baseType: !352, size: 64, offset: 832)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2897, file: !2898, line: 125, baseType: !352, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2897, file: !2898, line: 139, baseType: !352, size: 64, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2897, file: !2898, line: 142, baseType: !352, size: 64, offset: 1024)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2897, file: !2898, line: 144, baseType: !2918, size: 64, offset: 1088)
!2918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2897, file: !2898, line: 144, size: 64, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2918, file: !2898, line: 146, baseType: !270, size: 16)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2918, file: !2898, line: 148, baseType: !456, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2918, file: !2898, line: 150, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2898, line: 59, size: 64, elements: !2924)
!2924 = !{!2925, !2926, !2927}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2923, file: !2898, line: 61, baseType: !456, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2923, file: !2898, line: 63, baseType: !456, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2923, file: !2898, line: 65, baseType: !456, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2897, file: !2898, line: 153, baseType: !352, size: 64, offset: 1152)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2897, file: !2898, line: 154, baseType: !352, size: 64, offset: 1216)
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !2897, file: !2898, line: 156, baseType: !2931, size: 64, offset: 1280)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2897, file: !2898, line: 156, size: 64, elements: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2931, file: !2898, line: 158, baseType: !270, size: 16)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2931, file: !2898, line: 160, baseType: !456, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2931, file: !2898, line: 162, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2898, line: 69, size: 64, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2936, file: !2898, line: 71, baseType: !456, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2936, file: !2898, line: 73, baseType: !456, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2936, file: !2898, line: 75, baseType: !456, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2936, file: !2898, line: 77, baseType: !456, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2936, file: !2898, line: 80, baseType: !456, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2936, file: !2898, line: 83, baseType: !456, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2936, file: !2898, line: 86, baseType: !456, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2936, file: !2898, line: 88, baseType: !456, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2936, file: !2898, line: 93, baseType: !456, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2936, file: !2898, line: 100, baseType: !456, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2873, file: !2800, line: 96, baseType: !452, size: 32, offset: 1024)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2818, file: !2800, line: 352, baseType: !2950, size: 4608, align: 512)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2800, line: 333, size: 4608, align: 512, elements: !2951)
!2951 = !{!2952, !2953, !2960}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2950, file: !2800, line: 334, baseType: !2836, size: 4096, align: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2950, file: !2800, line: 335, baseType: !2954, size: 512, offset: 4096)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2800, line: 312, size: 512, elements: !2955)
!2955 = !{!2956, !2957, !2958}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2954, file: !2800, line: 313, baseType: !456, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2954, file: !2800, line: 314, baseType: !456, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2954, file: !2800, line: 315, baseType: !2959, size: 384, offset: 128)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 384, elements: !1491)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2950, file: !2800, line: 336, baseType: !2961, offset: 4608)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !1405)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2818, file: !2800, line: 353, baseType: !2963, size: 32768)
!2963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 32768, elements: !2964)
!2964 = !{!2965}
!2965 = !DISubrange(count: 4096)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2799, file: !2800, line: 484, baseType: !2805, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2799, file: !2800, line: 491, baseType: !2968, size: 128, offset: 256)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2800, line: 404, size: 128, elements: !2969)
!2969 = !{!2970, !2971, !2972}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2968, file: !2800, line: 424, baseType: !456, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2968, file: !2800, line: 432, baseType: !7, size: 32, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2968, file: !2800, line: 440, baseType: !7, size: 32, offset: 96)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2799, file: !2800, line: 498, baseType: !2968, size: 128, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2799, file: !2800, line: 508, baseType: !2806, size: 33280, align: 512, offset: 512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !980, file: !981, line: 16, baseType: !990, size: 192, offset: 512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !980, file: !981, line: 17, baseType: !252, size: 32, offset: 704)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !535, file: !14, line: 1240, baseType: !374, size: 64, offset: 6912)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !535, file: !14, line: 1243, baseType: !452, size: 32, offset: 6976)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !535, file: !14, line: 1245, baseType: !736, size: 64, offset: 7040)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !535, file: !14, line: 1246, baseType: !736, size: 64, offset: 7104)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !535, file: !14, line: 1248, baseType: !453, size: 32, offset: 7168)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !535, file: !14, line: 1249, baseType: !2983, size: 64, offset: 7232)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !535, file: !14, line: 1252, baseType: !2986, size: 256, offset: 7296)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !465)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !535, file: !14, line: 1253, baseType: !2988, size: 128, offset: 7552)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2989, line: 21, baseType: !2990)
!2989 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2989, line: 19, size: 128, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2990, file: !2989, line: 20, baseType: !2993, size: 128)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !2134)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !535, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !535, file: !14, line: 1261, baseType: !683, size: 256, offset: 7744)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !535, file: !14, line: 1267, baseType: !221, size: 64, offset: 8000)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !535, file: !14, line: 1269, baseType: !481, size: 64, offset: 8064)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !535, file: !14, line: 1271, baseType: !2999, size: 448, offset: 8128)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !745, line: 63, size: 448, elements: !3000)
!3000 = !{!3001, !3006, !3007, !3008, !3009, !3010, !3011}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2999, file: !745, line: 64, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!352, !3005, !743}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2999, file: !745, line: 66, baseType: !3002, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2999, file: !745, line: 69, baseType: !338, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2999, file: !745, line: 70, baseType: !113, size: 32, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2999, file: !745, line: 71, baseType: !7, size: 32, offset: 224)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2999, file: !745, line: 74, baseType: !202, size: 128, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2999, file: !745, line: 85, baseType: !3012, size: 64, offset: 384)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !535, file: !14, line: 1274, baseType: !687, size: 64, offset: 8576)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !535, file: !14, line: 1280, baseType: !687, size: 64, offset: 8640)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !535, file: !14, line: 1283, baseType: !113, size: 32, offset: 8704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !535, file: !14, line: 1286, baseType: !1843, size: 32, offset: 8736)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !535, file: !14, line: 1289, baseType: !3018, size: 64, offset: 8768)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1972, line: 18, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !535, file: !14, line: 1290, baseType: !575, size: 64, offset: 8832)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !535, file: !14, line: 1297, baseType: !1587, size: 64, offset: 8896)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !535, file: !14, line: 1304, baseType: !3023, size: 64, offset: 8960)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3024, line: 49, size: 64, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3023, file: !3024, line: 50, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3024, line: 41, size: 512, align: 512, elements: !3029)
!3029 = !{!3030, !3031, !3036}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3028, file: !3024, line: 43, baseType: !232, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3028, file: !3024, line: 45, baseType: !3032, size: 192, offset: 64)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3024, line: 29, size: 192, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3032, file: !3024, line: 30, baseType: !202, size: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3032, file: !3024, line: 32, baseType: !338, size: 64, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3028, file: !3024, line: 46, baseType: !338, size: 64, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !535, file: !14, line: 1305, baseType: !3023, size: 64, offset: 9024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !535, file: !14, line: 1306, baseType: !997, size: 128, align: 64, offset: 9088)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !535, file: !14, line: 1307, baseType: !1971, size: 256, offset: 9216)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !535, file: !14, line: 1309, baseType: !683, size: 256, offset: 9472)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !535, file: !14, line: 1314, baseType: !113, size: 32, offset: 9728)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !535, file: !14, line: 1317, baseType: !232, size: 32, align: 512, offset: 10240)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !535, file: !14, line: 1318, baseType: !202, size: 128, offset: 10304)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !535, file: !14, line: 1320, baseType: !232, size: 32, offset: 10432)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !535, file: !14, line: 1321, baseType: !202, size: 128, offset: 10496)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !529, file: !530, line: 73, baseType: !113, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !529, file: !530, line: 74, baseType: !3048, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1429, line: 42, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !483, file: !420, line: 141, baseType: !3052, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!113, !807, !1504}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !483, file: !420, line: 142, baseType: !3056, size: 64, offset: 768)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!418, !418, !3059}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !419, file: !420, line: 96, baseType: !534, size: 64, offset: 832)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !419, file: !420, line: 97, baseType: !352, size: 64, offset: 896)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !419, file: !420, line: 98, baseType: !374, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !420, line: 100, baseType: !3065, size: 128, offset: 1024)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !420, line: 100, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3065, file: !420, line: 101, baseType: !202, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3065, file: !420, line: 102, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !419, file: !420, line: 104, baseType: !202, size: 128, offset: 1152)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !419, file: !420, line: 105, baseType: !202, size: 128, offset: 1280)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !419, file: !420, line: 113, baseType: !3073, size: 128, offset: 1408)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !420, line: 109, size: 128, elements: !3074)
!3074 = !{!3075, !3076, !3077}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3073, file: !420, line: 110, baseType: !579, size: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3073, file: !420, line: 111, baseType: !434, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3073, file: !420, line: 112, baseType: !997, size: 128, align: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !412, file: !14, line: 1968, baseType: !3079, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!221, !418, !383, !3082}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3084, line: 10, size: 128, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3085 = !{!3086, !3090}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3083, file: !3084, line: 11, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{null, !374}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3083, file: !3084, line: 12, baseType: !374, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !412, file: !14, line: 1969, baseType: !3092, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!113, !3048, !383, !113}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !412, file: !14, line: 1970, baseType: !3096, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!406, !383, !113, !1504}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !412, file: !14, line: 1972, baseType: !3100, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!113, !418, !302, !113}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !412, file: !14, line: 1974, baseType: !3104, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!113, !3048, !383, !418, !344, !1504}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !412, file: !14, line: 1976, baseType: !3108, size: 64, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!113, !418, !383, !418}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !412, file: !14, line: 1977, baseType: !3112, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!113, !383, !418}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !412, file: !14, line: 1978, baseType: !3116, size: 64, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!113, !3048, !383, !418, !221}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !412, file: !14, line: 1980, baseType: !3120, size: 64, offset: 576)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!113, !3048, !383, !418, !344}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !412, file: !14, line: 1982, baseType: !3112, size: 64, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !412, file: !14, line: 1983, baseType: !3125, size: 64, offset: 704)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!113, !3048, !383, !418, !344, !539}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !412, file: !14, line: 1985, baseType: !3129, size: 64, offset: 768)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!113, !3048, !383, !418, !383, !418, !7}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !412, file: !14, line: 1987, baseType: !3133, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!113, !3048, !418, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3151, !3160, !3161, !3166, !3167, !3168}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3137, file: !14, line: 227, baseType: !7, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3137, file: !14, line: 228, baseType: !344, size: 16, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !14, line: 241, baseType: !3142, size: 32, offset: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !14, line: 241, size: 32, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3142, file: !14, line: 242, baseType: !389, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3142, file: !14, line: 243, baseType: !3146, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3147, line: 16, baseType: !3148)
!3147 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3147, line: 14, size: 32, elements: !3149)
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3148, file: !3147, line: 15, baseType: !394, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !14, line: 245, baseType: !3152, size: 32, offset: 96)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !14, line: 245, size: 32, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3152, file: !14, line: 246, baseType: !398, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3152, file: !14, line: 247, baseType: !3156, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3147, line: 20, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3147, line: 18, size: 32, elements: !3158)
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3157, file: !3147, line: 19, baseType: !402, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3137, file: !14, line: 249, baseType: !544, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3137, file: !14, line: 250, baseType: !3162, size: 128, offset: 192)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !737, line: 13, size: 128, elements: !3163)
!3163 = !{!3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3162, file: !737, line: 14, baseType: !736, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3162, file: !737, line: 15, baseType: !338, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3137, file: !14, line: 251, baseType: !3162, size: 128, offset: 320)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3137, file: !14, line: 252, baseType: !3162, size: 128, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3137, file: !14, line: 259, baseType: !1343, size: 64, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !412, file: !14, line: 1988, baseType: !3170, size: 64, offset: 896)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!113, !3048, !807, !3173, !452, !7}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3175, line: 22, size: 1280, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3176 = !{!3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3174, file: !3175, line: 23, baseType: !452, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3174, file: !3175, line: 24, baseType: !344, size: 16, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3174, file: !3175, line: 25, baseType: !7, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3174, file: !3175, line: 26, baseType: !1469, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3174, file: !3175, line: 27, baseType: !456, size: 64, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3174, file: !3175, line: 28, baseType: !456, size: 64, offset: 192)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3174, file: !3175, line: 41, baseType: !456, size: 64, offset: 256)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3174, file: !3175, line: 42, baseType: !539, size: 32, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3174, file: !3175, line: 43, baseType: !539, size: 32, offset: 352)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3174, file: !3175, line: 44, baseType: !389, size: 32, offset: 384)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3174, file: !3175, line: 45, baseType: !398, size: 32, offset: 416)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3174, file: !3175, line: 46, baseType: !544, size: 64, offset: 448)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3174, file: !3175, line: 47, baseType: !3162, size: 128, offset: 512)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3174, file: !3175, line: 48, baseType: !3162, size: 128, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3174, file: !3175, line: 49, baseType: !3162, size: 128, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3174, file: !3175, line: 50, baseType: !3162, size: 128, offset: 896)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3174, file: !3175, line: 51, baseType: !456, size: 64, offset: 1024)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3174, file: !3175, line: 52, baseType: !456, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3174, file: !3175, line: 53, baseType: !452, size: 32, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3174, file: !3175, line: 54, baseType: !452, size: 32, offset: 1184)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3174, file: !3175, line: 55, baseType: !456, size: 64, offset: 1216)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !412, file: !14, line: 1990, baseType: !3199, size: 64, offset: 960)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!334, !418, !302, !349}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !412, file: !14, line: 1991, baseType: !3203, size: 64, offset: 1024)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!113, !383, !3206, !456, !456}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !412, file: !14, line: 1993, baseType: !3209, size: 64, offset: 1088)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!113, !383, !113}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !412, file: !14, line: 1994, baseType: !3213, size: 64, offset: 1152)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!113, !383, !418, !1343, !7, !344}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !412, file: !14, line: 1997, baseType: !3217, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!113, !3048, !383, !1343, !344}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !412, file: !14, line: 1999, baseType: !3221, size: 64, offset: 1280)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!406, !3048, !418, !113}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !412, file: !14, line: 2001, baseType: !3225, size: 64, offset: 1344)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!113, !3048, !418, !406, !113}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !412, file: !14, line: 2003, baseType: !3229, size: 64, offset: 1408)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!113, !3048, !418, !3232}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !412, file: !14, line: 2005, baseType: !3235, size: 64, offset: 1472)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!113, !418, !3232}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !412, file: !14, line: 2006, baseType: !3239, size: 64, offset: 1536)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!3242, !383}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3244)
!3244 = !{!3245, !3252}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3243, file: !14, line: 3193, baseType: !3246, size: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3247, line: 296, size: 128, elements: !3248)
!3247 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3246, file: !3247, line: 297, baseType: !232, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3246, file: !3247, line: 299, baseType: !748, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3246, file: !3247, line: 300, baseType: !374, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3243, file: !14, line: 3194, baseType: !452, size: 32, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !384, file: !14, line: 655, baseType: !534, size: 64, offset: 448)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !384, file: !14, line: 656, baseType: !379, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !384, file: !14, line: 659, baseType: !374, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !384, file: !14, line: 663, baseType: !352, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !14, line: 671, baseType: !3258, size: 32, offset: 704)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !14, line: 671, size: 32, elements: !3259)
!3259 = !{!3260, !3262}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3258, file: !14, line: 672, baseType: !3261, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3258, file: !14, line: 673, baseType: !7, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !384, file: !14, line: 675, baseType: !539, size: 32, offset: 736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !384, file: !14, line: 676, baseType: !544, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !384, file: !14, line: 677, baseType: !3162, size: 128, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !384, file: !14, line: 678, baseType: !3162, size: 128, offset: 960)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !384, file: !14, line: 679, baseType: !3162, size: 128, offset: 1088)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !384, file: !14, line: 680, baseType: !232, size: 32, offset: 1216)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !384, file: !14, line: 681, baseType: !272, size: 16, offset: 1248)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !384, file: !14, line: 682, baseType: !260, size: 8, offset: 1264)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !384, file: !14, line: 683, baseType: !260, size: 8, offset: 1272)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !384, file: !14, line: 684, baseType: !885, size: 64, offset: 1280)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !384, file: !14, line: 691, baseType: !352, size: 64, offset: 1344)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !384, file: !14, line: 692, baseType: !897, size: 320, offset: 1408)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !384, file: !14, line: 694, baseType: !352, size: 64, offset: 1728)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !384, file: !14, line: 695, baseType: !352, size: 64, offset: 1792)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !384, file: !14, line: 697, baseType: !579, size: 128, offset: 1856)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !384, file: !14, line: 698, baseType: !202, size: 128, offset: 1984)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !384, file: !14, line: 707, baseType: !202, size: 128, offset: 2112)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !384, file: !14, line: 708, baseType: !202, size: 128, offset: 2240)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !14, line: 709, baseType: !3282, size: 128, offset: 2368)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !14, line: 709, size: 128, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3282, file: !14, line: 710, baseType: !575, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3282, file: !14, line: 711, baseType: !997, size: 128, align: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !384, file: !14, line: 713, baseType: !689, size: 64, offset: 2496)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !384, file: !14, line: 714, baseType: !689, size: 64, offset: 2560)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !384, file: !14, line: 715, baseType: !252, size: 32, offset: 2624)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !384, file: !14, line: 716, baseType: !252, size: 32, offset: 2656)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !384, file: !14, line: 717, baseType: !252, size: 32, offset: 2688)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !384, file: !14, line: 719, baseType: !252, size: 32, offset: 2720)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !14, line: 721, baseType: !3293, size: 64, offset: 2752)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !14, line: 721, size: 64, elements: !3294)
!3294 = !{!3295, !3296}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3293, file: !14, line: 722, baseType: !1618, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3293, file: !14, line: 723, baseType: !606, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !384, file: !14, line: 725, baseType: !3298, size: 64, offset: 2816)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !384, file: !14, line: 726, baseType: !380, size: 1536, align: 64, offset: 2880)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !384, file: !14, line: 727, baseType: !202, size: 128, offset: 4416)
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !14, line: 728, baseType: !3303, size: 64, offset: 4544)
!3303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !14, line: 728, size: 64, elements: !3304)
!3304 = !{!3305, !3306, !3309, !3310}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3303, file: !14, line: 729, baseType: !1793, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3303, file: !14, line: 730, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3303, file: !14, line: 731, baseType: !302, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3303, file: !14, line: 732, baseType: !7, size: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !384, file: !14, line: 735, baseType: !453, size: 32, offset: 4608)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !384, file: !14, line: 738, baseType: !453, size: 32, offset: 4640)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !384, file: !14, line: 739, baseType: !2983, size: 64, offset: 4672)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !384, file: !14, line: 750, baseType: !374, size: 64, offset: 4736)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !380, file: !14, line: 474, baseType: !3246, size: 128, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !380, file: !14, line: 475, baseType: !897, size: 320, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !380, file: !14, line: 476, baseType: !748, size: 32, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !380, file: !14, line: 477, baseType: !252, size: 32, offset: 544)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !380, file: !14, line: 482, baseType: !1199, size: 128, offset: 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !380, file: !14, line: 483, baseType: !352, size: 64, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !380, file: !14, line: 484, baseType: !352, size: 64, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !380, file: !14, line: 485, baseType: !3323, size: 64, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3326)
!3326 = !{!3327, !3331, !3401, !3405, !3409, !3415, !3419, !3423, !3428, !3432, !3436, !3440, !3441, !3445, !3449, !3453, !3458, !3462, !3469, !3470}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3325, file: !14, line: 405, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!113, !2558, !618}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3325, file: !14, line: 406, baseType: !3332, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!113, !1343, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !755, line: 293, size: 1536, elements: !3337)
!3337 = !{!3338, !3368, !3382}
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3336, file: !755, line: 295, baseType: !3339, size: 512)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3336, file: !755, line: 295, size: 512, elements: !3340)
!3340 = !{!3341, !3367}
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3339, file: !755, line: 296, baseType: !3342, size: 448)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3339, file: !755, line: 296, size: 448, elements: !3343)
!3343 = !{!3344, !3345, !3354, !3355, !3356, !3365, !3366}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3342, file: !755, line: 298, baseType: !352, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !755, line: 299, baseType: !3346, size: 128, offset: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !755, line: 299, size: 128, elements: !3347)
!3347 = !{!3348, !3349}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3346, file: !755, line: 300, baseType: !202, size: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !3346, file: !755, line: 302, baseType: !3350, size: 128)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3346, file: !755, line: 302, size: 128, elements: !3351)
!3351 = !{!3352, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3350, file: !755, line: 303, baseType: !374, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3350, file: !755, line: 305, baseType: !7, size: 32, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3342, file: !755, line: 310, baseType: !379, size: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3342, file: !755, line: 311, baseType: !352, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, scope: !3342, file: !755, line: 312, baseType: !3357, size: 64, offset: 320)
!3357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3342, file: !755, line: 312, size: 64, elements: !3358)
!3358 = !{!3359, !3360}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3357, file: !755, line: 313, baseType: !374, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3357, file: !755, line: 314, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !755, line: 257, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 255, size: 64, elements: !3363)
!3363 = !{!3364}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3362, file: !755, line: 256, baseType: !352, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3342, file: !755, line: 316, baseType: !252, size: 32, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3342, file: !755, line: 317, baseType: !252, size: 32, offset: 416)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3339, file: !755, line: 323, baseType: !2559, size: 512, align: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !3336, file: !755, line: 325, baseType: !3369, size: 512, offset: 512)
!3369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3336, file: !755, line: 325, size: 512, elements: !3370)
!3370 = !{!3371, !3381}
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !755, line: 326, baseType: !3372, size: 320)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3369, file: !755, line: 326, size: 320, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3372, file: !755, line: 327, baseType: !352, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3372, file: !755, line: 328, baseType: !352, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3372, file: !755, line: 329, baseType: !352, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3372, file: !755, line: 331, baseType: !252, size: 32, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3372, file: !755, line: 332, baseType: !252, size: 32, offset: 224)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3372, file: !755, line: 333, baseType: !252, size: 32, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3372, file: !755, line: 335, baseType: !7, size: 32, offset: 288)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3369, file: !755, line: 339, baseType: !2559, size: 512, align: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, scope: !3336, file: !755, line: 341, baseType: !3383, size: 512, offset: 1024)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3336, file: !755, line: 341, size: 512, elements: !3384)
!3384 = !{!3385, !3394, !3400}
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !755, line: 342, baseType: !3386, size: 384)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !755, line: 342, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3386, file: !755, line: 343, baseType: !352, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3386, file: !755, line: 344, baseType: !352, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3386, file: !755, line: 346, baseType: !374, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3386, file: !755, line: 347, baseType: !374, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3386, file: !755, line: 348, baseType: !374, size: 64, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3386, file: !755, line: 349, baseType: !374, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !755, line: 352, baseType: !3395, size: 256)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3383, file: !755, line: 352, size: 256, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3395, file: !755, line: 353, baseType: !352, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3395, file: !755, line: 354, baseType: !352, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3395, file: !755, line: 356, baseType: !202, size: 128, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3383, file: !755, line: 359, baseType: !2559, size: 512, align: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3325, file: !14, line: 409, baseType: !3402, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!113, !379, !618}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3325, file: !14, line: 412, baseType: !3406, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!1504, !379, !3335}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3325, file: !14, line: 414, baseType: !3410, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3413}
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3325, file: !14, line: 416, baseType: !3416, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!113, !1343, !379, !544, !7, !2732, !1808}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3325, file: !14, line: 419, baseType: !3420, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!113, !1343, !379, !544, !7, !7, !2558, !374}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3325, file: !14, line: 424, baseType: !3424, size: 64, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!3427, !379, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !203, line: 131, baseType: !456)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3325, file: !14, line: 425, baseType: !3429, size: 64, offset: 512)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !3335, !349, !349}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3325, file: !14, line: 426, baseType: !3433, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!1504, !3335, !748}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3325, file: !14, line: 427, baseType: !3437, size: 64, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !3335}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3325, file: !14, line: 428, baseType: !1637, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3325, file: !14, line: 433, baseType: !3442, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!113, !379, !3335, !3335, !50}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3325, file: !14, line: 435, baseType: !3446, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!113, !3335}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3325, file: !14, line: 436, baseType: !3450, size: 64, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!1504, !3335, !349, !349}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3325, file: !14, line: 438, baseType: !3454, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{null, !3335, !3457, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3325, file: !14, line: 439, baseType: !3459, size: 64, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!113, !379, !2558}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3325, file: !14, line: 442, baseType: !3463, size: 64, offset: 1088)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!113, !3466, !1343, !3468}
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3325, file: !14, line: 444, baseType: !1800, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3325, file: !14, line: 445, baseType: !3471, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!113, !1640, !1662}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !14, line: 486, baseType: !352, size: 64, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !380, file: !14, line: 487, baseType: !897, size: 320, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !380, file: !14, line: 488, baseType: !1843, size: 32, offset: 1280)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !380, file: !14, line: 489, baseType: !232, size: 32, offset: 1312)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !380, file: !14, line: 490, baseType: !202, size: 128, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !380, file: !14, line: 491, baseType: !374, size: 64, offset: 1472)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !369, file: !328, line: 180, baseType: !3481, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!334, !1343, !225, !368, !302, !544, !349}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !369, file: !328, line: 182, baseType: !3481, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !369, file: !328, line: 184, baseType: !3486, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!113, !1343, !225, !368, !1701}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !357, file: !328, line: 90, baseType: !3490, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !357, file: !328, line: 91, baseType: !3492, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !318, file: !218, line: 120, baseType: !3494, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!3497, !285}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3500)
!3500 = !{!3501, !3502, !3506, !3510, !3516, !3520}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3499, file: !58, line: 40, baseType: !57, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3499, file: !58, line: 41, baseType: !3503, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!1504}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3499, file: !58, line: 42, baseType: !3507, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!374}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3499, file: !58, line: 43, baseType: !3511, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!1932, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3499, file: !58, line: 44, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!1932}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3499, file: !58, line: 45, baseType: !3087, size: 64, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !318, file: !218, line: 121, baseType: !3522, size: 64, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!1932, !285}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !318, file: !218, line: 122, baseType: !3526, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !285, !3529, !3530}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !217, file: !218, line: 70, baseType: !3532, size: 64, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !559, line: 190, size: 1152, elements: !3534)
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3626, !3627, !3628, !3629, !3630, !3633}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3533, file: !559, line: 191, baseType: !252, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3533, file: !559, line: 192, baseType: !252, size: 32, offset: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3533, file: !559, line: 202, baseType: !3532, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3533, file: !559, line: 203, baseType: !221, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3533, file: !559, line: 205, baseType: !1070, size: 192, align: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3533, file: !559, line: 207, baseType: !1932, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3533, file: !559, line: 208, baseType: !7, size: 32, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !559, line: 209, baseType: !3543, size: 256, offset: 512)
!3543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3533, file: !559, line: 209, size: 256, elements: !3544)
!3544 = !{!3545, !3554, !3558}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3543, file: !559, line: 210, baseType: !3546, size: 256)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !559, line: 153, size: 256, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3553}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3546, file: !559, line: 154, baseType: !352, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3546, file: !559, line: 156, baseType: !1202, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3546, file: !559, line: 162, baseType: !3551, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !559, line: 162, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3546, file: !559, line: 167, baseType: !352, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3543, file: !559, line: 211, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !559, line: 170, size: 64, elements: !3556)
!3556 = !{!3557}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3555, file: !559, line: 171, baseType: !3532, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3543, file: !559, line: 212, baseType: !3559, size: 256)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !559, line: 174, size: 256, elements: !3560)
!3560 = !{!3561, !3621, !3624, !3625}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3559, file: !559, line: 175, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !559, line: 271, size: 768, elements: !3565)
!3565 = !{!3566, !3586, !3590, !3594, !3598, !3602, !3606, !3610, !3611, !3612, !3613, !3617}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3564, file: !559, line: 276, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!113, !3570}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !559, line: 251, size: 1216, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3571, file: !559, line: 253, baseType: !3532, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3571, file: !559, line: 254, baseType: !1343, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3571, file: !559, line: 255, baseType: !656, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3571, file: !559, line: 256, baseType: !374, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3571, file: !559, line: 259, baseType: !683, size: 256, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3571, file: !559, line: 260, baseType: !683, size: 256, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3571, file: !559, line: 261, baseType: !113, size: 32, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3571, file: !559, line: 262, baseType: !202, size: 128, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3571, file: !559, line: 263, baseType: !302, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3571, file: !559, line: 265, baseType: !349, size: 64, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3571, file: !559, line: 266, baseType: !1504, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3571, file: !559, line: 267, baseType: !1504, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3571, file: !559, line: 268, baseType: !1746, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3564, file: !559, line: 277, baseType: !3587, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3570}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3564, file: !559, line: 290, baseType: !3591, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!113, !656, !374}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3564, file: !559, line: 292, baseType: !3595, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!374, !656, !1631}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3564, file: !559, line: 293, baseType: !3599, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!374, !656, !374, !1631}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3564, file: !559, line: 294, baseType: !3603, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{null, !656, !374}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3564, file: !559, line: 296, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!334, !3570, !302, !349, !544}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3564, file: !559, line: 306, baseType: !349, size: 64, offset: 448)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3564, file: !559, line: 313, baseType: !1504, size: 8, offset: 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3564, file: !559, line: 314, baseType: !3607, size: 64, offset: 576)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3564, file: !559, line: 317, baseType: !3614, size: 64, offset: 640)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!1688, !3570, !1690}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3564, file: !559, line: 320, baseType: !3618, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!113, !3570, !1701}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3559, file: !559, line: 176, baseType: !3622, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !559, line: 35, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3559, file: !559, line: 177, baseType: !544, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3559, file: !559, line: 178, baseType: !3532, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3533, file: !559, line: 215, baseType: !374, size: 64, offset: 768)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3533, file: !559, line: 221, baseType: !456, size: 64, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3533, file: !559, line: 223, baseType: !272, size: 16, offset: 896)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3533, file: !559, line: 224, baseType: !344, size: 16, offset: 912)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3533, file: !559, line: 225, baseType: !3631, size: 64, offset: 960)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !559, line: 36, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3533, file: !559, line: 227, baseType: !997, size: 128, align: 64, offset: 1024)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !217, file: !218, line: 71, baseType: !3635, size: 32, offset: 448)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3636, line: 19, size: 32, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3637 = !{!3638}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3635, file: !3636, line: 20, baseType: !1026, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !217, file: !218, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !217, file: !218, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !217, file: !218, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !217, file: !218, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !217, file: !218, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !214, file: !6, line: 47, baseType: !197, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !214, file: !6, line: 48, baseType: !225, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !214, file: !6, line: 49, baseType: !3647, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !214, file: !6, line: 50, baseType: !2081, size: 64, offset: 704)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !198, file: !6, line: 418, baseType: !3651, size: 64, offset: 1408)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3653)
!3653 = !{!3654, !3655, !3660, !3664, !3668, !3672}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3652, file: !6, line: 54, baseType: !340, size: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3652, file: !6, line: 55, baseType: !3656, size: 64, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!334, !3651, !3659, !302}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3652, file: !6, line: 57, baseType: !3661, size: 64, offset: 192)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!334, !3651, !3659, !221, !349}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3652, file: !6, line: 59, baseType: !3665, size: 64, offset: 256)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !197, !221}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3652, file: !6, line: 60, baseType: !3669, size: 64, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!113, !197}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3652, file: !6, line: 61, baseType: !3673, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !197}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !198, file: !6, line: 419, baseType: !221, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !198, file: !6, line: 420, baseType: !221, size: 64, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !198, file: !6, line: 421, baseType: !225, size: 64, offset: 1600)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !198, file: !6, line: 424, baseType: !3680, size: 64, offset: 1664)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3682)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !198, file: !6, line: 425, baseType: !3684, size: 64, offset: 1728)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !198, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !198, file: !6, line: 435, baseType: !683, size: 256, offset: 1856)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !198, file: !6, line: 437, baseType: !3689, size: 64, offset: 2112)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3691, line: 69, size: 320, elements: !3692)
!3691 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3692 = !{!3693, !3694, !3695, !3712, !3714, !3718, !3719}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3690, file: !3691, line: 70, baseType: !221, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3690, file: !3691, line: 71, baseType: !197, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3690, file: !3691, line: 72, baseType: !3696, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3698)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3691, line: 47, size: 256, elements: !3699)
!3699 = !{!3700, !3701, !3707, !3711}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3698, file: !3691, line: 49, baseType: !7, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3698, file: !3691, line: 51, baseType: !3702, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!113, !221, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3690)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3698, file: !3691, line: 53, baseType: !3708, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!113, !302, !3705}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3698, file: !3691, line: 55, baseType: !3087, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3690, file: !3691, line: 73, baseType: !3713, size: 16, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3690, file: !3691, line: 74, baseType: !3715, size: 8, offset: 208)
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !261, line: 16, baseType: !3716)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !263, line: 20, baseType: !3717)
!3717 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3690, file: !3691, line: 75, baseType: !260, size: 8, offset: 216)
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3690, file: !3691, line: 76, baseType: !3720, size: 64, offset: 256)
!3720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3690, file: !3691, line: 76, size: 64, elements: !3721)
!3721 = !{!3722, !3723, !3730}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3720, file: !3691, line: 77, baseType: !374, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3720, file: !3691, line: 78, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3726)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3691, line: 86, size: 128, elements: !3727)
!3727 = !{!3728, !3729}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3726, file: !3691, line: 87, baseType: !7, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3726, file: !3691, line: 88, baseType: !302, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3720, file: !3691, line: 79, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3733)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3691, line: 92, size: 256, elements: !3734)
!3734 = !{!3735, !3736, !3737, !3738, !3739}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3733, file: !3691, line: 94, baseType: !7, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3733, file: !3691, line: 95, baseType: !7, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3733, file: !3691, line: 96, baseType: !1006, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3733, file: !3691, line: 97, baseType: !3696, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3733, file: !3691, line: 98, baseType: !374, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !198, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !198, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !198, file: !6, line: 442, baseType: !3680, size: 64, offset: 2240)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !198, file: !6, line: 443, baseType: !3684, size: 64, offset: 2304)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !198, file: !6, line: 444, baseType: !1504, size: 8, offset: 2368)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !198, file: !6, line: 451, baseType: !1504, size: 8, offset: 2376)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !198, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !198, file: !6, line: 455, baseType: !3748, size: 64, offset: 2432)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3750, line: 23, size: 96, elements: !3751)
!3750 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3751 = !{!3752, !3753, !3754}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3749, file: !3750, line: 24, baseType: !113, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3749, file: !3750, line: 24, baseType: !113, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3749, file: !3750, line: 24, baseType: !113, size: 32, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !198, file: !6, line: 458, baseType: !3756, size: 64, offset: 2496)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!113}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !198, file: !6, line: 460, baseType: !3760, size: 4032, align: 512, offset: 2560)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3761, size: 4032, elements: !3775)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3761, file: !6, line: 363, baseType: !374, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3761, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3761, file: !6, line: 367, baseType: !3766, size: 448, offset: 128)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3767)
!3767 = !{!3768, !3769}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3766, file: !6, line: 320, baseType: !197, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3766, file: !6, line: 321, baseType: !3770, size: 384, offset: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3771, line: 40, size: 384, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3772 = !{!3773}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3770, file: !3771, line: 41, baseType: !3774, size: 384, align: 64)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 384, align: 64, elements: !2215)
!3775 = !{!3776}
!3776 = !DISubrange(count: 7)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !198, file: !6, line: 463, baseType: !3778, size: 192, offset: 6592)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3779, line: 8, size: 192, elements: !3780)
!3779 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3778, file: !3779, line: 10, baseType: !7, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3778, file: !3779, line: 11, baseType: !650, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3778, file: !3779, line: 12, baseType: !3784, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3786, line: 59, size: 48, elements: !3787)
!3786 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3787 = !{!3788, !3789, !3790, !3791, !3792, !3793}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3785, file: !3786, line: 60, baseType: !1949, size: 16)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3785, file: !3786, line: 61, baseType: !1949, size: 16, offset: 16)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3785, file: !3786, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3785, file: !3786, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3785, file: !3786, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3785, file: !3786, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !198, file: !6, line: 465, baseType: !352, size: 64, offset: 6784)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !198, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !198, file: !6, line: 470, baseType: !202, size: 128, offset: 6912)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !198, file: !6, line: 471, baseType: !3798, size: 64, offset: 7040)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3800, line: 33, size: 96, elements: !3801)
!3800 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3801 = !{!3802, !3803, !3804, !3805}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3799, file: !3800, line: 37, baseType: !113, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3799, file: !3800, line: 43, baseType: !113, size: 32, offset: 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3799, file: !3800, line: 45, baseType: !272, size: 16, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3799, file: !3800, line: 47, baseType: !272, size: 16, offset: 80)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !198, file: !6, line: 476, baseType: !3807, size: 64, offset: 7104)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3809)
!3809 = !{!3810, !3826, !3827, !3828}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3808, file: !6, line: 379, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3813, line: 204, baseType: !3814)
!3813 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3813, line: 197, size: 192, elements: !3815)
!3815 = !{!3816, !3818, !3819, !3820, !3822, !3824}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3814, file: !3813, line: 198, baseType: !3817, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3813, line: 21, baseType: !453)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3814, file: !3813, line: 199, baseType: !264, size: 8, offset: 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3814, file: !3813, line: 200, baseType: !264, size: 8, offset: 40)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3814, file: !3813, line: 201, baseType: !3821, size: 16, offset: 48)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3813, line: 17, baseType: !271)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3814, file: !3813, line: 202, baseType: !3823, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3813, line: 16, baseType: !457)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3814, file: !3813, line: 203, baseType: !3825, size: 64, offset: 128)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3813, line: 22, baseType: !457)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3808, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3808, file: !6, line: 381, baseType: !302, size: 64, offset: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3808, file: !6, line: 382, baseType: !302, size: 64, offset: 192)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !198, file: !6, line: 477, baseType: !3808, size: 256, offset: 7168)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !198, file: !6, line: 480, baseType: !3831, size: 64, offset: 7424)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !198, file: !6, line: 483, baseType: !3834, size: 64, offset: 7488)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !198, file: !6, line: 488, baseType: !302, size: 64, offset: 7552)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !198, file: !6, line: 492, baseType: !374, size: 64, offset: 7616)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !198, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !198, file: !6, line: 495, baseType: !374, size: 64, offset: 7744)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !198, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !198, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !198, file: !6, line: 500, baseType: !3843, size: 64, offset: 7872)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3845, line: 45, baseType: !3846)
!3845 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !198, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !198, file: !6, line: 504, baseType: !3849, size: 64, offset: 8000)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3852, line: 96, size: 192, elements: !3853)
!3852 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3853 = !{!3854, !3855, !3898, !3900}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3851, file: !3852, line: 97, baseType: !7, size: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3851, file: !3852, line: 98, baseType: !3856, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3852, line: 24, size: 3072, elements: !3858)
!3858 = !{!3859, !3861, !3862, !3863, !3864, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3895, !3896, !3897}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3857, file: !3852, line: 26, baseType: !3860, size: 128)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 128, elements: !2215)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3857, file: !3852, line: 27, baseType: !3860, size: 128, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3857, file: !3852, line: 28, baseType: !113, size: 32, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3857, file: !3852, line: 31, baseType: !232, size: 32, align: 512, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3857, file: !3852, line: 32, baseType: !3865, size: 960, offset: 576)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3866, line: 206, size: 960, elements: !3867)
!3866 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3867 = !{!3868, !3869, !3872, !3874, !3875, !3877}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3865, file: !3866, line: 207, baseType: !1000, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3865, file: !3866, line: 208, baseType: !3870, size: 256, offset: 64)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3871, size: 256, elements: !1392)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3865, file: !3866, line: 209, baseType: !3873, size: 256, offset: 320)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !1392)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3865, file: !3866, line: 213, baseType: !338, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3865, file: !3866, line: 215, baseType: !3876, size: 256, offset: 640)
!3876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !1392)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3865, file: !3866, line: 216, baseType: !260, size: 8, offset: 896)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3857, file: !3852, line: 33, baseType: !352, size: 64, offset: 1536)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3857, file: !3852, line: 34, baseType: !352, size: 64, offset: 1600)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3857, file: !3852, line: 35, baseType: !1504, size: 8, offset: 1664)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3857, file: !3852, line: 36, baseType: !2711, size: 320, offset: 1728)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3857, file: !3852, line: 37, baseType: !1971, size: 256, offset: 2048)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3857, file: !3852, line: 38, baseType: !997, size: 128, align: 64, offset: 2304)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3857, file: !3852, line: 39, baseType: !3885, size: 64, offset: 2432)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3852, line: 49, size: 768, elements: !3887)
!3887 = !{!3888, !3889, !3890, !3891, !3892, !3893, !3894}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3886, file: !3852, line: 50, baseType: !232, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3886, file: !3852, line: 51, baseType: !3873, size: 256, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3886, file: !3852, line: 53, baseType: !3873, size: 256, offset: 320)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3886, file: !3852, line: 54, baseType: !352, size: 64, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3886, file: !3852, line: 55, baseType: !3885, size: 64, offset: 640)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3886, file: !3852, line: 56, baseType: !113, size: 32, offset: 704)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3886, file: !3852, line: 57, baseType: !113, size: 32, offset: 736)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3857, file: !3852, line: 40, baseType: !352, size: 64, offset: 2496)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3857, file: !3852, line: 42, baseType: !113, size: 32, offset: 2560)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3857, file: !3852, line: 43, baseType: !3850, size: 64, offset: 2624)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3851, file: !3852, line: 99, baseType: !3899, offset: 128)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !586, line: 211, elements: !587)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3851, file: !3852, line: 100, baseType: !3901, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3852, line: 63, size: 3008, elements: !3903)
!3903 = !{!3904, !3905, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3933}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3902, file: !3852, line: 64, baseType: !3885, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3902, file: !3852, line: 65, baseType: !3906, size: 192, offset: 64)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3885, size: 192, elements: !303)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3902, file: !3852, line: 67, baseType: !113, size: 32, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3902, file: !3852, line: 68, baseType: !683, size: 256, offset: 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3902, file: !3852, line: 69, baseType: !232, size: 32, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3902, file: !3852, line: 70, baseType: !683, size: 256, offset: 640)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3902, file: !3852, line: 71, baseType: !352, size: 64, offset: 896)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3902, file: !3852, line: 72, baseType: !352, size: 64, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3902, file: !3852, line: 73, baseType: !352, size: 64, offset: 1024)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3902, file: !3852, line: 74, baseType: !352, size: 64, offset: 1088)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3902, file: !3852, line: 75, baseType: !352, size: 64, offset: 1152)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3902, file: !3852, line: 76, baseType: !352, size: 64, offset: 1216)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3902, file: !3852, line: 77, baseType: !352, size: 64, offset: 1280)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3902, file: !3852, line: 78, baseType: !352, size: 64, offset: 1344)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3902, file: !3852, line: 79, baseType: !1504, size: 8, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3902, file: !3852, line: 80, baseType: !352, size: 64, offset: 1472)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3902, file: !3852, line: 81, baseType: !683, size: 256, offset: 1536)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3902, file: !3852, line: 82, baseType: !2082, size: 256, offset: 1792)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3902, file: !3852, line: 84, baseType: !252, size: 32, offset: 2048)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3902, file: !3852, line: 87, baseType: !352, size: 64, offset: 2112)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3902, file: !3852, line: 88, baseType: !352, size: 64, offset: 2176)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3902, file: !3852, line: 89, baseType: !3927, size: 704, offset: 2240)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1972, line: 111, size: 704, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3927, file: !1972, line: 112, baseType: !1971, size: 256)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3927, file: !1972, line: 113, baseType: !2711, size: 320, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3927, file: !1972, line: 116, baseType: !3018, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3927, file: !1972, line: 117, baseType: !113, size: 32, offset: 640)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3902, file: !3852, line: 90, baseType: !3850, size: 64, offset: 2944)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !198, file: !6, line: 515, baseType: !3935, size: 64, offset: 8064)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3937, line: 117, size: 128, elements: !3938)
!3937 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3936, file: !3937, line: 118, baseType: !1447, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3936, file: !3937, line: 119, baseType: !1447, size: 32, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3936, file: !3937, line: 120, baseType: !338, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !198, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !198, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !198, file: !6, line: 520, baseType: !3945, size: 64, offset: 8192)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !198, file: !6, line: 523, baseType: !3947, size: 64, offset: 8256)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !198, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !198, file: !6, line: 525, baseType: !3952, size: 64, offset: 8384)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !198, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !198, file: !6, line: 533, baseType: !374, size: 64, offset: 8512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !198, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !198, file: !6, line: 535, baseType: !3959, size: 64, offset: 8640)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !198, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !198, file: !6, line: 539, baseType: !113, size: 32, offset: 8736)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !198, file: !6, line: 540, baseType: !3963, size: 64, offset: 8768)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3965, line: 32, size: 64, elements: !3966)
!3965 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3966 = !{!3967, !3968}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3964, file: !3965, line: 33, baseType: !1447, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3964, file: !3965, line: 34, baseType: !1447, size: 32, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !198, file: !6, line: 563, baseType: !202, size: 128, offset: 8832)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !198, file: !6, line: 565, baseType: !202, size: 128, offset: 8960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !198, file: !6, line: 568, baseType: !3972, size: 64, offset: 9088)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !198, file: !6, line: 570, baseType: !252, size: 32, offset: 9152)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !191, line: 68, size: 4864, elements: !3976)
!3976 = !{!3977, !4767, !4768, !4769, !4770, !4774, !4775, !4831, !4832, !4833, !4962, !4965, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4985, !4986, !4987, !5016, !5017, !5019, !5020, !5021, !5022, !5026, !5027, !5030}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3975, file: !191, line: 73, baseType: !3978, size: 1152)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !152, line: 451, size: 1152, elements: !3979)
!3979 = !{!3980, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4462, !4758, !4759, !4760, !4761, !4762, !4763, !4766}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !3978, file: !152, line: 452, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !98, line: 705, size: 5824, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3989, !3990, !4043, !4128, !4129, !4130, !4131, !4132, !4139, !4231, !4244, !4254, !4258, !4260, !4261, !4262, !4266, !4273, !4274, !4277, !4280, !4284, !4387, !4388, !4389, !4390, !4391, !4392, !4422, !4423, !4424, !4427, !4430, !4439, !4440, !4441, !4442, !4443, !4444}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3982, file: !98, line: 706, baseType: !217, size: 512)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3982, file: !98, line: 707, baseType: !3981, size: 64, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3982, file: !98, line: 709, baseType: !3987, size: 64, offset: 576)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !98, line: 37, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3982, file: !98, line: 711, baseType: !221, size: 64, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3982, file: !98, line: 712, baseType: !3991, size: 64, offset: 704)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3993)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !98, line: 89, size: 384, elements: !3994)
!3994 = !{!3995, !3996, !3997, !4003, !4008, !4012}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3993, file: !98, line: 90, baseType: !221, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3993, file: !98, line: 91, baseType: !354, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3993, file: !98, line: 92, baseType: !3998, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!113, !4001, !297}
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3982)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3993, file: !98, line: 93, baseType: !4004, size: 64, offset: 192)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!302, !4001, !4007, !3529, !3530}
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3993, file: !98, line: 95, baseType: !4009, size: 64, offset: 256)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !3981}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3993, file: !98, line: 97, baseType: !4013, size: 64, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !105, line: 286, size: 1472, elements: !4016)
!4016 = !{!4017, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4015, file: !105, line: 287, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!113, !3981}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4015, file: !105, line: 288, baseType: !4009, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4015, file: !105, line: 289, baseType: !4018, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4015, file: !105, line: 290, baseType: !4018, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4015, file: !105, line: 291, baseType: !4018, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4015, file: !105, line: 292, baseType: !4018, size: 64, offset: 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4015, file: !105, line: 293, baseType: !4018, size: 64, offset: 384)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4015, file: !105, line: 294, baseType: !4018, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4015, file: !105, line: 295, baseType: !4018, size: 64, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4015, file: !105, line: 296, baseType: !4018, size: 64, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4015, file: !105, line: 297, baseType: !4018, size: 64, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4015, file: !105, line: 298, baseType: !4018, size: 64, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4015, file: !105, line: 299, baseType: !4018, size: 64, offset: 768)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4015, file: !105, line: 300, baseType: !4018, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4015, file: !105, line: 301, baseType: !4018, size: 64, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4015, file: !105, line: 302, baseType: !4018, size: 64, offset: 960)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4015, file: !105, line: 303, baseType: !4018, size: 64, offset: 1024)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4015, file: !105, line: 304, baseType: !4018, size: 64, offset: 1088)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4015, file: !105, line: 305, baseType: !4018, size: 64, offset: 1152)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4015, file: !105, line: 306, baseType: !4018, size: 64, offset: 1216)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4015, file: !105, line: 307, baseType: !4018, size: 64, offset: 1280)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4015, file: !105, line: 308, baseType: !4018, size: 64, offset: 1344)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4015, file: !105, line: 309, baseType: !4018, size: 64, offset: 1408)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3982, file: !98, line: 714, baseType: !4044, size: 64, offset: 768)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4046)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4047, line: 80, size: 1344, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4127}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4046, file: !4047, line: 81, baseType: !221, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4046, file: !4047, line: 82, baseType: !221, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4046, file: !4047, line: 83, baseType: !354, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4046, file: !4047, line: 84, baseType: !354, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4046, file: !4047, line: 85, baseType: !354, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4046, file: !4047, line: 87, baseType: !4055, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!113, !3981, !4058}
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !92, line: 96, size: 1152, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4080, !4090, !4091, !4092, !4093, !4094, !4102, !4103, !4104, !4105, !4106, !4107}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4059, file: !92, line: 97, baseType: !221, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4059, file: !92, line: 98, baseType: !4044, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4059, file: !92, line: 100, baseType: !197, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4059, file: !92, line: 101, baseType: !221, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4059, file: !92, line: 103, baseType: !1504, size: 8, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4059, file: !92, line: 104, baseType: !91, size: 32, offset: 288)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4059, file: !92, line: 106, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4070)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4071, line: 282, size: 1600, elements: !4072)
!4071 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4072 = !{!4073, !4074, !4075, !4079}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4070, file: !4071, line: 283, baseType: !2986, size: 256)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4070, file: !4071, line: 284, baseType: !2986, size: 256, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4070, file: !4071, line: 285, baseType: !4076, size: 1024, offset: 512)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 1024, elements: !4077)
!4077 = !{!4078}
!4078 = !DISubrange(count: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4070, file: !4071, line: 286, baseType: !1932, size: 64, offset: 1536)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4059, file: !92, line: 107, baseType: !4081, size: 64, offset: 384)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4083)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4071, line: 217, size: 256, elements: !4084)
!4084 = !{!4085, !4086, !4088, !4089}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4083, file: !4071, line: 218, baseType: !2993, size: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4083, file: !4071, line: 219, baseType: !4087, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4071, line: 15, baseType: !352)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4083, file: !4071, line: 220, baseType: !453, size: 32, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4083, file: !4071, line: 221, baseType: !453, size: 32, offset: 224)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4059, file: !92, line: 109, baseType: !4018, size: 64, offset: 448)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4059, file: !92, line: 110, baseType: !4009, size: 64, offset: 512)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4059, file: !92, line: 111, baseType: !4018, size: 64, offset: 576)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4059, file: !92, line: 112, baseType: !4009, size: 64, offset: 640)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4059, file: !92, line: 113, baseType: !4095, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!113, !3981, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !105, line: 60, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !105, line: 58, size: 32, elements: !4100)
!4100 = !{!4101}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4099, file: !105, line: 59, baseType: !113, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4059, file: !92, line: 114, baseType: !4018, size: 64, offset: 768)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4059, file: !92, line: 115, baseType: !354, size: 64, offset: 832)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4059, file: !92, line: 116, baseType: !354, size: 64, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4059, file: !92, line: 118, baseType: !4013, size: 64, offset: 960)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4059, file: !92, line: 119, baseType: !4009, size: 64, offset: 1024)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4059, file: !92, line: 121, baseType: !4108, size: 64, offset: 1088)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !92, line: 121, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4046, file: !4047, line: 88, baseType: !3998, size: 64, offset: 384)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4046, file: !4047, line: 89, baseType: !4018, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4046, file: !4047, line: 90, baseType: !4009, size: 64, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4046, file: !4047, line: 91, baseType: !4009, size: 64, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4046, file: !4047, line: 92, baseType: !4009, size: 64, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4046, file: !4047, line: 94, baseType: !4018, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4046, file: !4047, line: 95, baseType: !4018, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4046, file: !4047, line: 97, baseType: !4095, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4046, file: !4047, line: 98, baseType: !4018, size: 64, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4046, file: !4047, line: 100, baseType: !4018, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4046, file: !4047, line: 102, baseType: !4018, size: 64, offset: 1024)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4046, file: !4047, line: 103, baseType: !4009, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4046, file: !4047, line: 105, baseType: !4013, size: 64, offset: 1152)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4046, file: !4047, line: 107, baseType: !4124, size: 64, offset: 1216)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4126)
!4126 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4047, line: 107, flags: DIFlagFwdDecl)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4046, file: !4047, line: 109, baseType: !1504, size: 8, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3982, file: !98, line: 715, baseType: !4058, size: 64, offset: 832)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3982, file: !98, line: 717, baseType: !374, size: 64, offset: 896)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3982, file: !98, line: 719, baseType: !374, size: 64, offset: 960)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3982, file: !98, line: 721, baseType: !683, size: 256, offset: 1024)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3982, file: !98, line: 725, baseType: !4133, size: 448, offset: 1280)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !98, line: 517, size: 448, elements: !4134)
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4133, file: !98, line: 518, baseType: !202, size: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4133, file: !98, line: 519, baseType: !202, size: 128, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4133, file: !98, line: 520, baseType: !202, size: 128, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4133, file: !98, line: 521, baseType: !97, size: 32, offset: 384)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3982, file: !98, line: 726, baseType: !4140, size: 2496, offset: 1728)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !105, line: 663, size: 2496, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4224, !4228}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4140, file: !105, line: 664, baseType: !4098, size: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4140, file: !105, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4140, file: !105, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4140, file: !105, line: 667, baseType: !1504, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4140, file: !105, line: 668, baseType: !1504, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4140, file: !105, line: 669, baseType: !1504, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4140, file: !105, line: 670, baseType: !1504, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4140, file: !105, line: 671, baseType: !1504, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4140, file: !105, line: 672, baseType: !1504, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4140, file: !105, line: 673, baseType: !1504, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4140, file: !105, line: 674, baseType: !1504, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4140, file: !105, line: 675, baseType: !452, size: 32, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4140, file: !105, line: 676, baseType: !232, size: 32, offset: 96)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4140, file: !105, line: 678, baseType: !202, size: 128, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4140, file: !105, line: 679, baseType: !2082, size: 256, offset: 256)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4140, file: !105, line: 680, baseType: !4158, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4160, line: 43, size: 1536, elements: !4161)
!4160 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4159, file: !4160, line: 44, baseType: !221, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4159, file: !4160, line: 45, baseType: !113, size: 32, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4159, file: !4160, line: 46, baseType: !202, size: 128, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4159, file: !4160, line: 47, baseType: !232, size: 32, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4159, file: !4160, line: 48, baseType: !4167, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !105, line: 629, flags: DIFlagFwdDecl)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4159, file: !4160, line: 49, baseType: !2711, size: 320, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4159, file: !4160, line: 50, baseType: !352, size: 64, offset: 704)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4159, file: !4160, line: 51, baseType: !1148, size: 64, offset: 768)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4159, file: !4160, line: 52, baseType: !1148, size: 64, offset: 832)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4159, file: !4160, line: 53, baseType: !1148, size: 64, offset: 896)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4159, file: !4160, line: 54, baseType: !1148, size: 64, offset: 960)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4159, file: !4160, line: 55, baseType: !1148, size: 64, offset: 1024)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4159, file: !4160, line: 56, baseType: !352, size: 64, offset: 1088)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4159, file: !4160, line: 57, baseType: !352, size: 64, offset: 1152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4159, file: !4160, line: 58, baseType: !352, size: 64, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4159, file: !4160, line: 59, baseType: !352, size: 64, offset: 1280)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4159, file: !4160, line: 60, baseType: !352, size: 64, offset: 1344)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4159, file: !4160, line: 61, baseType: !3981, size: 64, offset: 1408)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4159, file: !4160, line: 62, baseType: !1504, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4159, file: !4160, line: 63, baseType: !1504, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4140, file: !105, line: 681, baseType: !1504, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4140, file: !105, line: 682, baseType: !1504, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4140, file: !105, line: 683, baseType: !1504, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4140, file: !105, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4140, file: !105, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4140, file: !105, line: 690, baseType: !1140, size: 512, offset: 640)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4140, file: !105, line: 691, baseType: !456, size: 64, offset: 1152)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4140, file: !105, line: 692, baseType: !1971, size: 256, offset: 1216)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4140, file: !105, line: 693, baseType: !990, size: 192, offset: 1472)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4140, file: !105, line: 694, baseType: !4167, size: 64, offset: 1664)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4140, file: !105, line: 695, baseType: !252, size: 32, offset: 1728)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4140, file: !105, line: 696, baseType: !252, size: 32, offset: 1760)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4140, file: !105, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4140, file: !105, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4140, file: !105, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4140, file: !105, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4140, file: !105, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4140, file: !105, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4140, file: !105, line: 703, baseType: !1504, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4140, file: !105, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4140, file: !105, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4140, file: !105, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4140, file: !105, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4140, file: !105, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4140, file: !105, line: 709, baseType: !7, size: 32, offset: 1824)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4140, file: !105, line: 710, baseType: !104, size: 32, offset: 1856)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4140, file: !105, line: 711, baseType: !112, size: 32, offset: 1888)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4140, file: !105, line: 712, baseType: !112, size: 32, offset: 1920)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4140, file: !105, line: 713, baseType: !113, size: 32, offset: 1952)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4140, file: !105, line: 714, baseType: !113, size: 32, offset: 1984)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4140, file: !105, line: 715, baseType: !456, size: 64, offset: 2048)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4140, file: !105, line: 716, baseType: !456, size: 64, offset: 2112)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4140, file: !105, line: 717, baseType: !456, size: 64, offset: 2176)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4140, file: !105, line: 718, baseType: !456, size: 64, offset: 2240)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4140, file: !105, line: 720, baseType: !4219, size: 64, offset: 2304)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !105, line: 632, size: 64, elements: !4221)
!4221 = !{!4222, !4223}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4220, file: !105, line: 633, baseType: !232, size: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4220, file: !105, line: 634, baseType: !7, size: 32, offset: 32)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4140, file: !105, line: 721, baseType: !4225, size: 64, offset: 2368)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !3981, !1447}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4140, file: !105, line: 722, baseType: !4229, size: 64, offset: 2432)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !105, line: 722, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3982, file: !98, line: 727, baseType: !4232, size: 64, offset: 4224)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !105, line: 742, size: 1792, elements: !4234)
!4234 = !{!4235, !4236, !4237, !4241, !4242, !4243}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4233, file: !105, line: 743, baseType: !4015, size: 1472)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4233, file: !105, line: 744, baseType: !4018, size: 64, offset: 1472)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4233, file: !105, line: 745, baseType: !4238, size: 64, offset: 1536)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{null, !3981, !1504}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4233, file: !105, line: 746, baseType: !4018, size: 64, offset: 1600)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4233, file: !105, line: 747, baseType: !4009, size: 64, offset: 1664)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4233, file: !105, line: 748, baseType: !4009, size: 64, offset: 1728)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3982, file: !98, line: 736, baseType: !4245, size: 128, offset: 4288)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !98, line: 529, size: 128, elements: !4246)
!4246 = !{!4247, !4251}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4245, file: !98, line: 531, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4250, line: 13, flags: DIFlagFwdDecl)
!4250 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4245, file: !98, line: 532, baseType: !4252, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !98, line: 49, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3982, file: !98, line: 738, baseType: !4255, size: 64, offset: 4416)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4257)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !98, line: 738, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3982, file: !98, line: 740, baseType: !4259, size: 64, offset: 4480)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3982, file: !98, line: 741, baseType: !456, size: 64, offset: 4544)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3982, file: !98, line: 746, baseType: !456, size: 64, offset: 4608)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3982, file: !98, line: 747, baseType: !4263, size: 64, offset: 4672)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4265)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !98, line: 747, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3982, file: !98, line: 749, baseType: !4267, size: 64, offset: 4736)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !98, line: 428, size: 128, elements: !4269)
!4269 = !{!4270, !4271, !4272}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4268, file: !98, line: 433, baseType: !7, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4268, file: !98, line: 434, baseType: !7, size: 32, offset: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4268, file: !98, line: 435, baseType: !352, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3982, file: !98, line: 751, baseType: !202, size: 128, offset: 4800)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3982, file: !98, line: 762, baseType: !4275, size: 64, offset: 4928)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !98, line: 762, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3982, file: !98, line: 770, baseType: !4278, offset: 4992)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4279, line: 5, elements: !587)
!4279 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3982, file: !98, line: 772, baseType: !4281, size: 64, offset: 4992)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4283, line: 18, flags: DIFlagFwdDecl)
!4283 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3982, file: !98, line: 773, baseType: !4285, size: 64, offset: 5056)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4287, line: 41, size: 512, elements: !4288)
!4287 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4288 = !{!4289, !4290, !4383, !4384, !4385, !4386}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4286, file: !4287, line: 42, baseType: !4285, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4286, file: !4287, line: 43, baseType: !4291, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4293)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4287, line: 125, size: 1408, elements: !4294)
!4294 = !{!4295, !4299, !4303, !4309, !4313, !4314, !4318, !4322, !4326, !4330, !4334, !4335, !4339, !4343, !4347, !4358, !4359, !4360, !4361, !4371, !4375, !4379}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4293, file: !4287, line: 126, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!4285, !4285}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4293, file: !4287, line: 127, baseType: !4300, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !4285}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4293, file: !4287, line: 128, baseType: !4304, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!1504, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4293, file: !4287, line: 129, baseType: !4310, size: 64, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!1932, !4307, !4001}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4293, file: !4287, line: 131, baseType: !4304, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4293, file: !4287, line: 133, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!120, !4307}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4293, file: !4287, line: 134, baseType: !4319, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{!1504, !4307, !221}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4293, file: !4287, line: 136, baseType: !4323, size: 64, offset: 448)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!113, !4307, !221, !7, !374, !349}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4293, file: !4287, line: 141, baseType: !4327, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!113, !4307, !221, !3945, !349}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4293, file: !4287, line: 144, baseType: !4331, size: 64, offset: 576)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!221, !4307}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4293, file: !4287, line: 145, baseType: !4331, size: 64, offset: 640)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4293, file: !4287, line: 146, baseType: !4336, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!4285, !4307}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4293, file: !4287, line: 148, baseType: !4340, size: 64, offset: 768)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!4285, !4307, !4285}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4293, file: !4287, line: 151, baseType: !4344, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!4285, !4307, !221}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4293, file: !4287, line: 153, baseType: !4348, size: 64, offset: 896)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!113, !4307, !221, !221, !7, !7, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4287, line: 94, size: 640, elements: !4353)
!4353 = !{!4354, !4355, !4356}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4352, file: !4287, line: 95, baseType: !4285, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4352, file: !4287, line: 96, baseType: !7, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4352, file: !4287, line: 97, baseType: !4357, size: 512, offset: 128)
!4357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 512, elements: !1183)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4293, file: !4287, line: 158, baseType: !4340, size: 64, offset: 960)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4293, file: !4287, line: 161, baseType: !4336, size: 64, offset: 1024)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4293, file: !4287, line: 163, baseType: !4296, size: 64, offset: 1088)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4293, file: !4287, line: 164, baseType: !4362, size: 64, offset: 1152)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!113, !4307, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4287, line: 73, size: 128, elements: !4367)
!4367 = !{!4368, !4369, !4370}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4366, file: !4287, line: 74, baseType: !7, size: 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4366, file: !4287, line: 75, baseType: !7, size: 32, offset: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4366, file: !4287, line: 76, baseType: !4307, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4293, file: !4287, line: 166, baseType: !4372, size: 64, offset: 1216)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!374, !4285, !113}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4293, file: !4287, line: 167, baseType: !4376, size: 64, offset: 1280)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!113, !4307, !7}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4293, file: !4287, line: 168, baseType: !4380, size: 64, offset: 1344)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!113, !4285}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4286, file: !4287, line: 44, baseType: !3981, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4286, file: !4287, line: 45, baseType: !202, size: 128, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4286, file: !4287, line: 46, baseType: !202, size: 128, offset: 320)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4286, file: !4287, line: 47, baseType: !260, size: 8, offset: 448)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3982, file: !98, line: 776, baseType: !113, size: 32, offset: 5120)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3982, file: !98, line: 778, baseType: !539, size: 32, offset: 5152)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3982, file: !98, line: 779, baseType: !452, size: 32, offset: 5184)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3982, file: !98, line: 781, baseType: !232, size: 32, offset: 5216)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3982, file: !98, line: 782, baseType: !202, size: 128, offset: 5248)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3982, file: !98, line: 784, baseType: !4393, size: 64, offset: 5376)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4395)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4396, line: 52, size: 768, elements: !4397)
!4396 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4406, !4410, !4411, !4412, !4413, !4417, !4421}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4395, file: !4396, line: 53, baseType: !221, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4395, file: !4396, line: 55, baseType: !354, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4395, file: !4396, line: 56, baseType: !354, size: 64, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4395, file: !4396, line: 58, baseType: !3998, size: 64, offset: 192)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4395, file: !4396, line: 59, baseType: !4403, size: 64, offset: 256)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!302, !4001, !4007}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4395, file: !4396, line: 61, baseType: !4407, size: 64, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{null, !4393}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4395, file: !4396, line: 62, baseType: !4009, size: 64, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4395, file: !4396, line: 64, baseType: !4018, size: 64, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4395, file: !4396, line: 66, baseType: !3497, size: 64, offset: 512)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4395, file: !4396, line: 67, baseType: !4414, size: 64, offset: 576)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!1932, !4001}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4395, file: !4396, line: 69, baseType: !4418, size: 64, offset: 640)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !4001, !3529, !3530}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4395, file: !4396, line: 71, baseType: !4013, size: 64, offset: 704)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3982, file: !98, line: 785, baseType: !354, size: 64, offset: 5440)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3982, file: !98, line: 787, baseType: !4009, size: 64, offset: 5504)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3982, file: !98, line: 788, baseType: !4425, size: 64, offset: 5568)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !98, line: 46, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3982, file: !98, line: 789, baseType: !4428, size: 64, offset: 5632)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !98, line: 48, flags: DIFlagFwdDecl)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3982, file: !98, line: 791, baseType: !4431, size: 64, offset: 5696)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !98, line: 597, size: 128, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4437, !4438}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4432, file: !98, line: 598, baseType: !126, size: 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4432, file: !98, line: 599, baseType: !135, size: 32, offset: 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4432, file: !98, line: 600, baseType: !140, size: 32, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4432, file: !98, line: 601, baseType: !1504, size: 8, offset: 96)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4432, file: !98, line: 602, baseType: !1504, size: 8, offset: 104)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3982, file: !98, line: 793, baseType: !145, size: 32, offset: 5760)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3982, file: !98, line: 795, baseType: !1504, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3982, file: !98, line: 796, baseType: !1504, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3982, file: !98, line: 797, baseType: !1504, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3982, file: !98, line: 798, baseType: !1504, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3982, file: !98, line: 799, baseType: !1504, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !3978, file: !152, line: 453, baseType: !3981, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !3978, file: !152, line: 454, baseType: !113, size: 32, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !3978, file: !152, line: 455, baseType: !221, size: 64, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !3978, file: !152, line: 456, baseType: !260, size: 8, offset: 256)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !3978, file: !152, line: 460, baseType: !260, size: 8, offset: 264)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !3978, file: !152, line: 461, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !3978, file: !152, line: 462, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !3978, file: !152, line: 463, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !3978, file: !152, line: 468, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !3978, file: !152, line: 469, baseType: !7, size: 32, offset: 288)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !3978, file: !152, line: 471, baseType: !113, size: 32, offset: 320)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !3978, file: !152, line: 473, baseType: !683, size: 256, offset: 384)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !3978, file: !152, line: 475, baseType: !4458, size: 128, offset: 640)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !152, line: 444, size: 128, elements: !4459)
!4459 = !{!4460}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4458, file: !152, line: 445, baseType: !4461, size: 128)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 128, elements: !2215)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !3978, file: !152, line: 476, baseType: !4463, size: 64, offset: 768)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !152, line: 652, size: 10816, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4485, !4486, !4488, !4489, !4491, !4532, !4533, !4550, !4620, !4704, !4705, !4707, !4708, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4747, !4754, !4755, !4756, !4757}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4464, file: !152, line: 653, baseType: !113, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4464, file: !152, line: 654, baseType: !2133, size: 128, offset: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4464, file: !152, line: 655, baseType: !452, size: 32, offset: 160)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4464, file: !152, line: 656, baseType: !63, size: 32, offset: 192)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4464, file: !152, line: 657, baseType: !75, size: 32, offset: 224)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4464, file: !152, line: 658, baseType: !7, size: 32, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4464, file: !152, line: 659, baseType: !7, size: 32, offset: 288)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_rate", scope: !4464, file: !152, line: 660, baseType: !84, size: 32, offset: 320)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4464, file: !152, line: 662, baseType: !4475, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !191, line: 558, size: 640, elements: !4477)
!4477 = !{!4478, !4479, !4480, !4481, !4482, !4483, !4484}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4476, file: !191, line: 559, baseType: !4463, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !4476, file: !191, line: 560, baseType: !113, size: 32, offset: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !4476, file: !191, line: 561, baseType: !7, size: 32, offset: 96)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4476, file: !191, line: 562, baseType: !374, size: 64, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4476, file: !191, line: 565, baseType: !232, size: 32, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !4476, file: !191, line: 566, baseType: !202, size: 128, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !4476, file: !191, line: 567, baseType: !1971, size: 256, offset: 384)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4464, file: !152, line: 663, baseType: !113, size: 32, offset: 448)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4464, file: !152, line: 665, baseType: !4487, size: 64, offset: 480)
!4487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !2215)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4464, file: !152, line: 667, baseType: !4463, size: 64, offset: 576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4464, file: !152, line: 668, baseType: !4490, size: 64, offset: 640)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4464, file: !152, line: 669, baseType: !4492, size: 640, offset: 704)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !152, line: 66, size: 640, elements: !4493)
!4493 = !{!4494, !4506, !4514, !4522, !4523, !4524, !4527, !4529, !4530, !4531}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4492, file: !152, line: 67, baseType: !4495, size: 72)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !64, line: 407, size: 72, elements: !4496)
!4496 = !{!4497, !4498, !4499, !4500, !4501, !4503, !4504, !4505}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4495, file: !64, line: 408, baseType: !262, size: 8)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4495, file: !64, line: 409, baseType: !262, size: 8, offset: 8)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4495, file: !64, line: 411, baseType: !262, size: 8, offset: 16)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4495, file: !64, line: 412, baseType: !262, size: 8, offset: 24)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4495, file: !64, line: 413, baseType: !4502, size: 16, offset: 32)
!4502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1689, line: 36, baseType: !271)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4495, file: !64, line: 414, baseType: !262, size: 8, offset: 48)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4495, file: !64, line: 418, baseType: !262, size: 8, offset: 56)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4495, file: !64, line: 419, baseType: !262, size: 8, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4492, file: !152, line: 68, baseType: !4507, size: 48, offset: 72)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !64, line: 689, size: 48, elements: !4508)
!4508 = !{!4509, !4510, !4511, !4512, !4513}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4507, file: !64, line: 690, baseType: !262, size: 8)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4507, file: !64, line: 691, baseType: !262, size: 8, offset: 8)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4507, file: !64, line: 693, baseType: !262, size: 8, offset: 16)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4507, file: !64, line: 694, baseType: !262, size: 8, offset: 24)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4507, file: !64, line: 695, baseType: !4502, size: 16, offset: 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4492, file: !152, line: 69, baseType: !4515, size: 64, offset: 120)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !64, line: 677, size: 64, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4520}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4515, file: !64, line: 678, baseType: !262, size: 8)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4515, file: !64, line: 679, baseType: !262, size: 8, offset: 8)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4515, file: !64, line: 680, baseType: !4502, size: 16, offset: 16)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4515, file: !64, line: 681, baseType: !4521, size: 32, offset: 32)
!4521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1689, line: 38, baseType: !453)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4492, file: !152, line: 70, baseType: !202, size: 128, offset: 192)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4492, file: !152, line: 71, baseType: !374, size: 64, offset: 320)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4492, file: !152, line: 72, baseType: !4525, size: 64, offset: 384)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !152, line: 47, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4492, file: !152, line: 74, baseType: !4528, size: 64, offset: 448)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4492, file: !152, line: 75, baseType: !113, size: 32, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4492, file: !152, line: 76, baseType: !113, size: 32, offset: 544)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4492, file: !152, line: 77, baseType: !113, size: 32, offset: 576)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4464, file: !152, line: 671, baseType: !3982, size: 5824, offset: 1344)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4464, file: !152, line: 673, baseType: !4534, size: 144, offset: 7168)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !64, line: 286, size: 144, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4534, file: !64, line: 287, baseType: !262, size: 8)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4534, file: !64, line: 288, baseType: !262, size: 8, offset: 8)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4534, file: !64, line: 290, baseType: !4502, size: 16, offset: 16)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4534, file: !64, line: 291, baseType: !262, size: 8, offset: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4534, file: !64, line: 292, baseType: !262, size: 8, offset: 40)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4534, file: !64, line: 293, baseType: !262, size: 8, offset: 48)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4534, file: !64, line: 294, baseType: !262, size: 8, offset: 56)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4534, file: !64, line: 295, baseType: !4502, size: 16, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4534, file: !64, line: 296, baseType: !4502, size: 16, offset: 80)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4534, file: !64, line: 297, baseType: !4502, size: 16, offset: 96)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4534, file: !64, line: 298, baseType: !262, size: 8, offset: 112)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4534, file: !64, line: 299, baseType: !262, size: 8, offset: 120)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4534, file: !64, line: 300, baseType: !262, size: 8, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4534, file: !64, line: 301, baseType: !262, size: 8, offset: 136)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4464, file: !152, line: 674, baseType: !4551, size: 64, offset: 7360)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !152, line: 424, size: 384, elements: !4553)
!4553 = !{!4554, !4562, !4570, !4582, !4604, !4613}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4552, file: !152, line: 425, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !64, line: 844, size: 40, elements: !4557)
!4557 = !{!4558, !4559, !4560, !4561}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4556, file: !64, line: 845, baseType: !262, size: 8)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4556, file: !64, line: 846, baseType: !262, size: 8, offset: 8)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4556, file: !64, line: 848, baseType: !4502, size: 16, offset: 16)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4556, file: !64, line: 849, baseType: !262, size: 8, offset: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4552, file: !152, line: 427, baseType: !4563, size: 64, offset: 64)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !64, line: 895, size: 56, elements: !4565)
!4565 = !{!4566, !4567, !4568, !4569}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4564, file: !64, line: 896, baseType: !262, size: 8)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4564, file: !64, line: 897, baseType: !262, size: 8, offset: 8)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4564, file: !64, line: 898, baseType: !262, size: 8, offset: 16)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4564, file: !64, line: 899, baseType: !4521, size: 32, offset: 24)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4552, file: !152, line: 428, baseType: !4571, size: 64, offset: 128)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !64, line: 917, size: 80, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4572, file: !64, line: 918, baseType: !262, size: 8)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4572, file: !64, line: 919, baseType: !262, size: 8, offset: 8)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4572, file: !64, line: 920, baseType: !262, size: 8, offset: 16)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4572, file: !64, line: 921, baseType: !262, size: 8, offset: 24)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4572, file: !64, line: 923, baseType: !4502, size: 16, offset: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4572, file: !64, line: 928, baseType: !262, size: 8, offset: 48)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4572, file: !64, line: 929, baseType: !262, size: 8, offset: 56)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4572, file: !64, line: 930, baseType: !4502, size: 16, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4552, file: !152, line: 429, baseType: !4583, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !64, line: 971, size: 128, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4584, file: !64, line: 972, baseType: !262, size: 8)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4584, file: !64, line: 973, baseType: !262, size: 8, offset: 8)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4584, file: !64, line: 974, baseType: !262, size: 8, offset: 16)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4584, file: !64, line: 975, baseType: !262, size: 8, offset: 24)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4584, file: !64, line: 976, baseType: !4521, size: 32, offset: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4584, file: !64, line: 979, baseType: !4502, size: 16, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4584, file: !64, line: 983, baseType: !4502, size: 16, offset: 80)
!4593 = !DIDerivedType(tag: DW_TAG_member, scope: !4584, file: !64, line: 984, baseType: !4594, size: 32, offset: 96)
!4594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4584, file: !64, line: 984, size: 32, elements: !4595)
!4595 = !{!4596, !4597}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_padding", scope: !4594, file: !64, line: 985, baseType: !4521, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, scope: !4594, file: !64, line: 987, baseType: !4598)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4594, file: !64, line: 987, elements: !4599)
!4599 = !{!4600, !4602}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_bmSublinkSpeedAttr", scope: !4598, file: !64, line: 987, baseType: !4601)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4598, file: !64, line: 987, elements: !587)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4598, file: !64, line: 987, baseType: !4603)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4521, elements: !1405)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4552, file: !152, line: 430, baseType: !4605, size: 64, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !64, line: 940, size: 160, elements: !4607)
!4607 = !{!4608, !4609, !4610, !4611, !4612}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4606, file: !64, line: 941, baseType: !262, size: 8)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4606, file: !64, line: 942, baseType: !262, size: 8, offset: 8)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4606, file: !64, line: 943, baseType: !262, size: 8, offset: 16)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4606, file: !64, line: 944, baseType: !262, size: 8, offset: 24)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4606, file: !64, line: 945, baseType: !2993, size: 128, offset: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4552, file: !152, line: 431, baseType: !4614, size: 64, offset: 320)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !64, line: 1113, size: 24, elements: !4616)
!4616 = !{!4617, !4618, !4619}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4615, file: !64, line: 1114, baseType: !262, size: 8)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4615, file: !64, line: 1115, baseType: !262, size: 8, offset: 8)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4615, file: !64, line: 1116, baseType: !262, size: 8, offset: 16)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4464, file: !152, line: 675, baseType: !4621, size: 64, offset: 7424)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !152, line: 402, size: 5440, elements: !4623)
!4623 = !{!4624, !4635, !4636, !4649, !4693, !4702, !4703}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4622, file: !152, line: 403, baseType: !4625, size: 72)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !64, line: 346, size: 72, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4625, file: !64, line: 347, baseType: !262, size: 8)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4625, file: !64, line: 348, baseType: !262, size: 8, offset: 8)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4625, file: !64, line: 350, baseType: !4502, size: 16, offset: 16)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4625, file: !64, line: 351, baseType: !262, size: 8, offset: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4625, file: !64, line: 352, baseType: !262, size: 8, offset: 40)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4625, file: !64, line: 353, baseType: !262, size: 8, offset: 48)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4625, file: !64, line: 354, baseType: !262, size: 8, offset: 56)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4625, file: !64, line: 355, baseType: !262, size: 8, offset: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4622, file: !152, line: 405, baseType: !302, size: 64, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4622, file: !152, line: 409, baseType: !4637, size: 1024, offset: 192)
!4637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4638, size: 1024, elements: !2134)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !64, line: 783, size: 64, elements: !4640)
!4640 = !{!4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4639, file: !64, line: 784, baseType: !262, size: 8)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4639, file: !64, line: 785, baseType: !262, size: 8, offset: 8)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4639, file: !64, line: 787, baseType: !262, size: 8, offset: 16)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4639, file: !64, line: 788, baseType: !262, size: 8, offset: 24)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4639, file: !64, line: 789, baseType: !262, size: 8, offset: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4639, file: !64, line: 790, baseType: !262, size: 8, offset: 40)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4639, file: !64, line: 791, baseType: !262, size: 8, offset: 48)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4639, file: !64, line: 792, baseType: !262, size: 8, offset: 56)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4622, file: !152, line: 413, baseType: !4650, size: 2048, offset: 1216)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4651, size: 2048, elements: !465)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !152, line: 241, size: 6784, elements: !4653)
!4653 = !{!4654, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4652, file: !152, line: 244, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !152, line: 81, size: 320, elements: !4657)
!4657 = !{!4658, !4670, !4671, !4672, !4674}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4656, file: !152, line: 82, baseType: !4659, size: 72)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !64, line: 389, size: 72, elements: !4660)
!4660 = !{!4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4659, file: !64, line: 390, baseType: !262, size: 8)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4659, file: !64, line: 391, baseType: !262, size: 8, offset: 8)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4659, file: !64, line: 393, baseType: !262, size: 8, offset: 16)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4659, file: !64, line: 394, baseType: !262, size: 8, offset: 24)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4659, file: !64, line: 395, baseType: !262, size: 8, offset: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4659, file: !64, line: 396, baseType: !262, size: 8, offset: 40)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4659, file: !64, line: 397, baseType: !262, size: 8, offset: 48)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4659, file: !64, line: 398, baseType: !262, size: 8, offset: 56)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4659, file: !64, line: 399, baseType: !262, size: 8, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4656, file: !152, line: 84, baseType: !113, size: 32, offset: 96)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4656, file: !152, line: 85, baseType: !4528, size: 64, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4656, file: !152, line: 90, baseType: !4673, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4656, file: !152, line: 92, baseType: !302, size: 64, offset: 256)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4652, file: !152, line: 246, baseType: !4655, size: 64, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4652, file: !152, line: 248, baseType: !7, size: 32, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4652, file: !152, line: 252, baseType: !4638, size: 64, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4652, file: !152, line: 254, baseType: !113, size: 32, offset: 256)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4652, file: !152, line: 256, baseType: !151, size: 32, offset: 288)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4652, file: !152, line: 257, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4652, file: !152, line: 258, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4652, file: !152, line: 259, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4652, file: !152, line: 260, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4652, file: !152, line: 261, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4652, file: !152, line: 262, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4652, file: !152, line: 263, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4652, file: !152, line: 264, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status", scope: !4652, file: !152, line: 265, baseType: !158, size: 32, offset: 352)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status_work", scope: !4652, file: !152, line: 266, baseType: !1971, size: 256, offset: 384)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4652, file: !152, line: 268, baseType: !3982, size: 5824, offset: 640)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4652, file: !152, line: 269, baseType: !3981, size: 64, offset: 6464)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4652, file: !152, line: 270, baseType: !1971, size: 256, offset: 6528)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4622, file: !152, line: 417, baseType: !4694, size: 2048, offset: 3264)
!4694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4695, size: 2048, elements: !465)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !152, line: 350, size: 64, elements: !4697)
!4697 = !{!4698, !4699, !4700}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4696, file: !152, line: 351, baseType: !7, size: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4696, file: !152, line: 352, baseType: !3635, size: 32, offset: 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4696, file: !152, line: 356, baseType: !4701, offset: 64)
!4701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4656, elements: !1405)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4622, file: !152, line: 419, baseType: !4528, size: 64, offset: 5312)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4622, file: !152, line: 420, baseType: !113, size: 32, offset: 5376)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4464, file: !152, line: 677, baseType: !4621, size: 64, offset: 7488)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4464, file: !152, line: 678, baseType: !4706, size: 1024, offset: 7552)
!4706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4673, size: 1024, elements: !2134)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4464, file: !152, line: 679, baseType: !4706, size: 1024, offset: 8576)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4464, file: !152, line: 681, baseType: !4709, size: 64, offset: 9600)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4464, file: !152, line: 683, baseType: !272, size: 16, offset: 9664)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4464, file: !152, line: 684, baseType: !260, size: 8, offset: 9680)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4464, file: !152, line: 685, baseType: !260, size: 8, offset: 9688)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4464, file: !152, line: 686, baseType: !260, size: 8, offset: 9696)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4464, file: !152, line: 688, baseType: !7, size: 1, offset: 9704, flags: DIFlagBitField, extraData: i64 9704)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4464, file: !152, line: 689, baseType: !7, size: 1, offset: 9705, flags: DIFlagBitField, extraData: i64 9704)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "reset_in_progress", scope: !4464, file: !152, line: 690, baseType: !7, size: 1, offset: 9706, flags: DIFlagBitField, extraData: i64 9704)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4464, file: !152, line: 691, baseType: !7, size: 1, offset: 9707, flags: DIFlagBitField, extraData: i64 9704)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4464, file: !152, line: 692, baseType: !7, size: 1, offset: 9708, flags: DIFlagBitField, extraData: i64 9704)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4464, file: !152, line: 693, baseType: !7, size: 1, offset: 9709, flags: DIFlagBitField, extraData: i64 9704)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4464, file: !152, line: 694, baseType: !7, size: 1, offset: 9710, flags: DIFlagBitField, extraData: i64 9704)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_devinit_allow", scope: !4464, file: !152, line: 695, baseType: !7, size: 1, offset: 9711, flags: DIFlagBitField, extraData: i64 9704)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4464, file: !152, line: 696, baseType: !7, size: 1, offset: 9712, flags: DIFlagBitField, extraData: i64 9704)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4464, file: !152, line: 697, baseType: !7, size: 1, offset: 9713, flags: DIFlagBitField, extraData: i64 9704)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4464, file: !152, line: 698, baseType: !7, size: 1, offset: 9714, flags: DIFlagBitField, extraData: i64 9704)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4464, file: !152, line: 699, baseType: !7, size: 1, offset: 9715, flags: DIFlagBitField, extraData: i64 9704)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4464, file: !152, line: 700, baseType: !7, size: 1, offset: 9716, flags: DIFlagBitField, extraData: i64 9704)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4464, file: !152, line: 701, baseType: !7, size: 1, offset: 9717, flags: DIFlagBitField, extraData: i64 9704)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4464, file: !152, line: 702, baseType: !113, size: 32, offset: 9728)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4464, file: !152, line: 705, baseType: !302, size: 64, offset: 9792)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4464, file: !152, line: 706, baseType: !302, size: 64, offset: 9856)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4464, file: !152, line: 707, baseType: !302, size: 64, offset: 9920)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4464, file: !152, line: 709, baseType: !202, size: 128, offset: 9984)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4464, file: !152, line: 711, baseType: !113, size: 32, offset: 10112)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4464, file: !152, line: 713, baseType: !452, size: 32, offset: 10144)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4464, file: !152, line: 714, baseType: !252, size: 32, offset: 10176)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4464, file: !152, line: 716, baseType: !352, size: 64, offset: 10240)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4464, file: !152, line: 718, baseType: !352, size: 64, offset: 10304)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4464, file: !152, line: 720, baseType: !7, size: 1, offset: 10368, flags: DIFlagBitField, extraData: i64 10368)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4464, file: !152, line: 721, baseType: !7, size: 1, offset: 10369, flags: DIFlagBitField, extraData: i64 10368)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4464, file: !152, line: 722, baseType: !7, size: 1, offset: 10370, flags: DIFlagBitField, extraData: i64 10368)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4464, file: !152, line: 724, baseType: !113, size: 32, offset: 10400)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4464, file: !152, line: 725, baseType: !4743, size: 64, offset: 10432)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !152, line: 523, size: 64, elements: !4744)
!4744 = !{!4745, !4746}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4743, file: !152, line: 527, baseType: !7, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4743, file: !152, line: 533, baseType: !113, size: 32, offset: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4464, file: !152, line: 726, baseType: !4748, size: 128, offset: 10496)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !152, line: 543, size: 128, elements: !4749)
!4749 = !{!4750, !4751, !4752, !4753}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4748, file: !152, line: 550, baseType: !7, size: 32)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4748, file: !152, line: 556, baseType: !7, size: 32, offset: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4748, file: !152, line: 566, baseType: !7, size: 32, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4748, file: !152, line: 572, baseType: !113, size: 32, offset: 96)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4464, file: !152, line: 727, baseType: !4748, size: 128, offset: 10624)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4464, file: !152, line: 728, baseType: !7, size: 32, offset: 10752)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4464, file: !152, line: 730, baseType: !270, size: 16, offset: 10784)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4464, file: !152, line: 731, baseType: !7, size: 1, offset: 10800, flags: DIFlagBitField, extraData: i64 10800)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !3978, file: !152, line: 477, baseType: !4490, size: 64, offset: 832)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !3978, file: !152, line: 479, baseType: !113, size: 32, offset: 896)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !3978, file: !152, line: 486, baseType: !113, size: 32, offset: 928)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !3978, file: !152, line: 487, baseType: !113, size: 32, offset: 960)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !3978, file: !152, line: 489, baseType: !7, size: 32, offset: 992)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mon_bus", scope: !3978, file: !152, line: 492, baseType: !4764, size: 64, offset: 1024)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DICompositeType(tag: DW_TAG_structure_type, name: "mon_bus", file: !152, line: 492, flags: DIFlagFwdDecl)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "monitored", scope: !3978, file: !152, line: 493, baseType: !113, size: 32, offset: 1088)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3975, file: !191, line: 74, baseType: !3635, size: 32, offset: 1152)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !3975, file: !191, line: 76, baseType: !221, size: 64, offset: 1216)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3975, file: !191, line: 77, baseType: !113, size: 32, offset: 1280)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !3975, file: !191, line: 81, baseType: !4771, size: 192, offset: 1312)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 192, elements: !4772)
!4772 = !{!4773}
!4773 = !DISubrange(count: 24)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !3975, file: !191, line: 83, baseType: !2711, size: 320, offset: 1536)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !3975, file: !191, line: 84, baseType: !4776, size: 64, offset: 1856)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !152, line: 1598, size: 1472, elements: !4778)
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4804, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4823}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4777, file: !152, line: 1600, baseType: !3635, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4777, file: !152, line: 1601, baseType: !113, size: 32, offset: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4777, file: !152, line: 1602, baseType: !374, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4777, file: !152, line: 1603, baseType: !252, size: 32, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4777, file: !152, line: 1604, baseType: !252, size: 32, offset: 160)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4777, file: !152, line: 1607, baseType: !202, size: 128, offset: 192)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4777, file: !152, line: 1609, baseType: !202, size: 128, offset: 320)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4777, file: !152, line: 1610, baseType: !4787, size: 64, offset: 448)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !152, line: 1397, size: 448, elements: !4789)
!4789 = !{!4790, !4791, !4792, !4793, !4794}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4788, file: !152, line: 1398, baseType: !202, size: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4788, file: !152, line: 1399, baseType: !990, size: 192, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4788, file: !152, line: 1400, baseType: !232, size: 32, offset: 320)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4788, file: !152, line: 1401, baseType: !252, size: 32, offset: 352)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4788, file: !152, line: 1402, baseType: !7, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4777, file: !152, line: 1611, baseType: !4463, size: 64, offset: 512)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4777, file: !152, line: 1612, baseType: !4673, size: 64, offset: 576)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4777, file: !152, line: 1613, baseType: !7, size: 32, offset: 640)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4777, file: !152, line: 1614, baseType: !7, size: 32, offset: 672)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4777, file: !152, line: 1615, baseType: !113, size: 32, offset: 704)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4777, file: !152, line: 1616, baseType: !7, size: 32, offset: 736)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4777, file: !152, line: 1617, baseType: !374, size: 64, offset: 768)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4777, file: !152, line: 1618, baseType: !4803, size: 64, offset: 832)
!4803 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !203, line: 149, baseType: !456)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4777, file: !152, line: 1619, baseType: !4805, size: 64, offset: 896)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !152, line: 1619, flags: DIFlagFwdDecl)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4777, file: !152, line: 1620, baseType: !113, size: 32, offset: 960)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4777, file: !152, line: 1621, baseType: !113, size: 32, offset: 992)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4777, file: !152, line: 1622, baseType: !452, size: 32, offset: 1024)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4777, file: !152, line: 1623, baseType: !452, size: 32, offset: 1056)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4777, file: !152, line: 1624, baseType: !4528, size: 64, offset: 1088)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4777, file: !152, line: 1625, baseType: !4803, size: 64, offset: 1152)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4777, file: !152, line: 1626, baseType: !113, size: 32, offset: 1216)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4777, file: !152, line: 1627, baseType: !113, size: 32, offset: 1248)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4777, file: !152, line: 1628, baseType: !113, size: 32, offset: 1280)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4777, file: !152, line: 1630, baseType: !113, size: 32, offset: 1312)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4777, file: !152, line: 1631, baseType: !374, size: 64, offset: 1344)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4777, file: !152, line: 1632, baseType: !4819, size: 64, offset: 1408)
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !152, line: 1413, baseType: !4820)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{null, !4776}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4777, file: !152, line: 1633, baseType: !4824, offset: 1472)
!4824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4825, elements: !1405)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !152, line: 1388, size: 128, elements: !4826)
!4826 = !{!4827, !4828, !4829, !4830}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4825, file: !152, line: 1389, baseType: !7, size: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4825, file: !152, line: 1390, baseType: !7, size: 32, offset: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4825, file: !152, line: 1391, baseType: !7, size: 32, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4825, file: !152, line: 1392, baseType: !113, size: 32, offset: 96)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !3975, file: !191, line: 86, baseType: !1971, size: 256, offset: 1920)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !3975, file: !191, line: 88, baseType: !1971, size: 256, offset: 2176)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3975, file: !191, line: 93, baseType: !4834, size: 64, offset: 2432)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4836)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !191, line: 237, size: 3008, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4846, !4847, !4851, !4852, !4856, !4860, !4861, !4865, !4866, !4867, !4871, !4875, !4876, !4880, !4884, !4885, !4889, !4893, !4894, !4895, !4899, !4903, !4907, !4911, !4912, !4916, !4920, !4925, !4929, !4933, !4934, !4935, !4936, !4940, !4941, !4945, !4946, !4947, !4951, !4955, !4956, !4957, !4961}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4836, file: !191, line: 238, baseType: !221, size: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4836, file: !191, line: 239, baseType: !221, size: 64, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4836, file: !191, line: 240, baseType: !349, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4836, file: !191, line: 243, baseType: !4842, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!4845, !3974}
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !179, line: 17, baseType: !178)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4836, file: !191, line: 245, baseType: !113, size: 32, offset: 256)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4836, file: !191, line: 258, baseType: !4848, size: 64, offset: 320)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!113, !3974}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4836, file: !191, line: 259, baseType: !4848, size: 64, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4836, file: !191, line: 265, baseType: !4853, size: 64, offset: 448)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!113, !3974, !1504}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4836, file: !191, line: 268, baseType: !4857, size: 64, offset: 512)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!113, !3974, !4098}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pci_poweroff_late", scope: !4836, file: !191, line: 271, baseType: !4853, size: 64, offset: 576)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4836, file: !191, line: 274, baseType: !4862, size: 64, offset: 640)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{null, !3974}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4836, file: !191, line: 277, baseType: !4862, size: 64, offset: 704)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4836, file: !191, line: 280, baseType: !4848, size: 64, offset: 768)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4836, file: !191, line: 283, baseType: !4868, size: 64, offset: 832)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!113, !3974, !4776, !748}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4836, file: !191, line: 285, baseType: !4872, size: 64, offset: 896)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!113, !3974, !4776, !113}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4836, file: !191, line: 297, baseType: !4868, size: 64, offset: 960)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4836, file: !191, line: 299, baseType: !4877, size: 64, offset: 1024)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{null, !3974, !4776}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4836, file: !191, line: 302, baseType: !4881, size: 64, offset: 1088)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{null, !3974, !4673}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4836, file: !191, line: 307, baseType: !4881, size: 64, offset: 1152)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4836, file: !191, line: 311, baseType: !4886, size: 64, offset: 1216)
!4886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4887, size: 64)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!113, !3974, !302}
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4836, file: !191, line: 312, baseType: !4890, size: 64, offset: 1280)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!113, !3974, !270, !270, !270, !302, !270}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4836, file: !191, line: 315, baseType: !4848, size: 64, offset: 1344)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4836, file: !191, line: 316, baseType: !4848, size: 64, offset: 1408)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4836, file: !191, line: 317, baseType: !4896, size: 64, offset: 1472)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!113, !3974, !7}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4836, file: !191, line: 318, baseType: !4900, size: 64, offset: 1536)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!352, !3974}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4836, file: !191, line: 321, baseType: !4904, size: 64, offset: 1600)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{null, !3974, !113}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4836, file: !191, line: 323, baseType: !4908, size: 64, offset: 1664)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!113, !3974, !113}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4836, file: !191, line: 326, baseType: !4881, size: 64, offset: 1728)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4836, file: !191, line: 331, baseType: !4913, size: 64, offset: 1792)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!113, !3974, !4463}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4836, file: !191, line: 333, baseType: !4917, size: 64, offset: 1856)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{null, !3974, !4463}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4836, file: !191, line: 335, baseType: !4921, size: 64, offset: 1920)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!113, !3974, !4463, !4924, !7, !7, !748}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4836, file: !191, line: 341, baseType: !4926, size: 64, offset: 1984)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!113, !3974, !4463, !4924, !7, !748}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4836, file: !191, line: 356, baseType: !4930, size: 64, offset: 2048)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!113, !3974, !4463, !4673}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4836, file: !191, line: 359, baseType: !4930, size: 64, offset: 2112)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4836, file: !191, line: 366, baseType: !4913, size: 64, offset: 2176)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4836, file: !191, line: 374, baseType: !4917, size: 64, offset: 2240)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4836, file: !191, line: 376, baseType: !4937, size: 64, offset: 2304)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!113, !3974, !4463, !7}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4836, file: !191, line: 379, baseType: !4913, size: 64, offset: 2368)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4836, file: !191, line: 383, baseType: !4942, size: 64, offset: 2432)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!113, !3974, !4463, !4475, !748}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4836, file: !191, line: 385, baseType: !4913, size: 64, offset: 2496)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4836, file: !191, line: 389, baseType: !4913, size: 64, offset: 2560)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4836, file: !191, line: 390, baseType: !4948, size: 64, offset: 2624)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!113, !3974, !4463, !113}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4836, file: !191, line: 393, baseType: !4952, size: 64, offset: 2688)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!113, !3974, !4463, !184}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4836, file: !191, line: 398, baseType: !4952, size: 64, offset: 2752)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4836, file: !191, line: 400, baseType: !4908, size: 64, offset: 2816)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4836, file: !191, line: 402, baseType: !4958, size: 64, offset: 2880)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!113, !3974, !113, !1504}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "submit_single_step_set_feature", scope: !4836, file: !191, line: 405, baseType: !4872, size: 64, offset: 2944)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !3975, file: !191, line: 99, baseType: !4963, size: 64, offset: 2496)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !191, line: 99, flags: DIFlagFwdDecl)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !3975, file: !191, line: 100, baseType: !4966, size: 64, offset: 2560)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !191, line: 100, flags: DIFlagFwdDecl)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3975, file: !191, line: 106, baseType: !352, size: 64, offset: 2624)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !3975, file: !191, line: 140, baseType: !190, size: 32, offset: 2688)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !3975, file: !191, line: 143, baseType: !7, size: 1, offset: 2720, flags: DIFlagBitField, extraData: i64 2720)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !3975, file: !191, line: 144, baseType: !7, size: 1, offset: 2721, flags: DIFlagBitField, extraData: i64 2720)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3975, file: !191, line: 145, baseType: !7, size: 1, offset: 2722, flags: DIFlagBitField, extraData: i64 2720)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3975, file: !191, line: 146, baseType: !7, size: 1, offset: 2723, flags: DIFlagBitField, extraData: i64 2720)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !3975, file: !191, line: 152, baseType: !7, size: 1, offset: 2724, flags: DIFlagBitField, extraData: i64 2720)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !3975, file: !191, line: 156, baseType: !7, size: 1, offset: 2725, flags: DIFlagBitField, extraData: i64 2720)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !3975, file: !191, line: 157, baseType: !7, size: 1, offset: 2726, flags: DIFlagBitField, extraData: i64 2720)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !3975, file: !191, line: 158, baseType: !7, size: 1, offset: 2727, flags: DIFlagBitField, extraData: i64 2720)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !3975, file: !191, line: 159, baseType: !7, size: 1, offset: 2728, flags: DIFlagBitField, extraData: i64 2720)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !3975, file: !191, line: 160, baseType: !7, size: 1, offset: 2729, flags: DIFlagBitField, extraData: i64 2720)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !3975, file: !191, line: 161, baseType: !7, size: 1, offset: 2730, flags: DIFlagBitField, extraData: i64 2720)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3975, file: !191, line: 164, baseType: !7, size: 32, offset: 2752)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3975, file: !191, line: 165, baseType: !374, size: 64, offset: 2816)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !3975, file: !191, line: 166, baseType: !4984, size: 64, offset: 2880)
!4984 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !203, line: 164, baseType: !2736)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !3975, file: !191, line: 167, baseType: !4984, size: 64, offset: 2944)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !3975, file: !191, line: 168, baseType: !7, size: 32, offset: 3008)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !3975, file: !191, line: 170, baseType: !4988, size: 576, offset: 3072)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !191, line: 53, size: 576, elements: !4989)
!4989 = !{!4990, !4991, !4992, !4993, !4994, !5015}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4988, file: !191, line: 54, baseType: !1504, size: 8)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio", scope: !4988, file: !191, line: 55, baseType: !1504, size: 8, offset: 8)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4988, file: !191, line: 56, baseType: !232, size: 32, offset: 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4988, file: !191, line: 57, baseType: !202, size: 128, offset: 64)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4988, file: !191, line: 58, baseType: !4995, size: 320, offset: 192)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4996, line: 642, size: 320, elements: !4997)
!4996 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4997 = !{!4998, !5000, !5001, !5002, !5003, !5014}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4995, file: !4996, line: 644, baseType: !4999, size: 64)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4995, file: !4996, line: 645, baseType: !352, size: 64, offset: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4995, file: !4996, line: 646, baseType: !252, size: 32, offset: 128)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4995, file: !4996, line: 647, baseType: !1504, size: 8, offset: 160)
!5003 = !DIDerivedType(tag: DW_TAG_member, scope: !4995, file: !4996, line: 648, baseType: !5004, size: 64, offset: 192)
!5004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4995, file: !4996, line: 648, size: 64, elements: !5005)
!5005 = !{!5006, !5010}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5004, file: !4996, line: 649, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{null, !352}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5004, file: !4996, line: 650, baseType: !5011, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{null, !4999}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4995, file: !4996, line: 652, baseType: !352, size: 64, offset: 256)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !4988, file: !191, line: 59, baseType: !4673, size: 64, offset: 512)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !3975, file: !191, line: 171, baseType: !4988, size: 576, offset: 3648)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !3975, file: !191, line: 184, baseType: !5018, size: 64, offset: 4224)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !3975, file: !191, line: 185, baseType: !5018, size: 64, offset: 4288)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !3975, file: !191, line: 186, baseType: !3974, size: 64, offset: 4352)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !3975, file: !191, line: 187, baseType: !3974, size: 64, offset: 4416)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !3975, file: !191, line: 191, baseType: !5023, size: 256, offset: 4480)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5024, size: 256, elements: !1392)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !191, line: 191, flags: DIFlagFwdDecl)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3975, file: !191, line: 193, baseType: !113, size: 32, offset: 4736)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !3975, file: !191, line: 208, baseType: !5028, size: 64, offset: 4800)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !191, line: 208, flags: DIFlagFwdDecl)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !3975, file: !191, line: 219, baseType: !1983, align: 64, offset: 4864)
!5031 = !{!5032, !5034, !5039, !0, !5047, !5049, !5052, !5054, !5056, !5061, !5063, !5065, !5086, !5091, !5094, !5097}
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(name: "__param_quirks", scope: !2, file: !3, line: 172, type: !3706, isLocal: true, isDefinition: true, align: 64)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_quirks271", scope: !2, file: !3, line: 173, type: !5036, isLocal: true, isDefinition: true, align: 8)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 712, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 89)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "quirk_list", scope: !2, file: !3, line: 23, type: !5041, isLocal: true, isDefinition: true)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quirk_entry", file: !3, line: 15, size: 64, elements: !5043)
!5043 = !{!5044, !5045, !5046}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "vid", scope: !5042, file: !3, line: 16, baseType: !270, size: 16)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !5042, file: !3, line: 17, baseType: !270, size: 16, offset: 16)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5042, file: !3, line: 18, baseType: !452, size: 32, offset: 32)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "quirks_param_ops", scope: !2, file: !3, line: 162, type: !3697, isLocal: true, isDefinition: true)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !5051, isLocal: true, isDefinition: true)
!5051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 16, elements: !2215)
!5052 = !DIGlobalVariableExpression(var: !5053, expr: !DIExpression())
!5053 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !5051, isLocal: true, isDefinition: true)
!5054 = !DIGlobalVariableExpression(var: !5055, expr: !DIExpression())
!5055 = distinct !DIGlobalVariable(name: "quirk_count", scope: !2, file: !3, line: 24, type: !7, isLocal: true, isDefinition: true)
!5056 = !DIGlobalVariableExpression(var: !5057, expr: !DIExpression())
!5057 = distinct !DIGlobalVariable(scope: null, file: !169, line: 480, type: !5058, isLocal: true, isDefinition: true)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 168, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 21)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(name: "quirks_param_string", scope: !2, file: !3, line: 167, type: !3726, isLocal: true, isDefinition: true)
!5063 = !DIGlobalVariableExpression(var: !5064, expr: !DIExpression())
!5064 = distinct !DIGlobalVariable(name: "quirks_param", scope: !2, file: !3, line: 26, type: !4076, isLocal: true, isDefinition: true)
!5065 = !DIGlobalVariableExpression(var: !5066, expr: !DIExpression())
!5066 = distinct !DIGlobalVariable(name: "usb_endpoint_ignore", scope: !2, file: !3, line: 598, type: !5067, isLocal: true, isDefinition: true)
!5067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5068, size: 1280, elements: !5084)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5069)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_id", file: !4071, line: 128, size: 256, elements: !5070)
!5070 = !{!5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !5069, file: !4071, line: 130, baseType: !271, size: 16)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5069, file: !4071, line: 133, baseType: !271, size: 16, offset: 16)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5069, file: !4071, line: 134, baseType: !271, size: 16, offset: 32)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_lo", scope: !5069, file: !4071, line: 135, baseType: !271, size: 16, offset: 48)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice_hi", scope: !5069, file: !4071, line: 136, baseType: !271, size: 16, offset: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5069, file: !4071, line: 139, baseType: !262, size: 8, offset: 80)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5069, file: !4071, line: 140, baseType: !262, size: 8, offset: 88)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5069, file: !4071, line: 141, baseType: !262, size: 8, offset: 96)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5069, file: !4071, line: 144, baseType: !262, size: 8, offset: 104)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5069, file: !4071, line: 145, baseType: !262, size: 8, offset: 112)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5069, file: !4071, line: 146, baseType: !262, size: 8, offset: 120)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5069, file: !4071, line: 149, baseType: !262, size: 8, offset: 128)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !5069, file: !4071, line: 152, baseType: !4087, size: 64, align: 64, offset: 192)
!5084 = !{!5085}
!5085 = !DISubrange(count: 5)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(name: "usb_quirk_list", scope: !2, file: !3, line: 192, type: !5088, isLocal: true, isDefinition: true)
!5088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5068, size: 32000, elements: !5089)
!5089 = !{!5090}
!5090 = !DISubrange(count: 125)
!5091 = !DIGlobalVariableExpression(var: !5092, expr: !DIExpression())
!5092 = distinct !DIGlobalVariable(name: "usb_amd_resume_quirk_list", scope: !2, file: !3, line: 576, type: !5093, isLocal: true, isDefinition: true)
!5093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5068, size: 1792, elements: !3775)
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(name: "usb_interface_quirk_list", scope: !2, file: !3, line: 568, type: !5096, isLocal: true, isDefinition: true)
!5096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5068, size: 512, elements: !2215)
!5097 = !DIGlobalVariableExpression(var: !5098, expr: !DIExpression())
!5098 = distinct !DIGlobalVariable(name: "quirk_mutex", scope: !2, file: !3, line: 21, type: !683, isLocal: true, isDefinition: true)
!5099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 120, elements: !5100)
!5100 = !{!5101}
!5101 = !DISubrange(count: 15)
!5102 = !{i32 7, !"Dwarf Version", i32 5}
!5103 = !{i32 2, !"Debug Info Version", i32 3}
!5104 = !{i32 1, !"wchar_size", i32 2}
!5105 = !{i32 8, !"cf-protection-branch", i32 1}
!5106 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5107 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5108 = !{i32 1, !"Code Model", i32 2}
!5109 = !{i32 1, !"override-stack-alignment", i32 8}
!5110 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5111 = distinct !DISubprogram(name: "usb_endpoint_is_ignored", scope: !3, file: !3, line: 606, type: !5112, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5115)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!1504, !4463, !4655, !5114}
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!5115 = !{!5116, !5117, !5118, !5119, !5121}
!5116 = !DILocalVariable(name: "udev", arg: 1, scope: !5111, file: !3, line: 606, type: !4463)
!5117 = !DILocalVariable(name: "intf", arg: 2, scope: !5111, file: !3, line: 607, type: !4655)
!5118 = !DILocalVariable(name: "epd", arg: 3, scope: !5111, file: !3, line: 608, type: !5114)
!5119 = !DILocalVariable(name: "id", scope: !5111, file: !3, line: 610, type: !5120)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5121 = !DILocalVariable(name: "address", scope: !5111, file: !3, line: 611, type: !7)
!5122 = !DILocation(line: 606, column: 49, scope: !5111)
!5123 = !DILocation(line: 607, column: 36, scope: !5111)
!5124 = !DILocation(line: 608, column: 41, scope: !5111)
!5125 = !DILocation(line: 610, column: 2, scope: !5111)
!5126 = !DILocation(line: 610, column: 30, scope: !5111)
!5127 = !DILocation(line: 611, column: 2, scope: !5111)
!5128 = !DILocation(line: 611, column: 15, scope: !5111)
!5129 = !DILocation(line: 613, column: 10, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 613, column: 2)
!5131 = !DILocation(line: 613, column: 7, scope: !5130)
!5132 = !DILocation(line: 613, column: 33, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 613, column: 2)
!5134 = !DILocation(line: 613, column: 37, scope: !5133)
!5135 = !DILocation(line: 613, column: 2, scope: !5130)
!5136 = !DILocation(line: 614, column: 25, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 614, column: 7)
!5138 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 613, column: 56)
!5139 = !DILocation(line: 614, column: 31, scope: !5137)
!5140 = !DILocation(line: 614, column: 8, scope: !5137)
!5141 = !DILocation(line: 614, column: 7, scope: !5138)
!5142 = !DILocation(line: 615, column: 4, scope: !5137)
!5143 = !DILocation(line: 617, column: 30, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 617, column: 7)
!5145 = !DILocation(line: 617, column: 36, scope: !5144)
!5146 = !DILocation(line: 617, column: 42, scope: !5144)
!5147 = !DILocation(line: 617, column: 8, scope: !5144)
!5148 = !DILocation(line: 617, column: 7, scope: !5138)
!5149 = !DILocation(line: 618, column: 4, scope: !5144)
!5150 = !DILocation(line: 620, column: 13, scope: !5138)
!5151 = !DILocation(line: 620, column: 17, scope: !5138)
!5152 = !DILocation(line: 620, column: 11, scope: !5138)
!5153 = !DILocation(line: 621, column: 7, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 621, column: 7)
!5155 = !DILocation(line: 621, column: 18, scope: !5154)
!5156 = !DILocation(line: 621, column: 23, scope: !5154)
!5157 = !DILocation(line: 621, column: 15, scope: !5154)
!5158 = !DILocation(line: 621, column: 7, scope: !5138)
!5159 = !DILocation(line: 622, column: 4, scope: !5154)
!5160 = !DILocation(line: 623, column: 2, scope: !5138)
!5161 = !DILocation(line: 613, column: 50, scope: !5133)
!5162 = !DILocation(line: 613, column: 2, scope: !5133)
!5163 = distinct !{!5163, !5135, !5164, !5165, !5166}
!5164 = !DILocation(line: 623, column: 2, scope: !5130)
!5165 = !{!"llvm.loop.mustprogress"}
!5166 = !{!"llvm.loop.unroll.disable"}
!5167 = !DILocation(line: 625, column: 2, scope: !5111)
!5168 = !DILocation(line: 626, column: 1, scope: !5111)
!5169 = !DISubprogram(name: "usb_match_device", scope: !5170, file: !5170, line: 73, type: !5171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5170 = !DIFile(filename: "drivers/usb/core/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "590c23c9b7ee07b74c349fd52cb82ac1")
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!113, !4463, !5120}
!5173 = !DISubprogram(name: "usb_match_one_id_intf", scope: !5170, file: !5170, line: 70, type: !5174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!113, !4463, !4655, !5120}
!5176 = distinct !DISubprogram(name: "usb_detect_quirks", scope: !3, file: !3, line: 708, type: !5177, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{null, !4463}
!5179 = !{!5180}
!5180 = !DILocalVariable(name: "udev", arg: 1, scope: !5176, file: !3, line: 708, type: !4463)
!5181 = !DILocation(line: 708, column: 43, scope: !5176)
!5182 = !DILocation(line: 710, column: 42, scope: !5176)
!5183 = !DILocation(line: 710, column: 17, scope: !5176)
!5184 = !DILocation(line: 710, column: 2, scope: !5176)
!5185 = !DILocation(line: 710, column: 8, scope: !5176)
!5186 = !DILocation(line: 710, column: 15, scope: !5176)
!5187 = !DILocation(line: 716, column: 27, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 716, column: 6)
!5189 = !DILocation(line: 716, column: 6, scope: !5188)
!5190 = !DILocation(line: 716, column: 6, scope: !5176)
!5191 = !DILocation(line: 717, column: 44, scope: !5188)
!5192 = !DILocation(line: 717, column: 19, scope: !5188)
!5193 = !DILocation(line: 717, column: 3, scope: !5188)
!5194 = !DILocation(line: 717, column: 9, scope: !5188)
!5195 = !DILocation(line: 717, column: 16, scope: !5188)
!5196 = !DILocation(line: 720, column: 44, scope: !5176)
!5197 = !DILocation(line: 720, column: 18, scope: !5176)
!5198 = !DILocation(line: 720, column: 2, scope: !5176)
!5199 = !DILocation(line: 720, column: 8, scope: !5176)
!5200 = !DILocation(line: 720, column: 15, scope: !5176)
!5201 = !DILocation(line: 722, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 722, column: 6)
!5203 = !DILocation(line: 722, column: 12, scope: !5202)
!5204 = !DILocation(line: 722, column: 6, scope: !5176)
!5205 = !DILocation(line: 723, column: 3, scope: !5202)
!5206 = !DILocation(line: 727, column: 8, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 727, column: 6)
!5208 = !DILocation(line: 727, column: 14, scope: !5207)
!5209 = !DILocation(line: 727, column: 21, scope: !5207)
!5210 = !DILocation(line: 727, column: 6, scope: !5176)
!5211 = !DILocation(line: 728, column: 3, scope: !5207)
!5212 = !DILocation(line: 728, column: 9, scope: !5207)
!5213 = !DILocation(line: 728, column: 25, scope: !5207)
!5214 = !DILocation(line: 734, column: 1, scope: !5176)
!5215 = distinct !DISubprogram(name: "usb_detect_static_quirks", scope: !3, file: !3, line: 666, type: !5216, scopeLine: 668, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!452, !4463, !5120}
!5218 = !{!5219, !5220, !5221}
!5219 = !DILocalVariable(name: "udev", arg: 1, scope: !5215, file: !3, line: 666, type: !4463)
!5220 = !DILocalVariable(name: "id", arg: 2, scope: !5215, file: !3, line: 667, type: !5120)
!5221 = !DILocalVariable(name: "quirks", scope: !5215, file: !3, line: 669, type: !452)
!5222 = !DILocation(line: 666, column: 56, scope: !5215)
!5223 = !DILocation(line: 667, column: 37, scope: !5215)
!5224 = !DILocation(line: 669, column: 2, scope: !5215)
!5225 = !DILocation(line: 669, column: 6, scope: !5215)
!5226 = !DILocation(line: 671, column: 2, scope: !5215)
!5227 = !DILocation(line: 671, column: 9, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 671, column: 2)
!5229 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 671, column: 2)
!5230 = !DILocation(line: 671, column: 13, scope: !5228)
!5231 = !DILocation(line: 671, column: 2, scope: !5229)
!5232 = !DILocation(line: 672, column: 25, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 672, column: 7)
!5234 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 671, column: 32)
!5235 = !DILocation(line: 672, column: 31, scope: !5233)
!5236 = !DILocation(line: 672, column: 8, scope: !5233)
!5237 = !DILocation(line: 672, column: 7, scope: !5234)
!5238 = !DILocation(line: 673, column: 4, scope: !5233)
!5239 = !DILocation(line: 675, column: 8, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 675, column: 7)
!5241 = !DILocation(line: 675, column: 12, scope: !5240)
!5242 = !DILocation(line: 675, column: 24, scope: !5240)
!5243 = !DILocation(line: 675, column: 56, scope: !5240)
!5244 = !DILocation(line: 676, column: 32, scope: !5240)
!5245 = !DILocation(line: 676, column: 38, scope: !5240)
!5246 = !DILocation(line: 676, column: 8, scope: !5240)
!5247 = !DILocation(line: 675, column: 7, scope: !5234)
!5248 = !DILocation(line: 677, column: 4, scope: !5240)
!5249 = !DILocation(line: 679, column: 19, scope: !5234)
!5250 = !DILocation(line: 679, column: 23, scope: !5234)
!5251 = !DILocation(line: 679, column: 13, scope: !5234)
!5252 = !DILocation(line: 679, column: 10, scope: !5234)
!5253 = !DILocation(line: 680, column: 2, scope: !5234)
!5254 = !DILocation(line: 671, column: 28, scope: !5228)
!5255 = !DILocation(line: 671, column: 2, scope: !5228)
!5256 = distinct !{!5256, !5231, !5257, !5165, !5166}
!5257 = !DILocation(line: 680, column: 2, scope: !5229)
!5258 = !DILocation(line: 682, column: 9, scope: !5215)
!5259 = !DILocation(line: 683, column: 1, scope: !5215)
!5260 = !DILocation(line: 682, column: 2, scope: !5215)
!5261 = distinct !DISubprogram(name: "usb_amd_resume_quirk", scope: !3, file: !3, line: 654, type: !5262, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!113, !4463}
!5264 = !{!5265, !5266}
!5265 = !DILocalVariable(name: "udev", arg: 1, scope: !5261, file: !3, line: 654, type: !4463)
!5266 = !DILocalVariable(name: "hcd", scope: !5261, file: !3, line: 656, type: !3974)
!5267 = !DILocation(line: 654, column: 52, scope: !5261)
!5268 = !DILocation(line: 656, column: 2, scope: !5261)
!5269 = !DILocation(line: 656, column: 18, scope: !5261)
!5270 = !DILocation(line: 658, column: 19, scope: !5261)
!5271 = !DILocation(line: 658, column: 25, scope: !5261)
!5272 = !DILocation(line: 658, column: 8, scope: !5261)
!5273 = !DILocation(line: 658, column: 6, scope: !5261)
!5274 = !DILocation(line: 660, column: 6, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 660, column: 6)
!5276 = !DILocation(line: 660, column: 12, scope: !5275)
!5277 = !DILocation(line: 660, column: 18, scope: !5275)
!5278 = !DILocation(line: 660, column: 23, scope: !5275)
!5279 = !DILocation(line: 660, column: 26, scope: !5275)
!5280 = !DILocation(line: 660, column: 31, scope: !5275)
!5281 = !DILocation(line: 660, column: 46, scope: !5275)
!5282 = !DILocation(line: 660, column: 6, scope: !5261)
!5283 = !DILocation(line: 661, column: 3, scope: !5275)
!5284 = !DILocation(line: 663, column: 2, scope: !5261)
!5285 = !DILocation(line: 664, column: 1, scope: !5261)
!5286 = distinct !DISubprogram(name: "usb_detect_dynamic_quirks", scope: !3, file: !3, line: 685, type: !5287, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!452, !4463}
!5289 = !{!5290, !5291, !5292, !5293, !5294}
!5290 = !DILocalVariable(name: "udev", arg: 1, scope: !5286, file: !3, line: 685, type: !4463)
!5291 = !DILocalVariable(name: "vid", scope: !5286, file: !3, line: 687, type: !270)
!5292 = !DILocalVariable(name: "pid", scope: !5286, file: !3, line: 688, type: !270)
!5293 = !DILocalVariable(name: "i", scope: !5286, file: !3, line: 689, type: !113)
!5294 = !DILocalVariable(name: "flags", scope: !5286, file: !3, line: 689, type: !113)
!5295 = !DILocation(line: 685, column: 57, scope: !5286)
!5296 = !DILocation(line: 687, column: 2, scope: !5286)
!5297 = !DILocation(line: 687, column: 6, scope: !5286)
!5298 = !DILocation(line: 687, column: 12, scope: !5286)
!5299 = !DILocation(line: 688, column: 2, scope: !5286)
!5300 = !DILocation(line: 688, column: 6, scope: !5286)
!5301 = !DILocation(line: 688, column: 12, scope: !5286)
!5302 = !DILocation(line: 689, column: 2, scope: !5286)
!5303 = !DILocation(line: 689, column: 6, scope: !5286)
!5304 = !DILocation(line: 689, column: 9, scope: !5286)
!5305 = !DILocation(line: 691, column: 2, scope: !5286)
!5306 = !DILocation(line: 693, column: 9, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 693, column: 2)
!5308 = !DILocation(line: 693, column: 7, scope: !5307)
!5309 = !DILocation(line: 693, column: 14, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 693, column: 2)
!5311 = !DILocation(line: 693, column: 18, scope: !5310)
!5312 = !DILocation(line: 693, column: 16, scope: !5310)
!5313 = !DILocation(line: 693, column: 2, scope: !5307)
!5314 = !DILocation(line: 694, column: 7, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 694, column: 7)
!5316 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 693, column: 36)
!5317 = !DILocation(line: 694, column: 14, scope: !5315)
!5318 = !DILocation(line: 694, column: 25, scope: !5315)
!5319 = !DILocation(line: 694, column: 28, scope: !5315)
!5320 = !DILocation(line: 694, column: 11, scope: !5315)
!5321 = !DILocation(line: 694, column: 32, scope: !5315)
!5322 = !DILocation(line: 694, column: 35, scope: !5315)
!5323 = !DILocation(line: 694, column: 42, scope: !5315)
!5324 = !DILocation(line: 694, column: 53, scope: !5315)
!5325 = !DILocation(line: 694, column: 56, scope: !5315)
!5326 = !DILocation(line: 694, column: 39, scope: !5315)
!5327 = !DILocation(line: 694, column: 7, scope: !5316)
!5328 = !DILocation(line: 695, column: 12, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 694, column: 61)
!5330 = !DILocation(line: 695, column: 23, scope: !5329)
!5331 = !DILocation(line: 695, column: 26, scope: !5329)
!5332 = !DILocation(line: 695, column: 10, scope: !5329)
!5333 = !DILocation(line: 696, column: 4, scope: !5329)
!5334 = !DILocation(line: 698, column: 2, scope: !5316)
!5335 = !DILocation(line: 693, column: 32, scope: !5310)
!5336 = !DILocation(line: 693, column: 2, scope: !5310)
!5337 = distinct !{!5337, !5313, !5338, !5165, !5166}
!5338 = !DILocation(line: 698, column: 2, scope: !5307)
!5339 = !DILocation(line: 700, column: 2, scope: !5286)
!5340 = !DILocation(line: 702, column: 9, scope: !5286)
!5341 = !DILocation(line: 703, column: 1, scope: !5286)
!5342 = !DILocation(line: 702, column: 2, scope: !5286)
!5343 = distinct !DISubprogram(name: "usb_detect_interface_quirks", scope: !3, file: !3, line: 736, type: !5177, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5344)
!5344 = !{!5345, !5346}
!5345 = !DILocalVariable(name: "udev", arg: 1, scope: !5343, file: !3, line: 736, type: !4463)
!5346 = !DILocalVariable(name: "quirks", scope: !5343, file: !3, line: 738, type: !452)
!5347 = !DILocation(line: 736, column: 53, scope: !5343)
!5348 = !DILocation(line: 738, column: 2, scope: !5343)
!5349 = !DILocation(line: 738, column: 6, scope: !5343)
!5350 = !DILocation(line: 740, column: 36, scope: !5343)
!5351 = !DILocation(line: 740, column: 11, scope: !5343)
!5352 = !DILocation(line: 740, column: 9, scope: !5343)
!5353 = !DILocation(line: 741, column: 6, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 741, column: 6)
!5355 = !DILocation(line: 741, column: 13, scope: !5354)
!5356 = !DILocation(line: 741, column: 6, scope: !5343)
!5357 = !DILocation(line: 742, column: 3, scope: !5354)
!5358 = !DILocation(line: 746, column: 18, scope: !5343)
!5359 = !DILocation(line: 746, column: 2, scope: !5343)
!5360 = !DILocation(line: 746, column: 8, scope: !5343)
!5361 = !DILocation(line: 746, column: 15, scope: !5343)
!5362 = !DILocation(line: 747, column: 1, scope: !5343)
!5363 = distinct !DISubprogram(name: "usb_release_quirk_list", scope: !3, file: !3, line: 749, type: !2329, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5364 = !DILocation(line: 751, column: 2, scope: !5363)
!5365 = !DILocation(line: 752, column: 8, scope: !5363)
!5366 = !DILocation(line: 752, column: 2, scope: !5363)
!5367 = !DILocation(line: 753, column: 13, scope: !5363)
!5368 = !DILocation(line: 754, column: 2, scope: !5363)
!5369 = !DILocation(line: 755, column: 1, scope: !5363)
!5370 = !DISubprogram(name: "mutex_lock", scope: !684, file: !684, line: 227, type: !5371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5371 = !DISubroutineType(types: !5372)
!5372 = !{null, !5018}
!5373 = !DISubprogram(name: "kfree", scope: !169, file: !169, line: 227, type: !5374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !1932}
!5376 = !DISubprogram(name: "mutex_unlock", scope: !684, file: !684, line: 246, type: !5371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5377 = distinct !DISubprogram(name: "quirks_param_set", scope: !3, file: !3, line: 28, type: !3703, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5378)
!5378 = !{!5379, !5380, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389}
!5379 = !DILocalVariable(name: "value", arg: 1, scope: !5377, file: !3, line: 28, type: !221)
!5380 = !DILocalVariable(name: "kp", arg: 2, scope: !5377, file: !3, line: 28, type: !3705)
!5381 = !DILocalVariable(name: "val", scope: !5377, file: !3, line: 30, type: !302)
!5382 = !DILocalVariable(name: "p", scope: !5377, file: !3, line: 30, type: !302)
!5383 = !DILocalVariable(name: "field", scope: !5377, file: !3, line: 30, type: !302)
!5384 = !DILocalVariable(name: "vid", scope: !5377, file: !3, line: 31, type: !270)
!5385 = !DILocalVariable(name: "pid", scope: !5377, file: !3, line: 31, type: !270)
!5386 = !DILocalVariable(name: "flags", scope: !5377, file: !3, line: 32, type: !452)
!5387 = !DILocalVariable(name: "i", scope: !5377, file: !3, line: 33, type: !349)
!5388 = !DILocalVariable(name: "err", scope: !5377, file: !3, line: 34, type: !113)
!5389 = !DILabel(scope: !5377, name: "unlock", file: !3, line: 155)
!5390 = !DILocation(line: 28, column: 41, scope: !5377)
!5391 = !DILocation(line: 28, column: 75, scope: !5377)
!5392 = !DILocation(line: 30, column: 2, scope: !5377)
!5393 = !DILocation(line: 30, column: 8, scope: !5377)
!5394 = !DILocation(line: 30, column: 14, scope: !5377)
!5395 = !DILocation(line: 30, column: 18, scope: !5377)
!5396 = !DILocation(line: 31, column: 2, scope: !5377)
!5397 = !DILocation(line: 31, column: 6, scope: !5377)
!5398 = !DILocation(line: 31, column: 11, scope: !5377)
!5399 = !DILocation(line: 32, column: 2, scope: !5377)
!5400 = !DILocation(line: 32, column: 6, scope: !5377)
!5401 = !DILocation(line: 33, column: 2, scope: !5377)
!5402 = !DILocation(line: 33, column: 9, scope: !5377)
!5403 = !DILocation(line: 34, column: 2, scope: !5377)
!5404 = !DILocation(line: 34, column: 6, scope: !5377)
!5405 = !DILocation(line: 36, column: 16, scope: !5377)
!5406 = !DILocation(line: 36, column: 8, scope: !5377)
!5407 = !DILocation(line: 36, column: 6, scope: !5377)
!5408 = !DILocation(line: 37, column: 7, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 37, column: 6)
!5410 = !DILocation(line: 37, column: 6, scope: !5377)
!5411 = !DILocation(line: 38, column: 3, scope: !5409)
!5412 = !DILocation(line: 40, column: 29, scope: !5377)
!5413 = !DILocation(line: 40, column: 34, scope: !5377)
!5414 = !DILocation(line: 40, column: 8, scope: !5377)
!5415 = !DILocation(line: 40, column: 6, scope: !5377)
!5416 = !DILocation(line: 41, column: 6, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 41, column: 6)
!5418 = !DILocation(line: 41, column: 6, scope: !5377)
!5419 = !DILocation(line: 42, column: 9, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 41, column: 11)
!5421 = !DILocation(line: 42, column: 3, scope: !5420)
!5422 = !DILocation(line: 43, column: 10, scope: !5420)
!5423 = !DILocation(line: 43, column: 3, scope: !5420)
!5424 = !DILocation(line: 46, column: 2, scope: !5377)
!5425 = !DILocation(line: 48, column: 8, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 48, column: 6)
!5427 = !DILocation(line: 48, column: 7, scope: !5426)
!5428 = !DILocation(line: 48, column: 6, scope: !5377)
!5429 = !DILocation(line: 49, column: 15, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 48, column: 13)
!5431 = !DILocation(line: 50, column: 9, scope: !5430)
!5432 = !DILocation(line: 50, column: 3, scope: !5430)
!5433 = !DILocation(line: 51, column: 14, scope: !5430)
!5434 = !DILocation(line: 52, column: 3, scope: !5430)
!5435 = !DILocation(line: 55, column: 19, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 55, column: 2)
!5437 = !DILocation(line: 55, column: 26, scope: !5436)
!5438 = !DILocation(line: 55, column: 7, scope: !5436)
!5439 = !DILocation(line: 55, column: 31, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 55, column: 2)
!5441 = !DILocation(line: 55, column: 35, scope: !5440)
!5442 = !DILocation(line: 55, column: 2, scope: !5436)
!5443 = !DILocation(line: 56, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 56, column: 7)
!5445 = !DILocation(line: 56, column: 11, scope: !5444)
!5446 = !DILocation(line: 56, column: 14, scope: !5444)
!5447 = !DILocation(line: 56, column: 7, scope: !5440)
!5448 = !DILocation(line: 57, column: 15, scope: !5444)
!5449 = !DILocation(line: 57, column: 4, scope: !5444)
!5450 = !DILocation(line: 56, column: 17, scope: !5444)
!5451 = !DILocation(line: 55, column: 40, scope: !5440)
!5452 = !DILocation(line: 55, column: 2, scope: !5440)
!5453 = distinct !{!5453, !5442, !5454, !5165, !5166}
!5454 = !DILocation(line: 57, column: 15, scope: !5436)
!5455 = !DILocation(line: 59, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 59, column: 6)
!5457 = !DILocation(line: 59, column: 6, scope: !5377)
!5458 = !DILocation(line: 60, column: 9, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 59, column: 18)
!5460 = !DILocation(line: 60, column: 3, scope: !5459)
!5461 = !DILocation(line: 61, column: 14, scope: !5459)
!5462 = !DILocation(line: 62, column: 2, scope: !5459)
!5463 = !DILocation(line: 64, column: 23, scope: !5377)
!5464 = !DILocation(line: 64, column: 15, scope: !5377)
!5465 = !DILocation(line: 64, column: 13, scope: !5377)
!5466 = !DILocation(line: 66, column: 7, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 66, column: 6)
!5468 = !DILocation(line: 66, column: 6, scope: !5377)
!5469 = !DILocation(line: 67, column: 15, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 66, column: 19)
!5471 = !DILocation(line: 68, column: 3, scope: !5470)
!5472 = !DILocation(line: 69, column: 9, scope: !5470)
!5473 = !DILocation(line: 69, column: 3, scope: !5470)
!5474 = !DILocation(line: 70, column: 3, scope: !5470)
!5475 = !DILocation(line: 73, column: 9, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 73, column: 2)
!5477 = !DILocation(line: 73, column: 18, scope: !5476)
!5478 = !DILocation(line: 73, column: 16, scope: !5476)
!5479 = !DILocation(line: 73, column: 7, scope: !5476)
!5480 = !DILocation(line: 73, column: 23, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 73, column: 2)
!5482 = !DILocation(line: 73, column: 25, scope: !5481)
!5483 = !DILocation(line: 73, column: 29, scope: !5481)
!5484 = !DILocation(line: 73, column: 28, scope: !5481)
!5485 = !DILocation(line: 0, scope: !5481)
!5486 = !DILocation(line: 73, column: 2, scope: !5476)
!5487 = !DILocation(line: 75, column: 11, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 73, column: 33)
!5489 = !DILocation(line: 75, column: 9, scope: !5488)
!5490 = !DILocation(line: 76, column: 8, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 76, column: 7)
!5492 = !DILocation(line: 76, column: 7, scope: !5488)
!5493 = !DILocation(line: 77, column: 4, scope: !5491)
!5494 = !DILocation(line: 79, column: 17, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 79, column: 7)
!5496 = !DILocation(line: 79, column: 7, scope: !5495)
!5497 = !DILocation(line: 79, column: 7, scope: !5488)
!5498 = !DILocation(line: 80, column: 4, scope: !5495)
!5499 = !DILocation(line: 82, column: 11, scope: !5488)
!5500 = !DILocation(line: 82, column: 9, scope: !5488)
!5501 = !DILocation(line: 83, column: 8, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 83, column: 7)
!5503 = !DILocation(line: 83, column: 7, scope: !5488)
!5504 = !DILocation(line: 84, column: 4, scope: !5502)
!5505 = !DILocation(line: 86, column: 17, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 86, column: 7)
!5507 = !DILocation(line: 86, column: 7, scope: !5506)
!5508 = !DILocation(line: 86, column: 7, scope: !5488)
!5509 = !DILocation(line: 87, column: 4, scope: !5506)
!5510 = !DILocation(line: 89, column: 11, scope: !5488)
!5511 = !DILocation(line: 89, column: 9, scope: !5488)
!5512 = !DILocation(line: 90, column: 8, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 90, column: 7)
!5514 = !DILocation(line: 90, column: 14, scope: !5513)
!5515 = !DILocation(line: 90, column: 19, scope: !5513)
!5516 = !DILocation(line: 90, column: 18, scope: !5513)
!5517 = !DILocation(line: 90, column: 7, scope: !5488)
!5518 = !DILocation(line: 91, column: 4, scope: !5513)
!5519 = !DILocation(line: 94, column: 14, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 94, column: 3)
!5521 = !DILocation(line: 94, column: 8, scope: !5520)
!5522 = !DILocation(line: 94, column: 20, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 94, column: 3)
!5524 = !DILocation(line: 94, column: 19, scope: !5523)
!5525 = !DILocation(line: 94, column: 3, scope: !5520)
!5526 = !DILocation(line: 95, column: 13, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 94, column: 36)
!5528 = !DILocation(line: 95, column: 12, scope: !5527)
!5529 = !DILocation(line: 95, column: 4, scope: !5527)
!5530 = !DILocation(line: 97, column: 11, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 95, column: 20)
!5532 = !DILocation(line: 98, column: 5, scope: !5531)
!5533 = !DILocation(line: 100, column: 11, scope: !5531)
!5534 = !DILocation(line: 101, column: 5, scope: !5531)
!5535 = !DILocation(line: 103, column: 11, scope: !5531)
!5536 = !DILocation(line: 104, column: 5, scope: !5531)
!5537 = !DILocation(line: 106, column: 11, scope: !5531)
!5538 = !DILocation(line: 107, column: 5, scope: !5531)
!5539 = !DILocation(line: 109, column: 11, scope: !5531)
!5540 = !DILocation(line: 110, column: 5, scope: !5531)
!5541 = !DILocation(line: 112, column: 11, scope: !5531)
!5542 = !DILocation(line: 113, column: 5, scope: !5531)
!5543 = !DILocation(line: 115, column: 11, scope: !5531)
!5544 = !DILocation(line: 116, column: 5, scope: !5531)
!5545 = !DILocation(line: 118, column: 11, scope: !5531)
!5546 = !DILocation(line: 119, column: 5, scope: !5531)
!5547 = !DILocation(line: 121, column: 11, scope: !5531)
!5548 = !DILocation(line: 122, column: 5, scope: !5531)
!5549 = !DILocation(line: 124, column: 11, scope: !5531)
!5550 = !DILocation(line: 125, column: 5, scope: !5531)
!5551 = !DILocation(line: 127, column: 11, scope: !5531)
!5552 = !DILocation(line: 128, column: 5, scope: !5531)
!5553 = !DILocation(line: 130, column: 11, scope: !5531)
!5554 = !DILocation(line: 131, column: 5, scope: !5531)
!5555 = !DILocation(line: 133, column: 11, scope: !5531)
!5556 = !DILocation(line: 134, column: 5, scope: !5531)
!5557 = !DILocation(line: 136, column: 11, scope: !5531)
!5558 = !DILocation(line: 137, column: 5, scope: !5531)
!5559 = !DILocation(line: 139, column: 11, scope: !5531)
!5560 = !DILocation(line: 140, column: 5, scope: !5531)
!5561 = !DILocation(line: 142, column: 11, scope: !5531)
!5562 = !DILocation(line: 143, column: 5, scope: !5531)
!5563 = !DILocation(line: 146, column: 3, scope: !5527)
!5564 = !DILocation(line: 94, column: 32, scope: !5523)
!5565 = !DILocation(line: 94, column: 3, scope: !5523)
!5566 = distinct !{!5566, !5525, !5567, !5165, !5166}
!5567 = !DILocation(line: 146, column: 3, scope: !5520)
!5568 = !DILocation(line: 148, column: 3, scope: !5488)
!5569 = !DILocation(line: 148, column: 15, scope: !5488)
!5570 = !DILocation(line: 149, column: 4, scope: !5488)
!5571 = !DILocation(line: 149, column: 13, scope: !5488)
!5572 = !DILocation(line: 149, column: 25, scope: !5488)
!5573 = !DILocation(line: 149, column: 39, scope: !5488)
!5574 = !DILocation(line: 148, column: 21, scope: !5488)
!5575 = !DILocation(line: 73, column: 2, scope: !5481)
!5576 = distinct !{!5576, !5486, !5577, !5165, !5166}
!5577 = !DILocation(line: 150, column: 2, scope: !5476)
!5578 = !DILocation(line: 152, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 152, column: 6)
!5580 = !DILocation(line: 152, column: 10, scope: !5579)
!5581 = !DILocation(line: 152, column: 8, scope: !5579)
!5582 = !DILocation(line: 152, column: 6, scope: !5377)
!5583 = !DILocation(line: 153, column: 17, scope: !5579)
!5584 = !DILocation(line: 153, column: 15, scope: !5579)
!5585 = !DILocation(line: 153, column: 3, scope: !5579)
!5586 = !DILocation(line: 155, column: 1, scope: !5377)
!5587 = !DILocation(line: 156, column: 2, scope: !5377)
!5588 = !DILocation(line: 157, column: 8, scope: !5377)
!5589 = !DILocation(line: 157, column: 2, scope: !5377)
!5590 = !DILocation(line: 159, column: 2, scope: !5377)
!5591 = !DILocation(line: 160, column: 1, scope: !5377)
!5592 = !DISubprogram(name: "kstrdup", scope: !5593, file: !5593, line: 216, type: !5594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5593 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!302, !221, !748}
!5596 = !DISubprogram(name: "param_set_copystring", scope: !3691, file: !3691, line: 590, type: !3703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5597 = distinct !DISubprogram(name: "kcalloc", scope: !169, file: !169, line: 666, type: !5598, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!374, !349, !349, !748}
!5600 = !{!5601, !5602, !5603}
!5601 = !DILocalVariable(name: "n", arg: 1, scope: !5597, file: !169, line: 666, type: !349)
!5602 = !DILocalVariable(name: "size", arg: 2, scope: !5597, file: !169, line: 666, type: !349)
!5603 = !DILocalVariable(name: "flags", arg: 3, scope: !5597, file: !169, line: 666, type: !748)
!5604 = !DILocation(line: 666, column: 55, scope: !5597)
!5605 = !DILocation(line: 666, column: 65, scope: !5597)
!5606 = !DILocation(line: 666, column: 77, scope: !5597)
!5607 = !DILocation(line: 668, column: 23, scope: !5597)
!5608 = !DILocation(line: 668, column: 26, scope: !5597)
!5609 = !DILocation(line: 668, column: 32, scope: !5597)
!5610 = !DILocation(line: 668, column: 38, scope: !5597)
!5611 = !DILocation(line: 668, column: 9, scope: !5597)
!5612 = !DILocation(line: 668, column: 2, scope: !5597)
!5613 = !DISubprogram(name: "strsep", scope: !5593, file: !5593, line: 137, type: !5614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!302, !4709, !221}
!5616 = !DISubprogram(name: "kstrtou16", scope: !5617, file: !5617, line: 94, type: !5618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5617 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!113, !221, !7, !5620}
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!5621 = distinct !DISubprogram(name: "kmalloc_array", scope: !169, file: !169, line: 629, type: !5598, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5622 = !{!5623, !5624, !5625, !5626}
!5623 = !DILocalVariable(name: "n", arg: 1, scope: !5621, file: !169, line: 629, type: !349)
!5624 = !DILocalVariable(name: "size", arg: 2, scope: !5621, file: !169, line: 629, type: !349)
!5625 = !DILocalVariable(name: "flags", arg: 3, scope: !5621, file: !169, line: 629, type: !748)
!5626 = !DILocalVariable(name: "bytes", scope: !5621, file: !169, line: 631, type: !349)
!5627 = !DILocation(line: 629, column: 61, scope: !5621)
!5628 = !DILocation(line: 629, column: 71, scope: !5621)
!5629 = !DILocation(line: 629, column: 83, scope: !5621)
!5630 = !DILocation(line: 631, column: 2, scope: !5621)
!5631 = !DILocation(line: 631, column: 9, scope: !5621)
!5632 = !DILocation(line: 633, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5621, file: !169, line: 633, column: 6)
!5634 = !DILocation(line: 633, column: 6, scope: !5621)
!5635 = !DILocation(line: 634, column: 3, scope: !5633)
!5636 = !DILocation(line: 635, column: 27, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5621, file: !169, line: 635, column: 6)
!5638 = !DILocation(line: 635, column: 6, scope: !5637)
!5639 = !DILocation(line: 635, column: 30, scope: !5637)
!5640 = !DILocation(line: 635, column: 54, scope: !5637)
!5641 = !DILocation(line: 635, column: 33, scope: !5637)
!5642 = !DILocation(line: 635, column: 6, scope: !5621)
!5643 = !DILocation(line: 636, column: 18, scope: !5637)
!5644 = !DILocation(line: 636, column: 25, scope: !5637)
!5645 = !DILocation(line: 636, column: 10, scope: !5637)
!5646 = !DILocation(line: 636, column: 3, scope: !5637)
!5647 = !DILocation(line: 637, column: 19, scope: !5621)
!5648 = !DILocation(line: 637, column: 26, scope: !5621)
!5649 = !DILocation(line: 637, column: 9, scope: !5621)
!5650 = !DILocation(line: 637, column: 2, scope: !5621)
!5651 = !DILocation(line: 638, column: 1, scope: !5621)
!5652 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5653, file: !5653, line: 51, type: !5654, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5656)
!5653 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!1504, !1504}
!5656 = !{!5657}
!5657 = !DILocalVariable(name: "overflow", arg: 1, scope: !5652, file: !5653, line: 51, type: !1504)
!5658 = !DILocation(line: 51, column: 60, scope: !5652)
!5659 = !DILocation(line: 53, column: 9, scope: !5652)
!5660 = !{i8 0, i8 2}
!5661 = !DILocation(line: 53, column: 2, scope: !5652)
!5662 = distinct !DISubprogram(name: "kmalloc", scope: !169, file: !169, line: 591, type: !5663, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5665)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!374, !349, !748}
!5665 = !{!5666, !5667, !5668}
!5666 = !DILocalVariable(name: "size", arg: 1, scope: !5662, file: !169, line: 591, type: !349)
!5667 = !DILocalVariable(name: "flags", arg: 2, scope: !5662, file: !169, line: 591, type: !748)
!5668 = !DILocalVariable(name: "index", scope: !5669, file: !169, line: 594, type: !7)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !169, line: 593, column: 42)
!5670 = distinct !DILexicalBlock(scope: !5662, file: !169, line: 593, column: 6)
!5671 = !DILocation(line: 591, column: 61, scope: !5662)
!5672 = !DILocation(line: 591, column: 73, scope: !5662)
!5673 = !DILocation(line: 593, column: 27, scope: !5670)
!5674 = !DILocation(line: 593, column: 6, scope: !5670)
!5675 = !DILocation(line: 593, column: 33, scope: !5670)
!5676 = !DILocation(line: 593, column: 36, scope: !5670)
!5677 = !DILocation(line: 593, column: 6, scope: !5662)
!5678 = !DILocation(line: 594, column: 3, scope: !5669)
!5679 = !DILocation(line: 594, column: 16, scope: !5669)
!5680 = !DILocation(line: 596, column: 7, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5669, file: !169, line: 596, column: 7)
!5682 = !DILocation(line: 596, column: 12, scope: !5681)
!5683 = !DILocation(line: 596, column: 7, scope: !5669)
!5684 = !DILocation(line: 597, column: 25, scope: !5681)
!5685 = !DILocation(line: 597, column: 31, scope: !5681)
!5686 = !DILocation(line: 597, column: 11, scope: !5681)
!5687 = !DILocation(line: 597, column: 4, scope: !5681)
!5688 = !DILocation(line: 599, column: 11, scope: !5669)
!5689 = !DILocation(line: 599, column: 9, scope: !5669)
!5690 = !DILocation(line: 601, column: 33, scope: !5669)
!5691 = !DILocation(line: 601, column: 40, scope: !5669)
!5692 = !DILocation(line: 601, column: 20, scope: !5669)
!5693 = !DILocation(line: 601, column: 5, scope: !5669)
!5694 = !DILocation(line: 601, column: 51, scope: !5669)
!5695 = !DILocation(line: 602, column: 5, scope: !5669)
!5696 = !DILocation(line: 602, column: 12, scope: !5669)
!5697 = !DILocation(line: 600, column: 10, scope: !5669)
!5698 = !DILocation(line: 600, column: 3, scope: !5669)
!5699 = !DILocation(line: 603, column: 2, scope: !5670)
!5700 = !DILocation(line: 604, column: 19, scope: !5662)
!5701 = !DILocation(line: 604, column: 25, scope: !5662)
!5702 = !DILocation(line: 604, column: 9, scope: !5662)
!5703 = !DILocation(line: 604, column: 2, scope: !5662)
!5704 = !DILocation(line: 605, column: 1, scope: !5662)
!5705 = !DISubprogram(name: "__kmalloc", scope: !169, file: !169, line: 488, type: !5663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5706 = !DISubprogram(name: "kmalloc_large", scope: !169, file: !169, line: 531, type: !5663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5707 = distinct !DISubprogram(name: "__kmalloc_index", scope: !169, file: !169, line: 444, type: !5708, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5710)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!7, !349, !1504}
!5710 = !{!5711, !5712}
!5711 = !DILocalVariable(name: "size", arg: 1, scope: !5707, file: !169, line: 444, type: !349)
!5712 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5707, file: !169, line: 445, type: !1504)
!5713 = !DILocation(line: 444, column: 60, scope: !5707)
!5714 = !DILocation(line: 445, column: 16, scope: !5707)
!5715 = !DILocation(line: 447, column: 7, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 447, column: 6)
!5717 = !DILocation(line: 447, column: 6, scope: !5707)
!5718 = !DILocation(line: 448, column: 3, scope: !5716)
!5719 = !DILocation(line: 450, column: 6, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 450, column: 6)
!5721 = !DILocation(line: 450, column: 11, scope: !5720)
!5722 = !DILocation(line: 450, column: 6, scope: !5707)
!5723 = !DILocation(line: 451, column: 3, scope: !5720)
!5724 = !DILocation(line: 453, column: 32, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 453, column: 6)
!5726 = !DILocation(line: 453, column: 37, scope: !5725)
!5727 = !DILocation(line: 453, column: 42, scope: !5725)
!5728 = !DILocation(line: 453, column: 45, scope: !5725)
!5729 = !DILocation(line: 453, column: 50, scope: !5725)
!5730 = !DILocation(line: 453, column: 6, scope: !5707)
!5731 = !DILocation(line: 454, column: 3, scope: !5725)
!5732 = !DILocation(line: 455, column: 32, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 455, column: 6)
!5734 = !DILocation(line: 455, column: 37, scope: !5733)
!5735 = !DILocation(line: 455, column: 43, scope: !5733)
!5736 = !DILocation(line: 455, column: 46, scope: !5733)
!5737 = !DILocation(line: 455, column: 51, scope: !5733)
!5738 = !DILocation(line: 455, column: 6, scope: !5707)
!5739 = !DILocation(line: 456, column: 3, scope: !5733)
!5740 = !DILocation(line: 457, column: 6, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 457, column: 6)
!5742 = !DILocation(line: 457, column: 11, scope: !5741)
!5743 = !DILocation(line: 457, column: 6, scope: !5707)
!5744 = !DILocation(line: 457, column: 26, scope: !5741)
!5745 = !DILocation(line: 458, column: 6, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 458, column: 6)
!5747 = !DILocation(line: 458, column: 11, scope: !5746)
!5748 = !DILocation(line: 458, column: 6, scope: !5707)
!5749 = !DILocation(line: 458, column: 26, scope: !5746)
!5750 = !DILocation(line: 459, column: 6, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 459, column: 6)
!5752 = !DILocation(line: 459, column: 11, scope: !5751)
!5753 = !DILocation(line: 459, column: 6, scope: !5707)
!5754 = !DILocation(line: 459, column: 26, scope: !5751)
!5755 = !DILocation(line: 460, column: 6, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 460, column: 6)
!5757 = !DILocation(line: 460, column: 11, scope: !5756)
!5758 = !DILocation(line: 460, column: 6, scope: !5707)
!5759 = !DILocation(line: 460, column: 26, scope: !5756)
!5760 = !DILocation(line: 461, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 461, column: 6)
!5762 = !DILocation(line: 461, column: 11, scope: !5761)
!5763 = !DILocation(line: 461, column: 6, scope: !5707)
!5764 = !DILocation(line: 461, column: 26, scope: !5761)
!5765 = !DILocation(line: 462, column: 6, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 462, column: 6)
!5767 = !DILocation(line: 462, column: 11, scope: !5766)
!5768 = !DILocation(line: 462, column: 6, scope: !5707)
!5769 = !DILocation(line: 462, column: 26, scope: !5766)
!5770 = !DILocation(line: 463, column: 6, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 463, column: 6)
!5772 = !DILocation(line: 463, column: 11, scope: !5771)
!5773 = !DILocation(line: 463, column: 6, scope: !5707)
!5774 = !DILocation(line: 463, column: 26, scope: !5771)
!5775 = !DILocation(line: 464, column: 6, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 464, column: 6)
!5777 = !DILocation(line: 464, column: 11, scope: !5776)
!5778 = !DILocation(line: 464, column: 6, scope: !5707)
!5779 = !DILocation(line: 464, column: 26, scope: !5776)
!5780 = !DILocation(line: 465, column: 6, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 465, column: 6)
!5782 = !DILocation(line: 465, column: 11, scope: !5781)
!5783 = !DILocation(line: 465, column: 6, scope: !5707)
!5784 = !DILocation(line: 465, column: 26, scope: !5781)
!5785 = !DILocation(line: 466, column: 6, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 466, column: 6)
!5787 = !DILocation(line: 466, column: 11, scope: !5786)
!5788 = !DILocation(line: 466, column: 6, scope: !5707)
!5789 = !DILocation(line: 466, column: 26, scope: !5786)
!5790 = !DILocation(line: 467, column: 6, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 467, column: 6)
!5792 = !DILocation(line: 467, column: 11, scope: !5791)
!5793 = !DILocation(line: 467, column: 6, scope: !5707)
!5794 = !DILocation(line: 467, column: 26, scope: !5791)
!5795 = !DILocation(line: 468, column: 6, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 468, column: 6)
!5797 = !DILocation(line: 468, column: 11, scope: !5796)
!5798 = !DILocation(line: 468, column: 6, scope: !5707)
!5799 = !DILocation(line: 468, column: 26, scope: !5796)
!5800 = !DILocation(line: 469, column: 6, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 469, column: 6)
!5802 = !DILocation(line: 469, column: 11, scope: !5801)
!5803 = !DILocation(line: 469, column: 6, scope: !5707)
!5804 = !DILocation(line: 469, column: 26, scope: !5801)
!5805 = !DILocation(line: 470, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 470, column: 6)
!5807 = !DILocation(line: 470, column: 11, scope: !5806)
!5808 = !DILocation(line: 470, column: 6, scope: !5707)
!5809 = !DILocation(line: 470, column: 26, scope: !5806)
!5810 = !DILocation(line: 471, column: 6, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 471, column: 6)
!5812 = !DILocation(line: 471, column: 11, scope: !5811)
!5813 = !DILocation(line: 471, column: 6, scope: !5707)
!5814 = !DILocation(line: 471, column: 26, scope: !5811)
!5815 = !DILocation(line: 472, column: 6, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 472, column: 6)
!5817 = !DILocation(line: 472, column: 11, scope: !5816)
!5818 = !DILocation(line: 472, column: 6, scope: !5707)
!5819 = !DILocation(line: 472, column: 26, scope: !5816)
!5820 = !DILocation(line: 473, column: 6, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 473, column: 6)
!5822 = !DILocation(line: 473, column: 11, scope: !5821)
!5823 = !DILocation(line: 473, column: 6, scope: !5707)
!5824 = !DILocation(line: 473, column: 26, scope: !5821)
!5825 = !DILocation(line: 474, column: 6, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 474, column: 6)
!5827 = !DILocation(line: 474, column: 11, scope: !5826)
!5828 = !DILocation(line: 474, column: 6, scope: !5707)
!5829 = !DILocation(line: 474, column: 27, scope: !5826)
!5830 = !DILocation(line: 475, column: 6, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 475, column: 6)
!5832 = !DILocation(line: 475, column: 11, scope: !5831)
!5833 = !DILocation(line: 475, column: 6, scope: !5707)
!5834 = !DILocation(line: 475, column: 32, scope: !5831)
!5835 = !DILocation(line: 477, column: 50, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5707, file: !169, line: 477, column: 6)
!5837 = !DILocation(line: 477, column: 6, scope: !5707)
!5838 = !DILocation(line: 478, column: 3, scope: !5836)
!5839 = !DILocation(line: 478, column: 3, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !169, line: 478, column: 3)
!5841 = distinct !DILexicalBlock(scope: !5836, file: !169, line: 478, column: 3)
!5842 = !{i32 -2140932682}
!5843 = !DILocation(line: 478, column: 3, scope: !5841)
!5844 = !DILocation(line: 480, column: 3, scope: !5836)
!5845 = !DILocation(line: 480, column: 3, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5836, file: !169, line: 480, column: 3)
!5847 = !DILocation(line: 480, column: 3, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5846, file: !169, line: 480, column: 3)
!5849 = !DILocation(line: 480, column: 3, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5846, file: !169, line: 480, column: 3)
!5851 = !{i64 2154034817, i64 2154034846, i64 2154034892, i64 2154034950, i64 2154035004, i64 2154035058, i64 2154035113, i64 2154035144}
!5852 = !DILocation(line: 483, column: 2, scope: !5707)
!5853 = !DILocation(line: 484, column: 1, scope: !5707)
!5854 = !DISubprogram(name: "kmalloc_trace", scope: !169, file: !169, line: 525, type: !5855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!374, !5857, !748, !349}
!5857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5858, size: 64)
!5858 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5859, line: 325, flags: DIFlagFwdDecl)
!5859 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5860 = distinct !DISubprogram(name: "kmalloc_type", scope: !169, file: !169, line: 401, type: !5861, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5863)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!168, !748, !352}
!5863 = !{!5864, !5865}
!5864 = !DILocalVariable(name: "flags", arg: 1, scope: !5860, file: !169, line: 401, type: !748)
!5865 = !DILocalVariable(name: "caller", arg: 2, scope: !5860, file: !169, line: 401, type: !352)
!5866 = !DILocation(line: 401, column: 67, scope: !5860)
!5867 = !DILocation(line: 401, column: 88, scope: !5860)
!5868 = !DILocation(line: 407, column: 6, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5860, file: !169, line: 407, column: 6)
!5870 = !DILocation(line: 407, column: 6, scope: !5860)
!5871 = !DILocation(line: 413, column: 3, scope: !5869)
!5872 = !DILocation(line: 423, column: 38, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5860, file: !169, line: 423, column: 6)
!5874 = !DILocation(line: 423, column: 44, scope: !5873)
!5875 = !DILocation(line: 423, column: 6, scope: !5860)
!5876 = !DILocation(line: 424, column: 3, scope: !5873)
!5877 = !DILocation(line: 426, column: 3, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5860, file: !169, line: 425, column: 6)
!5879 = !DILocation(line: 429, column: 1, scope: !5860)
!5880 = !DISubprogram(name: "__compiletime_assert_263", scope: !169, file: !169, line: 478, type: !2329, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5881 = distinct !DISubprogram(name: "usb_match_any_interface", scope: !3, file: !3, line: 628, type: !5882, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5884)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!1504, !4463, !5120}
!5884 = !{!5885, !5886, !5887, !5888, !5892, !5893, !5897}
!5885 = !DILocalVariable(name: "udev", arg: 1, scope: !5881, file: !3, line: 628, type: !4463)
!5886 = !DILocalVariable(name: "id", arg: 2, scope: !5881, file: !3, line: 629, type: !5120)
!5887 = !DILocalVariable(name: "i", scope: !5881, file: !3, line: 631, type: !7)
!5888 = !DILocalVariable(name: "cfg", scope: !5889, file: !3, line: 634, type: !4621)
!5889 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 633, column: 60)
!5890 = distinct !DILexicalBlock(scope: !5891, file: !3, line: 633, column: 2)
!5891 = distinct !DILexicalBlock(scope: !5881, file: !3, line: 633, column: 2)
!5892 = !DILocalVariable(name: "j", scope: !5889, file: !3, line: 635, type: !7)
!5893 = !DILocalVariable(name: "cache", scope: !5894, file: !3, line: 638, type: !4695)
!5894 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 637, column: 50)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 637, column: 3)
!5896 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 637, column: 3)
!5897 = !DILocalVariable(name: "intf", scope: !5894, file: !3, line: 639, type: !4655)
!5898 = !DILocation(line: 628, column: 56, scope: !5881)
!5899 = !DILocation(line: 629, column: 37, scope: !5881)
!5900 = !DILocation(line: 631, column: 2, scope: !5881)
!5901 = !DILocation(line: 631, column: 15, scope: !5881)
!5902 = !DILocation(line: 633, column: 9, scope: !5891)
!5903 = !DILocation(line: 633, column: 7, scope: !5891)
!5904 = !DILocation(line: 633, column: 14, scope: !5890)
!5905 = !DILocation(line: 633, column: 18, scope: !5890)
!5906 = !DILocation(line: 633, column: 24, scope: !5890)
!5907 = !DILocation(line: 633, column: 35, scope: !5890)
!5908 = !DILocation(line: 633, column: 16, scope: !5890)
!5909 = !DILocation(line: 633, column: 2, scope: !5891)
!5910 = !DILocation(line: 634, column: 3, scope: !5889)
!5911 = !DILocation(line: 634, column: 27, scope: !5889)
!5912 = !DILocation(line: 634, column: 34, scope: !5889)
!5913 = !DILocation(line: 634, column: 40, scope: !5889)
!5914 = !DILocation(line: 634, column: 47, scope: !5889)
!5915 = !DILocation(line: 635, column: 3, scope: !5889)
!5916 = !DILocation(line: 635, column: 16, scope: !5889)
!5917 = !DILocation(line: 637, column: 10, scope: !5896)
!5918 = !DILocation(line: 637, column: 8, scope: !5896)
!5919 = !DILocation(line: 637, column: 15, scope: !5895)
!5920 = !DILocation(line: 637, column: 19, scope: !5895)
!5921 = !DILocation(line: 637, column: 24, scope: !5895)
!5922 = !DILocation(line: 637, column: 29, scope: !5895)
!5923 = !DILocation(line: 637, column: 17, scope: !5895)
!5924 = !DILocation(line: 637, column: 3, scope: !5896)
!5925 = !DILocation(line: 638, column: 4, scope: !5894)
!5926 = !DILocation(line: 638, column: 32, scope: !5894)
!5927 = !DILocation(line: 639, column: 4, scope: !5894)
!5928 = !DILocation(line: 639, column: 31, scope: !5894)
!5929 = !DILocation(line: 641, column: 12, scope: !5894)
!5930 = !DILocation(line: 641, column: 17, scope: !5894)
!5931 = !DILocation(line: 641, column: 28, scope: !5894)
!5932 = !DILocation(line: 641, column: 10, scope: !5894)
!5933 = !DILocation(line: 642, column: 8, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 642, column: 8)
!5935 = !DILocation(line: 642, column: 15, scope: !5934)
!5936 = !DILocation(line: 642, column: 30, scope: !5934)
!5937 = !DILocation(line: 642, column: 8, scope: !5894)
!5938 = !DILocation(line: 643, column: 5, scope: !5934)
!5939 = !DILocation(line: 645, column: 12, scope: !5894)
!5940 = !DILocation(line: 645, column: 19, scope: !5894)
!5941 = !DILocation(line: 645, column: 9, scope: !5894)
!5942 = !DILocation(line: 646, column: 30, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 646, column: 8)
!5944 = !DILocation(line: 646, column: 36, scope: !5943)
!5945 = !DILocation(line: 646, column: 42, scope: !5943)
!5946 = !DILocation(line: 646, column: 8, scope: !5943)
!5947 = !DILocation(line: 646, column: 8, scope: !5894)
!5948 = !DILocation(line: 647, column: 5, scope: !5943)
!5949 = !DILocation(line: 648, column: 3, scope: !5895)
!5950 = !DILocation(line: 648, column: 3, scope: !5894)
!5951 = !DILocation(line: 637, column: 45, scope: !5895)
!5952 = !DILocation(line: 637, column: 3, scope: !5895)
!5953 = distinct !{!5953, !5924, !5954, !5165, !5166}
!5954 = !DILocation(line: 648, column: 3, scope: !5896)
!5955 = !DILocation(line: 649, column: 2, scope: !5890)
!5956 = !DILocation(line: 649, column: 2, scope: !5889)
!5957 = !DILocation(line: 633, column: 55, scope: !5890)
!5958 = !DILocation(line: 633, column: 2, scope: !5890)
!5959 = distinct !{!5959, !5909, !5960, !5165, !5166}
!5960 = !DILocation(line: 649, column: 2, scope: !5891)
!5961 = !DILocation(line: 651, column: 2, scope: !5881)
!5962 = !DILocation(line: 652, column: 1, scope: !5881)
!5963 = distinct !DISubprogram(name: "bus_to_hcd", scope: !191, file: !191, line: 229, type: !5964, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5966)
!5964 = !DISubroutineType(types: !5965)
!5965 = !{!3974, !4490}
!5966 = !{!5967, !5968}
!5967 = !DILocalVariable(name: "bus", arg: 1, scope: !5963, file: !191, line: 229, type: !4490)
!5968 = !DILocalVariable(name: "__mptr", scope: !5969, file: !191, line: 231, type: !374)
!5969 = distinct !DILexicalBlock(scope: !5963, file: !191, line: 231, column: 9)
!5970 = !DILocation(line: 229, column: 58, scope: !5963)
!5971 = !DILocation(line: 231, column: 9, scope: !5969)
!5972 = !DILocation(line: 231, column: 9, scope: !5963)
!5973 = !DILocation(line: 231, column: 2, scope: !5963)
