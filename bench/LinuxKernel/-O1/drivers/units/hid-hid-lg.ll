; ModuleID = 'drivers/hid/hid-lg.c'
source_filename = "drivers/hid/hid-lg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_hid_logitech__336_937_lg_driver_init\22, \22a\22\09\09"
module asm "__initcall__kmod_hid_logitech__336_937_lg_driver_init6:\09\09\09"
module asm ".long\09__initstub__kmod_hid_logitech__336_937_lg_driver_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i64 }
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.kref, i32, %struct.hid_bpf }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
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
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hid_bpf = type { ptr, i32, [2 x ptr], i8, %struct.spinlock }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, i32, %struct.work_struct, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lg_drv_data = type { i64, ptr }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, i16, i32 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, %struct.list_head, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_hid_logitech__336_937_lg_driver_init6337 = internal global ptr @__initstub__kmod_hid_logitech__336_937_lg_driver_init6, section ".discard.addressable", align 8, !dbg !0
@lg_driver = internal global %struct.hid_driver { ptr @.str.1, ptr @lg_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @lg_probe, ptr @lg_remove, ptr null, ptr @lg_raw_event, ptr null, ptr @lg_event, ptr null, ptr @lg_report_fixup, ptr @lg_input_mapping, ptr @lg_input_mapped, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, align 8, !dbg !5267
@__exitcall_lg_driver_exit = internal global ptr @lg_driver_exit, section ".exitcall.exit", align 8, !dbg !5229
@lg4ff_no_autoswitch = hidden global i32 0, align 4, !dbg !5233
@__param_str_lg4ff_no_autoswitch = internal constant [33 x i8] c"hid_logitech.lg4ff_no_autoswitch\00", align 16, !dbg !6039
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@__param_lg4ff_no_autoswitch = internal constant %struct.kernel_param { ptr @__param_str_lg4ff_no_autoswitch, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @lg4ff_no_autoswitch } }, section "__param", align 8, !dbg !5235
@__UNIQUE_ID_lg4ff_no_autoswitchtype338 = internal constant [46 x i8] c"hid_logitech.parmtype=lg4ff_no_autoswitch:int\00", section ".modinfo", align 1, !dbg !5237
@__UNIQUE_ID_lg4ff_no_autoswitch339 = internal constant [104 x i8] c"hid_logitech.parm=lg4ff_no_autoswitch:Do not switch multimode wheels to their native mode automatically\00", section ".modinfo", align 1, !dbg !5242
@__UNIQUE_ID_file340 = internal constant [43 x i8] c"hid_logitech.file=drivers/hid/hid-logitech\00", section ".modinfo", align 1, !dbg !5247
@__UNIQUE_ID_license341 = internal constant [25 x i8] c"hid_logitech.license=GPL\00", section ".modinfo", align 1, !dbg !5252
@.str = private unnamed_addr constant [13 x i8] c"hid_logitech\00", align 1, !dbg !5257
@.str.1 = private unnamed_addr constant [9 x i8] c"logitech\00", align 1, !dbg !5262
@lg_devices = internal constant [29 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50444, i64 65 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49409, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50948, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49930, i64 48 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50450, i64 48 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49685, i64 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49686, i64 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49812, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49674, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49681, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49689, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49743, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49795, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49798, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49813, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51715, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51716, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49817, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49818, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49819, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49816, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49820, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49678, i64 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49811, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49688, i64 1280 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49799, i64 4096 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50726, i64 2048 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50723, i64 2048 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !5838
@.str.2 = private unnamed_addr constant [50 x i8] c"Insufficient memory, cannot allocate driver data\0A\00", align 1, !dbg !5843
@.str.3 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1, !dbg !5848
@.str.4 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1, !dbg !5851
@lg_probe.cbuf = internal constant [9 x i8] c"\00\AF\01\00\00\00\00\00\00", align 1, !dbg !5856
@lg_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5911
@.str.5 = private unnamed_addr constant [6 x i8] c"&wait\00", align 1, !dbg !5913
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5915
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5920
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"fixing up Logitech keyboard report descriptor\0A\00", align 1, !dbg !5924
@.str.8 = private unnamed_addr constant [49 x i8] c"fixing up rel/abs in Logitech report descriptor\0A\00", align 1, !dbg !5929
@.str.9 = private unnamed_addr constant [57 x i8] c"fixing up Logitech Wingman Formula GP report descriptor\0A\00", align 1, !dbg !5934
@fg_rdesc_fixed = internal global [79 x i8] c"\05\01\09\04\A1\01\A1\02\15\00&\FF\005\00F\FF\00u\08\95\01\090\81\02\A4%\01E\01u\01\95\02\81\01\95\06\05\09\19\01)\06\81\02\05\01\B4\81\02\091\81\02\092\81\02\C0\A1\02&\FF\00F\FF\00u\08\95\04\09\02\B1\02\C0\C0", align 16, !dbg !5968
@.str.10 = private unnamed_addr constant [39 x i8] c"rdesc size test failed for formula gp\0A\00", align 1, !dbg !5939
@.str.11 = private unnamed_addr constant [63 x i8] c"fixing up Logitech Wingman Formula Force GP report descriptor\0A\00", align 1, !dbg !5944
@ffg_rdesc_fixed = internal global [89 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\06u\01%\01E\01\05\09\19\01)\06\81\02\95\01u\08&\FF\00F\FF\00\06\00\FF\09\01\81\02\05\01\81\01\091\81\02\092\81\02\06\00\FF\09\01\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !5973
@.str.12 = private unnamed_addr constant [52 x i8] c"fixing up Logitech Driving Force report descriptor\0A\00", align 1, !dbg !5949
@df_rdesc_fixed = internal global [132 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\14&\FF\034F\FF\03\090\81\02\95\0Cu\01%\01E\01\05\09\19\01)\0C\81\02\95\02\06\00\FF\09\01\81\02\05\01&\FF\00F\FF\00\95\01u\08\81\02%\07F;\01u\04e\14\099\81Bu\01\95\04e\00\06\00\FF\09\01%\01E\01\81\02\05\01\95\01u\08&\FF\00F\FF\00\091\81\02\095\81\02\C0\A1\02&\FF\00F\FF\00\95\07u\08\09\03\91\02\C0\C0", align 16, !dbg !5978
@.str.13 = private unnamed_addr constant [55 x i8] c"fixing up Logitech Momo Force (Red) report descriptor\0A\00", align 1, !dbg !5952
@momo_rdesc_fixed = internal global [89 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\08u\01%\01E\01\05\09\19\01)\08\81\02\06\00\FFu\0E\95\01&\FF\00F\FF\00\09\00\81\02\05\01u\08\091\81\02\092\81\02\06\00\FF\09\01\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !5983
@.str.14 = private unnamed_addr constant [64 x i8] c"fixing up Logitech Momo Racing Force (Black) report descriptor\0A\00", align 1, !dbg !5957
@momo2_rdesc_fixed = internal global [93 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\0Au\01%\01E\01\05\09\19\01)\0A\81\02\06\00\FF\09\00\95\04\81\02\95\01u\08&\FF\00F\FF\00\09\01\81\02\05\01\091\81\02\092\81\02\06\00\FF\09\00\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !5985
@.str.15 = private unnamed_addr constant [56 x i8] c"fixing up Logitech Formula Vibration report descriptor\0A\00", align 1, !dbg !5959
@fv_rdesc_fixed = internal global [136 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\0Cu\01%\01E\01\05\09\19\01)\0C\81\02\95\02\06\00\FF\09\01\81\02\09\02&\FF\00F\FF\00\95\01u\08\81\02\05\01%\07F;\01u\04e\14\099\81Bu\01\95\04e\00\06\00\FF\09\01%\01E\01\81\02\05\01\95\01u\08&\FF\00F\FF\00\091\81\02\092\81\02\C0\A1\02&\FF\00F\FF\00\95\07u\08\09\03\91\02\C0\C0", align 16, !dbg !5990
@.str.16 = private unnamed_addr constant [56 x i8] c"fixing up Logitech Driving Force Pro report descriptor\0A\00", align 1, !dbg !5961
@dfp_rdesc_fixed = internal global [90 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0E\14&\FF?4F\FF?\090\81\02\95\0Eu\01%\01E\01\05\09\19\01)\0E\81\02\05\01\95\01u\04%\07F;\01e\14\099\81Be\00&\FF\00F\FF\00u\08\81\01\091\81\02\095\81\02\81\01\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !5995
@.str.17 = private unnamed_addr constant [59 x i8] c"fixing up Logitech Speed Force Wireless report descriptor\0A\00", align 1, !dbg !5963
@lg_input_mapping.e_keymap = internal constant [80 x i8] c"\00\D8\00\D5\AF\9C\00\00\00\00\90\00\00\00\00\00\00\00\00\D4\AE\A7\98\A1p\00\00\00\9A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\00\00\00", align 16, !dbg !6000
@hid_map_usage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !6016
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1, !dbg !6031
@.str.18 = private unnamed_addr constant [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", align 1, !dbg !6034
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_hid_logitech__336_937_lg_driver_init6337, ptr @lg_driver_exit, ptr @__exitcall_lg_driver_exit, ptr @__param_lg4ff_no_autoswitch, ptr @__UNIQUE_ID_lg4ff_no_autoswitchtype338, ptr @__UNIQUE_ID_lg4ff_no_autoswitch339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_hid_logitech__336_937_lg_driver_init6() #0 section ".init.text" align 16 !dbg !6053 {
entry:
  %call = call i32 @lg_driver_init() #16, !dbg !6054
  ret i32 %call, !dbg !6054
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @lg_driver_init() #0 section ".init.text" align 16 !dbg !6055 {
entry:
  %call = call i32 @__hid_register_driver(ptr noundef @lg_driver, ptr noundef null, ptr noundef @.str) #17, !dbg !6056
  ret i32 %call, !dbg !6056
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @lg_driver_exit() #0 section ".exit.text" align 16 !dbg !6057 {
entry:
  call void @hid_unregister_driver(ptr noundef @lg_driver) #17, !dbg !6058
  ret void, !dbg !6058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6059 dso_local void @hid_unregister_driver(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6062 dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_probe(ptr noundef %hdev, ptr noundef %id) #2 align 16 !dbg !5858 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %iface = alloca ptr, align 8
  %iface_num = alloca i8, align 1
  %connect_mask = alloca i32, align 4
  %drv_data = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca i32, align 4
  %buf = alloca ptr, align 8
  %wait = alloca %struct.wait_queue_head, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp66 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret72 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond75 = alloca i8, align 1
  %tmp82 = alloca i32, align 4
  %tmp97 = alloca i64, align 8
  %tmp99 = alloca i64, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !5860, metadata !DIExpression()), !dbg !6065
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5861, metadata !DIExpression()), !dbg !6066
  call void @llvm.lifetime.start.p0(i64 8, ptr %iface) #18, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %iface, metadata !5862, metadata !DIExpression()), !dbg !6068
  call void @llvm.lifetime.start.p0(i64 1, ptr %iface_num) #18, !dbg !6069
  call void @llvm.dbg.declare(metadata ptr %iface_num, metadata !5863, metadata !DIExpression()), !dbg !6070
  call void @llvm.lifetime.start.p0(i64 4, ptr %connect_mask) #18, !dbg !6071
  call void @llvm.dbg.declare(metadata ptr %connect_mask, metadata !5864, metadata !DIExpression()), !dbg !6072
  store i32 45, ptr %connect_mask, align 4, !dbg !6072
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !5865, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5872, metadata !DIExpression()), !dbg !6076
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6077
  %call = call zeroext i1 @hid_is_usb(ptr noundef %0) #17, !dbg !6079
  br i1 %call, label %if.end, label %if.then, !dbg !6080

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !6081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138, !dbg !6081

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5873, metadata !DIExpression()), !dbg !6082
  %1 = load ptr, ptr %hdev.addr, align 8, !dbg !6082
  %dev = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, !dbg !6082
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !6082
  %2 = load ptr, ptr %parent, align 8, !dbg !6082
  store ptr %2, ptr %__mptr, align 8, !dbg !6082
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6082
  %add.ptr = getelementptr i8, ptr %3, i64 -80, !dbg !6082
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6083
  %4 = load ptr, ptr %tmp, align 8, !dbg !6082
  store ptr %4, ptr %iface, align 8, !dbg !6084
  %5 = load ptr, ptr %iface, align 8, !dbg !6085
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 1, !dbg !6086
  %6 = load ptr, ptr %cur_altsetting, align 8, !dbg !6086
  %desc = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 0, !dbg !6087
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %desc, i32 0, i32 2, !dbg !6088
  %7 = load i8, ptr %bInterfaceNumber, align 2, !dbg !6088
  store i8 %7, ptr %iface_num, align 1, !dbg !6089
  %8 = load ptr, ptr %hdev.addr, align 8, !dbg !6090
  %product = getelementptr inbounds %struct.hid_device, ptr %8, i32 0, i32 11, !dbg !6092
  %9 = load i32, ptr %product, align 4, !dbg !6092
  %cmp = icmp eq i32 %9, 49743, !dbg !6093
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !6094

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8, ptr %iface_num, align 1, !dbg !6095
  %conv = zext i8 %10 to i32, !dbg !6095
  %cmp1 = icmp ne i32 %conv, 0, !dbg !6096
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !6097

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %tmp4, align 4, !dbg !6098
  %11 = load i32, ptr %tmp4, align 4, !dbg !6102
  store i32 -19, ptr %retval, align 4, !dbg !6103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138, !dbg !6103

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #19, !dbg !6104
  store ptr %call6, ptr %drv_data, align 8, !dbg !6105
  %12 = load ptr, ptr %drv_data, align 8, !dbg !6106
  %tobool = icmp ne ptr %12, null, !dbg !6106
  br i1 %tobool, label %if.end9, label %if.then7, !dbg !6108

if.then7:                                         ; preds = %if.end5
  br label %do.body, !dbg !6109

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !6112

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6112

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %hdev.addr, align 8, !dbg !6109
  %dev8 = getelementptr inbounds %struct.hid_device, ptr %13, i32 0, i32 18, !dbg !6109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef @.str.2) #16, !dbg !6109
  store i32 -12, ptr %retval, align 4, !dbg !6114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138, !dbg !6114

if.end9:                                          ; preds = %if.end5
  %14 = load ptr, ptr %id.addr, align 8, !dbg !6115
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %14, i32 0, i32 4, !dbg !6116
  %15 = load i64, ptr %driver_data, align 8, !dbg !6116
  %16 = load ptr, ptr %drv_data, align 8, !dbg !6117
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %16, i32 0, i32 0, !dbg !6118
  store i64 %15, ptr %quirks, align 8, !dbg !6119
  %17 = load ptr, ptr %hdev.addr, align 8, !dbg !6120
  %18 = load ptr, ptr %drv_data, align 8, !dbg !6121
  call void @hid_set_drvdata(ptr noundef %17, ptr noundef %18) #17, !dbg !6122
  %19 = load ptr, ptr %drv_data, align 8, !dbg !6123
  %quirks10 = getelementptr inbounds %struct.lg_drv_data, ptr %19, i32 0, i32 0, !dbg !6125
  %20 = load i64, ptr %quirks10, align 8, !dbg !6125
  %and = and i64 %20, 256, !dbg !6126
  %tobool11 = icmp ne i64 %and, 0, !dbg !6126
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !6127

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %hdev.addr, align 8, !dbg !6128
  %quirks13 = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 26, !dbg !6129
  %22 = load i32, ptr %quirks13, align 4, !dbg !6130
  %conv14 = zext i32 %22 to i64, !dbg !6130
  %or = or i64 %conv14, 8, !dbg !6130
  %conv15 = trunc i64 %or to i32, !dbg !6130
  store i32 %conv15, ptr %quirks13, align 4, !dbg !6130
  br label %if.end16, !dbg !6128

if.end16:                                         ; preds = %if.then12, %if.end9
  %23 = load ptr, ptr %hdev.addr, align 8, !dbg !6131
  %call17 = call i32 @hid_parse(ptr noundef %23) #17, !dbg !6132
  store i32 %call17, ptr %ret, align 4, !dbg !6133
  %24 = load i32, ptr %ret, align 4, !dbg !6134
  %tobool18 = icmp ne i32 %24, 0, !dbg !6134
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !6136

if.then19:                                        ; preds = %if.end16
  br label %do.body20, !dbg !6137

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !6140

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6140

do.end22:                                         ; preds = %do.cond21
  %25 = load ptr, ptr %hdev.addr, align 8, !dbg !6137
  %dev23 = getelementptr inbounds %struct.hid_device, ptr %25, i32 0, i32 18, !dbg !6137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef @.str.3) #16, !dbg !6137
  br label %err_free, !dbg !6142

if.end24:                                         ; preds = %if.end16
  %26 = load ptr, ptr %drv_data, align 8, !dbg !6143
  %quirks25 = getelementptr inbounds %struct.lg_drv_data, ptr %26, i32 0, i32 0, !dbg !6145
  %27 = load i64, ptr %quirks25, align 8, !dbg !6145
  %and26 = and i64 %27, 13824, !dbg !6146
  %tobool27 = icmp ne i64 %and26, 0, !dbg !6146
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !6147

if.then28:                                        ; preds = %if.end24
  %28 = load i32, ptr %connect_mask, align 4, !dbg !6148
  %conv29 = zext i32 %28 to i64, !dbg !6148
  %and30 = and i64 %conv29, -33, !dbg !6148
  %conv31 = trunc i64 %and30 to i32, !dbg !6148
  store i32 %conv31, ptr %connect_mask, align 4, !dbg !6148
  br label %if.end32, !dbg !6149

if.end32:                                         ; preds = %if.then28, %if.end24
  %29 = load ptr, ptr %hdev.addr, align 8, !dbg !6150
  %30 = load i32, ptr %connect_mask, align 4, !dbg !6151
  %call33 = call i32 @hid_hw_start(ptr noundef %29, i32 noundef %30) #17, !dbg !6152
  store i32 %call33, ptr %ret, align 4, !dbg !6153
  %31 = load i32, ptr %ret, align 4, !dbg !6154
  %tobool34 = icmp ne i32 %31, 0, !dbg !6154
  br i1 %tobool34, label %if.then35, label %if.end40, !dbg !6156

if.then35:                                        ; preds = %if.end32
  br label %do.body36, !dbg !6157

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !6160

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !6160

do.end38:                                         ; preds = %do.cond37
  %32 = load ptr, ptr %hdev.addr, align 8, !dbg !6157
  %dev39 = getelementptr inbounds %struct.hid_device, ptr %32, i32 0, i32 18, !dbg !6157
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef @.str.4) #16, !dbg !6157
  br label %err_free, !dbg !6162

if.end40:                                         ; preds = %if.end32
  %33 = load ptr, ptr %hdev.addr, align 8, !dbg !6163
  %product41 = getelementptr inbounds %struct.hid_device, ptr %33, i32 0, i32 11, !dbg !6164
  %34 = load i32, ptr %product41, align 4, !dbg !6164
  %cmp42 = icmp eq i32 %34, 49820, !dbg !6165
  br i1 %cmp42, label %if.then44, label %if.end108, !dbg !6166

if.then44:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #18, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5875, metadata !DIExpression()), !dbg !6168
  %call45 = call ptr @kmemdup(ptr noundef @lg_probe.cbuf, i64 noundef 9, i32 noundef 3264) #20, !dbg !6169
  store ptr %call45, ptr %buf, align 8, !dbg !6168
  %35 = load ptr, ptr %buf, align 8, !dbg !6170
  %tobool46 = icmp ne ptr %35, null, !dbg !6170
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !6172

if.then47:                                        ; preds = %if.then44
  store i32 -12, ptr %ret, align 4, !dbg !6173
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup105, !dbg !6175

if.end48:                                         ; preds = %if.then44
  %36 = load ptr, ptr %hdev.addr, align 8, !dbg !6176
  %37 = load ptr, ptr %buf, align 8, !dbg !6177
  %arrayidx = getelementptr i8, ptr %37, i64 0, !dbg !6177
  %38 = load i8, ptr %arrayidx, align 1, !dbg !6177
  %39 = load ptr, ptr %buf, align 8, !dbg !6178
  %call49 = call i32 @hid_hw_raw_request(ptr noundef %36, i8 noundef zeroext %38, ptr noundef %39, i64 noundef 9, i32 noundef 2, i32 noundef 9) #17, !dbg !6179
  store i32 %call49, ptr %ret, align 4, !dbg !6180
  %40 = load i32, ptr %ret, align 4, !dbg !6181
  %cmp50 = icmp sge i32 %40, 0, !dbg !6182
  br i1 %cmp50, label %if.then52, label %if.end104, !dbg !6183

if.then52:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 24, ptr %wait) #18, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5878, metadata !DIExpression()), !dbg !6185
  br label %do.body53, !dbg !6186

do.body53:                                        ; preds = %if.then52
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef @.str.5, ptr noundef @lg_probe.__key) #17, !dbg !6187
  br label %do.cond54, !dbg !6187

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !6187

do.end55:                                         ; preds = %do.cond54
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #18, !dbg !6189
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5881, metadata !DIExpression()), !dbg !6189
  %call56 = call i64 @msecs_to_jiffies(i32 noundef 40) #17, !dbg !6189
  store i64 %call56, ptr %__ret, align 8, !dbg !6189
  br label %do.body57, !dbg !6189

do.body57:                                        ; preds = %do.end55
  call void @might_resched() #17, !dbg !6190
  br label %do.cond58, !dbg !6190

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !6190

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #18, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !5883, metadata !DIExpression()), !dbg !6192
  store i8 0, ptr %__cond, align 1, !dbg !6192
  %41 = load i8, ptr %__cond, align 1, !dbg !6193, !range !6195, !noundef !631
  %tobool60 = trunc i8 %41 to i1, !dbg !6193
  br i1 %tobool60, label %land.lhs.true62, label %if.end65, !dbg !6193

land.lhs.true62:                                  ; preds = %do.end59
  %42 = load i64, ptr %__ret, align 8, !dbg !6193
  %tobool63 = icmp ne i64 %42, 0, !dbg !6193
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !6192

if.then64:                                        ; preds = %land.lhs.true62
  store i64 1, ptr %__ret, align 8, !dbg !6193
  br label %if.end65, !dbg !6193

if.end65:                                         ; preds = %if.then64, %land.lhs.true62, %do.end59
  %43 = load i8, ptr %__cond, align 1, !dbg !6192, !range !6195, !noundef !631
  %tobool67 = trunc i8 %43 to i1, !dbg !6192
  br i1 %tobool67, label %lor.end, label %lor.rhs, !dbg !6192

lor.rhs:                                          ; preds = %if.end65
  %44 = load i64, ptr %__ret, align 8, !dbg !6192
  %tobool69 = icmp ne i64 %44, 0, !dbg !6192
  %lnot = xor i1 %tobool69, true, !dbg !6192
  br label %lor.end, !dbg !6192

lor.end:                                          ; preds = %lor.rhs, %if.end65
  %45 = phi i1 [ true, %if.end65 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %45 to i32, !dbg !6192
  store i32 %lor.ext, ptr %tmp66, align 4, !dbg !6193
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #18, !dbg !6196
  %46 = load i32, ptr %tmp66, align 4, !dbg !6192
  %tobool70 = icmp ne i32 %46, 0, !dbg !6196
  br i1 %tobool70, label %if.end98, label %if.then71, !dbg !6189

if.then71:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #18, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5886, metadata !DIExpression()), !dbg !6197
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret72) #18, !dbg !6197
  call void @llvm.dbg.declare(metadata ptr %__ret72, metadata !5899, metadata !DIExpression()), !dbg !6197
  %call73 = call i64 @msecs_to_jiffies(i32 noundef 40) #17, !dbg !6197
  store i64 %call73, ptr %__ret72, align 8, !dbg !6197
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !6197
  br label %for.cond, !dbg !6197

for.cond:                                         ; preds = %cleanup.cont, %if.then71
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #18, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5900, metadata !DIExpression()), !dbg !6198
  %call74 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 1) #17, !dbg !6198
  store i64 %call74, ptr %__int, align 8, !dbg !6198
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond75) #18, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %__cond75, metadata !5904, metadata !DIExpression()), !dbg !6199
  store i8 0, ptr %__cond75, align 1, !dbg !6199
  %47 = load i8, ptr %__cond75, align 1, !dbg !6200, !range !6195, !noundef !631
  %tobool76 = trunc i8 %47 to i1, !dbg !6200
  br i1 %tobool76, label %land.lhs.true78, label %if.end81, !dbg !6200

land.lhs.true78:                                  ; preds = %for.cond
  %48 = load i64, ptr %__ret72, align 8, !dbg !6200
  %tobool79 = icmp ne i64 %48, 0, !dbg !6200
  br i1 %tobool79, label %if.end81, label %if.then80, !dbg !6199

if.then80:                                        ; preds = %land.lhs.true78
  store i64 1, ptr %__ret72, align 8, !dbg !6200
  br label %if.end81, !dbg !6200

if.end81:                                         ; preds = %if.then80, %land.lhs.true78, %for.cond
  %49 = load i8, ptr %__cond75, align 1, !dbg !6199, !range !6195, !noundef !631
  %tobool83 = trunc i8 %49 to i1, !dbg !6199
  br i1 %tobool83, label %lor.end88, label %lor.rhs85, !dbg !6199

lor.rhs85:                                        ; preds = %if.end81
  %50 = load i64, ptr %__ret72, align 8, !dbg !6199
  %tobool86 = icmp ne i64 %50, 0, !dbg !6199
  %lnot87 = xor i1 %tobool86, true, !dbg !6199
  br label %lor.end88, !dbg !6199

lor.end88:                                        ; preds = %lor.rhs85, %if.end81
  %51 = phi i1 [ true, %if.end81 ], [ %lnot87, %lor.rhs85 ]
  %lor.ext89 = zext i1 %51 to i32, !dbg !6199
  store i32 %lor.ext89, ptr %tmp82, align 4, !dbg !6200
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond75) #18, !dbg !6202
  %52 = load i32, ptr %tmp82, align 4, !dbg !6199
  %tobool90 = icmp ne i32 %52, 0, !dbg !6202
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !6198

if.then91:                                        ; preds = %lor.end88
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6202

if.end92:                                         ; preds = %lor.end88
  %53 = load i64, ptr %__int, align 8, !dbg !6203
  %tobool93 = icmp ne i64 %53, 0, !dbg !6203
  br i1 %tobool93, label %if.then94, label %if.end95, !dbg !6198

if.then94:                                        ; preds = %if.end92
  %54 = load i64, ptr %__int, align 8, !dbg !6205
  store i64 %54, ptr %__ret72, align 8, !dbg !6205
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6205

if.end95:                                         ; preds = %if.end92
  %55 = load i64, ptr %__ret72, align 8, !dbg !6198
  %call96 = call i64 @schedule_timeout(i64 noundef %55) #17, !dbg !6198
  store i64 %call96, ptr %__ret72, align 8, !dbg !6198
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6207
  br label %cleanup, !dbg !6207

cleanup:                                          ; preds = %if.then94, %if.end95, %if.then91
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #18, !dbg !6207
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.end
    i32 16, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6207, !llvm.loop !6208

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef %wait, ptr noundef %__wq_entry) #17, !dbg !6197
  br label %__out, !dbg !6197

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !5907), !dbg !6197
  %56 = load i64, ptr %__ret72, align 8, !dbg !6197
  store i64 %56, ptr %tmp97, align 8, !dbg !6197
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret72) #18, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #18, !dbg !6196
  %57 = load i64, ptr %tmp97, align 8, !dbg !6197
  store i64 %57, ptr %__ret, align 8, !dbg !6196
  br label %if.end98, !dbg !6196

if.end98:                                         ; preds = %__out, %lor.end
  %58 = load i64, ptr %__ret, align 8, !dbg !6189
  store i64 %58, ptr %tmp99, align 8, !dbg !6196
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #18, !dbg !6211
  %59 = load i64, ptr %tmp99, align 8, !dbg !6189
  %60 = load ptr, ptr %buf, align 8, !dbg !6212
  %arrayidx100 = getelementptr i8, ptr %60, i64 1, !dbg !6212
  store i8 -78, ptr %arrayidx100, align 1, !dbg !6213
  %61 = load ptr, ptr %buf, align 8, !dbg !6214
  %arrayidx101 = getelementptr i8, ptr %61, i64 2, !dbg !6214
  call void @get_random_bytes(ptr noundef %arrayidx101, i64 noundef 2) #17, !dbg !6215
  %62 = load ptr, ptr %hdev.addr, align 8, !dbg !6216
  %63 = load ptr, ptr %buf, align 8, !dbg !6217
  %arrayidx102 = getelementptr i8, ptr %63, i64 0, !dbg !6217
  %64 = load i8, ptr %arrayidx102, align 1, !dbg !6217
  %65 = load ptr, ptr %buf, align 8, !dbg !6218
  %call103 = call i32 @hid_hw_raw_request(ptr noundef %62, i8 noundef zeroext %64, ptr noundef %65, i64 noundef 9, i32 noundef 2, i32 noundef 9) #17, !dbg !6219
  store i32 %call103, ptr %ret, align 4, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 24, ptr %wait) #18, !dbg !6221
  br label %if.end104, !dbg !6222

if.end104:                                        ; preds = %if.end98, %if.end48
  %66 = load ptr, ptr %buf, align 8, !dbg !6223
  call void @kfree(ptr noundef %66) #17, !dbg !6224
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6225
  br label %cleanup105, !dbg !6225

cleanup105:                                       ; preds = %if.then47, %if.end104
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #18, !dbg !6225
  %cleanup.dest106 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest106, label %cleanup138 [
    i32 0, label %cleanup.cont107
    i32 9, label %err_stop
  ]

cleanup.cont107:                                  ; preds = %cleanup105
  br label %if.end108, !dbg !6226

if.end108:                                        ; preds = %cleanup.cont107, %if.end40
  %67 = load ptr, ptr %drv_data, align 8, !dbg !6227
  %quirks109 = getelementptr inbounds %struct.lg_drv_data, ptr %67, i32 0, i32 0, !dbg !6229
  %68 = load i64, ptr %quirks109, align 8, !dbg !6229
  %and110 = and i64 %68, 512, !dbg !6230
  %tobool111 = icmp ne i64 %and110, 0, !dbg !6230
  br i1 %tobool111, label %if.then112, label %if.else, !dbg !6231

if.then112:                                       ; preds = %if.end108
  %69 = load ptr, ptr %hdev.addr, align 8, !dbg !6232
  %call113 = call i32 @lgff_init(ptr noundef %69) #17, !dbg !6233
  store i32 %call113, ptr %ret, align 4, !dbg !6234
  br label %if.end134, !dbg !6235

if.else:                                          ; preds = %if.end108
  %70 = load ptr, ptr %drv_data, align 8, !dbg !6236
  %quirks114 = getelementptr inbounds %struct.lg_drv_data, ptr %70, i32 0, i32 0, !dbg !6238
  %71 = load i64, ptr %quirks114, align 8, !dbg !6238
  %and115 = and i64 %71, 1024, !dbg !6239
  %tobool116 = icmp ne i64 %and115, 0, !dbg !6239
  br i1 %tobool116, label %if.then117, label %if.else119, !dbg !6240

if.then117:                                       ; preds = %if.else
  %72 = load ptr, ptr %hdev.addr, align 8, !dbg !6241
  %call118 = call i32 @lg2ff_init(ptr noundef %72) #17, !dbg !6242
  store i32 %call118, ptr %ret, align 4, !dbg !6243
  br label %if.end133, !dbg !6244

if.else119:                                       ; preds = %if.else
  %73 = load ptr, ptr %drv_data, align 8, !dbg !6245
  %quirks120 = getelementptr inbounds %struct.lg_drv_data, ptr %73, i32 0, i32 0, !dbg !6247
  %74 = load i64, ptr %quirks120, align 8, !dbg !6247
  %and121 = and i64 %74, 4096, !dbg !6248
  %tobool122 = icmp ne i64 %and121, 0, !dbg !6248
  br i1 %tobool122, label %if.then123, label %if.else125, !dbg !6249

if.then123:                                       ; preds = %if.else119
  %75 = load ptr, ptr %hdev.addr, align 8, !dbg !6250
  %call124 = call i32 @lg3ff_init(ptr noundef %75) #17, !dbg !6251
  store i32 %call124, ptr %ret, align 4, !dbg !6252
  br label %if.end132, !dbg !6253

if.else125:                                       ; preds = %if.else119
  %76 = load ptr, ptr %drv_data, align 8, !dbg !6254
  %quirks126 = getelementptr inbounds %struct.lg_drv_data, ptr %76, i32 0, i32 0, !dbg !6256
  %77 = load i64, ptr %quirks126, align 8, !dbg !6256
  %and127 = and i64 %77, 8192, !dbg !6257
  %tobool128 = icmp ne i64 %and127, 0, !dbg !6257
  br i1 %tobool128, label %if.then129, label %if.end131, !dbg !6258

if.then129:                                       ; preds = %if.else125
  %78 = load ptr, ptr %hdev.addr, align 8, !dbg !6259
  %call130 = call i32 @lg4ff_init(ptr noundef %78) #17, !dbg !6260
  store i32 %call130, ptr %ret, align 4, !dbg !6261
  br label %if.end131, !dbg !6262

if.end131:                                        ; preds = %if.then129, %if.else125
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then123
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then117
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then112
  %79 = load i32, ptr %ret, align 4, !dbg !6263
  %tobool135 = icmp ne i32 %79, 0, !dbg !6263
  br i1 %tobool135, label %if.then136, label %if.end137, !dbg !6265

if.then136:                                       ; preds = %if.end134
  br label %err_stop, !dbg !6266

if.end137:                                        ; preds = %if.end134
  store i32 0, ptr %retval, align 4, !dbg !6267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138, !dbg !6267

err_stop:                                         ; preds = %cleanup105, %if.then136
  call void @llvm.dbg.label(metadata !5908), !dbg !6268
  %80 = load ptr, ptr %hdev.addr, align 8, !dbg !6269
  call void @hid_hw_stop(ptr noundef %80) #17, !dbg !6270
  br label %err_free, !dbg !6270

err_free:                                         ; preds = %err_stop, %do.end38, %do.end22
  call void @llvm.dbg.label(metadata !5909), !dbg !6271
  %81 = load ptr, ptr %drv_data, align 8, !dbg !6272
  call void @kfree(ptr noundef %81) #17, !dbg !6273
  %82 = load i32, ptr %ret, align 4, !dbg !6274
  store i32 %82, ptr %retval, align 4, !dbg !6275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup138, !dbg !6275

cleanup138:                                       ; preds = %err_free, %if.end137, %cleanup105, %do.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6276
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6276
  call void @llvm.lifetime.end.p0(i64 4, ptr %connect_mask) #18, !dbg !6276
  call void @llvm.lifetime.end.p0(i64 1, ptr %iface_num) #18, !dbg !6276
  call void @llvm.lifetime.end.p0(i64 8, ptr %iface) #18, !dbg !6276
  %83 = load i32, ptr %retval, align 4, !dbg !6276
  ret i32 %83, !dbg !6276

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lg_remove(ptr noundef %hdev) #2 align 16 !dbg !6277 {
entry:
  %hdev.addr = alloca ptr, align 8
  %drv_data = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6279, metadata !DIExpression()), !dbg !6281
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6282
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !6280, metadata !DIExpression()), !dbg !6283
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6284
  %call = call ptr @hid_get_drvdata(ptr noundef %0) #17, !dbg !6285
  store ptr %call, ptr %drv_data, align 8, !dbg !6283
  %1 = load ptr, ptr %drv_data, align 8, !dbg !6286
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 0, !dbg !6288
  %2 = load i64, ptr %quirks, align 8, !dbg !6288
  %and = and i64 %2, 8192, !dbg !6289
  %tobool = icmp ne i64 %and, 0, !dbg !6289
  br i1 %tobool, label %if.then, label %if.end, !dbg !6290

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %hdev.addr, align 8, !dbg !6291
  %call1 = call i32 @lg4ff_deinit(ptr noundef %3) #17, !dbg !6292
  br label %if.end, !dbg !6292

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %hdev.addr, align 8, !dbg !6293
  call void @hid_hw_stop(ptr noundef %4) #17, !dbg !6294
  %5 = load ptr, ptr %drv_data, align 8, !dbg !6295
  call void @kfree(ptr noundef %5) #17, !dbg !6296
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6297
  ret void, !dbg !6297
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %rd, i32 noundef %size) #2 align 16 !dbg !6298 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca ptr, align 8
  %report.addr = alloca ptr, align 8
  %rd.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %drv_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6300, metadata !DIExpression()), !dbg !6305
  store ptr %report, ptr %report.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %report.addr, metadata !6301, metadata !DIExpression()), !dbg !6306
  store ptr %rd, ptr %rd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rd.addr, metadata !6302, metadata !DIExpression()), !dbg !6307
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6303, metadata !DIExpression()), !dbg !6308
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6309
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !6304, metadata !DIExpression()), !dbg !6310
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6311
  %call = call ptr @hid_get_drvdata(ptr noundef %0) #17, !dbg !6312
  store ptr %call, ptr %drv_data, align 8, !dbg !6310
  %1 = load ptr, ptr %drv_data, align 8, !dbg !6313
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 0, !dbg !6315
  %2 = load i64, ptr %quirks, align 8, !dbg !6315
  %and = and i64 %2, 8192, !dbg !6316
  %tobool = icmp ne i64 %and, 0, !dbg !6316
  br i1 %tobool, label %if.then, label %if.end, !dbg !6317

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %hdev.addr, align 8, !dbg !6318
  %4 = load ptr, ptr %report.addr, align 8, !dbg !6319
  %5 = load ptr, ptr %rd.addr, align 8, !dbg !6320
  %6 = load i32, ptr %size.addr, align 4, !dbg !6321
  %7 = load ptr, ptr %drv_data, align 8, !dbg !6322
  %call1 = call i32 @lg4ff_raw_event(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #17, !dbg !6323
  store i32 %call1, ptr %retval, align 4, !dbg !6324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6324

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6325

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6326
  %8 = load i32, ptr %retval, align 4, !dbg !6326
  ret i32 %8, !dbg !6326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_event(ptr noundef %hdev, ptr noundef %field, ptr noundef %usage, i32 noundef %value) #2 align 16 !dbg !6327 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %drv_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6329, metadata !DIExpression()), !dbg !6334
  store ptr %field, ptr %field.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %field.addr, metadata !6330, metadata !DIExpression()), !dbg !6335
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !6331, metadata !DIExpression()), !dbg !6336
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6332, metadata !DIExpression()), !dbg !6337
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !6333, metadata !DIExpression()), !dbg !6339
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6340
  %call = call ptr @hid_get_drvdata(ptr noundef %0) #17, !dbg !6341
  store ptr %call, ptr %drv_data, align 8, !dbg !6339
  %1 = load ptr, ptr %drv_data, align 8, !dbg !6342
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 0, !dbg !6344
  %2 = load i64, ptr %quirks, align 8, !dbg !6344
  %and = and i64 %2, 128, !dbg !6345
  %tobool = icmp ne i64 %and, 0, !dbg !6345
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6346

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %usage.addr, align 8, !dbg !6347
  %code = getelementptr inbounds %struct.hid_usage, ptr %3, i32 0, i32 5, !dbg !6348
  %4 = load i16, ptr %code, align 2, !dbg !6348
  %conv = zext i16 %4 to i32, !dbg !6347
  %cmp = icmp eq i32 %conv, 6, !dbg !6349
  br i1 %cmp, label %if.then, label %if.end, !dbg !6350

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %field.addr, align 8, !dbg !6351
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 22, !dbg !6353
  %6 = load ptr, ptr %hidinput, align 8, !dbg !6353
  %input = getelementptr inbounds %struct.hid_input, ptr %6, i32 0, i32 2, !dbg !6354
  %7 = load ptr, ptr %input, align 8, !dbg !6354
  %8 = load ptr, ptr %usage.addr, align 8, !dbg !6355
  %type = getelementptr inbounds %struct.hid_usage, ptr %8, i32 0, i32 6, !dbg !6356
  %9 = load i8, ptr %type, align 4, !dbg !6356
  %conv2 = zext i8 %9 to i32, !dbg !6355
  %10 = load ptr, ptr %usage.addr, align 8, !dbg !6357
  %code3 = getelementptr inbounds %struct.hid_usage, ptr %10, i32 0, i32 5, !dbg !6358
  %11 = load i16, ptr %code3, align 2, !dbg !6358
  %conv4 = zext i16 %11 to i32, !dbg !6357
  %12 = load i32, ptr %value.addr, align 4, !dbg !6359
  %sub = sub i32 0, %12, !dbg !6360
  call void @input_event(ptr noundef %7, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %sub) #17, !dbg !6361
  store i32 1, ptr %retval, align 4, !dbg !6362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6362

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load ptr, ptr %drv_data, align 8, !dbg !6363
  %quirks5 = getelementptr inbounds %struct.lg_drv_data, ptr %13, i32 0, i32 0, !dbg !6365
  %14 = load i64, ptr %quirks5, align 8, !dbg !6365
  %and6 = and i64 %14, 8192, !dbg !6366
  %tobool7 = icmp ne i64 %and6, 0, !dbg !6366
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !6367

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr %hdev.addr, align 8, !dbg !6368
  %16 = load ptr, ptr %field.addr, align 8, !dbg !6370
  %17 = load ptr, ptr %usage.addr, align 8, !dbg !6371
  %18 = load i32, ptr %value.addr, align 4, !dbg !6372
  %19 = load ptr, ptr %drv_data, align 8, !dbg !6373
  %call9 = call i32 @lg4ff_adjust_input_event(ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %19) #17, !dbg !6374
  store i32 %call9, ptr %retval, align 4, !dbg !6375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6375

if.end10:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6376

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6377
  %20 = load i32, ptr %retval, align 4, !dbg !6377
  ret i32 %20, !dbg !6377
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lg_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr noundef %rsize) #2 align 16 !dbg !6378 {
entry:
  %hdev.addr = alloca ptr, align 8
  %rdesc.addr = alloca ptr, align 8
  %rsize.addr = alloca ptr, align 8
  %drv_data = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6380, metadata !DIExpression()), !dbg !6384
  store ptr %rdesc, ptr %rdesc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rdesc.addr, metadata !6381, metadata !DIExpression()), !dbg !6385
  store ptr %rsize, ptr %rsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsize.addr, metadata !6382, metadata !DIExpression()), !dbg !6386
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6387
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !6383, metadata !DIExpression()), !dbg !6388
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6389
  %call = call ptr @hid_get_drvdata(ptr noundef %0) #17, !dbg !6390
  store ptr %call, ptr %drv_data, align 8, !dbg !6388
  %1 = load ptr, ptr %drv_data, align 8, !dbg !6391
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 0, !dbg !6393
  %2 = load i64, ptr %quirks, align 8, !dbg !6393
  %and = and i64 %2, 1, !dbg !6394
  %tobool = icmp ne i64 %and, 0, !dbg !6394
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6395

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %rsize.addr, align 8, !dbg !6396
  %4 = load i32, ptr %3, align 4, !dbg !6397
  %cmp = icmp uge i32 %4, 91, !dbg !6398
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !6399

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %rdesc.addr, align 8, !dbg !6400
  %arrayidx = getelementptr i8, ptr %5, i64 83, !dbg !6400
  %6 = load i8, ptr %arrayidx, align 1, !dbg !6400
  %conv = zext i8 %6 to i32, !dbg !6400
  %cmp2 = icmp eq i32 %conv, 38, !dbg !6401
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !6402

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %rdesc.addr, align 8, !dbg !6403
  %arrayidx5 = getelementptr i8, ptr %7, i64 84, !dbg !6403
  %8 = load i8, ptr %arrayidx5, align 1, !dbg !6403
  %conv6 = zext i8 %8 to i32, !dbg !6403
  %cmp7 = icmp eq i32 %conv6, 140, !dbg !6404
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !6405

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %9 = load ptr, ptr %rdesc.addr, align 8, !dbg !6406
  %arrayidx10 = getelementptr i8, ptr %9, i64 85, !dbg !6406
  %10 = load i8, ptr %arrayidx10, align 1, !dbg !6406
  %conv11 = zext i8 %10 to i32, !dbg !6406
  %cmp12 = icmp eq i32 %conv11, 2, !dbg !6407
  br i1 %cmp12, label %if.then, label %if.end, !dbg !6408

if.then:                                          ; preds = %land.lhs.true9
  br label %do.body, !dbg !6409

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6412

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6412

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %hdev.addr, align 8, !dbg !6409
  %dev = getelementptr inbounds %struct.hid_device, ptr %11, i32 0, i32 18, !dbg !6409
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.7) #16, !dbg !6409
  %12 = load ptr, ptr %rdesc.addr, align 8, !dbg !6414
  %arrayidx14 = getelementptr i8, ptr %12, i64 89, !dbg !6414
  store i8 77, ptr %arrayidx14, align 1, !dbg !6415
  %13 = load ptr, ptr %rdesc.addr, align 8, !dbg !6416
  %arrayidx15 = getelementptr i8, ptr %13, i64 84, !dbg !6416
  store i8 77, ptr %arrayidx15, align 1, !dbg !6417
  %14 = load ptr, ptr %rdesc.addr, align 8, !dbg !6418
  %arrayidx16 = getelementptr i8, ptr %14, i64 90, !dbg !6418
  store i8 16, ptr %arrayidx16, align 1, !dbg !6419
  %15 = load ptr, ptr %rdesc.addr, align 8, !dbg !6420
  %arrayidx17 = getelementptr i8, ptr %15, i64 85, !dbg !6420
  store i8 16, ptr %arrayidx17, align 1, !dbg !6421
  br label %if.end, !dbg !6422

if.end:                                           ; preds = %do.end, %land.lhs.true9, %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %16 = load ptr, ptr %drv_data, align 8, !dbg !6423
  %quirks18 = getelementptr inbounds %struct.lg_drv_data, ptr %16, i32 0, i32 0, !dbg !6425
  %17 = load i64, ptr %quirks18, align 8, !dbg !6425
  %and19 = and i64 %17, 2048, !dbg !6426
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6426
  br i1 %tobool20, label %land.lhs.true21, label %if.end51, !dbg !6427

land.lhs.true21:                                  ; preds = %if.end
  %18 = load ptr, ptr %rsize.addr, align 8, !dbg !6428
  %19 = load i32, ptr %18, align 4, !dbg !6429
  %cmp22 = icmp uge i32 %19, 51, !dbg !6430
  br i1 %cmp22, label %land.lhs.true24, label %if.end51, !dbg !6431

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %20 = load ptr, ptr %rdesc.addr, align 8, !dbg !6432
  %arrayidx25 = getelementptr i8, ptr %20, i64 32, !dbg !6432
  %21 = load i8, ptr %arrayidx25, align 1, !dbg !6432
  %conv26 = zext i8 %21 to i32, !dbg !6432
  %cmp27 = icmp eq i32 %conv26, 129, !dbg !6433
  br i1 %cmp27, label %land.lhs.true29, label %if.end51, !dbg !6434

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %22 = load ptr, ptr %rdesc.addr, align 8, !dbg !6435
  %arrayidx30 = getelementptr i8, ptr %22, i64 33, !dbg !6435
  %23 = load i8, ptr %arrayidx30, align 1, !dbg !6435
  %conv31 = zext i8 %23 to i32, !dbg !6435
  %cmp32 = icmp eq i32 %conv31, 6, !dbg !6436
  br i1 %cmp32, label %land.lhs.true34, label %if.end51, !dbg !6437

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %24 = load ptr, ptr %rdesc.addr, align 8, !dbg !6438
  %arrayidx35 = getelementptr i8, ptr %24, i64 49, !dbg !6438
  %25 = load i8, ptr %arrayidx35, align 1, !dbg !6438
  %conv36 = zext i8 %25 to i32, !dbg !6438
  %cmp37 = icmp eq i32 %conv36, 129, !dbg !6439
  br i1 %cmp37, label %land.lhs.true39, label %if.end51, !dbg !6440

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %26 = load ptr, ptr %rdesc.addr, align 8, !dbg !6441
  %arrayidx40 = getelementptr i8, ptr %26, i64 50, !dbg !6441
  %27 = load i8, ptr %arrayidx40, align 1, !dbg !6441
  %conv41 = zext i8 %27 to i32, !dbg !6441
  %cmp42 = icmp eq i32 %conv41, 6, !dbg !6442
  br i1 %cmp42, label %if.then44, label %if.end51, !dbg !6443

if.then44:                                        ; preds = %land.lhs.true39
  br label %do.body45, !dbg !6444

do.body45:                                        ; preds = %if.then44
  br label %do.cond46, !dbg !6447

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6447

do.end47:                                         ; preds = %do.cond46
  %28 = load ptr, ptr %hdev.addr, align 8, !dbg !6444
  %dev48 = getelementptr inbounds %struct.hid_device, ptr %28, i32 0, i32 18, !dbg !6444
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef @.str.8) #16, !dbg !6444
  %29 = load ptr, ptr %rdesc.addr, align 8, !dbg !6449
  %arrayidx49 = getelementptr i8, ptr %29, i64 50, !dbg !6449
  store i8 2, ptr %arrayidx49, align 1, !dbg !6450
  %30 = load ptr, ptr %rdesc.addr, align 8, !dbg !6451
  %arrayidx50 = getelementptr i8, ptr %30, i64 33, !dbg !6451
  store i8 2, ptr %arrayidx50, align 1, !dbg !6452
  br label %if.end51, !dbg !6453

if.end51:                                         ; preds = %do.end47, %land.lhs.true39, %land.lhs.true34, %land.lhs.true29, %land.lhs.true24, %land.lhs.true21, %if.end
  %31 = load ptr, ptr %hdev.addr, align 8, !dbg !6454
  %product = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 11, !dbg !6455
  %32 = load i32, ptr %product, align 4, !dbg !6455
  switch i32 %32, label %sw.epilog [
    i32 49678, label %sw.bb
    i32 49811, label %sw.bb64
    i32 49812, label %sw.bb73
    i32 49813, label %sw.bb82
    i32 51715, label %sw.bb91
    i32 51716, label %sw.bb100
    i32 49816, label %sw.bb109
    i32 49820, label %sw.bb118
  ], !dbg !6456

sw.bb:                                            ; preds = %if.end51
  %33 = load ptr, ptr %rsize.addr, align 8, !dbg !6457
  %34 = load i32, ptr %33, align 4, !dbg !6460
  %cmp52 = icmp eq i32 %34, 82, !dbg !6461
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !6462

if.then54:                                        ; preds = %sw.bb
  br label %do.body55, !dbg !6463

do.body55:                                        ; preds = %if.then54
  br label %do.cond56, !dbg !6466

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6466

do.end57:                                         ; preds = %do.cond56
  %35 = load ptr, ptr %hdev.addr, align 8, !dbg !6463
  %dev58 = getelementptr inbounds %struct.hid_device, ptr %35, i32 0, i32 18, !dbg !6463
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef @.str.9) #16, !dbg !6463
  store ptr @fg_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6468
  %36 = load ptr, ptr %rsize.addr, align 8, !dbg !6469
  store i32 79, ptr %36, align 4, !dbg !6470
  br label %if.end63, !dbg !6471

if.else:                                          ; preds = %sw.bb
  br label %do.body59, !dbg !6472

do.body59:                                        ; preds = %if.else
  br label %do.cond60, !dbg !6475

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !6475

do.end61:                                         ; preds = %do.cond60
  %37 = load ptr, ptr %hdev.addr, align 8, !dbg !6472
  %dev62 = getelementptr inbounds %struct.hid_device, ptr %37, i32 0, i32 18, !dbg !6472
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef @.str.10) #16, !dbg !6472
  br label %if.end63

if.end63:                                         ; preds = %do.end61, %do.end57
  br label %sw.epilog, !dbg !6477

sw.bb64:                                          ; preds = %if.end51
  %38 = load ptr, ptr %rsize.addr, align 8, !dbg !6478
  %39 = load i32, ptr %38, align 4, !dbg !6480
  %cmp65 = icmp eq i32 %39, 85, !dbg !6481
  br i1 %cmp65, label %if.then67, label %if.end72, !dbg !6482

if.then67:                                        ; preds = %sw.bb64
  br label %do.body68, !dbg !6483

do.body68:                                        ; preds = %if.then67
  br label %do.cond69, !dbg !6486

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !6486

do.end70:                                         ; preds = %do.cond69
  %40 = load ptr, ptr %hdev.addr, align 8, !dbg !6483
  %dev71 = getelementptr inbounds %struct.hid_device, ptr %40, i32 0, i32 18, !dbg !6483
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef @.str.11) #16, !dbg !6483
  store ptr @ffg_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6488
  %41 = load ptr, ptr %rsize.addr, align 8, !dbg !6489
  store i32 89, ptr %41, align 4, !dbg !6490
  br label %if.end72, !dbg !6491

if.end72:                                         ; preds = %do.end70, %sw.bb64
  br label %sw.epilog, !dbg !6492

sw.bb73:                                          ; preds = %if.end51
  %42 = load ptr, ptr %rsize.addr, align 8, !dbg !6493
  %43 = load i32, ptr %42, align 4, !dbg !6495
  %cmp74 = icmp eq i32 %43, 130, !dbg !6496
  br i1 %cmp74, label %if.then76, label %if.end81, !dbg !6497

if.then76:                                        ; preds = %sw.bb73
  br label %do.body77, !dbg !6498

do.body77:                                        ; preds = %if.then76
  br label %do.cond78, !dbg !6501

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !6501

do.end79:                                         ; preds = %do.cond78
  %44 = load ptr, ptr %hdev.addr, align 8, !dbg !6498
  %dev80 = getelementptr inbounds %struct.hid_device, ptr %44, i32 0, i32 18, !dbg !6498
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80, ptr noundef @.str.12) #16, !dbg !6498
  store ptr @df_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6503
  %45 = load ptr, ptr %rsize.addr, align 8, !dbg !6504
  store i32 132, ptr %45, align 4, !dbg !6505
  br label %if.end81, !dbg !6506

if.end81:                                         ; preds = %do.end79, %sw.bb73
  br label %sw.epilog, !dbg !6507

sw.bb82:                                          ; preds = %if.end51
  %46 = load ptr, ptr %rsize.addr, align 8, !dbg !6508
  %47 = load i32, ptr %46, align 4, !dbg !6510
  %cmp83 = icmp eq i32 %47, 87, !dbg !6511
  br i1 %cmp83, label %if.then85, label %if.end90, !dbg !6512

if.then85:                                        ; preds = %sw.bb82
  br label %do.body86, !dbg !6513

do.body86:                                        ; preds = %if.then85
  br label %do.cond87, !dbg !6516

do.cond87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !6516

do.end88:                                         ; preds = %do.cond87
  %48 = load ptr, ptr %hdev.addr, align 8, !dbg !6513
  %dev89 = getelementptr inbounds %struct.hid_device, ptr %48, i32 0, i32 18, !dbg !6513
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev89, ptr noundef @.str.13) #16, !dbg !6513
  store ptr @momo_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6518
  %49 = load ptr, ptr %rsize.addr, align 8, !dbg !6519
  store i32 89, ptr %49, align 4, !dbg !6520
  br label %if.end90, !dbg !6521

if.end90:                                         ; preds = %do.end88, %sw.bb82
  br label %sw.epilog, !dbg !6522

sw.bb91:                                          ; preds = %if.end51
  %50 = load ptr, ptr %rsize.addr, align 8, !dbg !6523
  %51 = load i32, ptr %50, align 4, !dbg !6525
  %cmp92 = icmp eq i32 %51, 87, !dbg !6526
  br i1 %cmp92, label %if.then94, label %if.end99, !dbg !6527

if.then94:                                        ; preds = %sw.bb91
  br label %do.body95, !dbg !6528

do.body95:                                        ; preds = %if.then94
  br label %do.cond96, !dbg !6531

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !6531

do.end97:                                         ; preds = %do.cond96
  %52 = load ptr, ptr %hdev.addr, align 8, !dbg !6528
  %dev98 = getelementptr inbounds %struct.hid_device, ptr %52, i32 0, i32 18, !dbg !6528
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev98, ptr noundef @.str.14) #16, !dbg !6528
  store ptr @momo2_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6533
  %53 = load ptr, ptr %rsize.addr, align 8, !dbg !6534
  store i32 93, ptr %53, align 4, !dbg !6535
  br label %if.end99, !dbg !6536

if.end99:                                         ; preds = %do.end97, %sw.bb91
  br label %sw.epilog, !dbg !6537

sw.bb100:                                         ; preds = %if.end51
  %54 = load ptr, ptr %rsize.addr, align 8, !dbg !6538
  %55 = load i32, ptr %54, align 4, !dbg !6540
  %cmp101 = icmp eq i32 %55, 130, !dbg !6541
  br i1 %cmp101, label %if.then103, label %if.end108, !dbg !6542

if.then103:                                       ; preds = %sw.bb100
  br label %do.body104, !dbg !6543

do.body104:                                       ; preds = %if.then103
  br label %do.cond105, !dbg !6546

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !6546

do.end106:                                        ; preds = %do.cond105
  %56 = load ptr, ptr %hdev.addr, align 8, !dbg !6543
  %dev107 = getelementptr inbounds %struct.hid_device, ptr %56, i32 0, i32 18, !dbg !6543
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev107, ptr noundef @.str.15) #16, !dbg !6543
  store ptr @fv_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6548
  %57 = load ptr, ptr %rsize.addr, align 8, !dbg !6549
  store i32 136, ptr %57, align 4, !dbg !6550
  br label %if.end108, !dbg !6551

if.end108:                                        ; preds = %do.end106, %sw.bb100
  br label %sw.epilog, !dbg !6552

sw.bb109:                                         ; preds = %if.end51
  %58 = load ptr, ptr %rsize.addr, align 8, !dbg !6553
  %59 = load i32, ptr %58, align 4, !dbg !6555
  %cmp110 = icmp eq i32 %59, 97, !dbg !6556
  br i1 %cmp110, label %if.then112, label %if.end117, !dbg !6557

if.then112:                                       ; preds = %sw.bb109
  br label %do.body113, !dbg !6558

do.body113:                                       ; preds = %if.then112
  br label %do.cond114, !dbg !6561

do.cond114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !6561

do.end115:                                        ; preds = %do.cond114
  %60 = load ptr, ptr %hdev.addr, align 8, !dbg !6558
  %dev116 = getelementptr inbounds %struct.hid_device, ptr %60, i32 0, i32 18, !dbg !6558
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev116, ptr noundef @.str.16) #16, !dbg !6558
  store ptr @dfp_rdesc_fixed, ptr %rdesc.addr, align 8, !dbg !6563
  %61 = load ptr, ptr %rsize.addr, align 8, !dbg !6564
  store i32 90, ptr %61, align 4, !dbg !6565
  br label %if.end117, !dbg !6566

if.end117:                                        ; preds = %do.end115, %sw.bb109
  br label %sw.epilog, !dbg !6567

sw.bb118:                                         ; preds = %if.end51
  %62 = load ptr, ptr %rsize.addr, align 8, !dbg !6568
  %63 = load i32, ptr %62, align 4, !dbg !6570
  %cmp119 = icmp uge i32 %63, 101, !dbg !6571
  br i1 %cmp119, label %land.lhs.true121, label %if.end150, !dbg !6572

land.lhs.true121:                                 ; preds = %sw.bb118
  %64 = load ptr, ptr %rdesc.addr, align 8, !dbg !6573
  %arrayidx122 = getelementptr i8, ptr %64, i64 41, !dbg !6573
  %65 = load i8, ptr %arrayidx122, align 1, !dbg !6573
  %conv123 = zext i8 %65 to i32, !dbg !6573
  %cmp124 = icmp eq i32 %conv123, 149, !dbg !6574
  br i1 %cmp124, label %land.lhs.true126, label %if.end150, !dbg !6575

land.lhs.true126:                                 ; preds = %land.lhs.true121
  %66 = load ptr, ptr %rdesc.addr, align 8, !dbg !6576
  %arrayidx127 = getelementptr i8, ptr %66, i64 42, !dbg !6576
  %67 = load i8, ptr %arrayidx127, align 1, !dbg !6576
  %conv128 = zext i8 %67 to i32, !dbg !6576
  %cmp129 = icmp eq i32 %conv128, 11, !dbg !6577
  br i1 %cmp129, label %land.lhs.true131, label %if.end150, !dbg !6578

land.lhs.true131:                                 ; preds = %land.lhs.true126
  %68 = load ptr, ptr %rdesc.addr, align 8, !dbg !6579
  %arrayidx132 = getelementptr i8, ptr %68, i64 47, !dbg !6579
  %69 = load i8, ptr %arrayidx132, align 1, !dbg !6579
  %conv133 = zext i8 %69 to i32, !dbg !6579
  %cmp134 = icmp eq i32 %conv133, 5, !dbg !6580
  br i1 %cmp134, label %land.lhs.true136, label %if.end150, !dbg !6581

land.lhs.true136:                                 ; preds = %land.lhs.true131
  %70 = load ptr, ptr %rdesc.addr, align 8, !dbg !6582
  %arrayidx137 = getelementptr i8, ptr %70, i64 48, !dbg !6582
  %71 = load i8, ptr %arrayidx137, align 1, !dbg !6582
  %conv138 = zext i8 %71 to i32, !dbg !6582
  %cmp139 = icmp eq i32 %conv138, 9, !dbg !6583
  br i1 %cmp139, label %if.then141, label %if.end150, !dbg !6584

if.then141:                                       ; preds = %land.lhs.true136
  br label %do.body142, !dbg !6585

do.body142:                                       ; preds = %if.then141
  br label %do.cond143, !dbg !6588

do.cond143:                                       ; preds = %do.body142
  br label %do.end144, !dbg !6588

do.end144:                                        ; preds = %do.cond143
  %72 = load ptr, ptr %hdev.addr, align 8, !dbg !6585
  %dev145 = getelementptr inbounds %struct.hid_device, ptr %72, i32 0, i32 18, !dbg !6585
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev145, ptr noundef @.str.17) #16, !dbg !6585
  %73 = load ptr, ptr %rdesc.addr, align 8, !dbg !6590
  %arrayidx146 = getelementptr i8, ptr %73, i64 41, !dbg !6590
  store i8 5, ptr %arrayidx146, align 1, !dbg !6591
  %74 = load ptr, ptr %rdesc.addr, align 8, !dbg !6592
  %arrayidx147 = getelementptr i8, ptr %74, i64 42, !dbg !6592
  store i8 9, ptr %arrayidx147, align 1, !dbg !6593
  %75 = load ptr, ptr %rdesc.addr, align 8, !dbg !6594
  %arrayidx148 = getelementptr i8, ptr %75, i64 47, !dbg !6594
  store i8 -107, ptr %arrayidx148, align 1, !dbg !6595
  %76 = load ptr, ptr %rdesc.addr, align 8, !dbg !6596
  %arrayidx149 = getelementptr i8, ptr %76, i64 48, !dbg !6596
  store i8 11, ptr %arrayidx149, align 1, !dbg !6597
  br label %if.end150, !dbg !6598

if.end150:                                        ; preds = %do.end144, %land.lhs.true136, %land.lhs.true131, %land.lhs.true126, %land.lhs.true121, %sw.bb118
  br label %sw.epilog, !dbg !6599

sw.epilog:                                        ; preds = %if.end51, %if.end150, %if.end117, %if.end108, %if.end99, %if.end90, %if.end81, %if.end72, %if.end63
  %77 = load ptr, ptr %rdesc.addr, align 8, !dbg !6600
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6601
  ret ptr %77, !dbg !6602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_input_mapping(ptr noundef %hdev, ptr noundef %hi, ptr noundef %field, ptr noundef %usage, ptr noundef %bit, ptr noundef %max) #2 align 16 !dbg !6002 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %bit.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %drv_data = alloca ptr, align 8
  %hid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6004, metadata !DIExpression()), !dbg !6603
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !6005, metadata !DIExpression()), !dbg !6604
  store ptr %field, ptr %field.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %field.addr, metadata !6006, metadata !DIExpression()), !dbg !6605
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !6007, metadata !DIExpression()), !dbg !6606
  store ptr %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6008, metadata !DIExpression()), !dbg !6607
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6009, metadata !DIExpression()), !dbg !6608
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6609
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !6010, metadata !DIExpression()), !dbg !6610
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6611
  %call = call ptr @hid_get_drvdata(ptr noundef %0) #17, !dbg !6612
  store ptr %call, ptr %drv_data, align 8, !dbg !6610
  call void @llvm.lifetime.start.p0(i64 4, ptr %hid) #18, !dbg !6613
  call void @llvm.dbg.declare(metadata ptr %hid, metadata !6011, metadata !DIExpression()), !dbg !6614
  %1 = load ptr, ptr %usage.addr, align 8, !dbg !6615
  %hid1 = getelementptr inbounds %struct.hid_usage, ptr %1, i32 0, i32 0, !dbg !6616
  %2 = load i32, ptr %hid1, align 4, !dbg !6616
  store i32 %2, ptr %hid, align 4, !dbg !6614
  %3 = load ptr, ptr %hdev.addr, align 8, !dbg !6617
  %product = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 11, !dbg !6619
  %4 = load i32, ptr %product, align 4, !dbg !6619
  %cmp = icmp eq i32 %4, 49409, !dbg !6620
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6621

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %hi.addr, align 8, !dbg !6622
  %6 = load ptr, ptr %usage.addr, align 8, !dbg !6623
  %7 = load ptr, ptr %bit.addr, align 8, !dbg !6624
  %8 = load ptr, ptr %max.addr, align 8, !dbg !6625
  %call2 = call i32 @lg_ultrax_remote_mapping(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !6626
  %tobool = icmp ne i32 %call2, 0, !dbg !6626
  br i1 %tobool, label %if.then, label %if.end, !dbg !6627

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6628

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %drv_data, align 8, !dbg !6629
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %9, i32 0, i32 0, !dbg !6631
  %10 = load i64, ptr %quirks, align 8, !dbg !6631
  %and = and i64 %10, 64, !dbg !6632
  %tobool3 = icmp ne i64 %and, 0, !dbg !6632
  br i1 %tobool3, label %land.lhs.true4, label %if.end8, !dbg !6633

land.lhs.true4:                                   ; preds = %if.end
  %11 = load ptr, ptr %hi.addr, align 8, !dbg !6634
  %12 = load ptr, ptr %usage.addr, align 8, !dbg !6635
  %13 = load ptr, ptr %bit.addr, align 8, !dbg !6636
  %14 = load ptr, ptr %max.addr, align 8, !dbg !6637
  %call5 = call i32 @lg_wireless_mapping(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) #17, !dbg !6638
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6638
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6639

if.then7:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4, !dbg !6640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6640

if.end8:                                          ; preds = %land.lhs.true4, %if.end
  %15 = load i32, ptr %hid, align 4, !dbg !6641
  %and9 = and i32 %15, -65536, !dbg !6643
  %cmp10 = icmp ne i32 %and9, 589824, !dbg !6644
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !6645

if.then11:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4, !dbg !6646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6646

if.end12:                                         ; preds = %if.end8
  %16 = load i32, ptr %hid, align 4, !dbg !6647
  %and13 = and i32 %16, 65535, !dbg !6647
  store i32 %and13, ptr %hid, align 4, !dbg !6647
  %17 = load ptr, ptr %field.addr, align 8, !dbg !6648
  %application = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 2, !dbg !6650
  %18 = load i32, ptr %application, align 8, !dbg !6650
  %cmp14 = icmp eq i32 %18, 65538, !dbg !6651
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !6652

if.then15:                                        ; preds = %if.end12
  %19 = load ptr, ptr %drv_data, align 8, !dbg !6653
  %quirks16 = getelementptr inbounds %struct.lg_drv_data, ptr %19, i32 0, i32 0, !dbg !6656
  %20 = load i64, ptr %quirks16, align 8, !dbg !6656
  %and17 = and i64 %20, 32, !dbg !6657
  %tobool18 = icmp ne i64 %and17, 0, !dbg !6657
  br i1 %tobool18, label %land.lhs.true19, label %if.end23, !dbg !6658

land.lhs.true19:                                  ; preds = %if.then15
  %21 = load i32, ptr %hid, align 4, !dbg !6659
  %cmp20 = icmp eq i32 %21, 7, !dbg !6660
  br i1 %cmp20, label %if.then22, label %lor.lhs.false, !dbg !6661

lor.lhs.false:                                    ; preds = %land.lhs.true19
  %22 = load i32, ptr %hid, align 4, !dbg !6662
  %cmp21 = icmp eq i32 %22, 8, !dbg !6663
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6664

if.then22:                                        ; preds = %lor.lhs.false, %land.lhs.true19
  store i32 -1, ptr %retval, align 4, !dbg !6665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6665

if.end23:                                         ; preds = %lor.lhs.false, %if.then15
  br label %if.end39, !dbg !6666

if.else:                                          ; preds = %if.end12
  %23 = load ptr, ptr %drv_data, align 8, !dbg !6667
  %quirks24 = getelementptr inbounds %struct.lg_drv_data, ptr %23, i32 0, i32 0, !dbg !6670
  %24 = load i64, ptr %quirks24, align 8, !dbg !6670
  %and25 = and i64 %24, 16, !dbg !6671
  %tobool26 = icmp ne i64 %and25, 0, !dbg !6671
  br i1 %tobool26, label %land.lhs.true27, label %if.end38, !dbg !6672

land.lhs.true27:                                  ; preds = %if.else
  %25 = load i32, ptr %hid, align 4, !dbg !6673
  %conv = zext i32 %25 to i64, !dbg !6673
  %cmp28 = icmp ult i64 %conv, 80, !dbg !6674
  br i1 %cmp28, label %land.lhs.true30, label %if.end38, !dbg !6675

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %26 = load i32, ptr %hid, align 4, !dbg !6676
  %idxprom = zext i32 %26 to i64, !dbg !6677
  %arrayidx = getelementptr [80 x i8], ptr @lg_input_mapping.e_keymap, i64 0, i64 %idxprom, !dbg !6677
  %27 = load i8, ptr %arrayidx, align 1, !dbg !6677
  %conv31 = zext i8 %27 to i32, !dbg !6677
  %cmp32 = icmp ne i32 %conv31, 0, !dbg !6678
  br i1 %cmp32, label %if.then34, label %if.end38, !dbg !6679

if.then34:                                        ; preds = %land.lhs.true30
  %28 = load ptr, ptr %hi.addr, align 8, !dbg !6680
  %29 = load ptr, ptr %usage.addr, align 8, !dbg !6682
  %30 = load ptr, ptr %bit.addr, align 8, !dbg !6683
  %31 = load ptr, ptr %max.addr, align 8, !dbg !6684
  %32 = load i32, ptr %hid, align 4, !dbg !6685
  %idxprom35 = zext i32 %32 to i64, !dbg !6686
  %arrayidx36 = getelementptr [80 x i8], ptr @lg_input_mapping.e_keymap, i64 0, i64 %idxprom35, !dbg !6686
  %33 = load i8, ptr %arrayidx36, align 1, !dbg !6686
  %conv37 = zext i8 %33 to i32, !dbg !6686
  call void @hid_map_usage(ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 noundef zeroext 1, i32 noundef %conv37) #17, !dbg !6687
  store i32 1, ptr %retval, align 4, !dbg !6688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6688

if.end38:                                         ; preds = %land.lhs.true30, %land.lhs.true27, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end23
  store i32 0, ptr %retval, align 4, !dbg !6689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6689

cleanup:                                          ; preds = %if.end39, %if.then34, %if.then22, %if.then11, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %hid) #18, !dbg !6690
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6690
  %34 = load i32, ptr %retval, align 4, !dbg !6690
  ret i32 %34, !dbg !6690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_input_mapped(ptr noundef %hdev, ptr noundef %hi, ptr noundef %field, ptr noundef %usage, ptr noundef %bit, ptr noundef %max) #2 align 16 !dbg !6691 {
entry:
  %hdev.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  %field.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %bit.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %drv_data = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6693, metadata !DIExpression()), !dbg !6700
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !6694, metadata !DIExpression()), !dbg !6701
  store ptr %field, ptr %field.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %field.addr, metadata !6695, metadata !DIExpression()), !dbg !6702
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !6696, metadata !DIExpression()), !dbg !6703
  store ptr %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6697, metadata !DIExpression()), !dbg !6704
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6698, metadata !DIExpression()), !dbg !6705
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_data) #18, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %drv_data, metadata !6699, metadata !DIExpression()), !dbg !6707
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6708
  %call = call ptr @hid_get_drvdata(ptr noundef %0) #17, !dbg !6709
  store ptr %call, ptr %drv_data, align 8, !dbg !6707
  %1 = load ptr, ptr %drv_data, align 8, !dbg !6710
  %quirks = getelementptr inbounds %struct.lg_drv_data, ptr %1, i32 0, i32 0, !dbg !6712
  %2 = load i64, ptr %quirks, align 8, !dbg !6712
  %and = and i64 %2, 2, !dbg !6713
  %tobool = icmp ne i64 %and, 0, !dbg !6713
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6714

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %usage.addr, align 8, !dbg !6715
  %type = getelementptr inbounds %struct.hid_usage, ptr %3, i32 0, i32 6, !dbg !6716
  %4 = load i8, ptr %type, align 4, !dbg !6716
  %conv = zext i8 %4 to i32, !dbg !6715
  %cmp = icmp eq i32 %conv, 1, !dbg !6717
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !6718

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %field.addr, align 8, !dbg !6719
  %flags = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 5, !dbg !6720
  %6 = load i32, ptr %flags, align 4, !dbg !6720
  %and3 = and i32 %6, 4, !dbg !6721
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6721
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6722

if.then:                                          ; preds = %land.lhs.true2
  %7 = load ptr, ptr %field.addr, align 8, !dbg !6723
  %flags5 = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 5, !dbg !6724
  %8 = load i32, ptr %flags5, align 4, !dbg !6725
  %and6 = and i32 %8, -5, !dbg !6725
  store i32 %and6, ptr %flags5, align 4, !dbg !6725
  br label %if.end, !dbg !6723

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %9 = load ptr, ptr %drv_data, align 8, !dbg !6726
  %quirks7 = getelementptr inbounds %struct.lg_drv_data, ptr %9, i32 0, i32 0, !dbg !6728
  %10 = load i64, ptr %quirks7, align 8, !dbg !6728
  %and8 = and i64 %10, 4, !dbg !6729
  %tobool9 = icmp ne i64 %and8, 0, !dbg !6729
  br i1 %tobool9, label %land.lhs.true10, label %if.end26, !dbg !6730

land.lhs.true10:                                  ; preds = %if.end
  %11 = load ptr, ptr %usage.addr, align 8, !dbg !6731
  %type11 = getelementptr inbounds %struct.hid_usage, ptr %11, i32 0, i32 6, !dbg !6732
  %12 = load i8, ptr %type11, align 4, !dbg !6732
  %conv12 = zext i8 %12 to i32, !dbg !6731
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !6733
  br i1 %cmp13, label %if.then24, label %lor.lhs.false, !dbg !6734

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %13 = load ptr, ptr %usage.addr, align 8, !dbg !6735
  %type15 = getelementptr inbounds %struct.hid_usage, ptr %13, i32 0, i32 6, !dbg !6736
  %14 = load i8, ptr %type15, align 4, !dbg !6736
  %conv16 = zext i8 %14 to i32, !dbg !6735
  %cmp17 = icmp eq i32 %conv16, 2, !dbg !6737
  br i1 %cmp17, label %if.then24, label %lor.lhs.false19, !dbg !6738

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %15 = load ptr, ptr %usage.addr, align 8, !dbg !6739
  %type20 = getelementptr inbounds %struct.hid_usage, ptr %15, i32 0, i32 6, !dbg !6740
  %16 = load i8, ptr %type20, align 4, !dbg !6740
  %conv21 = zext i8 %16 to i32, !dbg !6739
  %cmp22 = icmp eq i32 %conv21, 3, !dbg !6741
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !6742

if.then24:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %land.lhs.true10
  %17 = load ptr, ptr %usage.addr, align 8, !dbg !6743
  %code = getelementptr inbounds %struct.hid_usage, ptr %17, i32 0, i32 5, !dbg !6744
  %18 = load i16, ptr %code, align 2, !dbg !6744
  %conv25 = zext i16 %18 to i64, !dbg !6743
  %19 = load ptr, ptr %bit.addr, align 8, !dbg !6745
  %20 = load ptr, ptr %19, align 8, !dbg !6746
  call void @clear_bit(i64 noundef %conv25, ptr noundef %20) #17, !dbg !6747
  br label %if.end26, !dbg !6747

if.end26:                                         ; preds = %if.then24, %lor.lhs.false19, %if.end
  %21 = load ptr, ptr %usage.addr, align 8, !dbg !6748
  %type27 = getelementptr inbounds %struct.hid_usage, ptr %21, i32 0, i32 6, !dbg !6750
  %22 = load i8, ptr %type27, align 4, !dbg !6750
  %conv28 = zext i8 %22 to i32, !dbg !6748
  %cmp29 = icmp eq i32 %conv28, 3, !dbg !6751
  br i1 %cmp29, label %land.lhs.true31, label %if.end52, !dbg !6752

land.lhs.true31:                                  ; preds = %if.end26
  %23 = load ptr, ptr %usage.addr, align 8, !dbg !6753
  %code32 = getelementptr inbounds %struct.hid_usage, ptr %23, i32 0, i32 5, !dbg !6754
  %24 = load i16, ptr %code32, align 2, !dbg !6754
  %conv33 = zext i16 %24 to i32, !dbg !6753
  %cmp34 = icmp eq i32 %conv33, 0, !dbg !6755
  br i1 %cmp34, label %if.then51, label %lor.lhs.false36, !dbg !6756

lor.lhs.false36:                                  ; preds = %land.lhs.true31
  %25 = load ptr, ptr %usage.addr, align 8, !dbg !6757
  %code37 = getelementptr inbounds %struct.hid_usage, ptr %25, i32 0, i32 5, !dbg !6758
  %26 = load i16, ptr %code37, align 2, !dbg !6758
  %conv38 = zext i16 %26 to i32, !dbg !6757
  %cmp39 = icmp eq i32 %conv38, 1, !dbg !6759
  br i1 %cmp39, label %if.then51, label %lor.lhs.false41, !dbg !6760

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %27 = load ptr, ptr %usage.addr, align 8, !dbg !6761
  %code42 = getelementptr inbounds %struct.hid_usage, ptr %27, i32 0, i32 5, !dbg !6762
  %28 = load i16, ptr %code42, align 2, !dbg !6762
  %conv43 = zext i16 %28 to i32, !dbg !6761
  %cmp44 = icmp eq i32 %conv43, 2, !dbg !6763
  br i1 %cmp44, label %if.then51, label %lor.lhs.false46, !dbg !6764

lor.lhs.false46:                                  ; preds = %lor.lhs.false41
  %29 = load ptr, ptr %usage.addr, align 8, !dbg !6765
  %code47 = getelementptr inbounds %struct.hid_usage, ptr %29, i32 0, i32 5, !dbg !6766
  %30 = load i16, ptr %code47, align 2, !dbg !6766
  %conv48 = zext i16 %30 to i32, !dbg !6765
  %cmp49 = icmp eq i32 %conv48, 5, !dbg !6767
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !6768

if.then51:                                        ; preds = %lor.lhs.false46, %lor.lhs.false41, %lor.lhs.false36, %land.lhs.true31
  %31 = load ptr, ptr %hdev.addr, align 8, !dbg !6769
  %product = getelementptr inbounds %struct.hid_device, ptr %31, i32 0, i32 11, !dbg !6771
  %32 = load i32, ptr %product, align 4, !dbg !6771
  switch i32 %32, label %sw.default [
    i32 49743, label %sw.bb
    i32 49678, label %sw.bb
    i32 49811, label %sw.bb
    i32 49812, label %sw.bb
    i32 49813, label %sw.bb
    i32 49816, label %sw.bb
    i32 49817, label %sw.bb
    i32 49818, label %sw.bb
    i32 49819, label %sw.bb
    i32 49820, label %sw.bb
    i32 51715, label %sw.bb
    i32 51716, label %sw.bb
  ], !dbg !6772

sw.bb:                                            ; preds = %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51
  %33 = load ptr, ptr %field.addr, align 8, !dbg !6773
  %application = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 2, !dbg !6775
  store i32 65544, ptr %application, align 8, !dbg !6776
  br label %sw.epilog, !dbg !6777

sw.default:                                       ; preds = %if.then51
  br label %sw.epilog, !dbg !6778

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end52, !dbg !6779

if.end52:                                         ; preds = %sw.epilog, %lor.lhs.false46, %if.end26
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_data) #18, !dbg !6780
  ret i32 0, !dbg !6781
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6782 dso_local zeroext i1 @hid_is_usb(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6787 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6791, metadata !DIExpression()), !dbg !6793
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6792, metadata !DIExpression()), !dbg !6794
  %0 = load i64, ptr %size.addr, align 8, !dbg !6795
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6796
  %or = or i32 %1, 256, !dbg !6797
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6798
  ret ptr %call, !dbg !6799
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6800 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hid_set_drvdata(ptr noundef %hdev, ptr noundef %data) #7 align 16 !dbg !6804 {
entry:
  %hdev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6808, metadata !DIExpression()), !dbg !6810
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6809, metadata !DIExpression()), !dbg !6811
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6812
  %dev = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, !dbg !6813
  %1 = load ptr, ptr %data.addr, align 8, !dbg !6814
  call void @dev_set_drvdata(ptr noundef %dev, ptr noundef %1) #17, !dbg !6815
  ret void, !dbg !6816
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hid_parse(ptr noundef %hdev) #7 align 16 !dbg !6817 {
entry:
  %hdev.addr = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6819, metadata !DIExpression()), !dbg !6820
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !6821
  %call = call i32 @hid_open_report(ptr noundef %0) #17, !dbg !6822
  ret i32 %call, !dbg !6823
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6824 dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6825 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6829 dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6832 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #9 align 16 !dbg !6837 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6842, metadata !DIExpression()), !dbg !6843
  %0 = load i32, ptr %m.addr, align 4, !dbg !6844
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6846
  br i1 %1, label %if.then, label %if.else, !dbg !6847

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6848
  %cmp = icmp slt i32 %2, 0, !dbg !6851
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6852

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6853
  br label %return, !dbg !6853

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6854
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #17, !dbg !6855
  store i64 %call, ptr %retval, align 8, !dbg !6856
  br label %return, !dbg !6856

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6857
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #17, !dbg !6859
  store i64 %call2, ptr %retval, align 8, !dbg !6860
  br label %return, !dbg !6860

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6861
  ret i64 %5, !dbg !6861
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #9 align 16 !dbg !5922 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6862
  %0 = load ptr, ptr %tmp, align 8, !dbg !6862
  %call = call i32 %0() #17, !dbg !6864
  ret void, !dbg !6865
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6866 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6869 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6872 dso_local i64 @schedule_timeout(i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6875 dso_local void @finish_wait(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6878 dso_local void @get_random_bytes(ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6882 dso_local void @kfree(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6885 dso_local i32 @lgff_init(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg2ff_init(ptr noundef %hdev) #7 align 16 !dbg !6886 {
entry:
  %hdev.addr = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6888, metadata !DIExpression()), !dbg !6889
  ret i32 -1, !dbg !6890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg3ff_init(ptr noundef %hdev) #7 align 16 !dbg !6891 {
entry:
  %hdev.addr = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !6893, metadata !DIExpression()), !dbg !6894
  ret i32 -1, !dbg !6895
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6896 dso_local i32 @lg4ff_init(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6898 dso_local void @hid_hw_stop(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6899 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6901, metadata !DIExpression()), !dbg !6906
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6902, metadata !DIExpression()), !dbg !6907
  %0 = load i64, ptr %size.addr, align 8, !dbg !6908
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6909
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6910

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6911
  %tobool = icmp ne i64 %2, 0, !dbg !6911
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6912

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6913
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6903, metadata !DIExpression()), !dbg !6914
  %3 = load i64, ptr %size.addr, align 8, !dbg !6915
  %cmp = icmp ugt i64 %3, 8192, !dbg !6917
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6918

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6919
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6920
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6921
  store ptr %call, ptr %retval, align 8, !dbg !6922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6922

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6923
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6923
  store i32 %call2, ptr %index, align 4, !dbg !6924
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6925
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6926
  %9 = ptrtoint ptr %8 to i64, !dbg !6926
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6927
  %idxprom = zext i32 %call3 to i64, !dbg !6928
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6928
  %10 = load i32, ptr %index, align 4, !dbg !6929
  %idxprom4 = zext i32 %10 to i64, !dbg !6928
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6928
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6928
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6930
  %13 = load i64, ptr %size.addr, align 8, !dbg !6931
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6932
  store ptr %call6, ptr %retval, align 8, !dbg !6933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6933

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6934
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6935
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6936
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6937
  store ptr %call8, ptr %retval, align 8, !dbg !6938
  br label %return, !dbg !6938

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6939
  ret ptr %16, !dbg !6939
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6940 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !6941 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6945, metadata !DIExpression()), !dbg !6947
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6946, metadata !DIExpression()), !dbg !6948
  %0 = load i64, ptr %size.addr, align 8, !dbg !6949
  %tobool = icmp ne i64 %0, 0, !dbg !6949
  br i1 %tobool, label %if.end, label %if.then, !dbg !6951

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6952
  br label %return, !dbg !6952

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6953
  %cmp = icmp ule i64 %1, 8, !dbg !6955
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6956

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6957
  br label %return, !dbg !6957

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6958
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6960
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6961

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6962
  %cmp4 = icmp ule i64 %3, 96, !dbg !6963
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6964

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6965
  br label %return, !dbg !6965

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6966
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6968
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6969

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6970
  %cmp9 = icmp ule i64 %5, 192, !dbg !6971
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6972

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6973
  br label %return, !dbg !6973

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6974
  %cmp12 = icmp ule i64 %6, 8, !dbg !6976
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6977

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6978
  br label %return, !dbg !6978

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6979
  %cmp15 = icmp ule i64 %7, 16, !dbg !6981
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6982

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6983
  br label %return, !dbg !6983

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6984
  %cmp18 = icmp ule i64 %8, 32, !dbg !6986
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6987

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6988
  br label %return, !dbg !6988

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6989
  %cmp21 = icmp ule i64 %9, 64, !dbg !6991
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6992

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6993
  br label %return, !dbg !6993

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6994
  %cmp24 = icmp ule i64 %10, 128, !dbg !6996
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6997

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6998
  br label %return, !dbg !6998

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6999
  %cmp27 = icmp ule i64 %11, 256, !dbg !7001
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7002

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7003
  br label %return, !dbg !7003

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7004
  %cmp30 = icmp ule i64 %12, 512, !dbg !7006
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7007

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7008
  br label %return, !dbg !7008

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7009
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7011
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7012

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7013
  br label %return, !dbg !7013

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7014
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7016
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7017

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7018
  br label %return, !dbg !7018

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7019
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7021
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7022

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7023
  br label %return, !dbg !7023

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7024
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7026
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7027

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7028
  br label %return, !dbg !7028

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7029
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7031
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7032

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7033
  br label %return, !dbg !7033

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7034
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7036
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7037

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7038
  br label %return, !dbg !7038

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7039
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7041
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7042

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7043
  br label %return, !dbg !7043

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7044
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7046
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7047

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7048
  br label %return, !dbg !7048

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7049
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7051
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7052

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7053
  br label %return, !dbg !7053

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7054
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7056
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7057

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7058
  br label %return, !dbg !7058

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7059
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7061
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7062

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7063
  br label %return, !dbg !7063

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7064
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7066
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7067

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7068
  br label %return, !dbg !7068

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7069, !range !6195, !noundef !631
  %tobool69 = trunc i8 %25 to i1, !dbg !7069
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7071

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7072

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #22, !dbg !7073, !srcloc !7076
  unreachable, !dbg !7073

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7077

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7078

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7079

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7081

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7079

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #18, !dbg !7083, !srcloc !7085
  br label %do.end75, !dbg !7083

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7079

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7086
  br label %return, !dbg !7086

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7087
  ret i32 %26, !dbg !7087
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7088 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !7094 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7098, metadata !DIExpression()), !dbg !7100
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7099, metadata !DIExpression()), !dbg !7101
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7102
  %and = and i32 %0, 17, !dbg !7102
  %cmp = icmp eq i32 %and, 0, !dbg !7102
  %lnot = xor i1 %cmp, true, !dbg !7102
  %lnot1 = xor i1 %lnot, true, !dbg !7102
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7102
  %conv = sext i32 %lnot.ext to i64, !dbg !7102
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7102
  %tobool = icmp ne i64 %expval, 0, !dbg !7102
  br i1 %tobool, label %if.then, label %if.end, !dbg !7104

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7105
  br label %return, !dbg !7105

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7106
  %and2 = and i32 %1, 1, !dbg !7108
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7108
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7109

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7110
  br label %return, !dbg !7110

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7111
  br label %return, !dbg !7111

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7113
  ret i32 %2, !dbg !7113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7114 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7115 dso_local void @__compiletime_assert_204() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #7 align 16 !dbg !7116 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7120, metadata !DIExpression()), !dbg !7122
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7121, metadata !DIExpression()), !dbg !7123
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7124
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7125
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !7126
  store ptr %0, ptr %driver_data, align 8, !dbg !7127
  ret void, !dbg !7128
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7129 dso_local i32 @hid_open_report(ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #7 align 16 !dbg !7130 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !7132, metadata !DIExpression()), !dbg !7133
  %0 = load i32, ptr %m.addr, align 4, !dbg !7134
  %conv = zext i32 %0 to i64, !dbg !7134
  %add = add i64 %conv, 1, !dbg !7135
  %sub = sub i64 %add, 1, !dbg !7136
  %div = sdiv i64 %sub, 1, !dbg !7137
  ret i64 %div, !dbg !7138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7139 dso_local i64 @__msecs_to_jiffies(i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hid_get_drvdata(ptr noundef %hdev) #7 align 16 !dbg !7140 {
entry:
  %hdev.addr = alloca ptr, align 8
  store ptr %hdev, ptr %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdev.addr, metadata !7144, metadata !DIExpression()), !dbg !7145
  %0 = load ptr, ptr %hdev.addr, align 8, !dbg !7146
  %dev = getelementptr inbounds %struct.hid_device, ptr %0, i32 0, i32 18, !dbg !7147
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #17, !dbg !7148
  ret ptr %call, !dbg !7149
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7150 dso_local i32 @lg4ff_deinit(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #7 align 16 !dbg !7151 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7155, metadata !DIExpression()), !dbg !7156
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7157
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !7158
  %1 = load ptr, ptr %driver_data, align 8, !dbg !7158
  ret ptr %1, !dbg !7159
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7160 dso_local i32 @lg4ff_raw_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7163 dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7166 dso_local i32 @lg4ff_adjust_input_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7169 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_ultrax_remote_mapping(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max) #2 align 16 !dbg !7170 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %bit.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !7174, metadata !DIExpression()), !dbg !7178
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !7175, metadata !DIExpression()), !dbg !7179
  store ptr %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !7176, metadata !DIExpression()), !dbg !7180
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !7177, metadata !DIExpression()), !dbg !7181
  %0 = load ptr, ptr %usage.addr, align 8, !dbg !7182
  %hid = getelementptr inbounds %struct.hid_usage, ptr %0, i32 0, i32 0, !dbg !7184
  %1 = load i32, ptr %hid, align 4, !dbg !7184
  %and = and i32 %1, -65536, !dbg !7185
  %cmp = icmp ne i32 %and, -4456448, !dbg !7186
  br i1 %cmp, label %if.then, label %if.end, !dbg !7187

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7188
  br label %return, !dbg !7188

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %hi.addr, align 8, !dbg !7189
  %input = getelementptr inbounds %struct.hid_input, ptr %2, i32 0, i32 2, !dbg !7190
  %3 = load ptr, ptr %input, align 8, !dbg !7190
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5, !dbg !7191
  %arraydecay = getelementptr inbounds [1 x i64], ptr %evbit, i64 0, i64 0, !dbg !7189
  call void @set_bit(i64 noundef 20, ptr noundef %arraydecay) #17, !dbg !7192
  %4 = load ptr, ptr %usage.addr, align 8, !dbg !7193
  %hid1 = getelementptr inbounds %struct.hid_usage, ptr %4, i32 0, i32 0, !dbg !7194
  %5 = load i32, ptr %hid1, align 4, !dbg !7194
  %and2 = and i32 %5, 65535, !dbg !7195
  switch i32 %and2, label %sw.default [
    i32 4, label %sw.bb
    i32 13, label %sw.bb3
    i32 36, label %sw.bb4
    i32 37, label %sw.bb5
    i32 38, label %sw.bb6
    i32 49, label %sw.bb7
    i32 50, label %sw.bb8
    i32 51, label %sw.bb9
    i32 71, label %sw.bb10
    i32 72, label %sw.bb11
    i32 73, label %sw.bb12
    i32 74, label %sw.bb13
    i32 75, label %sw.bb14
    i32 76, label %sw.bb15
    i32 77, label %sw.bb16
    i32 81, label %sw.bb17
    i32 82, label %sw.bb18
  ], !dbg !7196

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %hi.addr, align 8, !dbg !7197
  %7 = load ptr, ptr %usage.addr, align 8, !dbg !7197
  %8 = load ptr, ptr %bit.addr, align 8, !dbg !7197
  %9 = load ptr, ptr %max.addr, align 8, !dbg !7197
  call void @hid_map_usage_clear(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i8 noundef zeroext 1, i16 noundef zeroext 129) #17, !dbg !7197
  br label %sw.epilog, !dbg !7199

sw.bb3:                                           ; preds = %if.end
  %10 = load ptr, ptr %hi.addr, align 8, !dbg !7200
  %11 = load ptr, ptr %usage.addr, align 8, !dbg !7200
  %12 = load ptr, ptr %bit.addr, align 8, !dbg !7200
  %13 = load ptr, ptr %max.addr, align 8, !dbg !7200
  call void @hid_map_usage_clear(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext 102) #17, !dbg !7200
  br label %sw.epilog, !dbg !7201

sw.bb4:                                           ; preds = %if.end
  %14 = load ptr, ptr %hi.addr, align 8, !dbg !7202
  %15 = load ptr, ptr %usage.addr, align 8, !dbg !7202
  %16 = load ptr, ptr %bit.addr, align 8, !dbg !7202
  %17 = load ptr, ptr %max.addr, align 8, !dbg !7202
  call void @hid_map_usage_clear(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, i8 noundef zeroext 1, i16 noundef zeroext 410) #17, !dbg !7202
  br label %sw.epilog, !dbg !7203

sw.bb5:                                           ; preds = %if.end
  %18 = load ptr, ptr %hi.addr, align 8, !dbg !7204
  %19 = load ptr, ptr %usage.addr, align 8, !dbg !7204
  %20 = load ptr, ptr %bit.addr, align 8, !dbg !7204
  %21 = load ptr, ptr %max.addr, align 8, !dbg !7204
  call void @hid_map_usage_clear(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, i8 noundef zeroext 1, i16 noundef zeroext 377) #17, !dbg !7204
  br label %sw.epilog, !dbg !7205

sw.bb6:                                           ; preds = %if.end
  %22 = load ptr, ptr %hi.addr, align 8, !dbg !7206
  %23 = load ptr, ptr %usage.addr, align 8, !dbg !7206
  %24 = load ptr, ptr %bit.addr, align 8, !dbg !7206
  %25 = load ptr, ptr %max.addr, align 8, !dbg !7206
  call void @hid_map_usage_clear(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, i8 noundef zeroext 1, i16 noundef zeroext 139) #17, !dbg !7206
  br label %sw.epilog, !dbg !7207

sw.bb7:                                           ; preds = %if.end
  %26 = load ptr, ptr %hi.addr, align 8, !dbg !7208
  %27 = load ptr, ptr %usage.addr, align 8, !dbg !7208
  %28 = load ptr, ptr %bit.addr, align 8, !dbg !7208
  %29 = load ptr, ptr %max.addr, align 8, !dbg !7208
  call void @hid_map_usage_clear(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, i8 noundef zeroext 1, i16 noundef zeroext 392) #17, !dbg !7208
  br label %sw.epilog, !dbg !7209

sw.bb8:                                           ; preds = %if.end
  %30 = load ptr, ptr %hi.addr, align 8, !dbg !7210
  %31 = load ptr, ptr %usage.addr, align 8, !dbg !7210
  %32 = load ptr, ptr %bit.addr, align 8, !dbg !7210
  %33 = load ptr, ptr %max.addr, align 8, !dbg !7210
  call void @hid_map_usage_clear(ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, i8 noundef zeroext 1, i16 noundef zeroext 388) #17, !dbg !7210
  br label %sw.epilog, !dbg !7211

sw.bb9:                                           ; preds = %if.end
  %34 = load ptr, ptr %hi.addr, align 8, !dbg !7212
  %35 = load ptr, ptr %usage.addr, align 8, !dbg !7212
  %36 = load ptr, ptr %bit.addr, align 8, !dbg !7212
  %37 = load ptr, ptr %max.addr, align 8, !dbg !7212
  call void @hid_map_usage_clear(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, i8 noundef zeroext 1, i16 noundef zeroext 405) #17, !dbg !7212
  br label %sw.epilog, !dbg !7213

sw.bb10:                                          ; preds = %if.end
  %38 = load ptr, ptr %hi.addr, align 8, !dbg !7214
  %39 = load ptr, ptr %usage.addr, align 8, !dbg !7214
  %40 = load ptr, ptr %bit.addr, align 8, !dbg !7214
  %41 = load ptr, ptr %max.addr, align 8, !dbg !7214
  call void @hid_map_usage_clear(ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41, i8 noundef zeroext 1, i16 noundef zeroext 391) #17, !dbg !7214
  br label %sw.epilog, !dbg !7215

sw.bb11:                                          ; preds = %if.end
  %42 = load ptr, ptr %hi.addr, align 8, !dbg !7216
  %43 = load ptr, ptr %usage.addr, align 8, !dbg !7216
  %44 = load ptr, ptr %bit.addr, align 8, !dbg !7216
  %45 = load ptr, ptr %max.addr, align 8, !dbg !7216
  call void @hid_map_usage_clear(ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext 389) #17, !dbg !7216
  br label %sw.epilog, !dbg !7217

sw.bb12:                                          ; preds = %if.end
  %46 = load ptr, ptr %hi.addr, align 8, !dbg !7218
  %47 = load ptr, ptr %usage.addr, align 8, !dbg !7218
  %48 = load ptr, ptr %bit.addr, align 8, !dbg !7218
  %49 = load ptr, ptr %max.addr, align 8, !dbg !7218
  call void @hid_map_usage_clear(ptr noundef %46, ptr noundef %47, ptr noundef %48, ptr noundef %49, i8 noundef zeroext 1, i16 noundef zeroext 226) #17, !dbg !7218
  br label %sw.epilog, !dbg !7219

sw.bb13:                                          ; preds = %if.end
  %50 = load ptr, ptr %hi.addr, align 8, !dbg !7220
  %51 = load ptr, ptr %usage.addr, align 8, !dbg !7220
  %52 = load ptr, ptr %bit.addr, align 8, !dbg !7220
  %53 = load ptr, ptr %max.addr, align 8, !dbg !7220
  call void @hid_map_usage_clear(ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, i8 noundef zeroext 1, i16 noundef zeroext 393) #17, !dbg !7220
  br label %sw.epilog, !dbg !7221

sw.bb14:                                          ; preds = %if.end
  %54 = load ptr, ptr %hi.addr, align 8, !dbg !7222
  %55 = load ptr, ptr %usage.addr, align 8, !dbg !7222
  %56 = load ptr, ptr %bit.addr, align 8, !dbg !7222
  %57 = load ptr, ptr %max.addr, align 8, !dbg !7222
  call void @hid_map_usage_clear(ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57, i8 noundef zeroext 1, i16 noundef zeroext 371) #17, !dbg !7222
  br label %sw.epilog, !dbg !7223

sw.bb15:                                          ; preds = %if.end
  %58 = load ptr, ptr %hi.addr, align 8, !dbg !7224
  %59 = load ptr, ptr %usage.addr, align 8, !dbg !7224
  %60 = load ptr, ptr %bit.addr, align 8, !dbg !7224
  %61 = load ptr, ptr %max.addr, align 8, !dbg !7224
  call void @hid_map_usage_clear(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, i8 noundef zeroext 1, i16 noundef zeroext 368) #17, !dbg !7224
  br label %sw.epilog, !dbg !7225

sw.bb16:                                          ; preds = %if.end
  %62 = load ptr, ptr %hi.addr, align 8, !dbg !7226
  %63 = load ptr, ptr %usage.addr, align 8, !dbg !7226
  %64 = load ptr, ptr %bit.addr, align 8, !dbg !7226
  %65 = load ptr, ptr %max.addr, align 8, !dbg !7226
  call void @hid_map_usage_clear(ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, i8 noundef zeroext 1, i16 noundef zeroext 370) #17, !dbg !7226
  br label %sw.epilog, !dbg !7227

sw.bb17:                                          ; preds = %if.end
  %66 = load ptr, ptr %hi.addr, align 8, !dbg !7228
  %67 = load ptr, ptr %usage.addr, align 8, !dbg !7228
  %68 = load ptr, ptr %bit.addr, align 8, !dbg !7228
  %69 = load ptr, ptr %max.addr, align 8, !dbg !7228
  call void @hid_map_usage_clear(ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %69, i8 noundef zeroext 1, i16 noundef zeroext 398) #17, !dbg !7228
  br label %sw.epilog, !dbg !7229

sw.bb18:                                          ; preds = %if.end
  %70 = load ptr, ptr %hi.addr, align 8, !dbg !7230
  %71 = load ptr, ptr %usage.addr, align 8, !dbg !7230
  %72 = load ptr, ptr %bit.addr, align 8, !dbg !7230
  %73 = load ptr, ptr %max.addr, align 8, !dbg !7230
  call void @hid_map_usage_clear(ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73, i8 noundef zeroext 1, i16 noundef zeroext 206) #17, !dbg !7230
  br label %sw.epilog, !dbg !7231

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7232
  br label %return, !dbg !7232

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  store i32 1, ptr %retval, align 4, !dbg !7233
  br label %return, !dbg !7233

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %74 = load i32, ptr %retval, align 4, !dbg !7234
  ret i32 %74, !dbg !7234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @lg_wireless_mapping(ptr noundef %hi, ptr noundef %usage, ptr noundef %bit, ptr noundef %max) #2 align 16 !dbg !7235 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %bit.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  store ptr %hi, ptr %hi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hi.addr, metadata !7237, metadata !DIExpression()), !dbg !7241
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !7238, metadata !DIExpression()), !dbg !7242
  store ptr %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !7239, metadata !DIExpression()), !dbg !7243
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !7240, metadata !DIExpression()), !dbg !7244
  %0 = load ptr, ptr %usage.addr, align 8, !dbg !7245
  %hid = getelementptr inbounds %struct.hid_usage, ptr %0, i32 0, i32 0, !dbg !7247
  %1 = load i32, ptr %hid, align 4, !dbg !7247
  %and = and i32 %1, -65536, !dbg !7248
  %cmp = icmp ne i32 %and, 786432, !dbg !7249
  br i1 %cmp, label %if.then, label %if.end, !dbg !7250

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7251
  br label %return, !dbg !7251

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %usage.addr, align 8, !dbg !7252
  %hid1 = getelementptr inbounds %struct.hid_usage, ptr %2, i32 0, i32 0, !dbg !7253
  %3 = load i32, ptr %hid1, align 4, !dbg !7253
  %and2 = and i32 %3, 65535, !dbg !7254
  switch i32 %and2, label %sw.default [
    i32 4097, label %sw.bb
    i32 4099, label %sw.bb3
    i32 4100, label %sw.bb4
    i32 4101, label %sw.bb5
    i32 4106, label %sw.bb6
    i32 4111, label %sw.bb7
    i32 4112, label %sw.bb8
    i32 4113, label %sw.bb9
    i32 4114, label %sw.bb10
    i32 4115, label %sw.bb11
    i32 4116, label %sw.bb12
    i32 4117, label %sw.bb13
    i32 4118, label %sw.bb14
    i32 4119, label %sw.bb15
    i32 4120, label %sw.bb16
    i32 4121, label %sw.bb17
    i32 4122, label %sw.bb18
    i32 4123, label %sw.bb19
    i32 4124, label %sw.bb20
    i32 4127, label %sw.bb21
    i32 4128, label %sw.bb22
    i32 4129, label %sw.bb23
    i32 4131, label %sw.bb24
    i32 4135, label %sw.bb25
    i32 4136, label %sw.bb26
    i32 4137, label %sw.bb27
    i32 4138, label %sw.bb28
    i32 4139, label %sw.bb29
    i32 4141, label %sw.bb30
    i32 4145, label %sw.bb31
    i32 4146, label %sw.bb32
    i32 4161, label %sw.bb33
    i32 4162, label %sw.bb34
    i32 4163, label %sw.bb35
    i32 4164, label %sw.bb36
    i32 4165, label %sw.bb37
    i32 4166, label %sw.bb38
    i32 4167, label %sw.bb39
    i32 4168, label %sw.bb40
    i32 4169, label %sw.bb41
    i32 4170, label %sw.bb42
    i32 4171, label %sw.bb43
    i32 4172, label %sw.bb44
  ], !dbg !7255

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %hi.addr, align 8, !dbg !7256
  %5 = load ptr, ptr %usage.addr, align 8, !dbg !7256
  %6 = load ptr, ptr %bit.addr, align 8, !dbg !7256
  %7 = load ptr, ptr %max.addr, align 8, !dbg !7256
  call void @hid_map_usage_clear(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef zeroext 1, i16 noundef zeroext 430) #17, !dbg !7256
  br label %sw.epilog, !dbg !7258

sw.bb3:                                           ; preds = %if.end
  %8 = load ptr, ptr %hi.addr, align 8, !dbg !7259
  %9 = load ptr, ptr %usage.addr, align 8, !dbg !7259
  %10 = load ptr, ptr %bit.addr, align 8, !dbg !7259
  %11 = load ptr, ptr %max.addr, align 8, !dbg !7259
  call void @hid_map_usage_clear(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i8 noundef zeroext 1, i16 noundef zeroext 213) #17, !dbg !7259
  br label %sw.epilog, !dbg !7260

sw.bb4:                                           ; preds = %if.end
  %12 = load ptr, ptr %hi.addr, align 8, !dbg !7261
  %13 = load ptr, ptr %usage.addr, align 8, !dbg !7261
  %14 = load ptr, ptr %bit.addr, align 8, !dbg !7261
  %15 = load ptr, ptr %max.addr, align 8, !dbg !7261
  call void @hid_map_usage_clear(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i8 noundef zeroext 1, i16 noundef zeroext 393) #17, !dbg !7261
  br label %sw.epilog, !dbg !7262

sw.bb5:                                           ; preds = %if.end
  %16 = load ptr, ptr %hi.addr, align 8, !dbg !7263
  %17 = load ptr, ptr %usage.addr, align 8, !dbg !7263
  %18 = load ptr, ptr %bit.addr, align 8, !dbg !7263
  %19 = load ptr, ptr %max.addr, align 8, !dbg !7263
  call void @hid_map_usage_clear(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, i8 noundef zeroext 1, i16 noundef zeroext 392) #17, !dbg !7263
  br label %sw.epilog, !dbg !7264

sw.bb6:                                           ; preds = %if.end
  %20 = load ptr, ptr %hi.addr, align 8, !dbg !7265
  %21 = load ptr, ptr %usage.addr, align 8, !dbg !7265
  %22 = load ptr, ptr %bit.addr, align 8, !dbg !7265
  %23 = load ptr, ptr %max.addr, align 8, !dbg !7265
  call void @hid_map_usage_clear(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i8 noundef zeroext 1, i16 noundef zeroext 235) #17, !dbg !7265
  br label %sw.epilog, !dbg !7266

sw.bb7:                                           ; preds = %if.end
  %24 = load ptr, ptr %hi.addr, align 8, !dbg !7267
  %25 = load ptr, ptr %usage.addr, align 8, !dbg !7267
  %26 = load ptr, ptr %bit.addr, align 8, !dbg !7267
  %27 = load ptr, ptr %max.addr, align 8, !dbg !7267
  call void @hid_map_usage_clear(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, i8 noundef zeroext 1, i16 noundef zeroext 478) #17, !dbg !7267
  br label %sw.epilog, !dbg !7268

sw.bb8:                                           ; preds = %if.end
  %28 = load ptr, ptr %hi.addr, align 8, !dbg !7269
  %29 = load ptr, ptr %usage.addr, align 8, !dbg !7269
  %30 = load ptr, ptr %bit.addr, align 8, !dbg !7269
  %31 = load ptr, ptr %max.addr, align 8, !dbg !7269
  call void @hid_map_usage_clear(ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, i8 noundef zeroext 1, i16 noundef zeroext 479) #17, !dbg !7269
  br label %sw.epilog, !dbg !7270

sw.bb9:                                           ; preds = %if.end
  %32 = load ptr, ptr %hi.addr, align 8, !dbg !7271
  %33 = load ptr, ptr %usage.addr, align 8, !dbg !7271
  %34 = load ptr, ptr %bit.addr, align 8, !dbg !7271
  %35 = load ptr, ptr %max.addr, align 8, !dbg !7271
  call void @hid_map_usage_clear(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, i8 noundef zeroext 1, i16 noundef zeroext 165) #17, !dbg !7271
  br label %sw.epilog, !dbg !7272

sw.bb10:                                          ; preds = %if.end
  %36 = load ptr, ptr %hi.addr, align 8, !dbg !7273
  %37 = load ptr, ptr %usage.addr, align 8, !dbg !7273
  %38 = load ptr, ptr %bit.addr, align 8, !dbg !7273
  %39 = load ptr, ptr %max.addr, align 8, !dbg !7273
  call void @hid_map_usage_clear(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, i8 noundef zeroext 1, i16 noundef zeroext 163) #17, !dbg !7273
  br label %sw.epilog, !dbg !7274

sw.bb11:                                          ; preds = %if.end
  %40 = load ptr, ptr %hi.addr, align 8, !dbg !7275
  %41 = load ptr, ptr %usage.addr, align 8, !dbg !7275
  %42 = load ptr, ptr %bit.addr, align 8, !dbg !7275
  %43 = load ptr, ptr %max.addr, align 8, !dbg !7275
  call void @hid_map_usage_clear(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, i8 noundef zeroext 1, i16 noundef zeroext 212) #17, !dbg !7275
  br label %sw.epilog, !dbg !7276

sw.bb12:                                          ; preds = %if.end
  %44 = load ptr, ptr %hi.addr, align 8, !dbg !7277
  %45 = load ptr, ptr %usage.addr, align 8, !dbg !7277
  %46 = load ptr, ptr %bit.addr, align 8, !dbg !7277
  %47 = load ptr, ptr %max.addr, align 8, !dbg !7277
  call void @hid_map_usage_clear(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, i8 noundef zeroext 1, i16 noundef zeroext 430) #17, !dbg !7277
  br label %sw.epilog, !dbg !7278

sw.bb13:                                          ; preds = %if.end
  %48 = load ptr, ptr %hi.addr, align 8, !dbg !7279
  %49 = load ptr, ptr %usage.addr, align 8, !dbg !7279
  %50 = load ptr, ptr %bit.addr, align 8, !dbg !7279
  %51 = load ptr, ptr %max.addr, align 8, !dbg !7279
  call void @hid_map_usage_clear(ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, i8 noundef zeroext 1, i16 noundef zeroext 167) #17, !dbg !7279
  br label %sw.epilog, !dbg !7280

sw.bb14:                                          ; preds = %if.end
  %52 = load ptr, ptr %hi.addr, align 8, !dbg !7281
  %53 = load ptr, ptr %usage.addr, align 8, !dbg !7281
  %54 = load ptr, ptr %bit.addr, align 8, !dbg !7281
  %55 = load ptr, ptr %max.addr, align 8, !dbg !7281
  call void @hid_map_usage_clear(ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, i8 noundef zeroext 1, i16 noundef zeroext 387) #17, !dbg !7281
  br label %sw.epilog, !dbg !7282

sw.bb15:                                          ; preds = %if.end
  %56 = load ptr, ptr %hi.addr, align 8, !dbg !7283
  %57 = load ptr, ptr %usage.addr, align 8, !dbg !7283
  %58 = load ptr, ptr %bit.addr, align 8, !dbg !7283
  %59 = load ptr, ptr %max.addr, align 8, !dbg !7283
  call void @hid_map_usage_clear(ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59, i8 noundef zeroext 1, i16 noundef zeroext 161) #17, !dbg !7283
  br label %sw.epilog, !dbg !7284

sw.bb16:                                          ; preds = %if.end
  %60 = load ptr, ptr %hi.addr, align 8, !dbg !7285
  %61 = load ptr, ptr %usage.addr, align 8, !dbg !7285
  %62 = load ptr, ptr %bit.addr, align 8, !dbg !7285
  %63 = load ptr, ptr %max.addr, align 8, !dbg !7285
  call void @hid_map_usage_clear(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, i8 noundef zeroext 1, i16 noundef zeroext 226) #17, !dbg !7285
  br label %sw.epilog, !dbg !7286

sw.bb17:                                          ; preds = %if.end
  %64 = load ptr, ptr %hi.addr, align 8, !dbg !7287
  %65 = load ptr, ptr %usage.addr, align 8, !dbg !7287
  %66 = load ptr, ptr %bit.addr, align 8, !dbg !7287
  %67 = load ptr, ptr %max.addr, align 8, !dbg !7287
  call void @hid_map_usage_clear(ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, i8 noundef zeroext 1, i16 noundef zeroext 148) #17, !dbg !7287
  br label %sw.epilog, !dbg !7288

sw.bb18:                                          ; preds = %if.end
  %68 = load ptr, ptr %hi.addr, align 8, !dbg !7289
  %69 = load ptr, ptr %usage.addr, align 8, !dbg !7289
  %70 = load ptr, ptr %bit.addr, align 8, !dbg !7289
  %71 = load ptr, ptr %max.addr, align 8, !dbg !7289
  call void @hid_map_usage_clear(ptr noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71, i8 noundef zeroext 1, i16 noundef zeroext 149) #17, !dbg !7289
  br label %sw.epilog, !dbg !7290

sw.bb19:                                          ; preds = %if.end
  %72 = load ptr, ptr %hi.addr, align 8, !dbg !7291
  %73 = load ptr, ptr %usage.addr, align 8, !dbg !7291
  %74 = load ptr, ptr %bit.addr, align 8, !dbg !7291
  %75 = load ptr, ptr %max.addr, align 8, !dbg !7291
  call void @hid_map_usage_clear(ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75, i8 noundef zeroext 1, i16 noundef zeroext 202) #17, !dbg !7291
  br label %sw.epilog, !dbg !7292

sw.bb20:                                          ; preds = %if.end
  %76 = load ptr, ptr %hi.addr, align 8, !dbg !7293
  %77 = load ptr, ptr %usage.addr, align 8, !dbg !7293
  %78 = load ptr, ptr %bit.addr, align 8, !dbg !7293
  %79 = load ptr, ptr %max.addr, align 8, !dbg !7293
  call void @hid_map_usage_clear(ptr noundef %76, ptr noundef %77, ptr noundef %78, ptr noundef %79, i8 noundef zeroext 1, i16 noundef zeroext 154) #17, !dbg !7293
  br label %sw.epilog, !dbg !7294

sw.bb21:                                          ; preds = %if.end
  %80 = load ptr, ptr %hi.addr, align 8, !dbg !7295
  %81 = load ptr, ptr %usage.addr, align 8, !dbg !7295
  %82 = load ptr, ptr %bit.addr, align 8, !dbg !7295
  %83 = load ptr, ptr %max.addr, align 8, !dbg !7295
  call void @hid_map_usage_clear(ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, i8 noundef zeroext 1, i16 noundef zeroext 418) #17, !dbg !7295
  br label %sw.epilog, !dbg !7296

sw.bb22:                                          ; preds = %if.end
  %84 = load ptr, ptr %hi.addr, align 8, !dbg !7297
  %85 = load ptr, ptr %usage.addr, align 8, !dbg !7297
  %86 = load ptr, ptr %bit.addr, align 8, !dbg !7297
  %87 = load ptr, ptr %max.addr, align 8, !dbg !7297
  call void @hid_map_usage_clear(ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87, i8 noundef zeroext 1, i16 noundef zeroext 419) #17, !dbg !7297
  br label %sw.epilog, !dbg !7298

sw.bb23:                                          ; preds = %if.end
  %88 = load ptr, ptr %hi.addr, align 8, !dbg !7299
  %89 = load ptr, ptr %usage.addr, align 8, !dbg !7299
  %90 = load ptr, ptr %bit.addr, align 8, !dbg !7299
  %91 = load ptr, ptr %max.addr, align 8, !dbg !7299
  call void @hid_map_usage_clear(ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %91, i8 noundef zeroext 1, i16 noundef zeroext 420) #17, !dbg !7299
  br label %sw.epilog, !dbg !7300

sw.bb24:                                          ; preds = %if.end
  %92 = load ptr, ptr %hi.addr, align 8, !dbg !7301
  %93 = load ptr, ptr %usage.addr, align 8, !dbg !7301
  %94 = load ptr, ptr %bit.addr, align 8, !dbg !7301
  %95 = load ptr, ptr %max.addr, align 8, !dbg !7301
  call void @hid_map_usage_clear(ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95, i8 noundef zeroext 1, i16 noundef zeroext 206) #17, !dbg !7301
  br label %sw.epilog, !dbg !7302

sw.bb25:                                          ; preds = %if.end
  %96 = load ptr, ptr %hi.addr, align 8, !dbg !7303
  %97 = load ptr, ptr %usage.addr, align 8, !dbg !7303
  %98 = load ptr, ptr %bit.addr, align 8, !dbg !7303
  %99 = load ptr, ptr %max.addr, align 8, !dbg !7303
  call void @hid_map_usage_clear(ptr noundef %96, ptr noundef %97, ptr noundef %98, ptr noundef %99, i8 noundef zeroext 1, i16 noundef zeroext 139) #17, !dbg !7303
  br label %sw.epilog, !dbg !7304

sw.bb26:                                          ; preds = %if.end
  %100 = load ptr, ptr %hi.addr, align 8, !dbg !7305
  %101 = load ptr, ptr %usage.addr, align 8, !dbg !7305
  %102 = load ptr, ptr %bit.addr, align 8, !dbg !7305
  %103 = load ptr, ptr %max.addr, align 8, !dbg !7305
  call void @hid_map_usage_clear(ptr noundef %100, ptr noundef %101, ptr noundef %102, ptr noundef %103, i8 noundef zeroext 1, i16 noundef zeroext 371) #17, !dbg !7305
  br label %sw.epilog, !dbg !7306

sw.bb27:                                          ; preds = %if.end
  %104 = load ptr, ptr %hi.addr, align 8, !dbg !7307
  %105 = load ptr, ptr %usage.addr, align 8, !dbg !7307
  %106 = load ptr, ptr %bit.addr, align 8, !dbg !7307
  %107 = load ptr, ptr %max.addr, align 8, !dbg !7307
  call void @hid_map_usage_clear(ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107, i8 noundef zeroext 1, i16 noundef zeroext 410) #17, !dbg !7307
  br label %sw.epilog, !dbg !7308

sw.bb28:                                          ; preds = %if.end
  %108 = load ptr, ptr %hi.addr, align 8, !dbg !7309
  %109 = load ptr, ptr %usage.addr, align 8, !dbg !7309
  %110 = load ptr, ptr %bit.addr, align 8, !dbg !7309
  %111 = load ptr, ptr %max.addr, align 8, !dbg !7309
  call void @hid_map_usage_clear(ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, i8 noundef zeroext 1, i16 noundef zeroext 158) #17, !dbg !7309
  br label %sw.epilog, !dbg !7310

sw.bb29:                                          ; preds = %if.end
  %112 = load ptr, ptr %hi.addr, align 8, !dbg !7311
  %113 = load ptr, ptr %usage.addr, align 8, !dbg !7311
  %114 = load ptr, ptr %bit.addr, align 8, !dbg !7311
  %115 = load ptr, ptr %max.addr, align 8, !dbg !7311
  call void @hid_map_usage_clear(ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115, i8 noundef zeroext 1, i16 noundef zeroext 154) #17, !dbg !7311
  br label %sw.epilog, !dbg !7312

sw.bb30:                                          ; preds = %if.end
  %116 = load ptr, ptr %hi.addr, align 8, !dbg !7313
  %117 = load ptr, ptr %usage.addr, align 8, !dbg !7313
  %118 = load ptr, ptr %bit.addr, align 8, !dbg !7313
  %119 = load ptr, ptr %max.addr, align 8, !dbg !7313
  call void @hid_map_usage_clear(ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %119, i8 noundef zeroext 1, i16 noundef zeroext 150) #17, !dbg !7313
  br label %sw.epilog, !dbg !7314

sw.bb31:                                          ; preds = %if.end
  %120 = load ptr, ptr %hi.addr, align 8, !dbg !7315
  %121 = load ptr, ptr %usage.addr, align 8, !dbg !7315
  %122 = load ptr, ptr %bit.addr, align 8, !dbg !7315
  %123 = load ptr, ptr %max.addr, align 8, !dbg !7315
  call void @hid_map_usage_clear(ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, i8 noundef zeroext 1, i16 noundef zeroext 352) #17, !dbg !7315
  br label %sw.epilog, !dbg !7316

sw.bb32:                                          ; preds = %if.end
  %124 = load ptr, ptr %hi.addr, align 8, !dbg !7317
  %125 = load ptr, ptr %usage.addr, align 8, !dbg !7317
  %126 = load ptr, ptr %bit.addr, align 8, !dbg !7317
  %127 = load ptr, ptr %max.addr, align 8, !dbg !7317
  call void @hid_map_usage_clear(ptr noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127, i8 noundef zeroext 1, i16 noundef zeroext 223) #17, !dbg !7317
  br label %sw.epilog, !dbg !7318

sw.bb33:                                          ; preds = %if.end
  %128 = load ptr, ptr %hi.addr, align 8, !dbg !7319
  %129 = load ptr, ptr %usage.addr, align 8, !dbg !7319
  %130 = load ptr, ptr %bit.addr, align 8, !dbg !7319
  %131 = load ptr, ptr %max.addr, align 8, !dbg !7319
  call void @hid_map_usage_clear(ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131, i8 noundef zeroext 1, i16 noundef zeroext 236) #17, !dbg !7319
  br label %sw.epilog, !dbg !7320

sw.bb34:                                          ; preds = %if.end
  %132 = load ptr, ptr %hi.addr, align 8, !dbg !7321
  %133 = load ptr, ptr %usage.addr, align 8, !dbg !7321
  %134 = load ptr, ptr %bit.addr, align 8, !dbg !7321
  %135 = load ptr, ptr %max.addr, align 8, !dbg !7321
  call void @hid_map_usage_clear(ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, i8 noundef zeroext 1, i16 noundef zeroext 421) #17, !dbg !7321
  br label %sw.epilog, !dbg !7322

sw.bb35:                                          ; preds = %if.end
  %136 = load ptr, ptr %hi.addr, align 8, !dbg !7323
  %137 = load ptr, ptr %usage.addr, align 8, !dbg !7323
  %138 = load ptr, ptr %bit.addr, align 8, !dbg !7323
  %139 = load ptr, ptr %max.addr, align 8, !dbg !7323
  call void @hid_map_usage_clear(ptr noundef %136, ptr noundef %137, ptr noundef %138, ptr noundef %139, i8 noundef zeroext 1, i16 noundef zeroext 423) #17, !dbg !7323
  br label %sw.epilog, !dbg !7324

sw.bb36:                                          ; preds = %if.end
  %140 = load ptr, ptr %hi.addr, align 8, !dbg !7325
  %141 = load ptr, ptr %usage.addr, align 8, !dbg !7325
  %142 = load ptr, ptr %bit.addr, align 8, !dbg !7325
  %143 = load ptr, ptr %max.addr, align 8, !dbg !7325
  call void @hid_map_usage_clear(ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, i8 noundef zeroext 1, i16 noundef zeroext 425) #17, !dbg !7325
  br label %sw.epilog, !dbg !7326

sw.bb37:                                          ; preds = %if.end
  %144 = load ptr, ptr %hi.addr, align 8, !dbg !7327
  %145 = load ptr, ptr %usage.addr, align 8, !dbg !7327
  %146 = load ptr, ptr %bit.addr, align 8, !dbg !7327
  %147 = load ptr, ptr %max.addr, align 8, !dbg !7327
  call void @hid_map_usage_clear(ptr noundef %144, ptr noundef %145, ptr noundef %146, ptr noundef %147, i8 noundef zeroext 1, i16 noundef zeroext 131) #17, !dbg !7327
  br label %sw.epilog, !dbg !7328

sw.bb38:                                          ; preds = %if.end
  %148 = load ptr, ptr %hi.addr, align 8, !dbg !7329
  %149 = load ptr, ptr %usage.addr, align 8, !dbg !7329
  %150 = load ptr, ptr %bit.addr, align 8, !dbg !7329
  %151 = load ptr, ptr %max.addr, align 8, !dbg !7329
  call void @hid_map_usage_clear(ptr noundef %148, ptr noundef %149, ptr noundef %150, ptr noundef %151, i8 noundef zeroext 1, i16 noundef zeroext 182) #17, !dbg !7329
  br label %sw.epilog, !dbg !7330

sw.bb39:                                          ; preds = %if.end
  %152 = load ptr, ptr %hi.addr, align 8, !dbg !7331
  %153 = load ptr, ptr %usage.addr, align 8, !dbg !7331
  %154 = load ptr, ptr %bit.addr, align 8, !dbg !7331
  %155 = load ptr, ptr %max.addr, align 8, !dbg !7331
  call void @hid_map_usage_clear(ptr noundef %152, ptr noundef %153, ptr noundef %154, ptr noundef %155, i8 noundef zeroext 1, i16 noundef zeroext 210) #17, !dbg !7331
  br label %sw.epilog, !dbg !7332

sw.bb40:                                          ; preds = %if.end
  %156 = load ptr, ptr %hi.addr, align 8, !dbg !7333
  %157 = load ptr, ptr %usage.addr, align 8, !dbg !7333
  %158 = load ptr, ptr %bit.addr, align 8, !dbg !7333
  %159 = load ptr, ptr %max.addr, align 8, !dbg !7333
  call void @hid_map_usage_clear(ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159, i8 noundef zeroext 1, i16 noundef zeroext 234) #17, !dbg !7333
  br label %sw.epilog, !dbg !7334

sw.bb41:                                          ; preds = %if.end
  %160 = load ptr, ptr %hi.addr, align 8, !dbg !7335
  %161 = load ptr, ptr %usage.addr, align 8, !dbg !7335
  %162 = load ptr, ptr %bit.addr, align 8, !dbg !7335
  %163 = load ptr, ptr %max.addr, align 8, !dbg !7335
  call void @hid_map_usage_clear(ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, i8 noundef zeroext 1, i16 noundef zeroext 148) #17, !dbg !7335
  br label %sw.epilog, !dbg !7336

sw.bb42:                                          ; preds = %if.end
  %164 = load ptr, ptr %hi.addr, align 8, !dbg !7337
  %165 = load ptr, ptr %usage.addr, align 8, !dbg !7337
  %166 = load ptr, ptr %bit.addr, align 8, !dbg !7337
  %167 = load ptr, ptr %max.addr, align 8, !dbg !7337
  call void @hid_map_usage_clear(ptr noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, i8 noundef zeroext 1, i16 noundef zeroext 149) #17, !dbg !7337
  br label %sw.epilog, !dbg !7338

sw.bb43:                                          ; preds = %if.end
  %168 = load ptr, ptr %hi.addr, align 8, !dbg !7339
  %169 = load ptr, ptr %usage.addr, align 8, !dbg !7339
  %170 = load ptr, ptr %bit.addr, align 8, !dbg !7339
  %171 = load ptr, ptr %max.addr, align 8, !dbg !7339
  call void @hid_map_usage_clear(ptr noundef %168, ptr noundef %169, ptr noundef %170, ptr noundef %171, i8 noundef zeroext 1, i16 noundef zeroext 202) #17, !dbg !7339
  br label %sw.epilog, !dbg !7340

sw.bb44:                                          ; preds = %if.end
  %172 = load ptr, ptr %hi.addr, align 8, !dbg !7341
  %173 = load ptr, ptr %usage.addr, align 8, !dbg !7341
  %174 = load ptr, ptr %bit.addr, align 8, !dbg !7341
  %175 = load ptr, ptr %max.addr, align 8, !dbg !7341
  call void @hid_map_usage_clear(ptr noundef %172, ptr noundef %173, ptr noundef %174, ptr noundef %175, i8 noundef zeroext 1, i16 noundef zeroext 203) #17, !dbg !7341
  br label %sw.epilog, !dbg !7342

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7343
  br label %return, !dbg !7343

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  store i32 1, ptr %retval, align 4, !dbg !7344
  br label %return, !dbg !7344

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %176 = load i32, ptr %retval, align 4, !dbg !7345
  ret i32 %176, !dbg !7345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hid_map_usage(ptr noundef %hidinput, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i8 noundef zeroext %type, i32 noundef %c) #7 align 16 !dbg !6018 {
entry:
  %hidinput.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %bit.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %type.addr = alloca i8, align 1
  %c.addr = alloca i32, align 4
  %input = alloca ptr, align 8
  %bmap = alloca ptr, align 8
  %limit = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hidinput, ptr %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hidinput.addr, metadata !6022, metadata !DIExpression()), !dbg !7346
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !6023, metadata !DIExpression()), !dbg !7347
  store ptr %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !6024, metadata !DIExpression()), !dbg !7348
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6025, metadata !DIExpression()), !dbg !7349
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6026, metadata !DIExpression()), !dbg !7350
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !6027, metadata !DIExpression()), !dbg !7351
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #18, !dbg !7352
  call void @llvm.dbg.declare(metadata ptr %input, metadata !6028, metadata !DIExpression()), !dbg !7353
  %0 = load ptr, ptr %hidinput.addr, align 8, !dbg !7354
  %input1 = getelementptr inbounds %struct.hid_input, ptr %0, i32 0, i32 2, !dbg !7355
  %1 = load ptr, ptr %input1, align 8, !dbg !7355
  store ptr %1, ptr %input, align 8, !dbg !7353
  call void @llvm.lifetime.start.p0(i64 8, ptr %bmap) #18, !dbg !7356
  call void @llvm.dbg.declare(metadata ptr %bmap, metadata !6029, metadata !DIExpression()), !dbg !7357
  store ptr null, ptr %bmap, align 8, !dbg !7357
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #18, !dbg !7358
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !6030, metadata !DIExpression()), !dbg !7359
  store i32 0, ptr %limit, align 4, !dbg !7359
  %2 = load i8, ptr %type.addr, align 1, !dbg !7360
  %conv = zext i8 %2 to i32, !dbg !7360
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
    i32 17, label %sw.bb6
    i32 4, label %sw.bb8
  ], !dbg !7361

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %input, align 8, !dbg !7362
  %absbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 8, !dbg !7364
  %arraydecay = getelementptr inbounds [1 x i64], ptr %absbit, i64 0, i64 0, !dbg !7362
  store ptr %arraydecay, ptr %bmap, align 8, !dbg !7365
  store i32 63, ptr %limit, align 4, !dbg !7366
  br label %sw.epilog, !dbg !7367

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %input, align 8, !dbg !7368
  %relbit = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 7, !dbg !7369
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %relbit, i64 0, i64 0, !dbg !7368
  store ptr %arraydecay3, ptr %bmap, align 8, !dbg !7370
  store i32 15, ptr %limit, align 4, !dbg !7371
  br label %sw.epilog, !dbg !7372

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %input, align 8, !dbg !7373
  %keybit = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6, !dbg !7374
  %arraydecay5 = getelementptr inbounds [12 x i64], ptr %keybit, i64 0, i64 0, !dbg !7373
  store ptr %arraydecay5, ptr %bmap, align 8, !dbg !7375
  store i32 767, ptr %limit, align 4, !dbg !7376
  br label %sw.epilog, !dbg !7377

sw.bb6:                                           ; preds = %entry
  %6 = load ptr, ptr %input, align 8, !dbg !7378
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 10, !dbg !7379
  %arraydecay7 = getelementptr inbounds [1 x i64], ptr %ledbit, i64 0, i64 0, !dbg !7378
  store ptr %arraydecay7, ptr %bmap, align 8, !dbg !7380
  store i32 15, ptr %limit, align 4, !dbg !7381
  br label %sw.epilog, !dbg !7382

sw.bb8:                                           ; preds = %entry
  %7 = load ptr, ptr %input, align 8, !dbg !7383
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 9, !dbg !7384
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %mscbit, i64 0, i64 0, !dbg !7383
  store ptr %arraydecay9, ptr %bmap, align 8, !dbg !7385
  store i32 7, ptr %limit, align 4, !dbg !7386
  br label %sw.epilog, !dbg !7387

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %8 = load i32, ptr %c.addr, align 4, !dbg !7388
  %9 = load i32, ptr %limit, align 4, !dbg !7388
  %cmp = icmp ugt i32 %8, %9, !dbg !7388
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7388

lor.rhs:                                          ; preds = %sw.epilog
  %10 = load ptr, ptr %bmap, align 8, !dbg !7388
  %tobool = icmp ne ptr %10, null, !dbg !7388
  %lnot = xor i1 %tobool, true, !dbg !7388
  br label %lor.end, !dbg !7388

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %11 = phi i1 [ true, %sw.epilog ], [ %lnot, %lor.rhs ]
  %lnot11 = xor i1 %11, true, !dbg !7388
  %lnot12 = xor i1 %lnot11, true, !dbg !7388
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !7388
  %conv13 = sext i32 %lnot.ext to i64, !dbg !7388
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !7388
  %tobool14 = icmp ne i64 %expval, 0, !dbg !7388
  br i1 %tobool14, label %if.then, label %if.end19, !dbg !7390

if.then:                                          ; preds = %lor.end
  %call = call i32 @___ratelimit(ptr noundef @hid_map_usage._rs, ptr noundef @__func__.hid_map_usage) #17, !dbg !7391
  %tobool15 = icmp ne i32 %call, 0, !dbg !7391
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !7395

if.then16:                                        ; preds = %if.then
  br label %do.body, !dbg !7396

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !7398

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7398

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %input, align 8, !dbg !7396
  %name = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 0, !dbg !7396
  %13 = load ptr, ptr %name, align 8, !dbg !7396
  %14 = load i32, ptr %c.addr, align 4, !dbg !7396
  %15 = load i8, ptr %type.addr, align 1, !dbg !7396
  %conv17 = zext i8 %15 to i32, !dbg !7396
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.18, ptr noundef %13, i32 noundef %14, i32 noundef %conv17) #16, !dbg !7396
  store i32 %call18, ptr %tmp, align 4, !dbg !7398
  %16 = load i32, ptr %tmp, align 4, !dbg !7396
  br label %if.end, !dbg !7391

if.end:                                           ; preds = %do.end, %if.then
  %17 = load ptr, ptr %bit.addr, align 8, !dbg !7400
  store ptr null, ptr %17, align 8, !dbg !7401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7402

if.end19:                                         ; preds = %lor.end
  %18 = load i8, ptr %type.addr, align 1, !dbg !7403
  %19 = load ptr, ptr %usage.addr, align 8, !dbg !7404
  %type20 = getelementptr inbounds %struct.hid_usage, ptr %19, i32 0, i32 6, !dbg !7405
  store i8 %18, ptr %type20, align 4, !dbg !7406
  %20 = load i32, ptr %c.addr, align 4, !dbg !7407
  %conv21 = trunc i32 %20 to i16, !dbg !7407
  %21 = load ptr, ptr %usage.addr, align 8, !dbg !7408
  %code = getelementptr inbounds %struct.hid_usage, ptr %21, i32 0, i32 5, !dbg !7409
  store i16 %conv21, ptr %code, align 2, !dbg !7410
  %22 = load i32, ptr %limit, align 4, !dbg !7411
  %23 = load ptr, ptr %max.addr, align 8, !dbg !7412
  store i32 %22, ptr %23, align 4, !dbg !7413
  %24 = load ptr, ptr %bmap, align 8, !dbg !7414
  %25 = load ptr, ptr %bit.addr, align 8, !dbg !7415
  store ptr %24, ptr %25, align 8, !dbg !7416
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7417
  br label %cleanup, !dbg !7417

cleanup:                                          ; preds = %if.end19, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #18, !dbg !7417
  call void @llvm.lifetime.end.p0(i64 8, ptr %bmap) #18, !dbg !7417
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #18, !dbg !7417
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7417

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7418 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7425, metadata !DIExpression()), !dbg !7427
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7426, metadata !DIExpression()), !dbg !7428
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7429
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7430
  %div = sdiv i64 %1, 64, !dbg !7430
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7431
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7432
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7433
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7434
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7435
  ret void, !dbg !7436
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hid_map_usage_clear(ptr noundef %hidinput, ptr noundef %usage, ptr noundef %bit, ptr noundef %max, i8 noundef zeroext %type, i16 noundef zeroext %c) #7 align 16 !dbg !7437 {
entry:
  %hidinput.addr = alloca ptr, align 8
  %usage.addr = alloca ptr, align 8
  %bit.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %type.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store ptr %hidinput, ptr %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hidinput.addr, metadata !7441, metadata !DIExpression()), !dbg !7447
  store ptr %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !7442, metadata !DIExpression()), !dbg !7448
  store ptr %bit, ptr %bit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !7443, metadata !DIExpression()), !dbg !7449
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !7444, metadata !DIExpression()), !dbg !7450
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7445, metadata !DIExpression()), !dbg !7451
  store i16 %c, ptr %c.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !7446, metadata !DIExpression()), !dbg !7452
  %0 = load ptr, ptr %hidinput.addr, align 8, !dbg !7453
  %1 = load ptr, ptr %usage.addr, align 8, !dbg !7454
  %2 = load ptr, ptr %bit.addr, align 8, !dbg !7455
  %3 = load ptr, ptr %max.addr, align 8, !dbg !7456
  %4 = load i8, ptr %type.addr, align 1, !dbg !7457
  %5 = load i16, ptr %c.addr, align 2, !dbg !7458
  %conv = zext i16 %5 to i32, !dbg !7458
  call void @hid_map_usage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %conv) #17, !dbg !7459
  %6 = load ptr, ptr %bit.addr, align 8, !dbg !7460
  %7 = load ptr, ptr %6, align 8, !dbg !7462
  %tobool = icmp ne ptr %7, null, !dbg !7462
  br i1 %tobool, label %if.then, label %if.end, !dbg !7463

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %usage.addr, align 8, !dbg !7464
  %code = getelementptr inbounds %struct.hid_usage, ptr %8, i32 0, i32 5, !dbg !7465
  %9 = load i16, ptr %code, align 2, !dbg !7465
  %conv1 = zext i16 %9 to i64, !dbg !7464
  %10 = load ptr, ptr %bit.addr, align 8, !dbg !7466
  %11 = load ptr, ptr %10, align 8, !dbg !7467
  call void @clear_bit(i64 noundef %conv1, ptr noundef %11) #17, !dbg !7468
  br label %if.end, !dbg !7468

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !7469
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !7470 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7478, metadata !DIExpression()), !dbg !7480
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7479, metadata !DIExpression()), !dbg !7481
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7482
  %1 = load i64, ptr %size.addr, align 8, !dbg !7483
  %conv = trunc i64 %1 to i32, !dbg !7483
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !7484
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7485
  %3 = load i64, ptr %size.addr, align 8, !dbg !7485
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !7485
  ret void, !dbg !7486
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7487 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7490, metadata !DIExpression()), !dbg !7492
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7491, metadata !DIExpression()), !dbg !7493
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7494
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7496
  br i1 %1, label %if.then, label %if.else, !dbg !7497

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7498
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7498
  %shr = ashr i64 %3, 3, !dbg !7498
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7498
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7500
  %and = and i64 %4, 7, !dbg !7500
  %sh_prom = trunc i64 %and to i32, !dbg !7500
  %shl = shl i32 1, %sh_prom, !dbg !7500
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #18, !dbg !7501, !srcloc !7502
  br label %if.end, !dbg !7503

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7504
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7506
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !7507, !srcloc !7508
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7509
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !7510 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7515, metadata !DIExpression()), !dbg !7517
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7516, metadata !DIExpression()), !dbg !7518
  ret i1 true, !dbg !7519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !7520 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7525, metadata !DIExpression()), !dbg !7528
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7526, metadata !DIExpression()), !dbg !7529
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7527, metadata !DIExpression()), !dbg !7530
  ret void, !dbg !7531
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7532 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7534, metadata !DIExpression()), !dbg !7536
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7535, metadata !DIExpression()), !dbg !7537
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7538
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7539
  %div = sdiv i64 %1, 64, !dbg !7539
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7540
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !7541
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7542
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7543
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !7544
  ret void, !dbg !7545
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7546 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7548, metadata !DIExpression()), !dbg !7550
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7549, metadata !DIExpression()), !dbg !7551
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7552
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7554
  br i1 %1, label %if.then, label %if.else, !dbg !7555

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7556
  %3 = load i64, ptr %nr.addr, align 8, !dbg !7556
  %shr = ashr i64 %3, 3, !dbg !7556
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !7556
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7558
  %and = and i64 %4, 7, !dbg !7558
  %sh_prom = trunc i64 %and to i32, !dbg !7558
  %shl = shl i32 1, %sh_prom, !dbg !7558
  %not = xor i32 %shl, -1, !dbg !7559
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #18, !dbg !7560, !srcloc !7561
  br label %if.end, !dbg !7562

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7563
  %6 = load i64, ptr %nr.addr, align 8, !dbg !7565
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #18, !dbg !7566, !srcloc !7567
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7569 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7573 dso_local i32 @_printk(ptr noundef, ...) #6

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(1) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051}
!llvm.ident = !{!6052}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_hid_logitech__336_937_lg_driver_init6337", scope: !2, file: !3, line: 937, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/hid/.hid-lg.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/hid/hid-logitech\22 -D KBUILD_BASENAME=\22hid_lg\22 -D KBUILD_MODNAME=\22hid_logitech\22 -D __KBUILD_MODNAME=kmod_hid_logitech -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/hid/hid-lg.ll drivers/hid/hid-lg.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !301, globals: !5228, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hid/hid-lg.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df6f42af1703e2a0b492cbd479370f2b")
!4 = !{!5, !12, !19, !27, !123, !130, !138, !154, !159, !166, !172, !177, !183, !189, !196, !201, !209, !216, !225, !230, !235, !241, !253, !259, !266, !273, !278, !286, !291}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hid_type", file: !6, line: 590, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "facbe92db88800ffaa28a6349726e893")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "HID_TYPE_OTHER", value: 0)
!10 = !DIEnumerator(name: "HID_TYPE_USBMOUSE", value: 1)
!11 = !DIEnumerator(name: "HID_TYPE_USBNONE", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hid_report_type", file: !13, line: 49, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/uapi/linux/hid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "034407528c11c4b77ac29c67f5d79960")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "HID_INPUT_REPORT", value: 0)
!16 = !DIEnumerator(name: "HID_OUTPUT_REPORT", value: 1)
!17 = !DIEnumerator(name: "HID_FEATURE_REPORT", value: 2)
!18 = !DIEnumerator(name: "HID_REPORT_TYPES", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !20, line: 9, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!23 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!24 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!25 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!26 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !29, file: !28, line: 147, baseType: !7, size: 32, elements: !120)
!28 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !28, line: 135, size: 512, elements: !30)
!30 = !{!31, !35, !37, !39, !43, !44, !60, !118, !119}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !29, file: !28, line: 136, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 137, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !29, file: !28, line: 138, baseType: !38, size: 32, offset: 128)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !29, file: !28, line: 139, baseType: !40, size: 16, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !41, line: 24, baseType: !42)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !28, line: 150, baseType: !27, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !29, file: !28, line: 151, baseType: !45, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !28, line: 64, baseType: !47)
!47 = !DISubroutineType(types: !48)
!48 = !{!38, !49, !38, !36, !50, !56}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !53, line: 72, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !53, line: 16, baseType: !55)
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !41, line: 52, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !53, line: 88, baseType: !59)
!59 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !29, file: !28, line: 152, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !28, line: 117, size: 256, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !28, line: 118, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !41, line: 173, baseType: !38, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !62, file: !28, line: 119, baseType: !70, size: 192, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !71, line: 41, baseType: !72)
!71 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !71, line: 37, size: 192, elements: !73)
!73 = !{!74, !112}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !72, file: !71, line: 38, baseType: !75, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !76, line: 29, baseType: !77)
!76 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !76, line: 17, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !76, line: 18, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 18, size: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !80, file: !76, line: 19, baseType: !83, size: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !84, line: 14, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !83, file: !84, line: 15, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !88, line: 44, baseType: !89)
!88 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !88, line: 14, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 15, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 15, size: 32, elements: !93)
!93 = !{!94, !95, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !88, line: 16, baseType: !65, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 24, baseType: !96, size: 16)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 24, size: 16, elements: !97)
!97 = !{!98, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !96, file: !88, line: 25, baseType: !99, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !100, line: 17, baseType: !101)
!100 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !102, line: 21, baseType: !103)
!102 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !96, file: !88, line: 26, baseType: !99, size: 8, offset: 8)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !92, file: !88, line: 28, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !92, file: !88, line: 28, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !106, file: !88, line: 29, baseType: !109, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !100, line: 19, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !102, line: 24, baseType: !42)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !106, file: !88, line: 30, baseType: !109, size: 16, offset: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !72, file: !71, line: 39, baseType: !113, size: 128, offset: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !41, line: 191, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !113, file: !41, line: 191, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !29, file: !28, line: 153, baseType: !36, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !29, file: !28, line: 154, baseType: !36, size: 64, offset: 448)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!122 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !124, line: 312, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!127 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!128 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!129 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !131, line: 68, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!132 = !{!133, !134, !135, !136, !137}
!133 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!134 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!135 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!136 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!137 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !139, line: 1325, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!141 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!142 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!143 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!144 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!145 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!146 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!147 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!148 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!149 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!150 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!151 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!152 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!153 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !155, line: 32, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!158 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !160, line: 15, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!163 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!164 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!165 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !167, line: 26, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !173, line: 2052, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!174 = !{!175, !176}
!175 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!176 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !178, line: 54, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "USRQUOTA", value: 0)
!181 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!182 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !184, line: 45, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!187 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!188 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !190, line: 487, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!193 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!194 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!195 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !197, line: 65, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!198 = !{!199, !200}
!199 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!200 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !202, line: 620, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!203 = !{!204, !205, !206, !207, !208}
!204 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!205 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!206 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!207 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!208 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !202, line: 597, baseType: !38, size: 32, elements: !210)
!210 = !{!211, !212, !213, !214, !215}
!211 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!212 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!213 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!214 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!215 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !190, line: 547, baseType: !7, size: 32, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224}
!218 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!219 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!220 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!221 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!222 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!223 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!224 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!225 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !190, line: 564, baseType: !7, size: 32, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!228 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!229 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !190, line: 577, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!233 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!234 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !190, line: 503, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!238 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!239 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!240 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !242, line: 44, baseType: !7, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252}
!244 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!245 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!246 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!247 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!248 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!249 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!250 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!251 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!252 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !254, line: 16, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!255 = !{!256, !257, !258}
!256 = !DIEnumerator(name: "TT_NONE", value: 0)
!257 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!258 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !260, line: 51, baseType: !7, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!261 = !{!262, !263, !264, !265}
!262 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!263 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!264 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!265 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !267, line: 95, baseType: !7, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "01f3cab1cef729fb6cd7609abdb96587")
!268 = !{!269, !270, !271, !272}
!269 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0)
!270 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1)
!271 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2)
!272 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_wireless_status", file: !267, line: 172, baseType: !7, size: 32, elements: !274)
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "USB_WIRELESS_STATUS_NA", value: 0)
!276 = !DIEnumerator(name: "USB_WIRELESS_STATUS_DISCONNECTED", value: 1)
!277 = !DIEnumerator(name: "USB_WIRELESS_STATUS_CONNECTED", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hid_class_request", file: !13, line: 61, baseType: !7, size: 32, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285}
!280 = !DIEnumerator(name: "HID_REQ_GET_REPORT", value: 1)
!281 = !DIEnumerator(name: "HID_REQ_GET_IDLE", value: 2)
!282 = !DIEnumerator(name: "HID_REQ_GET_PROTOCOL", value: 3)
!283 = !DIEnumerator(name: "HID_REQ_SET_REPORT", value: 9)
!284 = !DIEnumerator(name: "HID_REQ_SET_IDLE", value: 10)
!285 = !DIEnumerator(name: "HID_REQ_SET_PROTOCOL", value: 11)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !287, line: 10, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!288 = !{!289, !290}
!289 = !DIEnumerator(name: "false", value: 0)
!290 = !DIEnumerator(name: "true", value: 1)
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !292, line: 364, baseType: !7, size: 32, elements: !293)
!292 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!293 = !{!294, !295, !296, !297, !298, !299, !300}
!294 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!295 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!296 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!297 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!298 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!299 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!300 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!301 = !{!36, !302, !5130, !1553, !55, !38, !391, !5224, !5226}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !124, line: 402, size: 9216, align: 512, elements: !304)
!304 = !{!305, !306, !307, !311, !4814, !4840, !4841, !4842, !4843, !4847, !4850, !4851, !4852, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4919, !4923, !4941, !4958, !4959, !4960, !4961, !4970, !4993, !4994, !4997, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5011, !5012, !5091, !5099, !5100, !5101, !5103, !5107, !5108, !5112, !5113, !5114, !5115, !5117, !5118, !5119, !5126, !5127, !5128, !5129}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !124, line: 403, baseType: !123, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !303, file: !124, line: 406, baseType: !113, size: 128, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !124, line: 409, baseType: !308, size: 448, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 448, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 56)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !303, file: !124, line: 417, baseType: !312, size: 768, offset: 640)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !124, line: 45, size: 768, elements: !313)
!313 = !{!314, !4808, !4809, !4810, !4813}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !312, file: !124, line: 46, baseType: !315, size: 512)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !316, line: 64, size: 512, elements: !317)
!316 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!317 = !{!318, !319, !320, !322, !369, !4801, !4802, !4803, !4804, !4805, !4806, !4807}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 65, baseType: !32, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !315, file: !316, line: 66, baseType: !113, size: 128, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !315, file: !316, line: 67, baseType: !321, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !315, file: !316, line: 68, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !316, line: 168, size: 768, elements: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !324, file: !316, line: 169, baseType: !113, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !324, file: !316, line: 170, baseType: !75, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !324, file: !316, line: 171, baseType: !315, size: 512, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !324, file: !316, line: 172, baseType: !330, size: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !316, line: 133, size: 192, elements: !333)
!333 = !{!334, !341, !346}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !332, file: !316, line: 134, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!38, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !316, line: 135, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!32, !339}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !332, file: !316, line: 136, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!38, !339, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !316, line: 125, size: 20736, elements: !353)
!353 = !{!354, !359, !363, !364, !368}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !352, file: !316, line: 126, baseType: !355, size: 192)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 192, elements: !357)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!357 = !{!358}
!358 = !DISubrange(count: 3)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !352, file: !316, line: 127, baseType: !360, size: 4096, offset: 192)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 4096, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !352, file: !316, line: 128, baseType: !38, size: 32, offset: 4288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !352, file: !316, line: 129, baseType: !365, size: 16384, offset: 4320)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 2048)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !352, file: !316, line: 130, baseType: !38, size: 32, offset: 20704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !315, file: !316, line: 69, baseType: !370, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !316, line: 116, size: 384, elements: !373)
!373 = !{!374, !378, !401, !4789, !4793, !4797}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !372, file: !316, line: 117, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !321}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !372, file: !316, line: 118, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !382, line: 254, size: 128, elements: !383)
!382 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!383 = !{!384, !397}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !381, file: !382, line: 255, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !321, !392, !356}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 66, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !53, line: 73, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !53, line: 15, baseType: !391)
!391 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !382, line: 30, size: 128, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !393, file: !382, line: 31, baseType: !32, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !393, file: !382, line: 32, baseType: !40, size: 16, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !381, file: !382, line: 256, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!388, !321, !392, !32, !51}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !372, file: !316, line: 119, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !382, line: 84, size: 320, elements: !406)
!406 = !{!407, !408, !412, !4785, !4787}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !382, line: 85, baseType: !32, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !405, file: !382, line: 86, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!40, !321, !392, !38}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !405, file: !382, line: 88, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!40, !321, !416, !38}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !382, line: 175, size: 512, elements: !418)
!418 = !{!419, !420, !421, !422, !4776, !4780, !4781}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !417, file: !382, line: 176, baseType: !393, size: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !417, file: !382, line: 177, baseType: !51, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !417, file: !382, line: 178, baseType: !36, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !417, file: !382, line: 179, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !173, line: 472, size: 1536, align: 64, elements: !428)
!428 = !{!429, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4770, !4771, !4772, !4773, !4774, !4775}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !427, file: !173, line: 473, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !173, line: 641, size: 4800, elements: !432)
!432 = !{!433, !434, !435, !443, !444, !451, !452, !455, !456, !4549, !4550, !4551, !4552, !4553, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4593, !4596, !4597, !4598, !4607, !4608, !4609, !4610}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !431, file: !173, line: 642, baseType: !40, size: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !431, file: !173, line: 643, baseType: !42, size: 16, offset: 16)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !431, file: !173, line: 644, baseType: !436, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !437, line: 23, baseType: !438)
!437 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 21, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !438, file: !437, line: 22, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !53, line: 49, baseType: !7)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !431, file: !173, line: 645, baseType: !113, size: 128, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !431, file: !173, line: 646, baseType: !445, size: 32, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !437, line: 28, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 26, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !437, line: 27, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !41, line: 38, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !53, line: 50, baseType: !7)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !431, file: !173, line: 647, baseType: !7, size: 32, offset: 224)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !431, file: !173, line: 650, baseType: !453, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !173, line: 607, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !431, file: !173, line: 651, baseType: !453, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !431, file: !173, line: 654, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !173, line: 1966, size: 2048, align: 512, elements: !460)
!460 = !{!461, !4383, !4393, !4397, !4401, !4405, !4409, !4413, !4417, !4421, !4425, !4426, !4430, !4434, !4471, !4500, !4504, !4510, !4514, !4518, !4522, !4526, !4530, !4536, !4540}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !459, file: !173, line: 1967, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!465, !430, !465, !7}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !467, line: 82, size: 1536, elements: !468)
!467 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!468 = !{!469, !470, !480, !488, !489, !509, !510, !514, !527, !4366, !4367, !4368, !4369, !4375, !4376, !4377}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !466, file: !467, line: 84, baseType: !7, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !466, file: !467, line: 85, baseType: !471, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !472, line: 275, baseType: !473)
!472 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !472, line: 275, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !473, file: !472, line: 275, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !472, line: 69, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !472, line: 64, size: 32, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !477, file: !472, line: 65, baseType: !7, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !466, file: !467, line: 86, baseType: !481, size: 128, offset: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !482, line: 38, size: 128, elements: !483)
!482 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !481, file: !482, line: 39, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !481, file: !482, line: 39, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !466, file: !467, line: 87, baseType: !465, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !466, file: !467, line: 88, baseType: !490, size: 128, offset: 256)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !467, line: 49, size: 128, elements: !491)
!491 = !{!492, !506}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !467, line: 50, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !467, line: 50, size: 64, elements: !494)
!494 = !{!495, !502}
!495 = !DIDerivedType(tag: DW_TAG_member, scope: !493, file: !467, line: 51, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !467, line: 51, size: 64, elements: !497)
!497 = !{!498, !501}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !496, file: !467, line: 52, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !100, line: 21, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !102, line: 27, baseType: !7)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !496, file: !467, line: 52, baseType: !499, size: 32, offset: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !493, file: !467, line: 54, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !100, line: 23, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !102, line: 31, baseType: !505)
!505 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !490, file: !467, line: 56, baseType: !507, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !466, file: !467, line: 89, baseType: !430, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !466, file: !467, line: 91, baseType: !511, size: 256, offset: 448)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !466, file: !467, line: 94, baseType: !515, size: 64, offset: 704)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !516, line: 25, size: 64, elements: !517)
!516 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !516, line: 26, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !516, line: 26, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !519, file: !516, line: 28, baseType: !504, size: 64, align: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !516, line: 30, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !519, file: !516, line: 30, size: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !523, file: !516, line: 31, baseType: !75, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !523, file: !516, line: 32, baseType: !38, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !466, file: !467, line: 95, baseType: !528, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !467, line: 128, size: 1024, align: 512, elements: !531)
!531 = !{!532, !536, !537, !544, !550, !554, !558, !562, !563, !567, !571, !4356, !4360}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !530, file: !467, line: 129, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!38, !465, !7}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !530, file: !467, line: 130, baseType: !533, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !530, file: !467, line: 131, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!38, !541, !543}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !530, file: !467, line: 132, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!38, !541, !7, !32, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !530, file: !467, line: 134, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!38, !541}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !530, file: !467, line: 135, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!38, !465}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !530, file: !467, line: 136, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !465}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !530, file: !467, line: 137, baseType: !559, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !530, file: !467, line: 138, baseType: !564, size: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !465, !430}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !530, file: !467, line: 139, baseType: !568, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!356, !465, !356, !38}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !530, file: !467, line: 140, baseType: !572, size: 64, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !4355}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !577, line: 70, size: 256, elements: !578)
!577 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!578 = !{!579, !580, !4351, !4352}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !576, file: !577, line: 71, baseType: !465, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !576, file: !577, line: 72, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !173, line: 1190, size: 10752, elements: !583)
!583 = !{!584, !585, !588, !589, !590, !591, !640, !1926, !1966, !2051, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2068, !2072, !2073, !2595, !2598, !2668, !2671, !2672, !2673, !2714, !4286, !4287, !4288, !4289, !4290, !4291, !4294, !4295, !4301, !4302, !4303, !4304, !4305, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !582, file: !173, line: 1191, baseType: !113, size: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !582, file: !173, line: 1192, baseType: !586, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !41, line: 21, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !41, line: 18, baseType: !499)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !582, file: !173, line: 1193, baseType: !103, size: 8, offset: 160)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !582, file: !173, line: 1194, baseType: !55, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !582, file: !173, line: 1195, baseType: !57, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !582, file: !173, line: 1196, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !173, line: 2366, size: 576, elements: !594)
!594 = !{!595, !596, !597, !604, !608, !612, !616, !617, !618, !628, !632, !633, !634, !636, !637, !638, !639}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !593, file: !173, line: 2367, baseType: !32, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !593, file: !173, line: 2368, baseType: !38, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !593, file: !173, line: 2376, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!38, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !603, line: 32, flags: DIFlagFwdDecl)
!603 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !593, file: !173, line: 2377, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !173, line: 75, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !593, file: !173, line: 2378, baseType: !609, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!465, !592, !38, !32, !36}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !593, file: !173, line: 2380, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !581}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !593, file: !173, line: 2381, baseType: !302, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !593, file: !173, line: 2382, baseType: !592, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !593, file: !173, line: 2383, baseType: !619, size: 64, offset: 512)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !619, file: !41, line: 195, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !623, file: !41, line: 199, baseType: !622, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !623, file: !41, line: 199, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !593, file: !173, line: 2385, baseType: !629, offset: 576)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !630, line: 206, elements: !631)
!630 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!631 = !{}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !593, file: !173, line: 2386, baseType: !629, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !593, file: !173, line: 2387, baseType: !629, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !593, file: !173, line: 2388, baseType: !635, offset: 576)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, elements: !357)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !593, file: !173, line: 2390, baseType: !629, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !593, file: !173, line: 2391, baseType: !629, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !593, file: !173, line: 2392, baseType: !629, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !593, file: !173, line: 2393, baseType: !629, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !582, file: !173, line: 1197, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !173, line: 2057, size: 1664, elements: !644)
!644 = !{!645, !649, !653, !654, !658, !682, !686, !687, !688, !692, !696, !700, !701, !702, !708, !713, !714, !1851, !1852, !1853, !1854, !1858, !1862, !1909, !1924, !1925}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !643, file: !173, line: 2058, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!430, !581}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !643, file: !173, line: 2059, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !430}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !643, file: !173, line: 2060, baseType: !650, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !643, file: !173, line: 2062, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !430, !38}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !643, file: !173, line: 2063, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!38, !430, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !155, line: 42, size: 384, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !663, file: !155, line: 43, baseType: !391, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !663, file: !155, line: 45, baseType: !391, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !663, file: !155, line: 52, baseType: !57, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !663, file: !155, line: 53, baseType: !57, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !663, file: !155, line: 55, baseType: !154, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !663, file: !155, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !663, file: !155, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !663, file: !155, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !663, file: !155, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !663, file: !155, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !663, file: !155, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !663, file: !155, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !663, file: !155, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !663, file: !155, line: 78, baseType: !679, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !155, line: 78, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !643, file: !173, line: 2064, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!38, !430}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !643, file: !173, line: 2065, baseType: !650, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !643, file: !173, line: 2066, baseType: !613, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !643, file: !173, line: 2067, baseType: !689, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!38, !581, !38}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !643, file: !173, line: 2068, baseType: !693, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!38, !581, !172}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !643, file: !173, line: 2069, baseType: !697, size: 64, offset: 640)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!38, !581}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !643, file: !173, line: 2070, baseType: !693, size: 64, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !643, file: !173, line: 2071, baseType: !697, size: 64, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !643, file: !173, line: 2072, baseType: !703, size: 64, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!38, !465, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !173, line: 62, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !643, file: !173, line: 2073, baseType: !709, size: 64, offset: 896)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!38, !581, !712, !356}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !643, file: !173, line: 2074, baseType: !613, size: 64, offset: 960)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !643, file: !173, line: 2076, baseType: !715, size: 64, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!38, !718, !465}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !720, line: 17, size: 960, elements: !721)
!720 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!721 = !{!722, !723, !724, !725, !726, !727, !728, !729, !750, !771, !772, !1850}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !719, file: !720, line: 18, baseType: !356, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !719, file: !720, line: 19, baseType: !51, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !719, file: !720, line: 20, baseType: !51, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 21, baseType: !51, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !719, file: !720, line: 22, baseType: !51, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !719, file: !720, line: 23, baseType: !57, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !719, file: !720, line: 24, baseType: !57, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !719, file: !720, line: 25, baseType: !730, size: 256, offset: 448)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !731, line: 66, size: 256, elements: !732)
!731 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!732 = !{!733, !742, !744, !749}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !730, file: !731, line: 67, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !735, line: 13, baseType: !736)
!735 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !737, file: !41, line: 180, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !100, line: 22, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !102, line: 30, baseType: !59)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !730, file: !731, line: 68, baseType: !743, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !84, line: 23, baseType: !83)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !730, file: !731, line: 70, baseType: !745, size: 32, offset: 96)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !746, line: 15, size: 32, elements: !747)
!746 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !745, file: !746, line: 20, baseType: !65, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !730, file: !731, line: 72, baseType: !113, size: 128, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !719, file: !720, line: 26, baseType: !751, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !720, line: 32, size: 256, elements: !754)
!754 = !{!755, !759, !763, !767}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !753, file: !720, line: 33, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!36, !718, !56}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !753, file: !720, line: 34, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !718, !36}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !720, line: 35, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!36, !718, !36, !56}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !753, file: !720, line: 36, baseType: !768, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!38, !718, !36}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !719, file: !720, line: 27, baseType: !38, size: 32, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !719, file: !720, line: 28, baseType: !773, size: 64, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !173, line: 994, size: 1856, align: 64, elements: !776)
!776 = !{!777, !796, !797, !799, !800, !801, !802, !803, !860, !1219, !1228, !1234, !1235, !1840, !1841, !1842, !1843, !1845, !1846, !1849}
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !173, line: 995, baseType: !778, size: 128)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !173, line: 995, size: 128, elements: !779)
!779 = !{!780, !786, !795}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !778, file: !173, line: 996, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !782, line: 60, size: 64, elements: !783)
!782 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !782, line: 61, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !778, file: !173, line: 997, baseType: !787, size: 128, align: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !788)
!788 = !{!789, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !41, line: 233, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !787, file: !41, line: 234, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !790}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !778, file: !173, line: 998, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !775, file: !173, line: 1005, baseType: !75, size: 32, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !775, file: !173, line: 1006, baseType: !798, size: 32, offset: 160)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !41, line: 156, baseType: !7)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !775, file: !173, line: 1007, baseType: !734, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !775, file: !173, line: 1008, baseType: !730, size: 256, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !775, file: !173, line: 1009, baseType: !57, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !775, file: !173, line: 1010, baseType: !7, size: 32, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !775, file: !173, line: 1011, baseType: !804, size: 256, offset: 640)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !173, line: 948, size: 256, elements: !805)
!805 = !{!806, !827, !856, !857, !858, !859}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !804, file: !173, line: 949, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !808, line: 34, baseType: !809)
!808 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !808, line: 25, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !809, file: !808, line: 26, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !813, line: 27, baseType: !814)
!813 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !813, line: 13, size: 64, elements: !815)
!815 = !{!816, !826}
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !813, line: 14, baseType: !817, size: 32)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !813, line: 14, size: 32, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !817, file: !813, line: 15, baseType: !65, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !813, line: 16, baseType: !821, size: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !813, line: 16, size: 32, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !821, file: !813, line: 18, baseType: !99, size: 8)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !821, file: !813, line: 19, baseType: !825, size: 24, offset: 8)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 24, elements: !357)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !814, file: !813, line: 26, baseType: !87, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !804, file: !173, line: 950, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !20, line: 59, size: 768, elements: !830)
!830 = !{!831, !837, !838, !839, !843, !844, !845, !846}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !829, file: !20, line: 61, baseType: !832, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !833, line: 113, baseType: !834)
!833 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !833, line: 111, size: 32, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !834, file: !833, line: 112, baseType: !65, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !829, file: !20, line: 62, baseType: !7, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !20, line: 63, baseType: !75, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !829, file: !20, line: 65, baseType: !840, size: 256, offset: 128)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 256, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 4)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !829, file: !20, line: 66, baseType: !619, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !829, file: !20, line: 68, baseType: !70, size: 192, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !829, file: !20, line: 69, baseType: !787, size: 128, align: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !829, file: !20, line: 70, baseType: !847, offset: 768)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, elements: !854)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !20, line: 54, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !848, file: !20, line: 55, baseType: !38, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !848, file: !20, line: 56, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !20, line: 56, flags: DIFlagFwdDecl)
!854 = !{!855}
!855 = !DISubrange(count: -1)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !804, file: !173, line: 951, baseType: !19, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !804, file: !173, line: 952, baseType: !436, size: 32, offset: 160)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !804, file: !173, line: 952, baseType: !436, size: 32, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !804, file: !173, line: 953, baseType: !38, size: 32, offset: 224)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !775, file: !173, line: 1012, baseType: !861, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !864, line: 110, size: 1472, elements: !865)
!864 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !882, !883, !884, !885, !886, !887, !1017, !1018, !1019, !1020, !1021, !1052, !1205, !1206, !1214}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !863, file: !864, line: 111, baseType: !734, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !863, file: !864, line: 112, baseType: !436, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !863, file: !864, line: 113, baseType: !445, size: 32, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !863, file: !864, line: 114, baseType: !436, size: 32, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !863, file: !864, line: 115, baseType: !445, size: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !863, file: !864, line: 116, baseType: !436, size: 32, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !863, file: !864, line: 117, baseType: !445, size: 32, offset: 224)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !863, file: !864, line: 118, baseType: !436, size: 32, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !863, file: !864, line: 119, baseType: !445, size: 32, offset: 288)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !863, file: !864, line: 120, baseType: !7, size: 32, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !863, file: !864, line: 121, baseType: !877, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !878, line: 24, baseType: !879)
!878 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 24, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !879, file: !878, line: 24, baseType: !503, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !863, file: !864, line: 122, baseType: !877, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !863, file: !864, line: 123, baseType: !877, size: 64, offset: 512)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !863, file: !864, line: 124, baseType: !877, size: 64, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !863, file: !864, line: 125, baseType: !877, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !863, file: !864, line: 127, baseType: !103, size: 8, offset: 704)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !863, file: !864, line: 129, baseType: !888, size: 64, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !890, line: 195, size: 1728, elements: !891)
!890 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!891 = !{!892, !893, !898, !910, !919, !922, !923, !930, !931, !932, !933, !936, !937, !938, !940, !941, !981, !1002}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !889, file: !890, line: 196, baseType: !832, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !889, file: !890, line: 197, baseType: !894, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !890, line: 28, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !41, line: 104, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !100, line: 20, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !102, line: 26, baseType: !38)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !890, line: 198, baseType: !899, size: 192, offset: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !890, line: 198, size: 192, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !899, file: !890, line: 199, baseType: !113, size: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !899, file: !890, line: 200, baseType: !903, size: 192, align: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !904, line: 5, size: 192, align: 64, elements: !905)
!904 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!905 = !{!906, !907, !909}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !903, file: !904, line: 6, baseType: !55, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !903, file: !904, line: 7, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !903, file: !904, line: 8, baseType: !908, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !889, file: !890, line: 205, baseType: !911, size: 320, offset: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !912, line: 48, size: 320, elements: !913)
!912 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!913 = !{!914, !915, !916, !917, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !911, file: !912, line: 49, baseType: !734, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !911, file: !912, line: 55, baseType: !734, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !911, file: !912, line: 57, baseType: !745, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !911, file: !912, line: 59, baseType: !743, size: 32, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !911, file: !912, line: 60, baseType: !113, size: 128, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !889, file: !890, line: 206, baseType: !920, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !890, line: 206, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !889, file: !890, line: 207, baseType: !36, size: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !890, line: 208, baseType: !924, size: 64, offset: 704)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !890, line: 208, size: 64, elements: !925)
!925 = !{!926, !929}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !924, file: !890, line: 209, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !928, line: 8, baseType: !741)
!928 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!929 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !924, file: !890, line: 210, baseType: !927, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !889, file: !890, line: 212, baseType: !927, size: 64, offset: 768)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !889, file: !890, line: 213, baseType: !436, size: 32, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !889, file: !890, line: 214, baseType: !445, size: 32, offset: 864)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !889, file: !890, line: 215, baseType: !934, size: 32, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !890, line: 31, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !499)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !889, file: !890, line: 216, baseType: !42, size: 16, offset: 928)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !889, file: !890, line: 217, baseType: !42, size: 16, offset: 944)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !889, file: !890, line: 221, baseType: !939, size: 16, offset: 960)
!939 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !889, file: !890, line: 228, baseType: !55, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !890, line: 245, baseType: !942, size: 320, offset: 1088)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !890, line: 245, size: 320, elements: !943)
!943 = !{!944, !973}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !942, file: !890, line: 246, baseType: !945, size: 320)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !890, line: 114, size: 320, elements: !946)
!946 = !{!947, !948, !960, !963, !972}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !945, file: !890, line: 116, baseType: !55, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !890, line: 117, baseType: !949, size: 64, offset: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !890, line: 117, size: 64, elements: !950)
!950 = !{!951, !959}
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !890, line: 118, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !890, line: 118, size: 64, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !952, file: !890, line: 120, baseType: !109, size: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !952, file: !890, line: 121, baseType: !956, size: 48, offset: 16)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 6)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !949, file: !890, line: 127, baseType: !55, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !945, file: !890, line: 129, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !890, line: 102, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !945, file: !890, line: 130, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !890, line: 108, size: 192, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !965, file: !890, line: 109, baseType: !787, size: 128, align: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !965, file: !890, line: 110, baseType: !832, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !965, file: !890, line: 111, baseType: !970, size: 8, offset: 160)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !971)
!971 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !945, file: !890, line: 131, baseType: !32, size: 64, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !890, line: 247, baseType: !974, size: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !890, line: 247, size: 320, elements: !975)
!975 = !{!976, !977, !978, !979, !980}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !974, file: !890, line: 248, baseType: !55, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !974, file: !890, line: 249, baseType: !55, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !974, file: !890, line: 250, baseType: !961, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !974, file: !890, line: 251, baseType: !964, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !974, file: !890, line: 252, baseType: !356, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !890, line: 260, baseType: !982, size: 256, offset: 1408)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !890, line: 260, size: 256, elements: !983)
!983 = !{!984, !990}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !982, file: !890, line: 261, baseType: !985, size: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !890, line: 134, size: 256, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !985, file: !890, line: 135, baseType: !36, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !985, file: !890, line: 136, baseType: !989, size: 256)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 256, elements: !841)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !890, line: 262, baseType: !991, size: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !982, file: !890, line: 262, size: 256, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !991, file: !890, line: 264, baseType: !113, size: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !991, file: !890, line: 265, baseType: !995, size: 128, offset: 128)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !996, line: 22, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!997 = !{!998, !1001}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !995, file: !996, line: 23, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !996, line: 23, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !995, file: !996, line: 24, baseType: !55, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !889, file: !890, line: 280, baseType: !1003, size: 64, offset: 1664)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !890, line: 176, size: 192, elements: !1005)
!1005 = !{!1006, !1015, !1016}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1004, file: !890, line: 177, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !890, line: 171, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!38, !888, !1011, !1013, !888}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1004, file: !890, line: 178, baseType: !888, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1004, file: !890, line: 179, baseType: !961, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !863, file: !864, line: 130, baseType: !888, size: 64, offset: 832)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !863, file: !864, line: 131, baseType: !888, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !863, file: !864, line: 132, baseType: !888, size: 64, offset: 960)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !863, file: !864, line: 135, baseType: !36, size: 64, offset: 1024)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !863, file: !864, line: 137, baseType: !1022, size: 64, offset: 1088)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1024, line: 14, size: 1088, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1025 = !{!1026, !1027, !1036, !1037, !1038, !1039, !1040, !1041}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1023, file: !1024, line: 15, baseType: !832, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1023, file: !1024, line: 17, baseType: !1028, size: 320, offset: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1029, line: 22, size: 320, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1030 = !{!1031, !1032, !1033, !1034}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1028, file: !1029, line: 23, baseType: !743, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1028, file: !1029, line: 24, baseType: !740, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1028, file: !1029, line: 26, baseType: !113, size: 128, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1028, file: !1029, line: 28, baseType: !1035, size: 64, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1023, file: !1024, line: 19, baseType: !55, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1023, file: !1024, line: 20, baseType: !734, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1023, file: !1024, line: 23, baseType: !623, size: 128, offset: 512)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1023, file: !1024, line: 24, baseType: !436, size: 32, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1023, file: !1024, line: 29, baseType: !734, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1023, file: !1024, line: 36, baseType: !1042, size: 320, offset: 768)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1043, line: 15, size: 320, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1042, file: !1043, line: 16, baseType: !743, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1042, file: !1043, line: 18, baseType: !38, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1042, file: !1043, line: 19, baseType: !38, size: 32, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1042, file: !1043, line: 20, baseType: !38, size: 32, offset: 96)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1042, file: !1043, line: 21, baseType: !38, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1042, file: !1043, line: 22, baseType: !55, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1043, line: 23, baseType: !55, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !863, file: !864, line: 138, baseType: !1053, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1055, line: 68, size: 4800, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1056 = !{!1057, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1096, !1097, !1098, !1099, !1100, !1101, !1113, !1186, !1187, !1201, !1203}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1054, file: !1055, line: 69, baseType: !1058, size: 576)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1055, line: 23, size: 576, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1058, file: !1055, line: 24, baseType: !499, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !1055, line: 25, baseType: !1062, size: 512, offset: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !1055, line: 25, size: 512, elements: !1063)
!1063 = !{!1064, !1073}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1062, file: !1055, line: 26, baseType: !1065, size: 480)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 480, elements: !1071)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1055, line: 17, size: 96, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1066, file: !1055, line: 18, baseType: !499, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1066, file: !1055, line: 19, baseType: !499, size: 32, offset: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1066, file: !1055, line: 20, baseType: !499, size: 32, offset: 64)
!1071 = !{!1072}
!1072 = !DISubrange(count: 5)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !1055, line: 27, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !1055, line: 27, size: 128, elements: !1075)
!1075 = !{!1076, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1074, file: !1055, line: 28, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1074, file: !1055, line: 29, baseType: !1077, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1054, file: !1055, line: 70, baseType: !1058, size: 576, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1054, file: !1055, line: 71, baseType: !1058, size: 576, offset: 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1054, file: !1055, line: 72, baseType: !1053, size: 64, offset: 1728)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1054, file: !1055, line: 73, baseType: !38, size: 32, offset: 1792)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1054, file: !1055, line: 74, baseType: !436, size: 32, offset: 1824)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1054, file: !1055, line: 75, baseType: !445, size: 32, offset: 1856)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1054, file: !1055, line: 76, baseType: !1086, size: 192, offset: 1920)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1087, line: 9, size: 192, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1088 = !{!1089, !1090, !1094, !1095}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1086, file: !1087, line: 10, baseType: !734, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1086, file: !1087, line: 11, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1087, line: 7, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1086, file: !1087, line: 12, baseType: !7, size: 32, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1086, file: !1087, line: 13, baseType: !832, size: 32, offset: 160)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 77, baseType: !55, size: 64, offset: 2112)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1054, file: !1055, line: 80, baseType: !970, size: 8, offset: 2176)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1054, file: !1055, line: 88, baseType: !113, size: 128, offset: 2240)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1054, file: !1055, line: 89, baseType: !888, size: 64, offset: 2368)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1054, file: !1055, line: 90, baseType: !911, size: 320, offset: 2432)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1054, file: !1055, line: 97, baseType: !1102, size: 256, offset: 2752)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1103, line: 98, size: 256, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1102, file: !1103, line: 99, baseType: !734, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1102, file: !1103, line: 100, baseType: !113, size: 128, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1102, file: !1103, line: 101, baseType: !1108, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1103, line: 21, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1054, file: !1055, line: 99, baseType: !1114, size: 768, offset: 3008)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !28, line: 199, size: 768, elements: !1115)
!1115 = !{!1116, !1121}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1114, file: !28, line: 200, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!38, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1114, file: !28, line: 201, baseType: !1122, size: 704, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !28, line: 193, size: 704, elements: !1123)
!1123 = !{!1124, !1182}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1122, file: !28, line: 195, baseType: !1125, size: 640)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !28, line: 173, size: 640, elements: !1126)
!1126 = !{!1127, !1139, !1151, !1152, !1172, !1173, !1175, !1181}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !28, line: 174, baseType: !1128, size: 192)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !28, line: 174, size: 192, elements: !1129)
!1129 = !{!1130, !1138}
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !28, line: 175, baseType: !1131, size: 192)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !28, line: 175, size: 192, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1131, file: !28, line: 176, baseType: !49, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1131, file: !28, line: 177, baseType: !38, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1131, file: !28, line: 178, baseType: !38, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !28, line: 179, baseType: !38, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1131, file: !28, line: 180, baseType: !38, size: 32, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1128, file: !28, line: 182, baseType: !787, size: 128, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1125, file: !28, line: 184, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1142, line: 26, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1141, file: !1142, line: 27, baseType: !7, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1141, file: !1142, line: 28, baseType: !1146, size: 192, offset: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1147, line: 43, size: 192, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1146, file: !1147, line: 44, baseType: !743, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1146, file: !1147, line: 45, baseType: !113, size: 128, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1125, file: !28, line: 185, baseType: !49, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1125, file: !28, line: 186, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !28, line: 204, size: 960, elements: !1155)
!1155 = !{!1156, !1157, !1161, !1168}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1154, file: !28, line: 205, baseType: !1114, size: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1154, file: !28, line: 206, baseType: !1158, size: 64, offset: 768)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!1120, !1153}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1154, file: !28, line: 207, baseType: !1162, size: 64, offset: 832)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1154, file: !28, line: 209, baseType: !1169, size: 64, offset: 896)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!38, !1165, !49}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1125, file: !28, line: 187, baseType: !1120, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1125, file: !28, line: 188, baseType: !1174, size: 64, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1125, file: !28, line: 189, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !28, line: 157, size: 256, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1177, file: !28, line: 158, baseType: !903, size: 192, align: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1177, file: !28, line: 159, baseType: !1165, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1125, file: !28, line: 190, baseType: !619, size: 64, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1122, file: !28, line: 196, baseType: !1183, size: 64, offset: 640)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !904, line: 12, size: 64, elements: !1184)
!1184 = !{!1185}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1183, file: !904, line: 13, baseType: !908, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1054, file: !1055, line: 100, baseType: !1165, size: 64, offset: 3776)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1054, file: !1055, line: 102, baseType: !1188, size: 64, offset: 3840)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1055, line: 107, size: 1152, elements: !1190)
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1199}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1189, file: !1055, line: 108, baseType: !623, size: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1189, file: !1055, line: 109, baseType: !1053, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1189, file: !1055, line: 110, baseType: !436, size: 32, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1189, file: !1055, line: 111, baseType: !65, size: 32, offset: 224)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1189, file: !1055, line: 112, baseType: !1196, size: 640, offset: 256)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 640, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 10)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1189, file: !1055, line: 113, baseType: !1200, size: 256, offset: 896)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 256, elements: !841)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1054, file: !1055, line: 103, baseType: !1202, size: 640, offset: 3904)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 640, elements: !1197)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1054, file: !1055, line: 104, baseType: !1204, size: 256, offset: 4544)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 256, elements: !841)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !863, file: !864, line: 139, baseType: !1188, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !863, file: !864, line: 140, baseType: !1207, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !864, line: 25, size: 64, elements: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1208, file: !864, line: 26, baseType: !65, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1208, file: !864, line: 27, baseType: !38, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1208, file: !864, line: 28, baseType: !1213, offset: 64)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, elements: !854)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !864, line: 142, baseType: !1215, size: 128, offset: 1344)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !864, line: 142, size: 128, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1215, file: !864, line: 143, baseType: !38, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1215, file: !864, line: 144, baseType: !787, size: 128, align: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !775, file: !173, line: 1013, baseType: !1220, size: 256, offset: 960)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !173, line: 970, size: 256, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1220, file: !173, line: 971, baseType: !55, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1220, file: !173, line: 972, baseType: !7, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1220, file: !173, line: 973, baseType: !7, size: 32, offset: 96)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1220, file: !173, line: 974, baseType: !7, size: 32, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1220, file: !173, line: 975, baseType: !7, size: 32, offset: 160)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1220, file: !173, line: 976, baseType: !57, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !775, file: !173, line: 1014, baseType: !1229, size: 128, offset: 1216)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1230, line: 8, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1229, file: !1230, line: 9, baseType: !575, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1229, file: !1230, line: 10, baseType: !465, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !775, file: !173, line: 1015, baseType: !430, size: 64, offset: 1344)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !775, file: !173, line: 1016, baseType: !1236, size: 64, offset: 1408)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !173, line: 1914, size: 2112, elements: !1239)
!1239 = !{!1240, !1241, !1246, !1250, !1254, !1282, !1283, !1289, !1302, !1310, !1314, !1315, !1762, !1763, !1767, !1772, !1773, !1777, !1781, !1787, !1788, !1792, !1793, !1799, !1803, !1807, !1813, !1817, !1821, !1825, !1829, !1830, !1836}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1238, file: !173, line: 1915, baseType: !302, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1238, file: !173, line: 1916, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!57, !1245, !57, !38}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1238, file: !173, line: 1917, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!388, !1245, !356, !51, !56}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1238, file: !173, line: 1918, baseType: !1251, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!388, !1245, !32, !51, !56}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1238, file: !173, line: 1919, baseType: !1255, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!388, !1258, !1280}
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !173, line: 373, size: 384, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1267, !1268, !1269, !1270}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1259, file: !173, line: 374, baseType: !1245, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1259, file: !173, line: 375, baseType: !57, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1259, file: !173, line: 376, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1258, !391}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1259, file: !173, line: 377, baseType: !36, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1259, file: !173, line: 378, baseType: !38, size: 32, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1259, file: !173, line: 379, baseType: !109, size: 16, offset: 288)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !173, line: 380, baseType: !1271, size: 64, offset: 320)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1259, file: !173, line: 380, size: 64, elements: !1272)
!1272 = !{!1273, !1276}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1271, file: !173, line: 386, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !173, line: 386, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1271, file: !173, line: 395, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!388, !36}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !173, line: 69, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1238, file: !173, line: 1920, baseType: !1255, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1238, file: !173, line: 1921, baseType: !1284, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!38, !1258, !1287, !7}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !173, line: 53, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1238, file: !173, line: 1923, baseType: !1290, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!38, !1245, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !173, line: 1858, size: 128, elements: !1295)
!1295 = !{!1296, !1301}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1294, file: !173, line: 1859, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !173, line: 1855, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!970, !1293, !32, !38, !57, !503, !7}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1294, file: !173, line: 1860, baseType: !57, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1238, file: !173, line: 1924, baseType: !1303, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1306, !1245, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1307, line: 59, baseType: !7)
!1307 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !603, line: 31, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1238, file: !173, line: 1925, baseType: !1311, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!391, !1245, !7, !55}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1238, file: !173, line: 1926, baseType: !1311, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1238, file: !173, line: 1927, baseType: !1316, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!38, !1245, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !139, line: 625, size: 1344, elements: !1321)
!1321 = !{!1322, !1331, !1488, !1494, !1501, !1502, !1507, !1508, !1513, !1514, !1517, !1755, !1756, !1757, !1758, !1759, !1760}
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !139, line: 628, baseType: !1323, size: 128)
!1323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !139, line: 628, size: 128, elements: !1324)
!1324 = !{!1325, !1330}
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1323, file: !139, line: 629, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1323, file: !139, line: 629, size: 128, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1326, file: !139, line: 631, baseType: !55, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1326, file: !139, line: 632, baseType: !55, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1323, file: !139, line: 635, baseType: !787, size: 128, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1320, file: !139, line: 639, baseType: !1332, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !139, line: 733, size: 10240, elements: !1334)
!1334 = !{!1335, !1486}
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !139, line: 734, baseType: !1336, size: 10240)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !139, line: 734, size: 10240, elements: !1337)
!1337 = !{!1338, !1342, !1355, !1359, !1360, !1361, !1362, !1363, !1364, !1373, !1374, !1375, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1414, !1416, !1419, !1466, !1467, !1468, !1471, !1472, !1473, !1476, !1477, !1478, !1484, !1485}
!1338 = !DIDerivedType(tag: DW_TAG_member, scope: !1336, file: !139, line: 739, baseType: !1339, size: 512, align: 512)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1336, file: !139, line: 739, size: 512, align: 512, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1339, file: !139, line: 747, baseType: !65, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1336, file: !139, line: 750, baseType: !1343, size: 128, offset: 512)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1344, line: 218, size: 128, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1345 = !{!1346, !1353, !1354}
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1344, line: 219, baseType: !1347, size: 32)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1344, line: 219, size: 32, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1347, file: !1344, line: 220, baseType: !75, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1347, file: !1344, line: 221, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1344, line: 197, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1344, line: 197, elements: !631)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1343, file: !1344, line: 223, baseType: !7, size: 32, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1343, file: !1344, line: 224, baseType: !36, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1336, file: !139, line: 752, baseType: !1356, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!55, !1245, !55, !55, !55, !55}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1336, file: !139, line: 756, baseType: !55, size: 64, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1336, file: !139, line: 757, baseType: !55, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1336, file: !139, line: 760, baseType: !55, size: 64, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1336, file: !139, line: 761, baseType: !55, size: 64, offset: 896)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1336, file: !139, line: 763, baseType: !55, size: 64, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1336, file: !139, line: 764, baseType: !1365, size: 64, offset: 1024)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1367, line: 299, baseType: !1368)
!1367 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1367, line: 299, size: 64, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1368, file: !1367, line: 299, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1372, line: 18, baseType: !55)
!1372 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1336, file: !139, line: 773, baseType: !65, size: 32, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1336, file: !139, line: 785, baseType: !65, size: 32, offset: 1120)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1336, file: !139, line: 795, baseType: !1376, size: 64, offset: 1152)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !139, line: 726, size: 128, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1377, file: !139, line: 727, baseType: !503, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1377, file: !139, line: 728, baseType: !38, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1336, file: !139, line: 801, baseType: !55, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1336, file: !139, line: 804, baseType: !734, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1336, file: !139, line: 806, baseType: !38, size: 32, offset: 1344)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1336, file: !139, line: 808, baseType: !75, size: 32, offset: 1376)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1336, file: !139, line: 823, baseType: !911, size: 320, offset: 1408)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1336, file: !139, line: 825, baseType: !113, size: 128, offset: 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1336, file: !139, line: 845, baseType: !38, size: 32, offset: 1856)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1336, file: !139, line: 849, baseType: !55, size: 64, offset: 1920)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1336, file: !139, line: 850, baseType: !55, size: 64, offset: 1984)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1336, file: !139, line: 852, baseType: !55, size: 64, offset: 2048)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1336, file: !139, line: 853, baseType: !55, size: 64, offset: 2112)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1336, file: !139, line: 854, baseType: !736, size: 64, offset: 2176)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1336, file: !139, line: 855, baseType: !55, size: 64, offset: 2240)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1336, file: !139, line: 856, baseType: !55, size: 64, offset: 2304)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1336, file: !139, line: 857, baseType: !55, size: 64, offset: 2368)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1336, file: !139, line: 858, baseType: !55, size: 64, offset: 2432)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1336, file: !139, line: 865, baseType: !476, size: 32, offset: 2496)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1336, file: !139, line: 867, baseType: !75, size: 32, offset: 2528)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1336, file: !139, line: 869, baseType: !55, size: 64, offset: 2560)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1336, file: !139, line: 869, baseType: !55, size: 64, offset: 2624)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1336, file: !139, line: 869, baseType: !55, size: 64, offset: 2688)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1336, file: !139, line: 869, baseType: !55, size: 64, offset: 2752)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1336, file: !139, line: 870, baseType: !55, size: 64, offset: 2816)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1336, file: !139, line: 870, baseType: !55, size: 64, offset: 2880)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1336, file: !139, line: 870, baseType: !55, size: 64, offset: 2944)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1336, file: !139, line: 871, baseType: !55, size: 64, offset: 3008)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1336, file: !139, line: 871, baseType: !55, size: 64, offset: 3072)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1336, file: !139, line: 871, baseType: !55, size: 64, offset: 3136)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1336, file: !139, line: 871, baseType: !55, size: 64, offset: 3200)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1336, file: !139, line: 873, baseType: !1411, size: 3328, offset: 3264)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3328, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 52)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1336, file: !139, line: 875, baseType: !1415, size: 1280, offset: 6592)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 1280, elements: !841)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1336, file: !139, line: 877, baseType: !1417, size: 64, offset: 7872)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !139, line: 877, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1336, file: !139, line: 880, baseType: !1420, size: 1088, offset: 7936)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1421, line: 72, baseType: !1422)
!1421 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1421, line: 23, size: 1088, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1431, !1432, !1433, !1434, !1461, !1462, !1463}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1422, file: !1421, line: 28, baseType: !503, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1422, file: !1421, line: 38, baseType: !736, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1422, file: !1421, line: 40, baseType: !55, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1422, file: !1421, line: 43, baseType: !911, size: 320, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1422, file: !1421, line: 44, baseType: !1429, size: 64, offset: 512)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1421, line: 44, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1422, file: !1421, line: 48, baseType: !55, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1422, file: !1421, line: 59, baseType: !730, size: 256, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1422, file: !1421, line: 60, baseType: !36, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1422, file: !1421, line: 61, baseType: !1435, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1438, line: 13, size: 1216, elements: !1439)
!1438 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1437, file: !1438, line: 14, baseType: !36, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1437, file: !1438, line: 15, baseType: !55, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1437, file: !1438, line: 17, baseType: !55, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1437, file: !1438, line: 17, baseType: !55, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1437, file: !1438, line: 18, baseType: !55, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1437, file: !1438, line: 18, baseType: !55, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1437, file: !1438, line: 19, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1437, file: !1438, line: 21, baseType: !391, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1437, file: !1438, line: 23, baseType: !391, size: 64, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1437, file: !1438, line: 24, baseType: !391, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1437, file: !1438, line: 25, baseType: !391, size: 64, offset: 640)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1437, file: !1438, line: 26, baseType: !391, size: 64, offset: 704)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1437, file: !1438, line: 27, baseType: !391, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1437, file: !1438, line: 28, baseType: !391, size: 64, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1437, file: !1438, line: 29, baseType: !391, size: 64, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1437, file: !1438, line: 30, baseType: !391, size: 64, offset: 960)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1437, file: !1438, line: 31, baseType: !391, size: 64, offset: 1024)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1437, file: !1438, line: 32, baseType: !391, size: 64, offset: 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1437, file: !1438, line: 33, baseType: !391, size: 64, offset: 1152)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1422, file: !1421, line: 63, baseType: !65, size: 32, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1422, file: !1421, line: 69, baseType: !109, size: 16, offset: 1056)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1422, file: !1421, line: 70, baseType: !1464, size: 16, offset: 1072)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !100, line: 18, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !102, line: 23, baseType: !939)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1336, file: !139, line: 882, baseType: !55, size: 64, offset: 9024)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1336, file: !139, line: 885, baseType: !75, size: 32, offset: 9088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1336, file: !139, line: 886, baseType: !1469, size: 64, offset: 9152)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !139, line: 732, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1336, file: !139, line: 901, baseType: !1053, size: 64, offset: 9216)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1336, file: !139, line: 904, baseType: !1245, size: 64, offset: 9280)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1336, file: !139, line: 906, baseType: !1474, size: 64, offset: 9344)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !139, line: 906, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1336, file: !139, line: 930, baseType: !65, size: 32, offset: 9408)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1336, file: !139, line: 933, baseType: !65, size: 32, offset: 9440)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1336, file: !139, line: 935, baseType: !1479, size: 64, offset: 9472)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !260, line: 103, size: 64, elements: !1480)
!1480 = !{!1481}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1479, file: !260, line: 104, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !260, line: 101, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1336, file: !139, line: 940, baseType: !734, size: 64, offset: 9536)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1336, file: !139, line: 942, baseType: !1102, size: 256, offset: 9600)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1333, file: !139, line: 986, baseType: !1487, offset: 10240)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, elements: !854)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1320, file: !139, line: 640, baseType: !1489, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1367, line: 297, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1367, line: 297, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1490, file: !1367, line: 297, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1372, line: 19, baseType: !55)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !139, line: 646, baseType: !1495, size: 64, offset: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !139, line: 646, size: 64, elements: !1496)
!1496 = !{!1497, !1500}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1495, file: !139, line: 647, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !139, line: 542, baseType: !55)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1495, file: !139, line: 648, baseType: !1499, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1320, file: !139, line: 666, baseType: !38, size: 32, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1320, file: !139, line: 667, baseType: !1503, size: 64, offset: 384)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !139, line: 579, size: 320, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !139, line: 580, baseType: !911, size: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1320, file: !139, line: 670, baseType: !970, size: 8, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1320, file: !139, line: 681, baseType: !1509, size: 256, offset: 512)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1320, file: !139, line: 678, size: 256, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1509, file: !139, line: 679, baseType: !903, size: 192, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1509, file: !139, line: 680, baseType: !55, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1320, file: !139, line: 689, baseType: !113, size: 128, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1320, file: !139, line: 691, baseType: !1515, size: 64, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !139, line: 691, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1320, file: !139, line: 694, baseType: !1518, size: 64, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1521, line: 563, size: 1024, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1522 = !{!1523, !1527, !1528, !1532, !1536, !1540, !1718, !1722, !1726, !1730, !1731, !1732, !1736, !1740, !1747, !1751}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1520, file: !1521, line: 564, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1319}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1520, file: !1521, line: 569, baseType: !1524, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1520, file: !1521, line: 571, baseType: !1529, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!38, !1319, !55}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1520, file: !1521, line: 572, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!38, !1319}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1520, file: !1521, line: 578, baseType: !1537, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!38, !1319, !55, !55, !55}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1520, file: !1521, line: 580, baseType: !1541, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !139, line: 1184, baseType: !7)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1521, line: 512, size: 896, elements: !1547)
!1547 = !{!1548, !1557, !1558, !1565, !1572, !1582, !1711, !1712, !1714, !1716}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1521, line: 513, baseType: !1549, size: 320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !1521, line: 513, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1554, !1555, !1556}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1549, file: !1521, line: 514, baseType: !1319, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1549, file: !1521, line: 515, baseType: !1553, size: 32, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !7)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1549, file: !1521, line: 516, baseType: !55, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1549, file: !1521, line: 517, baseType: !55, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1549, file: !1521, line: 518, baseType: !55, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1521, line: 520, baseType: !138, size: 32, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1546, file: !1521, line: 522, baseType: !1559, size: 64, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1372, line: 22, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 22, size: 64, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1561, file: !1372, line: 22, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1372, line: 15, baseType: !55)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1546, file: !1521, line: 524, baseType: !1566, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1367, line: 372, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1367, line: 372, size: 64, elements: !1569)
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1568, file: !1367, line: 372, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1372, line: 16, baseType: !55)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1521, line: 527, baseType: !1573, size: 64, offset: 512)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1521, line: 527, size: 64, elements: !1574)
!1574 = !{!1575, !1581}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1573, file: !1521, line: 528, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1372, line: 21, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 21, size: 64, elements: !1578)
!1578 = !{!1579}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1577, file: !1372, line: 21, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1372, line: 14, baseType: !55)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1573, file: !1521, line: 529, baseType: !1560, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1546, file: !1521, line: 534, baseType: !1583, size: 64, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !139, line: 74, size: 512, align: 128, elements: !1585)
!1585 = !{!1586, !1587, !1705, !1710}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1584, file: !139, line: 75, baseType: !55, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !139, line: 83, baseType: !1588, size: 320, offset: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !139, line: 83, size: 320, elements: !1589)
!1589 = !{!1590, !1611, !1625, !1629, !1704}
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !139, line: 84, baseType: !1591, size: 320)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !139, line: 84, size: 320, elements: !1592)
!1592 = !{!1593, !1604, !1605, !1610}
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !139, line: 90, baseType: !1594, size: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !139, line: 90, size: 128, elements: !1595)
!1595 = !{!1596, !1597, !1602, !1603}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1594, file: !139, line: 91, baseType: !113, size: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, scope: !1594, file: !139, line: 94, baseType: !1598, size: 128)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1594, file: !139, line: 94, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1598, file: !139, line: 96, baseType: !36, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1598, file: !139, line: 98, baseType: !7, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1594, file: !139, line: 102, baseType: !113, size: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1594, file: !139, line: 103, baseType: !113, size: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1591, file: !139, line: 106, baseType: !426, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !139, line: 107, baseType: !1606, size: 64, offset: 192)
!1606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1591, file: !139, line: 107, size: 64, elements: !1607)
!1607 = !{!1608, !1609}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1606, file: !139, line: 108, baseType: !55, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1606, file: !139, line: 109, baseType: !55, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1591, file: !139, line: 117, baseType: !55, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !139, line: 119, baseType: !1612, size: 320)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !139, line: 119, size: 320, elements: !1613)
!1613 = !{!1614, !1615, !1618, !1619, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1612, file: !139, line: 124, baseType: !55, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1612, file: !139, line: 125, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !139, line: 125, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1612, file: !139, line: 126, baseType: !55, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1612, file: !139, line: 127, baseType: !55, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !139, line: 128, baseType: !1621, size: 64, offset: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !139, line: 128, size: 64, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1621, file: !139, line: 133, baseType: !55, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1621, file: !139, line: 138, baseType: !734, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !139, line: 141, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !139, line: 141, size: 64, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1626, file: !139, line: 142, baseType: !55, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !139, line: 144, baseType: !1630, size: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !139, line: 144, size: 128, elements: !1631)
!1631 = !{!1632, !1703}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1630, file: !139, line: 146, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !131, line: 126, size: 1216, elements: !1635)
!1635 = !{!1636, !1646, !1667, !1668, !1669, !1670, !1671, !1685, !1686, !1687}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1634, file: !131, line: 127, baseType: !1637, size: 384)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !131, line: 21, size: 384, elements: !1638)
!1638 = !{!1639, !1640, !1642, !1643, !1644, !1645}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1637, file: !131, line: 22, baseType: !55, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1637, file: !131, line: 23, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1637, file: !131, line: 24, baseType: !1641, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1637, file: !131, line: 25, baseType: !55, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1637, file: !131, line: 26, baseType: !55, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1637, file: !131, line: 27, baseType: !55, size: 64, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1634, file: !131, line: 128, baseType: !1647, size: 128, offset: 384)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1648, line: 105, size: 128, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1647, file: !1648, line: 110, baseType: !55, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1647, file: !1648, line: 118, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1648, line: 95, size: 448, elements: !1654)
!1654 = !{!1655, !1656, !1662, !1663, !1664, !1665, !1666}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1653, file: !1648, line: 96, baseType: !734, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1653, file: !1648, line: 97, baseType: !1657, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1648, line: 60, baseType: !1659)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1653, file: !1648, line: 98, baseType: !1657, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1653, file: !1648, line: 99, baseType: !970, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1653, file: !1648, line: 100, baseType: !970, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1653, file: !1648, line: 101, baseType: !787, size: 128, align: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1653, file: !1648, line: 102, baseType: !1661, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1634, file: !131, line: 129, baseType: !1141, size: 256, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1634, file: !131, line: 130, baseType: !130, size: 32, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1634, file: !131, line: 131, baseType: !7, size: 32, offset: 800)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1634, file: !131, line: 132, baseType: !55, size: 64, offset: 832)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1634, file: !131, line: 133, baseType: !1672, size: 64, offset: 896)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !131, line: 77, size: 192, elements: !1675)
!1675 = !{!1676, !1680, !1681}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1674, file: !131, line: 83, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !1583}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1674, file: !131, line: 89, baseType: !1541, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1674, file: !131, line: 100, baseType: !1682, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!38, !1633, !55, !55, !38}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1634, file: !131, line: 134, baseType: !36, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1634, file: !131, line: 135, baseType: !38, size: 32, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !131, line: 136, baseType: !1688, size: 128, offset: 1088)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1634, file: !131, line: 136, size: 128, elements: !1689)
!1689 = !{!1690, !1696}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1688, file: !131, line: 137, baseType: !1691, size: 128)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1692, line: 6, size: 128, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1691, file: !1692, line: 7, baseType: !503, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1691, file: !1692, line: 8, baseType: !503, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !131, line: 138, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1688, file: !131, line: 138, elements: !1698)
!1698 = !{!1699, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1697, file: !131, line: 138, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !131, line: 138, elements: !631)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1697, file: !131, line: 138, baseType: !1702)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1691, elements: !854)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1630, file: !139, line: 147, baseType: !36, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1588, file: !139, line: 161, baseType: !787, size: 128, align: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !139, line: 164, baseType: !1706, size: 32, offset: 384)
!1706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !139, line: 164, size: 32, elements: !1707)
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1706, file: !139, line: 169, baseType: !65, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1706, file: !139, line: 177, baseType: !7, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1584, file: !139, line: 181, baseType: !65, size: 32, offset: 416)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1546, file: !1521, line: 535, baseType: !1583, size: 64, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1546, file: !1521, line: 541, baseType: !1713, size: 64, offset: 704)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1546, file: !1521, line: 545, baseType: !1715, size: 64, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1546, file: !1521, line: 549, baseType: !1717, size: 64, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1367, line: 520, baseType: !1583)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1520, file: !1521, line: 581, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1544, !1545, !7}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1520, file: !1521, line: 582, baseType: !1723, size: 64, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1544, !1545, !55, !55}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1520, file: !1521, line: 584, baseType: !1727, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!55, !1319}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1520, file: !1521, line: 588, baseType: !1541, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1520, file: !1521, line: 591, baseType: !1541, size: 64, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1520, file: !1521, line: 597, baseType: !1733, size: 64, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!38, !1319, !55, !36, !38, !38}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1520, file: !1521, line: 603, baseType: !1737, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!32, !1319}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1520, file: !1521, line: 613, baseType: !1741, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!38, !1319, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1746, line: 54, flags: DIFlagFwdDecl)
!1746 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1520, file: !1521, line: 625, baseType: !1748, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1744, !1319, !55}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1520, file: !1521, line: 633, baseType: !1752, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1583, !1319, !55}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1320, file: !139, line: 697, baseType: !55, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1320, file: !139, line: 699, baseType: !1245, size: 64, offset: 1088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1320, file: !139, line: 700, baseType: !36, size: 64, offset: 1152)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1320, file: !139, line: 711, baseType: !734, size: 64, offset: 1216)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1320, file: !139, line: 717, baseType: !1744, size: 64, offset: 1280)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1320, file: !139, line: 722, baseType: !1761, offset: 1344)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !139, line: 570, elements: !631)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1238, file: !173, line: 1928, baseType: !55, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1238, file: !173, line: 1929, baseType: !1764, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!38, !430, !1245}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1238, file: !173, line: 1930, baseType: !1768, size: 64, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!38, !1245, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !173, line: 1061, baseType: !36)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1238, file: !173, line: 1931, baseType: !1764, size: 64, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1238, file: !173, line: 1932, baseType: !1774, size: 64, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!38, !1245, !57, !57, !38}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1238, file: !173, line: 1933, baseType: !1778, size: 64, offset: 1088)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!38, !38, !1245, !38}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1238, file: !173, line: 1934, baseType: !1782, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!38, !1245, !38, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !173, line: 1063, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1238, file: !173, line: 1935, baseType: !1356, size: 64, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1238, file: !173, line: 1936, baseType: !1789, size: 64, offset: 1280)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!38, !38}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1238, file: !173, line: 1937, baseType: !1782, size: 64, offset: 1344)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1238, file: !173, line: 1938, baseType: !1794, size: 64, offset: 1408)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!388, !1797, !1245, !56, !51, !7}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1746, line: 59, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1238, file: !173, line: 1939, baseType: !1800, size: 64, offset: 1472)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!388, !1245, !56, !1797, !51, !7}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1238, file: !173, line: 1940, baseType: !1804, size: 64, offset: 1536)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !1245}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1238, file: !173, line: 1941, baseType: !1808, size: 64, offset: 1600)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!38, !1245, !38, !1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1238, file: !173, line: 1942, baseType: !1814, size: 64, offset: 1664)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!391, !1245, !38, !57, !57}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1238, file: !173, line: 1944, baseType: !1818, size: 64, offset: 1728)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !718, !1245}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1238, file: !173, line: 1948, baseType: !1822, size: 64, offset: 1792)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!388, !1245, !57, !1245, !57, !51, !7}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1238, file: !173, line: 1950, baseType: !1826, size: 64, offset: 1856)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!57, !1245, !57, !1245, !57, !57, !7}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1238, file: !173, line: 1953, baseType: !1774, size: 64, offset: 1920)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1238, file: !173, line: 1954, baseType: !1831, size: 64, offset: 1984)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!38, !1834, !7}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !173, line: 1911, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1238, file: !173, line: 1955, baseType: !1837, size: 64, offset: 2048)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!38, !1834, !1287, !7}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !775, file: !173, line: 1018, baseType: !503, size: 64, offset: 1472)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !775, file: !173, line: 1020, baseType: !36, size: 64, offset: 1536)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !775, file: !173, line: 1023, baseType: !36, size: 64, offset: 1600)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !775, file: !173, line: 1027, baseType: !1844, size: 64, offset: 1664)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !775, file: !173, line: 1029, baseType: !426, size: 64, offset: 1728)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !775, file: !173, line: 1030, baseType: !1847, size: 32, offset: 1792)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1848, line: 8, baseType: !499)
!1848 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !775, file: !173, line: 1031, baseType: !1847, size: 32, offset: 1824)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !719, file: !720, line: 29, baseType: !36, size: 64, offset: 896)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !643, file: !173, line: 2077, baseType: !715, size: 64, offset: 1088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !643, file: !173, line: 2078, baseType: !715, size: 64, offset: 1152)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !643, file: !173, line: 2079, baseType: !715, size: 64, offset: 1216)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !643, file: !173, line: 2081, baseType: !1855, size: 64, offset: 1280)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!388, !581, !38, !356, !51, !57}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !643, file: !173, line: 2082, baseType: !1859, size: 64, offset: 1344)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!388, !581, !38, !32, !51, !57}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !643, file: !173, line: 2083, baseType: !1863, size: 64, offset: 1408)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1866, !430}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !178, line: 296, size: 1664, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1894, !1895, !1896}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1868, file: !178, line: 297, baseType: !623, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1868, file: !178, line: 298, baseType: !113, size: 128, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1868, file: !178, line: 299, baseType: !113, size: 128, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1868, file: !178, line: 300, baseType: !113, size: 128, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1868, file: !178, line: 301, baseType: !730, size: 256, offset: 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1868, file: !178, line: 302, baseType: !75, size: 32, offset: 768)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1868, file: !178, line: 303, baseType: !65, size: 32, offset: 800)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1868, file: !178, line: 304, baseType: !581, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1868, file: !178, line: 305, baseType: !1879, size: 64, offset: 896)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !178, line: 68, size: 64, elements: !1880)
!1880 = !{!1881, !1893}
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !178, line: 69, baseType: !1882, size: 32)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1879, file: !178, line: 69, size: 32, elements: !1883)
!1883 = !{!1884, !1885, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1882, file: !178, line: 70, baseType: !436, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1882, file: !178, line: 71, baseType: !445, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1882, file: !178, line: 72, baseType: !1887, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1888, line: 24, baseType: !1889)
!1888 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1888, line: 22, size: 32, elements: !1890)
!1890 = !{!1891}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1889, file: !1888, line: 23, baseType: !1892, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1888, line: 20, baseType: !442)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1879, file: !178, line: 74, baseType: !177, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1868, file: !178, line: 306, baseType: !57, size: 64, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1868, file: !178, line: 307, baseType: !55, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1868, file: !178, line: 308, baseType: !1897, size: 576, offset: 1088)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !178, line: 205, size: 576, elements: !1898)
!1898 = !{!1899, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1897, file: !178, line: 206, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !178, line: 66, baseType: !59)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1897, file: !178, line: 207, baseType: !1900, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1897, file: !178, line: 208, baseType: !1900, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1897, file: !178, line: 209, baseType: !1900, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1897, file: !178, line: 210, baseType: !1900, size: 64, offset: 256)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1897, file: !178, line: 211, baseType: !1900, size: 64, offset: 320)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1897, file: !178, line: 212, baseType: !1900, size: 64, offset: 384)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1897, file: !178, line: 213, baseType: !927, size: 64, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1897, file: !178, line: 214, baseType: !927, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !643, file: !173, line: 2085, baseType: !1910, size: 64, offset: 1472)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!391, !581, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1915, line: 15, size: 256, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1916 = !{!1917, !1918, !1919, !1920, !1921}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1914, file: !1915, line: 16, baseType: !1553, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1914, file: !1915, line: 19, baseType: !38, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1914, file: !1915, line: 26, baseType: !55, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1914, file: !1915, line: 33, baseType: !55, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1914, file: !1915, line: 36, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !139, line: 33, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !643, file: !173, line: 2087, baseType: !1910, size: 64, offset: 1536)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !643, file: !173, line: 2089, baseType: !613, size: 64, offset: 1600)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !582, file: !173, line: 1198, baseType: !1927, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !178, line: 324, size: 704, elements: !1930)
!1930 = !{!1931, !1935, !1939, !1943, !1944, !1945, !1946, !1947, !1952, !1957, !1961}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1929, file: !178, line: 325, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!38, !1867}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1929, file: !178, line: 326, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!1867, !581, !38}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1929, file: !178, line: 327, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !1867}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1929, file: !178, line: 328, baseType: !1932, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1929, file: !178, line: 329, baseType: !1932, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1929, file: !178, line: 330, baseType: !1932, size: 64, offset: 320)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1929, file: !178, line: 331, baseType: !689, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1929, file: !178, line: 334, baseType: !1948, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1951, !430}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1929, file: !178, line: 335, baseType: !1953, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!38, !430, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1929, file: !178, line: 337, baseType: !1958, size: 64, offset: 576)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!38, !430, !1951}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1929, file: !178, line: 339, baseType: !1962, size: 64, offset: 640)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!38, !581, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !582, file: !173, line: 1199, baseType: !1967, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !178, line: 430, size: 704, elements: !1970)
!1970 = !{!1971, !1977, !1978, !1982, !1983, !1984, !1999, !2022, !2026, !2027, !2050}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1969, file: !178, line: 431, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!38, !581, !38, !38, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1969, file: !178, line: 432, baseType: !689, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1969, file: !178, line: 433, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!38, !581, !7}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1969, file: !178, line: 434, baseType: !1979, size: 64, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1969, file: !178, line: 435, baseType: !689, size: 64, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1969, file: !178, line: 436, baseType: !1985, size: 64, offset: 320)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!38, !581, !38, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !178, line: 417, size: 256, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1989, file: !178, line: 418, baseType: !38, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1989, file: !178, line: 419, baseType: !7, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1989, file: !178, line: 420, baseType: !7, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1989, file: !178, line: 422, baseType: !7, size: 32, offset: 96)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1989, file: !178, line: 423, baseType: !7, size: 32, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1989, file: !178, line: 424, baseType: !7, size: 32, offset: 160)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1989, file: !178, line: 425, baseType: !7, size: 32, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1989, file: !178, line: 426, baseType: !7, size: 32, offset: 224)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1969, file: !178, line: 437, baseType: !2000, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!38, !581, !1879, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !178, line: 345, size: 960, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2004, file: !178, line: 346, baseType: !38, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2004, file: !178, line: 347, baseType: !503, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2004, file: !178, line: 348, baseType: !503, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2004, file: !178, line: 349, baseType: !503, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2004, file: !178, line: 350, baseType: !503, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2004, file: !178, line: 351, baseType: !503, size: 64, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2004, file: !178, line: 352, baseType: !503, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2004, file: !178, line: 353, baseType: !740, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2004, file: !178, line: 355, baseType: !740, size: 64, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2004, file: !178, line: 356, baseType: !38, size: 32, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2004, file: !178, line: 357, baseType: !38, size: 32, offset: 608)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2004, file: !178, line: 358, baseType: !503, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2004, file: !178, line: 359, baseType: !503, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2004, file: !178, line: 360, baseType: !503, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2004, file: !178, line: 361, baseType: !740, size: 64, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2004, file: !178, line: 362, baseType: !38, size: 32, offset: 896)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1969, file: !178, line: 438, baseType: !2023, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!38, !581, !1965, !2003}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1969, file: !178, line: 440, baseType: !2000, size: 64, offset: 512)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1969, file: !178, line: 441, baseType: !2028, size: 64, offset: 576)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!38, !581, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !178, line: 411, size: 1408, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2032, file: !178, line: 412, baseType: !7, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2032, file: !178, line: 413, baseType: !2036, size: 1344, offset: 64)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2037, size: 1344, elements: !357)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !178, line: 397, size: 448, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2049}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2037, file: !178, line: 398, baseType: !7, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2037, file: !178, line: 399, baseType: !7, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2037, file: !178, line: 401, baseType: !7, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2037, file: !178, line: 402, baseType: !7, size: 32, offset: 96)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2037, file: !178, line: 403, baseType: !7, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2037, file: !178, line: 404, baseType: !7, size: 32, offset: 160)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2037, file: !178, line: 405, baseType: !7, size: 32, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2037, file: !178, line: 406, baseType: !505, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2037, file: !178, line: 407, baseType: !2048, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !41, line: 132, baseType: !503)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2037, file: !178, line: 408, baseType: !2048, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1969, file: !178, line: 442, baseType: !1979, size: 64, offset: 640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !582, file: !173, line: 1200, baseType: !2052, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !173, line: 54, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !582, file: !173, line: 1201, baseType: !55, size: 64, offset: 640)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !582, file: !173, line: 1202, baseType: !55, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !582, file: !173, line: 1203, baseType: !55, size: 64, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !582, file: !173, line: 1204, baseType: !465, size: 64, offset: 832)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !582, file: !173, line: 1205, baseType: !911, size: 320, offset: 896)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !582, file: !173, line: 1206, baseType: !38, size: 32, offset: 1216)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !582, file: !173, line: 1207, baseType: !65, size: 32, offset: 1248)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !582, file: !173, line: 1209, baseType: !36, size: 64, offset: 1280)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !582, file: !173, line: 1211, baseType: !2064, size: 64, offset: 1344)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !173, line: 1211, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !582, file: !173, line: 1223, baseType: !2069, size: 64, offset: 1408)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !482, line: 34, size: 64, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2069, file: !482, line: 35, baseType: !485, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !582, file: !173, line: 1224, baseType: !113, size: 128, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !582, file: !173, line: 1225, baseType: !2074, size: 64, offset: 1600)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2076, line: 40, size: 7424, elements: !2077)
!2076 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2077 = !{!2078, !2080, !2081, !2084, !2088, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2115, !2116}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2075, file: !2076, line: 41, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !41, line: 131, baseType: !503)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2075, file: !2076, line: 42, baseType: !2079, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2075, file: !2076, line: 43, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1746, line: 1453, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2075, file: !2076, line: 44, baseType: !2085, size: 64, offset: 192)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2087, line: 74, flags: DIFlagFwdDecl)
!2087 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2075, file: !2076, line: 45, baseType: !2089, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2076, line: 45, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2075, file: !2076, line: 46, baseType: !55, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2075, file: !2076, line: 47, baseType: !970, size: 8, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2075, file: !2076, line: 48, baseType: !99, size: 8, offset: 392)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2075, file: !2076, line: 49, baseType: !970, size: 8, offset: 400)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2075, file: !2076, line: 50, baseType: !970, size: 8, offset: 408)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2075, file: !2076, line: 51, baseType: !586, size: 32, offset: 416)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2075, file: !2076, line: 52, baseType: !65, size: 32, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2075, file: !2076, line: 53, baseType: !75, size: 32, offset: 480)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2075, file: !2076, line: 54, baseType: !430, size: 64, offset: 512)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2075, file: !2076, line: 55, baseType: !36, size: 64, offset: 576)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2075, file: !2076, line: 56, baseType: !36, size: 64, offset: 640)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2075, file: !2076, line: 57, baseType: !2103, size: 64, offset: 704)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2076, line: 57, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2075, file: !2076, line: 58, baseType: !730, size: 256, offset: 768)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2075, file: !2076, line: 60, baseType: !38, size: 32, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2075, file: !2076, line: 61, baseType: !38, size: 32, offset: 1056)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2075, file: !2076, line: 62, baseType: !321, size: 64, offset: 1088)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2075, file: !2076, line: 65, baseType: !730, size: 256, offset: 1152)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2075, file: !2076, line: 66, baseType: !581, size: 64, offset: 1408)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2075, file: !2076, line: 68, baseType: !2113, size: 64, offset: 1472)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2076, line: 68, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2075, file: !2076, line: 72, baseType: !970, size: 8, offset: 1536)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2075, file: !2076, line: 77, baseType: !2117, size: 5824, offset: 1600)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !190, line: 705, size: 5824, elements: !2118)
!2118 = !{!2119, !2120, !2122, !2125, !2126, !2179, !2268, !2269, !2270, !2271, !2272, !2279, !2454, !2467, !2477, !2481, !2483, !2484, !2485, !2489, !2496, !2497, !2500, !2503, !2507, !2510, !2511, !2512, !2513, !2514, !2515, !2572, !2573, !2574, !2577, !2580, !2589, !2590, !2591, !2592, !2593, !2594}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2117, file: !190, line: 706, baseType: !315, size: 512)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2117, file: !190, line: 707, baseType: !2121, size: 64, offset: 512)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2117, file: !190, line: 709, baseType: !2123, size: 64, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !190, line: 37, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2117, file: !190, line: 711, baseType: !32, size: 64, offset: 640)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2117, file: !190, line: 712, baseType: !2127, size: 64, offset: 704)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !190, line: 89, size: 384, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2139, !2144, !2148}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2129, file: !190, line: 90, baseType: !32, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2129, file: !190, line: 91, baseType: !402, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2129, file: !190, line: 92, baseType: !2134, size: 64, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!38, !2137, !351}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2129, file: !190, line: 93, baseType: !2140, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!356, !2137, !2143, !1166, !1167}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2129, file: !190, line: 95, baseType: !2145, size: 64, offset: 256)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{null, !2121}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2129, file: !190, line: 97, baseType: !2149, size: 64, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !202, line: 286, size: 1472, elements: !2152)
!2152 = !{!2153, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2151, file: !202, line: 287, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!38, !2121}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2151, file: !202, line: 288, baseType: !2145, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2151, file: !202, line: 289, baseType: !2154, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2151, file: !202, line: 290, baseType: !2154, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2151, file: !202, line: 291, baseType: !2154, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2151, file: !202, line: 292, baseType: !2154, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2151, file: !202, line: 293, baseType: !2154, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2151, file: !202, line: 294, baseType: !2154, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2151, file: !202, line: 295, baseType: !2154, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2151, file: !202, line: 296, baseType: !2154, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2151, file: !202, line: 297, baseType: !2154, size: 64, offset: 640)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2151, file: !202, line: 298, baseType: !2154, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2151, file: !202, line: 299, baseType: !2154, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2151, file: !202, line: 300, baseType: !2154, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2151, file: !202, line: 301, baseType: !2154, size: 64, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2151, file: !202, line: 302, baseType: !2154, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2151, file: !202, line: 303, baseType: !2154, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2151, file: !202, line: 304, baseType: !2154, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2151, file: !202, line: 305, baseType: !2154, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2151, file: !202, line: 306, baseType: !2154, size: 64, offset: 1216)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2151, file: !202, line: 307, baseType: !2154, size: 64, offset: 1280)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2151, file: !202, line: 308, baseType: !2154, size: 64, offset: 1344)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2151, file: !202, line: 309, baseType: !2154, size: 64, offset: 1408)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2117, file: !190, line: 714, baseType: !2180, size: 64, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2183, line: 80, size: 1344, elements: !2184)
!2183 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2184 = !{!2185, !2186, !2187, !2188, !2189, !2190, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2267}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2182, file: !2183, line: 81, baseType: !32, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2182, file: !2183, line: 82, baseType: !32, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2182, file: !2183, line: 83, baseType: !402, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2182, file: !2183, line: 84, baseType: !402, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2182, file: !2183, line: 85, baseType: !402, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2182, file: !2183, line: 87, baseType: !2191, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!38, !2121, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !184, line: 96, size: 1152, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2217, !2230, !2231, !2232, !2233, !2234, !2242, !2243, !2244, !2245, !2246, !2247}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2195, file: !184, line: 97, baseType: !32, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2195, file: !184, line: 98, baseType: !2180, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2195, file: !184, line: 100, baseType: !302, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2195, file: !184, line: 101, baseType: !32, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2195, file: !184, line: 103, baseType: !970, size: 8, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2195, file: !184, line: 104, baseType: !183, size: 32, offset: 288)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2195, file: !184, line: 106, baseType: !2204, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2207, line: 282, size: 1600, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2208 = !{!2209, !2211, !2212, !2216}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2206, file: !2207, line: 283, baseType: !2210, size: 256)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2206, file: !2207, line: 284, baseType: !2210, size: 256, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2206, file: !2207, line: 285, baseType: !2213, size: 1024, offset: 512)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1024, elements: !2214)
!2214 = !{!2215}
!2215 = !DISubrange(count: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2206, file: !2207, line: 286, baseType: !1447, size: 64, offset: 1536)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2195, file: !184, line: 107, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2207, line: 217, size: 256, elements: !2221)
!2221 = !{!2222, !2226, !2228, !2229}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2220, file: !2207, line: 218, baseType: !2223, size: 128)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 16)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2220, file: !2207, line: 219, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2207, line: 15, baseType: !55)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2220, file: !2207, line: 220, baseType: !500, size: 32, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2220, file: !2207, line: 221, baseType: !500, size: 32, offset: 224)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2195, file: !184, line: 109, baseType: !2154, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2195, file: !184, line: 110, baseType: !2145, size: 64, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2195, file: !184, line: 111, baseType: !2154, size: 64, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2195, file: !184, line: 112, baseType: !2145, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2195, file: !184, line: 113, baseType: !2235, size: 64, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!38, !2121, !2238}
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !202, line: 60, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !202, line: 58, size: 32, elements: !2240)
!2240 = !{!2241}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2239, file: !202, line: 59, baseType: !38, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2195, file: !184, line: 114, baseType: !2154, size: 64, offset: 768)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2195, file: !184, line: 115, baseType: !402, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2195, file: !184, line: 116, baseType: !402, size: 64, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2195, file: !184, line: 118, baseType: !2149, size: 64, offset: 960)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2195, file: !184, line: 119, baseType: !2145, size: 64, offset: 1024)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2195, file: !184, line: 121, baseType: !2248, size: 64, offset: 1088)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !184, line: 121, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2182, file: !2183, line: 88, baseType: !2134, size: 64, offset: 384)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2182, file: !2183, line: 89, baseType: !2154, size: 64, offset: 448)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2182, file: !2183, line: 90, baseType: !2145, size: 64, offset: 512)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2182, file: !2183, line: 91, baseType: !2145, size: 64, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2182, file: !2183, line: 92, baseType: !2145, size: 64, offset: 640)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2182, file: !2183, line: 94, baseType: !2154, size: 64, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2182, file: !2183, line: 95, baseType: !2154, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2182, file: !2183, line: 97, baseType: !2235, size: 64, offset: 832)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2182, file: !2183, line: 98, baseType: !2154, size: 64, offset: 896)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2182, file: !2183, line: 100, baseType: !2154, size: 64, offset: 960)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2182, file: !2183, line: 102, baseType: !2154, size: 64, offset: 1024)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2182, file: !2183, line: 103, baseType: !2145, size: 64, offset: 1088)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2182, file: !2183, line: 105, baseType: !2149, size: 64, offset: 1152)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2182, file: !2183, line: 107, baseType: !2264, size: 64, offset: 1216)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2183, line: 107, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2182, file: !2183, line: 109, baseType: !970, size: 8, offset: 1280)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2117, file: !190, line: 715, baseType: !2194, size: 64, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2117, file: !190, line: 717, baseType: !36, size: 64, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2117, file: !190, line: 719, baseType: !36, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2117, file: !190, line: 721, baseType: !730, size: 256, offset: 1024)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2117, file: !190, line: 725, baseType: !2273, size: 448, offset: 1280)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !190, line: 517, size: 448, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2273, file: !190, line: 518, baseType: !113, size: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2273, file: !190, line: 519, baseType: !113, size: 128, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2273, file: !190, line: 520, baseType: !113, size: 128, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2273, file: !190, line: 521, baseType: !189, size: 32, offset: 384)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2117, file: !190, line: 726, baseType: !2280, size: 2496, offset: 1728)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !202, line: 663, size: 2496, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2337, !2338, !2339, !2340, !2341, !2342, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2447, !2451}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2280, file: !202, line: 664, baseType: !2238, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2280, file: !202, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2280, file: !202, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2280, file: !202, line: 667, baseType: !970, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2280, file: !202, line: 668, baseType: !970, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2280, file: !202, line: 669, baseType: !970, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2280, file: !202, line: 670, baseType: !970, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2280, file: !202, line: 671, baseType: !970, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2280, file: !202, line: 672, baseType: !970, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2280, file: !202, line: 673, baseType: !970, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2280, file: !202, line: 674, baseType: !970, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2280, file: !202, line: 675, baseType: !499, size: 32, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2280, file: !202, line: 676, baseType: !75, size: 32, offset: 96)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2280, file: !202, line: 678, baseType: !113, size: 128, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2280, file: !202, line: 679, baseType: !1141, size: 256, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2280, file: !202, line: 680, baseType: !2298, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2300, line: 43, size: 1536, elements: !2301)
!2300 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2309, !2321, !2322, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2299, file: !2300, line: 44, baseType: !32, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2299, file: !2300, line: 45, baseType: !38, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2299, file: !2300, line: 46, baseType: !113, size: 128, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2299, file: !2300, line: 47, baseType: !75, size: 32, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2299, file: !2300, line: 48, baseType: !2307, size: 64, offset: 320)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !202, line: 629, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2299, file: !2300, line: 49, baseType: !2310, size: 320, offset: 384)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2311, line: 11, size: 320, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2312 = !{!2313, !2314, !2315, !2320}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2310, file: !2311, line: 16, baseType: !623, size: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2310, file: !2311, line: 17, baseType: !55, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2310, file: !2311, line: 18, baseType: !2316, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !2311, line: 19, baseType: !499, size: 32, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2299, file: !2300, line: 50, baseType: !55, size: 64, offset: 704)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2299, file: !2300, line: 51, baseType: !2323, size: 64, offset: 768)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2324, line: 29, baseType: !740)
!2324 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2299, file: !2300, line: 52, baseType: !2323, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2299, file: !2300, line: 53, baseType: !2323, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2299, file: !2300, line: 54, baseType: !2323, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2299, file: !2300, line: 55, baseType: !2323, size: 64, offset: 1024)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2299, file: !2300, line: 56, baseType: !55, size: 64, offset: 1088)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2299, file: !2300, line: 57, baseType: !55, size: 64, offset: 1152)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2299, file: !2300, line: 58, baseType: !55, size: 64, offset: 1216)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2299, file: !2300, line: 59, baseType: !55, size: 64, offset: 1280)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2299, file: !2300, line: 60, baseType: !55, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2299, file: !2300, line: 61, baseType: !2121, size: 64, offset: 1408)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2299, file: !2300, line: 62, baseType: !970, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2299, file: !2300, line: 63, baseType: !970, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2280, file: !202, line: 681, baseType: !970, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2280, file: !202, line: 682, baseType: !970, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2280, file: !202, line: 683, baseType: !970, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2280, file: !202, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2280, file: !202, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2280, file: !202, line: 690, baseType: !2343, size: 512, offset: 640)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !197, line: 118, size: 512, elements: !2344)
!2344 = !{!2345, !2351, !2352, !2357, !2409, !2410, !2411, !2412}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2343, file: !197, line: 119, baseType: !2346, size: 256)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2347, line: 9, size: 256, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2346, file: !2347, line: 10, baseType: !903, size: 192, align: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2346, file: !2347, line: 11, baseType: !2323, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2343, file: !197, line: 120, baseType: !2323, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2343, file: !197, line: 121, baseType: !2353, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!196, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2343, file: !197, line: 122, baseType: !2358, size: 64, offset: 384)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !197, line: 159, size: 512, align: 512, elements: !2360)
!2360 = !{!2361, !2386, !2387, !2390, !2395, !2396, !2404, !2408}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2359, file: !197, line: 160, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !197, line: 215, size: 4608, align: 512, elements: !2364)
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2363, file: !197, line: 216, baseType: !743, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2363, file: !197, line: 217, baseType: !7, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2363, file: !197, line: 218, baseType: !7, size: 32, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2363, file: !197, line: 219, baseType: !7, size: 32, offset: 96)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2363, file: !197, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2363, file: !197, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2363, file: !197, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2363, file: !197, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2363, file: !197, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2363, file: !197, line: 226, baseType: !7, size: 32, offset: 160)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2363, file: !197, line: 227, baseType: !42, size: 16, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2363, file: !197, line: 228, baseType: !42, size: 16, offset: 208)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2363, file: !197, line: 229, baseType: !7, size: 32, offset: 224)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2363, file: !197, line: 235, baseType: !2323, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2363, file: !197, line: 236, baseType: !2356, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2363, file: !197, line: 237, baseType: !2323, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2363, file: !197, line: 238, baseType: !2356, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2363, file: !197, line: 239, baseType: !2383, size: 4096, align: 512, offset: 512)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2359, size: 4096, align: 512, elements: !2384)
!2384 = !{!2385}
!2385 = !DISubrange(count: 8)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2359, file: !197, line: 161, baseType: !7, size: 32, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2359, file: !197, line: 162, baseType: !2388, size: 32, offset: 96)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !2389)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !53, line: 96, baseType: !38)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2359, file: !197, line: 163, baseType: !2391, size: 32, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !472, line: 274, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !472, line: 274, size: 32, elements: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2392, file: !472, line: 274, baseType: !476, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2359, file: !197, line: 164, baseType: !2356, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2359, file: !197, line: 165, baseType: !2397, size: 128, offset: 256)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2347, line: 14, size: 128, elements: !2398)
!2398 = !{!2399}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2397, file: !2347, line: 15, baseType: !2400, size: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !904, line: 26, size: 128, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2400, file: !904, line: 27, baseType: !1183, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2400, file: !904, line: 28, baseType: !908, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2359, file: !197, line: 166, baseType: !2405, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2323}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2359, file: !197, line: 167, baseType: !2323, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2343, file: !197, line: 123, baseType: !99, size: 8, offset: 448)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2343, file: !197, line: 124, baseType: !99, size: 8, offset: 456)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2343, file: !197, line: 125, baseType: !99, size: 8, offset: 464)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2343, file: !197, line: 126, baseType: !99, size: 8, offset: 472)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2280, file: !202, line: 691, baseType: !503, size: 64, offset: 1152)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2280, file: !202, line: 692, baseType: !1102, size: 256, offset: 1216)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2280, file: !202, line: 693, baseType: !70, size: 192, offset: 1472)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2280, file: !202, line: 694, baseType: !2307, size: 64, offset: 1664)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2280, file: !202, line: 695, baseType: !65, size: 32, offset: 1728)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2280, file: !202, line: 696, baseType: !65, size: 32, offset: 1760)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2280, file: !202, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2280, file: !202, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2280, file: !202, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2280, file: !202, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2280, file: !202, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2280, file: !202, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2280, file: !202, line: 703, baseType: !970, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2280, file: !202, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2280, file: !202, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2280, file: !202, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2280, file: !202, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2280, file: !202, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2280, file: !202, line: 709, baseType: !7, size: 32, offset: 1824)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2280, file: !202, line: 710, baseType: !201, size: 32, offset: 1856)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2280, file: !202, line: 711, baseType: !209, size: 32, offset: 1888)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2280, file: !202, line: 712, baseType: !209, size: 32, offset: 1920)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2280, file: !202, line: 713, baseType: !38, size: 32, offset: 1952)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2280, file: !202, line: 714, baseType: !38, size: 32, offset: 1984)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2280, file: !202, line: 715, baseType: !503, size: 64, offset: 2048)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2280, file: !202, line: 716, baseType: !503, size: 64, offset: 2112)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2280, file: !202, line: 717, baseType: !503, size: 64, offset: 2176)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2280, file: !202, line: 718, baseType: !503, size: 64, offset: 2240)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2280, file: !202, line: 720, baseType: !2442, size: 64, offset: 2304)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !202, line: 632, size: 64, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2443, file: !202, line: 633, baseType: !75, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2443, file: !202, line: 634, baseType: !7, size: 32, offset: 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2280, file: !202, line: 721, baseType: !2448, size: 64, offset: 2368)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !2121, !896}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2280, file: !202, line: 722, baseType: !2452, size: 64, offset: 2432)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !202, line: 722, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2117, file: !190, line: 727, baseType: !2455, size: 64, offset: 4224)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !202, line: 742, size: 1792, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2464, !2465, !2466}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2456, file: !202, line: 743, baseType: !2151, size: 1472)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2456, file: !202, line: 744, baseType: !2154, size: 64, offset: 1472)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2456, file: !202, line: 745, baseType: !2461, size: 64, offset: 1536)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !2121, !970}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2456, file: !202, line: 746, baseType: !2154, size: 64, offset: 1600)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2456, file: !202, line: 747, baseType: !2145, size: 64, offset: 1664)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2456, file: !202, line: 748, baseType: !2145, size: 64, offset: 1728)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2117, file: !190, line: 736, baseType: !2468, size: 128, offset: 4288)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !190, line: 529, size: 128, elements: !2469)
!2469 = !{!2470, !2474}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2468, file: !190, line: 531, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2473, line: 13, flags: DIFlagFwdDecl)
!2473 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2468, file: !190, line: 532, baseType: !2475, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !190, line: 49, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2117, file: !190, line: 738, baseType: !2478, size: 64, offset: 4416)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2480)
!2480 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !190, line: 738, flags: DIFlagFwdDecl)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2117, file: !190, line: 740, baseType: !2482, size: 64, offset: 4480)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2117, file: !190, line: 741, baseType: !503, size: 64, offset: 4544)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2117, file: !190, line: 746, baseType: !503, size: 64, offset: 4608)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2117, file: !190, line: 747, baseType: !2486, size: 64, offset: 4672)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2488)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !190, line: 747, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2117, file: !190, line: 749, baseType: !2490, size: 64, offset: 4736)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !190, line: 428, size: 128, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2491, file: !190, line: 433, baseType: !7, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2491, file: !190, line: 434, baseType: !7, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2491, file: !190, line: 435, baseType: !55, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2117, file: !190, line: 751, baseType: !113, size: 128, offset: 4800)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2117, file: !190, line: 762, baseType: !2498, size: 64, offset: 4928)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !190, line: 762, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2117, file: !190, line: 770, baseType: !2501, offset: 4992)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2502, line: 5, elements: !631)
!2502 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2117, file: !190, line: 772, baseType: !2504, size: 64, offset: 4992)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2506, line: 18, flags: DIFlagFwdDecl)
!2506 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2117, file: !190, line: 773, baseType: !2508, size: 64, offset: 5056)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2183, line: 22, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2117, file: !190, line: 776, baseType: !38, size: 32, offset: 5120)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2117, file: !190, line: 778, baseType: !586, size: 32, offset: 5152)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2117, file: !190, line: 779, baseType: !499, size: 32, offset: 5184)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2117, file: !190, line: 781, baseType: !75, size: 32, offset: 5216)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2117, file: !190, line: 782, baseType: !113, size: 128, offset: 5248)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2117, file: !190, line: 784, baseType: !2516, size: 64, offset: 5376)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2518)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2519, line: 52, size: 768, elements: !2520)
!2519 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2529, !2533, !2534, !2535, !2563, !2567, !2571}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2518, file: !2519, line: 53, baseType: !32, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2518, file: !2519, line: 55, baseType: !402, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2518, file: !2519, line: 56, baseType: !402, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2518, file: !2519, line: 58, baseType: !2134, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2518, file: !2519, line: 59, baseType: !2526, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!356, !2137, !2143}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2518, file: !2519, line: 61, baseType: !2530, size: 64, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !2516}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2518, file: !2519, line: 62, baseType: !2145, size: 64, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2518, file: !2519, line: 64, baseType: !2154, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2518, file: !2519, line: 66, baseType: !2536, size: 64, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2538)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !2539)
!2539 = !{!2540, !2541, !2545, !2549, !2555, !2559}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2538, file: !167, line: 40, baseType: !166, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2538, file: !167, line: 41, baseType: !2542, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!970}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2538, file: !167, line: 42, baseType: !2546, size: 64, offset: 128)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!36}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2538, file: !167, line: 43, baseType: !2550, size: 64, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!1447, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !167, line: 19, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2538, file: !167, line: 44, baseType: !2556, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!1447}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2538, file: !167, line: 45, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !36}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2518, file: !2519, line: 67, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!1447, !2137}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2518, file: !2519, line: 69, baseType: !2568, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2137, !1166, !1167}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2518, file: !2519, line: 71, baseType: !2149, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2117, file: !190, line: 785, baseType: !402, size: 64, offset: 5440)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2117, file: !190, line: 787, baseType: !2145, size: 64, offset: 5504)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2117, file: !190, line: 788, baseType: !2575, size: 64, offset: 5568)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !190, line: 46, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2117, file: !190, line: 789, baseType: !2578, size: 64, offset: 5632)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !190, line: 48, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2117, file: !190, line: 791, baseType: !2581, size: 64, offset: 5696)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !190, line: 597, size: 128, elements: !2583)
!2583 = !{!2584, !2585, !2586, !2587, !2588}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2582, file: !190, line: 598, baseType: !216, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2582, file: !190, line: 599, baseType: !225, size: 32, offset: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2582, file: !190, line: 600, baseType: !230, size: 32, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2582, file: !190, line: 601, baseType: !970, size: 8, offset: 96)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2582, file: !190, line: 602, baseType: !970, size: 8, offset: 104)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2117, file: !190, line: 793, baseType: !235, size: 32, offset: 5760)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2117, file: !190, line: 795, baseType: !970, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2117, file: !190, line: 796, baseType: !970, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2117, file: !190, line: 797, baseType: !970, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2117, file: !190, line: 798, baseType: !970, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2117, file: !190, line: 799, baseType: !970, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !582, file: !173, line: 1226, baseType: !2596, size: 64, offset: 1664)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !173, line: 1226, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !582, file: !173, line: 1227, baseType: !2599, size: 64, offset: 1728)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !242, line: 163, size: 6848, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2660, !2661, !2662, !2663, !2665, !2666, !2667}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2600, file: !242, line: 164, baseType: !503, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2600, file: !242, line: 165, baseType: !903, size: 192, align: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2600, file: !242, line: 166, baseType: !113, size: 128, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2600, file: !242, line: 167, baseType: !55, size: 64, offset: 384)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2600, file: !242, line: 168, baseType: !55, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2600, file: !242, line: 170, baseType: !2608, size: 32, offset: 512)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2609, line: 19, size: 32, elements: !2610)
!2609 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2608, file: !2609, line: 20, baseType: !832, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2600, file: !242, line: 171, baseType: !7, size: 32, offset: 544)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2600, file: !242, line: 172, baseType: !7, size: 32, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2600, file: !242, line: 173, baseType: !7, size: 32, offset: 608)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2600, file: !242, line: 173, baseType: !7, size: 32, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2600, file: !242, line: 179, baseType: !734, size: 64, offset: 704)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2600, file: !242, line: 184, baseType: !55, size: 64, offset: 768)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2600, file: !242, line: 186, baseType: !2619, size: 4672, offset: 832)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !242, line: 105, size: 4672, elements: !2620)
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2645, !2646, !2647, !2648, !2649, !2658, !2659}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2619, file: !242, line: 106, baseType: !2599, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2619, file: !242, line: 108, baseType: !55, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2619, file: !242, line: 109, baseType: !55, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2619, file: !242, line: 111, baseType: !113, size: 128, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2619, file: !242, line: 112, baseType: !113, size: 128, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2619, file: !242, line: 113, baseType: !113, size: 128, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2619, file: !242, line: 114, baseType: !113, size: 128, offset: 576)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2619, file: !242, line: 115, baseType: !75, size: 32, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2619, file: !242, line: 117, baseType: !65, size: 32, offset: 736)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2619, file: !242, line: 118, baseType: !1415, size: 1280, offset: 768)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2619, file: !242, line: 120, baseType: !55, size: 64, offset: 2048)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2619, file: !242, line: 121, baseType: !55, size: 64, offset: 2112)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2619, file: !242, line: 122, baseType: !55, size: 64, offset: 2176)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2619, file: !242, line: 123, baseType: !55, size: 64, offset: 2240)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2619, file: !242, line: 124, baseType: !55, size: 64, offset: 2304)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2619, file: !242, line: 132, baseType: !55, size: 64, offset: 2368)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2619, file: !242, line: 133, baseType: !55, size: 64, offset: 2432)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2619, file: !242, line: 135, baseType: !2639, size: 384, offset: 2496)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2640, line: 76, size: 384, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2641 = !{!2642, !2643, !2644}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2639, file: !2640, line: 78, baseType: !1028, size: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2639, file: !2640, line: 80, baseType: !7, size: 32, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2639, file: !2640, line: 81, baseType: !743, size: 32, offset: 352)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2619, file: !242, line: 136, baseType: !38, size: 32, offset: 2880)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2619, file: !242, line: 137, baseType: !241, size: 32, offset: 2912)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2619, file: !242, line: 139, baseType: !75, size: 32, offset: 2944)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2619, file: !242, line: 140, baseType: !113, size: 128, offset: 3008)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2619, file: !242, line: 141, baseType: !2650, size: 704, offset: 3136)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1103, line: 111, size: 704, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2657}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2650, file: !1103, line: 112, baseType: !1102, size: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2650, file: !1103, line: 113, baseType: !2310, size: 320, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2650, file: !1103, line: 116, baseType: !2655, size: 64, offset: 576)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1103, line: 18, flags: DIFlagFwdDecl)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2650, file: !1103, line: 117, baseType: !38, size: 32, offset: 640)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2619, file: !242, line: 142, baseType: !2650, size: 704, offset: 3840)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2619, file: !242, line: 144, baseType: !113, size: 128, offset: 4544)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2600, file: !242, line: 187, baseType: !113, size: 128, offset: 5504)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2600, file: !242, line: 193, baseType: !70, size: 192, offset: 5632)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2600, file: !242, line: 195, baseType: !2121, size: 64, offset: 5824)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2600, file: !242, line: 196, baseType: !2664, size: 512, offset: 5888)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !361)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2600, file: !242, line: 197, baseType: !2121, size: 64, offset: 6400)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2600, file: !242, line: 199, baseType: !2310, size: 320, offset: 6464)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2600, file: !242, line: 202, baseType: !465, size: 64, offset: 6784)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !582, file: !173, line: 1228, baseType: !2669, size: 64, offset: 1792)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !173, line: 1228, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !582, file: !173, line: 1229, baseType: !623, size: 128, offset: 1856)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !582, file: !173, line: 1230, baseType: !7, size: 32, offset: 1984)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !582, file: !173, line: 1231, baseType: !2674, size: 2496, offset: 2048)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !178, line: 521, size: 2496, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2680, !2712}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2674, file: !178, line: 522, baseType: !7, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2674, file: !178, line: 523, baseType: !911, size: 320, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2674, file: !178, line: 524, baseType: !2679, size: 192, offset: 384)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 192, elements: !357)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2674, file: !178, line: 525, baseType: !2681, size: 1728, offset: 576)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 1728, elements: !357)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !178, line: 222, size: 576, elements: !2683)
!2683 = !{!2684, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2682, file: !178, line: 223, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !178, line: 445, size: 256, elements: !2687)
!2687 = !{!2688, !2689, !2702, !2703}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2686, file: !178, line: 446, baseType: !38, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2686, file: !178, line: 447, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !178, line: 312, size: 512, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2692, file: !178, line: 313, baseType: !689, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2692, file: !178, line: 314, baseType: !689, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2692, file: !178, line: 315, baseType: !689, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2692, file: !178, line: 316, baseType: !689, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2692, file: !178, line: 317, baseType: !1932, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2692, file: !178, line: 318, baseType: !1932, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2692, file: !178, line: 319, baseType: !1932, size: 64, offset: 384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2692, file: !178, line: 320, baseType: !1962, size: 64, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2686, file: !178, line: 448, baseType: !302, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2686, file: !178, line: 449, baseType: !2685, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2682, file: !178, line: 224, baseType: !38, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2682, file: !178, line: 226, baseType: !113, size: 128, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2682, file: !178, line: 227, baseType: !55, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2682, file: !178, line: 228, baseType: !7, size: 32, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2682, file: !178, line: 229, baseType: !7, size: 32, offset: 352)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2682, file: !178, line: 230, baseType: !1900, size: 64, offset: 384)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2682, file: !178, line: 231, baseType: !1900, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2682, file: !178, line: 232, baseType: !36, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2674, file: !178, line: 526, baseType: !2713, size: 192, offset: 2304)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 192, elements: !357)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !582, file: !173, line: 1233, baseType: !2715, size: 2368, offset: 4544)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !173, line: 1184, size: 2368, elements: !2716)
!2716 = !{!2717, !2718, !2719}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2715, file: !173, line: 1185, baseType: !42, size: 16)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2715, file: !173, line: 1186, baseType: !42, size: 16, offset: 16)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2715, file: !173, line: 1187, baseType: !2720, size: 2304, offset: 64)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2721, size: 2304, elements: !357)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2722, line: 12, size: 768, elements: !2723)
!2722 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2723 = !{!2724, !2732, !2734, !4284, !4285}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2721, file: !2722, line: 13, baseType: !2725, size: 384)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2726, line: 17, size: 384, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2727 = !{!2728, !2729, !2730, !2731}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2725, file: !2726, line: 18, baseType: !38, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2725, file: !2726, line: 19, baseType: !38, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2725, file: !2726, line: 20, baseType: !70, size: 192, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2725, file: !2726, line: 22, baseType: !787, size: 128, align: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2721, file: !2722, line: 14, baseType: !2733, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2721, file: !2722, line: 15, baseType: !2735, size: 64, offset: 448)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2736, line: 16, size: 64, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2735, file: !2736, line: 17, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1746, line: 746, size: 58368, elements: !2741)
!2741 = !{!2742, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2822, !2833, !2853, !2857, !2860, !2891, !2892, !2893, !2894, !2905, !2907, !2908, !2909, !2910, !2911, !2912, !2923, !2924, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2941, !2942, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !3030, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3078, !3084, !3085, !3086, !3087, !3088, !3090, !3093, !3100, !3105, !3108, !3111, !3114, !3505, !3705, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3743, !3744, !3745, !3754, !3762, !3763, !3764, !3765, !3766, !3771, !3772, !3773, !3776, !3777, !3780, !3783, !3786, !3793, !3796, !3797, !3883, !3884, !3885, !3886, !3887, !3893, !3894, !3895, !3896, !3897, !3898, !3901, !3904, !3905, !3908, !3909, !3910, !3913, !3914, !3915, !3916, !3917, !3918, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3950, !3951, !3957, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !4039, !4041, !4042, !4043, !4044, !4045, !4046, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4063, !4064, !4065}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2740, file: !1746, line: 752, baseType: !2743, size: 192)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2744, line: 56, size: 192, elements: !2745)
!2744 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2743, file: !2744, line: 57, baseType: !55, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2743, file: !2744, line: 58, baseType: !55, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2743, file: !2744, line: 59, baseType: !499, size: 32, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2743, file: !2744, line: 61, baseType: !499, size: 32, offset: 160)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2740, file: !1746, line: 754, baseType: !7, size: 32, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2740, file: !1746, line: 767, baseType: !36, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2740, file: !1746, line: 768, baseType: !832, size: 32, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2740, file: !1746, line: 770, baseType: !7, size: 32, offset: 352)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2740, file: !1746, line: 771, baseType: !7, size: 32, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2740, file: !1746, line: 774, baseType: !38, size: 32, offset: 416)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2740, file: !1746, line: 775, baseType: !2757, size: 128, offset: 448)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2758, line: 58, size: 128, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2759 = !{!2760, !2761, !2766, !2767}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2757, file: !2758, line: 59, baseType: !781, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, scope: !2757, file: !2758, line: 60, baseType: !2762, size: 32, offset: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2757, file: !2758, line: 60, size: 32, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2762, file: !2758, line: 61, baseType: !7, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2762, file: !2758, line: 62, baseType: !65, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2757, file: !2758, line: 65, baseType: !109, size: 16, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2757, file: !2758, line: 65, baseType: !109, size: 16, offset: 112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2740, file: !1746, line: 776, baseType: !7, size: 32, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2740, file: !1746, line: 777, baseType: !55, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2740, file: !1746, line: 778, baseType: !2739, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2740, file: !1746, line: 787, baseType: !38, size: 32, offset: 768)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2740, file: !1746, line: 788, baseType: !38, size: 32, offset: 800)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2740, file: !1746, line: 790, baseType: !38, size: 32, offset: 832)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2740, file: !1746, line: 792, baseType: !38, size: 32, offset: 864)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2740, file: !1746, line: 793, baseType: !38, size: 32, offset: 896)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2740, file: !1746, line: 794, baseType: !38, size: 32, offset: 928)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2740, file: !1746, line: 795, baseType: !7, size: 32, offset: 960)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2740, file: !1746, line: 797, baseType: !2779, size: 2048, offset: 1024)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1746, line: 551, size: 2048, elements: !2780)
!2780 = !{!2781, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2801, !2804, !2805, !2806}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2779, file: !1746, line: 553, baseType: !2782, size: 128)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1746, line: 411, size: 128, elements: !2783)
!2783 = !{!2784, !2785}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2782, file: !1746, line: 412, baseType: !55, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2782, file: !1746, line: 413, baseType: !499, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2779, file: !1746, line: 554, baseType: !903, size: 192, align: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2779, file: !1746, line: 555, baseType: !503, size: 64, offset: 320)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2779, file: !1746, line: 556, baseType: !503, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2779, file: !1746, line: 558, baseType: !113, size: 128, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2779, file: !1746, line: 559, baseType: !7, size: 32, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2779, file: !1746, line: 561, baseType: !503, size: 64, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2779, file: !1746, line: 562, baseType: !503, size: 64, offset: 704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2779, file: !1746, line: 563, baseType: !503, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2779, file: !1746, line: 564, baseType: !503, size: 64, offset: 832)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2779, file: !1746, line: 565, baseType: !740, size: 64, offset: 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2779, file: !1746, line: 566, baseType: !503, size: 64, offset: 960)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2779, file: !1746, line: 568, baseType: !503, size: 64, offset: 1024)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2779, file: !1746, line: 571, baseType: !38, size: 32, offset: 1088)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2779, file: !1746, line: 572, baseType: !2800, size: 64, offset: 1152)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2779, file: !1746, line: 574, baseType: !2802, size: 64, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1746, line: 49, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2779, file: !1746, line: 576, baseType: !2802, size: 64, offset: 1280)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2779, file: !1746, line: 578, baseType: !55, size: 64, offset: 1344)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2779, file: !1746, line: 588, baseType: !2807, size: 512, align: 512, offset: 1536)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1746, line: 497, size: 512, align: 512, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2807, file: !1746, line: 498, baseType: !503, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2807, file: !1746, line: 499, baseType: !503, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2807, file: !1746, line: 500, baseType: !503, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2807, file: !1746, line: 501, baseType: !499, size: 32, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2807, file: !1746, line: 502, baseType: !499, size: 32, offset: 224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2807, file: !1746, line: 503, baseType: !55, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2807, file: !1746, line: 504, baseType: !55, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2807, file: !1746, line: 505, baseType: !55, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2807, file: !1746, line: 506, baseType: !2818, size: 64, align: 64, offset: 448)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1746, line: 445, size: 64, align: 64, elements: !2819)
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2818, file: !1746, line: 446, baseType: !7, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2818, file: !1746, line: 447, baseType: !7, size: 32, offset: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2740, file: !1746, line: 798, baseType: !2823, size: 384, offset: 3072)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1746, line: 592, size: 384, elements: !2824)
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2823, file: !1746, line: 593, baseType: !113, size: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2823, file: !1746, line: 594, baseType: !55, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2823, file: !1746, line: 595, baseType: !55, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2823, file: !1746, line: 596, baseType: !7, size: 32, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2823, file: !1746, line: 597, baseType: !42, size: 16, offset: 288)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2823, file: !1746, line: 598, baseType: !42, size: 16, offset: 304)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2823, file: !1746, line: 600, baseType: !2832, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2740, file: !1746, line: 799, baseType: !2834, size: 1792, offset: 3456)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1746, line: 610, size: 1792, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2834, file: !1746, line: 611, baseType: !903, size: 192, align: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2834, file: !1746, line: 618, baseType: !503, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2834, file: !1746, line: 619, baseType: !503, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2834, file: !1746, line: 620, baseType: !503, size: 64, offset: 320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2834, file: !1746, line: 621, baseType: !503, size: 64, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2834, file: !1746, line: 622, baseType: !503, size: 64, offset: 448)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2834, file: !1746, line: 629, baseType: !740, size: 64, offset: 512)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2834, file: !1746, line: 630, baseType: !503, size: 64, offset: 576)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2834, file: !1746, line: 631, baseType: !7, size: 32, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2834, file: !1746, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2834, file: !1746, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2834, file: !1746, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2834, file: !1746, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2834, file: !1746, line: 662, baseType: !2343, size: 512, offset: 704)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2834, file: !1746, line: 671, baseType: !2343, size: 512, offset: 1216)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2834, file: !1746, line: 679, baseType: !2852, size: 64, offset: 1728)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2740, file: !1746, line: 800, baseType: !2854, size: 64, offset: 5248)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1746, line: 800, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2740, file: !1746, line: 809, baseType: !2858, size: 64, offset: 5312)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1746, line: 70, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2740, file: !1746, line: 825, baseType: !2861, size: 2048, align: 512, offset: 5632)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1746, line: 509, size: 2048, align: 512, elements: !2862)
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2861, file: !1746, line: 511, baseType: !503, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2861, file: !1746, line: 512, baseType: !503, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2861, file: !1746, line: 513, baseType: !503, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2861, file: !1746, line: 514, baseType: !503, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2861, file: !1746, line: 515, baseType: !503, size: 64, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2861, file: !1746, line: 516, baseType: !503, size: 64, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2861, file: !1746, line: 518, baseType: !503, size: 64, offset: 384)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2861, file: !1746, line: 519, baseType: !503, size: 64, offset: 448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2861, file: !1746, line: 520, baseType: !740, size: 64, offset: 512)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2861, file: !1746, line: 522, baseType: !503, size: 64, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2861, file: !1746, line: 523, baseType: !503, size: 64, offset: 640)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2861, file: !1746, line: 524, baseType: !740, size: 64, offset: 704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2861, file: !1746, line: 526, baseType: !740, size: 64, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2861, file: !1746, line: 527, baseType: !503, size: 64, offset: 832)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2861, file: !1746, line: 529, baseType: !503, size: 64, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2861, file: !1746, line: 530, baseType: !503, size: 64, offset: 960)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2861, file: !1746, line: 531, baseType: !503, size: 64, offset: 1024)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2861, file: !1746, line: 532, baseType: !503, size: 64, offset: 1088)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2861, file: !1746, line: 533, baseType: !503, size: 64, offset: 1152)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2861, file: !1746, line: 535, baseType: !503, size: 64, offset: 1216)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2861, file: !1746, line: 536, baseType: !503, size: 64, offset: 1280)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2861, file: !1746, line: 537, baseType: !503, size: 64, offset: 1344)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2861, file: !1746, line: 538, baseType: !503, size: 64, offset: 1408)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2861, file: !1746, line: 539, baseType: !503, size: 64, offset: 1472)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2861, file: !1746, line: 540, baseType: !503, size: 64, offset: 1536)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2861, file: !1746, line: 541, baseType: !503, size: 64, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2861, file: !1746, line: 542, baseType: !503, size: 64, offset: 1664)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2861, file: !1746, line: 543, baseType: !503, size: 64, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2740, file: !1746, line: 833, baseType: !7, size: 32, offset: 7680)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2740, file: !1746, line: 836, baseType: !7, size: 32, offset: 7712)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2740, file: !1746, line: 837, baseType: !38, size: 32, offset: 7744)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2740, file: !1746, line: 838, baseType: !2895, size: 64, offset: 7808)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2897)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2898, line: 19, baseType: !2899)
!2898 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2898, line: 19, size: 64, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2899, file: !2898, line: 19, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !2903)
!2903 = !{!2904}
!2904 = !DISubrange(count: 1)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2740, file: !1746, line: 839, baseType: !2906, size: 64, offset: 7872)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2740, file: !1746, line: 840, baseType: !2897, size: 64, offset: 7936)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2740, file: !1746, line: 841, baseType: !36, size: 64, offset: 8000)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2740, file: !1746, line: 843, baseType: !42, size: 16, offset: 8064)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2740, file: !1746, line: 845, baseType: !42, size: 16, offset: 8080)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2740, file: !1746, line: 848, baseType: !38, size: 32, offset: 8096)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2740, file: !1746, line: 849, baseType: !2913, size: 32, offset: 8128)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1746, line: 718, size: 32, elements: !2914)
!2914 = !{!2915, !2922}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2913, file: !1746, line: 724, baseType: !2916, size: 32)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2913, file: !1746, line: 719, size: 32, elements: !2917)
!2917 = !{!2918, !2919, !2920, !2921}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2916, file: !1746, line: 720, baseType: !99, size: 8)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2916, file: !1746, line: 721, baseType: !99, size: 8, offset: 8)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2916, file: !1746, line: 722, baseType: !99, size: 8, offset: 16)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2916, file: !1746, line: 723, baseType: !99, size: 8, offset: 24)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2913, file: !1746, line: 725, baseType: !499, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2740, file: !1746, line: 850, baseType: !113, size: 128, offset: 8192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2740, file: !1746, line: 851, baseType: !2925, size: 64, offset: 8320)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1746, line: 60, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2740, file: !1746, line: 855, baseType: !55, size: 64, offset: 8384)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2740, file: !1746, line: 856, baseType: !99, size: 8, offset: 8448)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2740, file: !1746, line: 857, baseType: !99, size: 8, offset: 8456)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2740, file: !1746, line: 858, baseType: !38, size: 32, offset: 8480)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2740, file: !1746, line: 859, baseType: !113, size: 128, offset: 8512)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2740, file: !1746, line: 860, baseType: !38, size: 32, offset: 8640)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2740, file: !1746, line: 861, baseType: !113, size: 128, offset: 8704)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2740, file: !1746, line: 873, baseType: !2935, size: 256, offset: 8832)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1746, line: 376, size: 256, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2935, file: !1746, line: 381, baseType: !55, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2935, file: !1746, line: 384, baseType: !505, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2935, file: !1746, line: 389, baseType: !505, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2935, file: !1746, line: 392, baseType: !505, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2740, file: !1746, line: 875, baseType: !113, size: 128, offset: 9088)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2740, file: !1746, line: 877, baseType: !2943, size: 320, offset: 9216)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2944, line: 86, size: 320, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2945 = !{!2946, !2947, !2948}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2943, file: !2944, line: 87, baseType: !38, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2943, file: !2944, line: 88, baseType: !113, size: 128, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2943, file: !2944, line: 89, baseType: !113, size: 128, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2740, file: !1746, line: 878, baseType: !903, size: 192, align: 64, offset: 9536)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2740, file: !1746, line: 881, baseType: !1332, size: 64, offset: 9728)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2740, file: !1746, line: 882, baseType: !1332, size: 64, offset: 9792)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2740, file: !1746, line: 884, baseType: !38, size: 32, offset: 9856)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2740, file: !1746, line: 885, baseType: !38, size: 32, offset: 9888)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2740, file: !1746, line: 886, baseType: !38, size: 32, offset: 9920)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2740, file: !1746, line: 888, baseType: !38, size: 32, offset: 9952)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2740, file: !1746, line: 890, baseType: !55, size: 64, offset: 9984)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2740, file: !1746, line: 893, baseType: !7, size: 32, offset: 10048)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2740, file: !1746, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2740, file: !1746, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2740, file: !1746, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2740, file: !1746, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2740, file: !1746, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2740, file: !1746, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2740, file: !1746, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2740, file: !1746, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2740, file: !1746, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2740, file: !1746, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2740, file: !1746, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2740, file: !1746, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2740, file: !1746, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2740, file: !1746, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2740, file: !1746, line: 969, baseType: !55, size: 64, offset: 10176)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2740, file: !1746, line: 971, baseType: !2974, size: 448, offset: 10240)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !254, line: 25, size: 448, elements: !2975)
!2975 = !{!2976, !2977, !2982}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2974, file: !254, line: 26, baseType: !55, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2974, file: !254, line: 27, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!391, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2974, file: !254, line: 28, baseType: !2983, size: 320, offset: 128)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2974, file: !254, line: 28, size: 320, elements: !2984)
!2984 = !{!2985, !2995, !3020}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2983, file: !254, line: 37, baseType: !2986, size: 320)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !254, line: 30, size: 320, elements: !2987)
!2987 = !{!2988, !2990, !2991, !2992, !2993, !2994}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2986, file: !254, line: 31, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2986, file: !254, line: 32, baseType: !499, size: 32, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2986, file: !254, line: 33, baseType: !499, size: 32, offset: 96)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2986, file: !254, line: 34, baseType: !499, size: 32, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2986, file: !254, line: 35, baseType: !503, size: 64, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2986, file: !254, line: 36, baseType: !2989, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2983, file: !254, line: 47, baseType: !2996, size: 192)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !254, line: 39, size: 192, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3019}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2996, file: !254, line: 40, baseType: !2388, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2996, file: !254, line: 41, baseType: !253, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !254, line: 42, baseType: !3001, size: 64, offset: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2996, file: !254, line: 42, size: 64, elements: !3002)
!3002 = !{!3003, !3011}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3001, file: !254, line: 43, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3006, line: 7, size: 128, elements: !3007)
!3006 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3007 = !{!3008, !3010}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3005, file: !3006, line: 8, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !53, line: 93, baseType: !59)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3005, file: !3006, line: 9, baseType: !59, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3001, file: !254, line: 44, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3014, line: 7, size: 64, elements: !3015)
!3014 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3015 = !{!3016, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3013, file: !3014, line: 8, baseType: !3017, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3014, line: 5, baseType: !896)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3013, file: !3014, line: 9, baseType: !896, size: 32, offset: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2996, file: !254, line: 46, baseType: !503, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2983, file: !254, line: 55, baseType: !3021, size: 256)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !254, line: 49, size: 256, elements: !3022)
!3022 = !{!3023, !3026, !3027, !3028, !3029}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3021, file: !254, line: 50, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !254, line: 14, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3021, file: !254, line: 51, baseType: !38, size: 32, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3021, file: !254, line: 52, baseType: !38, size: 32, offset: 96)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3021, file: !254, line: 53, baseType: !55, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3021, file: !254, line: 54, baseType: !55, size: 64, offset: 192)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2740, file: !1746, line: 973, baseType: !3031, size: 32, offset: 10688)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !3032)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !53, line: 28, baseType: !38)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2740, file: !1746, line: 974, baseType: !3031, size: 32, offset: 10720)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2740, file: !1746, line: 978, baseType: !55, size: 64, offset: 10752)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2740, file: !1746, line: 987, baseType: !2739, size: 64, offset: 10816)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2740, file: !1746, line: 990, baseType: !2739, size: 64, offset: 10880)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2740, file: !1746, line: 995, baseType: !113, size: 128, offset: 10944)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2740, file: !1746, line: 996, baseType: !113, size: 128, offset: 11072)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2740, file: !1746, line: 997, baseType: !2739, size: 64, offset: 11200)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2740, file: !1746, line: 1005, baseType: !113, size: 128, offset: 11264)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2740, file: !1746, line: 1006, baseType: !113, size: 128, offset: 11392)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2740, file: !1746, line: 1009, baseType: !828, size: 64, offset: 11520)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2740, file: !1746, line: 1010, baseType: !3044, size: 512, offset: 11584)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 512, elements: !841)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2740, file: !1746, line: 1011, baseType: !113, size: 128, offset: 12096)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2740, file: !1746, line: 1012, baseType: !113, size: 128, offset: 12224)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2740, file: !1746, line: 1014, baseType: !1140, size: 64, offset: 12352)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2740, file: !1746, line: 1017, baseType: !712, size: 64, offset: 12416)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2740, file: !1746, line: 1020, baseType: !712, size: 64, offset: 12480)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2740, file: !1746, line: 1023, baseType: !36, size: 64, offset: 12544)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2740, file: !1746, line: 1025, baseType: !503, size: 64, offset: 12608)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2740, file: !1746, line: 1026, baseType: !503, size: 64, offset: 12672)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2740, file: !1746, line: 1031, baseType: !503, size: 64, offset: 12736)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2740, file: !1746, line: 1032, baseType: !3055, size: 192, offset: 12800)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1746, line: 324, size: 192, elements: !3056)
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3055, file: !1746, line: 326, baseType: !503, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3055, file: !1746, line: 327, baseType: !503, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !1746, line: 328, baseType: !743, size: 32, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2740, file: !1746, line: 1041, baseType: !55, size: 64, offset: 12992)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2740, file: !1746, line: 1042, baseType: !55, size: 64, offset: 13056)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2740, file: !1746, line: 1045, baseType: !503, size: 64, offset: 13120)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2740, file: !1746, line: 1048, baseType: !503, size: 64, offset: 13184)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2740, file: !1746, line: 1051, baseType: !55, size: 64, offset: 13248)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2740, file: !1746, line: 1052, baseType: !55, size: 64, offset: 13312)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2740, file: !1746, line: 1055, baseType: !3067, size: 640, offset: 13376)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3068, line: 132, size: 640, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3069 = !{!3070, !3076, !3077}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3067, file: !3068, line: 133, baseType: !3071, size: 576)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3072, size: 576, elements: !357)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3068, line: 117, size: 192, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3072, file: !3068, line: 118, baseType: !503, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3072, file: !3068, line: 119, baseType: !2397, size: 128, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3067, file: !3068, line: 134, baseType: !7, size: 32, offset: 576)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3067, file: !3068, line: 135, baseType: !7, size: 32, offset: 608)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2740, file: !1746, line: 1058, baseType: !3079, size: 448, offset: 14016)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3068, line: 144, size: 448, elements: !3080)
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3079, file: !3068, line: 145, baseType: !787, size: 128, align: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3079, file: !3068, line: 146, baseType: !730, size: 256, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3079, file: !3068, line: 147, baseType: !7, size: 32, offset: 384)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2740, file: !1746, line: 1064, baseType: !861, size: 64, offset: 14464)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2740, file: !1746, line: 1067, baseType: !861, size: 64, offset: 14528)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2740, file: !1746, line: 1070, baseType: !861, size: 64, offset: 14592)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2740, file: !1746, line: 1074, baseType: !888, size: 64, offset: 14656)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2740, file: !1746, line: 1084, baseType: !3089, size: 128, offset: 14720)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !2224)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2740, file: !1746, line: 1086, baseType: !3091, size: 64, offset: 14848)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1746, line: 55, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2740, file: !1746, line: 1089, baseType: !3094, size: 64, offset: 14912)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3095, line: 12, size: 64, elements: !3096)
!3095 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3096 = !{!3097}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3094, file: !3095, line: 13, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3095, line: 8, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2740, file: !1746, line: 1090, baseType: !3101, size: 128, offset: 14976)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3102, line: 13, size: 128, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3103 = !{!3104}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3101, file: !3102, line: 14, baseType: !113, size: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2740, file: !1746, line: 1097, baseType: !3106, size: 64, offset: 15104)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1746, line: 50, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2740, file: !1746, line: 1100, baseType: !3109, size: 64, offset: 15168)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1746, line: 1100, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2740, file: !1746, line: 1103, baseType: !3112, size: 64, offset: 15232)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1746, line: 53, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2740, file: !1746, line: 1107, baseType: !3115, size: 64, offset: 15296)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3117, line: 31, size: 576, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3118 = !{!3119, !3120, !3123, !3126, !3129, !3130, !3133, !3136, !3137}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3116, file: !3117, line: 32, baseType: !832, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3116, file: !3117, line: 33, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3117, line: 9, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3116, file: !3117, line: 34, baseType: !3124, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3117, line: 10, flags: DIFlagFwdDecl)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3116, file: !3117, line: 35, baseType: !3127, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3117, line: 8, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3116, file: !3117, line: 36, baseType: !852, size: 64, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3116, file: !3117, line: 37, baseType: !3131, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !890, line: 34, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3116, file: !3117, line: 38, baseType: !3134, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3117, line: 38, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3116, file: !3117, line: 39, baseType: !3134, size: 64, offset: 448)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3116, file: !3117, line: 40, baseType: !3138, size: 64, offset: 512)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3140, line: 771, size: 384, elements: !3141)
!3140 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!3141 = !{!3142, !3143, !3144, !3145}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3139, file: !3140, line: 772, baseType: !1086, size: 192)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3139, file: !3140, line: 773, baseType: !1053, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3139, file: !3140, line: 774, baseType: !1188, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !3139, file: !3140, line: 775, baseType: !3146, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !3148, line: 209, size: 4736, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!3149 = !{!3150, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3147, file: !3148, line: 215, baseType: !3151, size: 896)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3152, size: 896, elements: !3299)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !3148, line: 152, size: 1600, elements: !3154)
!3154 = !{!3155, !3350, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3483}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3153, file: !3148, line: 154, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !3148, line: 389, size: 7872, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3262, !3268, !3269, !3273, !3274, !3275, !3276, !3277, !3278, !3296, !3297, !3301, !3302, !3303, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3337, !3340, !3341, !3348}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3157, file: !3148, line: 391, baseType: !3153, size: 1600)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3157, file: !3148, line: 393, baseType: !55, size: 64, offset: 1600)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3157, file: !3148, line: 401, baseType: !38, size: 32, offset: 1664)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !3157, file: !3148, line: 404, baseType: !38, size: 32, offset: 1696)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !3157, file: !3148, line: 417, baseType: !38, size: 32, offset: 1728)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !3157, file: !3148, line: 418, baseType: !38, size: 32, offset: 1760)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !3157, file: !3148, line: 419, baseType: !38, size: 32, offset: 1792)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !3157, file: !3148, line: 432, baseType: !38, size: 32, offset: 1824)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !3157, file: !3148, line: 433, baseType: !38, size: 32, offset: 1856)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !3157, file: !3148, line: 434, baseType: !38, size: 32, offset: 1888)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !3157, file: !3148, line: 436, baseType: !38, size: 32, offset: 1920)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !3157, file: !3148, line: 439, baseType: !7, size: 32, offset: 1952)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3157, file: !3148, line: 441, baseType: !3172, size: 64, offset: 1984)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !603, line: 190, size: 1152, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3254, !3255, !3256, !3257, !3258, !3261}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3173, file: !603, line: 191, baseType: !65, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3173, file: !603, line: 192, baseType: !65, size: 32, offset: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3173, file: !603, line: 202, baseType: !3172, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3173, file: !603, line: 203, baseType: !32, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3173, file: !603, line: 205, baseType: !903, size: 192, align: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3173, file: !603, line: 207, baseType: !1447, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3173, file: !603, line: 208, baseType: !7, size: 32, offset: 448)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !3173, file: !603, line: 209, baseType: !3183, size: 256, offset: 512)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3173, file: !603, line: 209, size: 256, elements: !3184)
!3184 = !{!3185, !3194, !3198}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3183, file: !603, line: 210, baseType: !3186, size: 256)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !603, line: 153, size: 256, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3193}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3186, file: !603, line: 154, baseType: !55, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3186, file: !603, line: 156, baseType: !1183, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3186, file: !603, line: 162, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !603, line: 162, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3186, file: !603, line: 167, baseType: !55, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3183, file: !603, line: 211, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !603, line: 170, size: 64, elements: !3196)
!3196 = !{!3197}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3195, file: !603, line: 171, baseType: !3172, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3183, file: !603, line: 212, baseType: !3199, size: 256)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !603, line: 174, size: 256, elements: !3200)
!3200 = !{!3201, !3249, !3252, !3253}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3199, file: !603, line: 175, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !603, line: 271, size: 768, elements: !3205)
!3205 = !{!3206, !3226, !3230, !3231, !3232, !3233, !3234, !3238, !3239, !3240, !3241, !3245}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3204, file: !603, line: 276, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!38, !3210}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !603, line: 251, size: 1216, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3211, file: !603, line: 253, baseType: !3172, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3211, file: !603, line: 254, baseType: !1245, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3211, file: !603, line: 255, baseType: !718, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3211, file: !603, line: 256, baseType: !36, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3211, file: !603, line: 259, baseType: !730, size: 256, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3211, file: !603, line: 260, baseType: !730, size: 256, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3211, file: !603, line: 261, baseType: !38, size: 32, offset: 768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3211, file: !603, line: 262, baseType: !113, size: 128, offset: 832)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3211, file: !603, line: 263, baseType: !356, size: 64, offset: 960)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3211, file: !603, line: 265, baseType: !51, size: 64, offset: 1024)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3211, file: !603, line: 266, baseType: !970, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3211, file: !603, line: 267, baseType: !970, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3211, file: !603, line: 268, baseType: !1518, size: 64, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3204, file: !603, line: 277, baseType: !3227, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !3210}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3204, file: !603, line: 290, baseType: !768, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3204, file: !603, line: 292, baseType: !756, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3204, file: !603, line: 293, baseType: !764, size: 64, offset: 256)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3204, file: !603, line: 294, baseType: !760, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3204, file: !603, line: 296, baseType: !3235, size: 64, offset: 384)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!388, !3210, !356, !51, !57}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3204, file: !603, line: 306, baseType: !51, size: 64, offset: 448)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3204, file: !603, line: 313, baseType: !970, size: 8, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3204, file: !603, line: 314, baseType: !3235, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3204, file: !603, line: 317, baseType: !3242, size: 64, offset: 640)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!1306, !3210, !1308}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3204, file: !603, line: 320, baseType: !3246, size: 64, offset: 704)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!38, !3210, !1319}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3199, file: !603, line: 176, baseType: !3250, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !603, line: 35, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3199, file: !603, line: 177, baseType: !57, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3199, file: !603, line: 178, baseType: !3172, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3173, file: !603, line: 215, baseType: !36, size: 64, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3173, file: !603, line: 221, baseType: !503, size: 64, offset: 832)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3173, file: !603, line: 223, baseType: !42, size: 16, offset: 896)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3173, file: !603, line: 224, baseType: !40, size: 16, offset: 912)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3173, file: !603, line: 225, baseType: !3259, size: 64, offset: 960)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !603, line: 36, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3173, file: !603, line: 227, baseType: !787, size: 128, align: 64, offset: 1024)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !3157, file: !3148, line: 442, baseType: !3263, size: 448, offset: 2048)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !3148, line: 138, size: 448, elements: !3264)
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3263, file: !3148, line: 140, baseType: !3172, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !3263, file: !3148, line: 141, baseType: !55, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !3263, file: !3148, line: 142, baseType: !2310, size: 320, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !3157, file: !3148, line: 443, baseType: !3263, size: 448, offset: 2496)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !3157, file: !3148, line: 446, baseType: !3270, offset: 2944)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3263, elements: !3271)
!3271 = !{!3272}
!3272 = !DISubrange(count: 0)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !3157, file: !3148, line: 455, baseType: !109, size: 16, offset: 2944)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !3157, file: !3148, line: 456, baseType: !109, size: 16, offset: 2960)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !3157, file: !3148, line: 457, baseType: !109, size: 16, offset: 2976)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !3157, file: !3148, line: 458, baseType: !109, size: 16, offset: 2992)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !3157, file: !3148, line: 461, baseType: !3151, size: 896, offset: 3008)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3157, file: !3148, line: 463, baseType: !3279, size: 64, offset: 3904)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !3148, line: 537, size: 41664, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3295}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !3280, file: !3148, line: 538, baseType: !3191, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !3280, file: !3148, line: 541, baseType: !7, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !3280, file: !3148, line: 544, baseType: !38, size: 32, offset: 96)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !3280, file: !3148, line: 547, baseType: !113, size: 128, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3280, file: !3148, line: 548, baseType: !787, size: 128, align: 64, offset: 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3280, file: !3148, line: 555, baseType: !3157, size: 7872, offset: 384)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !3280, file: !3148, line: 558, baseType: !3156, size: 64, offset: 8256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !3280, file: !3148, line: 561, baseType: !65, size: 32, offset: 8320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3280, file: !3148, line: 564, baseType: !7, size: 32, offset: 8352)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !3280, file: !3148, line: 567, baseType: !3292, size: 32768, offset: 8384)
!3292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32768, elements: !3293)
!3293 = !{!3294}
!3294 = !DISubrange(count: 4096)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3280, file: !3148, line: 570, baseType: !2664, size: 512, offset: 41152)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !3157, file: !3148, line: 469, baseType: !113, size: 128, offset: 3968)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !3157, file: !3148, line: 478, baseType: !3298, size: 1792, offset: 4096)
!3298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1792, elements: !3299)
!3299 = !{!3300}
!3300 = !DISubrange(count: 14)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !3157, file: !3148, line: 487, baseType: !3156, size: 64, offset: 5888)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !3157, file: !3148, line: 488, baseType: !3156, size: 64, offset: 5952)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !3157, file: !3148, line: 491, baseType: !3304, size: 64, offset: 6016)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !3148, line: 327, size: 896, elements: !3306)
!3306 = !{!3307, !3310, !3320, !3321, !3322, !3323, !3324}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !3305, file: !3148, line: 332, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !3309, line: 64, elements: !631)
!3309 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3305, file: !3148, line: 333, baseType: !3311, size: 192)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !3148, line: 299, size: 192, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !3311, file: !3148, line: 300, baseType: !3314, size: 192)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !3315, line: 17, size: 192, elements: !3316)
!3315 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!3316 = !{!3317, !3318, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3314, file: !3315, line: 18, baseType: !503, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3314, file: !3315, line: 19, baseType: !503, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3314, file: !3315, line: 20, baseType: !505, size: 64, offset: 128)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3305, file: !3148, line: 339, baseType: !3311, size: 192, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !3305, file: !3148, line: 347, baseType: !3311, size: 192, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !3305, file: !3148, line: 353, baseType: !3311, size: 192, offset: 576)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !3305, file: !3148, line: 366, baseType: !3156, size: 64, offset: 768)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !3305, file: !3148, line: 367, baseType: !3156, size: 64, offset: 832)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !3157, file: !3148, line: 492, baseType: !113, size: 128, offset: 6080)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !3157, file: !3148, line: 495, baseType: !3311, size: 192, offset: 6208)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !3157, file: !3148, line: 496, baseType: !3311, size: 192, offset: 6400)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3157, file: !3148, line: 497, baseType: !3055, size: 192, offset: 6592)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !3157, file: !3148, line: 503, baseType: !113, size: 128, offset: 6784)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !3157, file: !3148, line: 504, baseType: !730, size: 256, offset: 6912)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !3157, file: !3148, line: 507, baseType: !70, size: 192, offset: 7168)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !3157, file: !3148, line: 510, baseType: !1102, size: 256, offset: 7360)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !3157, file: !3148, line: 513, baseType: !3334, size: 64, offset: 7616)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !3336, line: 214, elements: !631)
!3336 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !3157, file: !3148, line: 516, baseType: !3338, offset: 7680)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !3339, line: 76, elements: !631)
!3339 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !3157, file: !3148, line: 519, baseType: !65, size: 32, offset: 7680)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !3157, file: !3148, line: 522, baseType: !3342, size: 128, offset: 7712)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !3148, line: 370, size: 128, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3342, file: !3148, line: 372, baseType: !970, size: 8)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !3342, file: !3148, line: 375, baseType: !38, size: 32, offset: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !3342, file: !3148, line: 380, baseType: !38, size: 32, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !3342, file: !3148, line: 386, baseType: !38, size: 32, offset: 96)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !3157, file: !3148, line: 529, baseType: !3349, offset: 7872)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3156, elements: !854)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3153, file: !3148, line: 157, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !3148, line: 669, size: 1984, elements: !3353)
!3353 = !{!3354, !3358, !3362, !3366, !3367, !3368, !3369, !3373, !3377, !3378, !3384, !3388, !3389, !3393, !3397, !3401, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3428, !3429, !3466, !3467}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !3352, file: !3148, line: 670, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!3152, !3152}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !3352, file: !3148, line: 671, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!38, !3152}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !3352, file: !3148, line: 672, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3152}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !3352, file: !3148, line: 673, baseType: !3363, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !3352, file: !3148, line: 674, baseType: !3363, size: 64, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !3352, file: !3148, line: 675, baseType: !3363, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !3352, file: !3148, line: 676, baseType: !3370, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !3152, !38}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !3352, file: !3148, line: 677, baseType: !3374, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!38, !718, !3152}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !3352, file: !3148, line: 679, baseType: !3374, size: 64, offset: 512)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !3352, file: !3148, line: 682, baseType: !3379, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!38, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !3148, line: 30, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !3352, file: !3148, line: 683, baseType: !3385, size: 64, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3382}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3352, file: !3148, line: 684, baseType: !3385, size: 64, offset: 704)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !3352, file: !3148, line: 685, baseType: !3390, size: 64, offset: 768)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !3352, file: !3148, line: 686, baseType: !3394, size: 64, offset: 832)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!38, !2739, !3146}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !3352, file: !3148, line: 688, baseType: !3398, size: 64, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !2739, !3146}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !3352, file: !3148, line: 689, baseType: !3402, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{null, !2739}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3352, file: !3148, line: 690, baseType: !3402, size: 64, offset: 1024)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3352, file: !3148, line: 691, baseType: !3402, size: 64, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3352, file: !3148, line: 692, baseType: !3363, size: 64, offset: 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3352, file: !3148, line: 694, baseType: !970, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !3352, file: !3148, line: 707, baseType: !970, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !3352, file: !3148, line: 719, baseType: !970, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3352, file: !3148, line: 722, baseType: !38, size: 32, offset: 1248)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3352, file: !3148, line: 723, baseType: !32, size: 64, offset: 1280)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !3352, file: !3148, line: 726, baseType: !32, size: 64, offset: 1344)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3352, file: !3148, line: 729, baseType: !3279, size: 64, offset: 1408)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !3352, file: !3148, line: 732, baseType: !3416, size: 192, offset: 1472)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3417, line: 19, size: 192, elements: !3418)
!3417 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!3418 = !{!3419, !3426, !3427}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3416, file: !3417, line: 20, baseType: !3420, size: 128)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3421, line: 296, size: 128, elements: !3422)
!3421 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3422 = !{!3423, !3424, !3425}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3420, file: !3421, line: 297, baseType: !75, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3420, file: !3421, line: 299, baseType: !1553, size: 32, offset: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3420, file: !3421, line: 300, baseType: !36, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3416, file: !3417, line: 21, baseType: !7, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3416, file: !3417, line: 22, baseType: !7, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !3352, file: !3148, line: 738, baseType: !113, size: 128, offset: 1664)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !3352, file: !3148, line: 744, baseType: !3430, size: 64, offset: 1792)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !3148, line: 580, size: 1728, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3442, !3443, !3444, !3448, !3452, !3453, !3454, !3455, !3456, !3460, !3464, !3465}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3431, file: !3148, line: 586, baseType: !2664, size: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3431, file: !3148, line: 587, baseType: !55, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !3431, file: !3148, line: 593, baseType: !51, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3431, file: !3148, line: 596, baseType: !7, size: 32, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !3431, file: !3148, line: 604, baseType: !7, size: 32, offset: 672)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3431, file: !3148, line: 610, baseType: !3351, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3431, file: !3148, line: 611, baseType: !113, size: 128, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !3431, file: !3148, line: 612, baseType: !3441, size: 64, offset: 896)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3431, file: !3148, line: 614, baseType: !3207, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3431, file: !3148, line: 615, baseType: !3227, size: 64, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !3431, file: !3148, line: 621, baseType: !3445, size: 64, offset: 1088)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!503, !3152, !3430}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !3431, file: !3148, line: 625, baseType: !3449, size: 64, offset: 1152)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!740, !3152, !3430}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3431, file: !3148, line: 628, baseType: !768, size: 64, offset: 1216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3431, file: !3148, line: 631, baseType: !756, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3431, file: !3148, line: 632, baseType: !764, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3431, file: !3148, line: 633, baseType: !760, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !3431, file: !3148, line: 640, baseType: !3457, size: 64, offset: 1472)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!38, !3152, !3430, !503}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !3431, file: !3148, line: 645, baseType: !3461, size: 64, offset: 1536)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!38, !3152, !3430, !740}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3431, file: !3148, line: 654, baseType: !3235, size: 64, offset: 1600)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3431, file: !3148, line: 657, baseType: !3242, size: 64, offset: 1664)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !3352, file: !3148, line: 745, baseType: !3430, size: 64, offset: 1856)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !3352, file: !3148, line: 754, baseType: !7, size: 32, offset: 1920)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3153, file: !3148, line: 160, baseType: !1647, size: 128, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3153, file: !3148, line: 163, baseType: !113, size: 128, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3153, file: !3148, line: 164, baseType: !113, size: 128, offset: 384)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !3153, file: !3148, line: 167, baseType: !113, size: 128, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3153, file: !3148, line: 173, baseType: !38, size: 32, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3153, file: !3148, line: 175, baseType: !7, size: 32, offset: 672)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !3153, file: !3148, line: 183, baseType: !503, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !3153, file: !3148, line: 189, baseType: !65, size: 32, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !3153, file: !3148, line: 192, baseType: !1102, size: 256, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !3153, file: !3148, line: 193, baseType: !3478, size: 448, offset: 1088)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1103, line: 120, size: 448, elements: !3479)
!3479 = !{!3480, !3481, !3482}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3478, file: !1103, line: 121, baseType: !1102, size: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3478, file: !1103, line: 122, baseType: !787, size: 128, align: 64, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3478, file: !1103, line: 125, baseType: !2655, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3153, file: !3148, line: 199, baseType: !3152, size: 64, offset: 1536)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3147, file: !3148, line: 218, baseType: !832, size: 32, offset: 896)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !3147, file: !3148, line: 226, baseType: !3146, size: 64, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !3147, file: !3148, line: 229, baseType: !3156, size: 64, offset: 1024)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3147, file: !3148, line: 232, baseType: !38, size: 32, offset: 1088)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3147, file: !3148, line: 241, baseType: !113, size: 128, offset: 1152)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !3147, file: !3148, line: 242, baseType: !113, size: 128, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !3147, file: !3148, line: 243, baseType: !113, size: 128, offset: 1408)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !3147, file: !3148, line: 246, baseType: !113, size: 128, offset: 1536)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !3147, file: !3148, line: 255, baseType: !3298, size: 1792, offset: 1664)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !3147, file: !3148, line: 258, baseType: !113, size: 128, offset: 3456)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !3147, file: !3148, line: 259, baseType: !113, size: 128, offset: 3584)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !3147, file: !3148, line: 265, baseType: !623, size: 128, offset: 3712)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !3147, file: !3148, line: 271, baseType: !113, size: 128, offset: 3840)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !3147, file: !3148, line: 277, baseType: !113, size: 128, offset: 3968)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !3147, file: !3148, line: 278, baseType: !113, size: 128, offset: 4096)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !3147, file: !3148, line: 279, baseType: !113, size: 128, offset: 4224)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !3147, file: !3148, line: 288, baseType: !3156, size: 64, offset: 4352)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !3147, file: !3148, line: 289, baseType: !3156, size: 64, offset: 4416)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !3147, file: !3148, line: 290, baseType: !3146, size: 64, offset: 4480)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !3147, file: !3148, line: 293, baseType: !970, size: 8, offset: 4544)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3147, file: !3148, line: 296, baseType: !787, size: 128, align: 64, offset: 4608)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2740, file: !1746, line: 1110, baseType: !3506, size: 64, offset: 15360)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3508, line: 93, size: 8768, elements: !3509)
!3508 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3560, !3569, !3570, !3572, !3573, !3574, !3577, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3615, !3616, !3623, !3633, !3695, !3696, !3699, !3700, !3701, !3702, !3703, !3704}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3507, file: !3508, line: 94, baseType: !832, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3507, file: !3508, line: 95, baseType: !65, size: 32, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3507, file: !3508, line: 96, baseType: !38, size: 32, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3507, file: !3508, line: 97, baseType: !38, size: 32, offset: 96)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3507, file: !3508, line: 98, baseType: !113, size: 128, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3507, file: !3508, line: 100, baseType: !70, size: 192, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3507, file: !3508, line: 103, baseType: !2739, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3507, file: !3508, line: 106, baseType: !3518, size: 192, offset: 512)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3519, line: 32, size: 192, elements: !3520)
!3519 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3518, file: !3519, line: 33, baseType: !113, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3518, file: !3519, line: 34, baseType: !3523, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3524, line: 25, baseType: !3525)
!3524 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3524, line: 23, size: 64, elements: !3526)
!3526 = !{!3527}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3525, file: !3524, line: 24, baseType: !2902, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3507, file: !3508, line: 109, baseType: !619, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3507, file: !3508, line: 112, baseType: !38, size: 32, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3507, file: !3508, line: 114, baseType: !38, size: 32, offset: 800)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3507, file: !3508, line: 115, baseType: !2739, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3507, file: !3508, line: 118, baseType: !38, size: 32, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3507, file: !3508, line: 119, baseType: !7, size: 32, offset: 928)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3507, file: !3508, line: 121, baseType: !3535, size: 64, offset: 960)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3508, line: 80, size: 448, elements: !3537)
!3537 = !{!3538, !3539, !3545}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3536, file: !3508, line: 81, baseType: !65, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3536, file: !3508, line: 82, baseType: !3540, size: 128, offset: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3508, line: 75, size: 128, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3540, file: !3508, line: 76, baseType: !2739, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3540, file: !3508, line: 77, baseType: !3544, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3536, file: !3508, line: 83, baseType: !1141, size: 256, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3507, file: !3508, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3507, file: !3508, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3507, file: !3508, line: 138, baseType: !7, size: 32, offset: 1056)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3507, file: !3508, line: 139, baseType: !113, size: 128, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3507, file: !3508, line: 142, baseType: !2343, size: 512, offset: 1216)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3507, file: !3508, line: 143, baseType: !2323, size: 64, offset: 1728)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3507, file: !3508, line: 150, baseType: !3553, size: 256, offset: 1792)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3554, size: 256, elements: !3558)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3508, line: 38, size: 128, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3554, file: !3508, line: 39, baseType: !503, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3554, file: !3508, line: 40, baseType: !503, size: 64, offset: 64)
!3558 = !{!3559}
!3559 = !DISubrange(count: 2)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3507, file: !3508, line: 156, baseType: !3561, size: 192, offset: 2048)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3508, line: 66, size: 192, elements: !3562)
!3562 = !{!3563}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3561, file: !3508, line: 67, baseType: !3564, size: 192)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3508, line: 47, size: 192, elements: !3565)
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3564, file: !3508, line: 48, baseType: !736, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3564, file: !3508, line: 49, baseType: !736, size: 64, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3564, file: !3508, line: 50, baseType: !736, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3507, file: !3508, line: 160, baseType: !3067, size: 640, offset: 2240)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3507, file: !3508, line: 163, baseType: !3571, size: 256, offset: 2880)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 256, elements: !841)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3507, file: !3508, line: 169, baseType: !828, size: 64, offset: 3136)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3507, file: !3508, line: 172, baseType: !38, size: 32, offset: 3200)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3507, file: !3508, line: 174, baseType: !3575, size: 64, offset: 3264)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3508, line: 174, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3507, file: !3508, line: 185, baseType: !3578, size: 64, offset: 3328)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !472, line: 860, baseType: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 853, size: 64, elements: !3580)
!3580 = !{!3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3579, file: !472, line: 858, baseType: !471, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3579, file: !472, line: 859, baseType: !75, size: 32, offset: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3507, file: !3508, line: 186, baseType: !503, size: 64, offset: 3392)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3507, file: !3508, line: 186, baseType: !503, size: 64, offset: 3456)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3507, file: !3508, line: 186, baseType: !503, size: 64, offset: 3520)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3507, file: !3508, line: 186, baseType: !503, size: 64, offset: 3584)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3507, file: !3508, line: 187, baseType: !503, size: 64, offset: 3648)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3507, file: !3508, line: 188, baseType: !503, size: 64, offset: 3712)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3507, file: !3508, line: 189, baseType: !3055, size: 192, offset: 3776)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3507, file: !3508, line: 190, baseType: !55, size: 64, offset: 3968)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3507, file: !3508, line: 190, baseType: !55, size: 64, offset: 4032)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3507, file: !3508, line: 190, baseType: !55, size: 64, offset: 4096)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3507, file: !3508, line: 190, baseType: !55, size: 64, offset: 4160)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3507, file: !3508, line: 191, baseType: !55, size: 64, offset: 4224)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3507, file: !3508, line: 191, baseType: !55, size: 64, offset: 4288)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3507, file: !3508, line: 191, baseType: !55, size: 64, offset: 4352)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3507, file: !3508, line: 191, baseType: !55, size: 64, offset: 4416)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3507, file: !3508, line: 192, baseType: !55, size: 64, offset: 4480)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3507, file: !3508, line: 192, baseType: !55, size: 64, offset: 4544)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3507, file: !3508, line: 192, baseType: !55, size: 64, offset: 4608)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3507, file: !3508, line: 192, baseType: !55, size: 64, offset: 4672)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3507, file: !3508, line: 193, baseType: !55, size: 64, offset: 4736)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3507, file: !3508, line: 193, baseType: !55, size: 64, offset: 4800)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3507, file: !3508, line: 194, baseType: !3605, size: 448, offset: 4864)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3606, line: 12, size: 448, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3605, file: !3606, line: 15, baseType: !503, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3605, file: !3606, line: 17, baseType: !503, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3605, file: !3606, line: 19, baseType: !503, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3605, file: !3606, line: 21, baseType: !503, size: 64, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3605, file: !3606, line: 29, baseType: !503, size: 64, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3605, file: !3606, line: 35, baseType: !503, size: 64, offset: 320)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3605, file: !3606, line: 44, baseType: !503, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3507, file: !3508, line: 202, baseType: !505, size: 64, offset: 5312)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3507, file: !3508, line: 213, baseType: !3617, size: 2048, offset: 5376)
!3617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3618, size: 2048, elements: !2224)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3619, line: 43, size: 128, elements: !3620)
!3619 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3618, file: !3619, line: 44, baseType: !54, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3618, file: !3619, line: 45, baseType: !54, size: 64, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3507, file: !3508, line: 216, baseType: !3624, size: 448, offset: 7424)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3508, line: 30, size: 448, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3624, file: !3508, line: 31, baseType: !38, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3624, file: !3508, line: 32, baseType: !391, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3624, file: !3508, line: 33, baseType: !55, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3624, file: !3508, line: 34, baseType: !503, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3624, file: !3508, line: 34, baseType: !503, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3624, file: !3508, line: 35, baseType: !55, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3624, file: !3508, line: 35, baseType: !55, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3507, file: !3508, line: 219, baseType: !3634, size: 64, offset: 7872)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3636, line: 41, size: 3456, elements: !3637)
!3636 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!3637 = !{!3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3635, file: !3636, line: 47, baseType: !110, size: 16)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3635, file: !3636, line: 48, baseType: !500, size: 32, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3635, file: !3636, line: 54, baseType: !101, size: 8, offset: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !3635, file: !3636, line: 55, baseType: !101, size: 8, offset: 72)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !3635, file: !3636, line: 73, baseType: !504, size: 64, align: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !3635, file: !3636, line: 74, baseType: !504, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !3635, file: !3636, line: 81, baseType: !504, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !3635, file: !3636, line: 82, baseType: !504, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !3635, file: !3636, line: 85, baseType: !504, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !3635, file: !3636, line: 86, baseType: !504, size: 64, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !3635, file: !3636, line: 94, baseType: !504, size: 64, offset: 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !3635, file: !3636, line: 102, baseType: !504, size: 64, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !3635, file: !3636, line: 107, baseType: !2210, size: 256, offset: 640)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !3635, file: !3636, line: 108, baseType: !101, size: 8, align: 64, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !3635, file: !3636, line: 110, baseType: !3653, size: 24, offset: 904)
!3653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, elements: !357)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !3635, file: !3636, line: 111, baseType: !500, size: 32, align: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !3635, file: !3636, line: 113, baseType: !500, size: 32, offset: 992)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !3635, file: !3636, line: 114, baseType: !500, size: 32, offset: 1024)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !3635, file: !3636, line: 115, baseType: !500, size: 32, offset: 1056)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !3635, file: !3636, line: 117, baseType: !500, size: 32, offset: 1088)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !3635, file: !3636, line: 118, baseType: !504, size: 64, align: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3635, file: !3636, line: 120, baseType: !504, size: 64, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3635, file: !3636, line: 121, baseType: !504, size: 64, offset: 1280)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3635, file: !3636, line: 122, baseType: !504, size: 64, offset: 1344)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3635, file: !3636, line: 123, baseType: !504, size: 64, offset: 1408)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !3635, file: !3636, line: 133, baseType: !504, size: 64, offset: 1472)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !3635, file: !3636, line: 137, baseType: !504, size: 64, offset: 1536)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !3635, file: !3636, line: 142, baseType: !504, size: 64, offset: 1600)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !3635, file: !3636, line: 143, baseType: !504, size: 64, offset: 1664)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !3635, file: !3636, line: 146, baseType: !504, size: 64, offset: 1728)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !3635, file: !3636, line: 147, baseType: !504, size: 64, offset: 1792)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !3635, file: !3636, line: 148, baseType: !504, size: 64, offset: 1856)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !3635, file: !3636, line: 149, baseType: !504, size: 64, offset: 1920)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3635, file: !3636, line: 154, baseType: !504, size: 64, offset: 1984)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3635, file: !3636, line: 155, baseType: !504, size: 64, offset: 2048)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3635, file: !3636, line: 156, baseType: !504, size: 64, offset: 2112)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3635, file: !3636, line: 158, baseType: !504, size: 64, offset: 2176)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3635, file: !3636, line: 159, baseType: !504, size: 64, offset: 2240)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !3635, file: !3636, line: 162, baseType: !504, size: 64, offset: 2304)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !3635, file: !3636, line: 163, baseType: !504, size: 64, offset: 2368)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !3635, file: !3636, line: 164, baseType: !504, size: 64, offset: 2432)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !3635, file: !3636, line: 167, baseType: !504, size: 64, offset: 2496)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !3635, file: !3636, line: 168, baseType: !504, size: 64, offset: 2560)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !3635, file: !3636, line: 171, baseType: !504, size: 64, offset: 2624)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !3635, file: !3636, line: 172, baseType: !504, size: 64, offset: 2688)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !3635, file: !3636, line: 175, baseType: !504, size: 64, offset: 2752)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !3635, file: !3636, line: 178, baseType: !504, size: 64, offset: 2816)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !3635, file: !3636, line: 179, baseType: !504, size: 64, offset: 2880)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !3635, file: !3636, line: 182, baseType: !500, size: 32, offset: 2944)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !3635, file: !3636, line: 186, baseType: !504, size: 64, align: 64, offset: 3008)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !3635, file: !3636, line: 194, baseType: !504, size: 64, offset: 3072)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !3635, file: !3636, line: 195, baseType: !504, size: 64, offset: 3136)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !3635, file: !3636, line: 199, baseType: !504, size: 64, offset: 3200)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !3635, file: !3636, line: 200, baseType: !504, size: 64, offset: 3264)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !3635, file: !3636, line: 203, baseType: !504, size: 64, offset: 3328)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !3635, file: !3636, line: 204, baseType: !504, size: 64, offset: 3392)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3507, file: !3508, line: 222, baseType: !7, size: 32, offset: 7936)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3507, file: !3508, line: 223, baseType: !3697, size: 64, offset: 8000)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3508, line: 223, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3507, file: !3508, line: 230, baseType: !970, size: 8, offset: 8064)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3507, file: !3508, line: 231, baseType: !939, size: 16, offset: 8080)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3507, file: !3508, line: 232, baseType: !939, size: 16, offset: 8096)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3507, file: !3508, line: 234, baseType: !1332, size: 64, offset: 8128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3507, file: !3508, line: 237, baseType: !730, size: 256, offset: 8192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3507, file: !3508, line: 243, baseType: !911, size: 320, offset: 8448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2740, file: !1746, line: 1111, baseType: !3706, size: 64, offset: 15424)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3508, line: 20, size: 16640, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3707, file: !3508, line: 21, baseType: !75, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3707, file: !3508, line: 22, baseType: !832, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3707, file: !3508, line: 23, baseType: !70, size: 192, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3707, file: !3508, line: 24, baseType: !3713, size: 16384, offset: 256)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3714, size: 16384, elements: !361)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3519, line: 51, size: 256, elements: !3715)
!3715 = !{!3716}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3714, file: !3519, line: 52, baseType: !3717, size: 256)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3519, line: 37, size: 256, elements: !3718)
!3718 = !{!3719, !3726, !3727, !3731}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3717, file: !3519, line: 39, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3721, line: 83, baseType: !3722)
!3721 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3721, line: 82, baseType: !3724)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !38}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3717, file: !3519, line: 40, baseType: !55, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3717, file: !3519, line: 46, baseType: !3728, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3721, line: 86, baseType: !3729)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3721, line: 85, baseType: !3391)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3717, file: !3519, line: 48, baseType: !3523, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2740, file: !1746, line: 1112, baseType: !3523, size: 64, offset: 15488)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2740, file: !1746, line: 1113, baseType: !3523, size: 64, offset: 15552)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2740, file: !1746, line: 1115, baseType: !3523, size: 64, offset: 15616)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2740, file: !1746, line: 1116, baseType: !3518, size: 192, offset: 15680)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2740, file: !1746, line: 1117, baseType: !55, size: 64, offset: 15872)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2740, file: !1746, line: 1118, baseType: !51, size: 64, offset: 15936)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2740, file: !1746, line: 1119, baseType: !7, size: 32, offset: 16000)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2740, file: !1746, line: 1121, baseType: !790, size: 64, offset: 16064)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2740, file: !1746, line: 1125, baseType: !3741, size: 64, offset: 16128)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1746, line: 43, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2740, file: !1746, line: 1127, baseType: !436, size: 32, offset: 16192)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2740, file: !1746, line: 1128, baseType: !7, size: 32, offset: 16224)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2740, file: !1746, line: 1130, baseType: !3746, size: 128, offset: 16256)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3747, line: 37, size: 128, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3748 = !{!3749, !3750, !3751}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3746, file: !3747, line: 38, baseType: !38, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3746, file: !3747, line: 39, baseType: !65, size: 32, offset: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3746, file: !3747, line: 40, baseType: !3752, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3747, line: 24, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2740, file: !1746, line: 1131, baseType: !3755, size: 256, offset: 16384)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3756, line: 12, size: 256, elements: !3757)
!3756 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3757 = !{!3758, !3759, !3760, !3761}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3755, file: !3756, line: 13, baseType: !356, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3755, file: !3756, line: 14, baseType: !55, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3755, file: !3756, line: 15, baseType: !55, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3755, file: !3756, line: 16, baseType: !970, size: 8, offset: 192)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2740, file: !1746, line: 1134, baseType: !503, size: 64, offset: 16640)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2740, file: !1746, line: 1135, baseType: !503, size: 64, offset: 16704)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2740, file: !1746, line: 1138, baseType: !75, size: 32, offset: 16768)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2740, file: !1746, line: 1141, baseType: !743, size: 32, offset: 16800)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2740, file: !1746, line: 1143, baseType: !3767, size: 64, offset: 16832)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1746, line: 735, size: 64, elements: !3768)
!3768 = !{!3769}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3767, file: !1746, line: 736, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2740, file: !1746, line: 1147, baseType: !2400, size: 128, offset: 16896)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2740, file: !1746, line: 1149, baseType: !2739, size: 64, offset: 17024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2740, file: !1746, line: 1151, baseType: !3774, size: 64, offset: 17088)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1746, line: 1151, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2740, file: !1746, line: 1188, baseType: !36, size: 64, offset: 17152)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2740, file: !1746, line: 1191, baseType: !3778, size: 64, offset: 17216)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1746, line: 44, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2740, file: !1746, line: 1194, baseType: !3781, size: 64, offset: 17280)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1746, line: 45, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2740, file: !1746, line: 1197, baseType: !3784, size: 64, offset: 17344)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1746, line: 61, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2740, file: !1746, line: 1199, baseType: !3787, size: 64, offset: 17408)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2087, line: 99, size: 128, elements: !3789)
!3789 = !{!3790, !3791, !3792}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3788, file: !2087, line: 100, baseType: !734, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3788, file: !2087, line: 101, baseType: !65, size: 32, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3788, file: !2087, line: 103, baseType: !42, size: 16, offset: 96)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2740, file: !1746, line: 1202, baseType: !3794, size: 64, offset: 17472)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1746, line: 48, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2740, file: !1746, line: 1205, baseType: !55, size: 64, offset: 17536)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2740, file: !1746, line: 1206, baseType: !3798, size: 64, offset: 17600)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3519, line: 14, baseType: !3800)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3519, line: 12, size: 384, elements: !3801)
!3801 = !{!3802}
!3802 = !DIDerivedType(tag: DW_TAG_member, scope: !3800, file: !3519, line: 13, baseType: !3803, size: 384)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3800, file: !3519, line: 13, size: 384, elements: !3804)
!3804 = !{!3805, !3806, !3807, !3808}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3803, file: !3519, line: 13, baseType: !38, size: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3803, file: !3519, line: 13, baseType: !38, size: 32, offset: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3803, file: !3519, line: 13, baseType: !38, size: 32, offset: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3803, file: !3519, line: 13, baseType: !3809, size: 256, offset: 128)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3810, line: 37, size: 256, elements: !3811)
!3810 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3811 = !{!3812, !3817, !3830, !3836, !3845, !3872, !3877}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3809, file: !3810, line: 42, baseType: !3813, size: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 39, size: 64, elements: !3814)
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3813, file: !3810, line: 40, baseType: !3032, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3813, file: !3810, line: 41, baseType: !442, size: 32, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3809, file: !3810, line: 50, baseType: !3818, size: 192)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 45, size: 192, elements: !3819)
!3819 = !{!3820, !3822, !3823, !3829}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3818, file: !3810, line: 46, baseType: !3821, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !53, line: 95, baseType: !38)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3818, file: !3810, line: 47, baseType: !38, size: 32, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3818, file: !3810, line: 48, baseType: !3824, size: 64, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3810, line: 11, baseType: !3825)
!3825 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3810, line: 8, size: 64, elements: !3826)
!3826 = !{!3827, !3828}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3825, file: !3810, line: 9, baseType: !38, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3825, file: !3810, line: 10, baseType: !36, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3818, file: !3810, line: 49, baseType: !38, size: 32, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3809, file: !3810, line: 57, baseType: !3831, size: 128)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 53, size: 128, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3831, file: !3810, line: 54, baseType: !3032, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3831, file: !3810, line: 55, baseType: !442, size: 32, offset: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3831, file: !3810, line: 56, baseType: !3824, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3809, file: !3810, line: 66, baseType: !3837, size: 256)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 60, size: 256, elements: !3838)
!3838 = !{!3839, !3840, !3841, !3842, !3844}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3837, file: !3810, line: 61, baseType: !3032, size: 32)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3837, file: !3810, line: 62, baseType: !442, size: 32, offset: 32)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3837, file: !3810, line: 63, baseType: !38, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3837, file: !3810, line: 64, baseType: !3843, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !53, line: 94, baseType: !390)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3837, file: !3810, line: 65, baseType: !3843, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3809, file: !3810, line: 105, baseType: !3846, size: 256)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 69, size: 256, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3846, file: !3810, line: 70, baseType: !36, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3846, file: !3810, line: 79, baseType: !3850, size: 192, offset: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3846, file: !3810, line: 79, size: 192, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3861, !3866}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3850, file: !3810, line: 81, baseType: !38, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3850, file: !3810, line: 86, baseType: !939, size: 16)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3850, file: !3810, line: 92, baseType: !3855, size: 192)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3810, line: 88, size: 192, elements: !3856)
!3856 = !{!3857, !3859, !3860}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3855, file: !3810, line: 89, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !2384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3855, file: !3810, line: 90, baseType: !36, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3855, file: !3810, line: 91, baseType: !36, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3850, file: !3810, line: 97, baseType: !3862, size: 96)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3810, line: 94, size: 96, elements: !3863)
!3863 = !{!3864, !3865}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3862, file: !3810, line: 95, baseType: !3858, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3862, file: !3810, line: 96, baseType: !500, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3850, file: !3810, line: 103, baseType: !3867, size: 128)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3810, line: 99, size: 128, elements: !3868)
!3868 = !{!3869, !3870, !3871}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3867, file: !3810, line: 100, baseType: !55, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3867, file: !3810, line: 101, baseType: !500, size: 32, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3867, file: !3810, line: 102, baseType: !500, size: 32, offset: 96)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3809, file: !3810, line: 111, baseType: !3873, size: 128)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 108, size: 128, elements: !3874)
!3874 = !{!3875, !3876}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3873, file: !3810, line: 109, baseType: !391, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3873, file: !3810, line: 110, baseType: !38, size: 32, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3809, file: !3810, line: 118, baseType: !3878, size: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3809, file: !3810, line: 114, size: 128, elements: !3879)
!3879 = !{!3880, !3881, !3882}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3878, file: !3810, line: 115, baseType: !36, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3878, file: !3810, line: 116, baseType: !38, size: 32, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3878, file: !3810, line: 117, baseType: !7, size: 32, offset: 96)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2740, file: !1746, line: 1208, baseType: !3605, size: 448, offset: 17664)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2740, file: !1746, line: 1215, baseType: !503, size: 64, offset: 18112)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2740, file: !1746, line: 1217, baseType: !503, size: 64, offset: 18176)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2740, file: !1746, line: 1219, baseType: !503, size: 64, offset: 18240)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2740, file: !1746, line: 1223, baseType: !3888, size: 64, offset: 18304)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3889, line: 99, baseType: !3890)
!3889 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3889, line: 99, size: 64, elements: !3891)
!3891 = !{!3892}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3890, file: !3889, line: 99, baseType: !2902, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2740, file: !1746, line: 1225, baseType: !471, size: 32, offset: 18368)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2740, file: !1746, line: 1226, baseType: !38, size: 32, offset: 18400)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2740, file: !1746, line: 1227, baseType: !38, size: 32, offset: 18432)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2740, file: !1746, line: 1231, baseType: !3146, size: 64, offset: 18496)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2740, file: !1746, line: 1233, baseType: !113, size: 128, offset: 18560)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2740, file: !1746, line: 1240, baseType: !3899, size: 64, offset: 18688)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1746, line: 62, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2740, file: !1746, line: 1242, baseType: !3902, size: 64, offset: 18752)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1746, line: 1242, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2740, file: !1746, line: 1244, baseType: !113, size: 128, offset: 18816)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2740, file: !1746, line: 1245, baseType: !3906, size: 64, offset: 18944)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1746, line: 51, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2740, file: !1746, line: 1246, baseType: !730, size: 256, offset: 19008)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2740, file: !1746, line: 1247, baseType: !7, size: 32, offset: 19264)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2740, file: !1746, line: 1250, baseType: !3911, size: 64, offset: 19328)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1746, line: 57, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2740, file: !1746, line: 1251, baseType: !730, size: 256, offset: 19392)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2740, file: !1746, line: 1252, baseType: !113, size: 128, offset: 19648)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2740, file: !1746, line: 1259, baseType: !1744, size: 64, offset: 19776)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2740, file: !1746, line: 1260, baseType: !939, size: 16, offset: 19840)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2740, file: !1746, line: 1261, baseType: !939, size: 16, offset: 19856)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2740, file: !1746, line: 1314, baseType: !3919, size: 64, offset: 19904)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3921, line: 62, size: 256, align: 256, elements: !3922)
!3921 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3922 = !{!3923, !3924, !3925, !3926, !3927, !3928, !3929}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3920, file: !3921, line: 75, baseType: !500, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3920, file: !3921, line: 90, baseType: !500, size: 32, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3920, file: !3921, line: 112, baseType: !504, size: 64, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3920, file: !3921, line: 132, baseType: !500, size: 32, offset: 128)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3920, file: !3921, line: 140, baseType: !500, size: 32, offset: 160)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3920, file: !3921, line: 149, baseType: !500, size: 32, offset: 192)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3920, file: !3921, line: 154, baseType: !3930, offset: 224)
!3930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, elements: !854)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2740, file: !1746, line: 1315, baseType: !499, size: 32, offset: 19968)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2740, file: !1746, line: 1316, baseType: !499, size: 32, offset: 20000)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2740, file: !1746, line: 1321, baseType: !55, size: 64, offset: 20032)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2740, file: !1746, line: 1325, baseType: !38, size: 32, offset: 20096)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2740, file: !1746, line: 1326, baseType: !38, size: 32, offset: 20128)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2740, file: !1746, line: 1327, baseType: !38, size: 32, offset: 20160)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2740, file: !1746, line: 1328, baseType: !38, size: 32, offset: 20192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2740, file: !1746, line: 1329, baseType: !787, size: 128, align: 64, offset: 20224)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2740, file: !1746, line: 1332, baseType: !3940, size: 128, offset: 20352)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3941, line: 51, size: 128, elements: !3942)
!3941 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3942 = !{!3943, !3948, !3949}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3940, file: !3941, line: 60, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3945, line: 7, size: 64, elements: !3946)
!3945 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3946 = !{!3947}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3944, file: !3945, line: 12, baseType: !2899, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3940, file: !3941, line: 63, baseType: !970, size: 8, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3940, file: !3941, line: 70, baseType: !970, size: 8, offset: 72)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2740, file: !1746, line: 1335, baseType: !1797, size: 64, offset: 20480)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2740, file: !1746, line: 1337, baseType: !3952, size: 128, offset: 20544)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3941, line: 39, size: 128, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3952, file: !3941, line: 40, baseType: !1583, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3952, file: !3941, line: 42, baseType: !500, size: 32, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3952, file: !3941, line: 43, baseType: !500, size: 32, offset: 96)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2740, file: !1746, line: 1340, baseType: !3958, size: 64, offset: 20672)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1746, line: 69, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2740, file: !1746, line: 1351, baseType: !38, size: 32, offset: 20736)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2740, file: !1746, line: 1352, baseType: !38, size: 32, offset: 20768)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2740, file: !1746, line: 1354, baseType: !55, size: 64, offset: 20800)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2740, file: !1746, line: 1364, baseType: !503, size: 64, offset: 20864)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2740, file: !1746, line: 1365, baseType: !503, size: 64, offset: 20928)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2740, file: !1746, line: 1412, baseType: !55, size: 64, offset: 20992)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2740, file: !1746, line: 1453, baseType: !2082, size: 64, offset: 21056)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2740, file: !1746, line: 1457, baseType: !3968, size: 64, offset: 21120)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !260, line: 61, size: 576, elements: !3970)
!3970 = !{!3971, !3972, !3991, !3994, !3995, !4028, !4038}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3969, file: !260, line: 62, baseType: !259, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !260, line: 64, baseType: !3973, size: 192, offset: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3969, file: !260, line: 64, size: 192, elements: !3974)
!3974 = !{!3975, !3986}
!3975 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !260, line: 65, baseType: !3976, size: 192)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3973, file: !260, line: 65, size: 192, elements: !3977)
!3977 = !{!3978, !3985}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3976, file: !260, line: 66, baseType: !3979, size: 128)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3980, line: 50, size: 128, elements: !3981)
!3980 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3979, file: !3980, line: 52, baseType: !55, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3979, file: !3980, line: 54, baseType: !7, size: 32, offset: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3979, file: !3980, line: 55, baseType: !7, size: 32, offset: 96)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3976, file: !260, line: 67, baseType: !55, size: 64, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !260, line: 70, baseType: !3987, size: 192)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3973, file: !260, line: 70, size: 192, elements: !3988)
!3988 = !{!3989, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3987, file: !260, line: 71, baseType: !787, size: 128, align: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3987, file: !260, line: 72, baseType: !55, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3969, file: !260, line: 76, baseType: !3992, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !260, line: 76, flags: DIFlagFwdDecl)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3969, file: !260, line: 77, baseType: !55, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3969, file: !260, line: 79, baseType: !3996, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3980, line: 25, size: 256, elements: !3998)
!3998 = !{!3999, !4005, !4009}
!3999 = !DIDerivedType(tag: DW_TAG_member, scope: !3997, file: !3980, line: 26, baseType: !4000, size: 128)
!4000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3997, file: !3980, line: 26, size: 128, elements: !4001)
!4001 = !{!4002, !4004}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4000, file: !3980, line: 27, baseType: !4003, size: 128)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !2224)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4000, file: !3980, line: 28, baseType: !4003, size: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3997, file: !3980, line: 31, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4008 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3980, line: 23, flags: DIFlagFwdDecl)
!4009 = !DIDerivedType(tag: DW_TAG_member, scope: !3997, file: !3980, line: 33, baseType: !4010, size: 64, offset: 192)
!4010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3997, file: !3980, line: 33, size: 64, elements: !4011)
!4011 = !{!4012, !4018, !4023}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4010, file: !3980, line: 38, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4010, file: !3980, line: 34, size: 64, elements: !4014)
!4014 = !{!4015, !4016, !4017}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4013, file: !3980, line: 35, baseType: !896, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4013, file: !3980, line: 36, baseType: !99, size: 8, offset: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4013, file: !3980, line: 37, baseType: !99, size: 8, offset: 40)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4010, file: !3980, line: 42, baseType: !4019, size: 16)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4010, file: !3980, line: 39, size: 16, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4019, file: !3980, line: 40, baseType: !99, size: 8)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4019, file: !3980, line: 41, baseType: !99, size: 8, offset: 8)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4010, file: !3980, line: 46, baseType: !4024, size: 16)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4010, file: !3980, line: 43, size: 16, elements: !4025)
!4025 = !{!4026, !4027}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4024, file: !3980, line: 44, baseType: !99, size: 8)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4024, file: !3980, line: 45, baseType: !99, size: 8, offset: 8)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3969, file: !260, line: 81, baseType: !4029, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !260, line: 85, size: 384, elements: !4031)
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4037}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4030, file: !260, line: 86, baseType: !3992, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4030, file: !260, line: 87, baseType: !55, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4030, file: !260, line: 88, baseType: !55, size: 64, offset: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4030, file: !260, line: 89, baseType: !55, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4030, file: !260, line: 90, baseType: !970, size: 8, offset: 256)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4030, file: !260, line: 92, baseType: !4029, size: 64, offset: 320)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3969, file: !260, line: 82, baseType: !7, size: 32, offset: 512)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2740, file: !1746, line: 1463, baseType: !4040, offset: 21184)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1746, line: 739, elements: !631)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2740, file: !1746, line: 1470, baseType: !787, size: 128, align: 64, offset: 21184)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2740, file: !1746, line: 1471, baseType: !832, size: 32, offset: 21312)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2740, file: !1746, line: 1472, baseType: !38, size: 32, offset: 21344)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2740, file: !1746, line: 1474, baseType: !2739, size: 64, offset: 21376)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2740, file: !1746, line: 1475, baseType: !2310, size: 320, offset: 21440)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2740, file: !1746, line: 1478, baseType: !4047, size: 64, offset: 21760)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1746, line: 1478, flags: DIFlagFwdDecl)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2740, file: !1746, line: 1482, baseType: !832, size: 32, offset: 21824)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2740, file: !1746, line: 1489, baseType: !36, size: 64, offset: 21888)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2740, file: !1746, line: 1504, baseType: !36, size: 64, offset: 21952)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2740, file: !1746, line: 1505, baseType: !504, size: 64, offset: 22016)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2740, file: !1746, line: 1506, baseType: !503, size: 64, offset: 22080)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2740, file: !1746, line: 1507, baseType: !504, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2740, file: !1746, line: 1508, baseType: !504, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2740, file: !1746, line: 1509, baseType: !504, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2740, file: !1746, line: 1510, baseType: !787, size: 128, align: 64, offset: 22208)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2740, file: !1746, line: 1511, baseType: !38, size: 32, offset: 22336)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2740, file: !1746, line: 1515, baseType: !4060, size: 64, offset: 22400)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !782, line: 56, size: 64, elements: !4061)
!4061 = !{!4062}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4060, file: !782, line: 57, baseType: !785, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2740, file: !1746, line: 1518, baseType: !4060, size: 64, offset: 22464)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2740, file: !1746, line: 1528, baseType: !787, size: 128, align: 64, offset: 22528)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2740, file: !1746, line: 1552, baseType: !4066, size: 35328, offset: 23040)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4067, line: 430, size: 35328, elements: !4068)
!4067 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4068 = !{!4069, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4098, !4099, !4100, !4101, !4102, !4103, !4106, !4107, !4108, !4109}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4066, file: !4067, line: 432, baseType: !4070, size: 192)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4071, size: 192, elements: !357)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4072, line: 16, size: 64, elements: !4073)
!4072 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4071, file: !4072, line: 17, baseType: !109, size: 16)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4071, file: !4072, line: 18, baseType: !109, size: 16, offset: 16)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4071, file: !4072, line: 19, baseType: !109, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4071, file: !4072, line: 19, baseType: !109, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4071, file: !4072, line: 19, baseType: !109, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4071, file: !4072, line: 19, baseType: !109, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4071, file: !4072, line: 19, baseType: !109, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4071, file: !4072, line: 20, baseType: !109, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4071, file: !4072, line: 20, baseType: !109, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4071, file: !4072, line: 20, baseType: !109, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4071, file: !4072, line: 20, baseType: !109, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4071, file: !4072, line: 20, baseType: !109, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4071, file: !4072, line: 20, baseType: !109, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4066, file: !4067, line: 436, baseType: !55, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4066, file: !4067, line: 440, baseType: !42, size: 16, offset: 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4066, file: !4067, line: 441, baseType: !42, size: 16, offset: 272)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4066, file: !4067, line: 442, baseType: !42, size: 16, offset: 288)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4066, file: !4067, line: 443, baseType: !42, size: 16, offset: 304)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4066, file: !4067, line: 447, baseType: !55, size: 64, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4066, file: !4067, line: 448, baseType: !55, size: 64, offset: 384)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4066, file: !4067, line: 459, baseType: !4095, size: 256, offset: 448)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4096, size: 256, elements: !841)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4067, line: 428, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4066, file: !4067, line: 461, baseType: !55, size: 64, offset: 704)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4066, file: !4067, line: 463, baseType: !55, size: 64, offset: 768)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4066, file: !4067, line: 465, baseType: !55, size: 64, offset: 832)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4066, file: !4067, line: 466, baseType: !55, size: 64, offset: 896)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4066, file: !4067, line: 467, baseType: !55, size: 64, offset: 960)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4066, file: !4067, line: 473, baseType: !4104, size: 64, offset: 1024)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4067, line: 10, flags: DIFlagFwdDecl)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4066, file: !4067, line: 480, baseType: !55, size: 64, offset: 1088)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4066, file: !4067, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4066, file: !4067, line: 491, baseType: !499, size: 32, offset: 1184)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4066, file: !4067, line: 501, baseType: !4110, size: 33792, offset: 1536)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4111, line: 448, size: 33792, elements: !4112)
!4111 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4112 = !{!4113, !4114, !4115, !4275, !4276, !4282, !4283}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4110, file: !4111, line: 461, baseType: !7, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4110, file: !4111, line: 468, baseType: !55, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4110, file: !4111, line: 476, baseType: !4116, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4111, line: 356, size: 33280, align: 512, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4117, file: !4111, line: 358, baseType: !7, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4117, file: !4111, line: 361, baseType: !7, size: 32, offset: 32)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4117, file: !4111, line: 364, baseType: !503, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4117, file: !4111, line: 367, baseType: !503, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4117, file: !4111, line: 370, baseType: !503, size: 64, offset: 192)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4117, file: !4111, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4117, file: !4111, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4117, file: !4111, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4117, file: !4111, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4117, file: !4111, line: 397, baseType: !4129, size: 32768, offset: 512)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4111, line: 348, size: 32768, elements: !4130)
!4130 = !{!4131, !4146, !4183, !4260, !4273}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4129, file: !4111, line: 349, baseType: !4132, size: 896)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4111, line: 12, size: 896, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4145}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4132, file: !4111, line: 13, baseType: !499, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4132, file: !4111, line: 14, baseType: !499, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4132, file: !4111, line: 15, baseType: !499, size: 32, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4132, file: !4111, line: 16, baseType: !499, size: 32, offset: 96)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4132, file: !4111, line: 17, baseType: !499, size: 32, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4132, file: !4111, line: 18, baseType: !499, size: 32, offset: 160)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4132, file: !4111, line: 19, baseType: !499, size: 32, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4132, file: !4111, line: 22, baseType: !4142, size: 640, offset: 224)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 640, elements: !4143)
!4143 = !{!4144}
!4144 = !DISubrange(count: 20)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4132, file: !4111, line: 25, baseType: !499, size: 32, offset: 864)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4129, file: !4111, line: 350, baseType: !4147, size: 4096, align: 128)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4111, line: 34, size: 4096, align: 128, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4168, !4169, !4170, !4172, !4174, !4178}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4147, file: !4111, line: 35, baseType: !109, size: 16)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4147, file: !4111, line: 36, baseType: !109, size: 16, offset: 16)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4147, file: !4111, line: 37, baseType: !109, size: 16, offset: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4147, file: !4111, line: 38, baseType: !109, size: 16, offset: 48)
!4153 = !DIDerivedType(tag: DW_TAG_member, scope: !4147, file: !4111, line: 39, baseType: !4154, size: 128, offset: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4147, file: !4111, line: 39, size: 128, elements: !4155)
!4155 = !{!4156, !4161}
!4156 = !DIDerivedType(tag: DW_TAG_member, scope: !4154, file: !4111, line: 40, baseType: !4157, size: 128)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4154, file: !4111, line: 40, size: 128, elements: !4158)
!4158 = !{!4159, !4160}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4157, file: !4111, line: 41, baseType: !503, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4157, file: !4111, line: 42, baseType: !503, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, scope: !4154, file: !4111, line: 44, baseType: !4162, size: 128)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4154, file: !4111, line: 44, size: 128, elements: !4163)
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4162, file: !4111, line: 45, baseType: !499, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4162, file: !4111, line: 46, baseType: !499, size: 32, offset: 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4162, file: !4111, line: 47, baseType: !499, size: 32, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4162, file: !4111, line: 48, baseType: !499, size: 32, offset: 96)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4147, file: !4111, line: 51, baseType: !499, size: 32, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4147, file: !4111, line: 52, baseType: !499, size: 32, offset: 224)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4147, file: !4111, line: 55, baseType: !4171, size: 1024, offset: 256)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 1024, elements: !512)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4147, file: !4111, line: 58, baseType: !4173, size: 2048, offset: 1280)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 2048, elements: !361)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4147, file: !4111, line: 60, baseType: !4175, size: 384, offset: 3328)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 384, elements: !4176)
!4176 = !{!4177}
!4177 = !DISubrange(count: 12)
!4178 = !DIDerivedType(tag: DW_TAG_member, scope: !4147, file: !4111, line: 62, baseType: !4179, size: 384, offset: 3712)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4147, file: !4111, line: 62, size: 384, elements: !4180)
!4180 = !{!4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4179, file: !4111, line: 63, baseType: !4175, size: 384)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4179, file: !4111, line: 64, baseType: !4175, size: 384)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4129, file: !4111, line: 351, baseType: !4184, size: 1088)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4111, line: 79, size: 1088, elements: !4185)
!4185 = !{!4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4259}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4184, file: !4111, line: 80, baseType: !499, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4184, file: !4111, line: 81, baseType: !499, size: 32, offset: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4184, file: !4111, line: 82, baseType: !499, size: 32, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4184, file: !4111, line: 83, baseType: !499, size: 32, offset: 96)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4184, file: !4111, line: 84, baseType: !499, size: 32, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4184, file: !4111, line: 85, baseType: !499, size: 32, offset: 160)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4184, file: !4111, line: 86, baseType: !499, size: 32, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4184, file: !4111, line: 88, baseType: !4142, size: 640, offset: 224)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4184, file: !4111, line: 89, baseType: !99, size: 8, offset: 864)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4184, file: !4111, line: 90, baseType: !99, size: 8, offset: 872)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4184, file: !4111, line: 91, baseType: !99, size: 8, offset: 880)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4184, file: !4111, line: 92, baseType: !99, size: 8, offset: 888)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4184, file: !4111, line: 93, baseType: !99, size: 8, offset: 896)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4184, file: !4111, line: 94, baseType: !99, size: 8, offset: 904)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4184, file: !4111, line: 95, baseType: !4201, size: 64, offset: 960)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4203, line: 11, size: 128, elements: !4204)
!4203 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4204 = !{!4205, !4206}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4202, file: !4203, line: 12, baseType: !391, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4202, file: !4203, line: 13, baseType: !4207, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4209, line: 103, size: 1344, elements: !4210)
!4209 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4239, !4240, !4241}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4208, file: !4209, line: 109, baseType: !55, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4208, file: !4209, line: 110, baseType: !55, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4208, file: !4209, line: 111, baseType: !55, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4208, file: !4209, line: 112, baseType: !55, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4208, file: !4209, line: 113, baseType: !55, size: 64, offset: 256)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4208, file: !4209, line: 114, baseType: !55, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4208, file: !4209, line: 117, baseType: !55, size: 64, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4208, file: !4209, line: 118, baseType: !55, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4208, file: !4209, line: 119, baseType: !55, size: 64, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4208, file: !4209, line: 120, baseType: !55, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4208, file: !4209, line: 121, baseType: !55, size: 64, offset: 640)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4208, file: !4209, line: 122, baseType: !55, size: 64, offset: 704)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4208, file: !4209, line: 123, baseType: !55, size: 64, offset: 768)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4208, file: !4209, line: 124, baseType: !55, size: 64, offset: 832)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4208, file: !4209, line: 125, baseType: !55, size: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4208, file: !4209, line: 139, baseType: !55, size: 64, offset: 960)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4208, file: !4209, line: 142, baseType: !55, size: 64, offset: 1024)
!4228 = !DIDerivedType(tag: DW_TAG_member, scope: !4208, file: !4209, line: 144, baseType: !4229, size: 64, offset: 1088)
!4229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4208, file: !4209, line: 144, size: 64, elements: !4230)
!4230 = !{!4231, !4232, !4233}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4229, file: !4209, line: 146, baseType: !109, size: 16)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4229, file: !4209, line: 148, baseType: !503, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4229, file: !4209, line: 150, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4209, line: 59, size: 64, elements: !4235)
!4235 = !{!4236, !4237, !4238}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4234, file: !4209, line: 61, baseType: !503, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4234, file: !4209, line: 63, baseType: !503, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4234, file: !4209, line: 65, baseType: !503, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4208, file: !4209, line: 153, baseType: !55, size: 64, offset: 1152)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4208, file: !4209, line: 154, baseType: !55, size: 64, offset: 1216)
!4241 = !DIDerivedType(tag: DW_TAG_member, scope: !4208, file: !4209, line: 156, baseType: !4242, size: 64, offset: 1280)
!4242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4208, file: !4209, line: 156, size: 64, elements: !4243)
!4243 = !{!4244, !4245, !4246}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4242, file: !4209, line: 158, baseType: !109, size: 16)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4242, file: !4209, line: 160, baseType: !503, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4242, file: !4209, line: 162, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4209, line: 69, size: 64, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4247, file: !4209, line: 71, baseType: !503, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4247, file: !4209, line: 73, baseType: !503, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4247, file: !4209, line: 75, baseType: !503, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4247, file: !4209, line: 77, baseType: !503, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4247, file: !4209, line: 80, baseType: !503, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4247, file: !4209, line: 83, baseType: !503, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4247, file: !4209, line: 86, baseType: !503, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4247, file: !4209, line: 88, baseType: !503, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4247, file: !4209, line: 93, baseType: !503, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4247, file: !4209, line: 100, baseType: !503, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4184, file: !4111, line: 96, baseType: !499, size: 32, offset: 1024)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4129, file: !4111, line: 352, baseType: !4261, size: 4608, align: 512)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4111, line: 333, size: 4608, align: 512, elements: !4262)
!4262 = !{!4263, !4264, !4271}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4261, file: !4111, line: 334, baseType: !4147, size: 4096, align: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4261, file: !4111, line: 335, baseType: !4265, size: 512, offset: 4096)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4111, line: 312, size: 512, elements: !4266)
!4266 = !{!4267, !4268, !4269}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4265, file: !4111, line: 313, baseType: !503, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4265, file: !4111, line: 314, baseType: !503, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4265, file: !4111, line: 315, baseType: !4270, size: 384, offset: 128)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 384, elements: !957)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4261, file: !4111, line: 336, baseType: !4272, offset: 4608)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !854)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4129, file: !4111, line: 353, baseType: !4274, size: 32768)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 32768, elements: !3293)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4110, file: !4111, line: 484, baseType: !4116, size: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4110, file: !4111, line: 491, baseType: !4277, size: 128, offset: 256)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4111, line: 404, size: 128, elements: !4278)
!4278 = !{!4279, !4280, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4277, file: !4111, line: 424, baseType: !503, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4277, file: !4111, line: 432, baseType: !7, size: 32, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4277, file: !4111, line: 440, baseType: !7, size: 32, offset: 96)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4110, file: !4111, line: 498, baseType: !4277, size: 128, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4110, file: !4111, line: 508, baseType: !4117, size: 33280, align: 512, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2721, file: !2722, line: 16, baseType: !70, size: 192, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2721, file: !2722, line: 17, baseType: !65, size: 32, offset: 704)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !582, file: !173, line: 1240, baseType: !36, size: 64, offset: 6912)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !582, file: !173, line: 1243, baseType: !499, size: 32, offset: 6976)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !582, file: !173, line: 1245, baseType: !927, size: 64, offset: 7040)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !582, file: !173, line: 1246, baseType: !927, size: 64, offset: 7104)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !582, file: !173, line: 1248, baseType: !500, size: 32, offset: 7168)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !582, file: !173, line: 1249, baseType: !4292, size: 64, offset: 7232)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !173, line: 634, flags: DIFlagFwdDecl)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !582, file: !173, line: 1252, baseType: !2210, size: 256, offset: 7296)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !582, file: !173, line: 1253, baseType: !4296, size: 128, offset: 7552)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4297, line: 21, baseType: !4298)
!4297 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4297, line: 19, size: 128, elements: !4299)
!4299 = !{!4300}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4298, file: !4297, line: 20, baseType: !2223, size: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !582, file: !173, line: 1255, baseType: !7, size: 32, offset: 7680)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !582, file: !173, line: 1261, baseType: !730, size: 256, offset: 7744)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !582, file: !173, line: 1267, baseType: !32, size: 64, offset: 8000)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !582, file: !173, line: 1269, baseType: !528, size: 64, offset: 8064)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !582, file: !173, line: 1271, baseType: !4306, size: 448, offset: 8128)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1915, line: 63, size: 448, elements: !4307)
!4307 = !{!4308, !4313, !4314, !4315, !4316, !4317, !4318}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4306, file: !1915, line: 64, baseType: !4309, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!55, !4312, !1913}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4306, file: !1915, line: 66, baseType: !4309, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4306, file: !1915, line: 69, baseType: !391, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4306, file: !1915, line: 70, baseType: !38, size: 32, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4306, file: !1915, line: 71, baseType: !7, size: 32, offset: 224)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4306, file: !1915, line: 74, baseType: !113, size: 128, offset: 256)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4306, file: !1915, line: 85, baseType: !4319, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !582, file: !173, line: 1274, baseType: !734, size: 64, offset: 8576)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !582, file: !173, line: 1280, baseType: !734, size: 64, offset: 8640)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !582, file: !173, line: 1283, baseType: !38, size: 32, offset: 8704)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !582, file: !173, line: 1286, baseType: !1847, size: 32, offset: 8736)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !582, file: !173, line: 1289, baseType: !2655, size: 64, offset: 8768)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !582, file: !173, line: 1290, baseType: !619, size: 64, offset: 8832)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !582, file: !173, line: 1297, baseType: !1053, size: 64, offset: 8896)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !582, file: !173, line: 1304, baseType: !4328, size: 64, offset: 8960)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4329, line: 49, size: 64, elements: !4330)
!4329 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4330 = !{!4331}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4328, file: !4329, line: 50, baseType: !4332, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4329, line: 41, size: 512, align: 512, elements: !4334)
!4334 = !{!4335, !4336, !4341}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4333, file: !4329, line: 43, baseType: !75, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4333, file: !4329, line: 45, baseType: !4337, size: 192, offset: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4329, line: 29, size: 192, elements: !4338)
!4338 = !{!4339, !4340}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4337, file: !4329, line: 30, baseType: !113, size: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4337, file: !4329, line: 32, baseType: !391, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4333, file: !4329, line: 46, baseType: !391, size: 64, offset: 256)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !582, file: !173, line: 1305, baseType: !4328, size: 64, offset: 9024)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !582, file: !173, line: 1306, baseType: !787, size: 128, align: 64, offset: 9088)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !582, file: !173, line: 1307, baseType: !1102, size: 256, offset: 9216)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !582, file: !173, line: 1309, baseType: !730, size: 256, offset: 9472)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !582, file: !173, line: 1314, baseType: !38, size: 32, offset: 9728)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !582, file: !173, line: 1317, baseType: !75, size: 32, align: 512, offset: 10240)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !582, file: !173, line: 1318, baseType: !113, size: 128, offset: 10304)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !582, file: !173, line: 1320, baseType: !75, size: 32, offset: 10432)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !582, file: !173, line: 1321, baseType: !113, size: 128, offset: 10496)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !576, file: !577, line: 73, baseType: !38, size: 32, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !576, file: !577, line: 74, baseType: !4353, size: 64, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !878, line: 42, flags: DIFlagFwdDecl)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !530, file: !467, line: 141, baseType: !4357, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!38, !1975, !970}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !530, file: !467, line: 142, baseType: !4361, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!465, !465, !4364}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !466, file: !467, line: 96, baseType: !581, size: 64, offset: 832)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !466, file: !467, line: 97, baseType: !55, size: 64, offset: 896)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !466, file: !467, line: 98, baseType: !36, size: 64, offset: 960)
!4369 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 100, baseType: !4370, size: 128, offset: 1024)
!4370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 100, size: 128, elements: !4371)
!4371 = !{!4372, !4373}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4370, file: !467, line: 101, baseType: !113, size: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4370, file: !467, line: 102, baseType: !4374, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !466, file: !467, line: 104, baseType: !113, size: 128, offset: 1152)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !466, file: !467, line: 105, baseType: !113, size: 128, offset: 1280)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !466, file: !467, line: 113, baseType: !4378, size: 128, offset: 1408)
!4378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 109, size: 128, elements: !4379)
!4379 = !{!4380, !4381, !4382}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4378, file: !467, line: 110, baseType: !623, size: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4378, file: !467, line: 111, baseType: !481, size: 128)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4378, file: !467, line: 112, baseType: !787, size: 128, align: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !459, file: !173, line: 1968, baseType: !4384, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!32, !465, !430, !4387}
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4389, line: 10, size: 128, elements: !4390)
!4389 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4388, file: !4389, line: 11, baseType: !2560, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4388, file: !4389, line: 12, baseType: !36, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !459, file: !173, line: 1969, baseType: !4394, size: 64, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!38, !4353, !430, !38}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !459, file: !173, line: 1970, baseType: !4398, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!453, !430, !38, !970}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !459, file: !173, line: 1972, baseType: !4402, size: 64, offset: 256)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!38, !465, !356, !38}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !459, file: !173, line: 1974, baseType: !4406, size: 64, offset: 320)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!38, !4353, !430, !465, !40, !970}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !459, file: !173, line: 1976, baseType: !4410, size: 64, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!38, !465, !430, !465}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !459, file: !173, line: 1977, baseType: !4414, size: 64, offset: 448)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!38, !430, !465}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !459, file: !173, line: 1978, baseType: !4418, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!38, !4353, !430, !465, !32}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !459, file: !173, line: 1980, baseType: !4422, size: 64, offset: 576)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!38, !4353, !430, !465, !40}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !459, file: !173, line: 1982, baseType: !4414, size: 64, offset: 640)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !459, file: !173, line: 1983, baseType: !4427, size: 64, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!38, !4353, !430, !465, !40, !586}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !459, file: !173, line: 1985, baseType: !4431, size: 64, offset: 768)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!38, !4353, !430, !465, !430, !465, !7}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !459, file: !173, line: 1987, baseType: !4435, size: 64, offset: 832)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!38, !4353, !465, !4438}
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !173, line: 226, size: 640, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4453, !4462, !4463, !4468, !4469, !4470}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4439, file: !173, line: 227, baseType: !7, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4439, file: !173, line: 228, baseType: !40, size: 16, offset: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, scope: !4439, file: !173, line: 241, baseType: !4444, size: 32, offset: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4439, file: !173, line: 241, size: 32, elements: !4445)
!4445 = !{!4446, !4447}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4444, file: !173, line: 242, baseType: !436, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4444, file: !173, line: 243, baseType: !4448, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4449, line: 16, baseType: !4450)
!4449 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4449, line: 14, size: 32, elements: !4451)
!4451 = !{!4452}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4450, file: !4449, line: 15, baseType: !441, size: 32)
!4453 = !DIDerivedType(tag: DW_TAG_member, scope: !4439, file: !173, line: 245, baseType: !4454, size: 32, offset: 96)
!4454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4439, file: !173, line: 245, size: 32, elements: !4455)
!4455 = !{!4456, !4457}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4454, file: !173, line: 246, baseType: !445, size: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4454, file: !173, line: 247, baseType: !4458, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4449, line: 20, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4449, line: 18, size: 32, elements: !4460)
!4460 = !{!4461}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4459, file: !4449, line: 19, baseType: !449, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4439, file: !173, line: 249, baseType: !57, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4439, file: !173, line: 250, baseType: !4464, size: 128, offset: 192)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !928, line: 13, size: 128, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4464, file: !928, line: 14, baseType: !927, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4464, file: !928, line: 15, baseType: !391, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4439, file: !173, line: 251, baseType: !4464, size: 128, offset: 320)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4439, file: !173, line: 252, baseType: !4464, size: 128, offset: 448)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4439, file: !173, line: 259, baseType: !1245, size: 64, offset: 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !459, file: !173, line: 1988, baseType: !4472, size: 64, offset: 896)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!38, !4353, !1975, !4475, !499, !7}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4477, line: 22, size: 1280, elements: !4478)
!4477 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4476, file: !4477, line: 23, baseType: !499, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4476, file: !4477, line: 24, baseType: !40, size: 16, offset: 32)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4476, file: !4477, line: 25, baseType: !7, size: 32, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4476, file: !4477, line: 26, baseType: !935, size: 32, offset: 96)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4476, file: !4477, line: 27, baseType: !503, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4476, file: !4477, line: 28, baseType: !503, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4476, file: !4477, line: 41, baseType: !503, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4476, file: !4477, line: 42, baseType: !586, size: 32, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4476, file: !4477, line: 43, baseType: !586, size: 32, offset: 352)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4476, file: !4477, line: 44, baseType: !436, size: 32, offset: 384)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4476, file: !4477, line: 45, baseType: !445, size: 32, offset: 416)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4476, file: !4477, line: 46, baseType: !57, size: 64, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4476, file: !4477, line: 47, baseType: !4464, size: 128, offset: 512)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4476, file: !4477, line: 48, baseType: !4464, size: 128, offset: 640)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4476, file: !4477, line: 49, baseType: !4464, size: 128, offset: 768)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4476, file: !4477, line: 50, baseType: !4464, size: 128, offset: 896)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4476, file: !4477, line: 51, baseType: !503, size: 64, offset: 1024)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4476, file: !4477, line: 52, baseType: !503, size: 64, offset: 1088)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4476, file: !4477, line: 53, baseType: !499, size: 32, offset: 1152)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4476, file: !4477, line: 54, baseType: !499, size: 32, offset: 1184)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4476, file: !4477, line: 55, baseType: !503, size: 64, offset: 1216)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !459, file: !173, line: 1990, baseType: !4501, size: 64, offset: 960)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!388, !465, !356, !51}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !459, file: !173, line: 1991, baseType: !4505, size: 64, offset: 1024)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!38, !430, !4508, !503, !503}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !173, line: 55, flags: DIFlagFwdDecl)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !459, file: !173, line: 1993, baseType: !4511, size: 64, offset: 1088)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!38, !430, !38}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !459, file: !173, line: 1994, baseType: !4515, size: 64, offset: 1152)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!38, !430, !465, !1245, !7, !40}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !459, file: !173, line: 1997, baseType: !4519, size: 64, offset: 1216)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!38, !4353, !430, !1245, !40}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !459, file: !173, line: 1999, baseType: !4523, size: 64, offset: 1280)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!453, !4353, !465, !38}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !459, file: !173, line: 2001, baseType: !4527, size: 64, offset: 1344)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!38, !4353, !465, !453, !38}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !459, file: !173, line: 2003, baseType: !4531, size: 64, offset: 1408)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!38, !4353, !465, !4534}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !173, line: 76, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !459, file: !173, line: 2005, baseType: !4537, size: 64, offset: 1472)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!38, !465, !4534}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !459, file: !173, line: 2006, baseType: !4541, size: 64, offset: 1536)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!4544, !430}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !173, line: 3192, size: 192, elements: !4546)
!4546 = !{!4547, !4548}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4545, file: !173, line: 3193, baseType: !3420, size: 128)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4545, file: !173, line: 3194, baseType: !499, size: 32, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !431, file: !173, line: 655, baseType: !581, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !431, file: !173, line: 656, baseType: !426, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !431, file: !173, line: 659, baseType: !36, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !431, file: !173, line: 663, baseType: !55, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !173, line: 671, baseType: !4554, size: 32, offset: 704)
!4554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !173, line: 671, size: 32, elements: !4555)
!4555 = !{!4556, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4554, file: !173, line: 672, baseType: !4557, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4554, file: !173, line: 673, baseType: !7, size: 32)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !431, file: !173, line: 675, baseType: !586, size: 32, offset: 736)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !431, file: !173, line: 676, baseType: !57, size: 64, offset: 768)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !431, file: !173, line: 677, baseType: !4464, size: 128, offset: 832)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !431, file: !173, line: 678, baseType: !4464, size: 128, offset: 960)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !431, file: !173, line: 679, baseType: !4464, size: 128, offset: 1088)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !431, file: !173, line: 680, baseType: !75, size: 32, offset: 1216)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !431, file: !173, line: 681, baseType: !42, size: 16, offset: 1248)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !431, file: !173, line: 682, baseType: !99, size: 8, offset: 1264)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !431, file: !173, line: 683, baseType: !99, size: 8, offset: 1272)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !431, file: !173, line: 684, baseType: !2048, size: 64, offset: 1280)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !431, file: !173, line: 691, baseType: !55, size: 64, offset: 1344)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !431, file: !173, line: 692, baseType: !911, size: 320, offset: 1408)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !431, file: !173, line: 694, baseType: !55, size: 64, offset: 1728)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !431, file: !173, line: 695, baseType: !55, size: 64, offset: 1792)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !431, file: !173, line: 697, baseType: !623, size: 128, offset: 1856)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !431, file: !173, line: 698, baseType: !113, size: 128, offset: 1984)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !431, file: !173, line: 707, baseType: !113, size: 128, offset: 2112)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !431, file: !173, line: 708, baseType: !113, size: 128, offset: 2240)
!4577 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !173, line: 709, baseType: !4578, size: 128, offset: 2368)
!4578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !173, line: 709, size: 128, elements: !4579)
!4579 = !{!4580, !4581}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4578, file: !173, line: 710, baseType: !619, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4578, file: !173, line: 711, baseType: !787, size: 128, align: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !431, file: !173, line: 713, baseType: !736, size: 64, offset: 2496)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !431, file: !173, line: 714, baseType: !736, size: 64, offset: 2560)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !431, file: !173, line: 715, baseType: !65, size: 32, offset: 2624)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !431, file: !173, line: 716, baseType: !65, size: 32, offset: 2656)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !431, file: !173, line: 717, baseType: !65, size: 32, offset: 2688)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !431, file: !173, line: 719, baseType: !65, size: 32, offset: 2720)
!4588 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !173, line: 721, baseType: !4589, size: 64, offset: 2752)
!4589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !173, line: 721, size: 64, elements: !4590)
!4590 = !{!4591, !4592}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4589, file: !173, line: 722, baseType: !1236, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4589, file: !173, line: 723, baseType: !650, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !431, file: !173, line: 725, baseType: !4594, size: 64, offset: 2816)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !173, line: 725, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !431, file: !173, line: 726, baseType: !427, size: 1536, align: 64, offset: 2880)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !431, file: !173, line: 727, baseType: !113, size: 128, offset: 4416)
!4598 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !173, line: 728, baseType: !4599, size: 64, offset: 4544)
!4599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !173, line: 728, size: 64, elements: !4600)
!4600 = !{!4601, !4602, !4605, !4606}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4599, file: !173, line: 729, baseType: !1797, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4599, file: !173, line: 730, baseType: !4603, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 730, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4599, file: !173, line: 731, baseType: !356, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4599, file: !173, line: 732, baseType: !7, size: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !431, file: !173, line: 735, baseType: !500, size: 32, offset: 4608)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !431, file: !173, line: 738, baseType: !500, size: 32, offset: 4640)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !431, file: !173, line: 739, baseType: !4292, size: 64, offset: 4672)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !431, file: !173, line: 750, baseType: !36, size: 64, offset: 4736)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !427, file: !173, line: 474, baseType: !3420, size: 128, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !427, file: !173, line: 475, baseType: !911, size: 320, offset: 192)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !427, file: !173, line: 476, baseType: !1553, size: 32, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !427, file: !173, line: 477, baseType: !65, size: 32, offset: 544)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !427, file: !173, line: 482, baseType: !2400, size: 128, offset: 576)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !427, file: !173, line: 483, baseType: !55, size: 64, offset: 704)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !427, file: !173, line: 484, baseType: !55, size: 64, offset: 768)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !427, file: !173, line: 485, baseType: !4619, size: 64, offset: 832)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4621)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !173, line: 404, size: 1280, elements: !4622)
!4622 = !{!4623, !4627, !4697, !4701, !4705, !4711, !4716, !4720, !4724, !4728, !4732, !4736, !4737, !4741, !4745, !4749, !4754, !4758, !4765, !4766}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4621, file: !173, line: 405, baseType: !4624, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!38, !1583, !662}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4621, file: !173, line: 406, baseType: !4628, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!38, !1245, !4631}
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !139, line: 293, size: 1536, elements: !4633)
!4633 = !{!4634, !4664, !4678}
!4634 = !DIDerivedType(tag: DW_TAG_member, scope: !4632, file: !139, line: 295, baseType: !4635, size: 512)
!4635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4632, file: !139, line: 295, size: 512, elements: !4636)
!4636 = !{!4637, !4663}
!4637 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !139, line: 296, baseType: !4638, size: 448)
!4638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4635, file: !139, line: 296, size: 448, elements: !4639)
!4639 = !{!4640, !4641, !4650, !4651, !4652, !4661, !4662}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4638, file: !139, line: 298, baseType: !55, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_member, scope: !4638, file: !139, line: 299, baseType: !4642, size: 128, offset: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4638, file: !139, line: 299, size: 128, elements: !4643)
!4643 = !{!4644, !4645}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4642, file: !139, line: 300, baseType: !113, size: 128)
!4645 = !DIDerivedType(tag: DW_TAG_member, scope: !4642, file: !139, line: 302, baseType: !4646, size: 128)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4642, file: !139, line: 302, size: 128, elements: !4647)
!4647 = !{!4648, !4649}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4646, file: !139, line: 303, baseType: !36, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4646, file: !139, line: 305, baseType: !7, size: 32, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4638, file: !139, line: 310, baseType: !426, size: 64, offset: 192)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4638, file: !139, line: 311, baseType: !55, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, scope: !4638, file: !139, line: 312, baseType: !4653, size: 64, offset: 320)
!4653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4638, file: !139, line: 312, size: 64, elements: !4654)
!4654 = !{!4655, !4656}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4653, file: !139, line: 313, baseType: !36, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4653, file: !139, line: 314, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !139, line: 257, baseType: !4658)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 255, size: 64, elements: !4659)
!4659 = !{!4660}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4658, file: !139, line: 256, baseType: !55, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4638, file: !139, line: 316, baseType: !65, size: 32, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4638, file: !139, line: 317, baseType: !65, size: 32, offset: 416)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4635, file: !139, line: 323, baseType: !1584, size: 512, align: 128)
!4664 = !DIDerivedType(tag: DW_TAG_member, scope: !4632, file: !139, line: 325, baseType: !4665, size: 512, offset: 512)
!4665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4632, file: !139, line: 325, size: 512, elements: !4666)
!4666 = !{!4667, !4677}
!4667 = !DIDerivedType(tag: DW_TAG_member, scope: !4665, file: !139, line: 326, baseType: !4668, size: 320)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4665, file: !139, line: 326, size: 320, elements: !4669)
!4669 = !{!4670, !4671, !4672, !4673, !4674, !4675, !4676}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4668, file: !139, line: 327, baseType: !55, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4668, file: !139, line: 328, baseType: !55, size: 64, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4668, file: !139, line: 329, baseType: !55, size: 64, offset: 128)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4668, file: !139, line: 331, baseType: !65, size: 32, offset: 192)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4668, file: !139, line: 332, baseType: !65, size: 32, offset: 224)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4668, file: !139, line: 333, baseType: !65, size: 32, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4668, file: !139, line: 335, baseType: !7, size: 32, offset: 288)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4665, file: !139, line: 339, baseType: !1584, size: 512, align: 128)
!4678 = !DIDerivedType(tag: DW_TAG_member, scope: !4632, file: !139, line: 341, baseType: !4679, size: 512, offset: 1024)
!4679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4632, file: !139, line: 341, size: 512, elements: !4680)
!4680 = !{!4681, !4690, !4696}
!4681 = !DIDerivedType(tag: DW_TAG_member, scope: !4679, file: !139, line: 342, baseType: !4682, size: 384)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4679, file: !139, line: 342, size: 384, elements: !4683)
!4683 = !{!4684, !4685, !4686, !4687, !4688, !4689}
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4682, file: !139, line: 343, baseType: !55, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4682, file: !139, line: 344, baseType: !55, size: 64, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4682, file: !139, line: 346, baseType: !36, size: 64, offset: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4682, file: !139, line: 347, baseType: !36, size: 64, offset: 192)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4682, file: !139, line: 348, baseType: !36, size: 64, offset: 256)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4682, file: !139, line: 349, baseType: !36, size: 64, offset: 320)
!4690 = !DIDerivedType(tag: DW_TAG_member, scope: !4679, file: !139, line: 352, baseType: !4691, size: 256)
!4691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4679, file: !139, line: 352, size: 256, elements: !4692)
!4692 = !{!4693, !4694, !4695}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4691, file: !139, line: 353, baseType: !55, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4691, file: !139, line: 354, baseType: !55, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4691, file: !139, line: 356, baseType: !113, size: 128, offset: 128)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4679, file: !139, line: 359, baseType: !1584, size: 512, align: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4621, file: !173, line: 409, baseType: !4698, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!38, !426, !662}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4621, file: !173, line: 412, baseType: !4702, size: 64, offset: 192)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!970, !426, !4631}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4621, file: !173, line: 414, baseType: !4706, size: 64, offset: 256)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !4709}
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !173, line: 310, flags: DIFlagFwdDecl)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4621, file: !173, line: 416, baseType: !4712, size: 64, offset: 320)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!38, !1245, !426, !57, !7, !4715, !1812}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4621, file: !173, line: 419, baseType: !4717, size: 64, offset: 384)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!38, !1245, !426, !57, !7, !7, !1583, !36}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4621, file: !173, line: 424, baseType: !4721, size: 64, offset: 448)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!2079, !426, !2079}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4621, file: !173, line: 425, baseType: !4725, size: 64, offset: 512)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{null, !4631, !51, !51}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4621, file: !173, line: 426, baseType: !4729, size: 64, offset: 576)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!970, !4631, !1553}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4621, file: !173, line: 427, baseType: !4733, size: 64, offset: 640)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !4631}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4621, file: !173, line: 428, baseType: !1255, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4621, file: !173, line: 433, baseType: !4738, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!38, !426, !4631, !4631, !159}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4621, file: !173, line: 435, baseType: !4742, size: 64, offset: 832)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!38, !4631}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4621, file: !173, line: 436, baseType: !4746, size: 64, offset: 896)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!970, !4631, !51, !51}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4621, file: !173, line: 438, baseType: !4750, size: 64, offset: 960)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{null, !4631, !4753, !4753}
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4621, file: !173, line: 439, baseType: !4755, size: 64, offset: 1024)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!38, !426, !1583}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4621, file: !173, line: 442, baseType: !4759, size: 64, offset: 1088)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!38, !4762, !1245, !4764}
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !173, line: 66, flags: DIFlagFwdDecl)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4621, file: !173, line: 444, baseType: !1804, size: 64, offset: 1152)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4621, file: !173, line: 445, baseType: !4767, size: 64, offset: 1216)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{!38, !1258, !1280}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !173, line: 486, baseType: !55, size: 64, offset: 896)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !427, file: !173, line: 487, baseType: !911, size: 320, offset: 960)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !427, file: !173, line: 488, baseType: !1847, size: 32, offset: 1280)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !427, file: !173, line: 489, baseType: !75, size: 32, offset: 1312)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !427, file: !173, line: 490, baseType: !113, size: 128, offset: 1344)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !427, file: !173, line: 491, baseType: !36, size: 64, offset: 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !417, file: !382, line: 180, baseType: !4777, size: 64, offset: 320)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!388, !1245, !321, !416, !356, !57, !51}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !417, file: !382, line: 182, baseType: !4777, size: 64, offset: 384)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !417, file: !382, line: 184, baseType: !4782, size: 64, offset: 448)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!38, !1245, !321, !416, !1319}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !405, file: !382, line: 90, baseType: !4786, size: 64, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !405, file: !382, line: 91, baseType: !4788, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !372, file: !316, line: 120, baseType: !4790, size: 64, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!2536, !339}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !372, file: !316, line: 121, baseType: !4794, size: 64, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!1447, !339}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !372, file: !316, line: 122, baseType: !4798, size: 64, offset: 320)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{null, !339, !1166, !1167}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !315, file: !316, line: 70, baseType: !3172, size: 64, offset: 384)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !315, file: !316, line: 71, baseType: !2608, size: 32, offset: 448)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !315, file: !316, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !315, file: !316, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !315, file: !316, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !315, file: !316, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !315, file: !316, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !312, file: !124, line: 47, baseType: !302, size: 64, offset: 512)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !312, file: !124, line: 48, baseType: !321, size: 64, offset: 576)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !312, file: !124, line: 49, baseType: !4811, size: 64, offset: 640)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !124, line: 49, flags: DIFlagFwdDecl)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !312, file: !124, line: 50, baseType: !1140, size: 64, offset: 704)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !303, file: !124, line: 418, baseType: !4815, size: 64, offset: 1408)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !124, line: 53, size: 448, elements: !4817)
!4817 = !{!4818, !4819, !4824, !4828, !4832, !4836}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4816, file: !124, line: 54, baseType: !393, size: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4816, file: !124, line: 55, baseType: !4820, size: 64, offset: 128)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!388, !4815, !4823, !356}
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4816, file: !124, line: 57, baseType: !4825, size: 64, offset: 192)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!388, !4815, !4823, !32, !51}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4816, file: !124, line: 59, baseType: !4829, size: 64, offset: 256)
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{null, !302, !32}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4816, file: !124, line: 60, baseType: !4833, size: 64, offset: 320)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!38, !302}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4816, file: !124, line: 61, baseType: !4837, size: 64, offset: 384)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{null, !302}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !303, file: !124, line: 419, baseType: !32, size: 64, offset: 1472)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !303, file: !124, line: 420, baseType: !32, size: 64, offset: 1536)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !303, file: !124, line: 421, baseType: !321, size: 64, offset: 1600)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !303, file: !124, line: 424, baseType: !4844, size: 64, offset: 1664)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4846)
!4846 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !124, line: 424, flags: DIFlagFwdDecl)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !303, file: !124, line: 425, baseType: !4848, size: 64, offset: 1728)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !303, file: !124, line: 426, baseType: !7, size: 32, offset: 1792)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !303, file: !124, line: 435, baseType: !730, size: 256, offset: 1856)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !303, file: !124, line: 437, baseType: !4853, size: 64, offset: 2112)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4855, line: 69, size: 320, elements: !4856)
!4855 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4856 = !{!4857, !4858, !4859, !4876, !4878, !4882, !4883}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4854, file: !4855, line: 70, baseType: !32, size: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4854, file: !4855, line: 71, baseType: !302, size: 64, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4854, file: !4855, line: 72, baseType: !4860, size: 64, offset: 128)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4862)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4855, line: 47, size: 256, elements: !4863)
!4863 = !{!4864, !4865, !4871, !4875}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4862, file: !4855, line: 49, baseType: !7, size: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4862, file: !4855, line: 51, baseType: !4866, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!38, !32, !4869}
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4854)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4862, file: !4855, line: 53, baseType: !4872, size: 64, offset: 128)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!38, !356, !4869}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4862, file: !4855, line: 55, baseType: !2560, size: 64, offset: 192)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4854, file: !4855, line: 73, baseType: !4877, size: 16, offset: 192)
!4877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4854, file: !4855, line: 74, baseType: !4879, size: 8, offset: 208)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !100, line: 16, baseType: !4880)
!4880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !102, line: 20, baseType: !4881)
!4881 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4854, file: !4855, line: 75, baseType: !99, size: 8, offset: 216)
!4883 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !4855, line: 76, baseType: !4884, size: 64, offset: 256)
!4884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !4855, line: 76, size: 64, elements: !4885)
!4885 = !{!4886, !4887, !4894}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4884, file: !4855, line: 77, baseType: !36, size: 64)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4884, file: !4855, line: 78, baseType: !4888, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4890)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4855, line: 86, size: 128, elements: !4891)
!4891 = !{!4892, !4893}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4890, file: !4855, line: 87, baseType: !7, size: 32)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4890, file: !4855, line: 88, baseType: !356, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4884, file: !4855, line: 79, baseType: !4895, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4897)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4855, line: 92, size: 256, elements: !4898)
!4898 = !{!4899, !4900, !4901, !4902, !4903}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4897, file: !4855, line: 94, baseType: !7, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4897, file: !4855, line: 95, baseType: !7, size: 32, offset: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4897, file: !4855, line: 96, baseType: !2733, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4897, file: !4855, line: 97, baseType: !4860, size: 64, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4897, file: !4855, line: 98, baseType: !36, size: 64, offset: 192)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !303, file: !124, line: 438, baseType: !7, size: 32, offset: 2176)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !303, file: !124, line: 441, baseType: !7, size: 32, offset: 2208)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !303, file: !124, line: 442, baseType: !4844, size: 64, offset: 2240)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !303, file: !124, line: 443, baseType: !4848, size: 64, offset: 2304)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !303, file: !124, line: 444, baseType: !970, size: 8, offset: 2368)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !303, file: !124, line: 451, baseType: !970, size: 8, offset: 2376)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !303, file: !124, line: 454, baseType: !7, size: 32, offset: 2400)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !303, file: !124, line: 455, baseType: !4912, size: 64, offset: 2432)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4914, line: 23, size: 96, elements: !4915)
!4914 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4915 = !{!4916, !4917, !4918}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4913, file: !4914, line: 24, baseType: !38, size: 32)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4913, file: !4914, line: 24, baseType: !38, size: 32, offset: 32)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4913, file: !4914, line: 24, baseType: !38, size: 32, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !303, file: !124, line: 458, baseType: !4920, size: 64, offset: 2496)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!38}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !303, file: !124, line: 460, baseType: !4924, size: 4032, align: 512, offset: 2560)
!4924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4925, size: 4032, elements: !4939)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !124, line: 362, size: 576, elements: !4926)
!4926 = !{!4927, !4928, !4929}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4925, file: !124, line: 363, baseType: !36, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4925, file: !124, line: 364, baseType: !7, size: 32, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4925, file: !124, line: 367, baseType: !4930, size: 448, offset: 128)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !124, line: 319, size: 448, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4930, file: !124, line: 320, baseType: !302, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4930, file: !124, line: 321, baseType: !4934, size: 384, offset: 64)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4935, line: 40, size: 384, elements: !4936)
!4935 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4936 = !{!4937}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4934, file: !4935, line: 41, baseType: !4938, size: 384, align: 64)
!4938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 384, align: 64, elements: !3558)
!4939 = !{!4940}
!4940 = !DISubrange(count: 7)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !303, file: !124, line: 463, baseType: !4942, size: 192, offset: 6592)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4943, line: 8, size: 192, elements: !4944)
!4943 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4944 = !{!4945, !4946, !4947}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4942, file: !4943, line: 10, baseType: !7, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4942, file: !4943, line: 11, baseType: !712, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4942, file: !4943, line: 12, baseType: !4948, size: 64, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4950, line: 59, size: 48, elements: !4951)
!4950 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4951 = !{!4952, !4953, !4954, !4955, !4956, !4957}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4949, file: !4950, line: 60, baseType: !1464, size: 16)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4949, file: !4950, line: 61, baseType: !1464, size: 16, offset: 16)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4949, file: !4950, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4949, file: !4950, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4949, file: !4950, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4949, file: !4950, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !303, file: !124, line: 465, baseType: !55, size: 64, offset: 6784)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !303, file: !124, line: 469, baseType: !7, size: 32, offset: 6848)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !303, file: !124, line: 470, baseType: !113, size: 128, offset: 6912)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !303, file: !124, line: 471, baseType: !4962, size: 64, offset: 7040)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4964, line: 33, size: 96, elements: !4965)
!4964 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4965 = !{!4966, !4967, !4968, !4969}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4963, file: !4964, line: 37, baseType: !38, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4963, file: !4964, line: 43, baseType: !38, size: 32, offset: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4963, file: !4964, line: 45, baseType: !42, size: 16, offset: 64)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4963, file: !4964, line: 47, baseType: !42, size: 16, offset: 80)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !303, file: !124, line: 476, baseType: !4971, size: 64, offset: 7104)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !124, line: 378, size: 256, elements: !4973)
!4973 = !{!4974, !4990, !4991, !4992}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4972, file: !124, line: 379, baseType: !4975, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4977, line: 204, baseType: !4978)
!4977 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4977, line: 197, size: 192, elements: !4979)
!4979 = !{!4980, !4982, !4983, !4984, !4986, !4988}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4978, file: !4977, line: 198, baseType: !4981, size: 32)
!4981 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4977, line: 21, baseType: !500)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4978, file: !4977, line: 199, baseType: !103, size: 8, offset: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4978, file: !4977, line: 200, baseType: !103, size: 8, offset: 40)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4978, file: !4977, line: 201, baseType: !4985, size: 16, offset: 48)
!4985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4977, line: 17, baseType: !110)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4978, file: !4977, line: 202, baseType: !4987, size: 64, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4977, line: 16, baseType: !504)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4978, file: !4977, line: 203, baseType: !4989, size: 64, offset: 128)
!4989 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4977, line: 22, baseType: !504)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4972, file: !124, line: 380, baseType: !7, size: 32, offset: 64)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4972, file: !124, line: 381, baseType: !356, size: 64, offset: 128)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4972, file: !124, line: 382, baseType: !356, size: 64, offset: 192)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !303, file: !124, line: 477, baseType: !4972, size: 256, offset: 7168)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !303, file: !124, line: 480, baseType: !4995, size: 64, offset: 7424)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !124, line: 480, flags: DIFlagFwdDecl)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !303, file: !124, line: 483, baseType: !4998, size: 64, offset: 7488)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !124, line: 483, flags: DIFlagFwdDecl)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !303, file: !124, line: 488, baseType: !356, size: 64, offset: 7552)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !303, file: !124, line: 492, baseType: !36, size: 64, offset: 7616)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !303, file: !124, line: 493, baseType: !7, size: 32, offset: 7680)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !303, file: !124, line: 495, baseType: !36, size: 64, offset: 7744)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !303, file: !124, line: 496, baseType: !7, size: 32, offset: 7808)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !303, file: !124, line: 499, baseType: !7, size: 32, offset: 7840)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !303, file: !124, line: 500, baseType: !5007, size: 64, offset: 7872)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5009, line: 45, baseType: !5010)
!5009 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !303, file: !124, line: 503, baseType: !7, size: 32, offset: 7936)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !303, file: !124, line: 504, baseType: !5013, size: 64, offset: 8000)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5016, line: 96, size: 192, elements: !5017)
!5016 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5017 = !{!5018, !5019, !5061, !5063}
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5015, file: !5016, line: 97, baseType: !7, size: 32)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5015, file: !5016, line: 98, baseType: !5020, size: 64, offset: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5016, line: 24, size: 3072, elements: !5022)
!5022 = !{!5023, !5025, !5026, !5027, !5028, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5058, !5059, !5060}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5021, file: !5016, line: 26, baseType: !5024, size: 128)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 128, elements: !3558)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5021, file: !5016, line: 27, baseType: !5024, size: 128, offset: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5021, file: !5016, line: 28, baseType: !38, size: 32, offset: 256)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5021, file: !5016, line: 31, baseType: !75, size: 32, align: 512, offset: 512)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5021, file: !5016, line: 32, baseType: !5029, size: 960, offset: 576)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5030, line: 206, size: 960, elements: !5031)
!5030 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5031 = !{!5032, !5033, !5036, !5038, !5039, !5040}
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5029, file: !5030, line: 207, baseType: !790, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5029, file: !5030, line: 208, baseType: !5034, size: 256, offset: 64)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5035, size: 256, elements: !841)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5029, file: !5030, line: 209, baseType: !5037, size: 256, offset: 320)
!5037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !841)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5029, file: !5030, line: 213, baseType: !391, size: 64, offset: 576)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5029, file: !5030, line: 215, baseType: !1204, size: 256, offset: 640)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5029, file: !5030, line: 216, baseType: !99, size: 8, offset: 896)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5021, file: !5016, line: 33, baseType: !55, size: 64, offset: 1536)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5021, file: !5016, line: 34, baseType: !55, size: 64, offset: 1600)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5021, file: !5016, line: 35, baseType: !970, size: 8, offset: 1664)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5021, file: !5016, line: 36, baseType: !2310, size: 320, offset: 1728)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5021, file: !5016, line: 37, baseType: !1102, size: 256, offset: 2048)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5021, file: !5016, line: 38, baseType: !787, size: 128, align: 64, offset: 2304)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5021, file: !5016, line: 39, baseType: !5048, size: 64, offset: 2432)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5016, line: 49, size: 768, elements: !5050)
!5050 = !{!5051, !5052, !5053, !5054, !5055, !5056, !5057}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5049, file: !5016, line: 50, baseType: !75, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5049, file: !5016, line: 51, baseType: !5037, size: 256, offset: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5049, file: !5016, line: 53, baseType: !5037, size: 256, offset: 320)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5049, file: !5016, line: 54, baseType: !55, size: 64, offset: 576)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5049, file: !5016, line: 55, baseType: !5048, size: 64, offset: 640)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5049, file: !5016, line: 56, baseType: !38, size: 32, offset: 704)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5049, file: !5016, line: 57, baseType: !38, size: 32, offset: 736)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5021, file: !5016, line: 40, baseType: !55, size: 64, offset: 2496)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5021, file: !5016, line: 42, baseType: !38, size: 32, offset: 2560)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5021, file: !5016, line: 43, baseType: !5014, size: 64, offset: 2624)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5015, file: !5016, line: 99, baseType: !5062, offset: 128)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !630, line: 211, elements: !631)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5015, file: !5016, line: 100, baseType: !5064, size: 64, offset: 128)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5016, line: 63, size: 3008, elements: !5066)
!5066 = !{!5067, !5068, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5065, file: !5016, line: 64, baseType: !5048, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5065, file: !5016, line: 65, baseType: !5069, size: 192, offset: 64)
!5069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5048, size: 192, elements: !357)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5065, file: !5016, line: 67, baseType: !38, size: 32, offset: 256)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5065, file: !5016, line: 68, baseType: !730, size: 256, offset: 320)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5065, file: !5016, line: 69, baseType: !75, size: 32, offset: 576)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5065, file: !5016, line: 70, baseType: !730, size: 256, offset: 640)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5065, file: !5016, line: 71, baseType: !55, size: 64, offset: 896)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5065, file: !5016, line: 72, baseType: !55, size: 64, offset: 960)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5065, file: !5016, line: 73, baseType: !55, size: 64, offset: 1024)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5065, file: !5016, line: 74, baseType: !55, size: 64, offset: 1088)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5065, file: !5016, line: 75, baseType: !55, size: 64, offset: 1152)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5065, file: !5016, line: 76, baseType: !55, size: 64, offset: 1216)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5065, file: !5016, line: 77, baseType: !55, size: 64, offset: 1280)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5065, file: !5016, line: 78, baseType: !55, size: 64, offset: 1344)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5065, file: !5016, line: 79, baseType: !970, size: 8, offset: 1408)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5065, file: !5016, line: 80, baseType: !55, size: 64, offset: 1472)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5065, file: !5016, line: 81, baseType: !730, size: 256, offset: 1536)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5065, file: !5016, line: 82, baseType: !1141, size: 256, offset: 1792)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5065, file: !5016, line: 84, baseType: !65, size: 32, offset: 2048)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5065, file: !5016, line: 87, baseType: !55, size: 64, offset: 2112)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5065, file: !5016, line: 88, baseType: !55, size: 64, offset: 2176)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5065, file: !5016, line: 89, baseType: !2650, size: 704, offset: 2240)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5065, file: !5016, line: 90, baseType: !5014, size: 64, offset: 2944)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !303, file: !124, line: 515, baseType: !5092, size: 64, offset: 8064)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5094, line: 117, size: 128, elements: !5095)
!5094 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5095 = !{!5096, !5097, !5098}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5093, file: !5094, line: 118, baseType: !896, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5093, file: !5094, line: 119, baseType: !896, size: 32, offset: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5093, file: !5094, line: 120, baseType: !391, size: 64, offset: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !303, file: !124, line: 516, baseType: !7, size: 32, offset: 8128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !303, file: !124, line: 519, baseType: !7, size: 32, offset: 8160)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !303, file: !124, line: 520, baseType: !5102, size: 64, offset: 8192)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !303, file: !124, line: 523, baseType: !5104, size: 64, offset: 8256)
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !124, line: 523, flags: DIFlagFwdDecl)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !303, file: !124, line: 524, baseType: !7, size: 32, offset: 8320)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !303, file: !124, line: 525, baseType: !5109, size: 64, offset: 8384)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !124, line: 525, flags: DIFlagFwdDecl)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !303, file: !124, line: 526, baseType: !7, size: 32, offset: 8448)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !303, file: !124, line: 533, baseType: !36, size: 64, offset: 8512)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !303, file: !124, line: 534, baseType: !7, size: 32, offset: 8576)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !303, file: !124, line: 535, baseType: !5116, size: 64, offset: 8640)
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !303, file: !124, line: 536, baseType: !7, size: 32, offset: 8704)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !303, file: !124, line: 539, baseType: !38, size: 32, offset: 8736)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !303, file: !124, line: 540, baseType: !5120, size: 64, offset: 8768)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5122, line: 32, size: 64, elements: !5123)
!5122 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5123 = !{!5124, !5125}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5121, file: !5122, line: 33, baseType: !896, size: 32)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5121, file: !5122, line: 34, baseType: !896, size: 32, offset: 32)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !303, file: !124, line: 563, baseType: !113, size: 128, offset: 8832)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !303, file: !124, line: 565, baseType: !113, size: 128, offset: 8960)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !303, file: !124, line: 568, baseType: !3390, size: 64, offset: 9088)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !303, file: !124, line: 570, baseType: !65, size: 32, offset: 9152)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !267, line: 241, size: 6784, elements: !5132)
!5132 = !{!5133, !5195, !5196, !5197, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5131, file: !267, line: 244, baseType: !5134, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !267, line: 81, size: 320, elements: !5136)
!5136 = !{!5137, !5150, !5151, !5153, !5194}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5135, file: !267, line: 82, baseType: !5138, size: 72)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !5139, line: 389, size: 72, elements: !5140)
!5139 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80d6f45aac89efdd60a6063143f79a70")
!5140 = !{!5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5138, file: !5139, line: 390, baseType: !101, size: 8)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5138, file: !5139, line: 391, baseType: !101, size: 8, offset: 8)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5138, file: !5139, line: 393, baseType: !101, size: 8, offset: 16)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5138, file: !5139, line: 394, baseType: !101, size: 8, offset: 24)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5138, file: !5139, line: 395, baseType: !101, size: 8, offset: 32)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5138, file: !5139, line: 396, baseType: !101, size: 8, offset: 40)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5138, file: !5139, line: 397, baseType: !101, size: 8, offset: 48)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5138, file: !5139, line: 398, baseType: !101, size: 8, offset: 56)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5138, file: !5139, line: 399, baseType: !101, size: 8, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5135, file: !267, line: 84, baseType: !38, size: 32, offset: 96)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5135, file: !267, line: 85, baseType: !5152, size: 64, offset: 128)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5135, file: !267, line: 90, baseType: !5154, size: 64, offset: 192)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !267, line: 66, size: 640, elements: !5156)
!5156 = !{!5157, !5169, !5177, !5185, !5186, !5187, !5190, !5191, !5192, !5193}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5155, file: !267, line: 67, baseType: !5158, size: 72)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !5139, line: 407, size: 72, elements: !5159)
!5159 = !{!5160, !5161, !5162, !5163, !5164, !5166, !5167, !5168}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5158, file: !5139, line: 408, baseType: !101, size: 8)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5158, file: !5139, line: 409, baseType: !101, size: 8, offset: 8)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !5158, file: !5139, line: 411, baseType: !101, size: 8, offset: 16)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5158, file: !5139, line: 412, baseType: !101, size: 8, offset: 24)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !5158, file: !5139, line: 413, baseType: !5165, size: 16, offset: 32)
!5165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1307, line: 36, baseType: !110)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !5158, file: !5139, line: 414, baseType: !101, size: 8, offset: 48)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !5158, file: !5139, line: 418, baseType: !101, size: 8, offset: 56)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !5158, file: !5139, line: 419, baseType: !101, size: 8, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5155, file: !267, line: 68, baseType: !5170, size: 48, offset: 72)
!5170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !5139, line: 689, size: 48, elements: !5171)
!5171 = !{!5172, !5173, !5174, !5175, !5176}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5170, file: !5139, line: 690, baseType: !101, size: 8)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5170, file: !5139, line: 691, baseType: !101, size: 8, offset: 8)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !5170, file: !5139, line: 693, baseType: !101, size: 8, offset: 16)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5170, file: !5139, line: 694, baseType: !101, size: 8, offset: 24)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !5170, file: !5139, line: 695, baseType: !5165, size: 16, offset: 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5155, file: !267, line: 69, baseType: !5178, size: 64, offset: 120)
!5178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !5139, line: 677, size: 64, elements: !5179)
!5179 = !{!5180, !5181, !5182, !5183}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5178, file: !5139, line: 678, baseType: !101, size: 8)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5178, file: !5139, line: 679, baseType: !101, size: 8, offset: 8)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5178, file: !5139, line: 680, baseType: !5165, size: 16, offset: 16)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5178, file: !5139, line: 681, baseType: !5184, size: 32, offset: 32)
!5184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1307, line: 38, baseType: !500)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5155, file: !267, line: 70, baseType: !113, size: 128, offset: 192)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5155, file: !267, line: 71, baseType: !36, size: 64, offset: 320)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5155, file: !267, line: 72, baseType: !5188, size: 64, offset: 384)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !267, line: 47, flags: DIFlagFwdDecl)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5155, file: !267, line: 74, baseType: !5152, size: 64, offset: 448)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5155, file: !267, line: 75, baseType: !38, size: 32, offset: 512)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5155, file: !267, line: 76, baseType: !38, size: 32, offset: 544)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5155, file: !267, line: 77, baseType: !38, size: 32, offset: 576)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5135, file: !267, line: 92, baseType: !356, size: 64, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5131, file: !267, line: 246, baseType: !5134, size: 64, offset: 64)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5131, file: !267, line: 248, baseType: !7, size: 32, offset: 128)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5131, file: !267, line: 252, baseType: !5198, size: 64, offset: 192)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5199, size: 64)
!5199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !5139, line: 783, size: 64, elements: !5200)
!5200 = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5199, file: !5139, line: 784, baseType: !101, size: 8)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5199, file: !5139, line: 785, baseType: !101, size: 8, offset: 8)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5199, file: !5139, line: 787, baseType: !101, size: 8, offset: 16)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5199, file: !5139, line: 788, baseType: !101, size: 8, offset: 24)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5199, file: !5139, line: 789, baseType: !101, size: 8, offset: 32)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5199, file: !5139, line: 790, baseType: !101, size: 8, offset: 40)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5199, file: !5139, line: 791, baseType: !101, size: 8, offset: 48)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5199, file: !5139, line: 792, baseType: !101, size: 8, offset: 56)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5131, file: !267, line: 254, baseType: !38, size: 32, offset: 256)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5131, file: !267, line: 256, baseType: !266, size: 32, offset: 288)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5131, file: !267, line: 257, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5131, file: !267, line: 258, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5131, file: !267, line: 259, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5131, file: !267, line: 260, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5131, file: !267, line: 261, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5131, file: !267, line: 262, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5131, file: !267, line: 263, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5131, file: !267, line: 264, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status", scope: !5131, file: !267, line: 265, baseType: !273, size: 32, offset: 352)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "wireless_status_work", scope: !5131, file: !267, line: 266, baseType: !1102, size: 256, offset: 384)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5131, file: !267, line: 268, baseType: !2117, size: 5824, offset: 640)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5131, file: !267, line: 269, baseType: !2121, size: 64, offset: 6464)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5131, file: !267, line: 270, baseType: !1102, size: 256, offset: 6528)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!5226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5227, size: 64)
!5227 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !391)
!5228 = !{!0, !5229, !5233, !5235, !5237, !5242, !5247, !5252, !5257, !5262, !5267, !5838, !5843, !5848, !5851, !5856, !5911, !5913, !5915, !5920, !5924, !5929, !5934, !5939, !5944, !5949, !5952, !5957, !5959, !5961, !5963, !5968, !5973, !5978, !5983, !5985, !5990, !5995, !6000, !6016, !6031, !6034, !6039}
!5229 = !DIGlobalVariableExpression(var: !5230, expr: !DIExpression())
!5230 = distinct !DIGlobalVariable(name: "__exitcall_lg_driver_exit", scope: !2, file: !3, line: 937, type: !5231, isLocal: true, isDefinition: true)
!5231 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5232, line: 120, baseType: !3390)
!5232 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5233 = !DIGlobalVariableExpression(var: !5234, expr: !DIExpression())
!5234 = distinct !DIGlobalVariable(name: "lg4ff_no_autoswitch", scope: !2, file: !3, line: 940, type: !38, isLocal: false, isDefinition: true)
!5235 = !DIGlobalVariableExpression(var: !5236, expr: !DIExpression())
!5236 = distinct !DIGlobalVariable(name: "__param_lg4ff_no_autoswitch", scope: !2, file: !3, line: 941, type: !4870, isLocal: true, isDefinition: true, align: 64)
!5237 = !DIGlobalVariableExpression(var: !5238, expr: !DIExpression())
!5238 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_lg4ff_no_autoswitchtype338", scope: !2, file: !3, line: 941, type: !5239, isLocal: true, isDefinition: true, align: 8)
!5239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 368, elements: !5240)
!5240 = !{!5241}
!5241 = !DISubrange(count: 46)
!5242 = !DIGlobalVariableExpression(var: !5243, expr: !DIExpression())
!5243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_lg4ff_no_autoswitch339", scope: !2, file: !3, line: 942, type: !5244, isLocal: true, isDefinition: true, align: 8)
!5244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 832, elements: !5245)
!5245 = !{!5246}
!5246 = !DISubrange(count: 104)
!5247 = !DIGlobalVariableExpression(var: !5248, expr: !DIExpression())
!5248 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file340", scope: !2, file: !3, line: 945, type: !5249, isLocal: true, isDefinition: true, align: 8)
!5249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 344, elements: !5250)
!5250 = !{!5251}
!5251 = !DISubrange(count: 43)
!5252 = !DIGlobalVariableExpression(var: !5253, expr: !DIExpression())
!5253 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license341", scope: !2, file: !3, line: 945, type: !5254, isLocal: true, isDefinition: true, align: 8)
!5254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 200, elements: !5255)
!5255 = !{!5256}
!5256 = !DISubrange(count: 25)
!5257 = !DIGlobalVariableExpression(var: !5258, expr: !DIExpression())
!5258 = distinct !DIGlobalVariable(scope: null, file: !3, line: 937, type: !5259, isLocal: true, isDefinition: true)
!5259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 104, elements: !5260)
!5260 = !{!5261}
!5261 = !DISubrange(count: 13)
!5262 = !DIGlobalVariableExpression(var: !5263, expr: !DIExpression())
!5263 = distinct !DIGlobalVariable(scope: null, file: !3, line: 927, type: !5264, isLocal: true, isDefinition: true)
!5264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 72, elements: !5265)
!5265 = !{!5266}
!5266 = !DISubrange(count: 9)
!5267 = !DIGlobalVariableExpression(var: !5268, expr: !DIExpression())
!5268 = distinct !DIGlobalVariable(name: "lg_driver", scope: !2, file: !3, line: 926, type: !5269, isLocal: true, isDefinition: true)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !6, line: 809, size: 2496, elements: !5270)
!5270 = !{!5271, !5272, !5282, !5283, !5284, !5785, !5789, !5790, !5796, !5800, !5808, !5812, !5813, !5817, !5822, !5823, !5827, !5831, !5835, !5836, !5837}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5269, file: !6, line: 810, baseType: !356, size: 64)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5269, file: !6, line: 811, baseType: !5273, size: 64, offset: 64)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5275)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !2207, line: 173, size: 192, elements: !5276)
!5276 = !{!5277, !5278, !5279, !5280, !5281}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5275, file: !2207, line: 174, baseType: !110, size: 16)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !5275, file: !2207, line: 175, baseType: !110, size: 16, offset: 16)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5275, file: !2207, line: 176, baseType: !500, size: 32, offset: 32)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5275, file: !2207, line: 177, baseType: !500, size: 32, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5275, file: !2207, line: 178, baseType: !2227, size: 64, offset: 128)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !5269, file: !6, line: 813, baseType: !113, size: 128, offset: 128)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !5269, file: !6, line: 814, baseType: !75, size: 32, offset: 256)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5269, file: !6, line: 816, baseType: !5285, size: 64, offset: 320)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!970, !5288, !970}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !6, line: 605, size: 61056, elements: !5290)
!5290 = !{!5291, !5293, !5294, !5295, !5296, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5677, !5678, !5685, !5686, !5688, !5689, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5750, !5751, !5755, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !5289, file: !6, line: 606, baseType: !5292, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !5289, file: !6, line: 607, baseType: !7, size: 32, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !5289, file: !6, line: 608, baseType: !5292, size: 64, offset: 128)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !5289, file: !6, line: 609, baseType: !7, size: 32, offset: 192)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !5289, file: !6, line: 610, baseType: !5297, size: 64, offset: 256)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5298, size: 64)
!5298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !6, line: 463, size: 128, elements: !5299)
!5299 = !{!5300, !5301, !5302, !5303}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !5298, file: !6, line: 464, baseType: !38, size: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5298, file: !6, line: 465, baseType: !7, size: 32, offset: 32)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !5298, file: !6, line: 466, baseType: !7, size: 32, offset: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5298, file: !6, line: 467, baseType: !7, size: 32, offset: 96)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !5289, file: !6, line: 611, baseType: !7, size: 32, offset: 320)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !5289, file: !6, line: 612, baseType: !7, size: 32, offset: 352)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !5289, file: !6, line: 613, baseType: !7, size: 32, offset: 384)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5289, file: !6, line: 614, baseType: !110, size: 16, offset: 416)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !5289, file: !6, line: 615, baseType: !110, size: 16, offset: 432)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5289, file: !6, line: 616, baseType: !500, size: 32, offset: 448)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5289, file: !6, line: 617, baseType: !500, size: 32, offset: 480)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5289, file: !6, line: 618, baseType: !500, size: 32, offset: 512)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5289, file: !6, line: 619, baseType: !5, size: 32, offset: 544)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !5289, file: !6, line: 620, baseType: !7, size: 32, offset: 576)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !5289, file: !6, line: 621, baseType: !5315, size: 49728, offset: 640)
!5315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5316, size: 49728, elements: !357)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !6, line: 548, size: 16576, elements: !5317)
!5317 = !{!5318, !5319, !5320}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !5316, file: !6, line: 549, baseType: !7, size: 32)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !5316, file: !6, line: 550, baseType: !113, size: 128, offset: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !5316, file: !6, line: 551, baseType: !5321, size: 16384, offset: 192)
!5321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5322, size: 16384, elements: !5662)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !6, line: 528, size: 17152, elements: !5324)
!5324 = !{!5325, !5326, !5327, !5328, !5329, !5330, !5331, !5664, !5672, !5673, !5674, !5675, !5676}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5323, file: !6, line: 529, baseType: !113, size: 128)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !5323, file: !6, line: 530, baseType: !113, size: 128, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "field_entry_list", scope: !5323, file: !6, line: 531, baseType: !113, size: 128, offset: 256)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5323, file: !6, line: 532, baseType: !7, size: 32, offset: 384)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5323, file: !6, line: 533, baseType: !12, size: 32, offset: 416)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !5323, file: !6, line: 534, baseType: !7, size: 32, offset: 448)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5323, file: !6, line: 535, baseType: !5332, size: 16384, offset: 512)
!5332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5333, size: 16384, elements: !5662)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5334, size: 64)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !6, line: 488, size: 1088, elements: !5335)
!5335 = !{!5336, !5337, !5338, !5339, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5660, !5661}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !5334, file: !6, line: 489, baseType: !7, size: 32)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !5334, file: !6, line: 490, baseType: !7, size: 32, offset: 32)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !5334, file: !6, line: 491, baseType: !7, size: 32, offset: 64)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !5334, file: !6, line: 492, baseType: !5340, size: 64, offset: 128)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !6, line: 470, size: 192, elements: !5342)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !5341, file: !6, line: 471, baseType: !7, size: 32)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !5341, file: !6, line: 472, baseType: !7, size: 32, offset: 32)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !5341, file: !6, line: 473, baseType: !7, size: 32, offset: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !5341, file: !6, line: 474, baseType: !4880, size: 8, offset: 96)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !5341, file: !6, line: 477, baseType: !4880, size: 8, offset: 104)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5341, file: !6, line: 478, baseType: !110, size: 16, offset: 112)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5341, file: !6, line: 479, baseType: !101, size: 8, offset: 128)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !5341, file: !6, line: 480, baseType: !4880, size: 8, offset: 136)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !5341, file: !6, line: 481, baseType: !4880, size: 8, offset: 144)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !5341, file: !6, line: 482, baseType: !4880, size: 8, offset: 152)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !5341, file: !6, line: 483, baseType: !1465, size: 16, offset: 160)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !5334, file: !6, line: 493, baseType: !7, size: 32, offset: 192)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5334, file: !6, line: 494, baseType: !7, size: 32, offset: 224)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !5334, file: !6, line: 495, baseType: !7, size: 32, offset: 256)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !5334, file: !6, line: 496, baseType: !7, size: 32, offset: 288)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !5334, file: !6, line: 497, baseType: !7, size: 32, offset: 320)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !5334, file: !6, line: 498, baseType: !7, size: 32, offset: 352)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5334, file: !6, line: 499, baseType: !5361, size: 64, offset: 384)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "new_value", scope: !5334, file: !6, line: 500, baseType: !5361, size: 64, offset: 448)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "usages_priorities", scope: !5334, file: !6, line: 501, baseType: !5361, size: 64, offset: 512)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !5334, file: !6, line: 504, baseType: !897, size: 32, offset: 576)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !5334, file: !6, line: 505, baseType: !897, size: 32, offset: 608)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !5334, file: !6, line: 506, baseType: !897, size: 32, offset: 640)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !5334, file: !6, line: 507, baseType: !897, size: 32, offset: 672)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !5334, file: !6, line: 508, baseType: !897, size: 32, offset: 704)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !5334, file: !6, line: 509, baseType: !7, size: 32, offset: 736)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "ignored", scope: !5334, file: !6, line: 510, baseType: !970, size: 8, offset: 768)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !5334, file: !6, line: 511, baseType: !5322, size: 64, offset: 832)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5334, file: !6, line: 512, baseType: !7, size: 32, offset: 896)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !5334, file: !6, line: 514, baseType: !5374, size: 64, offset: 960)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5375, size: 64)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !6, line: 580, size: 512, elements: !5376)
!5376 = !{!5377, !5378, !5379, !5656, !5657, !5658, !5659}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5375, file: !6, line: 581, baseType: !113, size: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !5375, file: !6, line: 582, baseType: !5322, size: 64, offset: 128)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !5375, file: !6, line: 583, baseType: !5380, size: 64, offset: 192)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !5382, line: 137, size: 10880, elements: !5383)
!5382 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!5383 = !{!5384, !5385, !5386, !5387, !5395, !5396, !5397, !5399, !5400, !5401, !5402, !5403, !5404, !5406, !5407, !5408, !5409, !5410, !5411, !5425, !5430, !5525, !5528, !5529, !5530, !5532, !5535, !5545, !5546, !5547, !5548, !5549, !5553, !5557, !5561, !5565, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5652, !5653, !5655}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5381, file: !5382, line: 138, baseType: !32, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5381, file: !5382, line: 139, baseType: !32, size: 64, offset: 64)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !5381, file: !5382, line: 140, baseType: !32, size: 64, offset: 128)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5381, file: !5382, line: 141, baseType: !5388, size: 64, offset: 192)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !5389, line: 59, size: 64, elements: !5390)
!5389 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!5390 = !{!5391, !5392, !5393, !5394}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !5388, file: !5389, line: 60, baseType: !110, size: 16)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5388, file: !5389, line: 61, baseType: !110, size: 16, offset: 16)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5388, file: !5389, line: 62, baseType: !110, size: 16, offset: 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5388, file: !5389, line: 63, baseType: !110, size: 16, offset: 48)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !5381, file: !5382, line: 143, baseType: !2902, size: 64, offset: 256)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !5381, file: !5382, line: 145, baseType: !2902, size: 64, offset: 320)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !5381, file: !5382, line: 146, baseType: !5398, size: 768, offset: 384)
!5398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 768, elements: !4176)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !5381, file: !5382, line: 147, baseType: !2902, size: 64, offset: 1152)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !5381, file: !5382, line: 148, baseType: !2902, size: 64, offset: 1216)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !5381, file: !5382, line: 149, baseType: !2902, size: 64, offset: 1280)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !5381, file: !5382, line: 150, baseType: !2902, size: 64, offset: 1344)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !5381, file: !5382, line: 151, baseType: !2902, size: 64, offset: 1408)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !5381, file: !5382, line: 152, baseType: !5405, size: 128, offset: 1472)
!5405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !3558)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !5381, file: !5382, line: 153, baseType: !2902, size: 64, offset: 1600)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !5381, file: !5382, line: 155, baseType: !7, size: 32, offset: 1664)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !5381, file: !5382, line: 157, baseType: !7, size: 32, offset: 1696)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !5381, file: !5382, line: 158, baseType: !7, size: 32, offset: 1728)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !5381, file: !5382, line: 159, baseType: !36, size: 64, offset: 1792)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !5381, file: !5382, line: 161, baseType: !5412, size: 64, offset: 1856)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!38, !5380, !5415, !2733}
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5417)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !5389, line: 117, size: 320, elements: !5418)
!5418 = !{!5419, !5420, !5421, !5422, !5423}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5417, file: !5389, line: 119, baseType: !101, size: 8)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5417, file: !5389, line: 120, baseType: !101, size: 8, offset: 8)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5417, file: !5389, line: 121, baseType: !110, size: 16, offset: 16)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !5417, file: !5389, line: 122, baseType: !500, size: 32, offset: 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !5417, file: !5389, line: 123, baseType: !5424, size: 256, offset: 64)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !512)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !5381, file: !5382, line: 164, baseType: !5426, size: 64, offset: 1920)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!38, !5380, !5429}
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !5381, file: !5382, line: 167, baseType: !5431, size: 64, offset: 1984)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !5382, line: 546, size: 960, elements: !5433)
!5433 = !{!5434, !5501, !5505, !5509, !5513, !5514, !5518, !5519, !5520, !5521, !5522, !5523}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !5432, file: !5382, line: 547, baseType: !5435, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!38, !5380, !5438, !5438}
!5438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5439, size: 64)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !5389, line: 454, size: 384, elements: !5440)
!5440 = !{!5441, !5442, !5443, !5444, !5449, !5454}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5439, file: !5389, line: 455, baseType: !110, size: 16)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5439, file: !5389, line: 456, baseType: !1465, size: 16, offset: 16)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !5439, file: !5389, line: 457, baseType: !110, size: 16, offset: 32)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !5439, file: !5389, line: 458, baseType: !5445, size: 32, offset: 48)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !5389, line: 320, size: 32, elements: !5446)
!5446 = !{!5447, !5448}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !5445, file: !5389, line: 321, baseType: !110, size: 16)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5445, file: !5389, line: 322, baseType: !110, size: 16, offset: 16)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !5439, file: !5389, line: 459, baseType: !5450, size: 32, offset: 80)
!5450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !5389, line: 310, size: 32, elements: !5451)
!5451 = !{!5452, !5453}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5450, file: !5389, line: 311, baseType: !110, size: 16)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !5450, file: !5389, line: 312, baseType: !110, size: 16, offset: 16)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !5439, file: !5389, line: 467, baseType: !5455, size: 256, offset: 128)
!5455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5439, file: !5389, line: 461, size: 256, elements: !5456)
!5456 = !{!5457, !5468, !5474, !5486, !5496}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !5455, file: !5389, line: 462, baseType: !5458, size: 80)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !5389, line: 349, size: 80, elements: !5459)
!5459 = !{!5460, !5461}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5458, file: !5389, line: 350, baseType: !1465, size: 16)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !5458, file: !5389, line: 351, baseType: !5462, size: 64, offset: 16)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !5389, line: 337, size: 64, elements: !5463)
!5463 = !{!5464, !5465, !5466, !5467}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !5462, file: !5389, line: 338, baseType: !110, size: 16)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !5462, file: !5389, line: 339, baseType: !110, size: 16, offset: 16)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !5462, file: !5389, line: 340, baseType: !110, size: 16, offset: 32)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !5462, file: !5389, line: 341, baseType: !110, size: 16, offset: 48)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !5455, file: !5389, line: 463, baseType: !5469, size: 96)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !5389, line: 360, size: 96, elements: !5470)
!5470 = !{!5471, !5472, !5473}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !5469, file: !5389, line: 361, baseType: !1465, size: 16)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !5469, file: !5389, line: 362, baseType: !1465, size: 16, offset: 16)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !5469, file: !5389, line: 363, baseType: !5462, size: 64, offset: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !5455, file: !5389, line: 464, baseType: !5475, size: 256)
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !5389, line: 405, size: 256, elements: !5476)
!5476 = !{!5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !5475, file: !5389, line: 406, baseType: !110, size: 16)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !5475, file: !5389, line: 407, baseType: !110, size: 16, offset: 16)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !5475, file: !5389, line: 408, baseType: !1465, size: 16, offset: 32)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5475, file: !5389, line: 409, baseType: !1465, size: 16, offset: 48)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !5475, file: !5389, line: 410, baseType: !110, size: 16, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !5475, file: !5389, line: 412, baseType: !5462, size: 64, offset: 80)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !5475, file: !5389, line: 414, baseType: !500, size: 32, offset: 160)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !5475, file: !5389, line: 415, baseType: !5485, size: 64, offset: 192)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5455, file: !5389, line: 465, baseType: !5487, size: 192)
!5487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5488, size: 192, elements: !3558)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !5389, line: 376, size: 96, elements: !5489)
!5489 = !{!5490, !5491, !5492, !5493, !5494, !5495}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !5488, file: !5389, line: 377, baseType: !110, size: 16)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !5488, file: !5389, line: 378, baseType: !110, size: 16, offset: 16)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !5488, file: !5389, line: 380, baseType: !1465, size: 16, offset: 32)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !5488, file: !5389, line: 381, baseType: !1465, size: 16, offset: 48)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !5488, file: !5389, line: 383, baseType: !110, size: 16, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !5488, file: !5389, line: 384, baseType: !1465, size: 16, offset: 80)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !5455, file: !5389, line: 466, baseType: !5497, size: 32)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !5389, line: 426, size: 32, elements: !5498)
!5498 = !{!5499, !5500}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !5497, file: !5389, line: 427, baseType: !110, size: 16)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !5497, file: !5389, line: 428, baseType: !110, size: 16, offset: 16)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !5432, file: !5382, line: 549, baseType: !5502, size: 64, offset: 64)
!5502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5503, size: 64)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!38, !5380, !38}
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !5432, file: !5382, line: 551, baseType: !5506, size: 64, offset: 128)
!5506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!38, !5380, !38, !38}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !5432, file: !5382, line: 552, baseType: !5510, size: 64, offset: 192)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{null, !5380, !109}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !5432, file: !5382, line: 553, baseType: !5510, size: 64, offset: 256)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5432, file: !5382, line: 555, baseType: !5515, size: 64, offset: 320)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{null, !5431}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5432, file: !5382, line: 557, baseType: !36, size: 64, offset: 384)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !5432, file: !5382, line: 559, baseType: !5405, size: 128, offset: 448)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5432, file: !5382, line: 561, baseType: !730, size: 256, offset: 576)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !5432, file: !5382, line: 563, baseType: !38, size: 32, offset: 832)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !5432, file: !5382, line: 564, baseType: !5438, size: 64, offset: 896)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !5432, file: !5382, line: 565, baseType: !5524, offset: 960)
!5524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, elements: !854)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !5381, file: !5382, line: 169, baseType: !5526, size: 64, offset: 2048)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !5382, line: 24, flags: DIFlagFwdDecl)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !5381, file: !5382, line: 171, baseType: !7, size: 32, offset: 2112)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5381, file: !5382, line: 172, baseType: !2310, size: 320, offset: 2176)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !5381, file: !5382, line: 174, baseType: !5531, size: 64, offset: 2496)
!5531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !3558)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !5381, file: !5382, line: 176, baseType: !5533, size: 64, offset: 2560)
!5533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5534, size: 64)
!5534 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !5382, line: 176, flags: DIFlagFwdDecl)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !5381, file: !5382, line: 178, baseType: !5536, size: 64, offset: 2624)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !5389, line: 93, size: 192, elements: !5538)
!5538 = !{!5539, !5540, !5541, !5542, !5543, !5544}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5537, file: !5389, line: 94, baseType: !897, size: 32)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5537, file: !5389, line: 95, baseType: !897, size: 32, offset: 32)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5537, file: !5389, line: 96, baseType: !897, size: 32, offset: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !5537, file: !5389, line: 97, baseType: !897, size: 32, offset: 96)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !5537, file: !5389, line: 98, baseType: !897, size: 32, offset: 128)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !5537, file: !5389, line: 99, baseType: !897, size: 32, offset: 160)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5381, file: !5382, line: 180, baseType: !5398, size: 768, offset: 2688)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !5381, file: !5382, line: 181, baseType: !2902, size: 64, offset: 3456)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !5381, file: !5382, line: 182, baseType: !2902, size: 64, offset: 3520)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !5381, file: !5382, line: 183, baseType: !2902, size: 64, offset: 3584)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5381, file: !5382, line: 185, baseType: !5550, size: 64, offset: 3648)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5551, size: 64)
!5551 = !DISubroutineType(types: !5552)
!5552 = !{!38, !5380}
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5381, file: !5382, line: 186, baseType: !5554, size: 64, offset: 3712)
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !5380}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !5381, file: !5382, line: 187, baseType: !5558, size: 64, offset: 3776)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DISubroutineType(types: !5560)
!5560 = !{!38, !5380, !1245}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5381, file: !5382, line: 188, baseType: !5562, size: 64, offset: 3840)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!38, !5380, !7, !7, !38}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !5381, file: !5382, line: 190, baseType: !5566, size: 64, offset: 3904)
!5566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5567, size: 64)
!5567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !5382, line: 345, size: 576, elements: !5568)
!5568 = !{!5569, !5570, !5571, !5572, !5573, !5639, !5640}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5567, file: !5382, line: 347, baseType: !36, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5567, file: !5382, line: 349, baseType: !38, size: 32, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5567, file: !5382, line: 350, baseType: !32, size: 64, offset: 128)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5567, file: !5382, line: 352, baseType: !5380, size: 64, offset: 192)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5567, file: !5382, line: 353, baseType: !5574, size: 64, offset: 256)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !5382, line: 310, size: 960, elements: !5576)
!5576 = !{!5577, !5578, !5582, !5593, !5597, !5601, !5628, !5632, !5633, !5634, !5635, !5636, !5637, !5638}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5575, file: !5382, line: 312, baseType: !36, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5575, file: !5382, line: 314, baseType: !5579, size: 64, offset: 64)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DISubroutineType(types: !5581)
!5581 = !{null, !5566, !7, !7, !38}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !5575, file: !5382, line: 315, baseType: !5583, size: 64, offset: 128)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5584, size: 64)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{null, !5566, !5586, !7}
!5586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5587, size: 64)
!5587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5588)
!5588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !5382, line: 32, size: 64, elements: !5589)
!5589 = !{!5590, !5591, !5592}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5588, file: !5382, line: 33, baseType: !110, size: 16)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5588, file: !5382, line: 34, baseType: !110, size: 16, offset: 16)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5588, file: !5382, line: 35, baseType: !897, size: 32, offset: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !5575, file: !5382, line: 317, baseType: !5594, size: 64, offset: 192)
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5595, size: 64)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!970, !5566, !7, !7, !38}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5575, file: !5382, line: 318, baseType: !5598, size: 64, offset: 256)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 64)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!970, !5574, !5380}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !5575, file: !5382, line: 319, baseType: !5602, size: 64, offset: 320)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!38, !5574, !5380, !5605}
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5606, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5607)
!5607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !2207, line: 362, size: 1600, elements: !5608)
!5608 = !{!5609, !5610, !5611, !5612, !5613, !5614, !5616, !5618, !5619, !5620, !5621, !5622, !5623, !5625, !5626, !5627}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5607, file: !2207, line: 364, baseType: !2227, size: 64)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !5607, file: !2207, line: 366, baseType: !110, size: 16, offset: 64)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5607, file: !2207, line: 367, baseType: !110, size: 16, offset: 80)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5607, file: !2207, line: 368, baseType: !110, size: 16, offset: 96)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5607, file: !2207, line: 369, baseType: !110, size: 16, offset: 112)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !5607, file: !2207, line: 371, baseType: !5615, size: 64, offset: 128)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2227, size: 64, elements: !2903)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !5607, file: !2207, line: 372, baseType: !5617, size: 768, offset: 192)
!5617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2227, size: 768, elements: !4176)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !5607, file: !2207, line: 373, baseType: !5615, size: 64, offset: 960)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !5607, file: !2207, line: 374, baseType: !5615, size: 64, offset: 1024)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !5607, file: !2207, line: 375, baseType: !5615, size: 64, offset: 1088)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !5607, file: !2207, line: 376, baseType: !5615, size: 64, offset: 1152)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !5607, file: !2207, line: 377, baseType: !5615, size: 64, offset: 1216)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !5607, file: !2207, line: 378, baseType: !5624, size: 128, offset: 1280)
!5624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2227, size: 128, elements: !3558)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !5607, file: !2207, line: 379, baseType: !5615, size: 64, offset: 1408)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !5607, file: !2207, line: 380, baseType: !5615, size: 64, offset: 1472)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !5607, file: !2207, line: 382, baseType: !2227, size: 64, offset: 1536)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5575, file: !5382, line: 320, baseType: !5629, size: 64, offset: 384)
!5629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5630, size: 64)
!5630 = !DISubroutineType(types: !5631)
!5631 = !{null, !5566}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5575, file: !5382, line: 321, baseType: !5629, size: 64, offset: 448)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !5575, file: !5382, line: 323, baseType: !970, size: 8, offset: 512)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5575, file: !5382, line: 324, baseType: !38, size: 32, offset: 544)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5575, file: !5382, line: 325, baseType: !32, size: 64, offset: 576)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5575, file: !5382, line: 327, baseType: !5605, size: 64, offset: 640)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !5575, file: !5382, line: 329, baseType: !113, size: 128, offset: 704)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5575, file: !5382, line: 330, baseType: !113, size: 128, offset: 832)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !5567, file: !5382, line: 355, baseType: !113, size: 128, offset: 320)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !5567, file: !5382, line: 356, baseType: !113, size: 128, offset: 448)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !5381, file: !5382, line: 192, baseType: !75, size: 32, offset: 3968)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5381, file: !5382, line: 193, baseType: !730, size: 256, offset: 4032)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5381, file: !5382, line: 195, baseType: !7, size: 32, offset: 4288)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !5381, file: !5382, line: 196, baseType: !970, size: 8, offset: 4320)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5381, file: !5382, line: 198, baseType: !2117, size: 5824, offset: 4352)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !5381, file: !5382, line: 200, baseType: !113, size: 128, offset: 10176)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5381, file: !5382, line: 201, baseType: !113, size: 128, offset: 10304)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !5381, file: !5382, line: 203, baseType: !7, size: 32, offset: 10432)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !5381, file: !5382, line: 204, baseType: !7, size: 32, offset: 10464)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !5381, file: !5382, line: 205, baseType: !5651, size: 64, offset: 10496)
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !5381, file: !5382, line: 207, baseType: !970, size: 8, offset: 10560)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5381, file: !5382, line: 209, baseType: !5654, size: 192, offset: 10624)
!5654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, size: 192, elements: !357)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !5381, file: !5382, line: 211, baseType: !970, size: 8, offset: 10816)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5375, file: !6, line: 584, baseType: !32, size: 64, offset: 256)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !5375, file: !6, line: 585, baseType: !113, size: 128, offset: 320)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !5375, file: !6, line: 586, baseType: !7, size: 32, offset: 448)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !5375, file: !6, line: 587, baseType: !970, size: 8, offset: 480)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !5334, file: !6, line: 515, baseType: !110, size: 16, offset: 1024)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "slot_idx", scope: !5334, file: !6, line: 516, baseType: !7, size: 32, offset: 1056)
!5662 = !{!5663}
!5663 = !DISubrange(count: 256)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "field_entries", scope: !5323, file: !6, line: 536, baseType: !5665, size: 64, offset: 16896)
!5665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field_entry", file: !6, line: 521, size: 256, elements: !5667)
!5667 = !{!5668, !5669, !5670, !5671}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5666, file: !6, line: 522, baseType: !113, size: 128)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5666, file: !6, line: 523, baseType: !5333, size: 64, offset: 128)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5666, file: !6, line: 524, baseType: !7, size: 32, offset: 192)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5666, file: !6, line: 525, baseType: !897, size: 32, offset: 224)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !5323, file: !6, line: 537, baseType: !7, size: 32, offset: 16960)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5323, file: !6, line: 538, baseType: !7, size: 32, offset: 16992)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5323, file: !6, line: 539, baseType: !5288, size: 64, offset: 17024)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "tool_active", scope: !5323, file: !6, line: 542, baseType: !970, size: 8, offset: 17088)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "tool", scope: !5323, file: !6, line: 543, baseType: !7, size: 32, offset: 17120)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !5289, file: !6, line: 622, baseType: !1102, size: 256, offset: 50368)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !5289, file: !6, line: 624, baseType: !5679, size: 192, offset: 50624)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !5680, line: 15, size: 192, elements: !5681)
!5680 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6d1be1d1ca9e1e7e6ce72ef8c4c814f")
!5681 = !{!5682, !5683, !5684}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5679, file: !5680, line: 16, baseType: !743, size: 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5679, file: !5680, line: 17, baseType: !7, size: 32, offset: 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !5679, file: !5680, line: 18, baseType: !113, size: 128, offset: 64)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5289, file: !6, line: 625, baseType: !2117, size: 5824, offset: 50816)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5289, file: !6, line: 626, baseType: !5687, size: 64, offset: 56640)
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "devres_group_id", scope: !5289, file: !6, line: 627, baseType: !36, size: 64, offset: 56704)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !5289, file: !6, line: 629, baseType: !5690, size: 64, offset: 56768)
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5692)
!5692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !6, line: 871, size: 832, elements: !5693)
!5693 = !{!5694, !5698, !5702, !5703, !5704, !5708, !5709, !5713, !5714, !5718, !5722, !5726, !5730}
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5692, file: !6, line: 872, baseType: !5695, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!38, !5288}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5692, file: !6, line: 873, baseType: !5699, size: 64, offset: 64)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{null, !5288}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5692, file: !6, line: 875, baseType: !5695, size: 64, offset: 128)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5692, file: !6, line: 876, baseType: !5699, size: 64, offset: 192)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5692, file: !6, line: 878, baseType: !5705, size: 64, offset: 256)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!38, !5288, !38}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !5692, file: !6, line: 880, baseType: !5695, size: 64, offset: 320)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5692, file: !6, line: 882, baseType: !5710, size: 64, offset: 384)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{null, !5288, !5322, !38}
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5692, file: !6, line: 885, baseType: !5695, size: 64, offset: 448)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !5692, file: !6, line: 887, baseType: !5715, size: 64, offset: 512)
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!38, !5288, !103, !5292, !51, !103, !38}
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !5692, file: !6, line: 891, baseType: !5719, size: 64, offset: 576)
!5719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!38, !5288, !5292, !51}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !5692, file: !6, line: 893, baseType: !5723, size: 64, offset: 640)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!38, !5288, !38, !38, !38}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "may_wakeup", scope: !5692, file: !6, line: 894, baseType: !5727, size: 64, offset: 704)
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5728, size: 64)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!970, !5288}
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "max_buffer_size", scope: !5692, file: !6, line: 896, baseType: !7, size: 32, offset: 768)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !5289, file: !6, line: 630, baseType: !730, size: 256, offset: 56832)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !5289, file: !6, line: 631, baseType: !7, size: 32, offset: 57088)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5289, file: !6, line: 651, baseType: !55, size: 64, offset: 57152)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !5289, file: !6, line: 652, baseType: !7, size: 32, offset: 57216)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5289, file: !6, line: 653, baseType: !7, size: 32, offset: 57248)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "initial_quirks", scope: !5289, file: !6, line: 654, baseType: !7, size: 32, offset: 57280)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !5289, file: !6, line: 655, baseType: !970, size: 8, offset: 57312)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !5289, file: !6, line: 657, baseType: !113, size: 128, offset: 57344)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !5289, file: !6, line: 658, baseType: !36, size: 64, offset: 57472)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !5289, file: !6, line: 659, baseType: !36, size: 64, offset: 57536)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5289, file: !6, line: 661, baseType: !2213, size: 1024, offset: 57600)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5289, file: !6, line: 662, baseType: !2664, size: 512, offset: 58624)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !5289, file: !6, line: 663, baseType: !2664, size: 512, offset: 59136)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5289, file: !6, line: 665, baseType: !36, size: 64, offset: 59648)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !5289, file: !6, line: 668, baseType: !5695, size: 64, offset: 59712)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !5289, file: !6, line: 671, baseType: !5747, size: 64, offset: 59776)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{!38, !5288, !7}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !5289, file: !6, line: 672, baseType: !5699, size: 64, offset: 59840)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !5289, file: !6, line: 673, baseType: !5752, size: 64, offset: 59904)
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DISubroutineType(types: !5754)
!5754 = !{null, !5288, !5333, !5340, !897}
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !5289, file: !6, line: 675, baseType: !5756, size: 64, offset: 59968)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{null, !5288, !5322}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !5289, file: !6, line: 678, baseType: !42, size: 16, offset: 60032)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !5289, file: !6, line: 679, baseType: !465, size: 64, offset: 60096)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !5289, file: !6, line: 680, baseType: !465, size: 64, offset: 60160)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !5289, file: !6, line: 681, baseType: !465, size: 64, offset: 60224)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !5289, file: !6, line: 682, baseType: !113, size: 128, offset: 60288)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !5289, file: !6, line: 683, baseType: !75, size: 32, offset: 60416)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !5289, file: !6, line: 684, baseType: !70, size: 192, offset: 60480)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5289, file: !6, line: 685, baseType: !2608, size: 32, offset: 60672)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5289, file: !6, line: 687, baseType: !7, size: 32, offset: 60704)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !5289, file: !6, line: 690, baseType: !5769, size: 320, offset: 60736)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_bpf", file: !5770, line: 129, size: 320, elements: !5771)
!5770 = !DIFile(filename: "./include/linux/hid_bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54a7e6fca4bb5ac7d355f792070fab62")
!5771 = !{!5772, !5774, !5775, !5783, !5784}
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !5769, file: !5770, line: 130, baseType: !5773, size: 64)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_data", scope: !5769, file: !5770, line: 134, baseType: !499, size: 32, offset: 64)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "progs", scope: !5769, file: !5770, line: 136, baseType: !5776, size: 128, offset: 128)
!5776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5777, size: 128, elements: !3558)
!5777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5778, size: 64)
!5778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_bpf_prog_list", file: !5770, line: 123, size: 1040, elements: !5779)
!5779 = !{!5780, !5782}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "prog_idx", scope: !5778, file: !5770, line: 124, baseType: !5781, size: 1024)
!5781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 1024, elements: !361)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "prog_cnt", scope: !5778, file: !5770, line: 125, baseType: !99, size: 8, offset: 1024)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !5769, file: !5770, line: 137, baseType: !970, size: 8, offset: 256)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "progs_lock", scope: !5769, file: !5770, line: 139, baseType: !75, size: 32, offset: 288)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5269, file: !6, line: 817, baseType: !5786, size: 64, offset: 384)
!5786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5787, size: 64)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!38, !5288, !5273}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5269, file: !6, line: 818, baseType: !5699, size: 64, offset: 448)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !5269, file: !6, line: 820, baseType: !5791, size: 64, offset: 512)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5793)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !6, line: 759, size: 32, elements: !5794)
!5794 = !{!5795}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !5793, file: !6, line: 760, baseType: !500, size: 32)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !5269, file: !6, line: 821, baseType: !5797, size: 64, offset: 576)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!38, !5288, !5322, !5773, !38}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !5269, file: !6, line: 823, baseType: !5801, size: 64, offset: 640)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5803)
!5803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !6, line: 762, size: 96, elements: !5804)
!5804 = !{!5805, !5806, !5807}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !5803, file: !6, line: 763, baseType: !500, size: 32)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !5803, file: !6, line: 764, baseType: !500, size: 32, offset: 32)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !5803, file: !6, line: 765, baseType: !500, size: 32, offset: 64)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5269, file: !6, line: 824, baseType: !5809, size: 64, offset: 704)
!5809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5810, size: 64)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!38, !5288, !5333, !5340, !897}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !5269, file: !6, line: 826, baseType: !5756, size: 64, offset: 768)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !5269, file: !6, line: 828, baseType: !5814, size: 64, offset: 832)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!5292, !5288, !5292, !2733}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !5269, file: !6, line: 831, baseType: !5818, size: 64, offset: 896)
!5818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5819, size: 64)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!38, !5288, !5374, !5333, !5340, !5821, !712}
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !5269, file: !6, line: 834, baseType: !5818, size: 64, offset: 960)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !5269, file: !6, line: 837, baseType: !5824, size: 64, offset: 1024)
!5824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5825, size: 64)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!38, !5288, !5374}
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !5269, file: !6, line: 839, baseType: !5828, size: 64, offset: 1088)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{null, !5288, !5333, !5340}
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5269, file: !6, line: 843, baseType: !5832, size: 64, offset: 1152)
!5832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5833, size: 64)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{!38, !5288, !2238}
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5269, file: !6, line: 844, baseType: !5695, size: 64, offset: 1216)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5269, file: !6, line: 845, baseType: !5695, size: 64, offset: 1280)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5269, file: !6, line: 848, baseType: !2195, size: 1152, offset: 1344)
!5838 = !DIGlobalVariableExpression(var: !5839, expr: !DIExpression())
!5839 = distinct !DIGlobalVariable(name: "lg_devices", scope: !2, file: !3, line: 859, type: !5840, isLocal: true, isDefinition: true)
!5840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5274, size: 5568, elements: !5841)
!5841 = !{!5842}
!5842 = !DISubrange(count: 29)
!5843 = !DIGlobalVariableExpression(var: !5844, expr: !DIExpression())
!5844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 773, type: !5845, isLocal: true, isDefinition: true)
!5845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 400, elements: !5846)
!5846 = !{!5847}
!5847 = !DISubrange(count: 50)
!5848 = !DIGlobalVariableExpression(var: !5849, expr: !DIExpression())
!5849 = distinct !DIGlobalVariable(scope: null, file: !3, line: 785, type: !5850, isLocal: true, isDefinition: true)
!5850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 112, elements: !3299)
!5851 = !DIGlobalVariableExpression(var: !5852, expr: !DIExpression())
!5852 = distinct !DIGlobalVariable(scope: null, file: !3, line: 794, type: !5853, isLocal: true, isDefinition: true)
!5853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 136, elements: !5854)
!5854 = !{!5855}
!5855 = !DISubrange(count: 17)
!5856 = !DIGlobalVariableExpression(var: !5857, expr: !DIExpression())
!5857 = distinct !DIGlobalVariable(name: "cbuf", scope: !5858, file: !3, line: 800, type: !5910, isLocal: true, isDefinition: true)
!5858 = distinct !DISubprogram(name: "lg_probe", scope: !3, file: !3, line: 750, type: !5787, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5859 = !{!5860, !5861, !5862, !5863, !5864, !5865, !5872, !5873, !5875, !5878, !5881, !5883, !5886, !5899, !5900, !5904, !5907, !5908, !5909}
!5860 = !DILocalVariable(name: "hdev", arg: 1, scope: !5858, file: !3, line: 750, type: !5288)
!5861 = !DILocalVariable(name: "id", arg: 2, scope: !5858, file: !3, line: 750, type: !5273)
!5862 = !DILocalVariable(name: "iface", scope: !5858, file: !3, line: 752, type: !5130)
!5863 = !DILocalVariable(name: "iface_num", scope: !5858, file: !3, line: 753, type: !101)
!5864 = !DILocalVariable(name: "connect_mask", scope: !5858, file: !3, line: 754, type: !7)
!5865 = !DILocalVariable(name: "drv_data", scope: !5858, file: !3, line: 755, type: !5866)
!5866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lg_drv_data", file: !5868, line: 5, size: 128, elements: !5869)
!5868 = !DIFile(filename: "drivers/hid/hid-lg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac5b97715ae90868837c6241055e6dc4")
!5869 = !{!5870, !5871}
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5867, file: !5868, line: 6, baseType: !55, size: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "device_props", scope: !5867, file: !5868, line: 7, baseType: !36, size: 64, offset: 64)
!5872 = !DILocalVariable(name: "ret", scope: !5858, file: !3, line: 756, type: !38)
!5873 = !DILocalVariable(name: "__mptr", scope: !5874, file: !3, line: 761, type: !36)
!5874 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 761, column: 10)
!5875 = !DILocalVariable(name: "buf", scope: !5876, file: !3, line: 803, type: !5773)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 799, column: 57)
!5877 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 799, column: 6)
!5878 = !DILocalVariable(name: "wait", scope: !5879, file: !3, line: 814, type: !70)
!5879 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 812, column: 17)
!5880 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 812, column: 7)
!5881 = !DILocalVariable(name: "__ret", scope: !5882, file: !3, line: 816, type: !391)
!5882 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 816, column: 4)
!5883 = !DILocalVariable(name: "__cond", scope: !5884, file: !3, line: 816, type: !970)
!5884 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 816, column: 4)
!5885 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 816, column: 4)
!5886 = !DILocalVariable(name: "__wq_entry", scope: !5887, file: !3, line: 816, type: !5888)
!5887 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 816, column: 4)
!5888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !71, line: 30, size: 320, elements: !5889)
!5889 = !{!5890, !5891, !5892, !5898}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5888, file: !71, line: 31, baseType: !7, size: 32)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5888, file: !71, line: 32, baseType: !36, size: 64, offset: 64)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5888, file: !71, line: 33, baseType: !5893, size: 64, offset: 128)
!5893 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !71, line: 16, baseType: !5894)
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DISubroutineType(types: !5896)
!5896 = !{!38, !5897, !7, !38, !36}
!5897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5888, file: !71, line: 34, baseType: !113, size: 128, offset: 192)
!5899 = !DILocalVariable(name: "__ret", scope: !5887, file: !3, line: 816, type: !391)
!5900 = !DILocalVariable(name: "__int", scope: !5901, file: !3, line: 816, type: !391)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 816, column: 4)
!5902 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 816, column: 4)
!5903 = distinct !DILexicalBlock(scope: !5887, file: !3, line: 816, column: 4)
!5904 = !DILocalVariable(name: "__cond", scope: !5905, file: !3, line: 816, type: !970)
!5905 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 816, column: 4)
!5906 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 816, column: 4)
!5907 = !DILabel(scope: !5887, name: "__out", file: !3, line: 816)
!5908 = !DILabel(scope: !5858, name: "err_stop", file: !3, line: 843)
!5909 = !DILabel(scope: !5858, name: "err_free", file: !3, line: 845)
!5910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 72, elements: !5265)
!5911 = !DIGlobalVariableExpression(var: !5912, expr: !DIExpression())
!5912 = distinct !DIGlobalVariable(name: "__key", scope: !5858, file: !3, line: 815, type: !629, isLocal: true, isDefinition: true)
!5913 = !DIGlobalVariableExpression(var: !5914, expr: !DIExpression())
!5914 = distinct !DIGlobalVariable(scope: null, file: !3, line: 815, type: !956, isLocal: true, isDefinition: true)
!5915 = !DIGlobalVariableExpression(var: !5916, expr: !DIExpression())
!5916 = distinct !DIGlobalVariable(scope: null, file: !292, line: 480, type: !5917, isLocal: true, isDefinition: true)
!5917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 168, elements: !5918)
!5918 = !{!5919}
!5919 = !DISubrange(count: 21)
!5920 = !DIGlobalVariableExpression(var: !5921, expr: !DIExpression())
!5921 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !5922, file: !5923, line: 112, type: !36, isLocal: true, isDefinition: true)
!5922 = distinct !DISubprogram(name: "might_resched", scope: !5923, file: !5923, line: 110, type: !3391, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5923 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5924 = !DIGlobalVariableExpression(var: !5925, expr: !DIExpression())
!5925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !5926, isLocal: true, isDefinition: true)
!5926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 376, elements: !5927)
!5927 = !{!5928}
!5928 = !DISubrange(count: 47)
!5929 = !DIGlobalVariableExpression(var: !5930, expr: !DIExpression())
!5930 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !5931, isLocal: true, isDefinition: true)
!5931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 392, elements: !5932)
!5932 = !{!5933}
!5933 = !DISubrange(count: 49)
!5934 = !DIGlobalVariableExpression(var: !5935, expr: !DIExpression())
!5935 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !5936, isLocal: true, isDefinition: true)
!5936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 456, elements: !5937)
!5937 = !{!5938}
!5938 = !DISubrange(count: 57)
!5939 = !DIGlobalVariableExpression(var: !5940, expr: !DIExpression())
!5940 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !5941, isLocal: true, isDefinition: true)
!5941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 312, elements: !5942)
!5942 = !{!5943}
!5943 = !DISubrange(count: 39)
!5944 = !DIGlobalVariableExpression(var: !5945, expr: !DIExpression())
!5945 = distinct !DIGlobalVariable(scope: null, file: !3, line: 467, type: !5946, isLocal: true, isDefinition: true)
!5946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 504, elements: !5947)
!5947 = !{!5948}
!5948 = !DISubrange(count: 63)
!5949 = !DIGlobalVariableExpression(var: !5950, expr: !DIExpression())
!5950 = distinct !DIGlobalVariable(scope: null, file: !3, line: 477, type: !5951, isLocal: true, isDefinition: true)
!5951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 416, elements: !1412)
!5952 = !DIGlobalVariableExpression(var: !5953, expr: !DIExpression())
!5953 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !5954, isLocal: true, isDefinition: true)
!5954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 440, elements: !5955)
!5955 = !{!5956}
!5956 = !DISubrange(count: 55)
!5957 = !DIGlobalVariableExpression(var: !5958, expr: !DIExpression())
!5958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 495, type: !2664, isLocal: true, isDefinition: true)
!5959 = !DIGlobalVariableExpression(var: !5960, expr: !DIExpression())
!5960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 504, type: !308, isLocal: true, isDefinition: true)
!5961 = !DIGlobalVariableExpression(var: !5962, expr: !DIExpression())
!5962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 513, type: !308, isLocal: true, isDefinition: true)
!5963 = !DIGlobalVariableExpression(var: !5964, expr: !DIExpression())
!5964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 523, type: !5965, isLocal: true, isDefinition: true)
!5965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 472, elements: !5966)
!5966 = !{!5967}
!5967 = !DISubrange(count: 59)
!5968 = !DIGlobalVariableExpression(var: !5969, expr: !DIExpression())
!5969 = distinct !DIGlobalVariable(name: "fg_rdesc_fixed", scope: !2, file: !3, line: 382, type: !5970, isLocal: true, isDefinition: true)
!5970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 632, elements: !5971)
!5971 = !{!5972}
!5972 = !DISubrange(count: 79)
!5973 = !DIGlobalVariableExpression(var: !5974, expr: !DIExpression())
!5974 = distinct !DIGlobalVariable(name: "ffg_rdesc_fixed", scope: !2, file: !3, line: 336, type: !5975, isLocal: true, isDefinition: true)
!5975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 712, elements: !5976)
!5976 = !{!5977}
!5977 = !DISubrange(count: 89)
!5978 = !DIGlobalVariableExpression(var: !5979, expr: !DIExpression())
!5979 = distinct !DIGlobalVariable(name: "df_rdesc_fixed", scope: !2, file: !3, line: 61, type: !5980, isLocal: true, isDefinition: true)
!5980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1056, elements: !5981)
!5981 = !{!5982}
!5982 = !DISubrange(count: 132)
!5983 = !DIGlobalVariableExpression(var: !5984, expr: !DIExpression())
!5984 = distinct !DIGlobalVariable(name: "momo_rdesc_fixed", scope: !2, file: !3, line: 242, type: !5975, isLocal: true, isDefinition: true)
!5985 = !DIGlobalVariableExpression(var: !5986, expr: !DIExpression())
!5986 = distinct !DIGlobalVariable(name: "momo2_rdesc_fixed", scope: !2, file: !3, line: 288, type: !5987, isLocal: true, isDefinition: true)
!5987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 744, elements: !5988)
!5988 = !{!5989}
!5989 = !DISubrange(count: 93)
!5990 = !DIGlobalVariableExpression(var: !5991, expr: !DIExpression())
!5991 = distinct !DIGlobalVariable(name: "fv_rdesc_fixed", scope: !2, file: !3, line: 175, type: !5992, isLocal: true, isDefinition: true)
!5992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1088, elements: !5993)
!5993 = !{!5994}
!5994 = !DISubrange(count: 136)
!5995 = !DIGlobalVariableExpression(var: !5996, expr: !DIExpression())
!5996 = distinct !DIGlobalVariable(name: "dfp_rdesc_fixed", scope: !2, file: !3, line: 127, type: !5997, isLocal: true, isDefinition: true)
!5997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 720, elements: !5998)
!5998 = !{!5999}
!5999 = !DISubrange(count: 90)
!6000 = !DIGlobalVariableExpression(var: !6001, expr: !DIExpression())
!6001 = distinct !DIGlobalVariable(name: "e_keymap", scope: !6002, file: !3, line: 638, type: !6012, isLocal: true, isDefinition: true)
!6002 = distinct !DISubprogram(name: "lg_input_mapping", scope: !3, file: !3, line: 632, type: !5819, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6003)
!6003 = !{!6004, !6005, !6006, !6007, !6008, !6009, !6010, !6011}
!6004 = !DILocalVariable(name: "hdev", arg: 1, scope: !6002, file: !3, line: 632, type: !5288)
!6005 = !DILocalVariable(name: "hi", arg: 2, scope: !6002, file: !3, line: 632, type: !5374)
!6006 = !DILocalVariable(name: "field", arg: 3, scope: !6002, file: !3, line: 633, type: !5333)
!6007 = !DILocalVariable(name: "usage", arg: 4, scope: !6002, file: !3, line: 633, type: !5340)
!6008 = !DILocalVariable(name: "bit", arg: 5, scope: !6002, file: !3, line: 634, type: !5821)
!6009 = !DILocalVariable(name: "max", arg: 6, scope: !6002, file: !3, line: 634, type: !712)
!6010 = !DILocalVariable(name: "drv_data", scope: !6002, file: !3, line: 648, type: !5866)
!6011 = !DILocalVariable(name: "hid", scope: !6002, file: !3, line: 649, type: !7)
!6012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6013, size: 640, elements: !6014)
!6013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!6014 = !{!6015}
!6015 = !DISubrange(count: 80)
!6016 = !DIGlobalVariableExpression(var: !6017, expr: !DIExpression())
!6017 = distinct !DIGlobalVariable(name: "_rs", scope: !6018, file: !6, line: 1076, type: !1042, isLocal: true, isDefinition: true)
!6018 = distinct !DISubprogram(name: "hid_map_usage", scope: !6, file: !6, line: 1044, type: !6019, scopeLine: 1047, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{null, !5374, !5340, !5821, !712, !101, !7}
!6021 = !{!6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030}
!6022 = !DILocalVariable(name: "hidinput", arg: 1, scope: !6018, file: !6, line: 1044, type: !5374)
!6023 = !DILocalVariable(name: "usage", arg: 2, scope: !6018, file: !6, line: 1045, type: !5340)
!6024 = !DILocalVariable(name: "bit", arg: 3, scope: !6018, file: !6, line: 1045, type: !5821)
!6025 = !DILocalVariable(name: "max", arg: 4, scope: !6018, file: !6, line: 1045, type: !712)
!6026 = !DILocalVariable(name: "type", arg: 5, scope: !6018, file: !6, line: 1046, type: !101)
!6027 = !DILocalVariable(name: "c", arg: 6, scope: !6018, file: !6, line: 1046, type: !7)
!6028 = !DILocalVariable(name: "input", scope: !6018, file: !6, line: 1048, type: !5380)
!6029 = !DILocalVariable(name: "bmap", scope: !6018, file: !6, line: 1049, type: !5116)
!6030 = !DILocalVariable(name: "limit", scope: !6018, file: !6, line: 1050, type: !7)
!6031 = !DIGlobalVariableExpression(var: !6032, expr: !DIExpression())
!6032 = distinct !DIGlobalVariable(scope: null, file: !6, line: 1076, type: !6033, isLocal: true, isDefinition: true)
!6033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 112, elements: !3299)
!6034 = !DIGlobalVariableExpression(var: !6035, expr: !DIExpression())
!6035 = distinct !DIGlobalVariable(scope: null, file: !6, line: 1076, type: !6036, isLocal: true, isDefinition: true)
!6036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 248, elements: !6037)
!6037 = !{!6038}
!6038 = !DISubrange(count: 31)
!6039 = !DIGlobalVariableExpression(var: !6040, expr: !DIExpression())
!6040 = distinct !DIGlobalVariable(name: "__param_str_lg4ff_no_autoswitch", scope: !2, file: !3, line: 941, type: !6041, isLocal: true, isDefinition: true)
!6041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 264, elements: !6042)
!6042 = !{!6043}
!6043 = !DISubrange(count: 33)
!6044 = !{i32 7, !"Dwarf Version", i32 5}
!6045 = !{i32 2, !"Debug Info Version", i32 3}
!6046 = !{i32 1, !"wchar_size", i32 2}
!6047 = !{i32 8, !"cf-protection-branch", i32 1}
!6048 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6049 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6050 = !{i32 1, !"Code Model", i32 2}
!6051 = !{i32 1, !"override-stack-alignment", i32 8}
!6052 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6053 = distinct !DISubprogram(name: "__initstub__kmod_hid_logitech__336_937_lg_driver_init6", scope: !3, file: !3, line: 937, type: !4921, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6054 = !DILocation(line: 937, column: 1, scope: !6053)
!6055 = distinct !DISubprogram(name: "lg_driver_init", scope: !3, file: !3, line: 937, type: !4921, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6056 = !DILocation(line: 937, column: 1, scope: !6055)
!6057 = distinct !DISubprogram(name: "lg_driver_exit", scope: !3, file: !3, line: 937, type: !3391, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6058 = !DILocation(line: 937, column: 1, scope: !6057)
!6059 = !DISubprogram(name: "hid_unregister_driver", scope: !6, file: !6, line: 927, type: !6060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{null, !5687}
!6062 = !DISubprogram(name: "__hid_register_driver", scope: !6, file: !6, line: 920, type: !6063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!38, !5687, !302, !32}
!6065 = !DILocation(line: 750, column: 40, scope: !5858)
!6066 = !DILocation(line: 750, column: 74, scope: !5858)
!6067 = !DILocation(line: 752, column: 2, scope: !5858)
!6068 = !DILocation(line: 752, column: 24, scope: !5858)
!6069 = !DILocation(line: 753, column: 2, scope: !5858)
!6070 = !DILocation(line: 753, column: 7, scope: !5858)
!6071 = !DILocation(line: 754, column: 2, scope: !5858)
!6072 = !DILocation(line: 754, column: 15, scope: !5858)
!6073 = !DILocation(line: 755, column: 2, scope: !5858)
!6074 = !DILocation(line: 755, column: 22, scope: !5858)
!6075 = !DILocation(line: 756, column: 2, scope: !5858)
!6076 = !DILocation(line: 756, column: 6, scope: !5858)
!6077 = !DILocation(line: 758, column: 18, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 758, column: 6)
!6079 = !DILocation(line: 758, column: 7, scope: !6078)
!6080 = !DILocation(line: 758, column: 6, scope: !5858)
!6081 = !DILocation(line: 759, column: 3, scope: !6078)
!6082 = !DILocation(line: 761, column: 10, scope: !5874)
!6083 = !DILocation(line: 761, column: 10, scope: !5858)
!6084 = !DILocation(line: 761, column: 8, scope: !5858)
!6085 = !DILocation(line: 762, column: 14, scope: !5858)
!6086 = !DILocation(line: 762, column: 21, scope: !5858)
!6087 = !DILocation(line: 762, column: 37, scope: !5858)
!6088 = !DILocation(line: 762, column: 42, scope: !5858)
!6089 = !DILocation(line: 762, column: 12, scope: !5858)
!6090 = !DILocation(line: 765, column: 7, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 765, column: 6)
!6092 = !DILocation(line: 765, column: 13, scope: !6091)
!6093 = !DILocation(line: 765, column: 21, scope: !6091)
!6094 = !DILocation(line: 765, column: 58, scope: !6091)
!6095 = !DILocation(line: 766, column: 7, scope: !6091)
!6096 = !DILocation(line: 766, column: 17, scope: !6091)
!6097 = !DILocation(line: 765, column: 6, scope: !5858)
!6098 = !DILocation(line: 767, column: 3, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 767, column: 3)
!6100 = distinct !DILexicalBlock(scope: !6101, file: !3, line: 767, column: 3)
!6101 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 766, column: 24)
!6102 = !DILocation(line: 767, column: 3, scope: !6100)
!6103 = !DILocation(line: 768, column: 3, scope: !6101)
!6104 = !DILocation(line: 771, column: 13, scope: !5858)
!6105 = !DILocation(line: 771, column: 11, scope: !5858)
!6106 = !DILocation(line: 772, column: 7, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 772, column: 6)
!6108 = !DILocation(line: 772, column: 6, scope: !5858)
!6109 = !DILocation(line: 773, column: 3, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 773, column: 3)
!6111 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 772, column: 17)
!6112 = !DILocation(line: 773, column: 3, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 773, column: 3)
!6114 = !DILocation(line: 774, column: 3, scope: !6111)
!6115 = !DILocation(line: 776, column: 21, scope: !5858)
!6116 = !DILocation(line: 776, column: 25, scope: !5858)
!6117 = !DILocation(line: 776, column: 2, scope: !5858)
!6118 = !DILocation(line: 776, column: 12, scope: !5858)
!6119 = !DILocation(line: 776, column: 19, scope: !5858)
!6120 = !DILocation(line: 778, column: 18, scope: !5858)
!6121 = !DILocation(line: 778, column: 32, scope: !5858)
!6122 = !DILocation(line: 778, column: 2, scope: !5858)
!6123 = !DILocation(line: 780, column: 6, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 780, column: 6)
!6125 = !DILocation(line: 780, column: 16, scope: !6124)
!6126 = !DILocation(line: 780, column: 23, scope: !6124)
!6127 = !DILocation(line: 780, column: 6, scope: !5858)
!6128 = !DILocation(line: 781, column: 3, scope: !6124)
!6129 = !DILocation(line: 781, column: 9, scope: !6124)
!6130 = !DILocation(line: 781, column: 16, scope: !6124)
!6131 = !DILocation(line: 783, column: 18, scope: !5858)
!6132 = !DILocation(line: 783, column: 8, scope: !5858)
!6133 = !DILocation(line: 783, column: 6, scope: !5858)
!6134 = !DILocation(line: 784, column: 6, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 784, column: 6)
!6136 = !DILocation(line: 784, column: 6, scope: !5858)
!6137 = !DILocation(line: 785, column: 3, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 785, column: 3)
!6139 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 784, column: 11)
!6140 = !DILocation(line: 785, column: 3, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6138, file: !3, line: 785, column: 3)
!6142 = !DILocation(line: 786, column: 3, scope: !6139)
!6143 = !DILocation(line: 789, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 789, column: 6)
!6145 = !DILocation(line: 789, column: 16, scope: !6144)
!6146 = !DILocation(line: 789, column: 23, scope: !6144)
!6147 = !DILocation(line: 789, column: 6, scope: !5858)
!6148 = !DILocation(line: 790, column: 16, scope: !6144)
!6149 = !DILocation(line: 790, column: 3, scope: !6144)
!6150 = !DILocation(line: 792, column: 21, scope: !5858)
!6151 = !DILocation(line: 792, column: 27, scope: !5858)
!6152 = !DILocation(line: 792, column: 8, scope: !5858)
!6153 = !DILocation(line: 792, column: 6, scope: !5858)
!6154 = !DILocation(line: 793, column: 6, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 793, column: 6)
!6156 = !DILocation(line: 793, column: 6, scope: !5858)
!6157 = !DILocation(line: 794, column: 3, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6159, file: !3, line: 794, column: 3)
!6159 = distinct !DILexicalBlock(scope: !6155, file: !3, line: 793, column: 11)
!6160 = !DILocation(line: 794, column: 3, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 794, column: 3)
!6162 = !DILocation(line: 795, column: 3, scope: !6159)
!6163 = !DILocation(line: 799, column: 6, scope: !5877)
!6164 = !DILocation(line: 799, column: 12, scope: !5877)
!6165 = !DILocation(line: 799, column: 20, scope: !5877)
!6166 = !DILocation(line: 799, column: 6, scope: !5858)
!6167 = !DILocation(line: 803, column: 3, scope: !5876)
!6168 = !DILocation(line: 803, column: 7, scope: !5876)
!6169 = !DILocation(line: 803, column: 13, scope: !5876)
!6170 = !DILocation(line: 805, column: 8, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 805, column: 7)
!6172 = !DILocation(line: 805, column: 7, scope: !5876)
!6173 = !DILocation(line: 806, column: 8, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 805, column: 13)
!6175 = !DILocation(line: 807, column: 4, scope: !6174)
!6176 = !DILocation(line: 810, column: 28, scope: !5876)
!6177 = !DILocation(line: 810, column: 34, scope: !5876)
!6178 = !DILocation(line: 810, column: 42, scope: !5876)
!6179 = !DILocation(line: 810, column: 9, scope: !5876)
!6180 = !DILocation(line: 810, column: 7, scope: !5876)
!6181 = !DILocation(line: 812, column: 7, scope: !5880)
!6182 = !DILocation(line: 812, column: 11, scope: !5880)
!6183 = !DILocation(line: 812, column: 7, scope: !5876)
!6184 = !DILocation(line: 814, column: 4, scope: !5879)
!6185 = !DILocation(line: 814, column: 22, scope: !5879)
!6186 = !DILocation(line: 815, column: 4, scope: !5879)
!6187 = !DILocation(line: 815, column: 4, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 815, column: 4)
!6189 = !DILocation(line: 816, column: 4, scope: !5882)
!6190 = !DILocation(line: 816, column: 4, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 816, column: 4)
!6192 = !DILocation(line: 816, column: 4, scope: !5884)
!6193 = !DILocation(line: 816, column: 4, scope: !6194)
!6194 = distinct !DILexicalBlock(scope: !5884, file: !3, line: 816, column: 4)
!6195 = !{i8 0, i8 2}
!6196 = !DILocation(line: 816, column: 4, scope: !5885)
!6197 = !DILocation(line: 816, column: 4, scope: !5887)
!6198 = !DILocation(line: 816, column: 4, scope: !5901)
!6199 = !DILocation(line: 816, column: 4, scope: !5905)
!6200 = !DILocation(line: 816, column: 4, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !5905, file: !3, line: 816, column: 4)
!6202 = !DILocation(line: 816, column: 4, scope: !5906)
!6203 = !DILocation(line: 816, column: 4, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !5901, file: !3, line: 816, column: 4)
!6205 = !DILocation(line: 816, column: 4, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6204, file: !3, line: 816, column: 4)
!6207 = !DILocation(line: 816, column: 4, scope: !5902)
!6208 = distinct !{!6208, !6209, !6209, !6210}
!6209 = !DILocation(line: 816, column: 4, scope: !5903)
!6210 = !{!"llvm.loop.unroll.disable"}
!6211 = !DILocation(line: 816, column: 4, scope: !5879)
!6212 = !DILocation(line: 820, column: 4, scope: !5879)
!6213 = !DILocation(line: 820, column: 11, scope: !5879)
!6214 = !DILocation(line: 821, column: 22, scope: !5879)
!6215 = !DILocation(line: 821, column: 4, scope: !5879)
!6216 = !DILocation(line: 823, column: 29, scope: !5879)
!6217 = !DILocation(line: 823, column: 35, scope: !5879)
!6218 = !DILocation(line: 823, column: 43, scope: !5879)
!6219 = !DILocation(line: 823, column: 10, scope: !5879)
!6220 = !DILocation(line: 823, column: 8, scope: !5879)
!6221 = !DILocation(line: 825, column: 3, scope: !5880)
!6222 = !DILocation(line: 825, column: 3, scope: !5879)
!6223 = !DILocation(line: 826, column: 9, scope: !5876)
!6224 = !DILocation(line: 826, column: 3, scope: !5876)
!6225 = !DILocation(line: 827, column: 2, scope: !5877)
!6226 = !DILocation(line: 827, column: 2, scope: !5876)
!6227 = !DILocation(line: 829, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 829, column: 6)
!6229 = !DILocation(line: 829, column: 16, scope: !6228)
!6230 = !DILocation(line: 829, column: 23, scope: !6228)
!6231 = !DILocation(line: 829, column: 6, scope: !5858)
!6232 = !DILocation(line: 830, column: 19, scope: !6228)
!6233 = !DILocation(line: 830, column: 9, scope: !6228)
!6234 = !DILocation(line: 830, column: 7, scope: !6228)
!6235 = !DILocation(line: 830, column: 3, scope: !6228)
!6236 = !DILocation(line: 831, column: 11, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 831, column: 11)
!6238 = !DILocation(line: 831, column: 21, scope: !6237)
!6239 = !DILocation(line: 831, column: 28, scope: !6237)
!6240 = !DILocation(line: 831, column: 11, scope: !6228)
!6241 = !DILocation(line: 832, column: 20, scope: !6237)
!6242 = !DILocation(line: 832, column: 9, scope: !6237)
!6243 = !DILocation(line: 832, column: 7, scope: !6237)
!6244 = !DILocation(line: 832, column: 3, scope: !6237)
!6245 = !DILocation(line: 833, column: 11, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 833, column: 11)
!6247 = !DILocation(line: 833, column: 21, scope: !6246)
!6248 = !DILocation(line: 833, column: 28, scope: !6246)
!6249 = !DILocation(line: 833, column: 11, scope: !6237)
!6250 = !DILocation(line: 834, column: 20, scope: !6246)
!6251 = !DILocation(line: 834, column: 9, scope: !6246)
!6252 = !DILocation(line: 834, column: 7, scope: !6246)
!6253 = !DILocation(line: 834, column: 3, scope: !6246)
!6254 = !DILocation(line: 835, column: 11, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 835, column: 11)
!6256 = !DILocation(line: 835, column: 21, scope: !6255)
!6257 = !DILocation(line: 835, column: 28, scope: !6255)
!6258 = !DILocation(line: 835, column: 11, scope: !6246)
!6259 = !DILocation(line: 836, column: 20, scope: !6255)
!6260 = !DILocation(line: 836, column: 9, scope: !6255)
!6261 = !DILocation(line: 836, column: 7, scope: !6255)
!6262 = !DILocation(line: 836, column: 3, scope: !6255)
!6263 = !DILocation(line: 838, column: 6, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !5858, file: !3, line: 838, column: 6)
!6265 = !DILocation(line: 838, column: 6, scope: !5858)
!6266 = !DILocation(line: 839, column: 3, scope: !6264)
!6267 = !DILocation(line: 841, column: 2, scope: !5858)
!6268 = !DILocation(line: 843, column: 1, scope: !5858)
!6269 = !DILocation(line: 844, column: 14, scope: !5858)
!6270 = !DILocation(line: 844, column: 2, scope: !5858)
!6271 = !DILocation(line: 845, column: 1, scope: !5858)
!6272 = !DILocation(line: 846, column: 8, scope: !5858)
!6273 = !DILocation(line: 846, column: 2, scope: !5858)
!6274 = !DILocation(line: 847, column: 9, scope: !5858)
!6275 = !DILocation(line: 847, column: 2, scope: !5858)
!6276 = !DILocation(line: 848, column: 1, scope: !5858)
!6277 = distinct !DISubprogram(name: "lg_remove", scope: !3, file: !3, line: 850, type: !5700, scopeLine: 851, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6278)
!6278 = !{!6279, !6280}
!6279 = !DILocalVariable(name: "hdev", arg: 1, scope: !6277, file: !3, line: 850, type: !5288)
!6280 = !DILocalVariable(name: "drv_data", scope: !6277, file: !3, line: 852, type: !5866)
!6281 = !DILocation(line: 850, column: 42, scope: !6277)
!6282 = !DILocation(line: 852, column: 2, scope: !6277)
!6283 = !DILocation(line: 852, column: 22, scope: !6277)
!6284 = !DILocation(line: 852, column: 49, scope: !6277)
!6285 = !DILocation(line: 852, column: 33, scope: !6277)
!6286 = !DILocation(line: 853, column: 6, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 853, column: 6)
!6288 = !DILocation(line: 853, column: 16, scope: !6287)
!6289 = !DILocation(line: 853, column: 23, scope: !6287)
!6290 = !DILocation(line: 853, column: 6, scope: !6277)
!6291 = !DILocation(line: 854, column: 16, scope: !6287)
!6292 = !DILocation(line: 854, column: 3, scope: !6287)
!6293 = !DILocation(line: 855, column: 14, scope: !6277)
!6294 = !DILocation(line: 855, column: 2, scope: !6277)
!6295 = !DILocation(line: 856, column: 8, scope: !6277)
!6296 = !DILocation(line: 856, column: 2, scope: !6277)
!6297 = !DILocation(line: 857, column: 1, scope: !6277)
!6298 = distinct !DISubprogram(name: "lg_raw_event", scope: !3, file: !3, line: 739, type: !5798, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6299)
!6299 = !{!6300, !6301, !6302, !6303, !6304}
!6300 = !DILocalVariable(name: "hdev", arg: 1, scope: !6298, file: !3, line: 739, type: !5288)
!6301 = !DILocalVariable(name: "report", arg: 2, scope: !6298, file: !3, line: 739, type: !5322)
!6302 = !DILocalVariable(name: "rd", arg: 3, scope: !6298, file: !3, line: 740, type: !5773)
!6303 = !DILocalVariable(name: "size", arg: 4, scope: !6298, file: !3, line: 740, type: !38)
!6304 = !DILocalVariable(name: "drv_data", scope: !6298, file: !3, line: 742, type: !5866)
!6305 = !DILocation(line: 739, column: 44, scope: !6298)
!6306 = !DILocation(line: 739, column: 69, scope: !6298)
!6307 = !DILocation(line: 740, column: 7, scope: !6298)
!6308 = !DILocation(line: 740, column: 15, scope: !6298)
!6309 = !DILocation(line: 742, column: 2, scope: !6298)
!6310 = !DILocation(line: 742, column: 22, scope: !6298)
!6311 = !DILocation(line: 742, column: 49, scope: !6298)
!6312 = !DILocation(line: 742, column: 33, scope: !6298)
!6313 = !DILocation(line: 744, column: 6, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 744, column: 6)
!6315 = !DILocation(line: 744, column: 16, scope: !6314)
!6316 = !DILocation(line: 744, column: 23, scope: !6314)
!6317 = !DILocation(line: 744, column: 6, scope: !6298)
!6318 = !DILocation(line: 745, column: 26, scope: !6314)
!6319 = !DILocation(line: 745, column: 32, scope: !6314)
!6320 = !DILocation(line: 745, column: 40, scope: !6314)
!6321 = !DILocation(line: 745, column: 44, scope: !6314)
!6322 = !DILocation(line: 745, column: 50, scope: !6314)
!6323 = !DILocation(line: 745, column: 10, scope: !6314)
!6324 = !DILocation(line: 745, column: 3, scope: !6314)
!6325 = !DILocation(line: 747, column: 2, scope: !6298)
!6326 = !DILocation(line: 748, column: 1, scope: !6298)
!6327 = distinct !DISubprogram(name: "lg_event", scope: !3, file: !3, line: 722, type: !5810, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6328)
!6328 = !{!6329, !6330, !6331, !6332, !6333}
!6329 = !DILocalVariable(name: "hdev", arg: 1, scope: !6327, file: !3, line: 722, type: !5288)
!6330 = !DILocalVariable(name: "field", arg: 2, scope: !6327, file: !3, line: 722, type: !5333)
!6331 = !DILocalVariable(name: "usage", arg: 3, scope: !6327, file: !3, line: 723, type: !5340)
!6332 = !DILocalVariable(name: "value", arg: 4, scope: !6327, file: !3, line: 723, type: !897)
!6333 = !DILocalVariable(name: "drv_data", scope: !6327, file: !3, line: 725, type: !5866)
!6334 = !DILocation(line: 722, column: 40, scope: !6327)
!6335 = !DILocation(line: 722, column: 64, scope: !6327)
!6336 = !DILocation(line: 723, column: 21, scope: !6327)
!6337 = !DILocation(line: 723, column: 34, scope: !6327)
!6338 = !DILocation(line: 725, column: 2, scope: !6327)
!6339 = !DILocation(line: 725, column: 22, scope: !6327)
!6340 = !DILocation(line: 725, column: 49, scope: !6327)
!6341 = !DILocation(line: 725, column: 33, scope: !6327)
!6342 = !DILocation(line: 727, column: 7, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 727, column: 6)
!6344 = !DILocation(line: 727, column: 17, scope: !6343)
!6345 = !DILocation(line: 727, column: 24, scope: !6343)
!6346 = !DILocation(line: 727, column: 44, scope: !6343)
!6347 = !DILocation(line: 727, column: 47, scope: !6343)
!6348 = !DILocation(line: 727, column: 54, scope: !6343)
!6349 = !DILocation(line: 727, column: 59, scope: !6343)
!6350 = !DILocation(line: 727, column: 6, scope: !6327)
!6351 = !DILocation(line: 728, column: 15, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 727, column: 74)
!6353 = !DILocation(line: 728, column: 22, scope: !6352)
!6354 = !DILocation(line: 728, column: 32, scope: !6352)
!6355 = !DILocation(line: 728, column: 39, scope: !6352)
!6356 = !DILocation(line: 728, column: 46, scope: !6352)
!6357 = !DILocation(line: 728, column: 52, scope: !6352)
!6358 = !DILocation(line: 728, column: 59, scope: !6352)
!6359 = !DILocation(line: 729, column: 6, scope: !6352)
!6360 = !DILocation(line: 729, column: 5, scope: !6352)
!6361 = !DILocation(line: 728, column: 3, scope: !6352)
!6362 = !DILocation(line: 730, column: 3, scope: !6352)
!6363 = !DILocation(line: 732, column: 6, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 732, column: 6)
!6365 = !DILocation(line: 732, column: 16, scope: !6364)
!6366 = !DILocation(line: 732, column: 23, scope: !6364)
!6367 = !DILocation(line: 732, column: 6, scope: !6327)
!6368 = !DILocation(line: 733, column: 35, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 732, column: 33)
!6370 = !DILocation(line: 733, column: 41, scope: !6369)
!6371 = !DILocation(line: 733, column: 48, scope: !6369)
!6372 = !DILocation(line: 733, column: 55, scope: !6369)
!6373 = !DILocation(line: 733, column: 62, scope: !6369)
!6374 = !DILocation(line: 733, column: 10, scope: !6369)
!6375 = !DILocation(line: 733, column: 3, scope: !6369)
!6376 = !DILocation(line: 736, column: 2, scope: !6327)
!6377 = !DILocation(line: 737, column: 1, scope: !6327)
!6378 = distinct !DISubprogram(name: "lg_report_fixup", scope: !3, file: !3, line: 430, type: !5815, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6379 = !{!6380, !6381, !6382, !6383}
!6380 = !DILocalVariable(name: "hdev", arg: 1, scope: !6378, file: !3, line: 430, type: !5288)
!6381 = !DILocalVariable(name: "rdesc", arg: 2, scope: !6378, file: !3, line: 430, type: !5292)
!6382 = !DILocalVariable(name: "rsize", arg: 3, scope: !6378, file: !3, line: 431, type: !2733)
!6383 = !DILocalVariable(name: "drv_data", scope: !6378, file: !3, line: 433, type: !5866)
!6384 = !DILocation(line: 430, column: 49, scope: !6378)
!6385 = !DILocation(line: 430, column: 61, scope: !6378)
!6386 = !DILocation(line: 431, column: 17, scope: !6378)
!6387 = !DILocation(line: 433, column: 2, scope: !6378)
!6388 = !DILocation(line: 433, column: 22, scope: !6378)
!6389 = !DILocation(line: 433, column: 49, scope: !6378)
!6390 = !DILocation(line: 433, column: 33, scope: !6378)
!6391 = !DILocation(line: 435, column: 7, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 435, column: 6)
!6393 = !DILocation(line: 435, column: 17, scope: !6392)
!6394 = !DILocation(line: 435, column: 24, scope: !6392)
!6395 = !DILocation(line: 435, column: 36, scope: !6392)
!6396 = !DILocation(line: 435, column: 40, scope: !6392)
!6397 = !DILocation(line: 435, column: 39, scope: !6392)
!6398 = !DILocation(line: 435, column: 46, scope: !6392)
!6399 = !DILocation(line: 435, column: 52, scope: !6392)
!6400 = !DILocation(line: 435, column: 55, scope: !6392)
!6401 = !DILocation(line: 435, column: 65, scope: !6392)
!6402 = !DILocation(line: 435, column: 73, scope: !6392)
!6403 = !DILocation(line: 436, column: 4, scope: !6392)
!6404 = !DILocation(line: 436, column: 14, scope: !6392)
!6405 = !DILocation(line: 436, column: 22, scope: !6392)
!6406 = !DILocation(line: 436, column: 25, scope: !6392)
!6407 = !DILocation(line: 436, column: 35, scope: !6392)
!6408 = !DILocation(line: 435, column: 6, scope: !6378)
!6409 = !DILocation(line: 437, column: 3, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6411, file: !3, line: 437, column: 3)
!6411 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 436, column: 44)
!6412 = !DILocation(line: 437, column: 3, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 437, column: 3)
!6414 = !DILocation(line: 439, column: 15, scope: !6411)
!6415 = !DILocation(line: 439, column: 25, scope: !6411)
!6416 = !DILocation(line: 439, column: 3, scope: !6411)
!6417 = !DILocation(line: 439, column: 13, scope: !6411)
!6418 = !DILocation(line: 440, column: 15, scope: !6411)
!6419 = !DILocation(line: 440, column: 25, scope: !6411)
!6420 = !DILocation(line: 440, column: 3, scope: !6411)
!6421 = !DILocation(line: 440, column: 13, scope: !6411)
!6422 = !DILocation(line: 441, column: 2, scope: !6411)
!6423 = !DILocation(line: 442, column: 7, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 442, column: 6)
!6425 = !DILocation(line: 442, column: 17, scope: !6424)
!6426 = !DILocation(line: 442, column: 24, scope: !6424)
!6427 = !DILocation(line: 442, column: 44, scope: !6424)
!6428 = !DILocation(line: 442, column: 48, scope: !6424)
!6429 = !DILocation(line: 442, column: 47, scope: !6424)
!6430 = !DILocation(line: 442, column: 54, scope: !6424)
!6431 = !DILocation(line: 442, column: 60, scope: !6424)
!6432 = !DILocation(line: 443, column: 4, scope: !6424)
!6433 = !DILocation(line: 443, column: 14, scope: !6424)
!6434 = !DILocation(line: 443, column: 22, scope: !6424)
!6435 = !DILocation(line: 443, column: 25, scope: !6424)
!6436 = !DILocation(line: 443, column: 35, scope: !6424)
!6437 = !DILocation(line: 443, column: 43, scope: !6424)
!6438 = !DILocation(line: 444, column: 4, scope: !6424)
!6439 = !DILocation(line: 444, column: 14, scope: !6424)
!6440 = !DILocation(line: 444, column: 22, scope: !6424)
!6441 = !DILocation(line: 444, column: 25, scope: !6424)
!6442 = !DILocation(line: 444, column: 35, scope: !6424)
!6443 = !DILocation(line: 442, column: 6, scope: !6378)
!6444 = !DILocation(line: 445, column: 3, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 445, column: 3)
!6446 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 444, column: 44)
!6447 = !DILocation(line: 445, column: 3, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 445, column: 3)
!6449 = !DILocation(line: 447, column: 15, scope: !6446)
!6450 = !DILocation(line: 447, column: 25, scope: !6446)
!6451 = !DILocation(line: 447, column: 3, scope: !6446)
!6452 = !DILocation(line: 447, column: 13, scope: !6446)
!6453 = !DILocation(line: 448, column: 2, scope: !6446)
!6454 = !DILocation(line: 450, column: 10, scope: !6378)
!6455 = !DILocation(line: 450, column: 16, scope: !6378)
!6456 = !DILocation(line: 450, column: 2, scope: !6378)
!6457 = !DILocation(line: 453, column: 8, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 453, column: 7)
!6459 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 450, column: 25)
!6460 = !DILocation(line: 453, column: 7, scope: !6458)
!6461 = !DILocation(line: 453, column: 14, scope: !6458)
!6462 = !DILocation(line: 453, column: 7, scope: !6459)
!6463 = !DILocation(line: 454, column: 4, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 454, column: 4)
!6465 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 453, column: 37)
!6466 = !DILocation(line: 454, column: 4, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6464, file: !3, line: 454, column: 4)
!6468 = !DILocation(line: 456, column: 10, scope: !6465)
!6469 = !DILocation(line: 457, column: 5, scope: !6465)
!6470 = !DILocation(line: 457, column: 11, scope: !6465)
!6471 = !DILocation(line: 458, column: 3, scope: !6465)
!6472 = !DILocation(line: 459, column: 4, scope: !6473)
!6473 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 459, column: 4)
!6474 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 458, column: 10)
!6475 = !DILocation(line: 459, column: 4, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6473, file: !3, line: 459, column: 4)
!6477 = !DILocation(line: 462, column: 3, scope: !6459)
!6478 = !DILocation(line: 466, column: 8, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 466, column: 7)
!6480 = !DILocation(line: 466, column: 7, scope: !6479)
!6481 = !DILocation(line: 466, column: 14, scope: !6479)
!6482 = !DILocation(line: 466, column: 7, scope: !6459)
!6483 = !DILocation(line: 467, column: 4, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 467, column: 4)
!6485 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 466, column: 38)
!6486 = !DILocation(line: 467, column: 4, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6484, file: !3, line: 467, column: 4)
!6488 = !DILocation(line: 469, column: 10, scope: !6485)
!6489 = !DILocation(line: 470, column: 5, scope: !6485)
!6490 = !DILocation(line: 470, column: 11, scope: !6485)
!6491 = !DILocation(line: 471, column: 3, scope: !6485)
!6492 = !DILocation(line: 472, column: 3, scope: !6459)
!6493 = !DILocation(line: 476, column: 8, scope: !6494)
!6494 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 476, column: 7)
!6495 = !DILocation(line: 476, column: 7, scope: !6494)
!6496 = !DILocation(line: 476, column: 14, scope: !6494)
!6497 = !DILocation(line: 476, column: 7, scope: !6459)
!6498 = !DILocation(line: 477, column: 4, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 477, column: 4)
!6500 = distinct !DILexicalBlock(scope: !6494, file: !3, line: 476, column: 37)
!6501 = !DILocation(line: 477, column: 4, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 477, column: 4)
!6503 = !DILocation(line: 479, column: 10, scope: !6500)
!6504 = !DILocation(line: 480, column: 5, scope: !6500)
!6505 = !DILocation(line: 480, column: 11, scope: !6500)
!6506 = !DILocation(line: 481, column: 3, scope: !6500)
!6507 = !DILocation(line: 482, column: 3, scope: !6459)
!6508 = !DILocation(line: 485, column: 8, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 485, column: 7)
!6510 = !DILocation(line: 485, column: 7, scope: !6509)
!6511 = !DILocation(line: 485, column: 14, scope: !6509)
!6512 = !DILocation(line: 485, column: 7, scope: !6459)
!6513 = !DILocation(line: 486, column: 4, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 486, column: 4)
!6515 = distinct !DILexicalBlock(scope: !6509, file: !3, line: 485, column: 39)
!6516 = !DILocation(line: 486, column: 4, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 486, column: 4)
!6518 = !DILocation(line: 488, column: 10, scope: !6515)
!6519 = !DILocation(line: 489, column: 5, scope: !6515)
!6520 = !DILocation(line: 489, column: 11, scope: !6515)
!6521 = !DILocation(line: 490, column: 3, scope: !6515)
!6522 = !DILocation(line: 491, column: 3, scope: !6459)
!6523 = !DILocation(line: 494, column: 8, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 494, column: 7)
!6525 = !DILocation(line: 494, column: 7, scope: !6524)
!6526 = !DILocation(line: 494, column: 14, scope: !6524)
!6527 = !DILocation(line: 494, column: 7, scope: !6459)
!6528 = !DILocation(line: 495, column: 4, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 495, column: 4)
!6530 = distinct !DILexicalBlock(scope: !6524, file: !3, line: 494, column: 40)
!6531 = !DILocation(line: 495, column: 4, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 495, column: 4)
!6533 = !DILocation(line: 497, column: 10, scope: !6530)
!6534 = !DILocation(line: 498, column: 5, scope: !6530)
!6535 = !DILocation(line: 498, column: 11, scope: !6530)
!6536 = !DILocation(line: 499, column: 3, scope: !6530)
!6537 = !DILocation(line: 500, column: 3, scope: !6459)
!6538 = !DILocation(line: 503, column: 8, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 503, column: 7)
!6540 = !DILocation(line: 503, column: 7, scope: !6539)
!6541 = !DILocation(line: 503, column: 14, scope: !6539)
!6542 = !DILocation(line: 503, column: 7, scope: !6459)
!6543 = !DILocation(line: 504, column: 4, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6545, file: !3, line: 504, column: 4)
!6545 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 503, column: 37)
!6546 = !DILocation(line: 504, column: 4, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 504, column: 4)
!6548 = !DILocation(line: 506, column: 10, scope: !6545)
!6549 = !DILocation(line: 507, column: 5, scope: !6545)
!6550 = !DILocation(line: 507, column: 11, scope: !6545)
!6551 = !DILocation(line: 508, column: 3, scope: !6545)
!6552 = !DILocation(line: 509, column: 3, scope: !6459)
!6553 = !DILocation(line: 512, column: 8, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 512, column: 7)
!6555 = !DILocation(line: 512, column: 7, scope: !6554)
!6556 = !DILocation(line: 512, column: 14, scope: !6554)
!6557 = !DILocation(line: 512, column: 7, scope: !6459)
!6558 = !DILocation(line: 513, column: 4, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6560, file: !3, line: 513, column: 4)
!6560 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 512, column: 38)
!6561 = !DILocation(line: 513, column: 4, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 513, column: 4)
!6563 = !DILocation(line: 515, column: 10, scope: !6560)
!6564 = !DILocation(line: 516, column: 5, scope: !6560)
!6565 = !DILocation(line: 516, column: 11, scope: !6560)
!6566 = !DILocation(line: 517, column: 3, scope: !6560)
!6567 = !DILocation(line: 518, column: 3, scope: !6459)
!6568 = !DILocation(line: 521, column: 8, scope: !6569)
!6569 = distinct !DILexicalBlock(scope: !6459, file: !3, line: 521, column: 7)
!6570 = !DILocation(line: 521, column: 7, scope: !6569)
!6571 = !DILocation(line: 521, column: 14, scope: !6569)
!6572 = !DILocation(line: 521, column: 21, scope: !6569)
!6573 = !DILocation(line: 521, column: 24, scope: !6569)
!6574 = !DILocation(line: 521, column: 34, scope: !6569)
!6575 = !DILocation(line: 521, column: 42, scope: !6569)
!6576 = !DILocation(line: 521, column: 45, scope: !6569)
!6577 = !DILocation(line: 521, column: 55, scope: !6569)
!6578 = !DILocation(line: 521, column: 63, scope: !6569)
!6579 = !DILocation(line: 522, column: 5, scope: !6569)
!6580 = !DILocation(line: 522, column: 15, scope: !6569)
!6581 = !DILocation(line: 522, column: 23, scope: !6569)
!6582 = !DILocation(line: 522, column: 26, scope: !6569)
!6583 = !DILocation(line: 522, column: 36, scope: !6569)
!6584 = !DILocation(line: 521, column: 7, scope: !6459)
!6585 = !DILocation(line: 523, column: 4, scope: !6586)
!6586 = distinct !DILexicalBlock(scope: !6587, file: !3, line: 523, column: 4)
!6587 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 522, column: 45)
!6588 = !DILocation(line: 523, column: 4, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6586, file: !3, line: 523, column: 4)
!6590 = !DILocation(line: 524, column: 4, scope: !6587)
!6591 = !DILocation(line: 524, column: 14, scope: !6587)
!6592 = !DILocation(line: 525, column: 4, scope: !6587)
!6593 = !DILocation(line: 525, column: 14, scope: !6587)
!6594 = !DILocation(line: 526, column: 4, scope: !6587)
!6595 = !DILocation(line: 526, column: 14, scope: !6587)
!6596 = !DILocation(line: 527, column: 4, scope: !6587)
!6597 = !DILocation(line: 527, column: 14, scope: !6587)
!6598 = !DILocation(line: 528, column: 3, scope: !6587)
!6599 = !DILocation(line: 529, column: 3, scope: !6459)
!6600 = !DILocation(line: 532, column: 9, scope: !6378)
!6601 = !DILocation(line: 533, column: 1, scope: !6378)
!6602 = !DILocation(line: 532, column: 2, scope: !6378)
!6603 = !DILocation(line: 632, column: 48, scope: !6002)
!6604 = !DILocation(line: 632, column: 72, scope: !6002)
!6605 = !DILocation(line: 633, column: 21, scope: !6002)
!6606 = !DILocation(line: 633, column: 46, scope: !6002)
!6607 = !DILocation(line: 634, column: 19, scope: !6002)
!6608 = !DILocation(line: 634, column: 29, scope: !6002)
!6609 = !DILocation(line: 648, column: 2, scope: !6002)
!6610 = !DILocation(line: 648, column: 22, scope: !6002)
!6611 = !DILocation(line: 648, column: 49, scope: !6002)
!6612 = !DILocation(line: 648, column: 33, scope: !6002)
!6613 = !DILocation(line: 649, column: 2, scope: !6002)
!6614 = !DILocation(line: 649, column: 15, scope: !6002)
!6615 = !DILocation(line: 649, column: 21, scope: !6002)
!6616 = !DILocation(line: 649, column: 28, scope: !6002)
!6617 = !DILocation(line: 651, column: 6, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 651, column: 6)
!6619 = !DILocation(line: 651, column: 12, scope: !6618)
!6620 = !DILocation(line: 651, column: 20, scope: !6618)
!6621 = !DILocation(line: 651, column: 55, scope: !6618)
!6622 = !DILocation(line: 652, column: 29, scope: !6618)
!6623 = !DILocation(line: 652, column: 33, scope: !6618)
!6624 = !DILocation(line: 652, column: 40, scope: !6618)
!6625 = !DILocation(line: 652, column: 45, scope: !6618)
!6626 = !DILocation(line: 652, column: 4, scope: !6618)
!6627 = !DILocation(line: 651, column: 6, scope: !6002)
!6628 = !DILocation(line: 653, column: 3, scope: !6618)
!6629 = !DILocation(line: 655, column: 7, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 655, column: 6)
!6631 = !DILocation(line: 655, column: 17, scope: !6630)
!6632 = !DILocation(line: 655, column: 24, scope: !6630)
!6633 = !DILocation(line: 655, column: 39, scope: !6630)
!6634 = !DILocation(line: 655, column: 62, scope: !6630)
!6635 = !DILocation(line: 655, column: 66, scope: !6630)
!6636 = !DILocation(line: 655, column: 73, scope: !6630)
!6637 = !DILocation(line: 655, column: 78, scope: !6630)
!6638 = !DILocation(line: 655, column: 42, scope: !6630)
!6639 = !DILocation(line: 655, column: 6, scope: !6002)
!6640 = !DILocation(line: 656, column: 3, scope: !6630)
!6641 = !DILocation(line: 658, column: 7, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 658, column: 6)
!6643 = !DILocation(line: 658, column: 11, scope: !6642)
!6644 = !DILocation(line: 658, column: 29, scope: !6642)
!6645 = !DILocation(line: 658, column: 6, scope: !6002)
!6646 = !DILocation(line: 659, column: 3, scope: !6642)
!6647 = !DILocation(line: 661, column: 6, scope: !6002)
!6648 = !DILocation(line: 664, column: 6, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6002, file: !3, line: 664, column: 6)
!6650 = !DILocation(line: 664, column: 13, scope: !6649)
!6651 = !DILocation(line: 664, column: 25, scope: !6649)
!6652 = !DILocation(line: 664, column: 6, scope: !6002)
!6653 = !DILocation(line: 665, column: 8, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 665, column: 7)
!6655 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 664, column: 42)
!6656 = !DILocation(line: 665, column: 18, scope: !6654)
!6657 = !DILocation(line: 665, column: 25, scope: !6654)
!6658 = !DILocation(line: 665, column: 52, scope: !6654)
!6659 = !DILocation(line: 666, column: 6, scope: !6654)
!6660 = !DILocation(line: 666, column: 10, scope: !6654)
!6661 = !DILocation(line: 666, column: 15, scope: !6654)
!6662 = !DILocation(line: 666, column: 18, scope: !6654)
!6663 = !DILocation(line: 666, column: 22, scope: !6654)
!6664 = !DILocation(line: 665, column: 7, scope: !6655)
!6665 = !DILocation(line: 667, column: 4, scope: !6654)
!6666 = !DILocation(line: 668, column: 2, scope: !6655)
!6667 = !DILocation(line: 669, column: 8, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6669, file: !3, line: 669, column: 7)
!6669 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 668, column: 9)
!6670 = !DILocation(line: 669, column: 18, scope: !6668)
!6671 = !DILocation(line: 669, column: 25, scope: !6668)
!6672 = !DILocation(line: 669, column: 47, scope: !6668)
!6673 = !DILocation(line: 670, column: 5, scope: !6668)
!6674 = !DILocation(line: 670, column: 9, scope: !6668)
!6675 = !DILocation(line: 670, column: 32, scope: !6668)
!6676 = !DILocation(line: 671, column: 14, scope: !6668)
!6677 = !DILocation(line: 671, column: 5, scope: !6668)
!6678 = !DILocation(line: 671, column: 19, scope: !6668)
!6679 = !DILocation(line: 669, column: 7, scope: !6669)
!6680 = !DILocation(line: 672, column: 18, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 671, column: 25)
!6682 = !DILocation(line: 672, column: 22, scope: !6681)
!6683 = !DILocation(line: 672, column: 29, scope: !6681)
!6684 = !DILocation(line: 672, column: 34, scope: !6681)
!6685 = !DILocation(line: 673, column: 15, scope: !6681)
!6686 = !DILocation(line: 673, column: 6, scope: !6681)
!6687 = !DILocation(line: 672, column: 4, scope: !6681)
!6688 = !DILocation(line: 674, column: 4, scope: !6681)
!6689 = !DILocation(line: 678, column: 2, scope: !6002)
!6690 = !DILocation(line: 679, column: 1, scope: !6002)
!6691 = distinct !DISubprogram(name: "lg_input_mapped", scope: !3, file: !3, line: 681, type: !5819, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6692)
!6692 = !{!6693, !6694, !6695, !6696, !6697, !6698, !6699}
!6693 = !DILocalVariable(name: "hdev", arg: 1, scope: !6691, file: !3, line: 681, type: !5288)
!6694 = !DILocalVariable(name: "hi", arg: 2, scope: !6691, file: !3, line: 681, type: !5374)
!6695 = !DILocalVariable(name: "field", arg: 3, scope: !6691, file: !3, line: 682, type: !5333)
!6696 = !DILocalVariable(name: "usage", arg: 4, scope: !6691, file: !3, line: 682, type: !5340)
!6697 = !DILocalVariable(name: "bit", arg: 5, scope: !6691, file: !3, line: 683, type: !5821)
!6698 = !DILocalVariable(name: "max", arg: 6, scope: !6691, file: !3, line: 683, type: !712)
!6699 = !DILocalVariable(name: "drv_data", scope: !6691, file: !3, line: 685, type: !5866)
!6700 = !DILocation(line: 681, column: 47, scope: !6691)
!6701 = !DILocation(line: 681, column: 71, scope: !6691)
!6702 = !DILocation(line: 682, column: 21, scope: !6691)
!6703 = !DILocation(line: 682, column: 46, scope: !6691)
!6704 = !DILocation(line: 683, column: 19, scope: !6691)
!6705 = !DILocation(line: 683, column: 29, scope: !6691)
!6706 = !DILocation(line: 685, column: 2, scope: !6691)
!6707 = !DILocation(line: 685, column: 22, scope: !6691)
!6708 = !DILocation(line: 685, column: 49, scope: !6691)
!6709 = !DILocation(line: 685, column: 33, scope: !6691)
!6710 = !DILocation(line: 687, column: 7, scope: !6711)
!6711 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 687, column: 6)
!6712 = !DILocation(line: 687, column: 17, scope: !6711)
!6713 = !DILocation(line: 687, column: 24, scope: !6711)
!6714 = !DILocation(line: 687, column: 48, scope: !6711)
!6715 = !DILocation(line: 687, column: 51, scope: !6711)
!6716 = !DILocation(line: 687, column: 58, scope: !6711)
!6717 = !DILocation(line: 687, column: 63, scope: !6711)
!6718 = !DILocation(line: 687, column: 73, scope: !6711)
!6719 = !DILocation(line: 688, column: 5, scope: !6711)
!6720 = !DILocation(line: 688, column: 12, scope: !6711)
!6721 = !DILocation(line: 688, column: 18, scope: !6711)
!6722 = !DILocation(line: 687, column: 6, scope: !6691)
!6723 = !DILocation(line: 689, column: 3, scope: !6711)
!6724 = !DILocation(line: 689, column: 10, scope: !6711)
!6725 = !DILocation(line: 689, column: 16, scope: !6711)
!6726 = !DILocation(line: 691, column: 7, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 691, column: 6)
!6728 = !DILocation(line: 691, column: 17, scope: !6727)
!6729 = !DILocation(line: 691, column: 24, scope: !6727)
!6730 = !DILocation(line: 691, column: 47, scope: !6727)
!6731 = !DILocation(line: 691, column: 51, scope: !6727)
!6732 = !DILocation(line: 691, column: 58, scope: !6727)
!6733 = !DILocation(line: 691, column: 63, scope: !6727)
!6734 = !DILocation(line: 691, column: 73, scope: !6727)
!6735 = !DILocation(line: 692, column: 5, scope: !6727)
!6736 = !DILocation(line: 692, column: 12, scope: !6727)
!6737 = !DILocation(line: 692, column: 17, scope: !6727)
!6738 = !DILocation(line: 692, column: 27, scope: !6727)
!6739 = !DILocation(line: 692, column: 30, scope: !6727)
!6740 = !DILocation(line: 692, column: 37, scope: !6727)
!6741 = !DILocation(line: 692, column: 42, scope: !6727)
!6742 = !DILocation(line: 691, column: 6, scope: !6691)
!6743 = !DILocation(line: 693, column: 13, scope: !6727)
!6744 = !DILocation(line: 693, column: 20, scope: !6727)
!6745 = !DILocation(line: 693, column: 27, scope: !6727)
!6746 = !DILocation(line: 693, column: 26, scope: !6727)
!6747 = !DILocation(line: 693, column: 3, scope: !6727)
!6748 = !DILocation(line: 696, column: 6, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 696, column: 6)
!6750 = !DILocation(line: 696, column: 13, scope: !6749)
!6751 = !DILocation(line: 696, column: 18, scope: !6749)
!6752 = !DILocation(line: 696, column: 28, scope: !6749)
!6753 = !DILocation(line: 696, column: 32, scope: !6749)
!6754 = !DILocation(line: 696, column: 39, scope: !6749)
!6755 = !DILocation(line: 696, column: 44, scope: !6749)
!6756 = !DILocation(line: 696, column: 53, scope: !6749)
!6757 = !DILocation(line: 697, column: 4, scope: !6749)
!6758 = !DILocation(line: 697, column: 11, scope: !6749)
!6759 = !DILocation(line: 697, column: 16, scope: !6749)
!6760 = !DILocation(line: 697, column: 25, scope: !6749)
!6761 = !DILocation(line: 697, column: 28, scope: !6749)
!6762 = !DILocation(line: 697, column: 35, scope: !6749)
!6763 = !DILocation(line: 697, column: 40, scope: !6749)
!6764 = !DILocation(line: 697, column: 49, scope: !6749)
!6765 = !DILocation(line: 698, column: 4, scope: !6749)
!6766 = !DILocation(line: 698, column: 11, scope: !6749)
!6767 = !DILocation(line: 698, column: 16, scope: !6749)
!6768 = !DILocation(line: 696, column: 6, scope: !6691)
!6769 = !DILocation(line: 699, column: 11, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6749, file: !3, line: 698, column: 28)
!6771 = !DILocation(line: 699, column: 17, scope: !6770)
!6772 = !DILocation(line: 699, column: 3, scope: !6770)
!6773 = !DILocation(line: 712, column: 4, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 699, column: 26)
!6775 = !DILocation(line: 712, column: 11, scope: !6774)
!6776 = !DILocation(line: 712, column: 23, scope: !6774)
!6777 = !DILocation(line: 713, column: 4, scope: !6774)
!6778 = !DILocation(line: 715, column: 4, scope: !6774)
!6779 = !DILocation(line: 717, column: 2, scope: !6770)
!6780 = !DILocation(line: 720, column: 1, scope: !6691)
!6781 = !DILocation(line: 719, column: 2, scope: !6691)
!6782 = !DISubprogram(name: "hid_is_usb", scope: !6, file: !6, line: 899, type: !6783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6783 = !DISubroutineType(types: !6784)
!6784 = !{!970, !6785}
!6785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6786, size: 64)
!6786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5289)
!6787 = distinct !DISubprogram(name: "kzalloc", scope: !292, file: !292, line: 719, type: !6788, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6790)
!6788 = !DISubroutineType(types: !6789)
!6789 = !{!36, !51, !1553}
!6790 = !{!6791, !6792}
!6791 = !DILocalVariable(name: "size", arg: 1, scope: !6787, file: !292, line: 719, type: !51)
!6792 = !DILocalVariable(name: "flags", arg: 2, scope: !6787, file: !292, line: 719, type: !1553)
!6793 = !DILocation(line: 719, column: 52, scope: !6787)
!6794 = !DILocation(line: 719, column: 64, scope: !6787)
!6795 = !DILocation(line: 721, column: 17, scope: !6787)
!6796 = !DILocation(line: 721, column: 23, scope: !6787)
!6797 = !DILocation(line: 721, column: 29, scope: !6787)
!6798 = !DILocation(line: 721, column: 9, scope: !6787)
!6799 = !DILocation(line: 721, column: 2, scope: !6787)
!6800 = !DISubprogram(name: "_dev_err", scope: !6801, file: !6801, line: 50, type: !6802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6801 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6802 = !DISubroutineType(types: !6803)
!6803 = !{null, !2137, !32, null}
!6804 = distinct !DISubprogram(name: "hid_set_drvdata", scope: !6, file: !6, line: 704, type: !6805, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6807)
!6805 = !DISubroutineType(types: !6806)
!6806 = !{null, !5288, !36}
!6807 = !{!6808, !6809}
!6808 = !DILocalVariable(name: "hdev", arg: 1, scope: !6804, file: !6, line: 704, type: !5288)
!6809 = !DILocalVariable(name: "data", arg: 2, scope: !6804, file: !6, line: 704, type: !36)
!6810 = !DILocation(line: 704, column: 55, scope: !6804)
!6811 = !DILocation(line: 704, column: 67, scope: !6804)
!6812 = !DILocation(line: 706, column: 19, scope: !6804)
!6813 = !DILocation(line: 706, column: 25, scope: !6804)
!6814 = !DILocation(line: 706, column: 30, scope: !6804)
!6815 = !DILocation(line: 706, column: 2, scope: !6804)
!6816 = !DILocation(line: 707, column: 1, scope: !6804)
!6817 = distinct !DISubprogram(name: "hid_parse", scope: !6, file: !6, line: 1119, type: !5696, scopeLine: 1120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6818)
!6818 = !{!6819}
!6819 = !DILocalVariable(name: "hdev", arg: 1, scope: !6817, file: !6, line: 1119, type: !5288)
!6820 = !DILocation(line: 1119, column: 61, scope: !6817)
!6821 = !DILocation(line: 1121, column: 25, scope: !6817)
!6822 = !DILocation(line: 1121, column: 9, scope: !6817)
!6823 = !DILocation(line: 1121, column: 2, scope: !6817)
!6824 = !DISubprogram(name: "hid_hw_start", scope: !6, file: !6, line: 1124, type: !5748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6825 = !DISubprogram(name: "kmemdup", scope: !6826, file: !6826, line: 219, type: !6827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6826 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6827 = !DISubroutineType(types: !6828)
!6828 = !{!36, !1447, !51, !1553}
!6829 = !DISubprogram(name: "hid_hw_raw_request", scope: !6, file: !6, line: 1131, type: !6830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6830 = !DISubroutineType(types: !6831)
!6831 = !{!38, !5288, !103, !5292, !51, !12, !278}
!6832 = !DISubprogram(name: "__init_waitqueue_head", scope: !71, file: !71, line: 64, type: !6833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6833 = !DISubroutineType(types: !6834)
!6834 = !{null, !6835, !32, !6836}
!6835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!6836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!6837 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6838, file: !6838, line: 515, type: !6839, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6841)
!6838 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6839 = !DISubroutineType(types: !6840)
!6840 = !{!55, !4557}
!6841 = !{!6842}
!6842 = !DILocalVariable(name: "m", arg: 1, scope: !6837, file: !6838, line: 515, type: !4557)
!6843 = !DILocation(line: 515, column: 74, scope: !6837)
!6844 = !DILocation(line: 517, column: 27, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6837, file: !6838, line: 517, column: 6)
!6846 = !DILocation(line: 517, column: 6, scope: !6845)
!6847 = !DILocation(line: 517, column: 6, scope: !6837)
!6848 = !DILocation(line: 518, column: 12, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6850, file: !6838, line: 518, column: 7)
!6850 = distinct !DILexicalBlock(scope: !6845, file: !6838, line: 517, column: 31)
!6851 = !DILocation(line: 518, column: 14, scope: !6849)
!6852 = !DILocation(line: 518, column: 7, scope: !6850)
!6853 = !DILocation(line: 519, column: 4, scope: !6849)
!6854 = !DILocation(line: 520, column: 28, scope: !6850)
!6855 = !DILocation(line: 520, column: 10, scope: !6850)
!6856 = !DILocation(line: 520, column: 3, scope: !6850)
!6857 = !DILocation(line: 522, column: 29, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6845, file: !6838, line: 521, column: 9)
!6859 = !DILocation(line: 522, column: 10, scope: !6858)
!6860 = !DILocation(line: 522, column: 3, scope: !6858)
!6861 = !DILocation(line: 524, column: 1, scope: !6837)
!6862 = !DILocation(line: 112, column: 2, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !5922, file: !5923, line: 112, column: 2)
!6864 = !DILocation(line: 112, column: 2, scope: !5922)
!6865 = !DILocation(line: 113, column: 1, scope: !5922)
!6866 = !DISubprogram(name: "init_wait_entry", scope: !71, file: !71, line: 290, type: !6867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6867 = !DISubroutineType(types: !6868)
!6868 = !{null, !5897, !38}
!6869 = !DISubprogram(name: "prepare_to_wait_event", scope: !71, file: !71, line: 1199, type: !6870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6870 = !DISubroutineType(types: !6871)
!6871 = !{!391, !6835, !5897, !38}
!6872 = !DISubprogram(name: "schedule_timeout", scope: !1746, file: !1746, line: 298, type: !6873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6873 = !DISubroutineType(types: !6874)
!6874 = !{!391, !391}
!6875 = !DISubprogram(name: "finish_wait", scope: !71, file: !71, line: 1200, type: !6876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6876 = !DISubroutineType(types: !6877)
!6877 = !{null, !6835, !5897}
!6878 = !DISubprogram(name: "get_random_bytes", scope: !6879, file: !6879, line: 39, type: !6880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6879 = !DIFile(filename: "./include/linux/random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ff56c5c661379ff0da8775246644d01")
!6880 = !DISubroutineType(types: !6881)
!6881 = !{null, !36, !51}
!6882 = !DISubprogram(name: "kfree", scope: !292, file: !292, line: 227, type: !6883, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6883 = !DISubroutineType(types: !6884)
!6884 = !{null, !1447}
!6885 = !DISubprogram(name: "lgff_init", scope: !5868, file: !5868, line: 11, type: !5696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6886 = distinct !DISubprogram(name: "lg2ff_init", scope: !5868, file: !5868, line: 19, type: !5696, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6887)
!6887 = !{!6888}
!6888 = !DILocalVariable(name: "hdev", arg: 1, scope: !6886, file: !5868, line: 19, type: !5288)
!6889 = !DILocation(line: 19, column: 49, scope: !6886)
!6890 = !DILocation(line: 19, column: 57, scope: !6886)
!6891 = distinct !DISubprogram(name: "lg3ff_init", scope: !5868, file: !5868, line: 25, type: !5696, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6892)
!6892 = !{!6893}
!6893 = !DILocalVariable(name: "hdev", arg: 1, scope: !6891, file: !5868, line: 25, type: !5288)
!6894 = !DILocation(line: 25, column: 49, scope: !6891)
!6895 = !DILocation(line: 25, column: 57, scope: !6891)
!6896 = !DISubprogram(name: "lg4ff_init", scope: !6897, file: !6897, line: 12, type: !5696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6897 = !DIFile(filename: "drivers/hid/hid-lg4ff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "560cda666682a5a6887201f175747c2f")
!6898 = !DISubprogram(name: "hid_hw_stop", scope: !6, file: !6, line: 1126, type: !5700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6899 = distinct !DISubprogram(name: "kmalloc", scope: !292, file: !292, line: 591, type: !6788, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6900)
!6900 = !{!6901, !6902, !6903}
!6901 = !DILocalVariable(name: "size", arg: 1, scope: !6899, file: !292, line: 591, type: !51)
!6902 = !DILocalVariable(name: "flags", arg: 2, scope: !6899, file: !292, line: 591, type: !1553)
!6903 = !DILocalVariable(name: "index", scope: !6904, file: !292, line: 594, type: !7)
!6904 = distinct !DILexicalBlock(scope: !6905, file: !292, line: 593, column: 42)
!6905 = distinct !DILexicalBlock(scope: !6899, file: !292, line: 593, column: 6)
!6906 = !DILocation(line: 591, column: 61, scope: !6899)
!6907 = !DILocation(line: 591, column: 73, scope: !6899)
!6908 = !DILocation(line: 593, column: 27, scope: !6905)
!6909 = !DILocation(line: 593, column: 6, scope: !6905)
!6910 = !DILocation(line: 593, column: 33, scope: !6905)
!6911 = !DILocation(line: 593, column: 36, scope: !6905)
!6912 = !DILocation(line: 593, column: 6, scope: !6899)
!6913 = !DILocation(line: 594, column: 3, scope: !6904)
!6914 = !DILocation(line: 594, column: 16, scope: !6904)
!6915 = !DILocation(line: 596, column: 7, scope: !6916)
!6916 = distinct !DILexicalBlock(scope: !6904, file: !292, line: 596, column: 7)
!6917 = !DILocation(line: 596, column: 12, scope: !6916)
!6918 = !DILocation(line: 596, column: 7, scope: !6904)
!6919 = !DILocation(line: 597, column: 25, scope: !6916)
!6920 = !DILocation(line: 597, column: 31, scope: !6916)
!6921 = !DILocation(line: 597, column: 11, scope: !6916)
!6922 = !DILocation(line: 597, column: 4, scope: !6916)
!6923 = !DILocation(line: 599, column: 11, scope: !6904)
!6924 = !DILocation(line: 599, column: 9, scope: !6904)
!6925 = !DILocation(line: 601, column: 33, scope: !6904)
!6926 = !DILocation(line: 601, column: 40, scope: !6904)
!6927 = !DILocation(line: 601, column: 20, scope: !6904)
!6928 = !DILocation(line: 601, column: 5, scope: !6904)
!6929 = !DILocation(line: 601, column: 51, scope: !6904)
!6930 = !DILocation(line: 602, column: 5, scope: !6904)
!6931 = !DILocation(line: 602, column: 12, scope: !6904)
!6932 = !DILocation(line: 600, column: 10, scope: !6904)
!6933 = !DILocation(line: 600, column: 3, scope: !6904)
!6934 = !DILocation(line: 603, column: 2, scope: !6905)
!6935 = !DILocation(line: 604, column: 19, scope: !6899)
!6936 = !DILocation(line: 604, column: 25, scope: !6899)
!6937 = !DILocation(line: 604, column: 9, scope: !6899)
!6938 = !DILocation(line: 604, column: 2, scope: !6899)
!6939 = !DILocation(line: 605, column: 1, scope: !6899)
!6940 = !DISubprogram(name: "kmalloc_large", scope: !292, file: !292, line: 531, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6941 = distinct !DISubprogram(name: "__kmalloc_index", scope: !292, file: !292, line: 444, type: !6942, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6944)
!6942 = !DISubroutineType(types: !6943)
!6943 = !{!7, !51, !970}
!6944 = !{!6945, !6946}
!6945 = !DILocalVariable(name: "size", arg: 1, scope: !6941, file: !292, line: 444, type: !51)
!6946 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6941, file: !292, line: 445, type: !970)
!6947 = !DILocation(line: 444, column: 60, scope: !6941)
!6948 = !DILocation(line: 445, column: 16, scope: !6941)
!6949 = !DILocation(line: 447, column: 7, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 447, column: 6)
!6951 = !DILocation(line: 447, column: 6, scope: !6941)
!6952 = !DILocation(line: 448, column: 3, scope: !6950)
!6953 = !DILocation(line: 450, column: 6, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 450, column: 6)
!6955 = !DILocation(line: 450, column: 11, scope: !6954)
!6956 = !DILocation(line: 450, column: 6, scope: !6941)
!6957 = !DILocation(line: 451, column: 3, scope: !6954)
!6958 = !DILocation(line: 453, column: 32, scope: !6959)
!6959 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 453, column: 6)
!6960 = !DILocation(line: 453, column: 37, scope: !6959)
!6961 = !DILocation(line: 453, column: 42, scope: !6959)
!6962 = !DILocation(line: 453, column: 45, scope: !6959)
!6963 = !DILocation(line: 453, column: 50, scope: !6959)
!6964 = !DILocation(line: 453, column: 6, scope: !6941)
!6965 = !DILocation(line: 454, column: 3, scope: !6959)
!6966 = !DILocation(line: 455, column: 32, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 455, column: 6)
!6968 = !DILocation(line: 455, column: 37, scope: !6967)
!6969 = !DILocation(line: 455, column: 43, scope: !6967)
!6970 = !DILocation(line: 455, column: 46, scope: !6967)
!6971 = !DILocation(line: 455, column: 51, scope: !6967)
!6972 = !DILocation(line: 455, column: 6, scope: !6941)
!6973 = !DILocation(line: 456, column: 3, scope: !6967)
!6974 = !DILocation(line: 457, column: 6, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 457, column: 6)
!6976 = !DILocation(line: 457, column: 11, scope: !6975)
!6977 = !DILocation(line: 457, column: 6, scope: !6941)
!6978 = !DILocation(line: 457, column: 26, scope: !6975)
!6979 = !DILocation(line: 458, column: 6, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 458, column: 6)
!6981 = !DILocation(line: 458, column: 11, scope: !6980)
!6982 = !DILocation(line: 458, column: 6, scope: !6941)
!6983 = !DILocation(line: 458, column: 26, scope: !6980)
!6984 = !DILocation(line: 459, column: 6, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 459, column: 6)
!6986 = !DILocation(line: 459, column: 11, scope: !6985)
!6987 = !DILocation(line: 459, column: 6, scope: !6941)
!6988 = !DILocation(line: 459, column: 26, scope: !6985)
!6989 = !DILocation(line: 460, column: 6, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 460, column: 6)
!6991 = !DILocation(line: 460, column: 11, scope: !6990)
!6992 = !DILocation(line: 460, column: 6, scope: !6941)
!6993 = !DILocation(line: 460, column: 26, scope: !6990)
!6994 = !DILocation(line: 461, column: 6, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 461, column: 6)
!6996 = !DILocation(line: 461, column: 11, scope: !6995)
!6997 = !DILocation(line: 461, column: 6, scope: !6941)
!6998 = !DILocation(line: 461, column: 26, scope: !6995)
!6999 = !DILocation(line: 462, column: 6, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 462, column: 6)
!7001 = !DILocation(line: 462, column: 11, scope: !7000)
!7002 = !DILocation(line: 462, column: 6, scope: !6941)
!7003 = !DILocation(line: 462, column: 26, scope: !7000)
!7004 = !DILocation(line: 463, column: 6, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 463, column: 6)
!7006 = !DILocation(line: 463, column: 11, scope: !7005)
!7007 = !DILocation(line: 463, column: 6, scope: !6941)
!7008 = !DILocation(line: 463, column: 26, scope: !7005)
!7009 = !DILocation(line: 464, column: 6, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 464, column: 6)
!7011 = !DILocation(line: 464, column: 11, scope: !7010)
!7012 = !DILocation(line: 464, column: 6, scope: !6941)
!7013 = !DILocation(line: 464, column: 26, scope: !7010)
!7014 = !DILocation(line: 465, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 465, column: 6)
!7016 = !DILocation(line: 465, column: 11, scope: !7015)
!7017 = !DILocation(line: 465, column: 6, scope: !6941)
!7018 = !DILocation(line: 465, column: 26, scope: !7015)
!7019 = !DILocation(line: 466, column: 6, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 466, column: 6)
!7021 = !DILocation(line: 466, column: 11, scope: !7020)
!7022 = !DILocation(line: 466, column: 6, scope: !6941)
!7023 = !DILocation(line: 466, column: 26, scope: !7020)
!7024 = !DILocation(line: 467, column: 6, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 467, column: 6)
!7026 = !DILocation(line: 467, column: 11, scope: !7025)
!7027 = !DILocation(line: 467, column: 6, scope: !6941)
!7028 = !DILocation(line: 467, column: 26, scope: !7025)
!7029 = !DILocation(line: 468, column: 6, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 468, column: 6)
!7031 = !DILocation(line: 468, column: 11, scope: !7030)
!7032 = !DILocation(line: 468, column: 6, scope: !6941)
!7033 = !DILocation(line: 468, column: 26, scope: !7030)
!7034 = !DILocation(line: 469, column: 6, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 469, column: 6)
!7036 = !DILocation(line: 469, column: 11, scope: !7035)
!7037 = !DILocation(line: 469, column: 6, scope: !6941)
!7038 = !DILocation(line: 469, column: 26, scope: !7035)
!7039 = !DILocation(line: 470, column: 6, scope: !7040)
!7040 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 470, column: 6)
!7041 = !DILocation(line: 470, column: 11, scope: !7040)
!7042 = !DILocation(line: 470, column: 6, scope: !6941)
!7043 = !DILocation(line: 470, column: 26, scope: !7040)
!7044 = !DILocation(line: 471, column: 6, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 471, column: 6)
!7046 = !DILocation(line: 471, column: 11, scope: !7045)
!7047 = !DILocation(line: 471, column: 6, scope: !6941)
!7048 = !DILocation(line: 471, column: 26, scope: !7045)
!7049 = !DILocation(line: 472, column: 6, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 472, column: 6)
!7051 = !DILocation(line: 472, column: 11, scope: !7050)
!7052 = !DILocation(line: 472, column: 6, scope: !6941)
!7053 = !DILocation(line: 472, column: 26, scope: !7050)
!7054 = !DILocation(line: 473, column: 6, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 473, column: 6)
!7056 = !DILocation(line: 473, column: 11, scope: !7055)
!7057 = !DILocation(line: 473, column: 6, scope: !6941)
!7058 = !DILocation(line: 473, column: 26, scope: !7055)
!7059 = !DILocation(line: 474, column: 6, scope: !7060)
!7060 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 474, column: 6)
!7061 = !DILocation(line: 474, column: 11, scope: !7060)
!7062 = !DILocation(line: 474, column: 6, scope: !6941)
!7063 = !DILocation(line: 474, column: 27, scope: !7060)
!7064 = !DILocation(line: 475, column: 6, scope: !7065)
!7065 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 475, column: 6)
!7066 = !DILocation(line: 475, column: 11, scope: !7065)
!7067 = !DILocation(line: 475, column: 6, scope: !6941)
!7068 = !DILocation(line: 475, column: 32, scope: !7065)
!7069 = !DILocation(line: 477, column: 50, scope: !7070)
!7070 = distinct !DILexicalBlock(scope: !6941, file: !292, line: 477, column: 6)
!7071 = !DILocation(line: 477, column: 6, scope: !6941)
!7072 = !DILocation(line: 478, column: 3, scope: !7070)
!7073 = !DILocation(line: 478, column: 3, scope: !7074)
!7074 = distinct !DILexicalBlock(scope: !7075, file: !292, line: 478, column: 3)
!7075 = distinct !DILexicalBlock(scope: !7070, file: !292, line: 478, column: 3)
!7076 = !{i32 -2142245620}
!7077 = !DILocation(line: 478, column: 3, scope: !7075)
!7078 = !DILocation(line: 480, column: 3, scope: !7070)
!7079 = !DILocation(line: 480, column: 3, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !7070, file: !292, line: 480, column: 3)
!7081 = !DILocation(line: 480, column: 3, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7080, file: !292, line: 480, column: 3)
!7083 = !DILocation(line: 480, column: 3, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7080, file: !292, line: 480, column: 3)
!7085 = !{i64 2152721879, i64 2152721908, i64 2152721954, i64 2152722012, i64 2152722066, i64 2152722120, i64 2152722175, i64 2152722206}
!7086 = !DILocation(line: 483, column: 2, scope: !6941)
!7087 = !DILocation(line: 484, column: 1, scope: !6941)
!7088 = !DISubprogram(name: "kmalloc_trace", scope: !292, file: !292, line: 525, type: !7089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7089 = !DISubroutineType(types: !7090)
!7090 = !{!36, !7091, !1553, !51}
!7091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7092, size: 64)
!7092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !7093, line: 11, flags: DIFlagFwdDecl)
!7093 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!7094 = distinct !DISubprogram(name: "kmalloc_type", scope: !292, file: !292, line: 401, type: !7095, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7097)
!7095 = !DISubroutineType(types: !7096)
!7096 = !{!291, !1553, !55}
!7097 = !{!7098, !7099}
!7098 = !DILocalVariable(name: "flags", arg: 1, scope: !7094, file: !292, line: 401, type: !1553)
!7099 = !DILocalVariable(name: "caller", arg: 2, scope: !7094, file: !292, line: 401, type: !55)
!7100 = !DILocation(line: 401, column: 67, scope: !7094)
!7101 = !DILocation(line: 401, column: 88, scope: !7094)
!7102 = !DILocation(line: 407, column: 6, scope: !7103)
!7103 = distinct !DILexicalBlock(scope: !7094, file: !292, line: 407, column: 6)
!7104 = !DILocation(line: 407, column: 6, scope: !7094)
!7105 = !DILocation(line: 413, column: 3, scope: !7103)
!7106 = !DILocation(line: 423, column: 38, scope: !7107)
!7107 = distinct !DILexicalBlock(scope: !7094, file: !292, line: 423, column: 6)
!7108 = !DILocation(line: 423, column: 44, scope: !7107)
!7109 = !DILocation(line: 423, column: 6, scope: !7094)
!7110 = !DILocation(line: 424, column: 3, scope: !7107)
!7111 = !DILocation(line: 426, column: 3, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7094, file: !292, line: 425, column: 6)
!7113 = !DILocation(line: 429, column: 1, scope: !7094)
!7114 = !DISubprogram(name: "__kmalloc", scope: !292, file: !292, line: 488, type: !6788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7115 = !DISubprogram(name: "__compiletime_assert_204", scope: !292, file: !292, line: 478, type: !3391, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7116 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !190, file: !190, line: 921, type: !7117, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7119)
!7117 = !DISubroutineType(types: !7118)
!7118 = !{null, !2121, !36}
!7119 = !{!7120, !7121}
!7120 = !DILocalVariable(name: "dev", arg: 1, scope: !7116, file: !190, line: 921, type: !2121)
!7121 = !DILocalVariable(name: "data", arg: 2, scope: !7116, file: !190, line: 921, type: !36)
!7122 = !DILocation(line: 921, column: 51, scope: !7116)
!7123 = !DILocation(line: 921, column: 62, scope: !7116)
!7124 = !DILocation(line: 923, column: 21, scope: !7116)
!7125 = !DILocation(line: 923, column: 2, scope: !7116)
!7126 = !DILocation(line: 923, column: 7, scope: !7116)
!7127 = !DILocation(line: 923, column: 19, scope: !7116)
!7128 = !DILocation(line: 924, column: 1, scope: !7116)
!7129 = !DISubprogram(name: "hid_open_report", scope: !6, file: !6, line: 966, type: !5696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7130 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6838, file: !6838, line: 458, type: !6839, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7131)
!7131 = !{!7132}
!7132 = !DILocalVariable(name: "m", arg: 1, scope: !7130, file: !6838, line: 458, type: !4557)
!7133 = !DILocation(line: 458, column: 66, scope: !7130)
!7134 = !DILocation(line: 460, column: 10, scope: !7130)
!7135 = !DILocation(line: 460, column: 12, scope: !7130)
!7136 = !DILocation(line: 460, column: 34, scope: !7130)
!7137 = !DILocation(line: 460, column: 39, scope: !7130)
!7138 = !DILocation(line: 460, column: 2, scope: !7130)
!7139 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6838, file: !6838, line: 451, type: !6839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7140 = distinct !DISubprogram(name: "hid_get_drvdata", scope: !6, file: !6, line: 699, type: !7141, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7143)
!7141 = !DISubroutineType(types: !7142)
!7142 = !{!36, !5288}
!7143 = !{!7144}
!7144 = !DILocalVariable(name: "hdev", arg: 1, scope: !7140, file: !6, line: 699, type: !5288)
!7145 = !DILocation(line: 699, column: 56, scope: !7140)
!7146 = !DILocation(line: 701, column: 26, scope: !7140)
!7147 = !DILocation(line: 701, column: 32, scope: !7140)
!7148 = !DILocation(line: 701, column: 9, scope: !7140)
!7149 = !DILocation(line: 701, column: 2, scope: !7140)
!7150 = !DISubprogram(name: "lg4ff_deinit", scope: !6897, file: !6897, line: 13, type: !5696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7151 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !190, file: !190, line: 916, type: !7152, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7154)
!7152 = !DISubroutineType(types: !7153)
!7153 = !{!36, !2137}
!7154 = !{!7155}
!7155 = !DILocalVariable(name: "dev", arg: 1, scope: !7151, file: !190, line: 916, type: !2137)
!7156 = !DILocation(line: 916, column: 58, scope: !7151)
!7157 = !DILocation(line: 918, column: 9, scope: !7151)
!7158 = !DILocation(line: 918, column: 14, scope: !7151)
!7159 = !DILocation(line: 918, column: 2, scope: !7151)
!7160 = !DISubprogram(name: "lg4ff_raw_event", scope: !6897, file: !6897, line: 10, type: !7161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7161 = !DISubroutineType(types: !7162)
!7162 = !{!38, !5288, !5322, !5773, !38, !5866}
!7163 = !DISubprogram(name: "input_event", scope: !5382, file: !5382, line: 420, type: !7164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7164 = !DISubroutineType(types: !7165)
!7165 = !{null, !5380, !7, !7, !38}
!7166 = !DISubprogram(name: "lg4ff_adjust_input_event", scope: !6897, file: !6897, line: 8, type: !7167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7167 = !DISubroutineType(types: !7168)
!7168 = !{!38, !5288, !5333, !5340, !896, !5866}
!7169 = !DISubprogram(name: "_dev_info", scope: !6801, file: !6801, line: 56, type: !6802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7170 = distinct !DISubprogram(name: "lg_ultrax_remote_mapping", scope: !3, file: !3, line: 538, type: !7171, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7173)
!7171 = !DISubroutineType(types: !7172)
!7172 = !{!38, !5374, !5340, !5821, !712}
!7173 = !{!7174, !7175, !7176, !7177}
!7174 = !DILocalVariable(name: "hi", arg: 1, scope: !7170, file: !3, line: 538, type: !5374)
!7175 = !DILocalVariable(name: "usage", arg: 2, scope: !7170, file: !3, line: 539, type: !5340)
!7176 = !DILocalVariable(name: "bit", arg: 3, scope: !7170, file: !3, line: 539, type: !5821)
!7177 = !DILocalVariable(name: "max", arg: 4, scope: !7170, file: !3, line: 539, type: !712)
!7178 = !DILocation(line: 538, column: 55, scope: !7170)
!7179 = !DILocation(line: 539, column: 21, scope: !7170)
!7180 = !DILocation(line: 539, column: 44, scope: !7170)
!7181 = !DILocation(line: 539, column: 54, scope: !7170)
!7182 = !DILocation(line: 541, column: 7, scope: !7183)
!7183 = distinct !DILexicalBlock(scope: !7170, file: !3, line: 541, column: 6)
!7184 = !DILocation(line: 541, column: 14, scope: !7183)
!7185 = !DILocation(line: 541, column: 18, scope: !7183)
!7186 = !DILocation(line: 541, column: 36, scope: !7183)
!7187 = !DILocation(line: 541, column: 6, scope: !7170)
!7188 = !DILocation(line: 542, column: 3, scope: !7183)
!7189 = !DILocation(line: 544, column: 18, scope: !7170)
!7190 = !DILocation(line: 544, column: 22, scope: !7170)
!7191 = !DILocation(line: 544, column: 29, scope: !7170)
!7192 = !DILocation(line: 544, column: 2, scope: !7170)
!7193 = !DILocation(line: 545, column: 10, scope: !7170)
!7194 = !DILocation(line: 545, column: 17, scope: !7170)
!7195 = !DILocation(line: 545, column: 21, scope: !7170)
!7196 = !DILocation(line: 545, column: 2, scope: !7170)
!7197 = !DILocation(line: 547, column: 14, scope: !7198)
!7198 = distinct !DILexicalBlock(scope: !7170, file: !3, line: 545, column: 34)
!7199 = !DILocation(line: 547, column: 43, scope: !7198)
!7200 = !DILocation(line: 548, column: 14, scope: !7198)
!7201 = !DILocation(line: 548, column: 43, scope: !7198)
!7202 = !DILocation(line: 549, column: 14, scope: !7198)
!7203 = !DILocation(line: 549, column: 45, scope: !7198)
!7204 = !DILocation(line: 550, column: 14, scope: !7198)
!7205 = !DILocation(line: 550, column: 41, scope: !7198)
!7206 = !DILocation(line: 551, column: 14, scope: !7198)
!7207 = !DILocation(line: 551, column: 43, scope: !7198)
!7208 = !DILocation(line: 552, column: 14, scope: !7198)
!7209 = !DILocation(line: 552, column: 43, scope: !7198)
!7210 = !DILocation(line: 553, column: 14, scope: !7198)
!7211 = !DILocation(line: 553, column: 43, scope: !7198)
!7212 = !DILocation(line: 554, column: 14, scope: !7198)
!7213 = !DILocation(line: 554, column: 43, scope: !7198)
!7214 = !DILocation(line: 555, column: 14, scope: !7198)
!7215 = !DILocation(line: 555, column: 42, scope: !7198)
!7216 = !DILocation(line: 556, column: 14, scope: !7198)
!7217 = !DILocation(line: 556, column: 42, scope: !7198)
!7218 = !DILocation(line: 557, column: 14, scope: !7198)
!7219 = !DILocation(line: 557, column: 43, scope: !7198)
!7220 = !DILocation(line: 558, column: 14, scope: !7198)
!7221 = !DILocation(line: 558, column: 43, scope: !7198)
!7222 = !DILocation(line: 559, column: 14, scope: !7198)
!7223 = !DILocation(line: 559, column: 43, scope: !7198)
!7224 = !DILocation(line: 560, column: 14, scope: !7198)
!7225 = !DILocation(line: 560, column: 46, scope: !7198)
!7226 = !DILocation(line: 561, column: 14, scope: !7198)
!7227 = !DILocation(line: 561, column: 46, scope: !7198)
!7228 = !DILocation(line: 562, column: 14, scope: !7198)
!7229 = !DILocation(line: 562, column: 42, scope: !7198)
!7230 = !DILocation(line: 563, column: 14, scope: !7198)
!7231 = !DILocation(line: 563, column: 43, scope: !7198)
!7232 = !DILocation(line: 566, column: 3, scope: !7198)
!7233 = !DILocation(line: 568, column: 2, scope: !7170)
!7234 = !DILocation(line: 569, column: 1, scope: !7170)
!7235 = distinct !DISubprogram(name: "lg_wireless_mapping", scope: !3, file: !3, line: 571, type: !7171, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7236)
!7236 = !{!7237, !7238, !7239, !7240}
!7237 = !DILocalVariable(name: "hi", arg: 1, scope: !7235, file: !3, line: 571, type: !5374)
!7238 = !DILocalVariable(name: "usage", arg: 2, scope: !7235, file: !3, line: 571, type: !5340)
!7239 = !DILocalVariable(name: "bit", arg: 3, scope: !7235, file: !3, line: 572, type: !5821)
!7240 = !DILocalVariable(name: "max", arg: 4, scope: !7235, file: !3, line: 572, type: !712)
!7241 = !DILocation(line: 571, column: 50, scope: !7235)
!7242 = !DILocation(line: 571, column: 72, scope: !7235)
!7243 = !DILocation(line: 572, column: 19, scope: !7235)
!7244 = !DILocation(line: 572, column: 29, scope: !7235)
!7245 = !DILocation(line: 574, column: 7, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7235, file: !3, line: 574, column: 6)
!7247 = !DILocation(line: 574, column: 14, scope: !7246)
!7248 = !DILocation(line: 574, column: 18, scope: !7246)
!7249 = !DILocation(line: 574, column: 36, scope: !7246)
!7250 = !DILocation(line: 574, column: 6, scope: !7235)
!7251 = !DILocation(line: 575, column: 3, scope: !7246)
!7252 = !DILocation(line: 577, column: 10, scope: !7235)
!7253 = !DILocation(line: 577, column: 17, scope: !7235)
!7254 = !DILocation(line: 577, column: 21, scope: !7235)
!7255 = !DILocation(line: 577, column: 2, scope: !7235)
!7256 = !DILocation(line: 578, column: 15, scope: !7257)
!7257 = distinct !DILexicalBlock(scope: !7235, file: !3, line: 577, column: 34)
!7258 = !DILocation(line: 578, column: 49, scope: !7257)
!7259 = !DILocation(line: 579, column: 15, scope: !7257)
!7260 = !DILocation(line: 579, column: 45, scope: !7257)
!7261 = !DILocation(line: 580, column: 15, scope: !7257)
!7262 = !DILocation(line: 580, column: 45, scope: !7257)
!7263 = !DILocation(line: 581, column: 15, scope: !7257)
!7264 = !DILocation(line: 581, column: 45, scope: !7257)
!7265 = !DILocation(line: 582, column: 15, scope: !7257)
!7266 = !DILocation(line: 582, column: 49, scope: !7257)
!7267 = !DILocation(line: 584, column: 15, scope: !7257)
!7268 = !DILocation(line: 584, column: 44, scope: !7257)
!7269 = !DILocation(line: 585, column: 15, scope: !7257)
!7270 = !DILocation(line: 585, column: 44, scope: !7257)
!7271 = !DILocation(line: 586, column: 15, scope: !7257)
!7272 = !DILocation(line: 586, column: 51, scope: !7257)
!7273 = !DILocation(line: 587, column: 15, scope: !7257)
!7274 = !DILocation(line: 587, column: 48, scope: !7257)
!7275 = !DILocation(line: 588, column: 15, scope: !7257)
!7276 = !DILocation(line: 588, column: 46, scope: !7257)
!7277 = !DILocation(line: 589, column: 15, scope: !7257)
!7278 = !DILocation(line: 589, column: 49, scope: !7257)
!7279 = !DILocation(line: 590, column: 15, scope: !7257)
!7280 = !DILocation(line: 590, column: 46, scope: !7257)
!7281 = !DILocation(line: 591, column: 15, scope: !7257)
!7282 = !DILocation(line: 591, column: 46, scope: !7257)
!7283 = !DILocation(line: 592, column: 15, scope: !7257)
!7284 = !DILocation(line: 592, column: 47, scope: !7257)
!7285 = !DILocation(line: 593, column: 15, scope: !7257)
!7286 = !DILocation(line: 593, column: 45, scope: !7257)
!7287 = !DILocation(line: 594, column: 15, scope: !7257)
!7288 = !DILocation(line: 594, column: 45, scope: !7257)
!7289 = !DILocation(line: 595, column: 15, scope: !7257)
!7290 = !DILocation(line: 595, column: 45, scope: !7257)
!7291 = !DILocation(line: 596, column: 15, scope: !7257)
!7292 = !DILocation(line: 596, column: 45, scope: !7257)
!7293 = !DILocation(line: 597, column: 15, scope: !7257)
!7294 = !DILocation(line: 597, column: 51, scope: !7257)
!7295 = !DILocation(line: 598, column: 15, scope: !7257)
!7296 = !DILocation(line: 598, column: 46, scope: !7257)
!7297 = !DILocation(line: 599, column: 15, scope: !7257)
!7298 = !DILocation(line: 599, column: 47, scope: !7257)
!7299 = !DILocation(line: 600, column: 15, scope: !7257)
!7300 = !DILocation(line: 600, column: 49, scope: !7257)
!7301 = !DILocation(line: 601, column: 15, scope: !7257)
!7302 = !DILocation(line: 601, column: 45, scope: !7257)
!7303 = !DILocation(line: 602, column: 15, scope: !7257)
!7304 = !DILocation(line: 602, column: 44, scope: !7257)
!7305 = !DILocation(line: 604, column: 15, scope: !7257)
!7306 = !DILocation(line: 604, column: 45, scope: !7257)
!7307 = !DILocation(line: 605, column: 15, scope: !7257)
!7308 = !DILocation(line: 605, column: 47, scope: !7257)
!7309 = !DILocation(line: 606, column: 15, scope: !7257)
!7310 = !DILocation(line: 606, column: 44, scope: !7257)
!7311 = !DILocation(line: 607, column: 15, scope: !7257)
!7312 = !DILocation(line: 607, column: 51, scope: !7257)
!7313 = !DILocation(line: 608, column: 15, scope: !7257)
!7314 = !DILocation(line: 608, column: 44, scope: !7257)
!7315 = !DILocation(line: 611, column: 15, scope: !7257)
!7316 = !DILocation(line: 611, column: 43, scope: !7257)
!7317 = !DILocation(line: 612, column: 15, scope: !7257)
!7318 = !DILocation(line: 612, column: 46, scope: !7257)
!7319 = !DILocation(line: 613, column: 15, scope: !7257)
!7320 = !DILocation(line: 613, column: 47, scope: !7257)
!7321 = !DILocation(line: 614, column: 15, scope: !7257)
!7322 = !DILocation(line: 614, column: 52, scope: !7257)
!7323 = !DILocation(line: 615, column: 15, scope: !7257)
!7324 = !DILocation(line: 615, column: 51, scope: !7257)
!7325 = !DILocation(line: 616, column: 15, scope: !7257)
!7326 = !DILocation(line: 616, column: 51, scope: !7257)
!7327 = !DILocation(line: 617, column: 15, scope: !7257)
!7328 = !DILocation(line: 617, column: 44, scope: !7257)
!7329 = !DILocation(line: 618, column: 15, scope: !7257)
!7330 = !DILocation(line: 618, column: 44, scope: !7257)
!7331 = !DILocation(line: 619, column: 15, scope: !7257)
!7332 = !DILocation(line: 619, column: 45, scope: !7257)
!7333 = !DILocation(line: 620, column: 15, scope: !7257)
!7334 = !DILocation(line: 620, column: 44, scope: !7257)
!7335 = !DILocation(line: 621, column: 15, scope: !7257)
!7336 = !DILocation(line: 621, column: 45, scope: !7257)
!7337 = !DILocation(line: 622, column: 15, scope: !7257)
!7338 = !DILocation(line: 622, column: 45, scope: !7257)
!7339 = !DILocation(line: 623, column: 15, scope: !7257)
!7340 = !DILocation(line: 623, column: 45, scope: !7257)
!7341 = !DILocation(line: 624, column: 15, scope: !7257)
!7342 = !DILocation(line: 624, column: 45, scope: !7257)
!7343 = !DILocation(line: 627, column: 3, scope: !7257)
!7344 = !DILocation(line: 629, column: 2, scope: !7235)
!7345 = !DILocation(line: 630, column: 1, scope: !7235)
!7346 = !DILocation(line: 1044, column: 52, scope: !6018)
!7347 = !DILocation(line: 1045, column: 21, scope: !6018)
!7348 = !DILocation(line: 1045, column: 44, scope: !6018)
!7349 = !DILocation(line: 1045, column: 54, scope: !6018)
!7350 = !DILocation(line: 1046, column: 8, scope: !6018)
!7351 = !DILocation(line: 1046, column: 27, scope: !6018)
!7352 = !DILocation(line: 1048, column: 2, scope: !6018)
!7353 = !DILocation(line: 1048, column: 20, scope: !6018)
!7354 = !DILocation(line: 1048, column: 28, scope: !6018)
!7355 = !DILocation(line: 1048, column: 38, scope: !6018)
!7356 = !DILocation(line: 1049, column: 2, scope: !6018)
!7357 = !DILocation(line: 1049, column: 17, scope: !6018)
!7358 = !DILocation(line: 1050, column: 2, scope: !6018)
!7359 = !DILocation(line: 1050, column: 15, scope: !6018)
!7360 = !DILocation(line: 1052, column: 10, scope: !6018)
!7361 = !DILocation(line: 1052, column: 2, scope: !6018)
!7362 = !DILocation(line: 1054, column: 10, scope: !7363)
!7363 = distinct !DILexicalBlock(scope: !6018, file: !6, line: 1052, column: 16)
!7364 = !DILocation(line: 1054, column: 17, scope: !7363)
!7365 = !DILocation(line: 1054, column: 8, scope: !7363)
!7366 = !DILocation(line: 1055, column: 9, scope: !7363)
!7367 = !DILocation(line: 1056, column: 3, scope: !7363)
!7368 = !DILocation(line: 1058, column: 10, scope: !7363)
!7369 = !DILocation(line: 1058, column: 17, scope: !7363)
!7370 = !DILocation(line: 1058, column: 8, scope: !7363)
!7371 = !DILocation(line: 1059, column: 9, scope: !7363)
!7372 = !DILocation(line: 1060, column: 3, scope: !7363)
!7373 = !DILocation(line: 1062, column: 10, scope: !7363)
!7374 = !DILocation(line: 1062, column: 17, scope: !7363)
!7375 = !DILocation(line: 1062, column: 8, scope: !7363)
!7376 = !DILocation(line: 1063, column: 9, scope: !7363)
!7377 = !DILocation(line: 1064, column: 3, scope: !7363)
!7378 = !DILocation(line: 1066, column: 10, scope: !7363)
!7379 = !DILocation(line: 1066, column: 17, scope: !7363)
!7380 = !DILocation(line: 1066, column: 8, scope: !7363)
!7381 = !DILocation(line: 1067, column: 9, scope: !7363)
!7382 = !DILocation(line: 1068, column: 3, scope: !7363)
!7383 = !DILocation(line: 1070, column: 10, scope: !7363)
!7384 = !DILocation(line: 1070, column: 17, scope: !7363)
!7385 = !DILocation(line: 1070, column: 8, scope: !7363)
!7386 = !DILocation(line: 1071, column: 9, scope: !7363)
!7387 = !DILocation(line: 1072, column: 3, scope: !7363)
!7388 = !DILocation(line: 1075, column: 6, scope: !7389)
!7389 = distinct !DILexicalBlock(scope: !6018, file: !6, line: 1075, column: 6)
!7390 = !DILocation(line: 1075, column: 6, scope: !6018)
!7391 = !DILocation(line: 1076, column: 3, scope: !7392)
!7392 = distinct !DILexicalBlock(scope: !7393, file: !6, line: 1076, column: 3)
!7393 = distinct !DILexicalBlock(scope: !7394, file: !6, line: 1076, column: 3)
!7394 = distinct !DILexicalBlock(scope: !7389, file: !6, line: 1075, column: 36)
!7395 = !DILocation(line: 1076, column: 3, scope: !7393)
!7396 = !DILocation(line: 1076, column: 3, scope: !7397)
!7397 = distinct !DILexicalBlock(scope: !7392, file: !6, line: 1076, column: 3)
!7398 = !DILocation(line: 1076, column: 3, scope: !7399)
!7399 = distinct !DILexicalBlock(scope: !7397, file: !6, line: 1076, column: 3)
!7400 = !DILocation(line: 1078, column: 4, scope: !7394)
!7401 = !DILocation(line: 1078, column: 8, scope: !7394)
!7402 = !DILocation(line: 1079, column: 3, scope: !7394)
!7403 = !DILocation(line: 1082, column: 16, scope: !6018)
!7404 = !DILocation(line: 1082, column: 2, scope: !6018)
!7405 = !DILocation(line: 1082, column: 9, scope: !6018)
!7406 = !DILocation(line: 1082, column: 14, scope: !6018)
!7407 = !DILocation(line: 1083, column: 16, scope: !6018)
!7408 = !DILocation(line: 1083, column: 2, scope: !6018)
!7409 = !DILocation(line: 1083, column: 9, scope: !6018)
!7410 = !DILocation(line: 1083, column: 14, scope: !6018)
!7411 = !DILocation(line: 1084, column: 9, scope: !6018)
!7412 = !DILocation(line: 1084, column: 3, scope: !6018)
!7413 = !DILocation(line: 1084, column: 7, scope: !6018)
!7414 = !DILocation(line: 1085, column: 9, scope: !6018)
!7415 = !DILocation(line: 1085, column: 3, scope: !6018)
!7416 = !DILocation(line: 1085, column: 7, scope: !6018)
!7417 = !DILocation(line: 1086, column: 1, scope: !6018)
!7418 = distinct !DISubprogram(name: "set_bit", scope: !7419, file: !7419, line: 26, type: !7420, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7424)
!7419 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!7420 = !DISubroutineType(types: !7421)
!7421 = !{null, !391, !7422}
!7422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7423, size: 64)
!7423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!7424 = !{!7425, !7426}
!7425 = !DILocalVariable(name: "nr", arg: 1, scope: !7418, file: !7419, line: 26, type: !391)
!7426 = !DILocalVariable(name: "addr", arg: 2, scope: !7418, file: !7419, line: 26, type: !7422)
!7427 = !DILocation(line: 26, column: 42, scope: !7418)
!7428 = !DILocation(line: 26, column: 70, scope: !7418)
!7429 = !DILocation(line: 28, column: 26, scope: !7418)
!7430 = !DILocation(line: 28, column: 33, scope: !7418)
!7431 = !DILocation(line: 28, column: 31, scope: !7418)
!7432 = !DILocation(line: 28, column: 2, scope: !7418)
!7433 = !DILocation(line: 29, column: 15, scope: !7418)
!7434 = !DILocation(line: 29, column: 19, scope: !7418)
!7435 = !DILocation(line: 29, column: 2, scope: !7418)
!7436 = !DILocation(line: 30, column: 1, scope: !7418)
!7437 = distinct !DISubprogram(name: "hid_map_usage_clear", scope: !6, file: !6, line: 1101, type: !7438, scopeLine: 1104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7440)
!7438 = !DISubroutineType(types: !7439)
!7439 = !{null, !5374, !5340, !5821, !712, !101, !110}
!7440 = !{!7441, !7442, !7443, !7444, !7445, !7446}
!7441 = !DILocalVariable(name: "hidinput", arg: 1, scope: !7437, file: !6, line: 1101, type: !5374)
!7442 = !DILocalVariable(name: "usage", arg: 2, scope: !7437, file: !6, line: 1102, type: !5340)
!7443 = !DILocalVariable(name: "bit", arg: 3, scope: !7437, file: !6, line: 1102, type: !5821)
!7444 = !DILocalVariable(name: "max", arg: 4, scope: !7437, file: !6, line: 1102, type: !712)
!7445 = !DILocalVariable(name: "type", arg: 5, scope: !7437, file: !6, line: 1103, type: !101)
!7446 = !DILocalVariable(name: "c", arg: 6, scope: !7437, file: !6, line: 1103, type: !110)
!7447 = !DILocation(line: 1101, column: 58, scope: !7437)
!7448 = !DILocation(line: 1102, column: 21, scope: !7437)
!7449 = !DILocation(line: 1102, column: 44, scope: !7437)
!7450 = !DILocation(line: 1102, column: 54, scope: !7437)
!7451 = !DILocation(line: 1103, column: 8, scope: !7437)
!7452 = !DILocation(line: 1103, column: 20, scope: !7437)
!7453 = !DILocation(line: 1105, column: 16, scope: !7437)
!7454 = !DILocation(line: 1105, column: 26, scope: !7437)
!7455 = !DILocation(line: 1105, column: 33, scope: !7437)
!7456 = !DILocation(line: 1105, column: 38, scope: !7437)
!7457 = !DILocation(line: 1105, column: 43, scope: !7437)
!7458 = !DILocation(line: 1105, column: 49, scope: !7437)
!7459 = !DILocation(line: 1105, column: 2, scope: !7437)
!7460 = !DILocation(line: 1106, column: 7, scope: !7461)
!7461 = distinct !DILexicalBlock(scope: !7437, file: !6, line: 1106, column: 6)
!7462 = !DILocation(line: 1106, column: 6, scope: !7461)
!7463 = !DILocation(line: 1106, column: 6, scope: !7437)
!7464 = !DILocation(line: 1107, column: 13, scope: !7461)
!7465 = !DILocation(line: 1107, column: 20, scope: !7461)
!7466 = !DILocation(line: 1107, column: 27, scope: !7461)
!7467 = !DILocation(line: 1107, column: 26, scope: !7461)
!7468 = !DILocation(line: 1107, column: 3, scope: !7461)
!7469 = !DILocation(line: 1108, column: 1, scope: !7437)
!7470 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7471, file: !7471, line: 80, type: !7472, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7477)
!7471 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7472 = !DISubroutineType(types: !7473)
!7473 = !{null, !7474, !51}
!7474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7475, size: 64)
!7475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7476)
!7476 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7477 = !{!7478, !7479}
!7478 = !DILocalVariable(name: "v", arg: 1, scope: !7470, file: !7471, line: 80, type: !7474)
!7479 = !DILocalVariable(name: "size", arg: 2, scope: !7470, file: !7471, line: 80, type: !51)
!7480 = !DILocation(line: 80, column: 74, scope: !7470)
!7481 = !DILocation(line: 80, column: 84, scope: !7470)
!7482 = !DILocation(line: 82, column: 20, scope: !7470)
!7483 = !DILocation(line: 82, column: 23, scope: !7470)
!7484 = !DILocation(line: 82, column: 2, scope: !7470)
!7485 = !DILocation(line: 83, column: 2, scope: !7470)
!7486 = !DILocation(line: 84, column: 1, scope: !7470)
!7487 = distinct !DISubprogram(name: "arch_set_bit", scope: !7488, file: !7488, line: 52, type: !7420, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7489)
!7488 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7489 = !{!7490, !7491}
!7490 = !DILocalVariable(name: "nr", arg: 1, scope: !7487, file: !7488, line: 52, type: !391)
!7491 = !DILocalVariable(name: "addr", arg: 2, scope: !7487, file: !7488, line: 52, type: !7422)
!7492 = !DILocation(line: 52, column: 19, scope: !7487)
!7493 = !DILocation(line: 52, column: 47, scope: !7487)
!7494 = !DILocation(line: 54, column: 27, scope: !7495)
!7495 = distinct !DILexicalBlock(scope: !7487, file: !7488, line: 54, column: 6)
!7496 = !DILocation(line: 54, column: 6, scope: !7495)
!7497 = !DILocation(line: 54, column: 6, scope: !7487)
!7498 = !DILocation(line: 56, column: 6, scope: !7499)
!7499 = distinct !DILexicalBlock(scope: !7495, file: !7488, line: 54, column: 32)
!7500 = !DILocation(line: 57, column: 12, scope: !7499)
!7501 = !DILocation(line: 55, column: 3, scope: !7499)
!7502 = !{i64 2148021692, i64 2148021731, i64 2148021752, i64 2148021789, i64 2148021812, i64 2148021682}
!7503 = !DILocation(line: 59, column: 2, scope: !7499)
!7504 = !DILocation(line: 61, column: 8, scope: !7505)
!7505 = distinct !DILexicalBlock(scope: !7495, file: !7488, line: 59, column: 9)
!7506 = !DILocation(line: 61, column: 32, scope: !7505)
!7507 = !DILocation(line: 60, column: 3, scope: !7505)
!7508 = !{i64 2148021977, i64 2148022016, i64 2148022037, i64 2148022074, i64 2148022097, i64 2148021967}
!7509 = !DILocation(line: 63, column: 1, scope: !7487)
!7510 = distinct !DISubprogram(name: "kasan_check_write", scope: !7511, file: !7511, line: 44, type: !7512, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7514)
!7511 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7512 = !DISubroutineType(types: !7513)
!7513 = !{!970, !7474, !7}
!7514 = !{!7515, !7516}
!7515 = !DILocalVariable(name: "p", arg: 1, scope: !7510, file: !7511, line: 44, type: !7474)
!7516 = !DILocalVariable(name: "size", arg: 2, scope: !7510, file: !7511, line: 44, type: !7)
!7517 = !DILocation(line: 44, column: 59, scope: !7510)
!7518 = !DILocation(line: 44, column: 75, scope: !7510)
!7519 = !DILocation(line: 46, column: 2, scope: !7510)
!7520 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7521, file: !7521, line: 229, type: !7522, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7524)
!7521 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7522 = !DISubroutineType(types: !7523)
!7523 = !{null, !7474, !51, !38}
!7524 = !{!7525, !7526, !7527}
!7525 = !DILocalVariable(name: "ptr", arg: 1, scope: !7520, file: !7521, line: 229, type: !7474)
!7526 = !DILocalVariable(name: "size", arg: 2, scope: !7520, file: !7521, line: 229, type: !51)
!7527 = !DILocalVariable(name: "type", arg: 3, scope: !7520, file: !7521, line: 230, type: !38)
!7528 = !DILocation(line: 229, column: 60, scope: !7520)
!7529 = !DILocation(line: 229, column: 72, scope: !7520)
!7530 = !DILocation(line: 230, column: 15, scope: !7520)
!7531 = !DILocation(line: 230, column: 23, scope: !7520)
!7532 = distinct !DISubprogram(name: "clear_bit", scope: !7419, file: !7419, line: 39, type: !7420, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7533)
!7533 = !{!7534, !7535}
!7534 = !DILocalVariable(name: "nr", arg: 1, scope: !7532, file: !7419, line: 39, type: !391)
!7535 = !DILocalVariable(name: "addr", arg: 2, scope: !7532, file: !7419, line: 39, type: !7422)
!7536 = !DILocation(line: 39, column: 44, scope: !7532)
!7537 = !DILocation(line: 39, column: 72, scope: !7532)
!7538 = !DILocation(line: 41, column: 26, scope: !7532)
!7539 = !DILocation(line: 41, column: 33, scope: !7532)
!7540 = !DILocation(line: 41, column: 31, scope: !7532)
!7541 = !DILocation(line: 41, column: 2, scope: !7532)
!7542 = !DILocation(line: 42, column: 17, scope: !7532)
!7543 = !DILocation(line: 42, column: 21, scope: !7532)
!7544 = !DILocation(line: 42, column: 2, scope: !7532)
!7545 = !DILocation(line: 43, column: 1, scope: !7532)
!7546 = distinct !DISubprogram(name: "arch_clear_bit", scope: !7488, file: !7488, line: 72, type: !7420, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7547)
!7547 = !{!7548, !7549}
!7548 = !DILocalVariable(name: "nr", arg: 1, scope: !7546, file: !7488, line: 72, type: !391)
!7549 = !DILocalVariable(name: "addr", arg: 2, scope: !7546, file: !7488, line: 72, type: !7422)
!7550 = !DILocation(line: 72, column: 21, scope: !7546)
!7551 = !DILocation(line: 72, column: 49, scope: !7546)
!7552 = !DILocation(line: 74, column: 27, scope: !7553)
!7553 = distinct !DILexicalBlock(scope: !7546, file: !7488, line: 74, column: 6)
!7554 = !DILocation(line: 74, column: 6, scope: !7553)
!7555 = !DILocation(line: 74, column: 6, scope: !7546)
!7556 = !DILocation(line: 76, column: 6, scope: !7557)
!7557 = distinct !DILexicalBlock(scope: !7553, file: !7488, line: 74, column: 32)
!7558 = !DILocation(line: 77, column: 13, scope: !7557)
!7559 = !DILocation(line: 77, column: 12, scope: !7557)
!7560 = !DILocation(line: 75, column: 3, scope: !7557)
!7561 = !{i64 2148022980, i64 2148023019, i64 2148023040, i64 2148023077, i64 2148023100, i64 2148022970}
!7562 = !DILocation(line: 78, column: 2, scope: !7557)
!7563 = !DILocation(line: 80, column: 8, scope: !7564)
!7564 = distinct !DILexicalBlock(scope: !7553, file: !7488, line: 78, column: 9)
!7565 = !DILocation(line: 80, column: 32, scope: !7564)
!7566 = !DILocation(line: 79, column: 3, scope: !7564)
!7567 = !{i64 2148023265, i64 2148023304, i64 2148023325, i64 2148023362, i64 2148023385, i64 2148023255}
!7568 = !DILocation(line: 82, column: 1, scope: !7546)
!7569 = !DISubprogram(name: "___ratelimit", scope: !1043, file: !1043, line: 44, type: !7570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7570 = !DISubroutineType(types: !7571)
!7571 = !{!38, !7572, !32}
!7572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!7573 = !DISubprogram(name: "_printk", scope: !7574, file: !7574, line: 153, type: !7575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7574 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7575 = !DISubroutineType(types: !7576)
!7576 = !{!38, !32, null}
