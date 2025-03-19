; ModuleID = 'drivers/net/phy/realtek.c'
source_filename = "drivers/net/phy/realtek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_realtek__342_1096_phy_module_init\22, \22a\22\09\09"
module asm "__initcall__kmod_realtek__342_1096_phy_module_init6:\09\09\09"
module asm ".long\09__initstub__kmod_realtek__342_1096_phy_module_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.36 }
%union.anon.36 = type { i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, ptr, i32, %struct.phy_c45_device_ids, i24, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], [2 x i64], i8, [1 x i64], i32, %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rtl821x_priv = type { i16, i16, i8, ptr }

@__UNIQUE_ID_description338 = internal constant [39 x i8] c"realtek.description=Realtek PHY driver\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author339 = internal constant [29 x i8] c"realtek.author=Johnson Leung\00", section ".modinfo", align 1, !dbg !4959
@__UNIQUE_ID_file340 = internal constant [37 x i8] c"realtek.file=drivers/net/phy/realtek\00", section ".modinfo", align 1, !dbg !4964
@__UNIQUE_ID_license341 = internal constant [20 x i8] c"realtek.license=GPL\00", section ".modinfo", align 1, !dbg !4969
@__UNIQUE_ID___addressable___initstub__kmod_realtek__342_1096_phy_module_init6343 = internal global ptr @__initstub__kmod_realtek__342_1096_phy_module_init6, section ".discard.addressable", align 8, !dbg !4972
@realtek_drvs = internal global [21 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 33281, ptr @.str, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886230, ptr @.str.1, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8201_config_intr, ptr @rtl8201_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886336, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886480, ptr @.str.3, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8211_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886482, ptr @.str.4, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8211b_suspend, ptr @rtl8211b_resume, ptr null, ptr null, ptr null, ptr @rtl8211b_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886483, ptr @.str.5, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211c_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886484, ptr @.str.6, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8211e_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886485, ptr @.str.7, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211e_config_init, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8211e_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886486, ptr @.str.8, i32 -1, ptr null, i32 8, ptr null, ptr null, ptr @rtl8211f_config_init, ptr @rtl821x_probe, ptr null, ptr null, ptr @rtl821x_suspend, ptr @rtl821x_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr @rtl8211f_config_intr, ptr @rtl8211f_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886328, ptr @.str.9, i32 -1, ptr null, i32 8, ptr null, ptr null, ptr @rtl8211f_config_init, ptr @rtl821x_probe, ptr null, ptr null, ptr @rtl821x_suspend, ptr @rtl821x_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr @rtl8211f_config_intr, ptr @rtl8211f_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.10, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr null, ptr null, ptr null, ptr @rtlgen_match_phy_device, ptr null, ptr null, ptr null, ptr @rtlgen_read_mmd, ptr @rtlgen_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.11, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr @rtl8226_match_phy_device, ptr null, ptr null, ptr null, ptr @rtl822x_read_mmd, ptr @rtl822x_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886272, ptr @.str.12, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_read_mmd, ptr @rtl822x_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886264, ptr @.str.13, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886280, ptr @.str.14, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886281, ptr @.str.15, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886282, ptr @.str.16, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886561, ptr @.str.17, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8366rb_config_init, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @genphy_no_config_intr, ptr @genphy_handle_interrupt_no_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886976, ptr @.str.18, i32 -1, ptr @phy_basic_t1_features, i32 0, ptr null, ptr null, ptr @rtl9000a_config_init, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @rtl9000a_config_aneg, ptr null, ptr @rtl9000a_read_status, ptr @rtl9000a_config_intr, ptr @rtl9000a_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886530, ptr @.str.19, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @genphy_no_config_intr, ptr @genphy_handle_interrupt_no_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886560, ptr @.str.20, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 16, !dbg !5046
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 8, !dbg !4974
@.str = private unnamed_addr constant [19 x i8] c"RTL8201CP Ethernet\00", align 1, !dbg !4978
@.str.1 = private unnamed_addr constant [23 x i8] c"RTL8201F Fast Ethernet\00", align 1, !dbg !4983
@.str.2 = private unnamed_addr constant [22 x i8] c"RTL8208 Fast Ethernet\00", align 1, !dbg !4988
@.str.3 = private unnamed_addr constant [25 x i8] c"RTL8211 Gigabit Ethernet\00", align 1, !dbg !4993
@.str.4 = private unnamed_addr constant [26 x i8] c"RTL8211B Gigabit Ethernet\00", align 1, !dbg !4998
@.str.5 = private unnamed_addr constant [26 x i8] c"RTL8211C Gigabit Ethernet\00", align 1, !dbg !5003
@.str.6 = private unnamed_addr constant [27 x i8] c"RTL8211DN Gigabit Ethernet\00", align 1, !dbg !5005
@.str.7 = private unnamed_addr constant [26 x i8] c"RTL8211E Gigabit Ethernet\00", align 1, !dbg !5010
@.str.8 = private unnamed_addr constant [26 x i8] c"RTL8211F Gigabit Ethernet\00", align 1, !dbg !5012
@.str.9 = private unnamed_addr constant [29 x i8] c"RTL8211F-VD Gigabit Ethernet\00", align 1, !dbg !5014
@.str.10 = private unnamed_addr constant [26 x i8] c"Generic FE-GE Realtek PHY\00", align 1, !dbg !5017
@.str.11 = private unnamed_addr constant [20 x i8] c"RTL8226 2.5Gbps PHY\00", align 1, !dbg !5019
@.str.12 = private unnamed_addr constant [30 x i8] c"RTL8226B_RTL8221B 2.5Gbps PHY\00", align 1, !dbg !5022
@.str.13 = private unnamed_addr constant [23 x i8] c"RTL8226-CG 2.5Gbps PHY\00", align 1, !dbg !5027
@.str.14 = private unnamed_addr constant [36 x i8] c"RTL8226B-CG_RTL8221B-CG 2.5Gbps PHY\00", align 1, !dbg !5029
@.str.15 = private unnamed_addr constant [27 x i8] c"RTL8221B-VB-CG 2.5Gbps PHY\00", align 1, !dbg !5034
@.str.16 = private unnamed_addr constant [27 x i8] c"RTL8221B-VM-CG 2.5Gbps PHY\00", align 1, !dbg !5036
@.str.17 = private unnamed_addr constant [27 x i8] c"RTL8366RB Gigabit Ethernet\00", align 1, !dbg !5038
@.str.18 = private unnamed_addr constant [29 x i8] c"RTL9000AA_RTL9000AN Ethernet\00", align 1, !dbg !5040
@phy_basic_t1_features = external dso_local global [2 x i64], section ".data..ro_after_init", align 16
@.str.19 = private unnamed_addr constant [30 x i8] c"RTL8365MB-VC Gigabit Ethernet\00", align 1, !dbg !5042
@.str.20 = private unnamed_addr constant [26 x i8] c"RTL8366S Gigabit Ethernet\00", align 1, !dbg !5044
@.str.21 = private unnamed_addr constant [39 x i8] c"aldps mode  configuration failed: %pe\0A\00", align 1, !dbg !5756
@.str.22 = private unnamed_addr constant [40 x i8] c"Failed to update the TX delay register\0A\00", align 1, !dbg !5761
@.str.23 = private unnamed_addr constant [40 x i8] c"Failed to update the RX delay register\0A\00", align 1, !dbg !5766
@.str.24 = private unnamed_addr constant [34 x i8] c"clkout configuration failed: %pe\0A\00", align 1, !dbg !5768
@.str.25 = private unnamed_addr constant [25 x i8] c"failed to get phy clock\0A\00", align 1, !dbg !5773
@.str.26 = private unnamed_addr constant [21 x i8] c"realtek,aldps-enable\00", align 1, !dbg !5775
@.str.27 = private unnamed_addr constant [23 x i8] c"realtek,clkout-disable\00", align 1, !dbg !5778
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5780
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.28 = private unnamed_addr constant [33 x i8] c"error enabling power management\0A\00", align 1, !dbg !5784
@.str.29 = private unnamed_addr constant [31 x i8] c"Unsupported Master/Slave mode\0A\00", align 1, !dbg !5789
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__UNIQUE_ID___addressable___initstub__kmod_realtek__342_1096_phy_module_init6343, ptr @phy_module_exit, ptr @__exitcall_phy_module_exit, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_realtek__342_1096_phy_module_init6() #0 section ".init.text" align 16 !dbg !5804 {
entry:
  %call = call i32 @phy_module_init() #12, !dbg !5805
  ret i32 %call, !dbg !5805
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @phy_module_init() #0 section ".init.text" align 16 !dbg !5806 {
entry:
  %call = call i32 @phy_drivers_register(ptr noundef @realtek_drvs, i32 noundef 21, ptr noundef null) #13, !dbg !5807
  ret i32 %call, !dbg !5807
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @phy_module_exit() #0 section ".exit.text" align 16 !dbg !5808 {
entry:
  call void @phy_drivers_unregister(ptr noundef @realtek_drvs, i32 noundef 21) #13, !dbg !5809
  ret void, !dbg !5809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5813 dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_read_page(ptr noundef %phydev) #2 align 16 !dbg !5816 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5818, metadata !DIExpression()), !dbg !5819
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5820
  %call = call i32 @__phy_read(ptr noundef %0, i32 noundef 31) #13, !dbg !5821
  ret i32 %call, !dbg !5822
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_write_page(ptr noundef %phydev, i32 noundef %page) #2 align 16 !dbg !5823 {
entry:
  %phydev.addr = alloca ptr, align 8
  %page.addr = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5825, metadata !DIExpression()), !dbg !5827
  store i32 %page, ptr %page.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !5826, metadata !DIExpression()), !dbg !5828
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5829
  %1 = load i32, ptr %page.addr, align 4, !dbg !5830
  %conv = trunc i32 %1 to i16, !dbg !5830
  %call = call i32 @__phy_write(ptr noundef %0, i32 noundef 31, i16 noundef zeroext %conv) #13, !dbg !5831
  ret i32 %call, !dbg !5832
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5833 dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5834 dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8201_config_intr(ptr noundef %phydev) #2 align 16 !dbg !5835 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %val = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5837, metadata !DIExpression()), !dbg !5840
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #14, !dbg !5841
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5838, metadata !DIExpression()), !dbg !5842
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5839, metadata !DIExpression()), !dbg !5844
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5845
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !5847
  %bf.load = load i32, ptr %interrupts, align 4, !dbg !5847
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !5847
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5847
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !5848
  br i1 %cmp, label %if.then, label %if.else, !dbg !5849

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5850
  %call = call i32 @rtl8201_ack_interrupt(ptr noundef %1) #13, !dbg !5852
  store i32 %call, ptr %err, align 4, !dbg !5853
  %2 = load i32, ptr %err, align 4, !dbg !5854
  %tobool = icmp ne i32 %2, 0, !dbg !5854
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5856

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %err, align 4, !dbg !5857
  store i32 %3, ptr %retval, align 4, !dbg !5858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5858

if.end:                                           ; preds = %if.then
  store i16 14336, ptr %val, align 2, !dbg !5859
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5860
  %5 = load i16, ptr %val, align 2, !dbg !5861
  %call2 = call i32 @phy_write_paged(ptr noundef %4, i32 noundef 7, i32 noundef 19, i16 noundef zeroext %5) #13, !dbg !5862
  store i32 %call2, ptr %err, align 4, !dbg !5863
  br label %if.end8, !dbg !5864

if.else:                                          ; preds = %entry
  store i16 0, ptr %val, align 2, !dbg !5865
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !5867
  %7 = load i16, ptr %val, align 2, !dbg !5868
  %call3 = call i32 @phy_write_paged(ptr noundef %6, i32 noundef 7, i32 noundef 19, i16 noundef zeroext %7) #13, !dbg !5869
  store i32 %call3, ptr %err, align 4, !dbg !5870
  %8 = load i32, ptr %err, align 4, !dbg !5871
  %tobool4 = icmp ne i32 %8, 0, !dbg !5871
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5873

if.then5:                                         ; preds = %if.else
  %9 = load i32, ptr %err, align 4, !dbg !5874
  store i32 %9, ptr %retval, align 4, !dbg !5875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5875

if.end6:                                          ; preds = %if.else
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !5876
  %call7 = call i32 @rtl8201_ack_interrupt(ptr noundef %10) #13, !dbg !5877
  store i32 %call7, ptr %err, align 4, !dbg !5878
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %11 = load i32, ptr %err, align 4, !dbg !5879
  store i32 %11, ptr %retval, align 4, !dbg !5880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5880

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5881
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #14, !dbg !5881
  %12 = load i32, ptr %retval, align 4, !dbg !5881
  ret i32 %12, !dbg !5881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8201_handle_interrupt(ptr noundef %phydev) #2 align 16 !dbg !5882 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %irq_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5884, metadata !DIExpression()), !dbg !5886
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_status) #14, !dbg !5887
  call void @llvm.dbg.declare(metadata ptr %irq_status, metadata !5885, metadata !DIExpression()), !dbg !5888
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5889
  %call = call i32 @phy_read(ptr noundef %0, i32 noundef 30) #13, !dbg !5890
  store i32 %call, ptr %irq_status, align 4, !dbg !5891
  %1 = load i32, ptr %irq_status, align 4, !dbg !5892
  %cmp = icmp slt i32 %1, 0, !dbg !5894
  br i1 %cmp, label %if.then, label %if.end, !dbg !5895

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5896
  call void @phy_error(ptr noundef %2) #13, !dbg !5898
  store i32 0, ptr %retval, align 4, !dbg !5899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5899

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %irq_status, align 4, !dbg !5900
  %conv = sext i32 %3 to i64, !dbg !5900
  %and = and i64 %conv, 43008, !dbg !5902
  %tobool = icmp ne i64 %and, 0, !dbg !5902
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5903

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5904

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5905
  call void @phy_trigger_machine(ptr noundef %4) #13, !dbg !5906
  store i32 1, ptr %retval, align 4, !dbg !5907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5907

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_status) #14, !dbg !5908
  %5 = load i32, ptr %retval, align 4, !dbg !5908
  ret i32 %5, !dbg !5908
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @genphy_read_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @genphy_write_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211_config_aneg(ptr noundef %phydev) #2 align 16 !dbg !5909 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5911, metadata !DIExpression()), !dbg !5913
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5912, metadata !DIExpression()), !dbg !5915
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5916
  %call = call i32 @genphy_config_aneg(ptr noundef %0) #13, !dbg !5917
  store i32 %call, ptr %ret, align 4, !dbg !5918
  %1 = load i32, ptr %ret, align 4, !dbg !5919
  %cmp = icmp slt i32 %1, 0, !dbg !5921
  br i1 %cmp, label %if.then, label %if.end, !dbg !5922

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !5923
  store i32 %2, ptr %retval, align 4, !dbg !5924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5924

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5925
  %speed = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 10, !dbg !5927
  %4 = load i32, ptr %speed, align 8, !dbg !5927
  %cmp1 = icmp eq i32 %4, 100, !dbg !5928
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !5929

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5930
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 5, !dbg !5931
  %bf.load = load i32, ptr %autoneg, align 4, !dbg !5931
  %bf.lshr = lshr i32 %bf.load, 13, !dbg !5931
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5931
  %cmp2 = icmp eq i32 %bf.clear, 0, !dbg !5932
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !5933

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !5934
  %call4 = call i32 @phy_write(ptr noundef %6, i32 noundef 23, i16 noundef zeroext 8504) #13, !dbg !5936
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !5937
  %call5 = call i32 @phy_write(ptr noundef %7, i32 noundef 14, i16 noundef zeroext 608) #13, !dbg !5938
  br label %if.end8, !dbg !5939

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !5940
  %call6 = call i32 @phy_write(ptr noundef %8, i32 noundef 23, i16 noundef zeroext 8456) #13, !dbg !5942
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !5943
  %call7 = call i32 @phy_write(ptr noundef %9, i32 noundef 14, i16 noundef zeroext 0) #13, !dbg !5944
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  store i32 0, ptr %retval, align 4, !dbg !5945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5945

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5946
  %10 = load i32, ptr %retval, align 4, !dbg !5946
  ret i32 %10, !dbg !5946
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211b_suspend(ptr noundef %phydev) #2 align 16 !dbg !5947 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5949, metadata !DIExpression()), !dbg !5950
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5951
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 14, i16 noundef zeroext 512) #13, !dbg !5952
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5953
  %call1 = call i32 @genphy_suspend(ptr noundef %1) #13, !dbg !5954
  ret i32 %call1, !dbg !5955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211b_resume(ptr noundef %phydev) #2 align 16 !dbg !5956 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5958, metadata !DIExpression()), !dbg !5959
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5960
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 14, i16 noundef zeroext 0) #13, !dbg !5961
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5962
  %call1 = call i32 @genphy_resume(ptr noundef %1) #13, !dbg !5963
  ret i32 %call1, !dbg !5964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211b_config_intr(ptr noundef %phydev) #2 align 16 !dbg !5965 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5967, metadata !DIExpression()), !dbg !5969
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5968, metadata !DIExpression()), !dbg !5971
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5972
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !5974
  %bf.load = load i32, ptr %interrupts, align 4, !dbg !5974
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !5974
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5974
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !5975
  br i1 %cmp, label %if.then, label %if.else, !dbg !5976

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5977
  %call = call i32 @rtl821x_ack_interrupt(ptr noundef %1) #13, !dbg !5979
  store i32 %call, ptr %err, align 4, !dbg !5980
  %2 = load i32, ptr %err, align 4, !dbg !5981
  %tobool = icmp ne i32 %2, 0, !dbg !5981
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5983

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %err, align 4, !dbg !5984
  store i32 %3, ptr %retval, align 4, !dbg !5985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5985

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5986
  %call2 = call i32 @phy_write(ptr noundef %4, i32 noundef 18, i16 noundef zeroext 25600) #13, !dbg !5987
  store i32 %call2, ptr %err, align 4, !dbg !5988
  br label %if.end8, !dbg !5989

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5990
  %call3 = call i32 @phy_write(ptr noundef %5, i32 noundef 18, i16 noundef zeroext 0) #13, !dbg !5992
  store i32 %call3, ptr %err, align 4, !dbg !5993
  %6 = load i32, ptr %err, align 4, !dbg !5994
  %tobool4 = icmp ne i32 %6, 0, !dbg !5994
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5996

if.then5:                                         ; preds = %if.else
  %7 = load i32, ptr %err, align 4, !dbg !5997
  store i32 %7, ptr %retval, align 4, !dbg !5998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5998

if.end6:                                          ; preds = %if.else
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !5999
  %call7 = call i32 @rtl821x_ack_interrupt(ptr noundef %8) #13, !dbg !6000
  store i32 %call7, ptr %err, align 4, !dbg !6001
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %9 = load i32, ptr %err, align 4, !dbg !6002
  store i32 %9, ptr %retval, align 4, !dbg !6003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6003

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6004
  %10 = load i32, ptr %retval, align 4, !dbg !6004
  ret i32 %10, !dbg !6004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_handle_interrupt(ptr noundef %phydev) #2 align 16 !dbg !6005 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %irq_status = alloca i32, align 4
  %irq_enabled = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6007, metadata !DIExpression()), !dbg !6010
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_status) #14, !dbg !6011
  call void @llvm.dbg.declare(metadata ptr %irq_status, metadata !6008, metadata !DIExpression()), !dbg !6012
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_enabled) #14, !dbg !6011
  call void @llvm.dbg.declare(metadata ptr %irq_enabled, metadata !6009, metadata !DIExpression()), !dbg !6013
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6014
  %call = call i32 @phy_read(ptr noundef %0, i32 noundef 19) #13, !dbg !6015
  store i32 %call, ptr %irq_status, align 4, !dbg !6016
  %1 = load i32, ptr %irq_status, align 4, !dbg !6017
  %cmp = icmp slt i32 %1, 0, !dbg !6019
  br i1 %cmp, label %if.then, label %if.end, !dbg !6020

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6021
  call void @phy_error(ptr noundef %2) #13, !dbg !6023
  store i32 0, ptr %retval, align 4, !dbg !6024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6024

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6025
  %call1 = call i32 @phy_read(ptr noundef %3, i32 noundef 18) #13, !dbg !6026
  store i32 %call1, ptr %irq_enabled, align 4, !dbg !6027
  %4 = load i32, ptr %irq_enabled, align 4, !dbg !6028
  %cmp2 = icmp slt i32 %4, 0, !dbg !6030
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6031

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6032
  call void @phy_error(ptr noundef %5) #13, !dbg !6034
  store i32 0, ptr %retval, align 4, !dbg !6035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6035

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %irq_status, align 4, !dbg !6036
  %7 = load i32, ptr %irq_enabled, align 4, !dbg !6038
  %and = and i32 %6, %7, !dbg !6039
  %tobool = icmp ne i32 %and, 0, !dbg !6039
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6040

if.then5:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !6041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6041

if.end6:                                          ; preds = %if.end4
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6042
  call void @phy_trigger_machine(ptr noundef %8) #13, !dbg !6043
  store i32 1, ptr %retval, align 4, !dbg !6044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6044

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_enabled) #14, !dbg !6045
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_status) #14, !dbg !6045
  %9 = load i32, ptr %retval, align 4, !dbg !6045
  ret i32 %9, !dbg !6045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211c_config_init(ptr noundef %phydev) #2 align 16 !dbg !6046 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6050
  %call = call i32 @phy_set_bits(ptr noundef %0, i32 noundef 9, i16 noundef zeroext 6144) #13, !dbg !6051
  ret i32 %call, !dbg !6052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211e_config_intr(ptr noundef %phydev) #2 align 16 !dbg !6053 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6055, metadata !DIExpression()), !dbg !6057
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6056, metadata !DIExpression()), !dbg !6059
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6060
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !6062
  %bf.load = load i32, ptr %interrupts, align 4, !dbg !6062
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !6062
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6062
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !6063
  br i1 %cmp, label %if.then, label %if.else, !dbg !6064

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6065
  %call = call i32 @rtl821x_ack_interrupt(ptr noundef %1) #13, !dbg !6067
  store i32 %call, ptr %err, align 4, !dbg !6068
  %2 = load i32, ptr %err, align 4, !dbg !6069
  %tobool = icmp ne i32 %2, 0, !dbg !6069
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6071

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %err, align 4, !dbg !6072
  store i32 %3, ptr %retval, align 4, !dbg !6073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6073

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6074
  %call2 = call i32 @phy_write(ptr noundef %4, i32 noundef 18, i16 noundef zeroext 1024) #13, !dbg !6075
  store i32 %call2, ptr %err, align 4, !dbg !6076
  br label %if.end8, !dbg !6077

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6078
  %call3 = call i32 @phy_write(ptr noundef %5, i32 noundef 18, i16 noundef zeroext 0) #13, !dbg !6080
  store i32 %call3, ptr %err, align 4, !dbg !6081
  %6 = load i32, ptr %err, align 4, !dbg !6082
  %tobool4 = icmp ne i32 %6, 0, !dbg !6082
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6084

if.then5:                                         ; preds = %if.else
  %7 = load i32, ptr %err, align 4, !dbg !6085
  store i32 %7, ptr %retval, align 4, !dbg !6086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6086

if.end6:                                          ; preds = %if.else
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6087
  %call7 = call i32 @rtl821x_ack_interrupt(ptr noundef %8) #13, !dbg !6088
  store i32 %call7, ptr %err, align 4, !dbg !6089
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %9 = load i32, ptr %err, align 4, !dbg !6090
  store i32 %9, ptr %retval, align 4, !dbg !6091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6091

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6092
  %10 = load i32, ptr %retval, align 4, !dbg !6092
  ret i32 %10, !dbg !6092
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211e_config_init(ptr noundef %phydev) #2 align 16 !dbg !6093 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %oldpage = alloca i32, align 4
  %val = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6095, metadata !DIExpression()), !dbg !6100
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6096, metadata !DIExpression()), !dbg !6102
  store i32 0, ptr %ret, align 4, !dbg !6102
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldpage) #14, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %oldpage, metadata !6097, metadata !DIExpression()), !dbg !6103
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #14, !dbg !6104
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6098, metadata !DIExpression()), !dbg !6105
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6106
  %interface = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9, !dbg !6107
  %1 = load i32, ptr %interface, align 4, !dbg !6107
  switch i32 %1, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb1
    i32 11, label %sw.bb2
    i32 12, label %sw.bb3
  ], !dbg !6108

sw.bb:                                            ; preds = %entry
  store i16 8192, ptr %val, align 2, !dbg !6109
  br label %sw.epilog, !dbg !6111

sw.bb1:                                           ; preds = %entry
  store i16 14336, ptr %val, align 2, !dbg !6112
  br label %sw.epilog, !dbg !6113

sw.bb2:                                           ; preds = %entry
  store i16 10240, ptr %val, align 2, !dbg !6114
  br label %sw.epilog, !dbg !6115

sw.bb3:                                           ; preds = %entry
  store i16 12288, ptr %val, align 2, !dbg !6116
  br label %sw.epilog, !dbg !6117

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6118

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6119
  %call = call i32 @phy_select_page(ptr noundef %2, i32 noundef 7) #13, !dbg !6120
  store i32 %call, ptr %oldpage, align 4, !dbg !6121
  %3 = load i32, ptr %oldpage, align 4, !dbg !6122
  %cmp = icmp slt i32 %3, 0, !dbg !6124
  br i1 %cmp, label %if.then, label %if.end, !dbg !6125

if.then:                                          ; preds = %sw.epilog
  br label %err_restore_page, !dbg !6126

if.end:                                           ; preds = %sw.epilog
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6127
  %call4 = call i32 @__phy_write(ptr noundef %4, i32 noundef 30, i16 noundef zeroext 164) #13, !dbg !6128
  store i32 %call4, ptr %ret, align 4, !dbg !6129
  %5 = load i32, ptr %ret, align 4, !dbg !6130
  %tobool = icmp ne i32 %5, 0, !dbg !6130
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !6132

if.then5:                                         ; preds = %if.end
  br label %err_restore_page, !dbg !6133

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6134
  %7 = load i16, ptr %val, align 2, !dbg !6135
  %call7 = call i32 @__phy_modify(ptr noundef %6, i32 noundef 28, i16 noundef zeroext 14336, i16 noundef zeroext %7) #13, !dbg !6136
  store i32 %call7, ptr %ret, align 4, !dbg !6137
  br label %err_restore_page, !dbg !6138

err_restore_page:                                 ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !6099), !dbg !6139
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6140
  %9 = load i32, ptr %oldpage, align 4, !dbg !6141
  %10 = load i32, ptr %ret, align 4, !dbg !6142
  %call8 = call i32 @phy_restore_page(ptr noundef %8, i32 noundef %9, i32 noundef %10) #13, !dbg !6143
  store i32 %call8, ptr %retval, align 4, !dbg !6144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6144

cleanup:                                          ; preds = %err_restore_page, %sw.default
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #14, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldpage) #14, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6145
  %11 = load i32, ptr %retval, align 4, !dbg !6145
  ret i32 %11, !dbg !6145
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211f_config_init(ptr noundef %phydev) #2 align 16 !dbg !6146 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %val_txdly = alloca i16, align 2
  %val_rxdly = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6148, metadata !DIExpression()), !dbg !6164
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #14, !dbg !6165
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !6149, metadata !DIExpression()), !dbg !6166
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6167
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 29, !dbg !6168
  %1 = load ptr, ptr %priv1, align 8, !dbg !6168
  store ptr %1, ptr %priv, align 8, !dbg !6166
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6169
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6160, metadata !DIExpression()), !dbg !6170
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6171
  %mdio = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !6172
  %dev2 = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 0, !dbg !6173
  store ptr %dev2, ptr %dev, align 8, !dbg !6170
  call void @llvm.lifetime.start.p0(i64 2, ptr %val_txdly) #14, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %val_txdly, metadata !6161, metadata !DIExpression()), !dbg !6175
  call void @llvm.lifetime.start.p0(i64 2, ptr %val_rxdly) #14, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %val_rxdly, metadata !6162, metadata !DIExpression()), !dbg !6176
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6177
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6163, metadata !DIExpression()), !dbg !6178
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6179
  %4 = load ptr, ptr %priv, align 8, !dbg !6180
  %phycr1 = getelementptr inbounds %struct.rtl821x_priv, ptr %4, i32 0, i32 0, !dbg !6181
  %5 = load i16, ptr %phycr1, align 8, !dbg !6181
  %call = call i32 @phy_modify_paged_changed(ptr noundef %3, i32 noundef 2627, i32 noundef 24, i16 noundef zeroext 4102, i16 noundef zeroext %5) #13, !dbg !6182
  store i32 %call, ptr %ret, align 4, !dbg !6183
  %6 = load i32, ptr %ret, align 4, !dbg !6184
  %cmp = icmp slt i32 %6, 0, !dbg !6186
  br i1 %cmp, label %if.then, label %if.end, !dbg !6187

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6188

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6191

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6191

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %dev, align 8, !dbg !6188
  %8 = load i32, ptr %ret, align 4, !dbg !6188
  %conv = sext i32 %8 to i64, !dbg !6188
  %call3 = call ptr @ERR_PTR(i64 noundef %conv) #13, !dbg !6188
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef @.str.21, ptr noundef %call3) #12, !dbg !6188
  %9 = load i32, ptr %ret, align 4, !dbg !6193
  store i32 %9, ptr %retval, align 4, !dbg !6194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6194

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6195
  %interface = getelementptr inbounds %struct.phy_device, ptr %10, i32 0, i32 9, !dbg !6196
  %11 = load i32, ptr %interface, align 4, !dbg !6196
  switch i32 %11, label %sw.default [
    i32 9, label %sw.bb
    i32 11, label %sw.bb4
    i32 12, label %sw.bb5
    i32 10, label %sw.bb6
  ], !dbg !6197

sw.bb:                                            ; preds = %if.end
  store i16 0, ptr %val_txdly, align 2, !dbg !6198
  store i16 0, ptr %val_rxdly, align 2, !dbg !6200
  br label %sw.epilog, !dbg !6201

sw.bb4:                                           ; preds = %if.end
  store i16 0, ptr %val_txdly, align 2, !dbg !6202
  store i16 8, ptr %val_rxdly, align 2, !dbg !6203
  br label %sw.epilog, !dbg !6204

sw.bb5:                                           ; preds = %if.end
  store i16 256, ptr %val_txdly, align 2, !dbg !6205
  store i16 0, ptr %val_rxdly, align 2, !dbg !6206
  br label %sw.epilog, !dbg !6207

sw.bb6:                                           ; preds = %if.end
  store i16 256, ptr %val_txdly, align 2, !dbg !6208
  store i16 8, ptr %val_rxdly, align 2, !dbg !6209
  br label %sw.epilog, !dbg !6210

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6211

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6212
  %13 = load i16, ptr %val_txdly, align 2, !dbg !6213
  %call7 = call i32 @phy_modify_paged_changed(ptr noundef %12, i32 noundef 3336, i32 noundef 17, i16 noundef zeroext 256, i16 noundef zeroext %13) #13, !dbg !6214
  store i32 %call7, ptr %ret, align 4, !dbg !6215
  %14 = load i32, ptr %ret, align 4, !dbg !6216
  %cmp8 = icmp slt i32 %14, 0, !dbg !6218
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !6219

if.then10:                                        ; preds = %sw.epilog
  br label %do.body11, !dbg !6220

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !6223

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6223

do.end13:                                         ; preds = %do.cond12
  %15 = load ptr, ptr %dev, align 8, !dbg !6220
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef @.str.22) #12, !dbg !6220
  %16 = load i32, ptr %ret, align 4, !dbg !6225
  store i32 %16, ptr %retval, align 4, !dbg !6226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6226

if.else:                                          ; preds = %sw.epilog
  %17 = load i32, ptr %ret, align 4, !dbg !6227
  %tobool = icmp ne i32 %17, 0, !dbg !6227
  br i1 %tobool, label %if.then14, label %if.else15, !dbg !6229

if.then14:                                        ; preds = %if.else
  br label %if.end16, !dbg !6230

if.else15:                                        ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6232
  %19 = load i16, ptr %val_rxdly, align 2, !dbg !6233
  %call18 = call i32 @phy_modify_paged_changed(ptr noundef %18, i32 noundef 3336, i32 noundef 21, i16 noundef zeroext 8, i16 noundef zeroext %19) #13, !dbg !6234
  store i32 %call18, ptr %ret, align 4, !dbg !6235
  %20 = load i32, ptr %ret, align 4, !dbg !6236
  %cmp19 = icmp slt i32 %20, 0, !dbg !6238
  br i1 %cmp19, label %if.then21, label %if.else25, !dbg !6239

if.then21:                                        ; preds = %if.end17
  br label %do.body22, !dbg !6240

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !6243

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !6243

do.end24:                                         ; preds = %do.cond23
  %21 = load ptr, ptr %dev, align 8, !dbg !6240
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef @.str.23) #12, !dbg !6240
  %22 = load i32, ptr %ret, align 4, !dbg !6245
  store i32 %22, ptr %retval, align 4, !dbg !6246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6246

if.else25:                                        ; preds = %if.end17
  %23 = load i32, ptr %ret, align 4, !dbg !6247
  %tobool26 = icmp ne i32 %23, 0, !dbg !6247
  br i1 %tobool26, label %if.then27, label %if.else28, !dbg !6249

if.then27:                                        ; preds = %if.else25
  br label %if.end29, !dbg !6250

if.else28:                                        ; preds = %if.else25
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  %24 = load ptr, ptr %priv, align 8, !dbg !6252
  %has_phycr2 = getelementptr inbounds %struct.rtl821x_priv, ptr %24, i32 0, i32 2, !dbg !6254
  %25 = load i8, ptr %has_phycr2, align 4, !dbg !6254, !range !6255, !noundef !542
  %tobool31 = trunc i8 %25 to i1, !dbg !6254
  br i1 %tobool31, label %if.then32, label %if.end44, !dbg !6256

if.then32:                                        ; preds = %if.end30
  %26 = load ptr, ptr %phydev.addr, align 8, !dbg !6257
  %27 = load ptr, ptr %priv, align 8, !dbg !6259
  %phycr2 = getelementptr inbounds %struct.rtl821x_priv, ptr %27, i32 0, i32 1, !dbg !6260
  %28 = load i16, ptr %phycr2, align 2, !dbg !6260
  %call33 = call i32 @phy_modify_paged(ptr noundef %26, i32 noundef 2627, i32 noundef 25, i16 noundef zeroext 1, i16 noundef zeroext %28) #13, !dbg !6261
  store i32 %call33, ptr %ret, align 4, !dbg !6262
  %29 = load i32, ptr %ret, align 4, !dbg !6263
  %cmp34 = icmp slt i32 %29, 0, !dbg !6265
  br i1 %cmp34, label %if.then36, label %if.end42, !dbg !6266

if.then36:                                        ; preds = %if.then32
  br label %do.body37, !dbg !6267

do.body37:                                        ; preds = %if.then36
  br label %do.cond38, !dbg !6270

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6270

do.end39:                                         ; preds = %do.cond38
  %30 = load ptr, ptr %dev, align 8, !dbg !6267
  %31 = load i32, ptr %ret, align 4, !dbg !6267
  %conv40 = sext i32 %31 to i64, !dbg !6267
  %call41 = call ptr @ERR_PTR(i64 noundef %conv40) #13, !dbg !6267
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef @.str.24, ptr noundef %call41) #12, !dbg !6267
  %32 = load i32, ptr %ret, align 4, !dbg !6272
  store i32 %32, ptr %retval, align 4, !dbg !6273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6273

if.end42:                                         ; preds = %if.then32
  %33 = load ptr, ptr %phydev.addr, align 8, !dbg !6274
  %call43 = call i32 @genphy_soft_reset(ptr noundef %33) #13, !dbg !6275
  store i32 %call43, ptr %retval, align 4, !dbg !6276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6276

if.end44:                                         ; preds = %if.end30
  store i32 0, ptr %retval, align 4, !dbg !6277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6277

cleanup:                                          ; preds = %if.end44, %if.end42, %do.end39, %do.end24, %do.end13, %sw.default, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 2, ptr %val_rxdly) #14, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 2, ptr %val_txdly) #14, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6278
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #14, !dbg !6278
  %34 = load i32, ptr %retval, align 4, !dbg !6278
  ret i32 %34, !dbg !6278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_probe(ptr noundef %phydev) #2 align 16 !dbg !6279 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %phy_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6281, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6282, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6289
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !6290
  %dev1 = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 0, !dbg !6291
  store ptr %dev1, ptr %dev, align 8, !dbg !6288
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #14, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !6283, metadata !DIExpression()), !dbg !6293
  call void @llvm.lifetime.start.p0(i64 4, ptr %phy_id) #14, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %phy_id, metadata !6284, metadata !DIExpression()), !dbg !6295
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6296
  %drv = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1, !dbg !6297
  %2 = load ptr, ptr %drv, align 8, !dbg !6297
  %phy_id2 = getelementptr inbounds %struct.phy_driver, ptr %2, i32 0, i32 1, !dbg !6298
  %3 = load i32, ptr %phy_id2, align 8, !dbg !6298
  store i32 %3, ptr %phy_id, align 4, !dbg !6295
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6299
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6285, metadata !DIExpression()), !dbg !6300
  %4 = load ptr, ptr %dev, align 8, !dbg !6301
  %call = call ptr @devm_kzalloc(ptr noundef %4, i64 noundef 16, i32 noundef 3264) #13, !dbg !6302
  store ptr %call, ptr %priv, align 8, !dbg !6303
  %5 = load ptr, ptr %priv, align 8, !dbg !6304
  %tobool = icmp ne ptr %5, null, !dbg !6304
  br i1 %tobool, label %if.end, label %if.then, !dbg !6306

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6307

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %dev, align 8, !dbg !6308
  %call3 = call ptr @devm_clk_get_optional_enabled(ptr noundef %6, ptr noundef null) #13, !dbg !6309
  %7 = load ptr, ptr %priv, align 8, !dbg !6310
  %clk = getelementptr inbounds %struct.rtl821x_priv, ptr %7, i32 0, i32 3, !dbg !6311
  store ptr %call3, ptr %clk, align 8, !dbg !6312
  %8 = load ptr, ptr %priv, align 8, !dbg !6313
  %clk4 = getelementptr inbounds %struct.rtl821x_priv, ptr %8, i32 0, i32 3, !dbg !6315
  %9 = load ptr, ptr %clk4, align 8, !dbg !6315
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %9) #13, !dbg !6316
  br i1 %call5, label %if.then6, label %if.end10, !dbg !6317

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %dev, align 8, !dbg !6318
  %11 = load ptr, ptr %priv, align 8, !dbg !6319
  %clk7 = getelementptr inbounds %struct.rtl821x_priv, ptr %11, i32 0, i32 3, !dbg !6320
  %12 = load ptr, ptr %clk7, align 8, !dbg !6320
  %call8 = call i64 @PTR_ERR(ptr noundef %12) #13, !dbg !6321
  %conv = trunc i64 %call8 to i32, !dbg !6321
  %call9 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %10, i32 noundef %conv, ptr noundef @.str.25) #13, !dbg !6322
  store i32 %call9, ptr %retval, align 4, !dbg !6323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6323

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6324
  %call11 = call i32 @phy_read_paged(ptr noundef %13, i32 noundef 2627, i32 noundef 24) #13, !dbg !6325
  store i32 %call11, ptr %ret, align 4, !dbg !6326
  %14 = load i32, ptr %ret, align 4, !dbg !6327
  %cmp = icmp slt i32 %14, 0, !dbg !6329
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !6330

if.then13:                                        ; preds = %if.end10
  %15 = load i32, ptr %ret, align 4, !dbg !6331
  store i32 %15, ptr %retval, align 4, !dbg !6332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6332

if.end14:                                         ; preds = %if.end10
  %16 = load i32, ptr %ret, align 4, !dbg !6333
  %conv15 = sext i32 %16 to i64, !dbg !6333
  %and = and i64 %conv15, 4102, !dbg !6334
  %conv16 = trunc i64 %and to i16, !dbg !6333
  %17 = load ptr, ptr %priv, align 8, !dbg !6335
  %phycr1 = getelementptr inbounds %struct.rtl821x_priv, ptr %17, i32 0, i32 0, !dbg !6336
  store i16 %conv16, ptr %phycr1, align 8, !dbg !6337
  %18 = load ptr, ptr %dev, align 8, !dbg !6338
  %of_node = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 23, !dbg !6340
  %19 = load ptr, ptr %of_node, align 8, !dbg !6340
  %call17 = call zeroext i1 @of_property_read_bool(ptr noundef %19, ptr noundef @.str.26) #13, !dbg !6341
  br i1 %call17, label %if.then18, label %if.end22, !dbg !6342

if.then18:                                        ; preds = %if.end14
  %20 = load ptr, ptr %priv, align 8, !dbg !6343
  %phycr119 = getelementptr inbounds %struct.rtl821x_priv, ptr %20, i32 0, i32 0, !dbg !6344
  %21 = load i16, ptr %phycr119, align 8, !dbg !6345
  %conv20 = zext i16 %21 to i64, !dbg !6345
  %or = or i64 %conv20, 4102, !dbg !6345
  %conv21 = trunc i64 %or to i16, !dbg !6345
  store i16 %conv21, ptr %phycr119, align 8, !dbg !6345
  br label %if.end22, !dbg !6343

if.end22:                                         ; preds = %if.then18, %if.end14
  %22 = load i32, ptr %phy_id, align 4, !dbg !6346
  %cmp23 = icmp eq i32 %22, 1886328, !dbg !6347
  %lnot = xor i1 %cmp23, true, !dbg !6348
  %23 = load ptr, ptr %priv, align 8, !dbg !6349
  %has_phycr2 = getelementptr inbounds %struct.rtl821x_priv, ptr %23, i32 0, i32 2, !dbg !6350
  %frombool = zext i1 %lnot to i8, !dbg !6351
  store i8 %frombool, ptr %has_phycr2, align 4, !dbg !6351
  %24 = load ptr, ptr %priv, align 8, !dbg !6352
  %has_phycr225 = getelementptr inbounds %struct.rtl821x_priv, ptr %24, i32 0, i32 2, !dbg !6354
  %25 = load i8, ptr %has_phycr225, align 4, !dbg !6354, !range !6255, !noundef !542
  %tobool26 = trunc i8 %25 to i1, !dbg !6354
  br i1 %tobool26, label %if.then27, label %if.end44, !dbg !6355

if.then27:                                        ; preds = %if.end22
  %26 = load ptr, ptr %phydev.addr, align 8, !dbg !6356
  %call28 = call i32 @phy_read_paged(ptr noundef %26, i32 noundef 2627, i32 noundef 25) #13, !dbg !6358
  store i32 %call28, ptr %ret, align 4, !dbg !6359
  %27 = load i32, ptr %ret, align 4, !dbg !6360
  %cmp29 = icmp slt i32 %27, 0, !dbg !6362
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6363

if.then31:                                        ; preds = %if.then27
  %28 = load i32, ptr %ret, align 4, !dbg !6364
  store i32 %28, ptr %retval, align 4, !dbg !6365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6365

if.end32:                                         ; preds = %if.then27
  %29 = load i32, ptr %ret, align 4, !dbg !6366
  %conv33 = sext i32 %29 to i64, !dbg !6366
  %and34 = and i64 %conv33, 1, !dbg !6367
  %conv35 = trunc i64 %and34 to i16, !dbg !6366
  %30 = load ptr, ptr %priv, align 8, !dbg !6368
  %phycr2 = getelementptr inbounds %struct.rtl821x_priv, ptr %30, i32 0, i32 1, !dbg !6369
  store i16 %conv35, ptr %phycr2, align 2, !dbg !6370
  %31 = load ptr, ptr %dev, align 8, !dbg !6371
  %of_node36 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 23, !dbg !6373
  %32 = load ptr, ptr %of_node36, align 8, !dbg !6373
  %call37 = call zeroext i1 @of_property_read_bool(ptr noundef %32, ptr noundef @.str.27) #13, !dbg !6374
  br i1 %call37, label %if.then38, label %if.end43, !dbg !6375

if.then38:                                        ; preds = %if.end32
  %33 = load ptr, ptr %priv, align 8, !dbg !6376
  %phycr239 = getelementptr inbounds %struct.rtl821x_priv, ptr %33, i32 0, i32 1, !dbg !6377
  %34 = load i16, ptr %phycr239, align 2, !dbg !6378
  %conv40 = zext i16 %34 to i64, !dbg !6378
  %and41 = and i64 %conv40, -2, !dbg !6378
  %conv42 = trunc i64 %and41 to i16, !dbg !6378
  store i16 %conv42, ptr %phycr239, align 2, !dbg !6378
  br label %if.end43, !dbg !6376

if.end43:                                         ; preds = %if.then38, %if.end32
  br label %if.end44, !dbg !6379

if.end44:                                         ; preds = %if.end43, %if.end22
  %35 = load ptr, ptr %priv, align 8, !dbg !6380
  %36 = load ptr, ptr %phydev.addr, align 8, !dbg !6381
  %priv45 = getelementptr inbounds %struct.phy_device, ptr %36, i32 0, i32 29, !dbg !6382
  store ptr %35, ptr %priv45, align 8, !dbg !6383
  store i32 0, ptr %retval, align 4, !dbg !6384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6384

cleanup:                                          ; preds = %if.end44, %if.then31, %if.then13, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 4, ptr %phy_id) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #14, !dbg !6385
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6385
  %37 = load i32, ptr %retval, align 4, !dbg !6385
  ret i32 %37, !dbg !6385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_suspend(ptr noundef %phydev) #2 align 16 !dbg !6386 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6388, metadata !DIExpression()), !dbg !6391
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #14, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !6389, metadata !DIExpression()), !dbg !6393
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6394
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 29, !dbg !6395
  %1 = load ptr, ptr %priv1, align 8, !dbg !6395
  store ptr %1, ptr %priv, align 8, !dbg !6393
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6396
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6390, metadata !DIExpression()), !dbg !6397
  store i32 0, ptr %ret, align 4, !dbg !6397
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6398
  %wol_enabled = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 5, !dbg !6400
  %bf.load = load i32, ptr %wol_enabled, align 4, !dbg !6400
  %bf.lshr = lshr i32 %bf.load, 12, !dbg !6400
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6400
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !6398
  br i1 %tobool, label %if.end4, label %if.then, !dbg !6401

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6402
  %call = call i32 @genphy_suspend(ptr noundef %3) #13, !dbg !6404
  store i32 %call, ptr %ret, align 4, !dbg !6405
  %4 = load i32, ptr %ret, align 4, !dbg !6406
  %tobool2 = icmp ne i32 %4, 0, !dbg !6406
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6408

if.then3:                                         ; preds = %if.then
  %5 = load i32, ptr %ret, align 4, !dbg !6409
  store i32 %5, ptr %retval, align 4, !dbg !6410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6410

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %priv, align 8, !dbg !6411
  %clk = getelementptr inbounds %struct.rtl821x_priv, ptr %6, i32 0, i32 3, !dbg !6412
  %7 = load ptr, ptr %clk, align 8, !dbg !6412
  call void @clk_disable_unprepare(ptr noundef %7) #13, !dbg !6413
  br label %if.end4, !dbg !6414

if.end4:                                          ; preds = %if.end, %entry
  %8 = load i32, ptr %ret, align 4, !dbg !6415
  store i32 %8, ptr %retval, align 4, !dbg !6416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6416

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6417
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #14, !dbg !6417
  %9 = load i32, ptr %retval, align 4, !dbg !6417
  ret i32 %9, !dbg !6417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_resume(ptr noundef %phydev) #2 align 16 !dbg !6418 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %priv = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6420, metadata !DIExpression()), !dbg !6423
  call void @llvm.lifetime.start.p0(i64 8, ptr %priv) #14, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %priv, metadata !6421, metadata !DIExpression()), !dbg !6425
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6426
  %priv1 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 29, !dbg !6427
  %1 = load ptr, ptr %priv1, align 8, !dbg !6427
  store ptr %1, ptr %priv, align 8, !dbg !6425
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6428
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6422, metadata !DIExpression()), !dbg !6429
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6430
  %wol_enabled = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 5, !dbg !6432
  %bf.load = load i32, ptr %wol_enabled, align 4, !dbg !6432
  %bf.lshr = lshr i32 %bf.load, 12, !dbg !6432
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6432
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !6430
  br i1 %tobool, label %if.end, label %if.then, !dbg !6433

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %priv, align 8, !dbg !6434
  %clk = getelementptr inbounds %struct.rtl821x_priv, ptr %3, i32 0, i32 3, !dbg !6435
  %4 = load ptr, ptr %clk, align 8, !dbg !6435
  %call = call i32 @clk_prepare_enable(ptr noundef %4) #13, !dbg !6436
  br label %if.end, !dbg !6436

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6437
  %call2 = call i32 @genphy_resume(ptr noundef %5) #13, !dbg !6438
  store i32 %call2, ptr %ret, align 4, !dbg !6439
  %6 = load i32, ptr %ret, align 4, !dbg !6440
  %cmp = icmp slt i32 %6, 0, !dbg !6442
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6443

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !6444
  store i32 %7, ptr %retval, align 4, !dbg !6445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6445

if.end4:                                          ; preds = %if.end
  call void @msleep(i32 noundef 20) #13, !dbg !6446
  store i32 0, ptr %retval, align 4, !dbg !6447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6447

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6448
  call void @llvm.lifetime.end.p0(i64 8, ptr %priv) #14, !dbg !6448
  %8 = load i32, ptr %retval, align 4, !dbg !6448
  ret i32 %8, !dbg !6448
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtlgen_read_status(ptr noundef %phydev) #2 align 16 !dbg !6449 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6451, metadata !DIExpression()), !dbg !6453
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6454
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6452, metadata !DIExpression()), !dbg !6455
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6456
  %call = call i32 @genphy_read_status(ptr noundef %0) #13, !dbg !6457
  store i32 %call, ptr %ret, align 4, !dbg !6458
  %1 = load i32, ptr %ret, align 4, !dbg !6459
  %cmp = icmp slt i32 %1, 0, !dbg !6461
  br i1 %cmp, label %if.then, label %if.end, !dbg !6462

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !6463
  store i32 %2, ptr %retval, align 4, !dbg !6464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6464

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6465
  %call1 = call i32 @rtlgen_get_speed(ptr noundef %3) #13, !dbg !6466
  store i32 %call1, ptr %retval, align 4, !dbg !6467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6467

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6468
  %4 = load i32, ptr %retval, align 4, !dbg !6468
  ret i32 %4, !dbg !6468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211f_config_intr(ptr noundef %phydev) #2 align 16 !dbg !6469 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %val = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6471, metadata !DIExpression()), !dbg !6474
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #14, !dbg !6475
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6472, metadata !DIExpression()), !dbg !6476
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6473, metadata !DIExpression()), !dbg !6478
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6479
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !6481
  %bf.load = load i32, ptr %interrupts, align 4, !dbg !6481
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !6481
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6481
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !6482
  br i1 %cmp, label %if.then, label %if.else, !dbg !6483

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6484
  %call = call i32 @rtl8211f_ack_interrupt(ptr noundef %1) #13, !dbg !6486
  store i32 %call, ptr %err, align 4, !dbg !6487
  %2 = load i32, ptr %err, align 4, !dbg !6488
  %tobool = icmp ne i32 %2, 0, !dbg !6488
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6490

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %err, align 4, !dbg !6491
  store i32 %3, ptr %retval, align 4, !dbg !6492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6492

if.end:                                           ; preds = %if.then
  store i16 16, ptr %val, align 2, !dbg !6493
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6494
  %5 = load i16, ptr %val, align 2, !dbg !6495
  %call2 = call i32 @phy_write_paged(ptr noundef %4, i32 noundef 2626, i32 noundef 18, i16 noundef zeroext %5) #13, !dbg !6496
  store i32 %call2, ptr %err, align 4, !dbg !6497
  br label %if.end8, !dbg !6498

if.else:                                          ; preds = %entry
  store i16 0, ptr %val, align 2, !dbg !6499
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6501
  %7 = load i16, ptr %val, align 2, !dbg !6502
  %call3 = call i32 @phy_write_paged(ptr noundef %6, i32 noundef 2626, i32 noundef 18, i16 noundef zeroext %7) #13, !dbg !6503
  store i32 %call3, ptr %err, align 4, !dbg !6504
  %8 = load i32, ptr %err, align 4, !dbg !6505
  %tobool4 = icmp ne i32 %8, 0, !dbg !6505
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6507

if.then5:                                         ; preds = %if.else
  %9 = load i32, ptr %err, align 4, !dbg !6508
  store i32 %9, ptr %retval, align 4, !dbg !6509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6509

if.end6:                                          ; preds = %if.else
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6510
  %call7 = call i32 @rtl8211f_ack_interrupt(ptr noundef %10) #13, !dbg !6511
  store i32 %call7, ptr %err, align 4, !dbg !6512
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %11 = load i32, ptr %err, align 4, !dbg !6513
  store i32 %11, ptr %retval, align 4, !dbg !6514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6514

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6515
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #14, !dbg !6515
  %12 = load i32, ptr %retval, align 4, !dbg !6515
  ret i32 %12, !dbg !6515
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211f_handle_interrupt(ptr noundef %phydev) #2 align 16 !dbg !6516 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %irq_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6518, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_status) #14, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %irq_status, metadata !6519, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6523
  %call = call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 29) #13, !dbg !6524
  store i32 %call, ptr %irq_status, align 4, !dbg !6525
  %1 = load i32, ptr %irq_status, align 4, !dbg !6526
  %cmp = icmp slt i32 %1, 0, !dbg !6528
  br i1 %cmp, label %if.then, label %if.end, !dbg !6529

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6530
  call void @phy_error(ptr noundef %2) #13, !dbg !6532
  store i32 0, ptr %retval, align 4, !dbg !6533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6533

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %irq_status, align 4, !dbg !6534
  %conv = sext i32 %3 to i64, !dbg !6534
  %and = and i64 %conv, 16, !dbg !6536
  %tobool = icmp ne i64 %and, 0, !dbg !6536
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !6537

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6538

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6539
  call void @phy_trigger_machine(ptr noundef %4) #13, !dbg !6540
  store i32 1, ptr %retval, align 4, !dbg !6541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6541

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_status) #14, !dbg !6542
  %5 = load i32, ptr %retval, align 4, !dbg !6542
  ret i32 %5, !dbg !6542
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtlgen_resume(ptr noundef %phydev) #2 align 16 !dbg !6543 {
entry:
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6545, metadata !DIExpression()), !dbg !6547
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6546, metadata !DIExpression()), !dbg !6549
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6550
  %call = call i32 @genphy_resume(ptr noundef %0) #13, !dbg !6551
  store i32 %call, ptr %ret, align 4, !dbg !6549
  call void @msleep(i32 noundef 20) #13, !dbg !6552
  %1 = load i32, ptr %ret, align 4, !dbg !6553
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6554
  ret i32 %1, !dbg !6555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtlgen_match_phy_device(ptr noundef %phydev) #2 align 16 !dbg !6556 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6558, metadata !DIExpression()), !dbg !6559
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6560
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3, !dbg !6561
  %1 = load i32, ptr %phy_id, align 8, !dbg !6561
  %cmp = icmp eq i32 %1, 1886208, !dbg !6562
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6563

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6564
  %call = call zeroext i1 @rtlgen_supports_2_5gbps(ptr noundef %2) #13, !dbg !6565
  %lnot = xor i1 %call, true, !dbg !6566
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !6567
  %land.ext = zext i1 %3 to i32, !dbg !6563
  ret i32 %land.ext, !dbg !6568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtlgen_read_mmd(ptr noundef %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum) #2 align 16 !dbg !6569 {
entry:
  %phydev.addr = alloca ptr, align 8
  %devnum.addr = alloca i32, align 4
  %regnum.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6571, metadata !DIExpression()), !dbg !6575
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !6572, metadata !DIExpression()), !dbg !6576
  store i16 %regnum, ptr %regnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6573, metadata !DIExpression()), !dbg !6577
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6578
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6574, metadata !DIExpression()), !dbg !6579
  %0 = load i32, ptr %devnum.addr, align 4, !dbg !6580
  %cmp = icmp eq i32 %0, 3, !dbg !6582
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6583

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, ptr %regnum.addr, align 2, !dbg !6584
  %conv = zext i16 %1 to i32, !dbg !6584
  %cmp1 = icmp eq i32 %conv, 20, !dbg !6585
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6586

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6587
  %call = call i32 @rtl821x_write_page(ptr noundef %2, i32 noundef 2652) #13, !dbg !6589
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6590
  %call3 = call i32 @__phy_read(ptr noundef %3, i32 noundef 18) #13, !dbg !6591
  store i32 %call3, ptr %ret, align 4, !dbg !6592
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6593
  %call4 = call i32 @rtl821x_write_page(ptr noundef %4, i32 noundef 0) #13, !dbg !6594
  br label %if.end28, !dbg !6595

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %devnum.addr, align 4, !dbg !6596
  %cmp5 = icmp eq i32 %5, 7, !dbg !6598
  br i1 %cmp5, label %land.lhs.true7, label %if.else15, !dbg !6599

land.lhs.true7:                                   ; preds = %if.else
  %6 = load i16, ptr %regnum.addr, align 2, !dbg !6600
  %conv8 = zext i16 %6 to i32, !dbg !6600
  %cmp9 = icmp eq i32 %conv8, 60, !dbg !6601
  br i1 %cmp9, label %if.then11, label %if.else15, !dbg !6602

if.then11:                                        ; preds = %land.lhs.true7
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6603
  %call12 = call i32 @rtl821x_write_page(ptr noundef %7, i32 noundef 2653) #13, !dbg !6605
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6606
  %call13 = call i32 @__phy_read(ptr noundef %8, i32 noundef 16) #13, !dbg !6607
  store i32 %call13, ptr %ret, align 4, !dbg !6608
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6609
  %call14 = call i32 @rtl821x_write_page(ptr noundef %9, i32 noundef 0) #13, !dbg !6610
  br label %if.end27, !dbg !6611

if.else15:                                        ; preds = %land.lhs.true7, %if.else
  %10 = load i32, ptr %devnum.addr, align 4, !dbg !6612
  %cmp16 = icmp eq i32 %10, 7, !dbg !6614
  br i1 %cmp16, label %land.lhs.true18, label %if.else26, !dbg !6615

land.lhs.true18:                                  ; preds = %if.else15
  %11 = load i16, ptr %regnum.addr, align 2, !dbg !6616
  %conv19 = zext i16 %11 to i32, !dbg !6616
  %cmp20 = icmp eq i32 %conv19, 61, !dbg !6617
  br i1 %cmp20, label %if.then22, label %if.else26, !dbg !6618

if.then22:                                        ; preds = %land.lhs.true18
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6619
  %call23 = call i32 @rtl821x_write_page(ptr noundef %12, i32 noundef 2653) #13, !dbg !6621
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6622
  %call24 = call i32 @__phy_read(ptr noundef %13, i32 noundef 17) #13, !dbg !6623
  store i32 %call24, ptr %ret, align 4, !dbg !6624
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6625
  %call25 = call i32 @rtl821x_write_page(ptr noundef %14, i32 noundef 0) #13, !dbg !6626
  br label %if.end, !dbg !6627

if.else26:                                        ; preds = %land.lhs.true18, %if.else15
  store i32 -95, ptr %ret, align 4, !dbg !6628
  br label %if.end

if.end:                                           ; preds = %if.else26, %if.then22
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then11
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  %15 = load i32, ptr %ret, align 4, !dbg !6630
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6631
  ret i32 %15, !dbg !6632
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtlgen_write_mmd(ptr noundef %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum, i16 noundef zeroext %val) #2 align 16 !dbg !6633 {
entry:
  %phydev.addr = alloca ptr, align 8
  %devnum.addr = alloca i32, align 4
  %regnum.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6635, metadata !DIExpression()), !dbg !6640
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !6636, metadata !DIExpression()), !dbg !6641
  store i16 %regnum, ptr %regnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6637, metadata !DIExpression()), !dbg !6642
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6638, metadata !DIExpression()), !dbg !6643
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6639, metadata !DIExpression()), !dbg !6645
  %0 = load i32, ptr %devnum.addr, align 4, !dbg !6646
  %cmp = icmp eq i32 %0, 7, !dbg !6648
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !6649

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, ptr %regnum.addr, align 2, !dbg !6650
  %conv = zext i16 %1 to i32, !dbg !6650
  %cmp1 = icmp eq i32 %conv, 60, !dbg !6651
  br i1 %cmp1, label %if.then, label %if.else, !dbg !6652

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6653
  %call = call i32 @rtl821x_write_page(ptr noundef %2, i32 noundef 2653) #13, !dbg !6655
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6656
  %4 = load i16, ptr %val.addr, align 2, !dbg !6657
  %call3 = call i32 @__phy_write(ptr noundef %3, i32 noundef 16, i16 noundef zeroext %4) #13, !dbg !6658
  store i32 %call3, ptr %ret, align 4, !dbg !6659
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6660
  %call4 = call i32 @rtl821x_write_page(ptr noundef %5, i32 noundef 0) #13, !dbg !6661
  br label %if.end, !dbg !6662

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 -95, ptr %ret, align 4, !dbg !6663
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %ret, align 4, !dbg !6665
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6666
  ret i32 %6, !dbg !6667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl822x_get_features(ptr noundef %phydev) #2 align 16 !dbg !6668 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6670, metadata !DIExpression()), !dbg !6672
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #14, !dbg !6673
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6671, metadata !DIExpression()), !dbg !6674
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6675
  %call = call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2657, i32 noundef 19) #13, !dbg !6676
  store i32 %call, ptr %val, align 4, !dbg !6677
  %1 = load i32, ptr %val, align 4, !dbg !6678
  %cmp = icmp slt i32 %1, 0, !dbg !6680
  br i1 %cmp, label %if.then, label %if.end, !dbg !6681

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %val, align 4, !dbg !6682
  store i32 %2, ptr %retval, align 4, !dbg !6683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6683

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6684
  %supported = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 18, !dbg !6685
  %arraydecay = getelementptr inbounds [2 x i64], ptr %supported, i64 0, i64 0, !dbg !6684
  %4 = load i32, ptr %val, align 4, !dbg !6686
  %conv = sext i32 %4 to i64, !dbg !6686
  %and = and i64 %conv, 8192, !dbg !6687
  %conv1 = trunc i64 %and to i32, !dbg !6686
  call void @linkmode_mod_bit(i32 noundef 47, ptr noundef %arraydecay, i32 noundef %conv1) #13, !dbg !6688
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6689
  %supported2 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 18, !dbg !6690
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %supported2, i64 0, i64 0, !dbg !6689
  %6 = load i32, ptr %val, align 4, !dbg !6691
  %conv4 = sext i32 %6 to i64, !dbg !6691
  %and5 = and i64 %conv4, 16384, !dbg !6692
  %conv6 = trunc i64 %and5 to i32, !dbg !6691
  call void @linkmode_mod_bit(i32 noundef 48, ptr noundef %arraydecay3, i32 noundef %conv6) #13, !dbg !6693
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6694
  %supported7 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 18, !dbg !6695
  %arraydecay8 = getelementptr inbounds [2 x i64], ptr %supported7, i64 0, i64 0, !dbg !6694
  %8 = load i32, ptr %val, align 4, !dbg !6696
  %conv9 = sext i32 %8 to i64, !dbg !6696
  %and10 = and i64 %conv9, 1, !dbg !6697
  %conv11 = trunc i64 %and10 to i32, !dbg !6696
  call void @linkmode_mod_bit(i32 noundef 12, ptr noundef %arraydecay8, i32 noundef %conv11) #13, !dbg !6698
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6699
  %call12 = call i32 @genphy_read_abilities(ptr noundef %9) #13, !dbg !6700
  store i32 %call12, ptr %retval, align 4, !dbg !6701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6701

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #14, !dbg !6702
  %10 = load i32, ptr %retval, align 4, !dbg !6702
  ret i32 %10, !dbg !6702
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl822x_config_aneg(ptr noundef %phydev) #2 align 16 !dbg !6703 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %adv2500 = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6705, metadata !DIExpression()), !dbg !6710
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6711
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6706, metadata !DIExpression()), !dbg !6712
  store i32 0, ptr %ret, align 4, !dbg !6712
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6713
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !6714
  %bf.load = load i32, ptr %autoneg, align 4, !dbg !6714
  %bf.lshr = lshr i32 %bf.load, 13, !dbg !6714
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6714
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !6715
  br i1 %cmp, label %if.then, label %if.end6, !dbg !6716

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %adv2500) #14, !dbg !6717
  call void @llvm.dbg.declare(metadata ptr %adv2500, metadata !6707, metadata !DIExpression()), !dbg !6718
  store i16 0, ptr %adv2500, align 2, !dbg !6718
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6719
  %advertising = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 19, !dbg !6721
  %arraydecay = getelementptr inbounds [2 x i64], ptr %advertising, i64 0, i64 0, !dbg !6719
  %call = call i32 @linkmode_test_bit(i32 noundef 47, ptr noundef %arraydecay) #13, !dbg !6722
  %tobool = icmp ne i32 %call, 0, !dbg !6722
  br i1 %tobool, label %if.then1, label %if.end, !dbg !6723

if.then1:                                         ; preds = %if.then
  store i16 128, ptr %adv2500, align 2, !dbg !6724
  br label %if.end, !dbg !6725

if.end:                                           ; preds = %if.then1, %if.then
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6726
  %3 = load i16, ptr %adv2500, align 2, !dbg !6727
  %call2 = call i32 @phy_modify_paged_changed(ptr noundef %2, i32 noundef 2653, i32 noundef 18, i16 noundef zeroext 128, i16 noundef zeroext %3) #13, !dbg !6728
  store i32 %call2, ptr %ret, align 4, !dbg !6729
  %4 = load i32, ptr %ret, align 4, !dbg !6730
  %cmp3 = icmp slt i32 %4, 0, !dbg !6732
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6733

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !dbg !6734
  store i32 %5, ptr %retval, align 4, !dbg !6735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6735

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6736
  br label %cleanup, !dbg !6736

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 2, ptr %adv2500) #14, !dbg !6736
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !6737

if.end6:                                          ; preds = %cleanup.cont, %entry
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6738
  %7 = load i32, ptr %ret, align 4, !dbg !6739
  %tobool7 = icmp ne i32 %7, 0, !dbg !6739
  %call8 = call i32 @__genphy_config_aneg(ptr noundef %6, i1 noundef zeroext %tobool7) #13, !dbg !6740
  store i32 %call8, ptr %retval, align 4, !dbg !6741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !6741

cleanup9:                                         ; preds = %if.end6, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6742
  %8 = load i32, ptr %retval, align 4, !dbg !6742
  ret i32 %8, !dbg !6742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl822x_read_status(ptr noundef %phydev) #2 align 16 !dbg !6743 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %lpadv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6745, metadata !DIExpression()), !dbg !6750
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6746, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6753
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !6754
  %bf.load = load i32, ptr %autoneg, align 4, !dbg !6754
  %bf.lshr = lshr i32 %bf.load, 13, !dbg !6754
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6754
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !6755
  br i1 %cmp, label %if.then, label %if.end14, !dbg !6756

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %lpadv) #14, !dbg !6757
  call void @llvm.dbg.declare(metadata ptr %lpadv, metadata !6747, metadata !DIExpression()), !dbg !6758
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6759
  %call = call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2653, i32 noundef 19) #13, !dbg !6760
  store i32 %call, ptr %lpadv, align 4, !dbg !6758
  %2 = load i32, ptr %lpadv, align 4, !dbg !6761
  %cmp1 = icmp slt i32 %2, 0, !dbg !6763
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6764

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %lpadv, align 4, !dbg !6765
  store i32 %3, ptr %retval, align 4, !dbg !6766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6766

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6767
  %lp_advertising = getelementptr inbounds %struct.phy_device, ptr %4, i32 0, i32 20, !dbg !6768
  %arraydecay = getelementptr inbounds [2 x i64], ptr %lp_advertising, i64 0, i64 0, !dbg !6767
  %5 = load i32, ptr %lpadv, align 4, !dbg !6769
  %conv = sext i32 %5 to i64, !dbg !6769
  %and = and i64 %conv, 2048, !dbg !6770
  %conv3 = trunc i64 %and to i32, !dbg !6769
  call void @linkmode_mod_bit(i32 noundef 12, ptr noundef %arraydecay, i32 noundef %conv3) #13, !dbg !6771
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6772
  %lp_advertising4 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 20, !dbg !6773
  %arraydecay5 = getelementptr inbounds [2 x i64], ptr %lp_advertising4, i64 0, i64 0, !dbg !6772
  %7 = load i32, ptr %lpadv, align 4, !dbg !6774
  %conv6 = sext i32 %7 to i64, !dbg !6774
  %and7 = and i64 %conv6, 64, !dbg !6775
  %conv8 = trunc i64 %and7 to i32, !dbg !6774
  call void @linkmode_mod_bit(i32 noundef 48, ptr noundef %arraydecay5, i32 noundef %conv8) #13, !dbg !6776
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6777
  %lp_advertising9 = getelementptr inbounds %struct.phy_device, ptr %8, i32 0, i32 20, !dbg !6778
  %arraydecay10 = getelementptr inbounds [2 x i64], ptr %lp_advertising9, i64 0, i64 0, !dbg !6777
  %9 = load i32, ptr %lpadv, align 4, !dbg !6779
  %conv11 = sext i32 %9 to i64, !dbg !6779
  %and12 = and i64 %conv11, 32, !dbg !6780
  %conv13 = trunc i64 %and12 to i32, !dbg !6779
  call void @linkmode_mod_bit(i32 noundef 47, ptr noundef %arraydecay10, i32 noundef %conv13) #13, !dbg !6781
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6782
  br label %cleanup, !dbg !6782

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %lpadv) #14, !dbg !6782
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end14, !dbg !6783

if.end14:                                         ; preds = %cleanup.cont, %entry
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6784
  %call15 = call i32 @genphy_read_status(ptr noundef %10) #13, !dbg !6785
  store i32 %call15, ptr %ret, align 4, !dbg !6786
  %11 = load i32, ptr %ret, align 4, !dbg !6787
  %cmp16 = icmp slt i32 %11, 0, !dbg !6789
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !6790

if.then18:                                        ; preds = %if.end14
  %12 = load i32, ptr %ret, align 4, !dbg !6791
  store i32 %12, ptr %retval, align 4, !dbg !6792
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !6792

if.end19:                                         ; preds = %if.end14
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6793
  %call20 = call i32 @rtlgen_get_speed(ptr noundef %13) #13, !dbg !6794
  store i32 %call20, ptr %retval, align 4, !dbg !6795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !6795

cleanup21:                                        ; preds = %if.end19, %if.then18, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6796
  %14 = load i32, ptr %retval, align 4, !dbg !6796
  ret i32 %14, !dbg !6796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8226_match_phy_device(ptr noundef %phydev) #2 align 16 !dbg !6797 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6799, metadata !DIExpression()), !dbg !6800
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6801
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3, !dbg !6802
  %1 = load i32, ptr %phy_id, align 8, !dbg !6802
  %cmp = icmp eq i32 %1, 1886208, !dbg !6803
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6804

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6805
  %call = call zeroext i1 @rtlgen_supports_2_5gbps(ptr noundef %2) #13, !dbg !6806
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %call, %land.rhs ], !dbg !6807
  %land.ext = zext i1 %3 to i32, !dbg !6804
  ret i32 %land.ext, !dbg !6808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl822x_read_mmd(ptr noundef %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum) #2 align 16 !dbg !6809 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %devnum.addr = alloca i32, align 4
  %regnum.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6811, metadata !DIExpression()), !dbg !6815
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !6812, metadata !DIExpression()), !dbg !6816
  store i16 %regnum, ptr %regnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6813, metadata !DIExpression()), !dbg !6817
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6818
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6814, metadata !DIExpression()), !dbg !6819
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6820
  %1 = load i32, ptr %devnum.addr, align 4, !dbg !6821
  %2 = load i16, ptr %regnum.addr, align 2, !dbg !6822
  %call = call i32 @rtlgen_read_mmd(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #13, !dbg !6823
  store i32 %call, ptr %ret, align 4, !dbg !6819
  %3 = load i32, ptr %ret, align 4, !dbg !6824
  %cmp = icmp ne i32 %3, -95, !dbg !6826
  br i1 %cmp, label %if.then, label %if.end, !dbg !6827

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !6828
  store i32 %4, ptr %retval, align 4, !dbg !6829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6829

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %devnum.addr, align 4, !dbg !6830
  %cmp1 = icmp eq i32 %5, 3, !dbg !6832
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !6833

land.lhs.true:                                    ; preds = %if.end
  %6 = load i16, ptr %regnum.addr, align 2, !dbg !6834
  %conv = zext i16 %6 to i32, !dbg !6834
  %cmp2 = icmp eq i32 %conv, 21, !dbg !6835
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !6836

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6837
  %call5 = call i32 @rtl821x_write_page(ptr noundef %7, i32 noundef 2670) #13, !dbg !6839
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6840
  %call6 = call i32 @__phy_read(ptr noundef %8, i32 noundef 22) #13, !dbg !6841
  store i32 %call6, ptr %ret, align 4, !dbg !6842
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6843
  %call7 = call i32 @rtl821x_write_page(ptr noundef %9, i32 noundef 0) #13, !dbg !6844
  br label %if.end31, !dbg !6845

if.else:                                          ; preds = %land.lhs.true, %if.end
  %10 = load i32, ptr %devnum.addr, align 4, !dbg !6846
  %cmp8 = icmp eq i32 %10, 7, !dbg !6848
  br i1 %cmp8, label %land.lhs.true10, label %if.else18, !dbg !6849

land.lhs.true10:                                  ; preds = %if.else
  %11 = load i16, ptr %regnum.addr, align 2, !dbg !6850
  %conv11 = zext i16 %11 to i32, !dbg !6850
  %cmp12 = icmp eq i32 %conv11, 62, !dbg !6851
  br i1 %cmp12, label %if.then14, label %if.else18, !dbg !6852

if.then14:                                        ; preds = %land.lhs.true10
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6853
  %call15 = call i32 @rtl821x_write_page(ptr noundef %12, i32 noundef 2669) #13, !dbg !6855
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6856
  %call16 = call i32 @__phy_read(ptr noundef %13, i32 noundef 18) #13, !dbg !6857
  store i32 %call16, ptr %ret, align 4, !dbg !6858
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6859
  %call17 = call i32 @rtl821x_write_page(ptr noundef %14, i32 noundef 0) #13, !dbg !6860
  br label %if.end30, !dbg !6861

if.else18:                                        ; preds = %land.lhs.true10, %if.else
  %15 = load i32, ptr %devnum.addr, align 4, !dbg !6862
  %cmp19 = icmp eq i32 %15, 7, !dbg !6864
  br i1 %cmp19, label %land.lhs.true21, label %if.end29, !dbg !6865

land.lhs.true21:                                  ; preds = %if.else18
  %16 = load i16, ptr %regnum.addr, align 2, !dbg !6866
  %conv22 = zext i16 %16 to i32, !dbg !6866
  %cmp23 = icmp eq i32 %conv22, 63, !dbg !6867
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !6868

if.then25:                                        ; preds = %land.lhs.true21
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6869
  %call26 = call i32 @rtl821x_write_page(ptr noundef %17, i32 noundef 2669) #13, !dbg !6871
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6872
  %call27 = call i32 @__phy_read(ptr noundef %18, i32 noundef 16) #13, !dbg !6873
  store i32 %call27, ptr %ret, align 4, !dbg !6874
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6875
  %call28 = call i32 @rtl821x_write_page(ptr noundef %19, i32 noundef 0) #13, !dbg !6876
  br label %if.end29, !dbg !6877

if.end29:                                         ; preds = %if.then25, %land.lhs.true21, %if.else18
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then14
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then4
  %20 = load i32, ptr %ret, align 4, !dbg !6878
  store i32 %20, ptr %retval, align 4, !dbg !6879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6879

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6880
  %21 = load i32, ptr %retval, align 4, !dbg !6880
  ret i32 %21, !dbg !6880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl822x_write_mmd(ptr noundef %phydev, i32 noundef %devnum, i16 noundef zeroext %regnum, i16 noundef zeroext %val) #2 align 16 !dbg !6881 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %devnum.addr = alloca i32, align 4
  %regnum.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6883, metadata !DIExpression()), !dbg !6888
  store i32 %devnum, ptr %devnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnum.addr, metadata !6884, metadata !DIExpression()), !dbg !6889
  store i16 %regnum, ptr %regnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6885, metadata !DIExpression()), !dbg !6890
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6886, metadata !DIExpression()), !dbg !6891
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6892
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6887, metadata !DIExpression()), !dbg !6893
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6894
  %1 = load i32, ptr %devnum.addr, align 4, !dbg !6895
  %2 = load i16, ptr %regnum.addr, align 2, !dbg !6896
  %3 = load i16, ptr %val.addr, align 2, !dbg !6897
  %call = call i32 @rtlgen_write_mmd(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #13, !dbg !6898
  store i32 %call, ptr %ret, align 4, !dbg !6893
  %4 = load i32, ptr %ret, align 4, !dbg !6899
  %cmp = icmp ne i32 %4, -95, !dbg !6901
  br i1 %cmp, label %if.then, label %if.end, !dbg !6902

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !6903
  store i32 %5, ptr %retval, align 4, !dbg !6904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6904

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %devnum.addr, align 4, !dbg !6905
  %cmp1 = icmp eq i32 %6, 7, !dbg !6907
  br i1 %cmp1, label %land.lhs.true, label %if.end8, !dbg !6908

land.lhs.true:                                    ; preds = %if.end
  %7 = load i16, ptr %regnum.addr, align 2, !dbg !6909
  %conv = zext i16 %7 to i32, !dbg !6909
  %cmp2 = icmp eq i32 %conv, 62, !dbg !6910
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !6911

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6912
  %call5 = call i32 @rtl821x_write_page(ptr noundef %8, i32 noundef 2669) #13, !dbg !6914
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6915
  %10 = load i16, ptr %val.addr, align 2, !dbg !6916
  %call6 = call i32 @__phy_write(ptr noundef %9, i32 noundef 18, i16 noundef zeroext %10) #13, !dbg !6917
  store i32 %call6, ptr %ret, align 4, !dbg !6918
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6919
  %call7 = call i32 @rtl821x_write_page(ptr noundef %11, i32 noundef 0) #13, !dbg !6920
  br label %if.end8, !dbg !6921

if.end8:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %12 = load i32, ptr %ret, align 4, !dbg !6922
  store i32 %12, ptr %retval, align 4, !dbg !6923
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6923

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6924
  %13 = load i32, ptr %retval, align 4, !dbg !6924
  ret i32 %13, !dbg !6924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8366rb_config_init(ptr noundef %phydev) #2 align 16 !dbg !6925 {
entry:
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6927, metadata !DIExpression()), !dbg !6929
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6930
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6928, metadata !DIExpression()), !dbg !6931
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6932
  %call = call i32 @phy_set_bits(ptr noundef %0, i32 noundef 21, i16 noundef zeroext 4096) #13, !dbg !6933
  store i32 %call, ptr %ret, align 4, !dbg !6934
  %1 = load i32, ptr %ret, align 4, !dbg !6935
  %tobool = icmp ne i32 %1, 0, !dbg !6935
  br i1 %tobool, label %if.then, label %if.end, !dbg !6937

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6938

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6941

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6941

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6938
  %mdio = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !6938
  %dev = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 0, !dbg !6938
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.28) #12, !dbg !6938
  br label %if.end, !dbg !6943

if.end:                                           ; preds = %do.end, %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6944
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6945
  ret i32 %3, !dbg !6946
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @genphy_no_config_intr(ptr noundef %phydev) #3 align 16 !dbg !6947 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6949, metadata !DIExpression()), !dbg !6950
  ret i32 0, !dbg !6951
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @genphy_handle_interrupt_no_ack(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl9000a_config_init(ptr noundef %phydev) #2 align 16 !dbg !6952 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6954, metadata !DIExpression()), !dbg !6955
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6956
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !6957
  %bf.load = load i32, ptr %autoneg, align 4, !dbg !6958
  %bf.clear = and i32 %bf.load, -8193, !dbg !6958
  %bf.set = or i32 %bf.clear, 0, !dbg !6958
  store i32 %bf.set, ptr %autoneg, align 4, !dbg !6958
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6959
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 10, !dbg !6960
  store i32 100, ptr %speed, align 8, !dbg !6961
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6962
  %duplex = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 11, !dbg !6963
  store i32 1, ptr %duplex, align 4, !dbg !6964
  ret i32 0, !dbg !6965
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl9000a_config_aneg(ptr noundef %phydev) #2 align 16 !dbg !6966 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ctl = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6968, metadata !DIExpression()), !dbg !6971
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6969, metadata !DIExpression()), !dbg !6973
  call void @llvm.lifetime.start.p0(i64 2, ptr %ctl) #14, !dbg !6974
  call void @llvm.dbg.declare(metadata ptr %ctl, metadata !6970, metadata !DIExpression()), !dbg !6975
  store i16 0, ptr %ctl, align 2, !dbg !6975
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6976
  %master_slave_set = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16, !dbg !6977
  %1 = load i8, ptr %master_slave_set, align 1, !dbg !6977
  %conv = zext i8 %1 to i32, !dbg !6976
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.epilog
    i32 1, label %sw.bb3
    i32 0, label %sw.bb3
  ], !dbg !6978

sw.bb:                                            ; preds = %entry
  %2 = load i16, ptr %ctl, align 2, !dbg !6979
  %conv1 = zext i16 %2 to i32, !dbg !6979
  %or = or i32 %conv1, 2048, !dbg !6979
  %conv2 = trunc i32 %or to i16, !dbg !6979
  store i16 %conv2, ptr %ctl, align 2, !dbg !6979
  br label %sw.epilog, !dbg !6981

sw.bb3:                                           ; preds = %entry, %entry
  store i32 0, ptr %retval, align 4, !dbg !6982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6982

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !6983

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !6985

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6985

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6983
  %mdio = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 0, !dbg !6983
  %dev = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 0, !dbg !6983
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str.29) #12, !dbg !6983
  store i32 -95, ptr %retval, align 4, !dbg !6987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6987

sw.epilog:                                        ; preds = %entry, %sw.bb
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6988
  %5 = load i16, ptr %ctl, align 2, !dbg !6989
  %call = call i32 @phy_modify_changed(ptr noundef %4, i32 noundef 9, i16 noundef zeroext 2048, i16 noundef zeroext %5) #13, !dbg !6990
  store i32 %call, ptr %ret, align 4, !dbg !6991
  %6 = load i32, ptr %ret, align 4, !dbg !6992
  %cmp = icmp eq i32 %6, 1, !dbg !6994
  br i1 %cmp, label %if.then, label %if.end, !dbg !6995

if.then:                                          ; preds = %sw.epilog
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6996
  %call5 = call i32 @genphy_soft_reset(ptr noundef %7) #13, !dbg !6997
  store i32 %call5, ptr %ret, align 4, !dbg !6998
  br label %if.end, !dbg !6999

if.end:                                           ; preds = %if.then, %sw.epilog
  %8 = load i32, ptr %ret, align 4, !dbg !7000
  store i32 %8, ptr %retval, align 4, !dbg !7001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7001

cleanup:                                          ; preds = %if.end, %do.end, %sw.bb3
  call void @llvm.lifetime.end.p0(i64 2, ptr %ctl) #14, !dbg !7002
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7002
  %9 = load i32, ptr %retval, align 4, !dbg !7002
  ret i32 %9, !dbg !7002
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl9000a_read_status(ptr noundef %phydev) #2 align 16 !dbg !7003 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7005, metadata !DIExpression()), !dbg !7007
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7008
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7006, metadata !DIExpression()), !dbg !7009
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7010
  %master_slave_get = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 15, !dbg !7011
  store i8 1, ptr %master_slave_get, align 4, !dbg !7012
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7013
  %master_slave_state = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 17, !dbg !7014
  store i8 1, ptr %master_slave_state, align 2, !dbg !7015
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7016
  %call = call i32 @genphy_update_link(ptr noundef %2) #13, !dbg !7017
  store i32 %call, ptr %ret, align 4, !dbg !7018
  %3 = load i32, ptr %ret, align 4, !dbg !7019
  %tobool = icmp ne i32 %3, 0, !dbg !7019
  br i1 %tobool, label %if.then, label %if.end, !dbg !7021

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !7022
  store i32 %4, ptr %retval, align 4, !dbg !7023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7023

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !7024
  %call1 = call i32 @phy_read(ptr noundef %5, i32 noundef 9) #13, !dbg !7025
  store i32 %call1, ptr %ret, align 4, !dbg !7026
  %6 = load i32, ptr %ret, align 4, !dbg !7027
  %cmp = icmp slt i32 %6, 0, !dbg !7029
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !7030

if.then2:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !dbg !7031
  store i32 %7, ptr %retval, align 4, !dbg !7032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7032

if.end3:                                          ; preds = %if.end
  %8 = load i32, ptr %ret, align 4, !dbg !7033
  %and = and i32 %8, 2048, !dbg !7035
  %tobool4 = icmp ne i32 %and, 0, !dbg !7035
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !7036

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !7037
  %master_slave_get6 = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 15, !dbg !7038
  store i8 4, ptr %master_slave_get6, align 4, !dbg !7039
  br label %if.end8, !dbg !7037

if.else:                                          ; preds = %if.end3
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !7040
  %master_slave_get7 = getelementptr inbounds %struct.phy_device, ptr %10, i32 0, i32 15, !dbg !7041
  store i8 5, ptr %master_slave_get7, align 4, !dbg !7042
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !7043
  %call9 = call i32 @phy_read(ptr noundef %11, i32 noundef 10) #13, !dbg !7044
  store i32 %call9, ptr %ret, align 4, !dbg !7045
  %12 = load i32, ptr %ret, align 4, !dbg !7046
  %cmp10 = icmp slt i32 %12, 0, !dbg !7048
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !7049

if.then11:                                        ; preds = %if.end8
  %13 = load i32, ptr %ret, align 4, !dbg !7050
  store i32 %13, ptr %retval, align 4, !dbg !7051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7051

if.end12:                                         ; preds = %if.end8
  %14 = load i32, ptr %ret, align 4, !dbg !7052
  %and13 = and i32 %14, 16384, !dbg !7054
  %tobool14 = icmp ne i32 %and13, 0, !dbg !7054
  br i1 %tobool14, label %if.then15, label %if.else17, !dbg !7055

if.then15:                                        ; preds = %if.end12
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !7056
  %master_slave_state16 = getelementptr inbounds %struct.phy_device, ptr %15, i32 0, i32 17, !dbg !7057
  store i8 2, ptr %master_slave_state16, align 2, !dbg !7058
  br label %if.end19, !dbg !7056

if.else17:                                        ; preds = %if.end12
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !7059
  %master_slave_state18 = getelementptr inbounds %struct.phy_device, ptr %16, i32 0, i32 17, !dbg !7060
  store i8 3, ptr %master_slave_state18, align 2, !dbg !7061
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  store i32 0, ptr %retval, align 4, !dbg !7062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7062

cleanup:                                          ; preds = %if.end19, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7063
  %17 = load i32, ptr %retval, align 4, !dbg !7063
  ret i32 %17, !dbg !7063
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl9000a_config_intr(ptr noundef %phydev) #2 align 16 !dbg !7064 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %val = alloca i16, align 2
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7066, metadata !DIExpression()), !dbg !7069
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #14, !dbg !7070
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7067, metadata !DIExpression()), !dbg !7071
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7072
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7068, metadata !DIExpression()), !dbg !7073
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7074
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !7076
  %bf.load = load i32, ptr %interrupts, align 4, !dbg !7076
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !7076
  %bf.clear = and i32 %bf.lshr, 1, !dbg !7076
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !7077
  br i1 %cmp, label %if.then, label %if.else, !dbg !7078

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7079
  %call = call i32 @rtl9000a_ack_interrupt(ptr noundef %1) #13, !dbg !7081
  store i32 %call, ptr %err, align 4, !dbg !7082
  %2 = load i32, ptr %err, align 4, !dbg !7083
  %tobool = icmp ne i32 %2, 0, !dbg !7083
  br i1 %tobool, label %if.then1, label %if.end, !dbg !7085

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %err, align 4, !dbg !7086
  store i32 %3, ptr %retval, align 4, !dbg !7087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7087

if.end:                                           ; preds = %if.then
  store i16 -17, ptr %val, align 2, !dbg !7088
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !7089
  %5 = load i16, ptr %val, align 2, !dbg !7090
  %call2 = call i32 @phy_write_paged(ptr noundef %4, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext %5) #13, !dbg !7091
  store i32 %call2, ptr %err, align 4, !dbg !7092
  br label %if.end8, !dbg !7093

if.else:                                          ; preds = %entry
  store i16 -1, ptr %val, align 2, !dbg !7094
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !7096
  %7 = load i16, ptr %val, align 2, !dbg !7097
  %call3 = call i32 @phy_write_paged(ptr noundef %6, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext %7) #13, !dbg !7098
  store i32 %call3, ptr %err, align 4, !dbg !7099
  %8 = load i32, ptr %err, align 4, !dbg !7100
  %tobool4 = icmp ne i32 %8, 0, !dbg !7100
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !7102

if.then5:                                         ; preds = %if.else
  %9 = load i32, ptr %err, align 4, !dbg !7103
  store i32 %9, ptr %retval, align 4, !dbg !7104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7104

if.end6:                                          ; preds = %if.else
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !7105
  %call7 = call i32 @rtl9000a_ack_interrupt(ptr noundef %10) #13, !dbg !7106
  store i32 %call7, ptr %err, align 4, !dbg !7107
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !7108
  %12 = load i16, ptr %val, align 2, !dbg !7109
  %call9 = call i32 @phy_write_paged(ptr noundef %11, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext %12) #13, !dbg !7110
  store i32 %call9, ptr %retval, align 4, !dbg !7111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7111

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7112
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #14, !dbg !7112
  %13 = load i32, ptr %retval, align 4, !dbg !7112
  ret i32 %13, !dbg !7112
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl9000a_handle_interrupt(ptr noundef %phydev) #2 align 16 !dbg !7113 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %irq_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7115, metadata !DIExpression()), !dbg !7117
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_status) #14, !dbg !7118
  call void @llvm.dbg.declare(metadata ptr %irq_status, metadata !7116, metadata !DIExpression()), !dbg !7119
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7120
  %call = call i32 @phy_read(ptr noundef %0, i32 noundef 29) #13, !dbg !7121
  store i32 %call, ptr %irq_status, align 4, !dbg !7122
  %1 = load i32, ptr %irq_status, align 4, !dbg !7123
  %cmp = icmp slt i32 %1, 0, !dbg !7125
  br i1 %cmp, label %if.then, label %if.end, !dbg !7126

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7127
  call void @phy_error(ptr noundef %2) #13, !dbg !7129
  store i32 0, ptr %retval, align 4, !dbg !7130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7130

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %irq_status, align 4, !dbg !7131
  %conv = sext i32 %3 to i64, !dbg !7131
  %and = and i64 %conv, 16, !dbg !7133
  %tobool = icmp ne i64 %and, 0, !dbg !7133
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !7134

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !7135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7135

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !7136
  call void @phy_trigger_machine(ptr noundef %4) #13, !dbg !7137
  store i32 1, ptr %retval, align 4, !dbg !7138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7138

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_status) #14, !dbg !7139
  %5 = load i32, ptr %retval, align 4, !dbg !7139
  ret i32 %5, !dbg !7139
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__phy_read(ptr noundef %phydev, i32 noundef %regnum) #3 align 16 !dbg !7140 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7144, metadata !DIExpression()), !dbg !7146
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !7145, metadata !DIExpression()), !dbg !7147
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7148
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !7149
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !7150
  %1 = load ptr, ptr %bus, align 8, !dbg !7150
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7151
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !7152
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !7153
  %3 = load i32, ptr %addr, align 8, !dbg !7153
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !7154
  %call = call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef %4) #13, !dbg !7155
  ret i32 %call, !dbg !7156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7157 dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__phy_write(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #3 align 16 !dbg !7160 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7164, metadata !DIExpression()), !dbg !7167
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !7165, metadata !DIExpression()), !dbg !7168
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7166, metadata !DIExpression()), !dbg !7169
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7170
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !7171
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !7172
  %1 = load ptr, ptr %bus, align 8, !dbg !7172
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7173
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !7174
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !7175
  %3 = load i32, ptr %addr, align 8, !dbg !7175
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !7176
  %5 = load i16, ptr %val.addr, align 2, !dbg !7177
  %call = call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #13, !dbg !7178
  ret i32 %call, !dbg !7179
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7180 dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8201_ack_interrupt(ptr noundef %phydev) #2 align 16 !dbg !7183 {
entry:
  %phydev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7185, metadata !DIExpression()), !dbg !7187
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7188
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7186, metadata !DIExpression()), !dbg !7189
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7190
  %call = call i32 @phy_read(ptr noundef %0, i32 noundef 30) #13, !dbg !7191
  store i32 %call, ptr %err, align 4, !dbg !7192
  %1 = load i32, ptr %err, align 4, !dbg !7193
  %cmp = icmp slt i32 %1, 0, !dbg !7194
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7195

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !7196
  br label %cond.end, !dbg !7195

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !7195
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7197
  ret i32 %cond, !dbg !7198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7199 dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_read(ptr noundef %phydev, i32 noundef %regnum) #3 align 16 !dbg !7202 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7204, metadata !DIExpression()), !dbg !7206
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !7205, metadata !DIExpression()), !dbg !7207
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7208
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !7209
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !7210
  %1 = load ptr, ptr %bus, align 8, !dbg !7210
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7211
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !7212
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !7213
  %3 = load i32, ptr %addr, align 8, !dbg !7213
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !7214
  %call = call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef %4) #13, !dbg !7215
  ret i32 %call, !dbg !7216
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7217 dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7218 dso_local void @phy_error(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7219 dso_local void @phy_trigger_machine(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @genphy_config_aneg(ptr noundef %phydev) #3 align 16 !dbg !7220 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7222, metadata !DIExpression()), !dbg !7223
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7224
  %call = call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !7225
  ret i32 %call, !dbg !7226
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_write(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #3 align 16 !dbg !7227 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7229, metadata !DIExpression()), !dbg !7232
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !7230, metadata !DIExpression()), !dbg !7233
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7231, metadata !DIExpression()), !dbg !7234
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7235
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !7236
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !7237
  %1 = load ptr, ptr %bus, align 8, !dbg !7237
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7238
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !7239
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !7240
  %3 = load i32, ptr %addr, align 8, !dbg !7240
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !7241
  %5 = load i16, ptr %val.addr, align 2, !dbg !7242
  %call = call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #13, !dbg !7243
  ret i32 %call, !dbg !7244
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7245 dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7246 dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl821x_ack_interrupt(ptr noundef %phydev) #2 align 16 !dbg !7247 {
entry:
  %phydev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7249, metadata !DIExpression()), !dbg !7251
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7252
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7250, metadata !DIExpression()), !dbg !7253
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7254
  %call = call i32 @phy_read(ptr noundef %0, i32 noundef 19) #13, !dbg !7255
  store i32 %call, ptr %err, align 4, !dbg !7256
  %1 = load i32, ptr %err, align 4, !dbg !7257
  %cmp = icmp slt i32 %1, 0, !dbg !7258
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7259

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !7260
  br label %cond.end, !dbg !7259

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !7259
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7261
  ret i32 %cond, !dbg !7262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_set_bits(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #3 align 16 !dbg !7263 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7265, metadata !DIExpression()), !dbg !7268
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !7266, metadata !DIExpression()), !dbg !7269
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7267, metadata !DIExpression()), !dbg !7270
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7271
  %1 = load i32, ptr %regnum.addr, align 4, !dbg !7272
  %2 = load i16, ptr %val.addr, align 2, !dbg !7273
  %call = call i32 @phy_modify(ptr noundef %0, i32 noundef %1, i16 noundef zeroext 0, i16 noundef zeroext %2) #13, !dbg !7274
  ret i32 %call, !dbg !7275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7276 dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7279 dso_local i32 @phy_select_page(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7280 dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7281 dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7284 dso_local i32 @phy_modify_paged_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7287 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !7291 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !7296, metadata !DIExpression()), !dbg !7297
  %0 = load i64, ptr %error.addr, align 8, !dbg !7298
  %1 = inttoptr i64 %0 to ptr, !dbg !7299
  ret ptr %1, !dbg !7300
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7301 dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7302 dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #3 align 16 !dbg !7303 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7307, metadata !DIExpression()), !dbg !7310
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7308, metadata !DIExpression()), !dbg !7311
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !7309, metadata !DIExpression()), !dbg !7312
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7313
  %1 = load i64, ptr %size.addr, align 8, !dbg !7314
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !7315
  %or = or i32 %2, 256, !dbg !7316
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #15, !dbg !7317
  ret ptr %call, !dbg !7318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_clk_get_optional_enabled(ptr noundef %dev, ptr noundef %id) #3 align 16 !dbg !7319 {
entry:
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7323, metadata !DIExpression()), !dbg !7325
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !7324, metadata !DIExpression()), !dbg !7326
  ret ptr null, !dbg !7327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !7328 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7332, metadata !DIExpression()), !dbg !7333
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7334
  %1 = ptrtoint ptr %0 to i64, !dbg !7334
  %2 = inttoptr i64 %1 to ptr, !dbg !7334
  %3 = ptrtoint ptr %2 to i64, !dbg !7334
  %cmp = icmp uge i64 %3, -4095, !dbg !7334
  %lnot = xor i1 %cmp, true, !dbg !7334
  %lnot1 = xor i1 %lnot, true, !dbg !7334
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7334
  %conv = sext i32 %lnot.ext to i64, !dbg !7334
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7334
  %tobool = icmp ne i64 %expval, 0, !dbg !7334
  ret i1 %tobool, !dbg !7335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7336 dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !7339 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7343, metadata !DIExpression()), !dbg !7344
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7345
  %1 = ptrtoint ptr %0 to i64, !dbg !7346
  ret i64 %1, !dbg !7347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7348 dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @of_property_read_bool(ptr noundef %np, ptr noundef %propname) #3 align 16 !dbg !7351 {
entry:
  %np.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %prop = alloca ptr, align 8
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !7357, metadata !DIExpression()), !dbg !7360
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !7358, metadata !DIExpression()), !dbg !7361
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !7362
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !7359, metadata !DIExpression()), !dbg !7363
  %0 = load ptr, ptr %np.addr, align 8, !dbg !7364
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !7365
  %call = call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #13, !dbg !7366
  store ptr %call, ptr %prop, align 8, !dbg !7363
  %2 = load ptr, ptr %prop, align 8, !dbg !7367
  %tobool = icmp ne ptr %2, null, !dbg !7367
  %3 = zext i1 %tobool to i64, !dbg !7367
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !7367
  %tobool1 = icmp ne i32 %cond, 0, !dbg !7367
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !7368
  ret i1 %tobool1, !dbg !7369
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !7370 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_find_property(ptr noundef %np, ptr noundef %name, ptr noundef %lenp) #3 align 16 !dbg !7371 {
entry:
  %np.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !7375, metadata !DIExpression()), !dbg !7378
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !7376, metadata !DIExpression()), !dbg !7379
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !7377, metadata !DIExpression()), !dbg !7380
  ret ptr null, !dbg !7381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clk_disable_unprepare(ptr noundef %clk) #3 align 16 !dbg !7382 {
entry:
  %clk.addr = alloca ptr, align 8
  store ptr %clk, ptr %clk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !7386, metadata !DIExpression()), !dbg !7387
  %0 = load ptr, ptr %clk.addr, align 8, !dbg !7388
  call void @clk_disable(ptr noundef %0) #13, !dbg !7389
  %1 = load ptr, ptr %clk.addr, align 8, !dbg !7390
  call void @clk_unprepare(ptr noundef %1) #13, !dbg !7391
  ret void, !dbg !7392
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clk_disable(ptr noundef %clk) #3 align 16 !dbg !7393 {
entry:
  %clk.addr = alloca ptr, align 8
  store ptr %clk, ptr %clk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !7395, metadata !DIExpression()), !dbg !7396
  ret void, !dbg !7397
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clk_unprepare(ptr noundef %clk) #3 align 16 !dbg !7398 {
entry:
  %clk.addr = alloca ptr, align 8
  store ptr %clk, ptr %clk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !7400, metadata !DIExpression()), !dbg !7401
  br label %do.body, !dbg !7402

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !7403
  br label %do.end, !dbg !7403

do.end:                                           ; preds = %do.body
  ret void, !dbg !7405
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #9 align 16 !dbg !5782 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !7406
  %0 = load ptr, ptr %tmp, align 8, !dbg !7406
  %call = call i32 %0() #13, !dbg !7408
  ret void, !dbg !7409
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clk_prepare_enable(ptr noundef %clk) #3 align 16 !dbg !7410 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %clk, ptr %clk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !7414, metadata !DIExpression()), !dbg !7416
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7417
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7415, metadata !DIExpression()), !dbg !7418
  %0 = load ptr, ptr %clk.addr, align 8, !dbg !7419
  %call = call i32 @clk_prepare(ptr noundef %0) #13, !dbg !7420
  store i32 %call, ptr %ret, align 4, !dbg !7421
  %1 = load i32, ptr %ret, align 4, !dbg !7422
  %tobool = icmp ne i32 %1, 0, !dbg !7422
  br i1 %tobool, label %if.then, label %if.end, !dbg !7424

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !7425
  store i32 %2, ptr %retval, align 4, !dbg !7426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7426

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %clk.addr, align 8, !dbg !7427
  %call1 = call i32 @clk_enable(ptr noundef %3) #13, !dbg !7428
  store i32 %call1, ptr %ret, align 4, !dbg !7429
  %4 = load i32, ptr %ret, align 4, !dbg !7430
  %tobool2 = icmp ne i32 %4, 0, !dbg !7430
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7432

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %clk.addr, align 8, !dbg !7433
  call void @clk_unprepare(ptr noundef %5) #13, !dbg !7434
  br label %if.end4, !dbg !7434

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !7435
  store i32 %6, ptr %retval, align 4, !dbg !7436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7436

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7437
  %7 = load i32, ptr %retval, align 4, !dbg !7437
  ret i32 %7, !dbg !7437
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7438 dso_local void @msleep(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clk_prepare(ptr noundef %clk) #3 align 16 !dbg !7442 {
entry:
  %clk.addr = alloca ptr, align 8
  store ptr %clk, ptr %clk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !7444, metadata !DIExpression()), !dbg !7445
  br label %do.body, !dbg !7446

do.body:                                          ; preds = %entry
  call void @might_resched() #13, !dbg !7447
  br label %do.end, !dbg !7447

do.end:                                           ; preds = %do.body
  ret i32 0, !dbg !7449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @clk_enable(ptr noundef %clk) #3 align 16 !dbg !7450 {
entry:
  %clk.addr = alloca ptr, align 8
  store ptr %clk, ptr %clk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !7452, metadata !DIExpression()), !dbg !7453
  ret i32 0, !dbg !7454
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7455 dso_local i32 @genphy_read_status(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtlgen_get_speed(ptr noundef %phydev) #2 align 16 !dbg !7456 {
entry:
  %retval = alloca i32, align 4
  %phydev.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7458, metadata !DIExpression()), !dbg !7460
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #14, !dbg !7461
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7459, metadata !DIExpression()), !dbg !7462
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7463
  %link = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5, !dbg !7465
  %bf.load = load i32, ptr %link, align 4, !dbg !7465
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !7465
  %bf.clear = and i32 %bf.lshr, 1, !dbg !7465
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !7463
  br i1 %tobool, label %if.end, label %if.then, !dbg !7466

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7467

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7468
  %call = call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2627, i32 noundef 18) #13, !dbg !7469
  store i32 %call, ptr %val, align 4, !dbg !7470
  %2 = load i32, ptr %val, align 4, !dbg !7471
  %cmp = icmp slt i32 %2, 0, !dbg !7473
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7474

if.then1:                                         ; preds = %if.end
  %3 = load i32, ptr %val, align 4, !dbg !7475
  store i32 %3, ptr %retval, align 4, !dbg !7476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7476

if.end2:                                          ; preds = %if.end
  %4 = load i32, ptr %val, align 4, !dbg !7477
  %and = and i32 %4, 1584, !dbg !7478
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb3
    i32 32, label %sw.bb5
    i32 512, label %sw.bb7
    i32 528, label %sw.bb9
    i32 544, label %sw.bb11
  ], !dbg !7479

sw.bb:                                            ; preds = %if.end2
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !7480
  %speed = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 10, !dbg !7482
  store i32 10, ptr %speed, align 8, !dbg !7483
  br label %sw.epilog, !dbg !7484

sw.bb3:                                           ; preds = %if.end2
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !7485
  %speed4 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 10, !dbg !7486
  store i32 100, ptr %speed4, align 8, !dbg !7487
  br label %sw.epilog, !dbg !7488

sw.bb5:                                           ; preds = %if.end2
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !7489
  %speed6 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 10, !dbg !7490
  store i32 1000, ptr %speed6, align 8, !dbg !7491
  br label %sw.epilog, !dbg !7492

sw.bb7:                                           ; preds = %if.end2
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !7493
  %speed8 = getelementptr inbounds %struct.phy_device, ptr %8, i32 0, i32 10, !dbg !7494
  store i32 10000, ptr %speed8, align 8, !dbg !7495
  br label %sw.epilog, !dbg !7496

sw.bb9:                                           ; preds = %if.end2
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !7497
  %speed10 = getelementptr inbounds %struct.phy_device, ptr %9, i32 0, i32 10, !dbg !7498
  store i32 2500, ptr %speed10, align 8, !dbg !7499
  br label %sw.epilog, !dbg !7500

sw.bb11:                                          ; preds = %if.end2
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !7501
  %speed12 = getelementptr inbounds %struct.phy_device, ptr %10, i32 0, i32 10, !dbg !7502
  store i32 5000, ptr %speed12, align 8, !dbg !7503
  br label %sw.epilog, !dbg !7504

sw.default:                                       ; preds = %if.end2
  br label %sw.epilog, !dbg !7505

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !7506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7506

cleanup:                                          ; preds = %sw.epilog, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #14, !dbg !7507
  %11 = load i32, ptr %retval, align 4, !dbg !7507
  ret i32 %11, !dbg !7507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl8211f_ack_interrupt(ptr noundef %phydev) #2 align 16 !dbg !7508 {
entry:
  %phydev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7510, metadata !DIExpression()), !dbg !7512
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7513
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7511, metadata !DIExpression()), !dbg !7514
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7515
  %call = call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 29) #13, !dbg !7516
  store i32 %call, ptr %err, align 4, !dbg !7517
  %1 = load i32, ptr %err, align 4, !dbg !7518
  %cmp = icmp slt i32 %1, 0, !dbg !7519
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7520

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !7521
  br label %cond.end, !dbg !7520

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7520

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !7520
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7522
  ret i32 %cond, !dbg !7523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rtlgen_supports_2_5gbps(ptr noundef %phydev) #2 align 16 !dbg !7524 {
entry:
  %phydev.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7528, metadata !DIExpression()), !dbg !7530
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #14, !dbg !7531
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7529, metadata !DIExpression()), !dbg !7532
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7533
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 31, i16 noundef zeroext 2657) #13, !dbg !7534
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7535
  %call1 = call i32 @phy_read(ptr noundef %1, i32 noundef 19) #13, !dbg !7536
  store i32 %call1, ptr %val, align 4, !dbg !7537
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7538
  %call2 = call i32 @phy_write(ptr noundef %2, i32 noundef 31, i16 noundef zeroext 0) #13, !dbg !7539
  %3 = load i32, ptr %val, align 4, !dbg !7540
  %cmp = icmp sge i32 %3, 0, !dbg !7541
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7542

land.rhs:                                         ; preds = %entry
  %4 = load i32, ptr %val, align 4, !dbg !7543
  %conv = sext i32 %4 to i64, !dbg !7543
  %and = and i64 %conv, 8192, !dbg !7544
  %tobool = icmp ne i64 %and, 0, !dbg !7542
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !7545
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #14, !dbg !7546
  ret i1 %5, !dbg !7547
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_mod_bit(i32 noundef %nr, ptr noundef %addr, i32 noundef %set) #3 align 16 !dbg !7548 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %set.addr = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7555, metadata !DIExpression()), !dbg !7558
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7556, metadata !DIExpression()), !dbg !7559
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !7557, metadata !DIExpression()), !dbg !7560
  %0 = load i32, ptr %set.addr, align 4, !dbg !7561
  %tobool = icmp ne i32 %0, 0, !dbg !7561
  br i1 %tobool, label %if.then, label %if.else, !dbg !7563

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %nr.addr, align 4, !dbg !7564
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7565
  call void @linkmode_set_bit(i32 noundef %1, ptr noundef %2) #13, !dbg !7566
  br label %if.end, !dbg !7566

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %nr.addr, align 4, !dbg !7567
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !7568
  call void @linkmode_clear_bit(i32 noundef %3, ptr noundef %4) #13, !dbg !7569
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !7570
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7571 dso_local i32 @genphy_read_abilities(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_set_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7572 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7576, metadata !DIExpression()), !dbg !7578
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7577, metadata !DIExpression()), !dbg !7579
  %0 = load i32, ptr %nr.addr, align 4, !dbg !7580
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7580
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7580

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7580
  %3 = ptrtoint ptr %2 to i64, !dbg !7580
  %cmp = icmp ne i64 %3, 0, !dbg !7580
  %conv = zext i1 %cmp to i32, !dbg !7580
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7580
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !7580

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7580
  %6 = ptrtoint ptr %5 to i64, !dbg !7580
  %cmp2 = icmp ne i64 %6, 0, !dbg !7580
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7580

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !7580
  %8 = load i64, ptr %7, align 8, !dbg !7580
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7580
  br i1 %9, label %cond.true, label %cond.false, !dbg !7580

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %nr.addr, align 4, !dbg !7580
  %conv5 = sext i32 %10 to i64, !dbg !7580
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !7580
  call void @generic___set_bit(i64 noundef %conv5, ptr noundef %11) #13, !dbg !7580
  br label %cond.end, !dbg !7580

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %nr.addr, align 4, !dbg !7580
  %conv6 = sext i32 %12 to i64, !dbg !7580
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !7580
  call void @___set_bit(i64 noundef %conv6, ptr noundef %13) #13, !dbg !7580
  br label %cond.end, !dbg !7580

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void, !dbg !7581
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_clear_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7582 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7584, metadata !DIExpression()), !dbg !7586
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7585, metadata !DIExpression()), !dbg !7587
  %0 = load i32, ptr %nr.addr, align 4, !dbg !7588
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7588
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7588

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7588
  %3 = ptrtoint ptr %2 to i64, !dbg !7588
  %cmp = icmp ne i64 %3, 0, !dbg !7588
  %conv = zext i1 %cmp to i32, !dbg !7588
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7588
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !7588

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7588
  %6 = ptrtoint ptr %5 to i64, !dbg !7588
  %cmp2 = icmp ne i64 %6, 0, !dbg !7588
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7588

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !7588
  %8 = load i64, ptr %7, align 8, !dbg !7588
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7588
  br i1 %9, label %cond.true, label %cond.false, !dbg !7588

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %nr.addr, align 4, !dbg !7588
  %conv5 = sext i32 %10 to i64, !dbg !7588
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !7588
  call void @generic___clear_bit(i64 noundef %conv5, ptr noundef %11) #13, !dbg !7588
  br label %cond.end, !dbg !7588

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %nr.addr, align 4, !dbg !7588
  %conv6 = sext i32 %12 to i64, !dbg !7588
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !7588
  call void @___clear_bit(i64 noundef %conv6, ptr noundef %13) #13, !dbg !7588
  br label %cond.end, !dbg !7588

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void, !dbg !7589
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7590 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7595, metadata !DIExpression()), !dbg !7599
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7596, metadata !DIExpression()), !dbg !7600
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !7601
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7597, metadata !DIExpression()), !dbg !7602
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7603
  %rem = urem i64 %0, 64, !dbg !7603
  %shl = shl i64 1, %rem, !dbg !7603
  store i64 %shl, ptr %mask, align 8, !dbg !7602
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !7604
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7598, metadata !DIExpression()), !dbg !7605
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7606
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7607
  %div = udiv i64 %2, 64, !dbg !7607
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !7608
  store ptr %add.ptr, ptr %p, align 8, !dbg !7605
  %3 = load i64, ptr %mask, align 8, !dbg !7609
  %4 = load ptr, ptr %p, align 8, !dbg !7610
  %5 = load i64, ptr %4, align 8, !dbg !7611
  %or = or i64 %5, %3, !dbg !7611
  store i64 %or, ptr %4, align 8, !dbg !7611
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !7612
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !7612
  ret void, !dbg !7612
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7613 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7616, metadata !DIExpression()), !dbg !7618
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7617, metadata !DIExpression()), !dbg !7619
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7620
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7621
  %div = udiv i64 %1, 64, !dbg !7621
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7622
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7623
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7624
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7625
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7626
  ret void, !dbg !7627
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !7628 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7636, metadata !DIExpression()), !dbg !7638
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7637, metadata !DIExpression()), !dbg !7639
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7640
  %1 = load i64, ptr %size.addr, align 8, !dbg !7641
  %conv = trunc i64 %1 to i32, !dbg !7641
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #13, !dbg !7642
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7643
  %3 = load i64, ptr %size.addr, align 8, !dbg !7643
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #13, !dbg !7643
  ret void, !dbg !7644
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7645 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7648, metadata !DIExpression()), !dbg !7650
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7649, metadata !DIExpression()), !dbg !7651
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7652
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7653
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !7654, !srcloc !7655
  ret void, !dbg !7656
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7657 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7662, metadata !DIExpression()), !dbg !7664
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7663, metadata !DIExpression()), !dbg !7665
  ret i1 true, !dbg !7666
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !7667 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7672, metadata !DIExpression()), !dbg !7675
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7673, metadata !DIExpression()), !dbg !7676
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7674, metadata !DIExpression()), !dbg !7677
  ret void, !dbg !7678
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7679 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7681, metadata !DIExpression()), !dbg !7685
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7682, metadata !DIExpression()), !dbg !7686
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !7687
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7683, metadata !DIExpression()), !dbg !7688
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7689
  %rem = urem i64 %0, 64, !dbg !7689
  %shl = shl i64 1, %rem, !dbg !7689
  store i64 %shl, ptr %mask, align 8, !dbg !7688
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !7690
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7684, metadata !DIExpression()), !dbg !7691
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7692
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7693
  %div = udiv i64 %2, 64, !dbg !7693
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !7694
  store ptr %add.ptr, ptr %p, align 8, !dbg !7691
  %3 = load i64, ptr %mask, align 8, !dbg !7695
  %not = xor i64 %3, -1, !dbg !7696
  %4 = load ptr, ptr %p, align 8, !dbg !7697
  %5 = load i64, ptr %4, align 8, !dbg !7698
  %and = and i64 %5, %not, !dbg !7698
  store i64 %and, ptr %4, align 8, !dbg !7698
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !7699
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !7699
  ret void, !dbg !7699
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7700 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7702, metadata !DIExpression()), !dbg !7704
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7703, metadata !DIExpression()), !dbg !7705
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7706
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7707
  %div = udiv i64 %1, 64, !dbg !7707
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7708
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7709
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7710
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7711
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7712
  ret void, !dbg !7713
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7714 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7716, metadata !DIExpression()), !dbg !7718
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7717, metadata !DIExpression()), !dbg !7719
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7720
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7721
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !7722, !srcloc !7723
  ret void, !dbg !7724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @linkmode_test_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7725 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7731, metadata !DIExpression()), !dbg !7733
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7732, metadata !DIExpression()), !dbg !7734
  %0 = load i32, ptr %nr.addr, align 4, !dbg !7735
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7735
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7735

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !7735
  %3 = ptrtoint ptr %2 to i64, !dbg !7735
  %cmp = icmp ne i64 %3, 0, !dbg !7735
  %conv = zext i1 %cmp to i32, !dbg !7735
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !7735
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !7735

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7735
  %6 = ptrtoint ptr %5 to i64, !dbg !7735
  %cmp2 = icmp ne i64 %6, 0, !dbg !7735
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !7735

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !7735
  %8 = load i64, ptr %7, align 8, !dbg !7735
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7735
  br i1 %9, label %cond.true, label %cond.false, !dbg !7735

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %nr.addr, align 4, !dbg !7735
  %conv5 = sext i32 %10 to i64, !dbg !7735
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !7735
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv5, ptr noundef %11) #13, !dbg !7735
  %conv6 = zext i1 %call to i32, !dbg !7735
  br label %cond.end, !dbg !7735

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %nr.addr, align 4, !dbg !7735
  %conv7 = sext i32 %12 to i64, !dbg !7735
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !7735
  %call8 = call zeroext i1 @_test_bit(i64 noundef %conv7, ptr noundef %13) #13, !dbg !7735
  %conv9 = zext i1 %call8 to i32, !dbg !7735
  br label %cond.end, !dbg !7735

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %conv9, %cond.false ], !dbg !7735
  ret i32 %cond, !dbg !7736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7737 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7741, metadata !DIExpression()), !dbg !7746
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7742, metadata !DIExpression()), !dbg !7747
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !7748
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7743, metadata !DIExpression()), !dbg !7749
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7750
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7751
  %div = udiv i64 %1, 64, !dbg !7751
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7752
  store ptr %add.ptr, ptr %p, align 8, !dbg !7749
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !7753
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !7744, metadata !DIExpression()), !dbg !7754
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7755
  %rem = urem i64 %2, 64, !dbg !7755
  %shl = shl i64 1, %rem, !dbg !7755
  store i64 %shl, ptr %mask, align 8, !dbg !7754
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !7756
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7745, metadata !DIExpression()), !dbg !7757
  %3 = load ptr, ptr %p, align 8, !dbg !7758
  %4 = load i64, ptr %3, align 8, !dbg !7759
  store i64 %4, ptr %val, align 8, !dbg !7757
  %5 = load i64, ptr %val, align 8, !dbg !7760
  %6 = load i64, ptr %mask, align 8, !dbg !7761
  %and = and i64 %5, %6, !dbg !7762
  %tobool = icmp ne i64 %and, 0, !dbg !7763
  %lnot = xor i1 %tobool, true, !dbg !7763
  %lnot1 = xor i1 %lnot, true, !dbg !7764
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !7765
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !7765
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !7765
  ret i1 %lnot1, !dbg !7766
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7767 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7769, metadata !DIExpression()), !dbg !7771
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7770, metadata !DIExpression()), !dbg !7772
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7773
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7774
  %div = udiv i64 %1, 64, !dbg !7774
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7775
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7776
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7777
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7778
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7779
  ret i1 %call, !dbg !7780
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !7781 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7783, metadata !DIExpression()), !dbg !7785
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7784, metadata !DIExpression()), !dbg !7786
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7787
  %1 = load i64, ptr %size.addr, align 8, !dbg !7788
  %conv = trunc i64 %1 to i32, !dbg !7788
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !7789
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7790
  %3 = load i64, ptr %size.addr, align 8, !dbg !7790
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !7790
  ret void, !dbg !7791
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7792 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7794, metadata !DIExpression()), !dbg !7796
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7795, metadata !DIExpression()), !dbg !7797
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7798
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7799
  br i1 %1, label %cond.true, label %cond.false, !dbg !7799

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7800
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7801
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7802
  %conv = zext i1 %call to i32, !dbg !7802
  br label %cond.end, !dbg !7799

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7803
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7804
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !7805
  %conv2 = zext i1 %call1 to i32, !dbg !7805
  br label %cond.end, !dbg !7799

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7799
  %tobool = icmp ne i32 %cond, 0, !dbg !7799
  ret i1 %tobool, !dbg !7806
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !7807 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7809, metadata !DIExpression()), !dbg !7811
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7810, metadata !DIExpression()), !dbg !7812
  ret i1 true, !dbg !7813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7814 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7818, metadata !DIExpression()), !dbg !7820
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7819, metadata !DIExpression()), !dbg !7821
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7822
  %and = and i64 %0, 63, !dbg !7823
  %shl = shl i64 1, %and, !dbg !7824
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7825
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7826
  %shr = ashr i64 %2, 6, !dbg !7827
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7825
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7825
  %and1 = and i64 %shl, %3, !dbg !7828
  %cmp = icmp ne i64 %and1, 0, !dbg !7829
  ret i1 %cmp, !dbg !7830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !7831 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7833, metadata !DIExpression()), !dbg !7836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7834, metadata !DIExpression()), !dbg !7837
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !7838
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7835, metadata !DIExpression()), !dbg !7839
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7840
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7841
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !7842, !srcloc !7843
  %3 = icmp ult i8 %2, 2, !dbg !7842
  call void @llvm.assume(i1 %3), !dbg !7842
  store i8 %2, ptr %oldbit, align 1, !dbg !7842
  %4 = load i8, ptr %oldbit, align 1, !dbg !7844, !range !6255, !noundef !542
  %tobool = trunc i8 %4 to i1, !dbg !7844
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !7845
  ret i1 %tobool, !dbg !7846
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7847 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7848 dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7849 dso_local i32 @genphy_update_link(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtl9000a_ack_interrupt(ptr noundef %phydev) #2 align 16 !dbg !7850 {
entry:
  %phydev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7852, metadata !DIExpression()), !dbg !7854
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !7855
  call void @llvm.dbg.declare(metadata ptr %err, metadata !7853, metadata !DIExpression()), !dbg !7856
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7857
  %call = call i32 @phy_read(ptr noundef %0, i32 noundef 29) #13, !dbg !7858
  store i32 %call, ptr %err, align 4, !dbg !7859
  %1 = load i32, ptr %err, align 4, !dbg !7860
  %cmp = icmp slt i32 %1, 0, !dbg !7861
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7862

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !7863
  br label %cond.end, !dbg !7862

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !7862

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ], !dbg !7862
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !7864
  ret i32 %cond, !dbg !7865
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802}
!llvm.ident = !{!5803}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description338", scope: !2, file: !3, line: 76, type: !5794, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/net/phy/.realtek.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/net/phy/realtek\22 -D KBUILD_BASENAME=\22realtek\22 -D KBUILD_MODNAME=\22realtek\22 -D __KBUILD_MODNAME=kmod_realtek -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/net/phy/realtek.ll drivers/net/phy/realtek.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !4953, globals: !4958, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/phy/realtek.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffa579c7e0de060e9ddf0e67d68f3530")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !80, !87, !94, !102, !110, !116, !125, !130, !135, !141, !147, !4776, !4784, !4794, !4830, !4836, !4842, !4847}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !57, line: 68, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!68 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!69 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!70 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!71 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!72 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!73 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!74 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!75 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!76 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!77 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!78 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!79 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !88, line: 487, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!91 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!92 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!93 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !95, line: 620, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!98 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!99 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!100 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!101 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !95, line: 597, baseType: !103, size: 32, elements: !104)
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!106 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!107 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!108 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!109 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !111, line: 30, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!115 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !88, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !88, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !88, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !88, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !142, line: 45, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!145 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!146 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !149, file: !148, line: 399, baseType: !7, size: 32, elements: !4771)
!148 = !DIFile(filename: "./include/linux/phy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "314b95e2c49d6373114a8f2977268af7")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mii_bus", file: !148, line: 370, size: 20992, elements: !150)
!150 = !{!151, !4187, !4188, !4192, !4193, !4198, !4202, !4206, !4210, !4214, !4239, !4240, !4725, !4726, !4727, !4753, !4754, !4755, !4757, !4758, !4759, !4760, !4761}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !149, file: !148, line: 371, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !154)
!154 = !{!155, !156, !163, !168, !3863, !3889, !3890, !3891, !3892, !3896, !3899, !3900, !3901, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3968, !3972, !3990, !4007, !4008, !4009, !4010, !4019, !4042, !4043, !4046, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4060, !4061, !4147, !4155, !4156, !4157, !4159, !4163, !4164, !4168, !4169, !4170, !4171, !4173, !4174, !4175, !4182, !4183, !4184, !4186}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !153, file: !21, line: 403, baseType: !20, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !153, file: !21, line: 406, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 191, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !158, line: 191, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !21, line: 409, baseType: !164, size: 448, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 448, elements: !166)
!165 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !{!167}
!167 = !DISubrange(count: 56)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !153, file: !21, line: 417, baseType: !169, size: 768, offset: 640)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !170)
!170 = !{!171, !3857, !3858, !3859, !3862}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !169, file: !21, line: 46, baseType: !172, size: 512)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !173, line: 64, size: 512, elements: !174)
!173 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!174 = !{!175, !178, !179, !181, !270, !3744, !3847, !3852, !3853, !3854, !3855, !3856}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !173, line: 65, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !172, file: !173, line: 66, baseType: !157, size: 128, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !172, file: !173, line: 67, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !172, file: !173, line: 68, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !173, line: 168, size: 768, elements: !184)
!184 = !{!185, !186, !229, !230}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !183, file: !173, line: 169, baseType: !157, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !183, file: !173, line: 170, baseType: !187, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !188, line: 29, baseType: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !188, line: 17, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !188, line: 18, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !188, line: 18, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !192, file: !188, line: 19, baseType: !195, size: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !196, line: 14, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !195, file: !196, line: 15, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !200, line: 44, baseType: !201)
!200 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !200, line: 14, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 15, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 15, size: 32, elements: !205)
!205 = !{!206, !211, !221}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !204, file: !200, line: 16, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !208, file: !158, line: 173, baseType: !103, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !200, line: 24, baseType: !212, size: 16)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !200, line: 24, size: 16, elements: !213)
!213 = !{!214, !220}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !212, file: !200, line: 25, baseType: !215, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !216, line: 17, baseType: !217)
!216 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !218, line: 21, baseType: !219)
!218 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!219 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !212, file: !200, line: 26, baseType: !215, size: 8, offset: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !200, line: 28, baseType: !222, size: 32)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !200, line: 28, size: 32, elements: !223)
!223 = !{!224, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !222, file: !200, line: 29, baseType: !225, size: 16)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !216, line: 19, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !218, line: 24, baseType: !227)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !222, file: !200, line: 30, baseType: !225, size: 16, offset: 16)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !183, file: !173, line: 171, baseType: !172, size: 512, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !183, file: !173, line: 172, baseType: !231, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !173, line: 133, size: 192, elements: !234)
!234 = !{!235, !242, !247}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !233, file: !173, line: 134, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!103, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !173, line: 135, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!176, !240}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !233, file: !173, line: 136, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !240, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !173, line: 125, size: 20736, elements: !254)
!254 = !{!255, !260, !264, !265, !269}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !253, file: !173, line: 126, baseType: !256, size: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!258 = !{!259}
!259 = !DISubrange(count: 3)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !253, file: !173, line: 127, baseType: !261, size: 4096, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 4096, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !253, file: !173, line: 128, baseType: !103, size: 32, offset: 4288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !173, line: 129, baseType: !266, size: 16384, offset: 4320)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 16384, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !253, file: !173, line: 130, baseType: !103, size: 32, offset: 20704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !172, file: !173, line: 69, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !173, line: 116, size: 384, elements: !274)
!274 = !{!275, !279, !308, !3706, !3734, !3738}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !273, file: !173, line: 117, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !180}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !273, file: !173, line: 118, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !283, line: 254, size: 128, elements: !284)
!283 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!284 = !{!285, !300}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !282, file: !283, line: 255, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !180, !294, !257}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !291, line: 73, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !291, line: 15, baseType: !293)
!293 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !283, line: 30, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !283, line: 31, baseType: !176, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !295, file: !283, line: 32, baseType: !299, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !227)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !282, file: !283, line: 256, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!289, !180, !294, !176, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !291, line: 72, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !291, line: 16, baseType: !307)
!307 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !273, file: !173, line: 119, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !283, line: 84, size: 320, elements: !313)
!313 = !{!314, !315, !319, !3702, !3704}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !283, line: 85, baseType: !176, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !312, file: !283, line: 86, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!299, !180, !294, !103}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !312, file: !283, line: 88, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!299, !180, !323, !103}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !283, line: 175, size: 512, elements: !325)
!325 = !{!326, !327, !328, !330, !3693, !3697, !3698}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !324, file: !283, line: 176, baseType: !295, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !283, line: 177, baseType: !304, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !324, file: !283, line: 178, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !283, line: 179, baseType: !331, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !336)
!336 = !{!337, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3687, !3688, !3689, !3690, !3691, !3692}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !335, file: !28, line: 473, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !340)
!340 = !{!341, !342, !343, !351, !352, !359, !360, !363, !364, !3466, !3467, !3468, !3469, !3470, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3510, !3513, !3514, !3515, !3524, !3525, !3526, !3527}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !339, file: !28, line: 642, baseType: !299, size: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !339, file: !28, line: 643, baseType: !227, size: 16, offset: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !339, file: !28, line: 644, baseType: !344, size: 32, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !345, line: 23, baseType: !346)
!345 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 21, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !346, file: !345, line: 22, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !291, line: 49, baseType: !7)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !339, file: !28, line: 645, baseType: !157, size: 128, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !339, file: !28, line: 646, baseType: !353, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !345, line: 28, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 26, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !345, line: 27, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !291, line: 50, baseType: !7)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !339, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !339, file: !28, line: 650, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !339, file: !28, line: 651, baseType: !361, size: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !339, file: !28, line: 654, baseType: !365, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !368)
!368 = !{!369, !3297, !3310, !3314, !3318, !3322, !3326, !3330, !3334, !3338, !3342, !3343, !3347, !3351, !3388, !3417, !3421, !3427, !3431, !3435, !3439, !3443, !3447, !3453, !3457}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !367, file: !28, line: 1967, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !338, !373, !7}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !375, line: 82, size: 1536, elements: !376)
!375 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!376 = !{!377, !378, !388, !396, !397, !417, !418, !422, !435, !3280, !3281, !3282, !3283, !3289, !3290, !3291}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !374, file: !375, line: 84, baseType: !7, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !374, file: !375, line: 85, baseType: !379, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !380, line: 275, baseType: !381)
!380 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !380, line: 275, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !381, file: !380, line: 275, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !380, line: 69, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !380, line: 64, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !385, file: !380, line: 65, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !374, file: !375, line: 86, baseType: !389, size: 128, offset: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !390, line: 38, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!391 = !{!392, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !390, line: 39, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !389, file: !390, line: 39, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !374, file: !375, line: 87, baseType: !373, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !374, file: !375, line: 88, baseType: !398, size: 128, offset: 256)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !375, line: 49, size: 128, elements: !399)
!399 = !{!400, !414}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !375, line: 50, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !375, line: 50, size: 64, elements: !402)
!402 = !{!403, !410}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !375, line: 51, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !401, file: !375, line: 51, size: 64, elements: !405)
!405 = !{!406, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !404, file: !375, line: 52, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !216, line: 21, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !218, line: 27, baseType: !7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !404, file: !375, line: 52, baseType: !407, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !401, file: !375, line: 54, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !216, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !218, line: 31, baseType: !413)
!413 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !375, line: 56, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !374, file: !375, line: 89, baseType: !338, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !374, file: !375, line: 91, baseType: !419, size: 256, offset: 448)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !374, file: !375, line: 94, baseType: !423, size: 64, offset: 704)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !424, line: 25, size: 64, elements: !425)
!424 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !424, line: 26, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !424, line: 26, size: 64, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !427, file: !424, line: 28, baseType: !412, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !424, line: 30, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !424, line: 30, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !424, line: 31, baseType: !187, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !424, line: 32, baseType: !103, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !374, file: !375, line: 95, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !375, line: 128, size: 1024, align: 512, elements: !439)
!439 = !{!440, !444, !445, !452, !458, !462, !466, !470, !471, !475, !479, !3270, !3274}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !438, file: !375, line: 129, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!103, !373, !7}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !438, file: !375, line: 130, baseType: !441, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !438, file: !375, line: 131, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!103, !449, !451}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !438, file: !375, line: 132, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!103, !449, !7, !176, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !438, file: !375, line: 134, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!103, !449}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !438, file: !375, line: 135, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!103, !373}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !438, file: !375, line: 136, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !373}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !438, file: !375, line: 137, baseType: !467, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !438, file: !375, line: 138, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !373, !338}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !438, file: !375, line: 139, baseType: !476, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!257, !373, !257, !103}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !438, file: !375, line: 140, baseType: !480, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !3269}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !485, line: 70, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!486 = !{!487, !488, !3265, !3266}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !484, file: !485, line: 71, baseType: !373, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !484, file: !485, line: 72, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !491)
!491 = !{!492, !493, !496, !497, !498, !502, !551, !712, !752, !842, !846, !847, !848, !849, !850, !859, !860, !861, !862, !867, !871, !872, !875, !878, !881, !884, !885, !886, !927, !3196, !3197, !3198, !3199, !3200, !3201, !3204, !3206, !3213, !3214, !3215, !3216, !3217, !3232, !3233, !3234, !3235, !3236, !3239, !3240, !3241, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !490, file: !28, line: 1191, baseType: !157, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !490, file: !28, line: 1192, baseType: !494, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !407)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !490, file: !28, line: 1193, baseType: !219, size: 8, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !490, file: !28, line: 1194, baseType: !307, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !490, file: !28, line: 1195, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !291, line: 88, baseType: !501)
!501 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !490, file: !28, line: 1196, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !505)
!505 = !{!506, !507, !508, !515, !519, !523, !527, !528, !529, !539, !543, !544, !545, !547, !548, !549, !550}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !28, line: 2367, baseType: !176, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !504, file: !28, line: 2368, baseType: !103, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !504, file: !28, line: 2376, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!103, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !514, line: 32, flags: DIFlagFwdDecl)
!514 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!515 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !504, file: !28, line: 2377, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !504, file: !28, line: 2378, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!373, !503, !103, !176, !329}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !504, file: !28, line: 2380, baseType: !524, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !489}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !28, line: 2381, baseType: !152, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !28, line: 2382, baseType: !503, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !504, file: !28, line: 2383, baseType: !530, size: 64, offset: 512)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !530, file: !158, line: 195, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !158, line: 199, baseType: !533, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !534, file: !158, line: 199, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !504, file: !28, line: 2385, baseType: !540, offset: 576)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !541, line: 206, elements: !542)
!541 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!542 = !{}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !504, file: !28, line: 2386, baseType: !540, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !504, file: !28, line: 2387, baseType: !540, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !504, file: !28, line: 2388, baseType: !546, offset: 576)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, elements: !258)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !504, file: !28, line: 2390, baseType: !540, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !504, file: !28, line: 2391, baseType: !540, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !504, file: !28, line: 2392, baseType: !540, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !504, file: !28, line: 2393, baseType: !540, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !490, file: !28, line: 1197, baseType: !552, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !555)
!555 = !{!556, !560, !564, !565, !569, !575, !579, !580, !581, !585, !589, !593, !594, !595, !601, !606, !607, !614, !615, !616, !617, !621, !625, !694, !710, !711}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !554, file: !28, line: 2058, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!338, !489}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !554, file: !28, line: 2059, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !338}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !554, file: !28, line: 2060, baseType: !561, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !554, file: !28, line: 2062, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !338, !103}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !554, file: !28, line: 2063, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!103, !338, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !554, file: !28, line: 2064, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!103, !338}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !554, file: !28, line: 2065, baseType: !561, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !554, file: !28, line: 2066, baseType: !524, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !554, file: !28, line: 2067, baseType: !582, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!103, !489, !103}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !554, file: !28, line: 2068, baseType: !586, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!103, !489, !27}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !554, file: !28, line: 2069, baseType: !590, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!103, !489}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !554, file: !28, line: 2070, baseType: !586, size: 64, offset: 704)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !554, file: !28, line: 2071, baseType: !590, size: 64, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !554, file: !28, line: 2072, baseType: !596, size: 64, offset: 832)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!103, !373, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !554, file: !28, line: 2073, baseType: !602, size: 64, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!103, !489, !605, !257}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !554, file: !28, line: 2074, baseType: !524, size: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !554, file: !28, line: 2076, baseType: !608, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!103, !611, !373}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !613, line: 66, flags: DIFlagFwdDecl)
!613 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !554, file: !28, line: 2077, baseType: !608, size: 64, offset: 1088)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !554, file: !28, line: 2078, baseType: !608, size: 64, offset: 1152)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !554, file: !28, line: 2079, baseType: !608, size: 64, offset: 1216)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !554, file: !28, line: 2081, baseType: !618, size: 64, offset: 1280)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!289, !489, !103, !257, !304, !499}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !554, file: !28, line: 2082, baseType: !622, size: 64, offset: 1344)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!289, !489, !103, !176, !304, !499}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !554, file: !28, line: 2083, baseType: !626, size: 64, offset: 1408)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !338}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !658, !659, !660, !661, !677, !678, !679}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !631, file: !33, line: 297, baseType: !534, size: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !631, file: !33, line: 298, baseType: !157, size: 128, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !631, file: !33, line: 299, baseType: !157, size: 128, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !631, file: !33, line: 300, baseType: !157, size: 128, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !631, file: !33, line: 301, baseType: !638, size: 256, offset: 512)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !639, line: 66, size: 256, elements: !640)
!639 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!640 = !{!641, !650, !652, !657}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !639, line: 67, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !643, line: 13, baseType: !644)
!643 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !645, file: !158, line: 180, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !216, line: 22, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !218, line: 30, baseType: !501)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !639, line: 68, baseType: !651, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 23, baseType: !195)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !638, file: !639, line: 70, baseType: !653, size: 32, offset: 96)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !654, line: 15, size: 32, elements: !655)
!654 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !653, file: !654, line: 20, baseType: !207, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !638, file: !639, line: 72, baseType: !157, size: 128, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !631, file: !33, line: 302, baseType: !187, size: 32, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !631, file: !33, line: 303, baseType: !207, size: 32, offset: 800)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !631, file: !33, line: 304, baseType: !489, size: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !631, file: !33, line: 305, baseType: !662, size: 64, offset: 896)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !663)
!663 = !{!664, !676}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !33, line: 69, baseType: !665, size: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !33, line: 69, size: 32, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !665, file: !33, line: 70, baseType: !344, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !665, file: !33, line: 71, baseType: !353, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !665, file: !33, line: 72, baseType: !670, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !671, line: 24, baseType: !672)
!671 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 22, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !672, file: !671, line: 23, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !671, line: 20, baseType: !350)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !631, file: !33, line: 306, baseType: !499, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !631, file: !33, line: 307, baseType: !307, size: 64, offset: 1024)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !631, file: !33, line: 308, baseType: !680, size: 576, offset: 1088)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !681)
!681 = !{!682, !684, !685, !686, !687, !688, !689, !690, !693}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !680, file: !33, line: 206, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !501)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !680, file: !33, line: 207, baseType: !683, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !680, file: !33, line: 208, baseType: !683, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !680, file: !33, line: 209, baseType: !683, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !680, file: !33, line: 210, baseType: !683, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !680, file: !33, line: 211, baseType: !683, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !680, file: !33, line: 212, baseType: !683, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !680, file: !33, line: 213, baseType: !691, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !692, line: 8, baseType: !649)
!692 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !680, file: !33, line: 214, baseType: !691, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !554, file: !28, line: 2085, baseType: !695, size: 64, offset: 1472)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!293, !489, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !700, line: 15, size: 256, elements: !701)
!700 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!701 = !{!702, !704, !705, !706, !707}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !699, file: !700, line: 16, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !7)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !699, file: !700, line: 19, baseType: !103, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !699, file: !700, line: 26, baseType: !307, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !699, file: !700, line: 33, baseType: !307, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !699, file: !700, line: 36, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !554, file: !28, line: 2087, baseType: !695, size: 64, offset: 1536)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !554, file: !28, line: 2089, baseType: !524, size: 64, offset: 1600)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !490, file: !28, line: 1198, baseType: !713, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !716)
!716 = !{!717, !721, !725, !729, !730, !731, !732, !733, !738, !743, !747}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !715, file: !33, line: 325, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!103, !630}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !715, file: !33, line: 326, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!630, !489, !103}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !715, file: !33, line: 327, baseType: !726, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !630}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !715, file: !33, line: 328, baseType: !718, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !715, file: !33, line: 329, baseType: !718, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !715, file: !33, line: 330, baseType: !718, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !715, file: !33, line: 331, baseType: !582, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !715, file: !33, line: 334, baseType: !734, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !338}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !715, file: !33, line: 335, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!103, !338, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !715, file: !33, line: 337, baseType: !744, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!103, !338, !737}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !715, file: !33, line: 339, baseType: !748, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!103, !489, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !490, file: !28, line: 1199, baseType: !753, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !756)
!756 = !{!757, !768, !769, !773, !774, !775, !790, !813, !817, !818, !841}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !755, file: !33, line: 431, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!103, !489, !103, !103, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !764, line: 8, size: 128, elements: !765)
!764 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !763, file: !764, line: 9, baseType: !483, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !763, file: !764, line: 10, baseType: !373, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !755, file: !33, line: 432, baseType: !582, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !755, file: !33, line: 433, baseType: !770, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!103, !489, !7}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !755, file: !33, line: 434, baseType: !770, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !755, file: !33, line: 435, baseType: !582, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !755, file: !33, line: 436, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!103, !489, !103, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !780, file: !33, line: 418, baseType: !103, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !780, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !780, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !780, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !780, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !780, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !780, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !780, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !755, file: !33, line: 437, baseType: !791, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!103, !489, !662, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !795, file: !33, line: 346, baseType: !103, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !795, file: !33, line: 347, baseType: !411, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !795, file: !33, line: 348, baseType: !411, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !795, file: !33, line: 349, baseType: !411, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !795, file: !33, line: 350, baseType: !411, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !795, file: !33, line: 351, baseType: !411, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !795, file: !33, line: 352, baseType: !411, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !795, file: !33, line: 353, baseType: !648, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !795, file: !33, line: 355, baseType: !648, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !795, file: !33, line: 356, baseType: !103, size: 32, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !795, file: !33, line: 357, baseType: !103, size: 32, offset: 608)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !795, file: !33, line: 358, baseType: !411, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !795, file: !33, line: 359, baseType: !411, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !795, file: !33, line: 360, baseType: !411, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !795, file: !33, line: 361, baseType: !648, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !795, file: !33, line: 362, baseType: !103, size: 32, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !755, file: !33, line: 438, baseType: !814, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!103, !489, !751, !794}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !755, file: !33, line: 440, baseType: !791, size: 64, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !755, file: !33, line: 441, baseType: !819, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!103, !489, !822}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !823, file: !33, line: 412, baseType: !7, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !823, file: !33, line: 413, baseType: !827, size: 1344, offset: 64)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 1344, elements: !258)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !840}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !828, file: !33, line: 398, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !828, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !828, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !828, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !828, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !828, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !828, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !828, file: !33, line: 406, baseType: !413, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !828, file: !33, line: 407, baseType: !839, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !411)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !828, file: !33, line: 408, baseType: !839, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !755, file: !33, line: 442, baseType: !770, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !490, file: !28, line: 1200, baseType: !843, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !490, file: !28, line: 1201, baseType: !307, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !490, file: !28, line: 1202, baseType: !307, size: 64, offset: 704)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !490, file: !28, line: 1203, baseType: !307, size: 64, offset: 768)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !490, file: !28, line: 1204, baseType: !373, size: 64, offset: 832)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !490, file: !28, line: 1205, baseType: !851, size: 320, offset: 896)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !852, line: 48, size: 320, elements: !853)
!852 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!853 = !{!854, !855, !856, !857, !858}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !851, file: !852, line: 49, baseType: !642, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !851, file: !852, line: 55, baseType: !642, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !851, file: !852, line: 57, baseType: !653, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !851, file: !852, line: 59, baseType: !651, size: 32, offset: 160)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !851, file: !852, line: 60, baseType: !157, size: 128, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !490, file: !28, line: 1206, baseType: !103, size: 32, offset: 1216)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !490, file: !28, line: 1207, baseType: !207, size: 32, offset: 1248)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !490, file: !28, line: 1209, baseType: !329, size: 64, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !490, file: !28, line: 1211, baseType: !863, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !490, file: !28, line: 1223, baseType: !868, size: 64, offset: 1408)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !390, line: 34, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !868, file: !390, line: 35, baseType: !393, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !490, file: !28, line: 1224, baseType: !157, size: 128, offset: 1472)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !490, file: !28, line: 1225, baseType: !873, size: 64, offset: 1600)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !490, file: !28, line: 1226, baseType: !876, size: 64, offset: 1664)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !490, file: !28, line: 1227, baseType: !879, size: 64, offset: 1728)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !490, file: !28, line: 1228, baseType: !882, size: 64, offset: 1792)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !490, file: !28, line: 1229, baseType: !534, size: 128, offset: 1856)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !490, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !490, file: !28, line: 1231, baseType: !887, size: 2496, offset: 2048)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !888)
!888 = !{!889, !890, !891, !893, !925}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !33, line: 522, baseType: !7, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !887, file: !33, line: 523, baseType: !851, size: 320, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !887, file: !33, line: 524, baseType: !892, size: 192, offset: 384)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !258)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !887, file: !33, line: 525, baseType: !894, size: 1728, offset: 576)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 1728, elements: !258)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !896)
!896 = !{!897, !917, !918, !919, !920, !921, !922, !923, !924}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !895, file: !33, line: 223, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !900)
!900 = !{!901, !902, !915, !916}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !899, file: !33, line: 446, baseType: !103, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !899, file: !33, line: 447, baseType: !903, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !905, file: !33, line: 313, baseType: !582, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !905, file: !33, line: 314, baseType: !582, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !905, file: !33, line: 315, baseType: !582, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !905, file: !33, line: 316, baseType: !582, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !905, file: !33, line: 317, baseType: !718, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !905, file: !33, line: 318, baseType: !718, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !905, file: !33, line: 319, baseType: !718, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !905, file: !33, line: 320, baseType: !748, size: 64, offset: 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !899, file: !33, line: 448, baseType: !152, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !899, file: !33, line: 449, baseType: !898, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !895, file: !33, line: 224, baseType: !103, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !895, file: !33, line: 226, baseType: !157, size: 128, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !895, file: !33, line: 227, baseType: !307, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !895, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !895, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !895, file: !33, line: 230, baseType: !683, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !895, file: !33, line: 231, baseType: !683, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !895, file: !33, line: 232, baseType: !329, size: 64, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !887, file: !33, line: 526, baseType: !926, size: 192, offset: 2304)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 192, elements: !258)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !490, file: !28, line: 1233, baseType: !928, size: 2368, offset: 4544)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !928, file: !28, line: 1185, baseType: !227, size: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !928, file: !28, line: 1186, baseType: !227, size: 16, offset: 16)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !928, file: !28, line: 1187, baseType: !933, size: 2304, offset: 64)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 2304, elements: !258)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !935, line: 12, size: 768, elements: !936)
!935 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!936 = !{!937, !959, !961, !3194, !3195}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !934, file: !935, line: 13, baseType: !938, size: 384)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !939, line: 17, size: 384, elements: !940)
!939 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!940 = !{!941, !942, !943, !950}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !938, file: !939, line: 18, baseType: !103, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !938, file: !939, line: 19, baseType: !103, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !938, file: !939, line: 20, baseType: !944, size: 192, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !945, line: 41, baseType: !946)
!945 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !945, line: 37, size: 192, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !946, file: !945, line: 38, baseType: !187, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !946, file: !945, line: 39, baseType: !157, size: 128, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !938, file: !939, line: 22, baseType: !951, size: 128, align: 64, offset: 256)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !952)
!952 = !{!953, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !158, line: 233, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !951, file: !158, line: 234, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !954}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !934, file: !935, line: 14, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !934, file: !935, line: 15, baseType: !962, size: 64, offset: 448)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !963, line: 16, size: 64, elements: !964)
!963 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !962, file: !963, line: 17, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !613, line: 746, size: 58368, elements: !968)
!968 = !{!969, !977, !978, !979, !985, !986, !987, !988, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1066, !1077, !1172, !1176, !1179, !1210, !1211, !1212, !1213, !1224, !1226, !1227, !1228, !1229, !1230, !1231, !1242, !1243, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1260, !1261, !1268, !1269, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2318, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2333, !2334, !2335, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2367, !2373, !2374, !2375, !2376, !2377, !2381, !2384, !2391, !2396, !2399, !2402, !2405, !2431, !2571, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2611, !2612, !2613, !2622, !2630, !2631, !2632, !2633, !2634, !2639, !2640, !2641, !2644, !2645, !2648, !2651, !2654, !2662, !2665, !2666, !2752, !2753, !2754, !2755, !2756, !2762, !2763, !2764, !2765, !2768, !2769, !2772, !2786, !2787, !2790, !2791, !2792, !2795, !2796, !2797, !2798, !2799, !2800, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2832, !2833, !2839, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2851, !2923, !2925, !2926, !2927, !2928, !2929, !2941, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2971, !2972, !2973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !967, file: !613, line: 752, baseType: !970, size: 192)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !971, line: 56, size: 192, elements: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!972 = !{!973, !974, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !971, line: 57, baseType: !307, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !970, file: !971, line: 58, baseType: !307, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !970, file: !971, line: 59, baseType: !407, size: 32, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !970, file: !971, line: 61, baseType: !407, size: 32, offset: 160)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !967, file: !613, line: 754, baseType: !7, size: 32, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !967, file: !613, line: 767, baseType: !329, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !967, file: !613, line: 768, baseType: !980, size: 32, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !981, line: 113, baseType: !982)
!981 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !981, line: 111, size: 32, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !982, file: !981, line: 112, baseType: !207, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !613, line: 770, baseType: !7, size: 32, offset: 352)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !967, file: !613, line: 771, baseType: !7, size: 32, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !967, file: !613, line: 774, baseType: !103, size: 32, offset: 416)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !967, file: !613, line: 775, baseType: !989, size: 128, offset: 448)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !990, line: 58, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!991 = !{!992, !998, !1003, !1004}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !989, file: !990, line: 59, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !994, line: 60, size: 64, elements: !995)
!994 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !993, file: !994, line: 61, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !990, line: 60, baseType: !999, size: 32, offset: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !990, line: 60, size: 32, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !999, file: !990, line: 61, baseType: !7, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !999, file: !990, line: 62, baseType: !207, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !989, file: !990, line: 65, baseType: !225, size: 16, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !989, file: !990, line: 65, baseType: !225, size: 16, offset: 112)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !967, file: !613, line: 776, baseType: !7, size: 32, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !967, file: !613, line: 777, baseType: !307, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !967, file: !613, line: 778, baseType: !966, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !967, file: !613, line: 787, baseType: !103, size: 32, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !967, file: !613, line: 788, baseType: !103, size: 32, offset: 800)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !967, file: !613, line: 790, baseType: !103, size: 32, offset: 832)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !967, file: !613, line: 792, baseType: !103, size: 32, offset: 864)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !967, file: !613, line: 793, baseType: !103, size: 32, offset: 896)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !967, file: !613, line: 794, baseType: !103, size: 32, offset: 928)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !967, file: !613, line: 795, baseType: !7, size: 32, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !967, file: !613, line: 797, baseType: !1016, size: 2048, offset: 1024)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !613, line: 551, size: 2048, elements: !1017)
!1017 = !{!1018, !1023, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1045, !1048, !1049, !1050}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1016, file: !613, line: 553, baseType: !1019, size: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !613, line: 411, size: 128, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1019, file: !613, line: 412, baseType: !307, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1019, file: !613, line: 413, baseType: !407, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1016, file: !613, line: 554, baseType: !1024, size: 192, align: 64, offset: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1025, line: 5, size: 192, align: 64, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1026 = !{!1027, !1028, !1030}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1024, file: !1025, line: 6, baseType: !307, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1024, file: !1025, line: 7, baseType: !1029, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1024, file: !1025, line: 8, baseType: !1029, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1016, file: !613, line: 555, baseType: !411, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1016, file: !613, line: 556, baseType: !411, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1016, file: !613, line: 558, baseType: !157, size: 128, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1016, file: !613, line: 559, baseType: !7, size: 32, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1016, file: !613, line: 561, baseType: !411, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1016, file: !613, line: 562, baseType: !411, size: 64, offset: 704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1016, file: !613, line: 563, baseType: !411, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1016, file: !613, line: 564, baseType: !411, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1016, file: !613, line: 565, baseType: !648, size: 64, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1016, file: !613, line: 566, baseType: !411, size: 64, offset: 960)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1016, file: !613, line: 568, baseType: !411, size: 64, offset: 1024)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1016, file: !613, line: 571, baseType: !103, size: 32, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1016, file: !613, line: 572, baseType: !1044, size: 64, offset: 1152)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1016, file: !613, line: 574, baseType: !1046, size: 64, offset: 1216)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !613, line: 49, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1016, file: !613, line: 576, baseType: !1046, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1016, file: !613, line: 578, baseType: !307, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1016, file: !613, line: 588, baseType: !1051, size: 512, align: 512, offset: 1536)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !613, line: 497, size: 512, align: 512, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1051, file: !613, line: 498, baseType: !411, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1051, file: !613, line: 499, baseType: !411, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1051, file: !613, line: 500, baseType: !411, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1051, file: !613, line: 501, baseType: !407, size: 32, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1051, file: !613, line: 502, baseType: !407, size: 32, offset: 224)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1051, file: !613, line: 503, baseType: !307, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1051, file: !613, line: 504, baseType: !307, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1051, file: !613, line: 505, baseType: !307, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1051, file: !613, line: 506, baseType: !1062, size: 64, align: 64, offset: 448)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !613, line: 445, size: 64, align: 64, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1062, file: !613, line: 446, baseType: !7, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1062, file: !613, line: 447, baseType: !7, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !967, file: !613, line: 798, baseType: !1067, size: 384, offset: 3072)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !613, line: 592, size: 384, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1067, file: !613, line: 593, baseType: !157, size: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1067, file: !613, line: 594, baseType: !307, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1067, file: !613, line: 595, baseType: !307, size: 64, offset: 192)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1067, file: !613, line: 596, baseType: !7, size: 32, offset: 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1067, file: !613, line: 597, baseType: !227, size: 16, offset: 288)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1067, file: !613, line: 598, baseType: !227, size: 16, offset: 304)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1067, file: !613, line: 600, baseType: !1076, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !967, file: !613, line: 799, baseType: !1078, size: 1792, offset: 3456)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !613, line: 610, size: 1792, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1169, !1170}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1078, file: !613, line: 611, baseType: !1024, size: 192, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1078, file: !613, line: 618, baseType: !411, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1078, file: !613, line: 619, baseType: !411, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1078, file: !613, line: 620, baseType: !411, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1078, file: !613, line: 621, baseType: !411, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1078, file: !613, line: 622, baseType: !411, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1078, file: !613, line: 629, baseType: !648, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1078, file: !613, line: 630, baseType: !411, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1078, file: !613, line: 631, baseType: !7, size: 32, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1078, file: !613, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1078, file: !613, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1078, file: !613, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1078, file: !613, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1078, file: !613, line: 662, baseType: !1094, size: 512, offset: 704)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1095)
!1095 = !{!1096, !1104, !1105, !1110, !1165, !1166, !1167, !1168}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1094, file: !39, line: 119, baseType: !1097, size: 256)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1098, line: 9, size: 256, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1097, file: !1098, line: 10, baseType: !1024, size: 192, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1097, file: !1098, line: 11, baseType: !1102, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1103, line: 29, baseType: !648)
!1103 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1094, file: !39, line: 120, baseType: !1102, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1094, file: !39, line: 121, baseType: !1106, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!38, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1094, file: !39, line: 122, baseType: !1111, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1113)
!1113 = !{!1114, !1139, !1140, !1143, !1148, !1149, !1160, !1164}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1112, file: !39, line: 160, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1116, file: !39, line: 216, baseType: !651, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1116, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1116, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1116, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1116, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1116, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1116, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1116, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1116, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1116, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1116, file: !39, line: 227, baseType: !227, size: 16, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1116, file: !39, line: 228, baseType: !227, size: 16, offset: 208)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1116, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1116, file: !39, line: 235, baseType: !1102, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1116, file: !39, line: 236, baseType: !1109, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1116, file: !39, line: 237, baseType: !1102, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1116, file: !39, line: 238, baseType: !1109, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1116, file: !39, line: 239, baseType: !1136, size: 4096, align: 512, offset: 512)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 4096, align: 512, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 8)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1112, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1112, file: !39, line: 162, baseType: !1141, size: 32, offset: 96)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !291, line: 96, baseType: !103)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1112, file: !39, line: 163, baseType: !1144, size: 32, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !380, line: 274, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !380, line: 274, size: 32, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1145, file: !380, line: 274, baseType: !384, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1112, file: !39, line: 164, baseType: !1109, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1112, file: !39, line: 165, baseType: !1150, size: 128, offset: 256)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1098, line: 14, size: 128, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1150, file: !1098, line: 15, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1025, line: 26, size: 128, elements: !1154)
!1154 = !{!1155, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1153, file: !1025, line: 27, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1025, line: 12, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1156, file: !1025, line: 13, baseType: !1029, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1153, file: !1025, line: 28, baseType: !1029, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1112, file: !39, line: 166, baseType: !1161, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1102}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1112, file: !39, line: 167, baseType: !1102, size: 64, offset: 448)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1094, file: !39, line: 123, baseType: !215, size: 8, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1094, file: !39, line: 124, baseType: !215, size: 8, offset: 456)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1094, file: !39, line: 125, baseType: !215, size: 8, offset: 464)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1094, file: !39, line: 126, baseType: !215, size: 8, offset: 472)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1078, file: !613, line: 671, baseType: !1094, size: 512, offset: 1216)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1078, file: !613, line: 679, baseType: !1171, size: 64, offset: 1728)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !967, file: !613, line: 800, baseType: !1173, size: 64, offset: 5248)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !613, line: 800, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !967, file: !613, line: 809, baseType: !1177, size: 64, offset: 5312)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !613, line: 70, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !967, file: !613, line: 825, baseType: !1180, size: 2048, align: 512, offset: 5632)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !613, line: 509, size: 2048, align: 512, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1180, file: !613, line: 511, baseType: !411, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1180, file: !613, line: 512, baseType: !411, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1180, file: !613, line: 513, baseType: !411, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1180, file: !613, line: 514, baseType: !411, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1180, file: !613, line: 515, baseType: !411, size: 64, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1180, file: !613, line: 516, baseType: !411, size: 64, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1180, file: !613, line: 518, baseType: !411, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1180, file: !613, line: 519, baseType: !411, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1180, file: !613, line: 520, baseType: !648, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1180, file: !613, line: 522, baseType: !411, size: 64, offset: 576)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1180, file: !613, line: 523, baseType: !411, size: 64, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1180, file: !613, line: 524, baseType: !648, size: 64, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1180, file: !613, line: 526, baseType: !648, size: 64, offset: 768)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1180, file: !613, line: 527, baseType: !411, size: 64, offset: 832)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1180, file: !613, line: 529, baseType: !411, size: 64, offset: 896)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1180, file: !613, line: 530, baseType: !411, size: 64, offset: 960)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1180, file: !613, line: 531, baseType: !411, size: 64, offset: 1024)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1180, file: !613, line: 532, baseType: !411, size: 64, offset: 1088)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1180, file: !613, line: 533, baseType: !411, size: 64, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1180, file: !613, line: 535, baseType: !411, size: 64, offset: 1216)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1180, file: !613, line: 536, baseType: !411, size: 64, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1180, file: !613, line: 537, baseType: !411, size: 64, offset: 1344)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1180, file: !613, line: 538, baseType: !411, size: 64, offset: 1408)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1180, file: !613, line: 539, baseType: !411, size: 64, offset: 1472)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1180, file: !613, line: 540, baseType: !411, size: 64, offset: 1536)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1180, file: !613, line: 541, baseType: !411, size: 64, offset: 1600)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1180, file: !613, line: 542, baseType: !411, size: 64, offset: 1664)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1180, file: !613, line: 543, baseType: !411, size: 64, offset: 1728)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !967, file: !613, line: 833, baseType: !7, size: 32, offset: 7680)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !967, file: !613, line: 836, baseType: !7, size: 32, offset: 7712)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !967, file: !613, line: 837, baseType: !103, size: 32, offset: 7744)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !967, file: !613, line: 838, baseType: !1214, size: 64, offset: 7808)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1216)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1217, line: 19, baseType: !1218)
!1217 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1217, line: 19, size: 64, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1218, file: !1217, line: 19, baseType: !1221, size: 64)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 1)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !967, file: !613, line: 839, baseType: !1225, size: 64, offset: 7872)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !967, file: !613, line: 840, baseType: !1216, size: 64, offset: 7936)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !967, file: !613, line: 841, baseType: !329, size: 64, offset: 8000)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !967, file: !613, line: 843, baseType: !227, size: 16, offset: 8064)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !967, file: !613, line: 845, baseType: !227, size: 16, offset: 8080)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !967, file: !613, line: 848, baseType: !103, size: 32, offset: 8096)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !967, file: !613, line: 849, baseType: !1232, size: 32, offset: 8128)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !613, line: 718, size: 32, elements: !1233)
!1233 = !{!1234, !1241}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1232, file: !613, line: 724, baseType: !1235, size: 32)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !613, line: 719, size: 32, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1235, file: !613, line: 720, baseType: !215, size: 8)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1235, file: !613, line: 721, baseType: !215, size: 8, offset: 8)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1235, file: !613, line: 722, baseType: !215, size: 8, offset: 16)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1235, file: !613, line: 723, baseType: !215, size: 8, offset: 24)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1232, file: !613, line: 725, baseType: !407, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !967, file: !613, line: 850, baseType: !157, size: 128, offset: 8192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !967, file: !613, line: 851, baseType: !1244, size: 64, offset: 8320)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !613, line: 60, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !967, file: !613, line: 855, baseType: !307, size: 64, offset: 8384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !967, file: !613, line: 856, baseType: !215, size: 8, offset: 8448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !967, file: !613, line: 857, baseType: !215, size: 8, offset: 8456)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !967, file: !613, line: 858, baseType: !103, size: 32, offset: 8480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !967, file: !613, line: 859, baseType: !157, size: 128, offset: 8512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !967, file: !613, line: 860, baseType: !103, size: 32, offset: 8640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !967, file: !613, line: 861, baseType: !157, size: 128, offset: 8704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !967, file: !613, line: 873, baseType: !1254, size: 256, offset: 8832)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !613, line: 376, size: 256, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1259}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1254, file: !613, line: 381, baseType: !307, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1254, file: !613, line: 384, baseType: !413, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1254, file: !613, line: 389, baseType: !413, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1254, file: !613, line: 392, baseType: !413, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !967, file: !613, line: 875, baseType: !157, size: 128, offset: 9088)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !967, file: !613, line: 877, baseType: !1262, size: 320, offset: 9216)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1263, line: 86, size: 320, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1264 = !{!1265, !1266, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1262, file: !1263, line: 87, baseType: !103, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1262, file: !1263, line: 88, baseType: !157, size: 128, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1262, file: !1263, line: 89, baseType: !157, size: 128, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !967, file: !613, line: 878, baseType: !1024, size: 192, align: 64, offset: 9536)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !967, file: !613, line: 881, baseType: !1270, size: 64, offset: 9728)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1272)
!1272 = !{!1273, !2237}
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !65, line: 734, baseType: !1274, size: 10240)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1271, file: !65, line: 734, size: 10240, elements: !1275)
!1275 = !{!1276, !1280, !1293, !2101, !2102, !2103, !2104, !2105, !2106, !2113, !2114, !2115, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2154, !2156, !2159, !2206, !2207, !2208, !2211, !2212, !2213, !2216, !2217, !2218, !2224, !2225}
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !65, line: 739, baseType: !1277, size: 512, align: 512)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !65, line: 739, size: 512, align: 512, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1277, file: !65, line: 747, baseType: !207, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1274, file: !65, line: 750, baseType: !1281, size: 128, offset: 512)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1282, line: 218, size: 128, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1283 = !{!1284, !1291, !1292}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1282, line: 219, baseType: !1285, size: 32)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1282, line: 219, size: 32, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1285, file: !1282, line: 220, baseType: !187, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1285, file: !1282, line: 221, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1282, line: 197, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1282, line: 197, elements: !542)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1281, file: !1282, line: 223, baseType: !7, size: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1281, file: !1282, line: 224, baseType: !329, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1274, file: !65, line: 752, baseType: !1294, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!307, !1297, !307, !307, !307, !307}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1299)
!1299 = !{!1300, !1306, !1307, !1309, !1310, !1311, !1312, !1313, !1365, !1560, !1569, !1570, !1571, !2091, !2092, !2093, !2094, !2096, !2097, !2100}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !28, line: 995, baseType: !1301, size: 128)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !28, line: 995, size: 128, elements: !1302)
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1301, file: !28, line: 996, baseType: !993, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1301, file: !28, line: 997, baseType: !951, size: 128, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1301, file: !28, line: 998, baseType: !7, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1298, file: !28, line: 1005, baseType: !187, size: 32, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1298, file: !28, line: 1006, baseType: !1308, size: 32, offset: 160)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !7)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1298, file: !28, line: 1007, baseType: !642, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1298, file: !28, line: 1008, baseType: !638, size: 256, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1298, file: !28, line: 1009, baseType: !499, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1298, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1298, file: !28, line: 1011, baseType: !1314, size: 256, offset: 640)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1315)
!1315 = !{!1316, !1337, !1361, !1362, !1363, !1364}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1314, file: !28, line: 949, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1318, line: 34, baseType: !1319)
!1318 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1318, line: 25, size: 64, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1319, file: !1318, line: 26, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1323, line: 27, baseType: !1324)
!1323 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1323, line: 13, size: 64, elements: !1325)
!1325 = !{!1326, !1336}
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1324, file: !1323, line: 14, baseType: !1327, size: 32)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1324, file: !1323, line: 14, size: 32, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1327, file: !1323, line: 15, baseType: !207, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !1323, line: 16, baseType: !1331, size: 32)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !1323, line: 16, size: 32, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1331, file: !1323, line: 18, baseType: !215, size: 8)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1331, file: !1323, line: 19, baseType: !1335, size: 24, offset: 8)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24, elements: !258)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1324, file: !1323, line: 26, baseType: !199, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1314, file: !28, line: 950, baseType: !1338, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1340)
!1340 = !{!1341, !1342, !1343, !1344, !1348, !1349, !1350, !1351}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1339, file: !13, line: 61, baseType: !980, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1339, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1339, file: !13, line: 63, baseType: !187, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1339, file: !13, line: 65, baseType: !1345, size: 256, offset: 128)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 256, elements: !1346)
!1346 = !{!1347}
!1347 = !DISubrange(count: 4)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1339, file: !13, line: 66, baseType: !530, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1339, file: !13, line: 68, baseType: !944, size: 192, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1339, file: !13, line: 69, baseType: !951, size: 128, align: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1339, file: !13, line: 70, baseType: !1352, offset: 768)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, elements: !1359)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1353, file: !13, line: 55, baseType: !103, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1353, file: !13, line: 56, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1359 = !{!1360}
!1360 = !DISubrange(count: -1)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1314, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1314, file: !28, line: 952, baseType: !344, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1314, file: !28, line: 952, baseType: !344, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1314, file: !28, line: 953, baseType: !103, size: 32, offset: 224)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1298, file: !28, line: 1012, baseType: !1366, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1369, line: 110, size: 1472, elements: !1370)
!1369 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1387, !1388, !1389, !1390, !1391, !1392, !1505, !1506, !1507, !1508, !1509, !1540, !1543, !1547, !1555}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1368, file: !1369, line: 111, baseType: !642, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1368, file: !1369, line: 112, baseType: !344, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1368, file: !1369, line: 113, baseType: !353, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1368, file: !1369, line: 114, baseType: !344, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1368, file: !1369, line: 115, baseType: !353, size: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1368, file: !1369, line: 116, baseType: !344, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1368, file: !1369, line: 117, baseType: !353, size: 32, offset: 224)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1368, file: !1369, line: 118, baseType: !344, size: 32, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1368, file: !1369, line: 119, baseType: !353, size: 32, offset: 288)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1368, file: !1369, line: 120, baseType: !7, size: 32, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1368, file: !1369, line: 121, baseType: !1382, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1383, line: 24, baseType: !1384)
!1383 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1383, line: 24, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1384, file: !1383, line: 24, baseType: !411, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1368, file: !1369, line: 122, baseType: !1382, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1368, file: !1369, line: 123, baseType: !1382, size: 64, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1368, file: !1369, line: 124, baseType: !1382, size: 64, offset: 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1368, file: !1369, line: 125, baseType: !1382, size: 64, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1368, file: !1369, line: 127, baseType: !219, size: 8, offset: 704)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1368, file: !1369, line: 129, baseType: !1393, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1395, line: 195, size: 1728, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1396 = !{!1397, !1398, !1403, !1408, !1409, !1412, !1413, !1418, !1419, !1420, !1421, !1424, !1425, !1426, !1428, !1429, !1469, !1490}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1394, file: !1395, line: 196, baseType: !980, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1394, file: !1395, line: 197, baseType: !1399, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1395, line: 28, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !216, line: 20, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !218, line: 26, baseType: !103)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 198, baseType: !1404, size: 192, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 198, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1404, file: !1395, line: 199, baseType: !157, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1404, file: !1395, line: 200, baseType: !1024, size: 192, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1394, file: !1395, line: 205, baseType: !851, size: 320, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1394, file: !1395, line: 206, baseType: !1410, size: 64, offset: 576)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1395, line: 206, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1394, file: !1395, line: 207, baseType: !329, size: 64, offset: 640)
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 208, baseType: !1414, size: 64, offset: 704)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 208, size: 64, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1414, file: !1395, line: 209, baseType: !691, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1414, file: !1395, line: 210, baseType: !691, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1394, file: !1395, line: 212, baseType: !691, size: 64, offset: 768)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1394, file: !1395, line: 213, baseType: !344, size: 32, offset: 832)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1394, file: !1395, line: 214, baseType: !353, size: 32, offset: 864)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1394, file: !1395, line: 215, baseType: !1422, size: 32, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1395, line: 31, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !407)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1394, file: !1395, line: 216, baseType: !227, size: 16, offset: 928)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1394, file: !1395, line: 217, baseType: !227, size: 16, offset: 944)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1394, file: !1395, line: 221, baseType: !1427, size: 16, offset: 960)
!1427 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1395, line: 228, baseType: !307, size: 64, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 245, baseType: !1430, size: 320, offset: 1088)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 245, size: 320, elements: !1431)
!1431 = !{!1432, !1461}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1430, file: !1395, line: 246, baseType: !1433, size: 320)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1395, line: 114, size: 320, elements: !1434)
!1434 = !{!1435, !1436, !1448, !1451, !1460}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1433, file: !1395, line: 116, baseType: !307, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1395, line: 117, baseType: !1437, size: 64, offset: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1395, line: 117, size: 64, elements: !1438)
!1438 = !{!1439, !1447}
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1395, line: 118, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1395, line: 118, size: 64, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1440, file: !1395, line: 120, baseType: !225, size: 16)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1440, file: !1395, line: 121, baseType: !1444, size: 48, offset: 16)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 6)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1437, file: !1395, line: 127, baseType: !307, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1433, file: !1395, line: 129, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1395, line: 102, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1433, file: !1395, line: 130, baseType: !1452, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1395, line: 108, size: 192, elements: !1454)
!1454 = !{!1455, !1456, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1453, file: !1395, line: 109, baseType: !951, size: 128, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1453, file: !1395, line: 110, baseType: !980, size: 32, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1453, file: !1395, line: 111, baseType: !1458, size: 8, offset: 160)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !1459)
!1459 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1433, file: !1395, line: 131, baseType: !176, size: 64, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1395, line: 247, baseType: !1462, size: 320)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !1395, line: 247, size: 320, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1462, file: !1395, line: 248, baseType: !307, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1462, file: !1395, line: 249, baseType: !307, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !1395, line: 250, baseType: !1449, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1462, file: !1395, line: 251, baseType: !1452, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1462, file: !1395, line: 252, baseType: !257, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 260, baseType: !1470, size: 256, offset: 1408)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 260, size: 256, elements: !1471)
!1471 = !{!1472, !1478}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1470, file: !1395, line: 261, baseType: !1473, size: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1395, line: 134, size: 256, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1473, file: !1395, line: 135, baseType: !329, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1473, file: !1395, line: 136, baseType: !1477, size: 256)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !1346)
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1395, line: 262, baseType: !1479, size: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1470, file: !1395, line: 262, size: 256, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1479, file: !1395, line: 264, baseType: !157, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1479, file: !1395, line: 265, baseType: !1483, size: 128, offset: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1484, line: 22, size: 128, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1485 = !{!1486, !1489}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1483, file: !1484, line: 23, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1484, line: 23, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1483, file: !1484, line: 24, baseType: !307, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1394, file: !1395, line: 280, baseType: !1491, size: 64, offset: 1664)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1395, line: 176, size: 192, elements: !1493)
!1493 = !{!1494, !1503, !1504}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1492, file: !1395, line: 177, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1395, line: 171, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!103, !1393, !1499, !1501, !1393}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1450)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1473)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1492, file: !1395, line: 178, baseType: !1393, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1492, file: !1395, line: 179, baseType: !1449, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1368, file: !1369, line: 130, baseType: !1393, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1368, file: !1369, line: 131, baseType: !1393, size: 64, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1368, file: !1369, line: 132, baseType: !1393, size: 64, offset: 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1368, file: !1369, line: 135, baseType: !329, size: 64, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1368, file: !1369, line: 137, baseType: !1510, size: 64, offset: 1088)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1512, line: 14, size: 1088, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1513 = !{!1514, !1515, !1524, !1525, !1526, !1527, !1528, !1529}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1511, file: !1512, line: 15, baseType: !980, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1511, file: !1512, line: 17, baseType: !1516, size: 320, offset: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1517, line: 22, size: 320, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1518 = !{!1519, !1520, !1521, !1522}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !1517, line: 23, baseType: !651, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1516, file: !1517, line: 24, baseType: !648, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1516, file: !1517, line: 26, baseType: !157, size: 128, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1516, file: !1517, line: 28, baseType: !1523, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1511, file: !1512, line: 19, baseType: !307, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1511, file: !1512, line: 20, baseType: !642, size: 64, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1511, file: !1512, line: 23, baseType: !534, size: 128, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1511, file: !1512, line: 24, baseType: !344, size: 32, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1511, file: !1512, line: 29, baseType: !642, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1511, file: !1512, line: 36, baseType: !1530, size: 320, offset: 768)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1531, line: 15, size: 320, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1532 = !{!1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1530, file: !1531, line: 16, baseType: !651, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1530, file: !1531, line: 18, baseType: !103, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1530, file: !1531, line: 19, baseType: !103, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1530, file: !1531, line: 20, baseType: !103, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1530, file: !1531, line: 21, baseType: !103, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1530, file: !1531, line: 22, baseType: !307, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1531, line: 23, baseType: !307, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1368, file: !1369, line: 138, baseType: !1541, size: 64, offset: 1152)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !65, line: 901, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1368, file: !1369, line: 139, baseType: !1544, size: 64, offset: 1216)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1546, line: 16, flags: DIFlagFwdDecl)
!1546 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1368, file: !1369, line: 140, baseType: !1548, size: 64, offset: 1280)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1369, line: 25, size: 64, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1369, line: 26, baseType: !207, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1549, file: !1369, line: 27, baseType: !103, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1549, file: !1369, line: 28, baseType: !1554, offset: 64)
!1554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, elements: !1359)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1369, line: 142, baseType: !1556, size: 128, offset: 1344)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1369, line: 142, size: 128, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1556, file: !1369, line: 143, baseType: !103, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1556, file: !1369, line: 144, baseType: !951, size: 128, align: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1298, file: !28, line: 1013, baseType: !1561, size: 256, offset: 960)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1562)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1561, file: !28, line: 971, baseType: !307, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1561, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1561, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1561, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1561, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1561, file: !28, line: 976, baseType: !499, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1298, file: !28, line: 1014, baseType: !763, size: 128, offset: 1216)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1298, file: !28, line: 1015, baseType: !338, size: 64, offset: 1344)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1298, file: !28, line: 1016, baseType: !1572, size: 64, offset: 1408)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1575)
!1575 = !{!1576, !1577, !1581, !1586, !1590, !1976, !1977, !1983, !1996, !2004, !2008, !2009, !2013, !2014, !2018, !2023, !2024, !2028, !2032, !2038, !2039, !2043, !2044, !2050, !2054, !2058, !2064, !2068, !2072, !2076, !2080, !2081, !2087}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1574, file: !28, line: 1915, baseType: !152, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1574, file: !28, line: 1916, baseType: !1578, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!499, !1297, !499, !103}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1574, file: !28, line: 1917, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!289, !1297, !257, !304, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1574, file: !28, line: 1918, baseType: !1587, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!289, !1297, !176, !304, !1585}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1574, file: !28, line: 1919, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!289, !1594, !1616}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1603, !1604, !1605, !1606}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1595, file: !28, line: 374, baseType: !1297, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1595, file: !28, line: 375, baseType: !499, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1595, file: !28, line: 376, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1594, !293}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1595, file: !28, line: 377, baseType: !329, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1595, file: !28, line: 378, baseType: !103, size: 32, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1595, file: !28, line: 379, baseType: !225, size: 16, offset: 288)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !28, line: 380, baseType: !1607, size: 64, offset: 320)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !28, line: 380, size: 64, elements: !1608)
!1608 = !{!1609, !1612}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1607, file: !28, line: 386, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1607, file: !28, line: 395, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!289, !329}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1618, line: 41, size: 320, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1630, !1971}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1617, file: !1618, line: 42, baseType: !215, size: 8)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1617, file: !1618, line: 43, baseType: !1458, size: 8, offset: 8)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1617, file: !1618, line: 44, baseType: !1458, size: 8, offset: 16)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1617, file: !1618, line: 45, baseType: !1458, size: 8, offset: 24)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1617, file: !1618, line: 46, baseType: !1458, size: 8, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 47, baseType: !1626, size: 64, offset: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 47, size: 64, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1626, file: !1618, line: 48, baseType: !304, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1626, file: !1618, line: 49, baseType: !103, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 61, baseType: !1631, size: 128, offset: 128)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 61, size: 128, elements: !1632)
!1632 = !{!1633, !1639}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1631, file: !1618, line: 67, baseType: !1634, size: 128)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1635, line: 17, size: 128, elements: !1636)
!1635 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1634, file: !1635, line: 19, baseType: !329, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1634, file: !1635, line: 20, baseType: !305, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !1618, line: 68, baseType: !1640, size: 128)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !1618, line: 68, size: 128, elements: !1641)
!1641 = !{!1642, !1970}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !1618, line: 69, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !1618, line: 69, size: 64, elements: !1644)
!1644 = !{!1645, !1648, !1655, !1961, !1969}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1643, file: !1618, line: 71, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1643, file: !1618, line: 72, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1618, line: 17, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1651, file: !1618, line: 18, baseType: !329, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1651, file: !1618, line: 19, baseType: !304, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1643, file: !1618, line: 73, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1659, line: 31, size: 128, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1660 = !{!1661, !1959, !1960}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1658, file: !1659, line: 32, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !1664)
!1664 = !{!1665, !1666, !1953, !1958}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1663, file: !65, line: 75, baseType: !307, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !65, line: 83, baseType: !1667, size: 320, offset: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1663, file: !65, line: 83, size: 320, elements: !1668)
!1668 = !{!1669, !1690, !1704, !1708, !1952}
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !65, line: 84, baseType: !1670, size: 320)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !65, line: 84, size: 320, elements: !1671)
!1671 = !{!1672, !1683, !1684, !1689}
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !65, line: 90, baseType: !1673, size: 128)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !65, line: 90, size: 128, elements: !1674)
!1674 = !{!1675, !1676, !1681, !1682}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1673, file: !65, line: 91, baseType: !157, size: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !65, line: 94, baseType: !1677, size: 128)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1673, file: !65, line: 94, size: 128, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1677, file: !65, line: 96, baseType: !329, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1677, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1673, file: !65, line: 102, baseType: !157, size: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1673, file: !65, line: 103, baseType: !157, size: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1670, file: !65, line: 106, baseType: !334, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, scope: !1670, file: !65, line: 107, baseType: !1685, size: 64, offset: 192)
!1685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1670, file: !65, line: 107, size: 64, elements: !1686)
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1685, file: !65, line: 108, baseType: !307, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1685, file: !65, line: 109, baseType: !307, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1670, file: !65, line: 117, baseType: !307, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !65, line: 119, baseType: !1691, size: 320)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !65, line: 119, size: 320, elements: !1692)
!1692 = !{!1693, !1694, !1697, !1698, !1699}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1691, file: !65, line: 124, baseType: !307, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1691, file: !65, line: 125, baseType: !1695, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1691, file: !65, line: 126, baseType: !307, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1691, file: !65, line: 127, baseType: !307, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !65, line: 128, baseType: !1700, size: 64, offset: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1691, file: !65, line: 128, size: 64, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1700, file: !65, line: 133, baseType: !307, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1700, file: !65, line: 138, baseType: !642, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !65, line: 141, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !65, line: 141, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1705, file: !65, line: 142, baseType: !307, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1667, file: !65, line: 144, baseType: !1709, size: 128)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !65, line: 144, size: 128, elements: !1710)
!1710 = !{!1711, !1951}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1709, file: !65, line: 146, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !57, line: 126, size: 1216, elements: !1714)
!1714 = !{!1715, !1725, !1746, !1757, !1758, !1759, !1760, !1933, !1934, !1935}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1713, file: !57, line: 127, baseType: !1716, size: 384)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !57, line: 21, size: 384, elements: !1717)
!1717 = !{!1718, !1719, !1721, !1722, !1723, !1724}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1716, file: !57, line: 22, baseType: !307, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1716, file: !57, line: 23, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1716, file: !57, line: 24, baseType: !1720, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1716, file: !57, line: 25, baseType: !307, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1716, file: !57, line: 26, baseType: !307, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1716, file: !57, line: 27, baseType: !307, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1713, file: !57, line: 128, baseType: !1726, size: 128, offset: 384)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1727, line: 105, size: 128, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1726, file: !1727, line: 110, baseType: !307, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1726, file: !1727, line: 118, baseType: !1731, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1727, line: 95, size: 448, elements: !1733)
!1733 = !{!1734, !1735, !1741, !1742, !1743, !1744, !1745}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1732, file: !1727, line: 96, baseType: !642, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1732, file: !1727, line: 97, baseType: !1736, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1727, line: 60, baseType: !1738)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1732, file: !1727, line: 98, baseType: !1736, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1732, file: !1727, line: 99, baseType: !1458, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1732, file: !1727, line: 100, baseType: !1458, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !1727, line: 101, baseType: !951, size: 128, align: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1732, file: !1727, line: 102, baseType: !1740, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1713, file: !57, line: 129, baseType: !1747, size: 256, offset: 512)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1748, line: 26, size: 256, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1747, file: !1748, line: 27, baseType: !7, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1747, file: !1748, line: 28, baseType: !1752, size: 192, offset: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1753, line: 43, size: 192, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1752, file: !1753, line: 44, baseType: !651, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1752, file: !1753, line: 45, baseType: !157, size: 128, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !57, line: 130, baseType: !56, size: 32, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1713, file: !57, line: 131, baseType: !7, size: 32, offset: 800)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1713, file: !57, line: 132, baseType: !307, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1713, file: !57, line: 133, baseType: !1761, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1763)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !57, line: 77, size: 192, elements: !1764)
!1764 = !{!1765, !1769, !1929}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1763, file: !57, line: 83, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1662}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1763, file: !57, line: 89, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1776, line: 512, size: 896, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1777 = !{!1778, !1896, !1897, !1904, !1911, !1921, !1922, !1923, !1925, !1927}
!1778 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !1776, line: 513, baseType: !1779, size: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !1776, line: 513, size: 320, elements: !1780)
!1780 = !{!1781, !1892, !1893, !1894, !1895}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1779, file: !1776, line: 514, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !1784)
!1784 = !{!1785, !1794, !1795, !1803, !1810, !1811, !1816, !1817, !1822, !1823, !1826, !1885, !1886, !1887, !1888, !1889, !1890}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !65, line: 628, baseType: !1786, size: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1783, file: !65, line: 628, size: 128, elements: !1787)
!1787 = !{!1788, !1793}
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !65, line: 629, baseType: !1789, size: 128)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1786, file: !65, line: 629, size: 128, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1789, file: !65, line: 631, baseType: !307, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1789, file: !65, line: 632, baseType: !307, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1786, file: !65, line: 635, baseType: !951, size: 128, align: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1783, file: !65, line: 639, baseType: !1270, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1783, file: !65, line: 640, baseType: !1796, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1797, line: 297, baseType: !1798)
!1797 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1797, line: 297, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1798, file: !1797, line: 297, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1802, line: 19, baseType: !307)
!1802 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !65, line: 646, baseType: !1804, size: 64, offset: 256)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1783, file: !65, line: 646, size: 64, elements: !1805)
!1805 = !{!1806, !1809}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1804, file: !65, line: 647, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !307)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1804, file: !65, line: 648, baseType: !1808, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1783, file: !65, line: 666, baseType: !103, size: 32, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1783, file: !65, line: 667, baseType: !1812, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1813, file: !65, line: 580, baseType: !851, size: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1783, file: !65, line: 670, baseType: !1458, size: 8, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1783, file: !65, line: 681, baseType: !1818, size: 256, offset: 512)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !65, line: 678, size: 256, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1818, file: !65, line: 679, baseType: !1024, size: 192, align: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1818, file: !65, line: 680, baseType: !307, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1783, file: !65, line: 689, baseType: !157, size: 128, offset: 768)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1783, file: !65, line: 691, baseType: !1824, size: 64, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1783, file: !65, line: 694, baseType: !1827, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1776, line: 563, size: 1024, elements: !1830)
!1830 = !{!1831, !1835, !1836, !1840, !1844, !1848, !1849, !1853, !1857, !1861, !1862, !1863, !1867, !1871, !1877, !1881}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1829, file: !1776, line: 564, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1782}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1829, file: !1776, line: 569, baseType: !1832, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1829, file: !1776, line: 571, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!103, !1782, !307}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1829, file: !1776, line: 572, baseType: !1841, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!103, !1782}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1829, file: !1776, line: 578, baseType: !1845, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!103, !1782, !307, !307, !307}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1829, file: !1776, line: 580, baseType: !1770, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1829, file: !1776, line: 581, baseType: !1850, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1773, !1774, !7}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1829, file: !1776, line: 582, baseType: !1854, size: 64, offset: 448)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1773, !1774, !307, !307}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1829, file: !1776, line: 584, baseType: !1858, size: 64, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!307, !1782}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1829, file: !1776, line: 588, baseType: !1770, size: 64, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1829, file: !1776, line: 591, baseType: !1770, size: 64, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1829, file: !1776, line: 597, baseType: !1864, size: 64, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!103, !1782, !307, !329, !103, !103}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1829, file: !1776, line: 603, baseType: !1868, size: 64, offset: 768)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!176, !1782}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1829, file: !1776, line: 613, baseType: !1872, size: 64, offset: 832)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!103, !1782, !1875}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1829, file: !1776, line: 625, baseType: !1878, size: 64, offset: 896)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!1875, !1782, !307}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1829, file: !1776, line: 633, baseType: !1882, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1662, !1782, !307}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1783, file: !65, line: 697, baseType: !307, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1783, file: !65, line: 699, baseType: !1297, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1783, file: !65, line: 700, baseType: !329, size: 64, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1783, file: !65, line: 711, baseType: !642, size: 64, offset: 1216)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1783, file: !65, line: 717, baseType: !1875, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1783, file: !65, line: 722, baseType: !1891, offset: 1344)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !542)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1779, file: !1776, line: 515, baseType: !703, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1779, file: !1776, line: 516, baseType: !307, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1779, file: !1776, line: 517, baseType: !307, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1779, file: !1776, line: 518, baseType: !307, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1776, line: 520, baseType: !64, size: 32, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1775, file: !1776, line: 522, baseType: !1898, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1802, line: 22, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 22, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1900, file: !1802, line: 22, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1802, line: 15, baseType: !307)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1775, file: !1776, line: 524, baseType: !1905, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1797, line: 372, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 372, size: 64, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1907, file: !1797, line: 372, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1802, line: 16, baseType: !307)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !1776, line: 527, baseType: !1912, size: 64, offset: 512)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1775, file: !1776, line: 527, size: 64, elements: !1913)
!1913 = !{!1914, !1920}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1912, file: !1776, line: 528, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1802, line: 21, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1802, line: 21, size: 64, elements: !1917)
!1917 = !{!1918}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1916, file: !1802, line: 21, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1802, line: 14, baseType: !307)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1912, file: !1776, line: 529, baseType: !1899, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1775, file: !1776, line: 534, baseType: !1662, size: 64, offset: 576)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1775, file: !1776, line: 535, baseType: !1662, size: 64, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1775, file: !1776, line: 541, baseType: !1924, size: 64, offset: 704)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1775, file: !1776, line: 545, baseType: !1926, size: 64, offset: 768)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1775, file: !1776, line: 549, baseType: !1928, size: 64, offset: 832)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1797, line: 520, baseType: !1662)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1763, file: !57, line: 100, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!103, !1712, !307, !307, !103}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1713, file: !57, line: 134, baseType: !329, size: 64, offset: 960)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1713, file: !57, line: 135, baseType: !103, size: 32, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1713, file: !57, line: 136, baseType: !1936, size: 128, offset: 1088)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1713, file: !57, line: 136, size: 128, elements: !1937)
!1937 = !{!1938, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1936, file: !57, line: 137, baseType: !1939, size: 128)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1940, line: 6, size: 128, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1939, file: !1940, line: 7, baseType: !411, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1939, file: !1940, line: 8, baseType: !411, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1936, file: !57, line: 138, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1936, file: !57, line: 138, elements: !1946)
!1946 = !{!1947, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1945, file: !57, line: 138, baseType: !1948)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !57, line: 138, elements: !542)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1945, file: !57, line: 138, baseType: !1950)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1939, elements: !1359)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1709, file: !65, line: 147, baseType: !329, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1667, file: !65, line: 161, baseType: !951, size: 128, align: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !65, line: 164, baseType: !1954, size: 32, offset: 384)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1663, file: !65, line: 164, size: 32, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1954, file: !65, line: 169, baseType: !207, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1954, file: !65, line: 177, baseType: !7, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1663, file: !65, line: 181, baseType: !207, size: 32, offset: 416)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1658, file: !1659, line: 33, baseType: !7, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1658, file: !1659, line: 34, baseType: !7, size: 32, offset: 96)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1643, file: !1618, line: 74, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1964, line: 296, size: 128, elements: !1965)
!1964 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1965 = !{!1966, !1967, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1963, file: !1964, line: 297, baseType: !187, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1963, file: !1964, line: 299, baseType: !703, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1963, file: !1964, line: 300, baseType: !329, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1643, file: !1618, line: 75, baseType: !329, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1640, file: !1618, line: 77, baseType: !304, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1618, line: 80, baseType: !1972, size: 64, offset: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1617, file: !1618, line: 80, size: 64, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1972, file: !1618, line: 81, baseType: !307, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1972, file: !1618, line: 82, baseType: !499, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1574, file: !28, line: 1920, baseType: !1591, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1574, file: !28, line: 1921, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!103, !1594, !1981, !7}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1574, file: !28, line: 1923, baseType: !1984, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!103, !1297, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1989)
!1989 = !{!1990, !1995}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1988, file: !28, line: 1859, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1992)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!1458, !1987, !176, !103, !499, !411, !7}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1988, file: !28, line: 1860, baseType: !499, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1574, file: !28, line: 1924, baseType: !1997, size: 64, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!2000, !1297, !2002}
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2001, line: 59, baseType: !7)
!2001 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !514, line: 31, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1574, file: !28, line: 1925, baseType: !2005, size: 64, offset: 576)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!293, !1297, !7, !307}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1574, file: !28, line: 1926, baseType: !2005, size: 64, offset: 640)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1574, file: !28, line: 1927, baseType: !2010, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!103, !1297, !1782}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1574, file: !28, line: 1928, baseType: !307, size: 64, offset: 768)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1574, file: !28, line: 1929, baseType: !2015, size: 64, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!103, !338, !1297}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1574, file: !28, line: 1930, baseType: !2019, size: 64, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!103, !1297, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !329)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1574, file: !28, line: 1931, baseType: !2015, size: 64, offset: 960)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1574, file: !28, line: 1932, baseType: !2025, size: 64, offset: 1024)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!103, !1297, !499, !499, !103}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1574, file: !28, line: 1933, baseType: !2029, size: 64, offset: 1088)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!103, !103, !1297, !103}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1574, file: !28, line: 1934, baseType: !2033, size: 64, offset: 1152)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!103, !1297, !103, !2036}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1574, file: !28, line: 1935, baseType: !1294, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1574, file: !28, line: 1936, baseType: !2040, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!103, !103}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1574, file: !28, line: 1937, baseType: !2033, size: 64, offset: 1344)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1574, file: !28, line: 1938, baseType: !2045, size: 64, offset: 1408)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!289, !2048, !1297, !1585, !304, !7}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !613, line: 59, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1574, file: !28, line: 1939, baseType: !2051, size: 64, offset: 1472)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!289, !1297, !1585, !2048, !304, !7}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1574, file: !28, line: 1940, baseType: !2055, size: 64, offset: 1536)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{null, !1297}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1574, file: !28, line: 1941, baseType: !2059, size: 64, offset: 1600)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!103, !1297, !103, !2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1574, file: !28, line: 1942, baseType: !2065, size: 64, offset: 1664)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!293, !1297, !103, !499, !499}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1574, file: !28, line: 1944, baseType: !2069, size: 64, offset: 1728)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !611, !1297}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1574, file: !28, line: 1948, baseType: !2073, size: 64, offset: 1792)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!289, !1297, !499, !1297, !499, !304, !7}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1574, file: !28, line: 1950, baseType: !2077, size: 64, offset: 1856)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!499, !1297, !499, !1297, !499, !499, !7}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1574, file: !28, line: 1953, baseType: !2025, size: 64, offset: 1920)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1574, file: !28, line: 1954, baseType: !2082, size: 64, offset: 1984)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!103, !2085, !7}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1574, file: !28, line: 1955, baseType: !2088, size: 64, offset: 2048)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!103, !2085, !1981, !7}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1298, file: !28, line: 1018, baseType: !411, size: 64, offset: 1472)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1298, file: !28, line: 1020, baseType: !329, size: 64, offset: 1536)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1298, file: !28, line: 1023, baseType: !329, size: 64, offset: 1600)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1298, file: !28, line: 1027, baseType: !2095, size: 64, offset: 1664)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1298, file: !28, line: 1029, baseType: !334, size: 64, offset: 1728)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1298, file: !28, line: 1030, baseType: !2098, size: 32, offset: 1792)
!2098 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2099, line: 8, baseType: !407)
!2099 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1298, file: !28, line: 1031, baseType: !2098, size: 32, offset: 1824)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1274, file: !65, line: 756, baseType: !307, size: 64, offset: 704)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1274, file: !65, line: 757, baseType: !307, size: 64, offset: 768)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1274, file: !65, line: 760, baseType: !307, size: 64, offset: 832)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1274, file: !65, line: 761, baseType: !307, size: 64, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1274, file: !65, line: 763, baseType: !307, size: 64, offset: 960)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1274, file: !65, line: 764, baseType: !2107, size: 64, offset: 1024)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1797, line: 299, baseType: !2109)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 299, size: 64, elements: !2110)
!2110 = !{!2111}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2109, file: !1797, line: 299, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1802, line: 18, baseType: !307)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1274, file: !65, line: 773, baseType: !207, size: 32, offset: 1088)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1274, file: !65, line: 785, baseType: !207, size: 32, offset: 1120)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1274, file: !65, line: 795, baseType: !2116, size: 64, offset: 1152)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2117, file: !65, line: 727, baseType: !411, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2117, file: !65, line: 728, baseType: !103, size: 32, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1274, file: !65, line: 801, baseType: !307, size: 64, offset: 1216)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1274, file: !65, line: 804, baseType: !642, size: 64, offset: 1280)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1274, file: !65, line: 806, baseType: !103, size: 32, offset: 1344)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1274, file: !65, line: 808, baseType: !187, size: 32, offset: 1376)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1274, file: !65, line: 823, baseType: !851, size: 320, offset: 1408)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1274, file: !65, line: 825, baseType: !157, size: 128, offset: 1728)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1274, file: !65, line: 845, baseType: !103, size: 32, offset: 1856)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1274, file: !65, line: 849, baseType: !307, size: 64, offset: 1920)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1274, file: !65, line: 850, baseType: !307, size: 64, offset: 1984)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1274, file: !65, line: 852, baseType: !307, size: 64, offset: 2048)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1274, file: !65, line: 853, baseType: !307, size: 64, offset: 2112)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1274, file: !65, line: 854, baseType: !644, size: 64, offset: 2176)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1274, file: !65, line: 855, baseType: !307, size: 64, offset: 2240)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1274, file: !65, line: 856, baseType: !307, size: 64, offset: 2304)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1274, file: !65, line: 857, baseType: !307, size: 64, offset: 2368)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1274, file: !65, line: 858, baseType: !307, size: 64, offset: 2432)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1274, file: !65, line: 865, baseType: !384, size: 32, offset: 2496)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1274, file: !65, line: 867, baseType: !187, size: 32, offset: 2528)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1274, file: !65, line: 869, baseType: !307, size: 64, offset: 2560)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1274, file: !65, line: 869, baseType: !307, size: 64, offset: 2624)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1274, file: !65, line: 869, baseType: !307, size: 64, offset: 2688)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1274, file: !65, line: 869, baseType: !307, size: 64, offset: 2752)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1274, file: !65, line: 870, baseType: !307, size: 64, offset: 2816)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1274, file: !65, line: 870, baseType: !307, size: 64, offset: 2880)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1274, file: !65, line: 870, baseType: !307, size: 64, offset: 2944)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1274, file: !65, line: 871, baseType: !307, size: 64, offset: 3008)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1274, file: !65, line: 871, baseType: !307, size: 64, offset: 3072)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1274, file: !65, line: 871, baseType: !307, size: 64, offset: 3136)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1274, file: !65, line: 871, baseType: !307, size: 64, offset: 3200)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1274, file: !65, line: 873, baseType: !2151, size: 3328, offset: 3264)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 3328, elements: !2152)
!2152 = !{!2153}
!2153 = !DISubrange(count: 52)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1274, file: !65, line: 875, baseType: !2155, size: 1280, offset: 6592)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1516, size: 1280, elements: !1346)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1274, file: !65, line: 877, baseType: !2157, size: 64, offset: 7872)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1274, file: !65, line: 880, baseType: !2160, size: 1088, offset: 7936)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2161, line: 72, baseType: !2162)
!2161 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2161, line: 23, size: 1088, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2171, !2172, !2173, !2174, !2201, !2202, !2203}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2162, file: !2161, line: 28, baseType: !411, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2162, file: !2161, line: 38, baseType: !644, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2162, file: !2161, line: 40, baseType: !307, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2162, file: !2161, line: 43, baseType: !851, size: 320, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2162, file: !2161, line: 44, baseType: !2169, size: 64, offset: 512)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2161, line: 44, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !2161, line: 48, baseType: !307, size: 64, offset: 576)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2162, file: !2161, line: 59, baseType: !638, size: 256, offset: 640)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2162, file: !2161, line: 60, baseType: !329, size: 64, offset: 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2162, file: !2161, line: 61, baseType: !2175, size: 64, offset: 960)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2178, line: 13, size: 1216, elements: !2179)
!2178 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2177, file: !2178, line: 14, baseType: !329, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2177, file: !2178, line: 15, baseType: !307, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2177, file: !2178, line: 17, baseType: !307, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2177, file: !2178, line: 17, baseType: !307, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2177, file: !2178, line: 18, baseType: !307, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2177, file: !2178, line: 18, baseType: !307, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2177, file: !2178, line: 19, baseType: !2187, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2177, file: !2178, line: 21, baseType: !293, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2177, file: !2178, line: 23, baseType: !293, size: 64, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2177, file: !2178, line: 24, baseType: !293, size: 64, offset: 576)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2177, file: !2178, line: 25, baseType: !293, size: 64, offset: 640)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2177, file: !2178, line: 26, baseType: !293, size: 64, offset: 704)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2177, file: !2178, line: 27, baseType: !293, size: 64, offset: 768)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2177, file: !2178, line: 28, baseType: !293, size: 64, offset: 832)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2177, file: !2178, line: 29, baseType: !293, size: 64, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2177, file: !2178, line: 30, baseType: !293, size: 64, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2177, file: !2178, line: 31, baseType: !293, size: 64, offset: 1024)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2177, file: !2178, line: 32, baseType: !293, size: 64, offset: 1088)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2177, file: !2178, line: 33, baseType: !293, size: 64, offset: 1152)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2162, file: !2161, line: 63, baseType: !207, size: 32, offset: 1024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2162, file: !2161, line: 69, baseType: !225, size: 16, offset: 1056)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2162, file: !2161, line: 70, baseType: !2204, size: 16, offset: 1072)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !216, line: 18, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !218, line: 23, baseType: !1427)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1274, file: !65, line: 882, baseType: !307, size: 64, offset: 9024)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1274, file: !65, line: 885, baseType: !187, size: 32, offset: 9088)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1274, file: !65, line: 886, baseType: !2209, size: 64, offset: 9152)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1274, file: !65, line: 901, baseType: !1541, size: 64, offset: 9216)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1274, file: !65, line: 904, baseType: !1297, size: 64, offset: 9280)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1274, file: !65, line: 906, baseType: !2214, size: 64, offset: 9344)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1274, file: !65, line: 930, baseType: !207, size: 32, offset: 9408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1274, file: !65, line: 933, baseType: !207, size: 32, offset: 9440)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1274, file: !65, line: 935, baseType: !2219, size: 64, offset: 9472)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2220)
!2220 = !{!2221}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2219, file: !81, line: 104, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1274, file: !65, line: 940, baseType: !642, size: 64, offset: 9536)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1274, file: !65, line: 942, baseType: !2226, size: 256, offset: 9600)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2227, line: 98, size: 256, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2228 = !{!2229, !2230, !2231}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2226, file: !2227, line: 99, baseType: !642, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2226, file: !2227, line: 100, baseType: !157, size: 128, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2226, file: !2227, line: 101, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2227, line: 21, baseType: !2233)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1271, file: !65, line: 986, baseType: !2238, offset: 10240)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, elements: !1359)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !967, file: !613, line: 882, baseType: !1270, size: 64, offset: 9792)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !967, file: !613, line: 884, baseType: !103, size: 32, offset: 9856)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !967, file: !613, line: 885, baseType: !103, size: 32, offset: 9888)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !967, file: !613, line: 886, baseType: !103, size: 32, offset: 9920)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !967, file: !613, line: 888, baseType: !103, size: 32, offset: 9952)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !967, file: !613, line: 890, baseType: !307, size: 64, offset: 9984)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !967, file: !613, line: 893, baseType: !7, size: 32, offset: 10048)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !967, file: !613, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !967, file: !613, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !967, file: !613, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !967, file: !613, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !967, file: !613, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !967, file: !613, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !967, file: !613, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !967, file: !613, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !967, file: !613, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !967, file: !613, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !967, file: !613, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !967, file: !613, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !967, file: !613, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !967, file: !613, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !967, file: !613, line: 969, baseType: !307, size: 64, offset: 10176)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !967, file: !613, line: 971, baseType: !2262, size: 448, offset: 10240)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2263)
!2263 = !{!2264, !2265, !2270}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2262, file: !44, line: 26, baseType: !307, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2262, file: !44, line: 27, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!293, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !44, line: 28, baseType: !2271, size: 320, offset: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2262, file: !44, line: 28, size: 320, elements: !2272)
!2272 = !{!2273, !2283, !2308}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2271, file: !44, line: 37, baseType: !2274, size: 320)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2271, file: !44, line: 30, size: 320, elements: !2275)
!2275 = !{!2276, !2278, !2279, !2280, !2281, !2282}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2274, file: !44, line: 31, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2274, file: !44, line: 32, baseType: !407, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2274, file: !44, line: 33, baseType: !407, size: 32, offset: 96)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2274, file: !44, line: 34, baseType: !407, size: 32, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2274, file: !44, line: 35, baseType: !411, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2274, file: !44, line: 36, baseType: !2277, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2271, file: !44, line: 47, baseType: !2284, size: 192)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2271, file: !44, line: 39, size: 192, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2307}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2284, file: !44, line: 40, baseType: !1141, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2284, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !44, line: 42, baseType: !2289, size: 64, offset: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !44, line: 42, size: 64, elements: !2290)
!2290 = !{!2291, !2299}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2289, file: !44, line: 43, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2294, line: 7, size: 128, elements: !2295)
!2294 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2295 = !{!2296, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2293, file: !2294, line: 8, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !291, line: 93, baseType: !501)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2293, file: !2294, line: 9, baseType: !501, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2289, file: !44, line: 44, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2302, line: 7, size: 64, elements: !2303)
!2302 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2303 = !{!2304, !2306}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2301, file: !2302, line: 8, baseType: !2305, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2302, line: 5, baseType: !1401)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2301, file: !2302, line: 9, baseType: !1401, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2284, file: !44, line: 46, baseType: !411, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2271, file: !44, line: 55, baseType: !2309, size: 256)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2271, file: !44, line: 49, size: 256, elements: !2310)
!2310 = !{!2311, !2314, !2315, !2316, !2317}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2309, file: !44, line: 50, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !44, line: 14, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2309, file: !44, line: 51, baseType: !103, size: 32, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2309, file: !44, line: 52, baseType: !103, size: 32, offset: 96)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2309, file: !44, line: 53, baseType: !307, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2309, file: !44, line: 54, baseType: !307, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !967, file: !613, line: 973, baseType: !2319, size: 32, offset: 10688)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !291, line: 28, baseType: !103)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !967, file: !613, line: 974, baseType: !2319, size: 32, offset: 10720)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !967, file: !613, line: 978, baseType: !307, size: 64, offset: 10752)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !967, file: !613, line: 987, baseType: !966, size: 64, offset: 10816)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !967, file: !613, line: 990, baseType: !966, size: 64, offset: 10880)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !967, file: !613, line: 995, baseType: !157, size: 128, offset: 10944)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !967, file: !613, line: 996, baseType: !157, size: 128, offset: 11072)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !967, file: !613, line: 997, baseType: !966, size: 64, offset: 11200)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !967, file: !613, line: 1005, baseType: !157, size: 128, offset: 11264)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !967, file: !613, line: 1006, baseType: !157, size: 128, offset: 11392)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !967, file: !613, line: 1009, baseType: !1338, size: 64, offset: 11520)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !967, file: !613, line: 1010, baseType: !2332, size: 512, offset: 11584)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 512, elements: !1346)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !967, file: !613, line: 1011, baseType: !157, size: 128, offset: 12096)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !967, file: !613, line: 1012, baseType: !157, size: 128, offset: 12224)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !967, file: !613, line: 1014, baseType: !2336, size: 64, offset: 12352)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !967, file: !613, line: 1017, baseType: !605, size: 64, offset: 12416)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !967, file: !613, line: 1020, baseType: !605, size: 64, offset: 12480)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !967, file: !613, line: 1023, baseType: !329, size: 64, offset: 12544)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !967, file: !613, line: 1025, baseType: !411, size: 64, offset: 12608)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !967, file: !613, line: 1026, baseType: !411, size: 64, offset: 12672)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !967, file: !613, line: 1031, baseType: !411, size: 64, offset: 12736)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !967, file: !613, line: 1032, baseType: !2344, size: 192, offset: 12800)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !613, line: 324, size: 192, elements: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2344, file: !613, line: 326, baseType: !411, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2344, file: !613, line: 327, baseType: !411, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2344, file: !613, line: 328, baseType: !651, size: 32, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !967, file: !613, line: 1041, baseType: !307, size: 64, offset: 12992)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !967, file: !613, line: 1042, baseType: !307, size: 64, offset: 13056)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !967, file: !613, line: 1045, baseType: !411, size: 64, offset: 13120)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !967, file: !613, line: 1048, baseType: !411, size: 64, offset: 13184)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !967, file: !613, line: 1051, baseType: !307, size: 64, offset: 13248)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !967, file: !613, line: 1052, baseType: !307, size: 64, offset: 13312)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !967, file: !613, line: 1055, baseType: !2356, size: 640, offset: 13376)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2357, line: 132, size: 640, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2358 = !{!2359, !2365, !2366}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2356, file: !2357, line: 133, baseType: !2360, size: 576)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, size: 576, elements: !258)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2357, line: 117, size: 192, elements: !2362)
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2361, file: !2357, line: 118, baseType: !411, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2361, file: !2357, line: 119, baseType: !1150, size: 128, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2356, file: !2357, line: 134, baseType: !7, size: 32, offset: 576)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2356, file: !2357, line: 135, baseType: !7, size: 32, offset: 608)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !967, file: !613, line: 1058, baseType: !2368, size: 448, offset: 14016)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2357, line: 144, size: 448, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2368, file: !2357, line: 145, baseType: !951, size: 128, align: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2368, file: !2357, line: 146, baseType: !638, size: 256, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2368, file: !2357, line: 147, baseType: !7, size: 32, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !967, file: !613, line: 1064, baseType: !1366, size: 64, offset: 14464)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !967, file: !613, line: 1067, baseType: !1366, size: 64, offset: 14528)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !967, file: !613, line: 1070, baseType: !1366, size: 64, offset: 14592)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !967, file: !613, line: 1074, baseType: !1393, size: 64, offset: 14656)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !967, file: !613, line: 1084, baseType: !2378, size: 128, offset: 14720)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !2379)
!2379 = !{!2380}
!2380 = !DISubrange(count: 16)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !967, file: !613, line: 1086, baseType: !2382, size: 64, offset: 14848)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !613, line: 55, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !967, file: !613, line: 1089, baseType: !2385, size: 64, offset: 14912)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2386, line: 12, size: 64, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2385, file: !2386, line: 13, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2386, line: 8, flags: DIFlagFwdDecl)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !967, file: !613, line: 1090, baseType: !2392, size: 128, offset: 14976)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2393, line: 13, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2394 = !{!2395}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2392, file: !2393, line: 14, baseType: !157, size: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !967, file: !613, line: 1097, baseType: !2397, size: 64, offset: 15104)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !613, line: 50, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !967, file: !613, line: 1100, baseType: !2400, size: 64, offset: 15168)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !613, line: 1100, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !967, file: !613, line: 1103, baseType: !2403, size: 64, offset: 15232)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !613, line: 53, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !967, file: !613, line: 1107, baseType: !2406, size: 64, offset: 15296)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2408, line: 31, size: 576, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2409 = !{!2410, !2411, !2414, !2417, !2420, !2421, !2424, !2427, !2428}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2407, file: !2408, line: 32, baseType: !980, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2407, file: !2408, line: 33, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2408, line: 9, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2407, file: !2408, line: 34, baseType: !2415, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2408, line: 10, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2407, file: !2408, line: 35, baseType: !2418, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2408, line: 8, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2407, file: !2408, line: 36, baseType: !1357, size: 64, offset: 256)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2407, file: !2408, line: 37, baseType: !2422, size: 64, offset: 320)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1395, line: 34, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2407, file: !2408, line: 38, baseType: !2425, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2408, line: 38, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2407, file: !2408, line: 39, baseType: !2425, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2407, file: !2408, line: 40, baseType: !2429, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2408, line: 12, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !967, file: !613, line: 1110, baseType: !2432, size: 64, offset: 15360)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2434, line: 93, size: 8768, elements: !2435)
!2434 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2435 = !{!2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2485, !2494, !2495, !2497, !2498, !2499, !2502, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2540, !2541, !2548, !2558, !2561, !2562, !2565, !2566, !2567, !2568, !2569, !2570}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2433, file: !2434, line: 94, baseType: !980, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2433, file: !2434, line: 95, baseType: !207, size: 32, offset: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2433, file: !2434, line: 96, baseType: !103, size: 32, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2433, file: !2434, line: 97, baseType: !103, size: 32, offset: 96)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2433, file: !2434, line: 98, baseType: !157, size: 128, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2433, file: !2434, line: 100, baseType: !944, size: 192, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2433, file: !2434, line: 103, baseType: !966, size: 64, offset: 448)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2433, file: !2434, line: 106, baseType: !2444, size: 192, offset: 512)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1546, line: 32, size: 192, elements: !2445)
!2445 = !{!2446, !2447}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2444, file: !1546, line: 33, baseType: !157, size: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2444, file: !1546, line: 34, baseType: !2448, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2449, line: 25, baseType: !2450)
!2449 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2449, line: 23, size: 64, elements: !2451)
!2451 = !{!2452}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2450, file: !2449, line: 24, baseType: !1221, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2433, file: !2434, line: 109, baseType: !530, size: 64, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2433, file: !2434, line: 112, baseType: !103, size: 32, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2433, file: !2434, line: 114, baseType: !103, size: 32, offset: 800)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2433, file: !2434, line: 115, baseType: !966, size: 64, offset: 832)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2433, file: !2434, line: 118, baseType: !103, size: 32, offset: 896)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !2434, line: 119, baseType: !7, size: 32, offset: 928)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2433, file: !2434, line: 121, baseType: !2460, size: 64, offset: 960)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2434, line: 80, size: 448, elements: !2462)
!2462 = !{!2463, !2464, !2470}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2461, file: !2434, line: 81, baseType: !207, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2461, file: !2434, line: 82, baseType: !2465, size: 128, offset: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2434, line: 75, size: 128, elements: !2466)
!2466 = !{!2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2465, file: !2434, line: 76, baseType: !966, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2465, file: !2434, line: 77, baseType: !2469, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2461, file: !2434, line: 83, baseType: !1747, size: 256, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2433, file: !2434, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2433, file: !2434, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2433, file: !2434, line: 138, baseType: !7, size: 32, offset: 1056)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2433, file: !2434, line: 139, baseType: !157, size: 128, offset: 1088)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2433, file: !2434, line: 142, baseType: !1094, size: 512, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2433, file: !2434, line: 143, baseType: !1102, size: 64, offset: 1728)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2433, file: !2434, line: 150, baseType: !2478, size: 256, offset: 1792)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2479, size: 256, elements: !2483)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2434, line: 38, size: 128, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2479, file: !2434, line: 39, baseType: !411, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2479, file: !2434, line: 40, baseType: !411, size: 64, offset: 64)
!2483 = !{!2484}
!2484 = !DISubrange(count: 2)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2433, file: !2434, line: 156, baseType: !2486, size: 192, offset: 2048)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2434, line: 66, size: 192, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2486, file: !2434, line: 67, baseType: !2489, size: 192)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2434, line: 47, size: 192, elements: !2490)
!2490 = !{!2491, !2492, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2489, file: !2434, line: 48, baseType: !644, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2489, file: !2434, line: 49, baseType: !644, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2489, file: !2434, line: 50, baseType: !644, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2433, file: !2434, line: 160, baseType: !2356, size: 640, offset: 2240)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2433, file: !2434, line: 163, baseType: !2496, size: 256, offset: 2880)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 256, elements: !1346)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2433, file: !2434, line: 169, baseType: !1338, size: 64, offset: 3136)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2433, file: !2434, line: 172, baseType: !103, size: 32, offset: 3200)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2433, file: !2434, line: 174, baseType: !2500, size: 64, offset: 3264)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2434, line: 174, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2433, file: !2434, line: 185, baseType: !2503, size: 64, offset: 3328)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !380, line: 860, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !380, line: 853, size: 64, elements: !2505)
!2505 = !{!2506, !2507}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2504, file: !380, line: 858, baseType: !379, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2504, file: !380, line: 859, baseType: !187, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2433, file: !2434, line: 186, baseType: !411, size: 64, offset: 3392)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2433, file: !2434, line: 186, baseType: !411, size: 64, offset: 3456)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2433, file: !2434, line: 186, baseType: !411, size: 64, offset: 3520)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2433, file: !2434, line: 186, baseType: !411, size: 64, offset: 3584)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2433, file: !2434, line: 187, baseType: !411, size: 64, offset: 3648)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2433, file: !2434, line: 188, baseType: !411, size: 64, offset: 3712)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2433, file: !2434, line: 189, baseType: !2344, size: 192, offset: 3776)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2433, file: !2434, line: 190, baseType: !307, size: 64, offset: 3968)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2433, file: !2434, line: 190, baseType: !307, size: 64, offset: 4032)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2433, file: !2434, line: 190, baseType: !307, size: 64, offset: 4096)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2433, file: !2434, line: 190, baseType: !307, size: 64, offset: 4160)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2433, file: !2434, line: 191, baseType: !307, size: 64, offset: 4224)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2433, file: !2434, line: 191, baseType: !307, size: 64, offset: 4288)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2433, file: !2434, line: 191, baseType: !307, size: 64, offset: 4352)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2433, file: !2434, line: 191, baseType: !307, size: 64, offset: 4416)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2433, file: !2434, line: 192, baseType: !307, size: 64, offset: 4480)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2433, file: !2434, line: 192, baseType: !307, size: 64, offset: 4544)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2433, file: !2434, line: 192, baseType: !307, size: 64, offset: 4608)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2433, file: !2434, line: 192, baseType: !307, size: 64, offset: 4672)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2433, file: !2434, line: 193, baseType: !307, size: 64, offset: 4736)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2433, file: !2434, line: 193, baseType: !307, size: 64, offset: 4800)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2433, file: !2434, line: 194, baseType: !2530, size: 448, offset: 4864)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2531, line: 12, size: 448, elements: !2532)
!2531 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2530, file: !2531, line: 15, baseType: !411, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2530, file: !2531, line: 17, baseType: !411, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2530, file: !2531, line: 19, baseType: !411, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2530, file: !2531, line: 21, baseType: !411, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2530, file: !2531, line: 29, baseType: !411, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2530, file: !2531, line: 35, baseType: !411, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2530, file: !2531, line: 44, baseType: !411, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2433, file: !2434, line: 202, baseType: !413, size: 64, offset: 5312)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2433, file: !2434, line: 213, baseType: !2542, size: 2048, offset: 5376)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2543, size: 2048, elements: !2379)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2544, line: 43, size: 128, elements: !2545)
!2544 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2543, file: !2544, line: 44, baseType: !306, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2543, file: !2544, line: 45, baseType: !306, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2433, file: !2434, line: 216, baseType: !2549, size: 448, offset: 7424)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2434, line: 30, size: 448, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2549, file: !2434, line: 31, baseType: !103, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2549, file: !2434, line: 32, baseType: !293, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2549, file: !2434, line: 33, baseType: !307, size: 64, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2549, file: !2434, line: 34, baseType: !411, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2549, file: !2434, line: 34, baseType: !411, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2549, file: !2434, line: 35, baseType: !307, size: 64, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2549, file: !2434, line: 35, baseType: !307, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2433, file: !2434, line: 219, baseType: !2559, size: 64, offset: 7872)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2434, line: 219, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2433, file: !2434, line: 222, baseType: !7, size: 32, offset: 7936)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2433, file: !2434, line: 223, baseType: !2563, size: 64, offset: 8000)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2434, line: 223, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2433, file: !2434, line: 230, baseType: !1458, size: 8, offset: 8064)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2433, file: !2434, line: 231, baseType: !1427, size: 16, offset: 8080)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2433, file: !2434, line: 232, baseType: !1427, size: 16, offset: 8096)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2433, file: !2434, line: 234, baseType: !1270, size: 64, offset: 8128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2433, file: !2434, line: 237, baseType: !638, size: 256, offset: 8192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2433, file: !2434, line: 243, baseType: !851, size: 320, offset: 8448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !967, file: !613, line: 1111, baseType: !2572, size: 64, offset: 15424)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2434, line: 20, size: 16640, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2573, file: !2434, line: 21, baseType: !187, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2573, file: !2434, line: 22, baseType: !980, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2573, file: !2434, line: 23, baseType: !944, size: 192, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2573, file: !2434, line: 24, baseType: !2579, size: 16384, offset: 256)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2580, size: 16384, elements: !262)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1546, line: 51, size: 256, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2580, file: !1546, line: 52, baseType: !2583, size: 256)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1546, line: 37, size: 256, elements: !2584)
!2584 = !{!2585, !2592, !2593, !2599}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2583, file: !1546, line: 39, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2587, line: 83, baseType: !2588)
!2587 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2587, line: 82, baseType: !2590)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !103}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2583, file: !1546, line: 40, baseType: !307, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2583, file: !1546, line: 46, baseType: !2594, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2587, line: 86, baseType: !2595)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2587, line: 85, baseType: !2597)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2583, file: !1546, line: 48, baseType: !2448, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !967, file: !613, line: 1112, baseType: !2448, size: 64, offset: 15488)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !967, file: !613, line: 1113, baseType: !2448, size: 64, offset: 15552)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !967, file: !613, line: 1115, baseType: !2448, size: 64, offset: 15616)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !967, file: !613, line: 1116, baseType: !2444, size: 192, offset: 15680)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !967, file: !613, line: 1117, baseType: !307, size: 64, offset: 15872)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !967, file: !613, line: 1118, baseType: !304, size: 64, offset: 15936)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !967, file: !613, line: 1119, baseType: !7, size: 32, offset: 16000)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !967, file: !613, line: 1121, baseType: !954, size: 64, offset: 16064)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !967, file: !613, line: 1125, baseType: !2609, size: 64, offset: 16128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !613, line: 43, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !967, file: !613, line: 1127, baseType: !344, size: 32, offset: 16192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !967, file: !613, line: 1128, baseType: !7, size: 32, offset: 16224)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !967, file: !613, line: 1130, baseType: !2614, size: 128, offset: 16256)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2615, line: 37, size: 128, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2614, file: !2615, line: 38, baseType: !103, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2614, file: !2615, line: 39, baseType: !207, size: 32, offset: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2614, file: !2615, line: 40, baseType: !2620, size: 64, offset: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2615, line: 24, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !967, file: !613, line: 1131, baseType: !2623, size: 256, offset: 16384)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2624, line: 12, size: 256, elements: !2625)
!2624 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2625 = !{!2626, !2627, !2628, !2629}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2623, file: !2624, line: 13, baseType: !257, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2623, file: !2624, line: 14, baseType: !307, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2623, file: !2624, line: 15, baseType: !307, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2623, file: !2624, line: 16, baseType: !1458, size: 8, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !967, file: !613, line: 1134, baseType: !411, size: 64, offset: 16640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !967, file: !613, line: 1135, baseType: !411, size: 64, offset: 16704)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !967, file: !613, line: 1138, baseType: !187, size: 32, offset: 16768)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !967, file: !613, line: 1141, baseType: !651, size: 32, offset: 16800)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !967, file: !613, line: 1143, baseType: !2635, size: 64, offset: 16832)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !613, line: 735, size: 64, elements: !2636)
!2636 = !{!2637}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2635, file: !613, line: 736, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !967, file: !613, line: 1147, baseType: !1153, size: 128, offset: 16896)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !967, file: !613, line: 1149, baseType: !966, size: 64, offset: 17024)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !967, file: !613, line: 1151, baseType: !2642, size: 64, offset: 17088)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !613, line: 1151, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !967, file: !613, line: 1188, baseType: !329, size: 64, offset: 17152)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !967, file: !613, line: 1191, baseType: !2646, size: 64, offset: 17216)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !613, line: 44, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !967, file: !613, line: 1194, baseType: !2649, size: 64, offset: 17280)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !613, line: 45, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !967, file: !613, line: 1197, baseType: !2652, size: 64, offset: 17344)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !613, line: 61, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !967, file: !613, line: 1199, baseType: !2655, size: 64, offset: 17408)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2657, line: 99, size: 128, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2658 = !{!2659, !2660, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2656, file: !2657, line: 100, baseType: !642, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2656, file: !2657, line: 101, baseType: !207, size: 32, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2656, file: !2657, line: 103, baseType: !227, size: 16, offset: 96)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !967, file: !613, line: 1202, baseType: !2663, size: 64, offset: 17472)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !613, line: 48, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !967, file: !613, line: 1205, baseType: !307, size: 64, offset: 17536)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !967, file: !613, line: 1206, baseType: !2667, size: 64, offset: 17600)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1546, line: 14, baseType: !2669)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1546, line: 12, size: 384, elements: !2670)
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, scope: !2669, file: !1546, line: 13, baseType: !2672, size: 384)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2669, file: !1546, line: 13, size: 384, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2672, file: !1546, line: 13, baseType: !103, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2672, file: !1546, line: 13, baseType: !103, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2672, file: !1546, line: 13, baseType: !103, size: 32, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2672, file: !1546, line: 13, baseType: !2678, size: 256, offset: 128)
!2678 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2679, line: 37, size: 256, elements: !2680)
!2679 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2680 = !{!2681, !2686, !2699, !2705, !2714, !2741, !2746}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2678, file: !2679, line: 42, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 39, size: 64, elements: !2683)
!2683 = !{!2684, !2685}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2682, file: !2679, line: 40, baseType: !2320, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2682, file: !2679, line: 41, baseType: !350, size: 32, offset: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2678, file: !2679, line: 50, baseType: !2687, size: 192)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 45, size: 192, elements: !2688)
!2688 = !{!2689, !2691, !2692, !2698}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2687, file: !2679, line: 46, baseType: !2690, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !291, line: 95, baseType: !103)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2687, file: !2679, line: 47, baseType: !103, size: 32, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2687, file: !2679, line: 48, baseType: !2693, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2679, line: 11, baseType: !2694)
!2694 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2679, line: 8, size: 64, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2694, file: !2679, line: 9, baseType: !103, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2694, file: !2679, line: 10, baseType: !329, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2687, file: !2679, line: 49, baseType: !103, size: 32, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2678, file: !2679, line: 57, baseType: !2700, size: 128)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 53, size: 128, elements: !2701)
!2701 = !{!2702, !2703, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2700, file: !2679, line: 54, baseType: !2320, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2700, file: !2679, line: 55, baseType: !350, size: 32, offset: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2700, file: !2679, line: 56, baseType: !2693, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2678, file: !2679, line: 66, baseType: !2706, size: 256)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 60, size: 256, elements: !2707)
!2707 = !{!2708, !2709, !2710, !2711, !2713}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2706, file: !2679, line: 61, baseType: !2320, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2706, file: !2679, line: 62, baseType: !350, size: 32, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2706, file: !2679, line: 63, baseType: !103, size: 32, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2706, file: !2679, line: 64, baseType: !2712, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !291, line: 94, baseType: !292)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2706, file: !2679, line: 65, baseType: !2712, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2678, file: !2679, line: 105, baseType: !2715, size: 256)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 69, size: 256, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2715, file: !2679, line: 70, baseType: !329, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !2715, file: !2679, line: 79, baseType: !2719, size: 192, offset: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2715, file: !2679, line: 79, size: 192, elements: !2720)
!2720 = !{!2721, !2722, !2723, !2730, !2735}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2719, file: !2679, line: 81, baseType: !103, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2719, file: !2679, line: 86, baseType: !1427, size: 16)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2719, file: !2679, line: 92, baseType: !2724, size: 192)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2719, file: !2679, line: 88, size: 192, elements: !2725)
!2725 = !{!2726, !2728, !2729}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2724, file: !2679, line: 89, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !1137)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2724, file: !2679, line: 90, baseType: !329, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2724, file: !2679, line: 91, baseType: !329, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2719, file: !2679, line: 97, baseType: !2731, size: 96)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2719, file: !2679, line: 94, size: 96, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2731, file: !2679, line: 95, baseType: !2727, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2731, file: !2679, line: 96, baseType: !408, size: 32, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2719, file: !2679, line: 103, baseType: !2736, size: 128)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2719, file: !2679, line: 99, size: 128, elements: !2737)
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2736, file: !2679, line: 100, baseType: !307, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2736, file: !2679, line: 101, baseType: !408, size: 32, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2736, file: !2679, line: 102, baseType: !408, size: 32, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2678, file: !2679, line: 111, baseType: !2742, size: 128)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 108, size: 128, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2742, file: !2679, line: 109, baseType: !293, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2742, file: !2679, line: 110, baseType: !103, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2678, file: !2679, line: 118, baseType: !2747, size: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2678, file: !2679, line: 114, size: 128, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2747, file: !2679, line: 115, baseType: !329, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2747, file: !2679, line: 116, baseType: !103, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2747, file: !2679, line: 117, baseType: !7, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !967, file: !613, line: 1208, baseType: !2530, size: 448, offset: 17664)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !967, file: !613, line: 1215, baseType: !411, size: 64, offset: 18112)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !967, file: !613, line: 1217, baseType: !411, size: 64, offset: 18176)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !967, file: !613, line: 1219, baseType: !411, size: 64, offset: 18240)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !967, file: !613, line: 1223, baseType: !2757, size: 64, offset: 18304)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2758, line: 99, baseType: !2759)
!2758 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2758, line: 99, size: 64, elements: !2760)
!2760 = !{!2761}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2759, file: !2758, line: 99, baseType: !1221, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !967, file: !613, line: 1225, baseType: !379, size: 32, offset: 18368)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !967, file: !613, line: 1226, baseType: !103, size: 32, offset: 18400)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !967, file: !613, line: 1227, baseType: !103, size: 32, offset: 18432)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !967, file: !613, line: 1231, baseType: !2766, size: 64, offset: 18496)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !613, line: 1231, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !967, file: !613, line: 1233, baseType: !157, size: 128, offset: 18560)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !967, file: !613, line: 1240, baseType: !2770, size: 64, offset: 18688)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !613, line: 62, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !967, file: !613, line: 1242, baseType: !2773, size: 64, offset: 18752)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2775, line: 392, size: 96, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2776 = !{!2777, !2783, !2785}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2774, file: !2775, line: 393, baseType: !2778, size: 32)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2775, line: 388, size: 32, elements: !2779)
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2778, file: !2775, line: 389, baseType: !2781, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2782, line: 46, baseType: !407)
!2782 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2774, file: !2775, line: 394, baseType: !2784, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2782, line: 42, baseType: !1401)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2774, file: !2775, line: 395, baseType: !2781, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !967, file: !613, line: 1244, baseType: !157, size: 128, offset: 18816)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !967, file: !613, line: 1245, baseType: !2788, size: 64, offset: 18944)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !613, line: 51, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !967, file: !613, line: 1246, baseType: !638, size: 256, offset: 19008)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !967, file: !613, line: 1247, baseType: !7, size: 32, offset: 19264)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !967, file: !613, line: 1250, baseType: !2793, size: 64, offset: 19328)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !613, line: 57, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !967, file: !613, line: 1251, baseType: !638, size: 256, offset: 19392)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !967, file: !613, line: 1252, baseType: !157, size: 128, offset: 19648)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !967, file: !613, line: 1259, baseType: !1875, size: 64, offset: 19776)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !967, file: !613, line: 1260, baseType: !1427, size: 16, offset: 19840)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !967, file: !613, line: 1261, baseType: !1427, size: 16, offset: 19856)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !967, file: !613, line: 1314, baseType: !2801, size: 64, offset: 19904)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2803, line: 62, size: 256, align: 256, elements: !2804)
!2803 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2802, file: !2803, line: 75, baseType: !408, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2802, file: !2803, line: 90, baseType: !408, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2802, file: !2803, line: 112, baseType: !412, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2802, file: !2803, line: 132, baseType: !408, size: 32, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2802, file: !2803, line: 140, baseType: !408, size: 32, offset: 160)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2802, file: !2803, line: 149, baseType: !408, size: 32, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2802, file: !2803, line: 154, baseType: !2812, offset: 224)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, elements: !1359)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !967, file: !613, line: 1315, baseType: !407, size: 32, offset: 19968)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !967, file: !613, line: 1316, baseType: !407, size: 32, offset: 20000)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !967, file: !613, line: 1321, baseType: !307, size: 64, offset: 20032)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !967, file: !613, line: 1325, baseType: !103, size: 32, offset: 20096)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !967, file: !613, line: 1326, baseType: !103, size: 32, offset: 20128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !967, file: !613, line: 1327, baseType: !103, size: 32, offset: 20160)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !967, file: !613, line: 1328, baseType: !103, size: 32, offset: 20192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !967, file: !613, line: 1329, baseType: !951, size: 128, align: 64, offset: 20224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !967, file: !613, line: 1332, baseType: !2822, size: 128, offset: 20352)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2823, line: 51, size: 128, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2824 = !{!2825, !2830, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2822, file: !2823, line: 60, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2827, line: 7, size: 64, elements: !2828)
!2827 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2826, file: !2827, line: 12, baseType: !1218, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2822, file: !2823, line: 63, baseType: !1458, size: 8, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2822, file: !2823, line: 70, baseType: !1458, size: 8, offset: 72)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !967, file: !613, line: 1335, baseType: !2048, size: 64, offset: 20480)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !967, file: !613, line: 1337, baseType: !2834, size: 128, offset: 20544)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2823, line: 39, size: 128, elements: !2835)
!2835 = !{!2836, !2837, !2838}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2834, file: !2823, line: 40, baseType: !1662, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2834, file: !2823, line: 42, baseType: !408, size: 32, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2834, file: !2823, line: 43, baseType: !408, size: 32, offset: 96)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !967, file: !613, line: 1340, baseType: !2840, size: 64, offset: 20672)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !613, line: 69, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !967, file: !613, line: 1351, baseType: !103, size: 32, offset: 20736)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !967, file: !613, line: 1352, baseType: !103, size: 32, offset: 20768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !967, file: !613, line: 1354, baseType: !307, size: 64, offset: 20800)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !967, file: !613, line: 1364, baseType: !411, size: 64, offset: 20864)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !967, file: !613, line: 1365, baseType: !411, size: 64, offset: 20928)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !967, file: !613, line: 1412, baseType: !307, size: 64, offset: 20992)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !967, file: !613, line: 1453, baseType: !2849, size: 64, offset: 21056)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !613, line: 1453, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !967, file: !613, line: 1457, baseType: !2852, size: 64, offset: 21120)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !2854)
!2854 = !{!2855, !2856, !2875, !2878, !2879, !2912, !2922}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2853, file: !81, line: 62, baseType: !80, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !81, line: 64, baseType: !2857, size: 192, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2853, file: !81, line: 64, size: 192, elements: !2858)
!2858 = !{!2859, !2870}
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !81, line: 65, baseType: !2860, size: 192)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !81, line: 65, size: 192, elements: !2861)
!2861 = !{!2862, !2869}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2860, file: !81, line: 66, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2864, line: 50, size: 128, elements: !2865)
!2864 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2865 = !{!2866, !2867, !2868}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2863, file: !2864, line: 52, baseType: !307, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2863, file: !2864, line: 54, baseType: !7, size: 32, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2863, file: !2864, line: 55, baseType: !7, size: 32, offset: 96)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2860, file: !81, line: 67, baseType: !307, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !81, line: 70, baseType: !2871, size: 192)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !81, line: 70, size: 192, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2871, file: !81, line: 71, baseType: !951, size: 128, align: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2871, file: !81, line: 72, baseType: !307, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2853, file: !81, line: 76, baseType: !2876, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2853, file: !81, line: 77, baseType: !307, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2853, file: !81, line: 79, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2864, line: 25, size: 256, elements: !2882)
!2882 = !{!2883, !2889, !2893}
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2864, line: 26, baseType: !2884, size: 128)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2864, line: 26, size: 128, elements: !2885)
!2885 = !{!2886, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2884, file: !2864, line: 27, baseType: !2887, size: 128)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !2379)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2884, file: !2864, line: 28, baseType: !2887, size: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2881, file: !2864, line: 31, baseType: !2890, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2864, line: 23, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2864, line: 33, baseType: !2894, size: 64, offset: 192)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2864, line: 33, size: 64, elements: !2895)
!2895 = !{!2896, !2902, !2907}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2894, file: !2864, line: 38, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2864, line: 34, size: 64, elements: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2897, file: !2864, line: 35, baseType: !1401, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2897, file: !2864, line: 36, baseType: !215, size: 8, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2897, file: !2864, line: 37, baseType: !215, size: 8, offset: 40)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2894, file: !2864, line: 42, baseType: !2903, size: 16)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2864, line: 39, size: 16, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2903, file: !2864, line: 40, baseType: !215, size: 8)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2903, file: !2864, line: 41, baseType: !215, size: 8, offset: 8)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2894, file: !2864, line: 46, baseType: !2908, size: 16)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2864, line: 43, size: 16, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2908, file: !2864, line: 44, baseType: !215, size: 8)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2908, file: !2864, line: 45, baseType: !215, size: 8, offset: 8)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2853, file: !81, line: 81, baseType: !2913, size: 64, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2914, file: !81, line: 86, baseType: !2876, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2914, file: !81, line: 87, baseType: !307, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2914, file: !81, line: 88, baseType: !307, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2914, file: !81, line: 89, baseType: !307, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2914, file: !81, line: 90, baseType: !1458, size: 8, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2914, file: !81, line: 92, baseType: !2913, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2853, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !967, file: !613, line: 1463, baseType: !2924, offset: 21184)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !613, line: 739, elements: !542)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !967, file: !613, line: 1470, baseType: !951, size: 128, align: 64, offset: 21184)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !967, file: !613, line: 1471, baseType: !980, size: 32, offset: 21312)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !967, file: !613, line: 1472, baseType: !103, size: 32, offset: 21344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !967, file: !613, line: 1474, baseType: !966, size: 64, offset: 21376)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !967, file: !613, line: 1475, baseType: !2930, size: 320, offset: 21440)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2931, line: 11, size: 320, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2932 = !{!2933, !2934, !2935, !2940}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2930, file: !2931, line: 16, baseType: !534, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2930, file: !2931, line: 17, baseType: !307, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2930, file: !2931, line: 18, baseType: !2936, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2930, file: !2931, line: 19, baseType: !407, size: 32, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !967, file: !613, line: 1478, baseType: !2942, size: 64, offset: 21760)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2944, line: 49, size: 512, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2952, !2953, !2954, !2956}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2943, file: !2944, line: 50, baseType: !2942, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2943, file: !2944, line: 51, baseType: !329, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2943, file: !2944, line: 52, baseType: !307, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2943, file: !2944, line: 53, baseType: !307, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2943, file: !2944, line: 54, baseType: !2951, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2943, file: !2944, line: 56, baseType: !7, size: 32, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2943, file: !2944, line: 58, baseType: !7, size: 32, offset: 352)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2943, file: !2944, line: 59, baseType: !2955, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !411)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2943, file: !2944, line: 60, baseType: !2187, size: 64, offset: 448)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !967, file: !613, line: 1482, baseType: !980, size: 32, offset: 21824)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !967, file: !613, line: 1489, baseType: !329, size: 64, offset: 21888)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !967, file: !613, line: 1504, baseType: !329, size: 64, offset: 21952)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !967, file: !613, line: 1505, baseType: !412, size: 64, offset: 22016)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !967, file: !613, line: 1506, baseType: !411, size: 64, offset: 22080)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !967, file: !613, line: 1507, baseType: !412, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !967, file: !613, line: 1508, baseType: !412, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !967, file: !613, line: 1509, baseType: !412, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !967, file: !613, line: 1510, baseType: !951, size: 128, align: 64, offset: 22208)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !967, file: !613, line: 1511, baseType: !103, size: 32, offset: 22336)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !967, file: !613, line: 1515, baseType: !2968, size: 64, offset: 22400)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !994, line: 56, size: 64, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2968, file: !994, line: 57, baseType: !997, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !967, file: !613, line: 1518, baseType: !2968, size: 64, offset: 22464)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !967, file: !613, line: 1528, baseType: !951, size: 128, align: 64, offset: 22528)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !967, file: !613, line: 1552, baseType: !2974, size: 35328, offset: 23040)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2975, line: 430, size: 35328, elements: !2976)
!2975 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2976 = !{!2977, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3006, !3007, !3008, !3009, !3010, !3011, !3014, !3015, !3016, !3017}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2974, file: !2975, line: 432, baseType: !2978, size: 192)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 192, elements: !258)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2980, line: 16, size: 64, elements: !2981)
!2980 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2979, file: !2980, line: 17, baseType: !225, size: 16)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2979, file: !2980, line: 18, baseType: !225, size: 16, offset: 16)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2979, file: !2980, line: 19, baseType: !225, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2979, file: !2980, line: 19, baseType: !225, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2979, file: !2980, line: 19, baseType: !225, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2979, file: !2980, line: 19, baseType: !225, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2979, file: !2980, line: 19, baseType: !225, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2979, file: !2980, line: 20, baseType: !225, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2979, file: !2980, line: 20, baseType: !225, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2979, file: !2980, line: 20, baseType: !225, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2979, file: !2980, line: 20, baseType: !225, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2979, file: !2980, line: 20, baseType: !225, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2979, file: !2980, line: 20, baseType: !225, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2974, file: !2975, line: 436, baseType: !307, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2974, file: !2975, line: 440, baseType: !227, size: 16, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2974, file: !2975, line: 441, baseType: !227, size: 16, offset: 272)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2974, file: !2975, line: 442, baseType: !227, size: 16, offset: 288)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2974, file: !2975, line: 443, baseType: !227, size: 16, offset: 304)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2974, file: !2975, line: 447, baseType: !307, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2974, file: !2975, line: 448, baseType: !307, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2974, file: !2975, line: 459, baseType: !3003, size: 256, offset: 448)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3004, size: 256, elements: !1346)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2975, line: 428, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2974, file: !2975, line: 461, baseType: !307, size: 64, offset: 704)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2974, file: !2975, line: 463, baseType: !307, size: 64, offset: 768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2974, file: !2975, line: 465, baseType: !307, size: 64, offset: 832)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2974, file: !2975, line: 466, baseType: !307, size: 64, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2974, file: !2975, line: 467, baseType: !307, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2974, file: !2975, line: 473, baseType: !3012, size: 64, offset: 1024)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2975, line: 10, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2974, file: !2975, line: 480, baseType: !307, size: 64, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2974, file: !2975, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2974, file: !2975, line: 491, baseType: !407, size: 32, offset: 1184)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2974, file: !2975, line: 501, baseType: !3018, size: 33792, offset: 1536)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3019, line: 448, size: 33792, elements: !3020)
!3019 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3020 = !{!3021, !3022, !3023, !3185, !3186, !3192, !3193}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3018, file: !3019, line: 461, baseType: !7, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3018, file: !3019, line: 468, baseType: !307, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3018, file: !3019, line: 476, baseType: !3024, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3019, line: 356, size: 33280, align: 512, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3025, file: !3019, line: 358, baseType: !7, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3025, file: !3019, line: 361, baseType: !7, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3025, file: !3019, line: 364, baseType: !411, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3025, file: !3019, line: 367, baseType: !411, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3025, file: !3019, line: 370, baseType: !411, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3025, file: !3019, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3025, file: !3019, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3025, file: !3019, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3025, file: !3019, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3025, file: !3019, line: 397, baseType: !3037, size: 32768, offset: 512)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3019, line: 348, size: 32768, elements: !3038)
!3038 = !{!3039, !3054, !3091, !3168, !3181}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3037, file: !3019, line: 349, baseType: !3040, size: 896)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3019, line: 12, size: 896, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3053}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3040, file: !3019, line: 13, baseType: !407, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3040, file: !3019, line: 14, baseType: !407, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3040, file: !3019, line: 15, baseType: !407, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3040, file: !3019, line: 16, baseType: !407, size: 32, offset: 96)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3040, file: !3019, line: 17, baseType: !407, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3040, file: !3019, line: 18, baseType: !407, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3040, file: !3019, line: 19, baseType: !407, size: 32, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3040, file: !3019, line: 22, baseType: !3050, size: 640, offset: 224)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 640, elements: !3051)
!3051 = !{!3052}
!3052 = !DISubrange(count: 20)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3040, file: !3019, line: 25, baseType: !407, size: 32, offset: 864)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3037, file: !3019, line: 350, baseType: !3055, size: 4096, align: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3019, line: 34, size: 4096, align: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3076, !3077, !3078, !3080, !3082, !3086}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3055, file: !3019, line: 35, baseType: !225, size: 16)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3055, file: !3019, line: 36, baseType: !225, size: 16, offset: 16)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3055, file: !3019, line: 37, baseType: !225, size: 16, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3055, file: !3019, line: 38, baseType: !225, size: 16, offset: 48)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3019, line: 39, baseType: !3062, size: 128, offset: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3019, line: 39, size: 128, elements: !3063)
!3063 = !{!3064, !3069}
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !3019, line: 40, baseType: !3065, size: 128)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3019, line: 40, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3065, file: !3019, line: 41, baseType: !411, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3065, file: !3019, line: 42, baseType: !411, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !3019, line: 44, baseType: !3070, size: 128)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3019, line: 44, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3070, file: !3019, line: 45, baseType: !407, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3070, file: !3019, line: 46, baseType: !407, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3070, file: !3019, line: 47, baseType: !407, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3070, file: !3019, line: 48, baseType: !407, size: 32, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3055, file: !3019, line: 51, baseType: !407, size: 32, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3055, file: !3019, line: 52, baseType: !407, size: 32, offset: 224)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3055, file: !3019, line: 55, baseType: !3079, size: 1024, offset: 256)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 1024, elements: !420)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3055, file: !3019, line: 58, baseType: !3081, size: 2048, offset: 1280)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 2048, elements: !262)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3055, file: !3019, line: 60, baseType: !3083, size: 384, offset: 3328)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 384, elements: !3084)
!3084 = !{!3085}
!3085 = !DISubrange(count: 12)
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3019, line: 62, baseType: !3087, size: 384, offset: 3712)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3019, line: 62, size: 384, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3087, file: !3019, line: 63, baseType: !3083, size: 384)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3087, file: !3019, line: 64, baseType: !3083, size: 384)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3037, file: !3019, line: 351, baseType: !3092, size: 1088)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3019, line: 79, size: 1088, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3167}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3092, file: !3019, line: 80, baseType: !407, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3092, file: !3019, line: 81, baseType: !407, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3092, file: !3019, line: 82, baseType: !407, size: 32, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3092, file: !3019, line: 83, baseType: !407, size: 32, offset: 96)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3092, file: !3019, line: 84, baseType: !407, size: 32, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3092, file: !3019, line: 85, baseType: !407, size: 32, offset: 160)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3092, file: !3019, line: 86, baseType: !407, size: 32, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3092, file: !3019, line: 88, baseType: !3050, size: 640, offset: 224)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3092, file: !3019, line: 89, baseType: !215, size: 8, offset: 864)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3092, file: !3019, line: 90, baseType: !215, size: 8, offset: 872)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3092, file: !3019, line: 91, baseType: !215, size: 8, offset: 880)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3092, file: !3019, line: 92, baseType: !215, size: 8, offset: 888)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3092, file: !3019, line: 93, baseType: !215, size: 8, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3092, file: !3019, line: 94, baseType: !215, size: 8, offset: 904)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3092, file: !3019, line: 95, baseType: !3109, size: 64, offset: 960)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3111, line: 11, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3110, file: !3111, line: 12, baseType: !293, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3110, file: !3111, line: 13, baseType: !3115, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3117, line: 103, size: 1344, elements: !3118)
!3117 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3147, !3148, !3149}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3116, file: !3117, line: 109, baseType: !307, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3116, file: !3117, line: 110, baseType: !307, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3116, file: !3117, line: 111, baseType: !307, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3116, file: !3117, line: 112, baseType: !307, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3116, file: !3117, line: 113, baseType: !307, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3116, file: !3117, line: 114, baseType: !307, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3116, file: !3117, line: 117, baseType: !307, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3116, file: !3117, line: 118, baseType: !307, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3116, file: !3117, line: 119, baseType: !307, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3116, file: !3117, line: 120, baseType: !307, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3116, file: !3117, line: 121, baseType: !307, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3116, file: !3117, line: 122, baseType: !307, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3116, file: !3117, line: 123, baseType: !307, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3116, file: !3117, line: 124, baseType: !307, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3116, file: !3117, line: 125, baseType: !307, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3116, file: !3117, line: 139, baseType: !307, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3116, file: !3117, line: 142, baseType: !307, size: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 144, baseType: !3137, size: 64, offset: 1088)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 144, size: 64, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3137, file: !3117, line: 146, baseType: !225, size: 16)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3137, file: !3117, line: 148, baseType: !411, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3137, file: !3117, line: 150, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3117, line: 59, size: 64, elements: !3143)
!3143 = !{!3144, !3145, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3142, file: !3117, line: 61, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3142, file: !3117, line: 63, baseType: !411, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3142, file: !3117, line: 65, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3116, file: !3117, line: 153, baseType: !307, size: 64, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3116, file: !3117, line: 154, baseType: !307, size: 64, offset: 1216)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 156, baseType: !3150, size: 64, offset: 1280)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 156, size: 64, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3150, file: !3117, line: 158, baseType: !225, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3150, file: !3117, line: 160, baseType: !411, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3150, file: !3117, line: 162, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3117, line: 69, size: 64, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3155, file: !3117, line: 71, baseType: !411, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3155, file: !3117, line: 73, baseType: !411, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3155, file: !3117, line: 75, baseType: !411, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3155, file: !3117, line: 77, baseType: !411, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3155, file: !3117, line: 80, baseType: !411, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3155, file: !3117, line: 83, baseType: !411, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3155, file: !3117, line: 86, baseType: !411, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3155, file: !3117, line: 88, baseType: !411, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3155, file: !3117, line: 93, baseType: !411, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3155, file: !3117, line: 100, baseType: !411, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3092, file: !3019, line: 96, baseType: !407, size: 32, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3037, file: !3019, line: 352, baseType: !3169, size: 4608, align: 512)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3019, line: 333, size: 4608, align: 512, elements: !3170)
!3170 = !{!3171, !3172, !3179}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3169, file: !3019, line: 334, baseType: !3055, size: 4096, align: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3169, file: !3019, line: 335, baseType: !3173, size: 512, offset: 4096)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3019, line: 312, size: 512, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3173, file: !3019, line: 313, baseType: !411, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3173, file: !3019, line: 314, baseType: !411, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3173, file: !3019, line: 315, baseType: !3178, size: 384, offset: 128)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !1445)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3169, file: !3019, line: 336, baseType: !3180, offset: 4608)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !1359)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3037, file: !3019, line: 353, baseType: !3182, size: 32768)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32768, elements: !3183)
!3183 = !{!3184}
!3184 = !DISubrange(count: 4096)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3018, file: !3019, line: 484, baseType: !3024, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3018, file: !3019, line: 491, baseType: !3187, size: 128, offset: 256)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3019, line: 404, size: 128, elements: !3188)
!3188 = !{!3189, !3190, !3191}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3187, file: !3019, line: 424, baseType: !411, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3187, file: !3019, line: 432, baseType: !7, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3187, file: !3019, line: 440, baseType: !7, size: 32, offset: 96)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3018, file: !3019, line: 498, baseType: !3187, size: 128, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3018, file: !3019, line: 508, baseType: !3025, size: 33280, align: 512, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !934, file: !935, line: 16, baseType: !944, size: 192, offset: 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !934, file: !935, line: 17, baseType: !207, size: 32, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !490, file: !28, line: 1240, baseType: !329, size: 64, offset: 6912)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !490, file: !28, line: 1243, baseType: !407, size: 32, offset: 6976)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !490, file: !28, line: 1245, baseType: !691, size: 64, offset: 7040)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !490, file: !28, line: 1246, baseType: !691, size: 64, offset: 7104)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !490, file: !28, line: 1248, baseType: !408, size: 32, offset: 7168)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !490, file: !28, line: 1249, baseType: !3202, size: 64, offset: 7232)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !490, file: !28, line: 1252, baseType: !3205, size: 256, offset: 7296)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !420)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !490, file: !28, line: 1253, baseType: !3207, size: 128, offset: 7552)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3208, line: 21, baseType: !3209)
!3208 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3208, line: 19, size: 128, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3209, file: !3208, line: 20, baseType: !3212, size: 128)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2379)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !490, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !490, file: !28, line: 1261, baseType: !638, size: 256, offset: 7744)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !490, file: !28, line: 1267, baseType: !176, size: 64, offset: 8000)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !490, file: !28, line: 1269, baseType: !436, size: 64, offset: 8064)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !490, file: !28, line: 1271, baseType: !3218, size: 448, offset: 8128)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !700, line: 63, size: 448, elements: !3219)
!3219 = !{!3220, !3225, !3226, !3227, !3228, !3229, !3230}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3218, file: !700, line: 64, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!307, !3224, !698}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3218, file: !700, line: 66, baseType: !3221, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3218, file: !700, line: 69, baseType: !293, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3218, file: !700, line: 70, baseType: !103, size: 32, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !700, line: 71, baseType: !7, size: 32, offset: 224)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3218, file: !700, line: 74, baseType: !157, size: 128, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3218, file: !700, line: 85, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !490, file: !28, line: 1274, baseType: !642, size: 64, offset: 8576)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !490, file: !28, line: 1280, baseType: !642, size: 64, offset: 8640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !490, file: !28, line: 1283, baseType: !103, size: 32, offset: 8704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !490, file: !28, line: 1286, baseType: !2098, size: 32, offset: 8736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !490, file: !28, line: 1289, baseType: !3237, size: 64, offset: 8768)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2227, line: 18, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !490, file: !28, line: 1290, baseType: !530, size: 64, offset: 8832)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !490, file: !28, line: 1297, baseType: !1541, size: 64, offset: 8896)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !490, file: !28, line: 1304, baseType: !3242, size: 64, offset: 8960)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3243, line: 49, size: 64, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3242, file: !3243, line: 50, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3243, line: 41, size: 512, align: 512, elements: !3248)
!3248 = !{!3249, !3250, !3255}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3247, file: !3243, line: 43, baseType: !187, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3247, file: !3243, line: 45, baseType: !3251, size: 192, offset: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3243, line: 29, size: 192, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3251, file: !3243, line: 30, baseType: !157, size: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3251, file: !3243, line: 32, baseType: !293, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3247, file: !3243, line: 46, baseType: !293, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !490, file: !28, line: 1305, baseType: !3242, size: 64, offset: 9024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !28, line: 1306, baseType: !951, size: 128, align: 64, offset: 9088)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !490, file: !28, line: 1307, baseType: !2226, size: 256, offset: 9216)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !490, file: !28, line: 1309, baseType: !638, size: 256, offset: 9472)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !490, file: !28, line: 1314, baseType: !103, size: 32, offset: 9728)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !490, file: !28, line: 1317, baseType: !187, size: 32, align: 512, offset: 10240)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !490, file: !28, line: 1318, baseType: !157, size: 128, offset: 10304)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !490, file: !28, line: 1320, baseType: !187, size: 32, offset: 10432)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !490, file: !28, line: 1321, baseType: !157, size: 128, offset: 10496)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !484, file: !485, line: 73, baseType: !103, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !484, file: !485, line: 74, baseType: !3267, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1383, line: 42, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !438, file: !375, line: 141, baseType: !3271, size: 64, offset: 704)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!103, !761, !1458}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !438, file: !375, line: 142, baseType: !3275, size: 64, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!373, !373, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !374, file: !375, line: 96, baseType: !489, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !374, file: !375, line: 97, baseType: !307, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !374, file: !375, line: 98, baseType: !329, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !375, line: 100, baseType: !3284, size: 128, offset: 1024)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !375, line: 100, size: 128, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3284, file: !375, line: 101, baseType: !157, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3284, file: !375, line: 102, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !374, file: !375, line: 104, baseType: !157, size: 128, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !374, file: !375, line: 105, baseType: !157, size: 128, offset: 1280)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !374, file: !375, line: 113, baseType: !3292, size: 128, offset: 1408)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !375, line: 109, size: 128, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3292, file: !375, line: 110, baseType: !534, size: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3292, file: !375, line: 111, baseType: !389, size: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3292, file: !375, line: 112, baseType: !951, size: 128, align: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !367, file: !28, line: 1968, baseType: !3298, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!176, !373, !338, !3301}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3303, line: 10, size: 128, elements: !3304)
!3303 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3304 = !{!3305, !3309}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3302, file: !3303, line: 11, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !329}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3302, file: !3303, line: 12, baseType: !329, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !367, file: !28, line: 1969, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!103, !3267, !338, !103}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !367, file: !28, line: 1970, baseType: !3315, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!361, !338, !103, !1458}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !367, file: !28, line: 1972, baseType: !3319, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!103, !373, !257, !103}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !367, file: !28, line: 1974, baseType: !3323, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!103, !3267, !338, !373, !299, !1458}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !367, file: !28, line: 1976, baseType: !3327, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!103, !373, !338, !373}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !367, file: !28, line: 1977, baseType: !3331, size: 64, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!103, !338, !373}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !367, file: !28, line: 1978, baseType: !3335, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!103, !3267, !338, !373, !176}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !367, file: !28, line: 1980, baseType: !3339, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!103, !3267, !338, !373, !299}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !367, file: !28, line: 1982, baseType: !3331, size: 64, offset: 640)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !367, file: !28, line: 1983, baseType: !3344, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!103, !3267, !338, !373, !299, !494}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !367, file: !28, line: 1985, baseType: !3348, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!103, !3267, !338, !373, !338, !373, !7}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !367, file: !28, line: 1987, baseType: !3352, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!103, !3267, !373, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3370, !3379, !3380, !3385, !3386, !3387}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3356, file: !28, line: 227, baseType: !7, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3356, file: !28, line: 228, baseType: !299, size: 16, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !28, line: 241, baseType: !3361, size: 32, offset: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !28, line: 241, size: 32, elements: !3362)
!3362 = !{!3363, !3364}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3361, file: !28, line: 242, baseType: !344, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3361, file: !28, line: 243, baseType: !3365, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3366, line: 16, baseType: !3367)
!3366 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3366, line: 14, size: 32, elements: !3368)
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3367, file: !3366, line: 15, baseType: !349, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !28, line: 245, baseType: !3371, size: 32, offset: 96)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !28, line: 245, size: 32, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3371, file: !28, line: 246, baseType: !353, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3371, file: !28, line: 247, baseType: !3375, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3366, line: 20, baseType: !3376)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3366, line: 18, size: 32, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3376, file: !3366, line: 19, baseType: !357, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3356, file: !28, line: 249, baseType: !499, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3356, file: !28, line: 250, baseType: !3381, size: 128, offset: 192)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !692, line: 13, size: 128, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3381, file: !692, line: 14, baseType: !691, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3381, file: !692, line: 15, baseType: !293, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3356, file: !28, line: 251, baseType: !3381, size: 128, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3356, file: !28, line: 252, baseType: !3381, size: 128, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3356, file: !28, line: 259, baseType: !1297, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !367, file: !28, line: 1988, baseType: !3389, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!103, !3267, !761, !3392, !407, !7}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3394, line: 22, size: 1280, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3393, file: !3394, line: 23, baseType: !407, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3393, file: !3394, line: 24, baseType: !299, size: 16, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3393, file: !3394, line: 25, baseType: !7, size: 32, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3393, file: !3394, line: 26, baseType: !1423, size: 32, offset: 96)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3393, file: !3394, line: 27, baseType: !411, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3393, file: !3394, line: 28, baseType: !411, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3393, file: !3394, line: 41, baseType: !411, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3393, file: !3394, line: 42, baseType: !494, size: 32, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3393, file: !3394, line: 43, baseType: !494, size: 32, offset: 352)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3393, file: !3394, line: 44, baseType: !344, size: 32, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3393, file: !3394, line: 45, baseType: !353, size: 32, offset: 416)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3393, file: !3394, line: 46, baseType: !499, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3393, file: !3394, line: 47, baseType: !3381, size: 128, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3393, file: !3394, line: 48, baseType: !3381, size: 128, offset: 640)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3393, file: !3394, line: 49, baseType: !3381, size: 128, offset: 768)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3393, file: !3394, line: 50, baseType: !3381, size: 128, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3393, file: !3394, line: 51, baseType: !411, size: 64, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3393, file: !3394, line: 52, baseType: !411, size: 64, offset: 1088)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3393, file: !3394, line: 53, baseType: !407, size: 32, offset: 1152)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3393, file: !3394, line: 54, baseType: !407, size: 32, offset: 1184)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3393, file: !3394, line: 55, baseType: !411, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !367, file: !28, line: 1990, baseType: !3418, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!289, !373, !257, !304}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !367, file: !28, line: 1991, baseType: !3422, size: 64, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!103, !338, !3425, !411, !411}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !367, file: !28, line: 1993, baseType: !3428, size: 64, offset: 1088)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!103, !338, !103}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !367, file: !28, line: 1994, baseType: !3432, size: 64, offset: 1152)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!103, !338, !373, !1297, !7, !299}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !367, file: !28, line: 1997, baseType: !3436, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!103, !3267, !338, !1297, !299}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !367, file: !28, line: 1999, baseType: !3440, size: 64, offset: 1280)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!361, !3267, !373, !103}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !367, file: !28, line: 2001, baseType: !3444, size: 64, offset: 1344)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!103, !3267, !373, !361, !103}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !367, file: !28, line: 2003, baseType: !3448, size: 64, offset: 1408)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!103, !3267, !373, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !367, file: !28, line: 2005, baseType: !3454, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!103, !373, !3451}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !367, file: !28, line: 2006, baseType: !3458, size: 64, offset: 1536)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!3461, !338}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3463)
!3463 = !{!3464, !3465}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3462, file: !28, line: 3193, baseType: !1963, size: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3462, file: !28, line: 3194, baseType: !407, size: 32, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !339, file: !28, line: 655, baseType: !489, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !339, file: !28, line: 656, baseType: !334, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !339, file: !28, line: 659, baseType: !329, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !339, file: !28, line: 663, baseType: !307, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !28, line: 671, baseType: !3471, size: 32, offset: 704)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !28, line: 671, size: 32, elements: !3472)
!3472 = !{!3473, !3475}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3471, file: !28, line: 672, baseType: !3474, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3471, file: !28, line: 673, baseType: !7, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !339, file: !28, line: 675, baseType: !494, size: 32, offset: 736)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !339, file: !28, line: 676, baseType: !499, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !339, file: !28, line: 677, baseType: !3381, size: 128, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !339, file: !28, line: 678, baseType: !3381, size: 128, offset: 960)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !339, file: !28, line: 679, baseType: !3381, size: 128, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !339, file: !28, line: 680, baseType: !187, size: 32, offset: 1216)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !339, file: !28, line: 681, baseType: !227, size: 16, offset: 1248)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !339, file: !28, line: 682, baseType: !215, size: 8, offset: 1264)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !339, file: !28, line: 683, baseType: !215, size: 8, offset: 1272)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !339, file: !28, line: 684, baseType: !839, size: 64, offset: 1280)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !339, file: !28, line: 691, baseType: !307, size: 64, offset: 1344)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !339, file: !28, line: 692, baseType: !851, size: 320, offset: 1408)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !339, file: !28, line: 694, baseType: !307, size: 64, offset: 1728)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !339, file: !28, line: 695, baseType: !307, size: 64, offset: 1792)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !339, file: !28, line: 697, baseType: !534, size: 128, offset: 1856)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !339, file: !28, line: 698, baseType: !157, size: 128, offset: 1984)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !339, file: !28, line: 707, baseType: !157, size: 128, offset: 2112)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !339, file: !28, line: 708, baseType: !157, size: 128, offset: 2240)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !28, line: 709, baseType: !3495, size: 128, offset: 2368)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !28, line: 709, size: 128, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3495, file: !28, line: 710, baseType: !530, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3495, file: !28, line: 711, baseType: !951, size: 128, align: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !339, file: !28, line: 713, baseType: !644, size: 64, offset: 2496)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !339, file: !28, line: 714, baseType: !644, size: 64, offset: 2560)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !339, file: !28, line: 715, baseType: !207, size: 32, offset: 2624)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !339, file: !28, line: 716, baseType: !207, size: 32, offset: 2656)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !339, file: !28, line: 717, baseType: !207, size: 32, offset: 2688)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !339, file: !28, line: 719, baseType: !207, size: 32, offset: 2720)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !28, line: 721, baseType: !3506, size: 64, offset: 2752)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !28, line: 721, size: 64, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3506, file: !28, line: 722, baseType: !1572, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3506, file: !28, line: 723, baseType: !561, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !339, file: !28, line: 725, baseType: !3511, size: 64, offset: 2816)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !339, file: !28, line: 726, baseType: !335, size: 1536, align: 64, offset: 2880)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !339, file: !28, line: 727, baseType: !157, size: 128, offset: 4416)
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !28, line: 728, baseType: !3516, size: 64, offset: 4544)
!3516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !28, line: 728, size: 64, elements: !3517)
!3517 = !{!3518, !3519, !3522, !3523}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3516, file: !28, line: 729, baseType: !2048, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3516, file: !28, line: 730, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3516, file: !28, line: 731, baseType: !257, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3516, file: !28, line: 732, baseType: !7, size: 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !339, file: !28, line: 735, baseType: !408, size: 32, offset: 4608)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !339, file: !28, line: 738, baseType: !408, size: 32, offset: 4640)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !339, file: !28, line: 739, baseType: !3202, size: 64, offset: 4672)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !339, file: !28, line: 750, baseType: !329, size: 64, offset: 4736)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !335, file: !28, line: 474, baseType: !1963, size: 128, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !335, file: !28, line: 475, baseType: !851, size: 320, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !335, file: !28, line: 476, baseType: !703, size: 32, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !335, file: !28, line: 477, baseType: !207, size: 32, offset: 544)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !335, file: !28, line: 482, baseType: !1153, size: 128, offset: 576)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !335, file: !28, line: 483, baseType: !307, size: 64, offset: 704)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !335, file: !28, line: 484, baseType: !307, size: 64, offset: 768)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !335, file: !28, line: 485, baseType: !3536, size: 64, offset: 832)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3539)
!3539 = !{!3540, !3544, !3614, !3618, !3622, !3628, !3632, !3636, !3641, !3645, !3649, !3653, !3654, !3658, !3662, !3666, !3671, !3675, !3682, !3683}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3538, file: !28, line: 405, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!103, !1662, !573}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3538, file: !28, line: 406, baseType: !3545, size: 64, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!103, !1297, !3548}
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !3550)
!3550 = !{!3551, !3581, !3595}
!3551 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !65, line: 295, baseType: !3552, size: 512)
!3552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !65, line: 295, size: 512, elements: !3553)
!3553 = !{!3554, !3580}
!3554 = !DIDerivedType(tag: DW_TAG_member, scope: !3552, file: !65, line: 296, baseType: !3555, size: 448)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3552, file: !65, line: 296, size: 448, elements: !3556)
!3556 = !{!3557, !3558, !3567, !3568, !3569, !3578, !3579}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3555, file: !65, line: 298, baseType: !307, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3555, file: !65, line: 299, baseType: !3559, size: 128, offset: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3555, file: !65, line: 299, size: 128, elements: !3560)
!3560 = !{!3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3559, file: !65, line: 300, baseType: !157, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, scope: !3559, file: !65, line: 302, baseType: !3563, size: 128)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3559, file: !65, line: 302, size: 128, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3563, file: !65, line: 303, baseType: !329, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3563, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3555, file: !65, line: 310, baseType: !334, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3555, file: !65, line: 311, baseType: !307, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, scope: !3555, file: !65, line: 312, baseType: !3570, size: 64, offset: 320)
!3570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3555, file: !65, line: 312, size: 64, elements: !3571)
!3571 = !{!3572, !3573}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3570, file: !65, line: 313, baseType: !329, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3570, file: !65, line: 314, baseType: !3574, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !3575)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !3576)
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3575, file: !65, line: 256, baseType: !307, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3555, file: !65, line: 316, baseType: !207, size: 32, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3555, file: !65, line: 317, baseType: !207, size: 32, offset: 416)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3552, file: !65, line: 323, baseType: !1663, size: 512, align: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !65, line: 325, baseType: !3582, size: 512, offset: 512)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !65, line: 325, size: 512, elements: !3583)
!3583 = !{!3584, !3594}
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !65, line: 326, baseType: !3585, size: 320)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !65, line: 326, size: 320, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3585, file: !65, line: 327, baseType: !307, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3585, file: !65, line: 328, baseType: !307, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3585, file: !65, line: 329, baseType: !307, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3585, file: !65, line: 331, baseType: !207, size: 32, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3585, file: !65, line: 332, baseType: !207, size: 32, offset: 224)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3585, file: !65, line: 333, baseType: !207, size: 32, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3585, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3582, file: !65, line: 339, baseType: !1663, size: 512, align: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3549, file: !65, line: 341, baseType: !3596, size: 512, offset: 1024)
!3596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3549, file: !65, line: 341, size: 512, elements: !3597)
!3597 = !{!3598, !3607, !3613}
!3598 = !DIDerivedType(tag: DW_TAG_member, scope: !3596, file: !65, line: 342, baseType: !3599, size: 384)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3596, file: !65, line: 342, size: 384, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3599, file: !65, line: 343, baseType: !307, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3599, file: !65, line: 344, baseType: !307, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3599, file: !65, line: 346, baseType: !329, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3599, file: !65, line: 347, baseType: !329, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3599, file: !65, line: 348, baseType: !329, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3599, file: !65, line: 349, baseType: !329, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3596, file: !65, line: 352, baseType: !3608, size: 256)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3596, file: !65, line: 352, size: 256, elements: !3609)
!3609 = !{!3610, !3611, !3612}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3608, file: !65, line: 353, baseType: !307, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3608, file: !65, line: 354, baseType: !307, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3608, file: !65, line: 356, baseType: !157, size: 128, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3596, file: !65, line: 359, baseType: !1663, size: 512, align: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3538, file: !28, line: 409, baseType: !3615, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!103, !334, !573}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3538, file: !28, line: 412, baseType: !3619, size: 64, offset: 192)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!1458, !334, !3548}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3538, file: !28, line: 414, baseType: !3623, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3538, file: !28, line: 416, baseType: !3629, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!103, !1297, !334, !499, !7, !2951, !2063}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3538, file: !28, line: 419, baseType: !3633, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!103, !1297, !334, !499, !7, !7, !1662, !329}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3538, file: !28, line: 424, baseType: !3637, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!3640, !334, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !411)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3538, file: !28, line: 425, baseType: !3642, size: 64, offset: 512)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3548, !304, !304}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3538, file: !28, line: 426, baseType: !3646, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!1458, !3548, !703}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3538, file: !28, line: 427, baseType: !3650, size: 64, offset: 640)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3548}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3538, file: !28, line: 428, baseType: !1591, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3538, file: !28, line: 433, baseType: !3655, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!103, !334, !3548, !3548, !49}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3538, file: !28, line: 435, baseType: !3659, size: 64, offset: 832)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!103, !3548}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3538, file: !28, line: 436, baseType: !3663, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!1458, !3548, !304, !304}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3538, file: !28, line: 438, baseType: !3667, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3548, !3670, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3538, file: !28, line: 439, baseType: !3672, size: 64, offset: 1024)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!103, !334, !1662}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3538, file: !28, line: 442, baseType: !3676, size: 64, offset: 1088)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!103, !3679, !1297, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3538, file: !28, line: 444, baseType: !2055, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3538, file: !28, line: 445, baseType: !3684, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!103, !1594, !1616}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !28, line: 486, baseType: !307, size: 64, offset: 896)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !335, file: !28, line: 487, baseType: !851, size: 320, offset: 960)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !335, file: !28, line: 488, baseType: !2098, size: 32, offset: 1280)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !335, file: !28, line: 489, baseType: !187, size: 32, offset: 1312)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !335, file: !28, line: 490, baseType: !157, size: 128, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !335, file: !28, line: 491, baseType: !329, size: 64, offset: 1472)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !324, file: !283, line: 180, baseType: !3694, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!289, !1297, !180, !323, !257, !499, !304}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !324, file: !283, line: 182, baseType: !3694, size: 64, offset: 384)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !324, file: !283, line: 184, baseType: !3699, size: 64, offset: 448)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!103, !1297, !180, !323, !1782}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !312, file: !283, line: 90, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !312, file: !283, line: 91, baseType: !3705, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !273, file: !173, line: 120, baseType: !3707, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!3710, !240}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3712)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3713)
!3713 = !{!3714, !3715, !3719, !3723, !3729, !3733}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3712, file: !6, line: 40, baseType: !5, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3712, file: !6, line: 41, baseType: !3716, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!1458}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3712, file: !6, line: 42, baseType: !3720, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!329}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3712, file: !6, line: 43, baseType: !3724, size: 64, offset: 192)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!2187, !3727}
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3712, file: !6, line: 44, baseType: !3730, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!2187}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3712, file: !6, line: 45, baseType: !3306, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !273, file: !173, line: 121, baseType: !3735, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2187, !240}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !273, file: !173, line: 122, baseType: !3739, size: 64, offset: 320)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !240, !3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !172, file: !173, line: 70, baseType: !3745, size: 64, offset: 384)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !514, line: 190, size: 1152, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3839, !3840, !3841, !3842, !3843, !3846}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3746, file: !514, line: 191, baseType: !207, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3746, file: !514, line: 192, baseType: !207, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3746, file: !514, line: 202, baseType: !3745, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3746, file: !514, line: 203, baseType: !176, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3746, file: !514, line: 205, baseType: !1024, size: 192, align: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3746, file: !514, line: 207, baseType: !2187, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3746, file: !514, line: 208, baseType: !7, size: 32, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !3746, file: !514, line: 209, baseType: !3756, size: 256, offset: 512)
!3756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3746, file: !514, line: 209, size: 256, elements: !3757)
!3757 = !{!3758, !3767, !3771}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3756, file: !514, line: 210, baseType: !3759, size: 256)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !514, line: 153, size: 256, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3766}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3759, file: !514, line: 154, baseType: !307, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3759, file: !514, line: 156, baseType: !1156, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3759, file: !514, line: 162, baseType: !3764, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !514, line: 162, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3759, file: !514, line: 167, baseType: !307, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3756, file: !514, line: 211, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !514, line: 170, size: 64, elements: !3769)
!3769 = !{!3770}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3768, file: !514, line: 171, baseType: !3745, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3756, file: !514, line: 212, baseType: !3772, size: 256)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !514, line: 174, size: 256, elements: !3773)
!3773 = !{!3774, !3834, !3837, !3838}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3772, file: !514, line: 175, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3777)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !514, line: 271, size: 768, elements: !3778)
!3778 = !{!3779, !3799, !3803, !3807, !3811, !3815, !3819, !3823, !3824, !3825, !3826, !3830}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3777, file: !514, line: 276, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!103, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !514, line: 251, size: 1216, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3784, file: !514, line: 253, baseType: !3745, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3784, file: !514, line: 254, baseType: !1297, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3784, file: !514, line: 255, baseType: !611, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3784, file: !514, line: 256, baseType: !329, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3784, file: !514, line: 259, baseType: !638, size: 256, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3784, file: !514, line: 260, baseType: !638, size: 256, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3784, file: !514, line: 261, baseType: !103, size: 32, offset: 768)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3784, file: !514, line: 262, baseType: !157, size: 128, offset: 832)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3784, file: !514, line: 263, baseType: !257, size: 64, offset: 960)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3784, file: !514, line: 265, baseType: !304, size: 64, offset: 1024)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3784, file: !514, line: 266, baseType: !1458, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3784, file: !514, line: 267, baseType: !1458, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3784, file: !514, line: 268, baseType: !1827, size: 64, offset: 1152)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3777, file: !514, line: 277, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !3783}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3777, file: !514, line: 290, baseType: !3804, size: 64, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!103, !611, !329}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3777, file: !514, line: 292, baseType: !3808, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!329, !611, !1585}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3777, file: !514, line: 293, baseType: !3812, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!329, !611, !329, !1585}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3777, file: !514, line: 294, baseType: !3816, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !611, !329}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3777, file: !514, line: 296, baseType: !3820, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!289, !3783, !257, !304, !499}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3777, file: !514, line: 306, baseType: !304, size: 64, offset: 448)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3777, file: !514, line: 313, baseType: !1458, size: 8, offset: 512)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3777, file: !514, line: 314, baseType: !3820, size: 64, offset: 576)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3777, file: !514, line: 317, baseType: !3827, size: 64, offset: 640)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!2000, !3783, !2002}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3777, file: !514, line: 320, baseType: !3831, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!103, !3783, !1782}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3772, file: !514, line: 176, baseType: !3835, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !514, line: 35, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3772, file: !514, line: 177, baseType: !499, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3772, file: !514, line: 178, baseType: !3745, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3746, file: !514, line: 215, baseType: !329, size: 64, offset: 768)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3746, file: !514, line: 221, baseType: !411, size: 64, offset: 832)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3746, file: !514, line: 223, baseType: !227, size: 16, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3746, file: !514, line: 224, baseType: !299, size: 16, offset: 912)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3746, file: !514, line: 225, baseType: !3844, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !514, line: 36, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3746, file: !514, line: 227, baseType: !951, size: 128, align: 64, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !172, file: !173, line: 71, baseType: !3848, size: 32, offset: 448)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3849, line: 19, size: 32, elements: !3850)
!3849 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3850 = !{!3851}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3848, file: !3849, line: 20, baseType: !980, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !172, file: !173, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !172, file: !173, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !172, file: !173, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !172, file: !173, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !172, file: !173, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !169, file: !21, line: 47, baseType: !152, size: 64, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !169, file: !21, line: 48, baseType: !180, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !169, file: !21, line: 49, baseType: !3860, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !169, file: !21, line: 50, baseType: !2336, size: 64, offset: 704)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !153, file: !21, line: 418, baseType: !3864, size: 64, offset: 1408)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !3866)
!3866 = !{!3867, !3868, !3873, !3877, !3881, !3885}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3865, file: !21, line: 54, baseType: !295, size: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3865, file: !21, line: 55, baseType: !3869, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!289, !3864, !3872, !257}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3865, file: !21, line: 57, baseType: !3874, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!289, !3864, !3872, !176, !304}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3865, file: !21, line: 59, baseType: !3878, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !152, !176}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3865, file: !21, line: 60, baseType: !3882, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!103, !152}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3865, file: !21, line: 61, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !152}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !153, file: !21, line: 419, baseType: !176, size: 64, offset: 1472)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !153, file: !21, line: 420, baseType: !176, size: 64, offset: 1536)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !153, file: !21, line: 421, baseType: !180, size: 64, offset: 1600)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !153, file: !21, line: 424, baseType: !3893, size: 64, offset: 1664)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3895)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !153, file: !21, line: 425, baseType: !3897, size: 64, offset: 1728)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !153, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !153, file: !21, line: 435, baseType: !638, size: 256, offset: 1856)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !153, file: !21, line: 437, baseType: !3902, size: 64, offset: 2112)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3904, line: 69, size: 320, elements: !3905)
!3904 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3905 = !{!3906, !3907, !3908, !3925, !3927, !3931, !3932}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3903, file: !3904, line: 70, baseType: !176, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3903, file: !3904, line: 71, baseType: !152, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3903, file: !3904, line: 72, baseType: !3909, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3911)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3904, line: 47, size: 256, elements: !3912)
!3912 = !{!3913, !3914, !3920, !3924}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3911, file: !3904, line: 49, baseType: !7, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3911, file: !3904, line: 51, baseType: !3915, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!103, !176, !3918}
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3911, file: !3904, line: 53, baseType: !3921, size: 64, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!103, !257, !3918}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3911, file: !3904, line: 55, baseType: !3306, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3903, file: !3904, line: 73, baseType: !3926, size: 16, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3903, file: !3904, line: 74, baseType: !3928, size: 8, offset: 208)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !216, line: 16, baseType: !3929)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !218, line: 20, baseType: !3930)
!3930 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3903, file: !3904, line: 75, baseType: !215, size: 8, offset: 216)
!3932 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !3904, line: 76, baseType: !3933, size: 64, offset: 256)
!3933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3903, file: !3904, line: 76, size: 64, elements: !3934)
!3934 = !{!3935, !3936, !3943}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3933, file: !3904, line: 77, baseType: !329, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3933, file: !3904, line: 78, baseType: !3937, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3939)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3904, line: 86, size: 128, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3939, file: !3904, line: 87, baseType: !7, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3939, file: !3904, line: 88, baseType: !257, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3933, file: !3904, line: 79, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3904, line: 92, size: 256, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3946, file: !3904, line: 94, baseType: !7, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3946, file: !3904, line: 95, baseType: !7, size: 32, offset: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3946, file: !3904, line: 96, baseType: !960, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3946, file: !3904, line: 97, baseType: !3909, size: 64, offset: 128)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3946, file: !3904, line: 98, baseType: !329, size: 64, offset: 192)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !153, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !153, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !153, file: !21, line: 442, baseType: !3893, size: 64, offset: 2240)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !153, file: !21, line: 443, baseType: !3897, size: 64, offset: 2304)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !153, file: !21, line: 444, baseType: !1458, size: 8, offset: 2368)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !153, file: !21, line: 451, baseType: !1458, size: 8, offset: 2376)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !153, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !153, file: !21, line: 455, baseType: !3961, size: 64, offset: 2432)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3963, line: 23, size: 96, elements: !3964)
!3963 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3964 = !{!3965, !3966, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3962, file: !3963, line: 24, baseType: !103, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3962, file: !3963, line: 24, baseType: !103, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3962, file: !3963, line: 24, baseType: !103, size: 32, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !153, file: !21, line: 458, baseType: !3969, size: 64, offset: 2496)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!103}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !153, file: !21, line: 460, baseType: !3973, size: 4032, align: 512, offset: 2560)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3974, size: 4032, elements: !3988)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !3975)
!3975 = !{!3976, !3977, !3978}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3974, file: !21, line: 363, baseType: !329, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3974, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3974, file: !21, line: 367, baseType: !3979, size: 448, offset: 128)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !3980)
!3980 = !{!3981, !3982}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3979, file: !21, line: 320, baseType: !152, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3979, file: !21, line: 321, baseType: !3983, size: 384, offset: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3984, line: 40, size: 384, elements: !3985)
!3984 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3985 = !{!3986}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3983, file: !3984, line: 41, baseType: !3987, size: 384, align: 64)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1024, size: 384, align: 64, elements: !2483)
!3988 = !{!3989}
!3989 = !DISubrange(count: 7)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !153, file: !21, line: 463, baseType: !3991, size: 192, offset: 6592)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3992, line: 8, size: 192, elements: !3993)
!3992 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3993 = !{!3994, !3995, !3996}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3991, file: !3992, line: 10, baseType: !7, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3991, file: !3992, line: 11, baseType: !605, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3991, file: !3992, line: 12, baseType: !3997, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3999, line: 59, size: 48, elements: !4000)
!3999 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3998, file: !3999, line: 60, baseType: !2204, size: 16)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3998, file: !3999, line: 61, baseType: !2204, size: 16, offset: 16)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3998, file: !3999, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3998, file: !3999, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3998, file: !3999, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3998, file: !3999, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !153, file: !21, line: 465, baseType: !307, size: 64, offset: 6784)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !153, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !153, file: !21, line: 470, baseType: !157, size: 128, offset: 6912)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !153, file: !21, line: 471, baseType: !4011, size: 64, offset: 7040)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4013, line: 33, size: 96, elements: !4014)
!4013 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4014 = !{!4015, !4016, !4017, !4018}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4012, file: !4013, line: 37, baseType: !103, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4012, file: !4013, line: 43, baseType: !103, size: 32, offset: 32)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4012, file: !4013, line: 45, baseType: !227, size: 16, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4012, file: !4013, line: 47, baseType: !227, size: 16, offset: 80)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !153, file: !21, line: 476, baseType: !4020, size: 64, offset: 7104)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !4022)
!4022 = !{!4023, !4039, !4040, !4041}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4021, file: !21, line: 379, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4026, line: 204, baseType: !4027)
!4026 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4026, line: 197, size: 192, elements: !4028)
!4028 = !{!4029, !4031, !4032, !4033, !4035, !4037}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4027, file: !4026, line: 198, baseType: !4030, size: 32)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4026, line: 21, baseType: !408)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4027, file: !4026, line: 199, baseType: !219, size: 8, offset: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4027, file: !4026, line: 200, baseType: !219, size: 8, offset: 40)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4027, file: !4026, line: 201, baseType: !4034, size: 16, offset: 48)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4026, line: 17, baseType: !226)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4027, file: !4026, line: 202, baseType: !4036, size: 64, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4026, line: 16, baseType: !412)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4027, file: !4026, line: 203, baseType: !4038, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4026, line: 22, baseType: !412)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4021, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4021, file: !21, line: 381, baseType: !257, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4021, file: !21, line: 382, baseType: !257, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !153, file: !21, line: 477, baseType: !4021, size: 256, offset: 7168)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !153, file: !21, line: 480, baseType: !4044, size: 64, offset: 7424)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !153, file: !21, line: 483, baseType: !4047, size: 64, offset: 7488)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !153, file: !21, line: 488, baseType: !257, size: 64, offset: 7552)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !153, file: !21, line: 492, baseType: !329, size: 64, offset: 7616)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !153, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !153, file: !21, line: 495, baseType: !329, size: 64, offset: 7744)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !153, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !153, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !153, file: !21, line: 500, baseType: !4056, size: 64, offset: 7872)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4058, line: 45, baseType: !4059)
!4058 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !153, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !153, file: !21, line: 504, baseType: !4062, size: 64, offset: 8000)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4065, line: 96, size: 192, elements: !4066)
!4065 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4066 = !{!4067, !4068, !4111, !4113}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4064, file: !4065, line: 97, baseType: !7, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4064, file: !4065, line: 98, baseType: !4069, size: 64, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4065, line: 24, size: 3072, elements: !4071)
!4071 = !{!4072, !4074, !4075, !4076, !4077, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4108, !4109, !4110}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4070, file: !4065, line: 26, baseType: !4073, size: 128)
!4073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 128, elements: !2483)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4070, file: !4065, line: 27, baseType: !4073, size: 128, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4070, file: !4065, line: 28, baseType: !103, size: 32, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4070, file: !4065, line: 31, baseType: !187, size: 32, align: 512, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4070, file: !4065, line: 32, baseType: !4078, size: 960, offset: 576)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4079, line: 206, size: 960, elements: !4080)
!4079 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4080 = !{!4081, !4082, !4085, !4087, !4088, !4090}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4078, file: !4079, line: 207, baseType: !954, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4078, file: !4079, line: 208, baseType: !4083, size: 256, offset: 64)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4084, size: 256, elements: !1346)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4078, file: !4079, line: 209, baseType: !4086, size: 256, offset: 320)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 256, elements: !1346)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4078, file: !4079, line: 213, baseType: !293, size: 64, offset: 576)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4078, file: !4079, line: 215, baseType: !4089, size: 256, offset: 640)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !1346)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4078, file: !4079, line: 216, baseType: !215, size: 8, offset: 896)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4070, file: !4065, line: 33, baseType: !307, size: 64, offset: 1536)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4070, file: !4065, line: 34, baseType: !307, size: 64, offset: 1600)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4070, file: !4065, line: 35, baseType: !1458, size: 8, offset: 1664)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4070, file: !4065, line: 36, baseType: !2930, size: 320, offset: 1728)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4070, file: !4065, line: 37, baseType: !2226, size: 256, offset: 2048)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4070, file: !4065, line: 38, baseType: !951, size: 128, align: 64, offset: 2304)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4070, file: !4065, line: 39, baseType: !4098, size: 64, offset: 2432)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4065, line: 49, size: 768, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4105, !4106, !4107}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4099, file: !4065, line: 50, baseType: !187, size: 32)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4099, file: !4065, line: 51, baseType: !4086, size: 256, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4099, file: !4065, line: 53, baseType: !4086, size: 256, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4099, file: !4065, line: 54, baseType: !307, size: 64, offset: 576)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4099, file: !4065, line: 55, baseType: !4098, size: 64, offset: 640)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4099, file: !4065, line: 56, baseType: !103, size: 32, offset: 704)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4099, file: !4065, line: 57, baseType: !103, size: 32, offset: 736)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4070, file: !4065, line: 40, baseType: !307, size: 64, offset: 2496)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4070, file: !4065, line: 42, baseType: !103, size: 32, offset: 2560)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4070, file: !4065, line: 43, baseType: !4063, size: 64, offset: 2624)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4064, file: !4065, line: 99, baseType: !4112, offset: 128)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !541, line: 211, elements: !542)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4064, file: !4065, line: 100, baseType: !4114, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4065, line: 63, size: 3008, elements: !4116)
!4116 = !{!4117, !4118, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4146}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4115, file: !4065, line: 64, baseType: !4098, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4115, file: !4065, line: 65, baseType: !4119, size: 192, offset: 64)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4098, size: 192, elements: !258)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4115, file: !4065, line: 67, baseType: !103, size: 32, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4115, file: !4065, line: 68, baseType: !638, size: 256, offset: 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4115, file: !4065, line: 69, baseType: !187, size: 32, offset: 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4115, file: !4065, line: 70, baseType: !638, size: 256, offset: 640)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4115, file: !4065, line: 71, baseType: !307, size: 64, offset: 896)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4115, file: !4065, line: 72, baseType: !307, size: 64, offset: 960)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4115, file: !4065, line: 73, baseType: !307, size: 64, offset: 1024)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4115, file: !4065, line: 74, baseType: !307, size: 64, offset: 1088)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4115, file: !4065, line: 75, baseType: !307, size: 64, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4115, file: !4065, line: 76, baseType: !307, size: 64, offset: 1216)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4115, file: !4065, line: 77, baseType: !307, size: 64, offset: 1280)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4115, file: !4065, line: 78, baseType: !307, size: 64, offset: 1344)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4115, file: !4065, line: 79, baseType: !1458, size: 8, offset: 1408)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4115, file: !4065, line: 80, baseType: !307, size: 64, offset: 1472)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4115, file: !4065, line: 81, baseType: !638, size: 256, offset: 1536)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4115, file: !4065, line: 82, baseType: !1747, size: 256, offset: 1792)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4115, file: !4065, line: 84, baseType: !207, size: 32, offset: 2048)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4115, file: !4065, line: 87, baseType: !307, size: 64, offset: 2112)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4115, file: !4065, line: 88, baseType: !307, size: 64, offset: 2176)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4115, file: !4065, line: 89, baseType: !4140, size: 704, offset: 2240)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2227, line: 111, size: 704, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4140, file: !2227, line: 112, baseType: !2226, size: 256)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4140, file: !2227, line: 113, baseType: !2930, size: 320, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4140, file: !2227, line: 116, baseType: !3237, size: 64, offset: 576)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4140, file: !2227, line: 117, baseType: !103, size: 32, offset: 640)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4115, file: !4065, line: 90, baseType: !4063, size: 64, offset: 2944)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !153, file: !21, line: 515, baseType: !4148, size: 64, offset: 8064)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4150, line: 117, size: 128, elements: !4151)
!4150 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4151 = !{!4152, !4153, !4154}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4149, file: !4150, line: 118, baseType: !1401, size: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4149, file: !4150, line: 119, baseType: !1401, size: 32, offset: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4149, file: !4150, line: 120, baseType: !293, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !153, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !153, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !153, file: !21, line: 520, baseType: !4158, size: 64, offset: 8192)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !153, file: !21, line: 523, baseType: !4160, size: 64, offset: 8256)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !153, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !153, file: !21, line: 525, baseType: !4165, size: 64, offset: 8384)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !153, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !153, file: !21, line: 533, baseType: !329, size: 64, offset: 8512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !153, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !153, file: !21, line: 535, baseType: !4172, size: 64, offset: 8640)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !153, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !153, file: !21, line: 539, baseType: !103, size: 32, offset: 8736)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !153, file: !21, line: 540, baseType: !4176, size: 64, offset: 8768)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4178, line: 32, size: 64, elements: !4179)
!4178 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4177, file: !4178, line: 33, baseType: !1401, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4177, file: !4178, line: 34, baseType: !1401, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !153, file: !21, line: 563, baseType: !157, size: 128, offset: 8832)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !153, file: !21, line: 565, baseType: !157, size: 128, offset: 8960)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !153, file: !21, line: 568, baseType: !4185, size: 64, offset: 9088)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !153, file: !21, line: 570, baseType: !207, size: 32, offset: 9152)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !148, line: 372, baseType: !176, size: 64, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !149, file: !148, line: 373, baseType: !4189, size: 488, offset: 128)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 488, elements: !4190)
!4190 = !{!4191}
!4191 = !DISubrange(count: 61)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !149, file: !148, line: 374, baseType: !329, size: 64, offset: 640)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !149, file: !148, line: 376, baseType: !4194, size: 64, offset: 704)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!103, !4197, !103, !103}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !149, file: !148, line: 378, baseType: !4199, size: 64, offset: 768)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!103, !4197, !103, !103, !225}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "read_c45", scope: !149, file: !148, line: 380, baseType: !4203, size: 64, offset: 832)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!103, !4197, !103, !103, !103}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "write_c45", scope: !149, file: !148, line: 382, baseType: !4207, size: 64, offset: 896)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!103, !4197, !103, !103, !103, !225}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !149, file: !148, line: 385, baseType: !4211, size: 64, offset: 960)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DISubroutineType(types: !4213)
!4213 = !{!103, !4197}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !149, file: !148, line: 388, baseType: !4215, size: 8192, offset: 1024)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4216, size: 8192, elements: !420)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_bus_stats", file: !148, line: 319, size: 256, elements: !4217)
!4217 = !{!4218, !4234, !4235, !4236, !4237}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4216, file: !148, line: 320, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64_stats_t", file: !4220, line: 75, baseType: !4221)
!4220 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4220, line: 73, size: 64, elements: !4222)
!4222 = !{!4223}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !4221, file: !4220, line: 74, baseType: !4224, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4225, line: 26, baseType: !4226)
!4225 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4225, line: 24, size: 64, elements: !4227)
!4227 = !{!4228}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4226, file: !4225, line: 25, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !4230, line: 12, baseType: !4231)
!4230 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4230, line: 10, size: 64, elements: !4232)
!4232 = !{!4233}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4231, file: !4230, line: 11, baseType: !642, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4216, file: !148, line: 321, baseType: !4219, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "writes", scope: !4216, file: !148, line: 322, baseType: !4219, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "reads", scope: !4216, file: !148, line: 323, baseType: !4219, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !4216, file: !148, line: 325, baseType: !4238, offset: 256)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4220, line: 64, elements: !542)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "mdio_lock", scope: !149, file: !148, line: 394, baseType: !638, size: 256, offset: 9216)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !148, line: 397, baseType: !4241, size: 64, offset: 9472)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !88, line: 705, size: 5824, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4249, !4250, !4303, !4388, !4389, !4390, !4391, !4392, !4399, !4491, !4504, !4514, !4518, !4520, !4521, !4522, !4526, !4533, !4534, !4537, !4540, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4702, !4703, !4704, !4707, !4710, !4719, !4720, !4721, !4722, !4723, !4724}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4242, file: !88, line: 706, baseType: !172, size: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4242, file: !88, line: 707, baseType: !4241, size: 64, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4242, file: !88, line: 709, baseType: !4247, size: 64, offset: 576)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !88, line: 37, flags: DIFlagFwdDecl)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4242, file: !88, line: 711, baseType: !176, size: 64, offset: 640)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4242, file: !88, line: 712, baseType: !4251, size: 64, offset: 704)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4253)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !88, line: 89, size: 384, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4263, !4268, !4272}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4253, file: !88, line: 90, baseType: !176, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4253, file: !88, line: 91, baseType: !309, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4253, file: !88, line: 92, baseType: !4258, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!103, !4261, !252}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4242)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4253, file: !88, line: 93, baseType: !4264, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!257, !4261, !4267, !3742, !3743}
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4253, file: !88, line: 95, baseType: !4269, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !4241}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4253, file: !88, line: 97, baseType: !4273, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !95, line: 286, size: 1472, elements: !4276)
!4276 = !{!4277, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4275, file: !95, line: 287, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!103, !4241}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4275, file: !95, line: 288, baseType: !4269, size: 64, offset: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4275, file: !95, line: 289, baseType: !4278, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4275, file: !95, line: 290, baseType: !4278, size: 64, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4275, file: !95, line: 291, baseType: !4278, size: 64, offset: 256)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4275, file: !95, line: 292, baseType: !4278, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4275, file: !95, line: 293, baseType: !4278, size: 64, offset: 384)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4275, file: !95, line: 294, baseType: !4278, size: 64, offset: 448)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4275, file: !95, line: 295, baseType: !4278, size: 64, offset: 512)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4275, file: !95, line: 296, baseType: !4278, size: 64, offset: 576)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4275, file: !95, line: 297, baseType: !4278, size: 64, offset: 640)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4275, file: !95, line: 298, baseType: !4278, size: 64, offset: 704)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4275, file: !95, line: 299, baseType: !4278, size: 64, offset: 768)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4275, file: !95, line: 300, baseType: !4278, size: 64, offset: 832)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4275, file: !95, line: 301, baseType: !4278, size: 64, offset: 896)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4275, file: !95, line: 302, baseType: !4278, size: 64, offset: 960)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4275, file: !95, line: 303, baseType: !4278, size: 64, offset: 1024)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4275, file: !95, line: 304, baseType: !4278, size: 64, offset: 1088)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4275, file: !95, line: 305, baseType: !4278, size: 64, offset: 1152)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4275, file: !95, line: 306, baseType: !4278, size: 64, offset: 1216)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4275, file: !95, line: 307, baseType: !4278, size: 64, offset: 1280)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4275, file: !95, line: 308, baseType: !4278, size: 64, offset: 1344)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4275, file: !95, line: 309, baseType: !4278, size: 64, offset: 1408)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4242, file: !88, line: 714, baseType: !4304, size: 64, offset: 768)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4307, line: 80, size: 1344, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4387}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !4307, line: 81, baseType: !176, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4306, file: !4307, line: 82, baseType: !176, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4306, file: !4307, line: 83, baseType: !309, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4306, file: !4307, line: 84, baseType: !309, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4306, file: !4307, line: 85, baseType: !309, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4306, file: !4307, line: 87, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!103, !4241, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !142, line: 96, size: 1152, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4324, !4325, !4326, !4327, !4340, !4350, !4351, !4352, !4353, !4354, !4362, !4363, !4364, !4365, !4366, !4367}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4319, file: !142, line: 97, baseType: !176, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4319, file: !142, line: 98, baseType: !4304, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4319, file: !142, line: 100, baseType: !152, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4319, file: !142, line: 101, baseType: !176, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4319, file: !142, line: 103, baseType: !1458, size: 8, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4319, file: !142, line: 104, baseType: !141, size: 32, offset: 288)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4319, file: !142, line: 106, baseType: !4328, size: 64, offset: 320)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4331, line: 282, size: 1600, elements: !4332)
!4331 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4332 = !{!4333, !4334, !4335, !4339}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4330, file: !4331, line: 283, baseType: !3205, size: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4330, file: !4331, line: 284, baseType: !3205, size: 256, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4330, file: !4331, line: 285, baseType: !4336, size: 1024, offset: 512)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1024, elements: !4337)
!4337 = !{!4338}
!4338 = !DISubrange(count: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4330, file: !4331, line: 286, baseType: !2187, size: 64, offset: 1536)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4319, file: !142, line: 107, baseType: !4341, size: 64, offset: 384)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4343)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4331, line: 217, size: 256, elements: !4344)
!4344 = !{!4345, !4346, !4348, !4349}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4343, file: !4331, line: 218, baseType: !3212, size: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4343, file: !4331, line: 219, baseType: !4347, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4331, line: 15, baseType: !307)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4343, file: !4331, line: 220, baseType: !408, size: 32, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4343, file: !4331, line: 221, baseType: !408, size: 32, offset: 224)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4319, file: !142, line: 109, baseType: !4278, size: 64, offset: 448)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4319, file: !142, line: 110, baseType: !4269, size: 64, offset: 512)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4319, file: !142, line: 111, baseType: !4278, size: 64, offset: 576)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4319, file: !142, line: 112, baseType: !4269, size: 64, offset: 640)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4319, file: !142, line: 113, baseType: !4355, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!103, !4241, !4358}
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !95, line: 60, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !95, line: 58, size: 32, elements: !4360)
!4360 = !{!4361}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4359, file: !95, line: 59, baseType: !103, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4319, file: !142, line: 114, baseType: !4278, size: 64, offset: 768)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4319, file: !142, line: 115, baseType: !309, size: 64, offset: 832)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4319, file: !142, line: 116, baseType: !309, size: 64, offset: 896)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4319, file: !142, line: 118, baseType: !4273, size: 64, offset: 960)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4319, file: !142, line: 119, baseType: !4269, size: 64, offset: 1024)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4319, file: !142, line: 121, baseType: !4368, size: 64, offset: 1088)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !142, line: 121, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4306, file: !4307, line: 88, baseType: !4258, size: 64, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4306, file: !4307, line: 89, baseType: !4278, size: 64, offset: 448)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4306, file: !4307, line: 90, baseType: !4269, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4306, file: !4307, line: 91, baseType: !4269, size: 64, offset: 576)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4306, file: !4307, line: 92, baseType: !4269, size: 64, offset: 640)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4306, file: !4307, line: 94, baseType: !4278, size: 64, offset: 704)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4306, file: !4307, line: 95, baseType: !4278, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4306, file: !4307, line: 97, baseType: !4355, size: 64, offset: 832)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4306, file: !4307, line: 98, baseType: !4278, size: 64, offset: 896)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4306, file: !4307, line: 100, baseType: !4278, size: 64, offset: 960)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4306, file: !4307, line: 102, baseType: !4278, size: 64, offset: 1024)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4306, file: !4307, line: 103, baseType: !4269, size: 64, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4306, file: !4307, line: 105, baseType: !4273, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4306, file: !4307, line: 107, baseType: !4384, size: 64, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4307, line: 107, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4306, file: !4307, line: 109, baseType: !1458, size: 8, offset: 1280)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4242, file: !88, line: 715, baseType: !4318, size: 64, offset: 832)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4242, file: !88, line: 717, baseType: !329, size: 64, offset: 896)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4242, file: !88, line: 719, baseType: !329, size: 64, offset: 960)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4242, file: !88, line: 721, baseType: !638, size: 256, offset: 1024)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4242, file: !88, line: 725, baseType: !4393, size: 448, offset: 1280)
!4393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !88, line: 517, size: 448, elements: !4394)
!4394 = !{!4395, !4396, !4397, !4398}
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4393, file: !88, line: 518, baseType: !157, size: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4393, file: !88, line: 519, baseType: !157, size: 128, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4393, file: !88, line: 520, baseType: !157, size: 128, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4393, file: !88, line: 521, baseType: !87, size: 32, offset: 384)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4242, file: !88, line: 726, baseType: !4400, size: 2496, offset: 1728)
!4400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !95, line: 663, size: 2496, elements: !4401)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4484, !4488}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4400, file: !95, line: 664, baseType: !4358, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4400, file: !95, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4400, file: !95, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4400, file: !95, line: 667, baseType: !1458, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4400, file: !95, line: 668, baseType: !1458, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4400, file: !95, line: 669, baseType: !1458, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4400, file: !95, line: 670, baseType: !1458, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4400, file: !95, line: 671, baseType: !1458, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4400, file: !95, line: 672, baseType: !1458, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4400, file: !95, line: 673, baseType: !1458, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4400, file: !95, line: 674, baseType: !1458, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4400, file: !95, line: 675, baseType: !407, size: 32, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4400, file: !95, line: 676, baseType: !187, size: 32, offset: 96)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4400, file: !95, line: 678, baseType: !157, size: 128, offset: 128)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4400, file: !95, line: 679, baseType: !1747, size: 256, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4400, file: !95, line: 680, baseType: !4418, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4420, line: 43, size: 1536, elements: !4421)
!4420 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4419, file: !4420, line: 44, baseType: !176, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4419, file: !4420, line: 45, baseType: !103, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4419, file: !4420, line: 46, baseType: !157, size: 128, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4419, file: !4420, line: 47, baseType: !187, size: 32, offset: 256)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4419, file: !4420, line: 48, baseType: !4427, size: 64, offset: 320)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !95, line: 629, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4419, file: !4420, line: 49, baseType: !2930, size: 320, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4419, file: !4420, line: 50, baseType: !307, size: 64, offset: 704)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4419, file: !4420, line: 51, baseType: !1102, size: 64, offset: 768)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4419, file: !4420, line: 52, baseType: !1102, size: 64, offset: 832)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4419, file: !4420, line: 53, baseType: !1102, size: 64, offset: 896)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4419, file: !4420, line: 54, baseType: !1102, size: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4419, file: !4420, line: 55, baseType: !1102, size: 64, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4419, file: !4420, line: 56, baseType: !307, size: 64, offset: 1088)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4419, file: !4420, line: 57, baseType: !307, size: 64, offset: 1152)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4419, file: !4420, line: 58, baseType: !307, size: 64, offset: 1216)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4419, file: !4420, line: 59, baseType: !307, size: 64, offset: 1280)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4419, file: !4420, line: 60, baseType: !307, size: 64, offset: 1344)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4419, file: !4420, line: 61, baseType: !4241, size: 64, offset: 1408)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4419, file: !4420, line: 62, baseType: !1458, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4419, file: !4420, line: 63, baseType: !1458, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4400, file: !95, line: 681, baseType: !1458, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4400, file: !95, line: 682, baseType: !1458, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4400, file: !95, line: 683, baseType: !1458, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4400, file: !95, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4400, file: !95, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4400, file: !95, line: 690, baseType: !1094, size: 512, offset: 640)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4400, file: !95, line: 691, baseType: !411, size: 64, offset: 1152)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4400, file: !95, line: 692, baseType: !2226, size: 256, offset: 1216)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4400, file: !95, line: 693, baseType: !944, size: 192, offset: 1472)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4400, file: !95, line: 694, baseType: !4427, size: 64, offset: 1664)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4400, file: !95, line: 695, baseType: !207, size: 32, offset: 1728)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4400, file: !95, line: 696, baseType: !207, size: 32, offset: 1760)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4400, file: !95, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4400, file: !95, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4400, file: !95, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4400, file: !95, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4400, file: !95, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4400, file: !95, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4400, file: !95, line: 703, baseType: !1458, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4400, file: !95, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4400, file: !95, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4400, file: !95, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4400, file: !95, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4400, file: !95, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4400, file: !95, line: 709, baseType: !7, size: 32, offset: 1824)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4400, file: !95, line: 710, baseType: !94, size: 32, offset: 1856)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4400, file: !95, line: 711, baseType: !102, size: 32, offset: 1888)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4400, file: !95, line: 712, baseType: !102, size: 32, offset: 1920)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4400, file: !95, line: 713, baseType: !103, size: 32, offset: 1952)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4400, file: !95, line: 714, baseType: !103, size: 32, offset: 1984)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4400, file: !95, line: 715, baseType: !411, size: 64, offset: 2048)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4400, file: !95, line: 716, baseType: !411, size: 64, offset: 2112)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4400, file: !95, line: 717, baseType: !411, size: 64, offset: 2176)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4400, file: !95, line: 718, baseType: !411, size: 64, offset: 2240)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4400, file: !95, line: 720, baseType: !4479, size: 64, offset: 2304)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !95, line: 632, size: 64, elements: !4481)
!4481 = !{!4482, !4483}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4480, file: !95, line: 633, baseType: !187, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4480, file: !95, line: 634, baseType: !7, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4400, file: !95, line: 721, baseType: !4485, size: 64, offset: 2368)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !4241, !1401}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4400, file: !95, line: 722, baseType: !4489, size: 64, offset: 2432)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !95, line: 722, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4242, file: !88, line: 727, baseType: !4492, size: 64, offset: 4224)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !95, line: 742, size: 1792, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4501, !4502, !4503}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4493, file: !95, line: 743, baseType: !4275, size: 1472)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4493, file: !95, line: 744, baseType: !4278, size: 64, offset: 1472)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4493, file: !95, line: 745, baseType: !4498, size: 64, offset: 1536)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{null, !4241, !1458}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4493, file: !95, line: 746, baseType: !4278, size: 64, offset: 1600)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4493, file: !95, line: 747, baseType: !4269, size: 64, offset: 1664)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4493, file: !95, line: 748, baseType: !4269, size: 64, offset: 1728)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4242, file: !88, line: 736, baseType: !4505, size: 128, offset: 4288)
!4505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !88, line: 529, size: 128, elements: !4506)
!4506 = !{!4507, !4511}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4505, file: !88, line: 531, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4510, line: 13, flags: DIFlagFwdDecl)
!4510 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4505, file: !88, line: 532, baseType: !4512, size: 64, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !88, line: 49, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4242, file: !88, line: 738, baseType: !4515, size: 64, offset: 4416)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4517)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !88, line: 738, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4242, file: !88, line: 740, baseType: !4519, size: 64, offset: 4480)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4242, file: !88, line: 741, baseType: !411, size: 64, offset: 4544)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4242, file: !88, line: 746, baseType: !411, size: 64, offset: 4608)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4242, file: !88, line: 747, baseType: !4523, size: 64, offset: 4672)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4525 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !88, line: 747, flags: DIFlagFwdDecl)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4242, file: !88, line: 749, baseType: !4527, size: 64, offset: 4736)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !88, line: 428, size: 128, elements: !4529)
!4529 = !{!4530, !4531, !4532}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4528, file: !88, line: 433, baseType: !7, size: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4528, file: !88, line: 434, baseType: !7, size: 32, offset: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4528, file: !88, line: 435, baseType: !307, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4242, file: !88, line: 751, baseType: !157, size: 128, offset: 4800)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4242, file: !88, line: 762, baseType: !4535, size: 64, offset: 4928)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !88, line: 762, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4242, file: !88, line: 770, baseType: !4538, offset: 4992)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4539, line: 5, elements: !542)
!4539 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4242, file: !88, line: 772, baseType: !4541, size: 64, offset: 4992)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4543, line: 48, size: 1152, elements: !4544)
!4543 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4544 = !{!4545, !4546, !4548, !4549, !4652, !4660, !4661, !4662, !4663, !4664, !4665}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4542, file: !4543, line: 49, baseType: !176, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4542, file: !4543, line: 50, baseType: !4547, size: 32, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4543, line: 25, baseType: !407)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4542, file: !4543, line: 51, baseType: !176, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4542, file: !4543, line: 52, baseType: !4550, size: 512, offset: 192)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4551, line: 41, size: 512, elements: !4552)
!4551 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4552 = !{!4553, !4555, !4648, !4649, !4650, !4651}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4550, file: !4551, line: 42, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4550, file: !4551, line: 43, baseType: !4556, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4558)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4551, line: 125, size: 1408, elements: !4559)
!4559 = !{!4560, !4564, !4568, !4574, !4578, !4579, !4583, !4587, !4591, !4595, !4599, !4600, !4604, !4608, !4612, !4623, !4624, !4625, !4626, !4636, !4640, !4644}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4558, file: !4551, line: 126, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!4554, !4554}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4558, file: !4551, line: 127, baseType: !4565, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{null, !4554}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4558, file: !4551, line: 128, baseType: !4569, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!1458, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4550)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4558, file: !4551, line: 129, baseType: !4575, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!2187, !4572, !4261}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4558, file: !4551, line: 131, baseType: !4569, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4558, file: !4551, line: 133, baseType: !4580, size: 64, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!110, !4572}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4558, file: !4551, line: 134, baseType: !4584, size: 64, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!1458, !4572, !176}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4558, file: !4551, line: 136, baseType: !4588, size: 64, offset: 448)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!103, !4572, !176, !7, !329, !304}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4558, file: !4551, line: 141, baseType: !4592, size: 64, offset: 512)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!103, !4572, !176, !4158, !304}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4558, file: !4551, line: 144, baseType: !4596, size: 64, offset: 576)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!176, !4572}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4558, file: !4551, line: 145, baseType: !4596, size: 64, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4558, file: !4551, line: 146, baseType: !4601, size: 64, offset: 704)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4554, !4572}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4558, file: !4551, line: 148, baseType: !4605, size: 64, offset: 768)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!4554, !4572, !4554}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4558, file: !4551, line: 151, baseType: !4609, size: 64, offset: 832)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!4554, !4572, !176}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4558, file: !4551, line: 153, baseType: !4613, size: 64, offset: 896)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!103, !4572, !176, !176, !7, !7, !4616}
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4551, line: 94, size: 640, elements: !4618)
!4618 = !{!4619, !4620, !4621}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4617, file: !4551, line: 95, baseType: !4554, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4617, file: !4551, line: 96, baseType: !7, size: 32, offset: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4617, file: !4551, line: 97, baseType: !4622, size: 512, offset: 128)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1137)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4558, file: !4551, line: 158, baseType: !4605, size: 64, offset: 960)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4558, file: !4551, line: 161, baseType: !4601, size: 64, offset: 1024)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4558, file: !4551, line: 163, baseType: !4561, size: 64, offset: 1088)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4558, file: !4551, line: 164, baseType: !4627, size: 64, offset: 1152)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!103, !4572, !4630}
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4551, line: 73, size: 128, elements: !4632)
!4632 = !{!4633, !4634, !4635}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4631, file: !4551, line: 74, baseType: !7, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4631, file: !4551, line: 75, baseType: !7, size: 32, offset: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4631, file: !4551, line: 76, baseType: !4572, size: 64, offset: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4558, file: !4551, line: 166, baseType: !4637, size: 64, offset: 1216)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!329, !4554, !103}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4558, file: !4551, line: 167, baseType: !4641, size: 64, offset: 1280)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!103, !4572, !7}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4558, file: !4551, line: 168, baseType: !4645, size: 64, offset: 1344)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!103, !4554}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4550, file: !4551, line: 44, baseType: !4241, size: 64, offset: 128)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4550, file: !4551, line: 45, baseType: !157, size: 128, offset: 192)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4550, file: !4551, line: 46, baseType: !157, size: 128, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4550, file: !4551, line: 47, baseType: !215, size: 8, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4542, file: !4543, line: 54, baseType: !4653, size: 64, offset: 704)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4543, line: 28, size: 256, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4659}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4654, file: !4543, line: 29, baseType: !257, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4654, file: !4543, line: 30, baseType: !103, size: 32, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4654, file: !4543, line: 31, baseType: !329, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4654, file: !4543, line: 32, baseType: !4653, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4542, file: !4543, line: 55, baseType: !4653, size: 64, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4542, file: !4543, line: 56, baseType: !4541, size: 64, offset: 832)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4542, file: !4543, line: 57, baseType: !4541, size: 64, offset: 896)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4542, file: !4543, line: 58, baseType: !4541, size: 64, offset: 960)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4542, file: !4543, line: 62, baseType: !307, size: 64, offset: 1024)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4542, file: !4543, line: 63, baseType: !329, size: 64, offset: 1088)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4242, file: !88, line: 773, baseType: !4554, size: 64, offset: 5056)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4242, file: !88, line: 776, baseType: !103, size: 32, offset: 5120)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4242, file: !88, line: 778, baseType: !494, size: 32, offset: 5152)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4242, file: !88, line: 779, baseType: !407, size: 32, offset: 5184)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4242, file: !88, line: 781, baseType: !187, size: 32, offset: 5216)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4242, file: !88, line: 782, baseType: !157, size: 128, offset: 5248)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4242, file: !88, line: 784, baseType: !4673, size: 64, offset: 5376)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4675)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4676, line: 52, size: 768, elements: !4677)
!4676 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4677 = !{!4678, !4679, !4680, !4681, !4682, !4686, !4690, !4691, !4692, !4693, !4697, !4701}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4675, file: !4676, line: 53, baseType: !176, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4675, file: !4676, line: 55, baseType: !309, size: 64, offset: 64)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4675, file: !4676, line: 56, baseType: !309, size: 64, offset: 128)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4675, file: !4676, line: 58, baseType: !4258, size: 64, offset: 192)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4675, file: !4676, line: 59, baseType: !4683, size: 64, offset: 256)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!257, !4261, !4267}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4675, file: !4676, line: 61, baseType: !4687, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{null, !4673}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4675, file: !4676, line: 62, baseType: !4269, size: 64, offset: 384)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4675, file: !4676, line: 64, baseType: !4278, size: 64, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4675, file: !4676, line: 66, baseType: !3710, size: 64, offset: 512)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4675, file: !4676, line: 67, baseType: !4694, size: 64, offset: 576)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!2187, !4261}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4675, file: !4676, line: 69, baseType: !4698, size: 64, offset: 640)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{null, !4261, !3742, !3743}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4675, file: !4676, line: 71, baseType: !4273, size: 64, offset: 704)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4242, file: !88, line: 785, baseType: !309, size: 64, offset: 5440)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4242, file: !88, line: 787, baseType: !4269, size: 64, offset: 5504)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4242, file: !88, line: 788, baseType: !4705, size: 64, offset: 5568)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !88, line: 46, flags: DIFlagFwdDecl)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4242, file: !88, line: 789, baseType: !4708, size: 64, offset: 5632)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !88, line: 48, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4242, file: !88, line: 791, baseType: !4711, size: 64, offset: 5696)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !88, line: 597, size: 128, elements: !4713)
!4713 = !{!4714, !4715, !4716, !4717, !4718}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4712, file: !88, line: 598, baseType: !116, size: 32)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4712, file: !88, line: 599, baseType: !125, size: 32, offset: 32)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4712, file: !88, line: 600, baseType: !130, size: 32, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4712, file: !88, line: 601, baseType: !1458, size: 8, offset: 96)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4712, file: !88, line: 602, baseType: !1458, size: 8, offset: 104)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4242, file: !88, line: 793, baseType: !135, size: 32, offset: 5760)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4242, file: !88, line: 795, baseType: !1458, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4242, file: !88, line: 796, baseType: !1458, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4242, file: !88, line: 797, baseType: !1458, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4242, file: !88, line: 798, baseType: !1458, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4242, file: !88, line: 799, baseType: !1458, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !148, line: 404, baseType: !147, size: 32, offset: 9536)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !149, file: !148, line: 407, baseType: !4242, size: 5824, offset: 9600)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "mdio_map", scope: !149, file: !148, line: 410, baseType: !4728, size: 2048, offset: 15424)
!4728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4729, size: 2048, elements: !420)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_device", file: !4731, line: 28, size: 6592, elements: !4732)
!4731 = !DIFile(filename: "./include/linux/mdio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e329aaa4a41f6bd61bafcd94e0d6a6")
!4732 = !{!4733, !4734, !4735, !4736, !4737, !4741, !4742, !4743, !4744, !4748, !4751, !4752}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4730, file: !4731, line: 29, baseType: !4242, size: 5824)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4730, file: !4731, line: 31, baseType: !4197, size: 64, offset: 5824)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !4730, file: !4731, line: 32, baseType: !3205, size: 256, offset: 5888)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "bus_match", scope: !4730, file: !4731, line: 34, baseType: !4315, size: 64, offset: 6144)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !4730, file: !4731, line: 35, baseType: !4738, size: 64, offset: 6208)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !4729}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "device_remove", scope: !4730, file: !4731, line: 36, baseType: !4738, size: 64, offset: 6272)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4730, file: !4731, line: 39, baseType: !103, size: 32, offset: 6336)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4730, file: !4731, line: 40, baseType: !103, size: 32, offset: 6368)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "reset_gpio", scope: !4730, file: !4731, line: 41, baseType: !4745, size: 64, offset: 6400)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4747, line: 23, flags: DIFlagFwdDecl)
!4747 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ctrl", scope: !4730, file: !4731, line: 42, baseType: !4749, size: 64, offset: 6464)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !4731, line: 15, flags: DIFlagFwdDecl)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "reset_assert_delay", scope: !4730, file: !4731, line: 43, baseType: !7, size: 32, offset: 6528)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "reset_deassert_delay", scope: !4730, file: !4731, line: 44, baseType: !7, size: 32, offset: 6560)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "phy_mask", scope: !149, file: !148, line: 413, baseType: !407, size: 32, offset: 17472)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "phy_ignore_ta_mask", scope: !149, file: !148, line: 416, baseType: !407, size: 32, offset: 17504)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !149, file: !148, line: 422, baseType: !4756, size: 1024, offset: 17536)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 1024, elements: !420)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "reset_delay_us", scope: !149, file: !148, line: 425, baseType: !103, size: 32, offset: 18560)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "reset_post_delay_us", scope: !149, file: !148, line: 427, baseType: !103, size: 32, offset: 18592)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "reset_gpiod", scope: !149, file: !148, line: 429, baseType: !4745, size: 64, offset: 18624)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "shared_lock", scope: !149, file: !148, line: 432, baseType: !638, size: 256, offset: 18688)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !149, file: !148, line: 435, baseType: !4762, size: 2048, offset: 18944)
!4762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4763, size: 2048, elements: !420)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_package_shared", file: !148, line: 340, size: 256, elements: !4765)
!4765 = !{!4766, !4767, !4768, !4769, !4770}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4764, file: !148, line: 341, baseType: !103, size: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4764, file: !148, line: 342, baseType: !980, size: 32, offset: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4764, file: !148, line: 343, baseType: !307, size: 64, offset: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "priv_size", scope: !4764, file: !148, line: 344, baseType: !304, size: 64, offset: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4764, file: !148, line: 352, baseType: !329, size: 64, offset: 192)
!4771 = !{!4772, !4773, !4774, !4775}
!4772 = !DIEnumerator(name: "MDIOBUS_ALLOCATED", value: 1)
!4773 = !DIEnumerator(name: "MDIOBUS_REGISTERED", value: 2)
!4774 = !DIEnumerator(name: "MDIOBUS_UNREGISTERED", value: 3)
!4775 = !DIEnumerator(name: "MDIOBUS_RELEASED", value: 4)
!4776 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_link_state", file: !88, line: 447, baseType: !103, size: 32, elements: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782, !4783}
!4778 = !DIEnumerator(name: "DL_STATE_NONE", value: -1)
!4779 = !DIEnumerator(name: "DL_STATE_DORMANT", value: 0)
!4780 = !DIEnumerator(name: "DL_STATE_AVAILABLE", value: 1)
!4781 = !DIEnumerator(name: "DL_STATE_CONSUMER_PROBE", value: 2)
!4782 = !DIEnumerator(name: "DL_STATE_ACTIVE", value: 3)
!4783 = !DIEnumerator(name: "DL_STATE_SUPPLIER_UNBIND", value: 4)
!4784 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_state", file: !148, line: 511, baseType: !7, size: 32, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793}
!4786 = !DIEnumerator(name: "PHY_DOWN", value: 0)
!4787 = !DIEnumerator(name: "PHY_READY", value: 1)
!4788 = !DIEnumerator(name: "PHY_HALTED", value: 2)
!4789 = !DIEnumerator(name: "PHY_ERROR", value: 3)
!4790 = !DIEnumerator(name: "PHY_UP", value: 4)
!4791 = !DIEnumerator(name: "PHY_RUNNING", value: 5)
!4792 = !DIEnumerator(name: "PHY_NOLINK", value: 6)
!4793 = !DIEnumerator(name: "PHY_CABLETEST", value: 7)
!4794 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 132, baseType: !7, size: 32, elements: !4795)
!4795 = !{!4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829}
!4796 = !DIEnumerator(name: "PHY_INTERFACE_MODE_NA", value: 0)
!4797 = !DIEnumerator(name: "PHY_INTERFACE_MODE_INTERNAL", value: 1)
!4798 = !DIEnumerator(name: "PHY_INTERFACE_MODE_MII", value: 2)
!4799 = !DIEnumerator(name: "PHY_INTERFACE_MODE_GMII", value: 3)
!4800 = !DIEnumerator(name: "PHY_INTERFACE_MODE_SGMII", value: 4)
!4801 = !DIEnumerator(name: "PHY_INTERFACE_MODE_TBI", value: 5)
!4802 = !DIEnumerator(name: "PHY_INTERFACE_MODE_REVMII", value: 6)
!4803 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RMII", value: 7)
!4804 = !DIEnumerator(name: "PHY_INTERFACE_MODE_REVRMII", value: 8)
!4805 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII", value: 9)
!4806 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII_ID", value: 10)
!4807 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII_RXID", value: 11)
!4808 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII_TXID", value: 12)
!4809 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RTBI", value: 13)
!4810 = !DIEnumerator(name: "PHY_INTERFACE_MODE_SMII", value: 14)
!4811 = !DIEnumerator(name: "PHY_INTERFACE_MODE_XGMII", value: 15)
!4812 = !DIEnumerator(name: "PHY_INTERFACE_MODE_XLGMII", value: 16)
!4813 = !DIEnumerator(name: "PHY_INTERFACE_MODE_MOCA", value: 17)
!4814 = !DIEnumerator(name: "PHY_INTERFACE_MODE_PSGMII", value: 18)
!4815 = !DIEnumerator(name: "PHY_INTERFACE_MODE_QSGMII", value: 19)
!4816 = !DIEnumerator(name: "PHY_INTERFACE_MODE_TRGMII", value: 20)
!4817 = !DIEnumerator(name: "PHY_INTERFACE_MODE_100BASEX", value: 21)
!4818 = !DIEnumerator(name: "PHY_INTERFACE_MODE_1000BASEX", value: 22)
!4819 = !DIEnumerator(name: "PHY_INTERFACE_MODE_2500BASEX", value: 23)
!4820 = !DIEnumerator(name: "PHY_INTERFACE_MODE_5GBASER", value: 24)
!4821 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RXAUI", value: 25)
!4822 = !DIEnumerator(name: "PHY_INTERFACE_MODE_XAUI", value: 26)
!4823 = !DIEnumerator(name: "PHY_INTERFACE_MODE_10GBASER", value: 27)
!4824 = !DIEnumerator(name: "PHY_INTERFACE_MODE_25GBASER", value: 28)
!4825 = !DIEnumerator(name: "PHY_INTERFACE_MODE_USXGMII", value: 29)
!4826 = !DIEnumerator(name: "PHY_INTERFACE_MODE_10GKR", value: 30)
!4827 = !DIEnumerator(name: "PHY_INTERFACE_MODE_QUSGMII", value: 31)
!4828 = !DIEnumerator(name: "PHY_INTERFACE_MODE_1000BASEKX", value: 32)
!4829 = !DIEnumerator(name: "PHY_INTERFACE_MODE_MAX", value: 33)
!4830 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !4831, line: 11, baseType: !7, size: 32, elements: !4832)
!4831 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!4832 = !{!4833, !4834, !4835}
!4833 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!4834 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!4835 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!4836 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !4747, line: 33, baseType: !7, size: 32, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841}
!4838 = !DIEnumerator(name: "LED_OFF", value: 0)
!4839 = !DIEnumerator(name: "LED_ON", value: 1)
!4840 = !DIEnumerator(name: "LED_HALF", value: 127)
!4841 = !DIEnumerator(name: "LED_FULL", value: 255)
!4842 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4843, line: 10, baseType: !7, size: 32, elements: !4844)
!4843 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4844 = !{!4845, !4846}
!4845 = !DIEnumerator(name: "false", value: 0)
!4846 = !DIEnumerator(name: "true", value: 1)
!4847 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ethtool_link_mode_bit_indices", file: !4848, line: 1679, baseType: !7, size: 32, elements: !4849)
!4848 = !DIFile(filename: "./include/uapi/linux/ethtool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9220d03792ac517f4e9c9f8e4448f58")
!4849 = !{!4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952}
!4850 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT_Half_BIT", value: 0)
!4851 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT_Full_BIT", value: 1)
!4852 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT_Half_BIT", value: 2)
!4853 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT_Full_BIT", value: 3)
!4854 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT_Half_BIT", value: 4)
!4855 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT_Full_BIT", value: 5)
!4856 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Autoneg_BIT", value: 6)
!4857 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_TP_BIT", value: 7)
!4858 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_AUI_BIT", value: 8)
!4859 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_MII_BIT", value: 9)
!4860 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FIBRE_BIT", value: 10)
!4861 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_BNC_BIT", value: 11)
!4862 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseT_Full_BIT", value: 12)
!4863 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Pause_BIT", value: 13)
!4864 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Asym_Pause_BIT", value: 14)
!4865 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_2500baseX_Full_BIT", value: 15)
!4866 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Backplane_BIT", value: 16)
!4867 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseKX_Full_BIT", value: 17)
!4868 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT", value: 18)
!4869 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseKR_Full_BIT", value: 19)
!4870 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseR_FEC_BIT", value: 20)
!4871 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_20000baseMLD2_Full_BIT", value: 21)
!4872 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT", value: 22)
!4873 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT", value: 23)
!4874 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT", value: 24)
!4875 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT", value: 25)
!4876 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT", value: 26)
!4877 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseKR4_Full_BIT", value: 27)
!4878 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseCR4_Full_BIT", value: 28)
!4879 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseSR4_Full_BIT", value: 29)
!4880 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseLR4_Full_BIT", value: 30)
!4881 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseCR_Full_BIT", value: 31)
!4882 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseKR_Full_BIT", value: 32)
!4883 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseSR_Full_BIT", value: 33)
!4884 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT", value: 34)
!4885 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT", value: 35)
!4886 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT", value: 36)
!4887 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT", value: 37)
!4888 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT", value: 38)
!4889 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT", value: 39)
!4890 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT", value: 40)
!4891 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseX_Full_BIT", value: 41)
!4892 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseCR_Full_BIT", value: 42)
!4893 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseSR_Full_BIT", value: 43)
!4894 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseLR_Full_BIT", value: 44)
!4895 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT", value: 45)
!4896 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseER_Full_BIT", value: 46)
!4897 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_2500baseT_Full_BIT", value: 47)
!4898 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_5000baseT_Full_BIT", value: 48)
!4899 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_NONE_BIT", value: 49)
!4900 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_RS_BIT", value: 50)
!4901 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_BASER_BIT", value: 51)
!4902 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseKR_Full_BIT", value: 52)
!4903 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseSR_Full_BIT", value: 53)
!4904 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseCR_Full_BIT", value: 54)
!4905 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseLR_ER_FR_Full_BIT", value: 55)
!4906 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseDR_Full_BIT", value: 56)
!4907 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT", value: 57)
!4908 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT", value: 58)
!4909 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT", value: 59)
!4910 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR2_ER2_FR2_Full_BIT", value: 60)
!4911 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseDR2_Full_BIT", value: 61)
!4912 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseKR4_Full_BIT", value: 62)
!4913 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseSR4_Full_BIT", value: 63)
!4914 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseLR4_ER4_FR4_Full_BIT", value: 64)
!4915 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseDR4_Full_BIT", value: 65)
!4916 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseCR4_Full_BIT", value: 66)
!4917 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT1_Full_BIT", value: 67)
!4918 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT1_Full_BIT", value: 68)
!4919 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseKR8_Full_BIT", value: 69)
!4920 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseSR8_Full_BIT", value: 70)
!4921 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseLR8_ER8_FR8_Full_BIT", value: 71)
!4922 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseDR8_Full_BIT", value: 72)
!4923 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseCR8_Full_BIT", value: 73)
!4924 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_LLRS_BIT", value: 74)
!4925 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR_Full_BIT", value: 75)
!4926 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR_Full_BIT", value: 76)
!4927 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR_ER_FR_Full_BIT", value: 77)
!4928 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR_Full_BIT", value: 78)
!4929 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseDR_Full_BIT", value: 79)
!4930 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseKR2_Full_BIT", value: 80)
!4931 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseSR2_Full_BIT", value: 81)
!4932 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseLR2_ER2_FR2_Full_BIT", value: 82)
!4933 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseDR2_Full_BIT", value: 83)
!4934 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseCR2_Full_BIT", value: 84)
!4935 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseKR4_Full_BIT", value: 85)
!4936 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseSR4_Full_BIT", value: 86)
!4937 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseLR4_ER4_FR4_Full_BIT", value: 87)
!4938 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseDR4_Full_BIT", value: 88)
!4939 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseCR4_Full_BIT", value: 89)
!4940 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseFX_Half_BIT", value: 90)
!4941 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseFX_Full_BIT", value: 91)
!4942 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1L_Full_BIT", value: 92)
!4943 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseCR8_Full_BIT", value: 93)
!4944 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseKR8_Full_BIT", value: 94)
!4945 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseDR8_Full_BIT", value: 95)
!4946 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseDR8_2_Full_BIT", value: 96)
!4947 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseSR8_Full_BIT", value: 97)
!4948 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseVR8_Full_BIT", value: 98)
!4949 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1S_Full_BIT", value: 99)
!4950 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1S_Half_BIT", value: 100)
!4951 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1S_P2MP_Half_BIT", value: 101)
!4952 = !DIEnumerator(name: "__ETHTOOL_LINK_MODE_MASK_NBITS", value: 102)
!4953 = !{!329, !103, !152, !4172, !703, !307, !293, !4954, !4955, !4956, !225}
!4954 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !158, line: 42, baseType: !307)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !293)
!4958 = !{!0, !4959, !4964, !4969, !4972, !4974, !4978, !4983, !4988, !4993, !4998, !5003, !5005, !5010, !5012, !5014, !5017, !5019, !5022, !5027, !5029, !5034, !5036, !5038, !5040, !5042, !5044, !5046, !5756, !5761, !5766, !5768, !5773, !5775, !5778, !5780, !5784, !5789}
!4959 = !DIGlobalVariableExpression(var: !4960, expr: !DIExpression())
!4960 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author339", scope: !2, file: !3, line: 77, type: !4961, isLocal: true, isDefinition: true, align: 8)
!4961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 232, elements: !4962)
!4962 = !{!4963}
!4963 = !DISubrange(count: 29)
!4964 = !DIGlobalVariableExpression(var: !4965, expr: !DIExpression())
!4965 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file340", scope: !2, file: !3, line: 78, type: !4966, isLocal: true, isDefinition: true, align: 8)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 296, elements: !4967)
!4967 = !{!4968}
!4968 = !DISubrange(count: 37)
!4969 = !DIGlobalVariableExpression(var: !4970, expr: !DIExpression())
!4970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license341", scope: !2, file: !3, line: 78, type: !4971, isLocal: true, isDefinition: true, align: 8)
!4971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 160, elements: !3051)
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_realtek__342_1096_phy_module_init6343", scope: !2, file: !3, line: 1096, type: !329, isLocal: true, isDefinition: true)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(name: "__exitcall_phy_module_exit", scope: !2, file: !3, line: 1096, type: !4976, isLocal: true, isDefinition: true)
!4976 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4977, line: 120, baseType: !4185)
!4977 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4978 = !DIGlobalVariableExpression(var: !4979, expr: !DIExpression())
!4979 = distinct !DIGlobalVariable(scope: null, file: !3, line: 885, type: !4980, isLocal: true, isDefinition: true)
!4980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 152, elements: !4981)
!4981 = !{!4982}
!4982 = !DISubrange(count: 19)
!4983 = !DIGlobalVariableExpression(var: !4984, expr: !DIExpression())
!4984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 890, type: !4985, isLocal: true, isDefinition: true)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 184, elements: !4986)
!4986 = !{!4987}
!4987 = !DISubrange(count: 23)
!4988 = !DIGlobalVariableExpression(var: !4989, expr: !DIExpression())
!4989 = distinct !DIGlobalVariable(scope: null, file: !3, line: 899, type: !4990, isLocal: true, isDefinition: true)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 176, elements: !4991)
!4991 = !{!4992}
!4992 = !DISubrange(count: 22)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 908, type: !4995, isLocal: true, isDefinition: true)
!4995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 200, elements: !4996)
!4996 = !{!4997}
!4997 = !DISubrange(count: 25)
!4998 = !DIGlobalVariableExpression(var: !4999, expr: !DIExpression())
!4999 = distinct !DIGlobalVariable(scope: null, file: !3, line: 916, type: !5000, isLocal: true, isDefinition: true)
!5000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 208, elements: !5001)
!5001 = !{!5002}
!5002 = !DISubrange(count: 26)
!5003 = !DIGlobalVariableExpression(var: !5004, expr: !DIExpression())
!5004 = distinct !DIGlobalVariable(scope: null, file: !3, line: 927, type: !5000, isLocal: true, isDefinition: true)
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(scope: null, file: !3, line: 935, type: !5007, isLocal: true, isDefinition: true)
!5007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 216, elements: !5008)
!5008 = !{!5009}
!5009 = !DISubrange(count: 27)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 944, type: !5000, isLocal: true, isDefinition: true)
!5012 = !DIGlobalVariableExpression(var: !5013, expr: !DIExpression())
!5013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 954, type: !5000, isLocal: true, isDefinition: true)
!5014 = !DIGlobalVariableExpression(var: !5015, expr: !DIExpression())
!5015 = distinct !DIGlobalVariable(scope: null, file: !3, line: 967, type: !5016, isLocal: true, isDefinition: true)
!5016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 232, elements: !4962)
!5017 = !DIGlobalVariableExpression(var: !5018, expr: !DIExpression())
!5018 = distinct !DIGlobalVariable(scope: null, file: !3, line: 979, type: !5000, isLocal: true, isDefinition: true)
!5019 = !DIGlobalVariableExpression(var: !5020, expr: !DIExpression())
!5020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 989, type: !5021, isLocal: true, isDefinition: true)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 160, elements: !3051)
!5022 = !DIGlobalVariableExpression(var: !5023, expr: !DIExpression())
!5023 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1002, type: !5024, isLocal: true, isDefinition: true)
!5024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 240, elements: !5025)
!5025 = !{!5026}
!5026 = !DISubrange(count: 30)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1014, type: !4985, isLocal: true, isDefinition: true)
!5029 = !DIGlobalVariableExpression(var: !5030, expr: !DIExpression())
!5030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1024, type: !5031, isLocal: true, isDefinition: true)
!5031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 288, elements: !5032)
!5032 = !{!5033}
!5033 = !DISubrange(count: 36)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1034, type: !5007, isLocal: true, isDefinition: true)
!5036 = !DIGlobalVariableExpression(var: !5037, expr: !DIExpression())
!5037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1044, type: !5007, isLocal: true, isDefinition: true)
!5038 = !DIGlobalVariableExpression(var: !5039, expr: !DIExpression())
!5039 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1054, type: !5007, isLocal: true, isDefinition: true)
!5040 = !DIGlobalVariableExpression(var: !5041, expr: !DIExpression())
!5041 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1067, type: !5016, isLocal: true, isDefinition: true)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1080, type: !5024, isLocal: true, isDefinition: true)
!5044 = !DIGlobalVariableExpression(var: !5045, expr: !DIExpression())
!5045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1088, type: !5000, isLocal: true, isDefinition: true)
!5046 = !DIGlobalVariableExpression(var: !5047, expr: !DIExpression())
!5047 = distinct !DIGlobalVariable(name: "realtek_drvs", scope: !2, file: !3, line: 882, type: !5048, isLocal: true, isDefinition: true)
!5048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5049, size: 90048, elements: !5754)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_driver", file: !148, line: 892, size: 4288, elements: !5050)
!5050 = !{!5051, !5056, !5057, !5058, !5059, !5061, !5062, !5063, !5574, !5575, !5576, !5577, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5592, !5596, !5597, !5609, !5613, !5614, !5618, !5622, !5623, !5627, !5639, !5653, !5654, !5666, !5670, !5671, !5675, !5686, !5699, !5703, !5707, !5708, !5709, !5723, !5729, !5737, !5741, !5745, !5749, !5750}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "mdiodrv", scope: !5049, file: !148, line: 893, baseType: !5052, size: 1216)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_driver_common", file: !4731, line: 53, size: 1216, elements: !5053)
!5053 = !{!5054, !5055}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5052, file: !4731, line: 54, baseType: !4319, size: 1152)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5052, file: !4731, line: 55, baseType: !103, size: 32, offset: 1152)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id", scope: !5049, file: !148, line: 894, baseType: !407, size: 32, offset: 1216)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5049, file: !148, line: 895, baseType: !257, size: 64, offset: 1280)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id_mask", scope: !5049, file: !148, line: 896, baseType: !407, size: 32, offset: 1344)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !5049, file: !148, line: 897, baseType: !5060, size: 64, offset: 1408)
!5060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4955)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5049, file: !148, line: 898, baseType: !407, size: 32, offset: 1472)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5049, file: !148, line: 899, baseType: !2187, size: 64, offset: 1536)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !5049, file: !148, line: 904, baseType: !5064, size: 64, offset: 1600)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!103, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_device", file: !148, line: 634, size: 11264, elements: !5069)
!5069 = !{!5070, !5071, !5073, !5088, !5089, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5377, !5378, !5385, !5386, !5387, !5388, !5391, !5394, !5395, !5559, !5562, !5563, !5564, !5565, !5566, !5570}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "mdio", scope: !5068, file: !148, line: 635, baseType: !4730, size: 6592)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !5068, file: !148, line: 639, baseType: !5072, size: 64, offset: 6592)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "devlink", scope: !5068, file: !148, line: 641, baseType: !5074, size: 64, offset: 6656)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_link", file: !88, line: 824, size: 6656, elements: !5076)
!5076 = !{!5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "supplier", scope: !5075, file: !88, line: 825, baseType: !4241, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "s_node", scope: !5075, file: !88, line: 826, baseType: !157, size: 128, offset: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !5075, file: !88, line: 827, baseType: !4241, size: 64, offset: 192)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "c_node", scope: !5075, file: !88, line: 828, baseType: !157, size: 128, offset: 256)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "link_dev", scope: !5075, file: !88, line: 829, baseType: !4242, size: 5824, offset: 384)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5075, file: !88, line: 830, baseType: !4776, size: 32, offset: 6208)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5075, file: !88, line: 831, baseType: !407, size: 32, offset: 6240)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_active", scope: !5075, file: !88, line: 832, baseType: !980, size: 32, offset: 6272)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5075, file: !88, line: 833, baseType: !3848, size: 32, offset: 6304)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "rm_work", scope: !5075, file: !88, line: 834, baseType: !2226, size: 256, offset: 6336)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "supplier_preactivated", scope: !5075, file: !88, line: 835, baseType: !1458, size: 8, offset: 6592)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id", scope: !5068, file: !148, line: 643, baseType: !407, size: 32, offset: 6720)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "c45_ids", scope: !5068, file: !148, line: 645, baseType: !5090, size: 1088, offset: 6752)
!5090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_c45_device_ids", file: !148, line: 530, size: 1088, elements: !5091)
!5091 = !{!5092, !5093, !5094}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "devices_in_package", scope: !5090, file: !148, line: 531, baseType: !407, size: 32)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "mmds_present", scope: !5090, file: !148, line: 532, baseType: !407, size: 32, offset: 32)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "device_ids", scope: !5090, file: !148, line: 533, baseType: !3079, size: 1024, offset: 64)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "is_c45", scope: !5068, file: !148, line: 646, baseType: !7, size: 1, offset: 7840, flags: DIFlagBitField, extraData: i64 7840)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "is_internal", scope: !5068, file: !148, line: 647, baseType: !7, size: 1, offset: 7841, flags: DIFlagBitField, extraData: i64 7840)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "is_pseudo_fixed_link", scope: !5068, file: !148, line: 648, baseType: !7, size: 1, offset: 7842, flags: DIFlagBitField, extraData: i64 7840)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "is_gigabit_capable", scope: !5068, file: !148, line: 649, baseType: !7, size: 1, offset: 7843, flags: DIFlagBitField, extraData: i64 7840)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "has_fixups", scope: !5068, file: !148, line: 650, baseType: !7, size: 1, offset: 7844, flags: DIFlagBitField, extraData: i64 7840)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !5068, file: !148, line: 651, baseType: !7, size: 1, offset: 7845, flags: DIFlagBitField, extraData: i64 7840)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_by_mdio_bus", scope: !5068, file: !148, line: 652, baseType: !7, size: 1, offset: 7846, flags: DIFlagBitField, extraData: i64 7840)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_links", scope: !5068, file: !148, line: 653, baseType: !7, size: 1, offset: 7847, flags: DIFlagBitField, extraData: i64 7840)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "loopback_enabled", scope: !5068, file: !148, line: 654, baseType: !7, size: 1, offset: 7848, flags: DIFlagBitField, extraData: i64 7840)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "downshifted_rate", scope: !5068, file: !148, line: 655, baseType: !7, size: 1, offset: 7849, flags: DIFlagBitField, extraData: i64 7840)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "is_on_sfp_module", scope: !5068, file: !148, line: 656, baseType: !7, size: 1, offset: 7850, flags: DIFlagBitField, extraData: i64 7840)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "mac_managed_pm", scope: !5068, file: !148, line: 657, baseType: !7, size: 1, offset: 7851, flags: DIFlagBitField, extraData: i64 7840)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "wol_enabled", scope: !5068, file: !148, line: 658, baseType: !7, size: 1, offset: 7852, flags: DIFlagBitField, extraData: i64 7840)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "autoneg", scope: !5068, file: !148, line: 660, baseType: !7, size: 1, offset: 7853, flags: DIFlagBitField, extraData: i64 7840)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5068, file: !148, line: 662, baseType: !7, size: 1, offset: 7854, flags: DIFlagBitField, extraData: i64 7840)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "autoneg_complete", scope: !5068, file: !148, line: 663, baseType: !7, size: 1, offset: 7855, flags: DIFlagBitField, extraData: i64 7840)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5068, file: !148, line: 666, baseType: !7, size: 1, offset: 7856, flags: DIFlagBitField, extraData: i64 7840)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspended", scope: !5068, file: !148, line: 667, baseType: !7, size: 1, offset: 7857, flags: DIFlagBitField, extraData: i64 7840)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rerun", scope: !5068, file: !148, line: 668, baseType: !7, size: 1, offset: 7858, flags: DIFlagBitField, extraData: i64 7840)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "rate_matching", scope: !5068, file: !148, line: 670, baseType: !103, size: 32, offset: 7872)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5068, file: !148, line: 672, baseType: !4784, size: 32, offset: 7904)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !5068, file: !148, line: 674, baseType: !407, size: 32, offset: 7936)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5068, file: !148, line: 676, baseType: !5118, size: 32, offset: 7968)
!5118 = !DIDerivedType(tag: DW_TAG_typedef, name: "phy_interface_t", file: !148, line: 169, baseType: !4794)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5068, file: !148, line: 682, baseType: !103, size: 32, offset: 8000)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "duplex", scope: !5068, file: !148, line: 683, baseType: !103, size: 32, offset: 8032)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5068, file: !148, line: 684, baseType: !103, size: 32, offset: 8064)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !5068, file: !148, line: 685, baseType: !103, size: 32, offset: 8096)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "asym_pause", scope: !5068, file: !148, line: 686, baseType: !103, size: 32, offset: 8128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "master_slave_get", scope: !5068, file: !148, line: 687, baseType: !215, size: 8, offset: 8160)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "master_slave_set", scope: !5068, file: !148, line: 688, baseType: !215, size: 8, offset: 8168)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "master_slave_state", scope: !5068, file: !148, line: 689, baseType: !215, size: 8, offset: 8176)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5068, file: !148, line: 693, baseType: !5128, size: 128, offset: 8192)
!5128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 128, elements: !2483)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "advertising", scope: !5068, file: !148, line: 694, baseType: !5128, size: 128, offset: 8320)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lp_advertising", scope: !5068, file: !148, line: 695, baseType: !5128, size: 128, offset: 8448)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "adv_old", scope: !5068, file: !148, line: 697, baseType: !5128, size: 128, offset: 8576)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "supported_eee", scope: !5068, file: !148, line: 699, baseType: !5128, size: 128, offset: 8704)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "advertising_eee", scope: !5068, file: !148, line: 700, baseType: !5128, size: 128, offset: 8832)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "eee_enabled", scope: !5068, file: !148, line: 701, baseType: !1458, size: 8, offset: 8960)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "host_interfaces", scope: !5068, file: !148, line: 704, baseType: !1221, size: 64, offset: 9024)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "eee_broken_modes", scope: !5068, file: !148, line: 707, baseType: !407, size: 32, offset: 9088)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !5068, file: !148, line: 716, baseType: !157, size: 128, offset: 9152)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5068, file: !148, line: 722, baseType: !103, size: 32, offset: 9280)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5068, file: !148, line: 726, baseType: !329, size: 64, offset: 9344)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !5068, file: !148, line: 730, baseType: !4763, size: 64, offset: 9408)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "skb", scope: !5068, file: !148, line: 733, baseType: !5142, size: 64, offset: 9472)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !5144, line: 840, size: 1792, elements: !5145)
!5144 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!5145 = !{!5146, !5165, !5166, !5171, !5175, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5360, !5362, !5363, !5365, !5366, !5367, !5368}
!5146 = !DIDerivedType(tag: DW_TAG_member, scope: !5143, file: !5144, line: 841, baseType: !5147, size: 192)
!5147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5143, file: !5144, line: 841, size: 192, elements: !5148)
!5148 = !{!5149, !5162, !5163, !5164}
!5149 = !DIDerivedType(tag: DW_TAG_member, scope: !5147, file: !5144, line: 842, baseType: !5150, size: 192)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5147, file: !5144, line: 842, size: 192, elements: !5151)
!5151 = !{!5152, !5153, !5154}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5150, file: !5144, line: 844, baseType: !5142, size: 64)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5150, file: !5144, line: 845, baseType: !5142, size: 64, offset: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, scope: !5150, file: !5144, line: 847, baseType: !5155, size: 64, offset: 128)
!5155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5150, file: !5144, line: 847, size: 64, elements: !5156)
!5156 = !{!5157, !5161}
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5155, file: !5144, line: 848, baseType: !5158, size: 64)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !5160, line: 8, flags: DIFlagFwdDecl)
!5160 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !5155, file: !5144, line: 853, baseType: !307, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !5147, file: !5144, line: 856, baseType: !1024, size: 192, align: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5147, file: !5144, line: 857, baseType: !157, size: 128)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !5147, file: !5144, line: 858, baseType: !993, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !5143, file: !5144, line: 861, baseType: !3727, size: 64, offset: 192)
!5166 = !DIDerivedType(tag: DW_TAG_member, scope: !5143, file: !5144, line: 863, baseType: !5167, size: 64, offset: 256)
!5167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5143, file: !5144, line: 863, size: 64, elements: !5168)
!5168 = !{!5169, !5170}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !5167, file: !5144, line: 864, baseType: !1102, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !5167, file: !5144, line: 865, baseType: !411, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !5143, file: !5144, line: 873, baseType: !5172, size: 384, align: 64, offset: 320)
!5172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 384, elements: !5173)
!5173 = !{!5174}
!5174 = !DISubrange(count: 48)
!5175 = !DIDerivedType(tag: DW_TAG_member, scope: !5143, file: !5144, line: 875, baseType: !5176, size: 128, offset: 704)
!5176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5143, file: !5144, line: 875, size: 128, elements: !5177)
!5177 = !{!5178, !5186}
!5178 = !DIDerivedType(tag: DW_TAG_member, scope: !5176, file: !5144, line: 876, baseType: !5179, size: 128)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5176, file: !5144, line: 876, size: 128, elements: !5180)
!5180 = !{!5181, !5182}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !5179, file: !5144, line: 877, baseType: !307, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !5179, file: !5144, line: 878, baseType: !5183, size: 64, offset: 64)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{null, !5142}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !5176, file: !5144, line: 880, baseType: !157, size: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !5143, file: !5144, line: 887, baseType: !307, size: 64, offset: 832)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5143, file: !5144, line: 889, baseType: !7, size: 32, offset: 896)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !5143, file: !5144, line: 890, baseType: !7, size: 32, offset: 928)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !5143, file: !5144, line: 891, baseType: !226, size: 16, offset: 960)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !5143, file: !5144, line: 892, baseType: !226, size: 16, offset: 976)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !5143, file: !5144, line: 897, baseType: !226, size: 16, offset: 992)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !5143, file: !5144, line: 908, baseType: !5194, offset: 1008)
!5194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !5195)
!5195 = !{!5196}
!5196 = !DISubrange(count: 0)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !5143, file: !5144, line: 910, baseType: !217, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !5143, file: !5144, line: 911, baseType: !217, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !5143, file: !5144, line: 912, baseType: !217, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !5143, file: !5144, line: 913, baseType: !217, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !5143, file: !5144, line: 914, baseType: !217, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !5143, file: !5144, line: 915, baseType: !217, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !5143, file: !5144, line: 916, baseType: !217, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !5143, file: !5144, line: 918, baseType: !217, size: 8, offset: 1016)
!5205 = !DIDerivedType(tag: DW_TAG_member, scope: !5143, file: !5144, line: 924, baseType: !5206, size: 448, offset: 1024)
!5206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5143, file: !5144, line: 924, size: 448, elements: !5207)
!5207 = !{!5208, !5285}
!5208 = !DIDerivedType(tag: DW_TAG_member, scope: !5206, file: !5144, line: 924, baseType: !5209, size: 448)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5206, file: !5144, line: 924, size: 448, elements: !5210)
!5210 = !{!5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5249, !5250, !5251, !5252, !5262, !5267, !5268, !5273, !5278, !5279, !5280, !5281, !5282, !5283, !5284}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !5209, file: !5144, line: 924, baseType: !5194)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !5209, file: !5144, line: 924, baseType: !217, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !5209, file: !5144, line: 924, baseType: !217, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !5209, file: !5144, line: 924, baseType: !5194, offset: 8)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !5209, file: !5144, line: 924, baseType: !217, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !5209, file: !5144, line: 924, baseType: !217, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !5209, file: !5144, line: 924, baseType: !217, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 32)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !5209, file: !5144, line: 924, baseType: !225, size: 16, offset: 48)
!5239 = !DIDerivedType(tag: DW_TAG_member, scope: !5209, file: !5144, line: 924, baseType: !5240, size: 32, offset: 64)
!5240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5209, file: !5144, line: 924, size: 32, elements: !5241)
!5241 = !{!5242, !5244}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5240, file: !5144, line: 924, baseType: !5243, size: 32)
!5243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !2001, line: 44, baseType: !408)
!5244 = !DIDerivedType(tag: DW_TAG_member, scope: !5240, file: !5144, line: 924, baseType: !5245, size: 32)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5240, file: !5144, line: 924, size: 32, elements: !5246)
!5246 = !{!5247, !5248}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !5245, file: !5144, line: 924, baseType: !226, size: 16)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !5245, file: !5144, line: 924, baseType: !226, size: 16, offset: 16)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5209, file: !5144, line: 924, baseType: !408, size: 32, offset: 96)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !5209, file: !5144, line: 924, baseType: !103, size: 32, offset: 128)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5209, file: !5144, line: 924, baseType: !408, size: 32, offset: 160)
!5252 = !DIDerivedType(tag: DW_TAG_member, scope: !5209, file: !5144, line: 924, baseType: !5253, size: 32, offset: 192)
!5253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5209, file: !5144, line: 924, size: 32, elements: !5254)
!5254 = !{!5255, !5256}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !5253, file: !5144, line: 924, baseType: !407, size: 32)
!5256 = !DIDerivedType(tag: DW_TAG_member, scope: !5253, file: !5144, line: 924, baseType: !5257, size: 32)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5253, file: !5144, line: 924, size: 32, elements: !5258)
!5258 = !{!5259, !5261}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !5257, file: !5144, line: 924, baseType: !5260, size: 16)
!5260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2001, line: 37, baseType: !226)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !5257, file: !5144, line: 924, baseType: !226, size: 16, offset: 16)
!5262 = !DIDerivedType(tag: DW_TAG_member, scope: !5209, file: !5144, line: 924, baseType: !5263, size: 32, offset: 224)
!5263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5209, file: !5144, line: 924, size: 32, elements: !5264)
!5264 = !{!5265, !5266}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !5263, file: !5144, line: 924, baseType: !7, size: 32)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !5263, file: !5144, line: 924, baseType: !7, size: 32)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !5209, file: !5144, line: 924, baseType: !408, size: 32, offset: 256)
!5268 = !DIDerivedType(tag: DW_TAG_member, scope: !5209, file: !5144, line: 924, baseType: !5269, size: 32, offset: 288)
!5269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5209, file: !5144, line: 924, size: 32, elements: !5270)
!5270 = !{!5271, !5272}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !5269, file: !5144, line: 924, baseType: !408, size: 32)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !5269, file: !5144, line: 924, baseType: !408, size: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, scope: !5209, file: !5144, line: 924, baseType: !5274, size: 16, offset: 320)
!5274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5209, file: !5144, line: 924, size: 16, elements: !5275)
!5275 = !{!5276, !5277}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !5274, file: !5144, line: 924, baseType: !5260, size: 16)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !5274, file: !5144, line: 924, baseType: !217, size: 8)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 336)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 352)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 368)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5209, file: !5144, line: 924, baseType: !5260, size: 16, offset: 384)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 400)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 416)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !5209, file: !5144, line: 924, baseType: !226, size: 16, offset: 432)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !5206, file: !5144, line: 924, baseType: !5286, size: 448)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5206, file: !5144, line: 924, size: 448, elements: !5287)
!5287 = !{!5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5325, !5326, !5327, !5328, !5337, !5342, !5343, !5348, !5353, !5354, !5355, !5356, !5357, !5358, !5359}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !5286, file: !5144, line: 924, baseType: !5194)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !5286, file: !5144, line: 924, baseType: !217, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !5286, file: !5144, line: 924, baseType: !217, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !5286, file: !5144, line: 924, baseType: !5194, offset: 8)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !5286, file: !5144, line: 924, baseType: !217, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !5286, file: !5144, line: 924, baseType: !217, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !5286, file: !5144, line: 924, baseType: !217, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !5286, file: !5144, line: 924, baseType: !225, size: 16, offset: 48)
!5316 = !DIDerivedType(tag: DW_TAG_member, scope: !5286, file: !5144, line: 924, baseType: !5317, size: 32, offset: 64)
!5317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5286, file: !5144, line: 924, size: 32, elements: !5318)
!5318 = !{!5319, !5320}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5317, file: !5144, line: 924, baseType: !5243, size: 32)
!5320 = !DIDerivedType(tag: DW_TAG_member, scope: !5317, file: !5144, line: 924, baseType: !5321, size: 32)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5317, file: !5144, line: 924, size: 32, elements: !5322)
!5322 = !{!5323, !5324}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !5321, file: !5144, line: 924, baseType: !226, size: 16)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !5321, file: !5144, line: 924, baseType: !226, size: 16, offset: 16)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5286, file: !5144, line: 924, baseType: !408, size: 32, offset: 96)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !5286, file: !5144, line: 924, baseType: !103, size: 32, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5286, file: !5144, line: 924, baseType: !408, size: 32, offset: 160)
!5328 = !DIDerivedType(tag: DW_TAG_member, scope: !5286, file: !5144, line: 924, baseType: !5329, size: 32, offset: 192)
!5329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5286, file: !5144, line: 924, size: 32, elements: !5330)
!5330 = !{!5331, !5332}
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !5329, file: !5144, line: 924, baseType: !407, size: 32)
!5332 = !DIDerivedType(tag: DW_TAG_member, scope: !5329, file: !5144, line: 924, baseType: !5333, size: 32)
!5333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5329, file: !5144, line: 924, size: 32, elements: !5334)
!5334 = !{!5335, !5336}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !5333, file: !5144, line: 924, baseType: !5260, size: 16)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !5333, file: !5144, line: 924, baseType: !226, size: 16, offset: 16)
!5337 = !DIDerivedType(tag: DW_TAG_member, scope: !5286, file: !5144, line: 924, baseType: !5338, size: 32, offset: 224)
!5338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5286, file: !5144, line: 924, size: 32, elements: !5339)
!5339 = !{!5340, !5341}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !5338, file: !5144, line: 924, baseType: !7, size: 32)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !5338, file: !5144, line: 924, baseType: !7, size: 32)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !5286, file: !5144, line: 924, baseType: !408, size: 32, offset: 256)
!5343 = !DIDerivedType(tag: DW_TAG_member, scope: !5286, file: !5144, line: 924, baseType: !5344, size: 32, offset: 288)
!5344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5286, file: !5144, line: 924, size: 32, elements: !5345)
!5345 = !{!5346, !5347}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !5344, file: !5144, line: 924, baseType: !408, size: 32)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !5344, file: !5144, line: 924, baseType: !408, size: 32)
!5348 = !DIDerivedType(tag: DW_TAG_member, scope: !5286, file: !5144, line: 924, baseType: !5349, size: 16, offset: 320)
!5349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5286, file: !5144, line: 924, size: 16, elements: !5350)
!5350 = !{!5351, !5352}
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !5349, file: !5144, line: 924, baseType: !5260, size: 16)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !5349, file: !5144, line: 924, baseType: !217, size: 8)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 336)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 352)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 368)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5286, file: !5144, line: 924, baseType: !5260, size: 16, offset: 384)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 400)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 416)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !5286, file: !5144, line: 924, baseType: !226, size: 16, offset: 432)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5143, file: !5144, line: 1047, baseType: !5361, size: 32, offset: 1472)
!5361 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !5144, line: 683, baseType: !7)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5143, file: !5144, line: 1048, baseType: !5361, size: 32, offset: 1504)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5143, file: !5144, line: 1049, baseType: !5364, size: 64, offset: 1536)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5143, file: !5144, line: 1050, baseType: !5364, size: 64, offset: 1600)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !5143, file: !5144, line: 1051, baseType: !7, size: 32, offset: 1664)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5143, file: !5144, line: 1052, baseType: !980, size: 32, offset: 1696)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !5143, file: !5144, line: 1056, baseType: !5369, size: 64, offset: 1728)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !5144, line: 4679, size: 64, elements: !5371)
!5371 = !{!5372, !5373, !5375, !5376}
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5370, file: !5144, line: 4680, baseType: !980, size: 32)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5370, file: !5144, line: 4681, baseType: !5374, size: 8, offset: 32)
!5374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 8, elements: !1222)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !5370, file: !5144, line: 4682, baseType: !215, size: 8, offset: 40)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5370, file: !5144, line: 4683, baseType: !2812, align: 64, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "ehdr", scope: !5068, file: !148, line: 734, baseType: !329, size: 64, offset: 9536)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "nest", scope: !5068, file: !148, line: 735, baseType: !5379, size: 64, offset: 9600)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !5381, line: 229, size: 32, elements: !5382)
!5381 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!5382 = !{!5383, !5384}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !5380, file: !5381, line: 230, baseType: !226, size: 16)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !5380, file: !5381, line: 231, baseType: !226, size: 16, offset: 16)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "state_queue", scope: !5068, file: !148, line: 738, baseType: !4140, size: 704, offset: 9664)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5068, file: !148, line: 740, baseType: !638, size: 256, offset: 10368)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "sfp_bus_attached", scope: !5068, file: !148, line: 743, baseType: !1458, size: 8, offset: 10624)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "sfp_bus", scope: !5068, file: !148, line: 744, baseType: !5389, size: 64, offset: 10688)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DICompositeType(tag: DW_TAG_structure_type, name: "sfp_bus", file: !148, line: 307, flags: DIFlagFwdDecl)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "phylink", scope: !5068, file: !148, line: 745, baseType: !5392, size: 64, offset: 10752)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DICompositeType(tag: DW_TAG_structure_type, name: "phylink", file: !148, line: 306, flags: DIFlagFwdDecl)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "attached_dev", scope: !5068, file: !148, line: 746, baseType: !5158, size: 64, offset: 10816)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "mii_ts", scope: !5068, file: !148, line: 747, baseType: !5396, size: 64, offset: 10880)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mii_timestamper", file: !5398, line: 46, size: 384, elements: !5399)
!5398 = !DIFile(filename: "./include/linux/mii_timestamper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c4cca89849e255c97d62d9a989cc313")
!5399 = !{!5400, !5404, !5408, !5539, !5543, !5558}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "rxtstamp", scope: !5397, file: !5398, line: 47, baseType: !5401, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!1458, !5396, !5142, !103}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "txtstamp", scope: !5397, file: !5398, line: 50, baseType: !5405, size: 64, offset: 64)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{null, !5396, !5142, !103}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "hwtstamp", scope: !5397, file: !5398, line: 53, baseType: !5409, size: 64, offset: 128)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!103, !5396, !5412}
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !5414, line: 234, size: 320, elements: !5415)
!5414 = !DIFile(filename: "./include/uapi/linux/if.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93196a4816a542b4a9187fa76f3e230a")
!5415 = !{!5416, !5420}
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !5413, file: !5414, line: 239, baseType: !5417, size: 128)
!5417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5413, file: !5414, line: 236, size: 128, elements: !5418)
!5418 = !{!5419}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !5417, file: !5414, line: 238, baseType: !2378, size: 128)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !5413, file: !5414, line: 255, baseType: !5421, size: 192, offset: 128)
!5421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5413, file: !5414, line: 241, size: 192, elements: !5422)
!5422 = !{!5423, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5460, !5461, !5462, !5463}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !5421, file: !5414, line: 242, baseType: !5424, size: 128)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !5425, line: 34, size: 128, elements: !5426)
!5425 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!5426 = !{!5427, !5431}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !5424, file: !5425, line: 35, baseType: !5428, size: 16)
!5428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !5425, line: 28, baseType: !5429)
!5429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_sa_family_t", file: !5430, line: 10, baseType: !227)
!5430 = !DIFile(filename: "./include/uapi/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9188d06e118bd729d386f60af56244e2")
!5431 = !DIDerivedType(tag: DW_TAG_member, scope: !5424, file: !5425, line: 36, baseType: !5432, size: 112, offset: 16)
!5432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5424, file: !5425, line: 36, size: 112, elements: !5433)
!5433 = !{!5434, !5438}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data_min", scope: !5432, file: !5425, line: 37, baseType: !5435, size: 112)
!5435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 112, elements: !5436)
!5436 = !{!5437}
!5437 = !DISubrange(count: 14)
!5438 = !DIDerivedType(tag: DW_TAG_member, scope: !5432, file: !5425, line: 38, baseType: !5439)
!5439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5432, file: !5425, line: 38, elements: !5440)
!5440 = !{!5441, !5443}
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_sa_data", scope: !5439, file: !5425, line: 38, baseType: !5442)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5439, file: !5425, line: 38, elements: !542)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !5439, file: !5425, line: 38, baseType: !2812)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !5421, file: !5414, line: 243, baseType: !5424, size: 128)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !5421, file: !5414, line: 244, baseType: !5424, size: 128)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !5421, file: !5414, line: 245, baseType: !5424, size: 128)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !5421, file: !5414, line: 246, baseType: !5424, size: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !5421, file: !5414, line: 247, baseType: !1427, size: 16)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !5421, file: !5414, line: 248, baseType: !103, size: 32)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !5421, file: !5414, line: 249, baseType: !103, size: 32)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !5421, file: !5414, line: 250, baseType: !5452, size: 192)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !5414, line: 196, size: 192, elements: !5453)
!5453 = !{!5454, !5455, !5456, !5457, !5458, !5459}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !5452, file: !5414, line: 197, baseType: !307, size: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !5452, file: !5414, line: 198, baseType: !307, size: 64, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !5452, file: !5414, line: 199, baseType: !227, size: 16, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5452, file: !5414, line: 200, baseType: !219, size: 8, offset: 144)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5452, file: !5414, line: 201, baseType: !219, size: 8, offset: 152)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5452, file: !5414, line: 202, baseType: !219, size: 8, offset: 160)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !5421, file: !5414, line: 251, baseType: !2378, size: 128)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !5421, file: !5414, line: 252, baseType: !2378, size: 128)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !5421, file: !5414, line: 253, baseType: !329, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_settings", scope: !5421, file: !5414, line: 254, baseType: !5464, size: 128)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "if_settings", file: !5414, line: 207, size: 128, elements: !5465)
!5465 = !{!5466, !5467, !5468}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5464, file: !5414, line: 208, baseType: !7, size: 32)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5464, file: !5414, line: 209, baseType: !7, size: 32, offset: 32)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "ifs_ifsu", scope: !5464, file: !5414, line: 222, baseType: !5469, size: 64, offset: 64)
!5469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5464, file: !5414, line: 210, size: 64, elements: !5470)
!5470 = !{!5471, !5479, !5486, !5498, !5504, !5511, !5522, !5530}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hdlc", scope: !5469, file: !5414, line: 212, baseType: !5472, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_hdlc_proto", file: !5474, line: 56, baseType: !5475)
!5474 = !DIFile(filename: "./include/uapi/linux/hdlc/ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "68005b9568aa1ef0327f8e1be2ee5f84")
!5475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 53, size: 32, elements: !5476)
!5476 = !{!5477, !5478}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !5475, file: !5474, line: 54, baseType: !227, size: 16)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5475, file: !5474, line: 55, baseType: !227, size: 16, offset: 16)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "cisco", scope: !5469, file: !5414, line: 213, baseType: !5480, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_typedef, name: "cisco_proto", file: !5474, line: 80, baseType: !5482)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 77, size: 64, elements: !5483)
!5483 = !{!5484, !5485}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5482, file: !5474, line: 78, baseType: !7, size: 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5482, file: !5474, line: 79, baseType: !7, size: 32, offset: 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "fr", scope: !5469, file: !5414, line: 214, baseType: !5487, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = !DIDerivedType(tag: DW_TAG_typedef, name: "fr_proto", file: !5474, line: 66, baseType: !5489)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 58, size: 192, elements: !5490)
!5490 = !{!5491, !5492, !5493, !5494, !5495, !5496, !5497}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "t391", scope: !5489, file: !5474, line: 59, baseType: !7, size: 32)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "t392", scope: !5489, file: !5474, line: 60, baseType: !7, size: 32, offset: 32)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "n391", scope: !5489, file: !5474, line: 61, baseType: !7, size: 32, offset: 64)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "n392", scope: !5489, file: !5474, line: 62, baseType: !7, size: 32, offset: 96)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "n393", scope: !5489, file: !5474, line: 63, baseType: !7, size: 32, offset: 128)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "lmi", scope: !5489, file: !5474, line: 64, baseType: !227, size: 16, offset: 160)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "dce", scope: !5489, file: !5474, line: 65, baseType: !227, size: 16, offset: 176)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "fr_pvc", scope: !5469, file: !5414, line: 215, baseType: !5499, size: 64)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_typedef, name: "fr_proto_pvc", file: !5474, line: 70, baseType: !5501)
!5501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 68, size: 32, elements: !5502)
!5502 = !{!5503}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !5501, file: !5474, line: 69, baseType: !7, size: 32)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "fr_pvc_info", scope: !5469, file: !5414, line: 216, baseType: !5505, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_typedef, name: "fr_proto_pvc_info", file: !5474, line: 75, baseType: !5507)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 72, size: 160, elements: !5508)
!5508 = !{!5509, !5510}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !5507, file: !5474, line: 73, baseType: !7, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !5507, file: !5474, line: 74, baseType: !2378, size: 128, offset: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "x25", scope: !5469, file: !5414, line: 217, baseType: !5512, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DIDerivedType(tag: DW_TAG_typedef, name: "x25_hdlc_proto", file: !5474, line: 89, baseType: !5514)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 82, size: 192, elements: !5515)
!5515 = !{!5516, !5517, !5518, !5519, !5520, !5521}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "dce", scope: !5514, file: !5474, line: 83, baseType: !227, size: 16)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "modulo", scope: !5514, file: !5474, line: 84, baseType: !7, size: 32, offset: 32)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !5514, file: !5474, line: 85, baseType: !7, size: 32, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !5514, file: !5474, line: 86, baseType: !7, size: 32, offset: 96)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !5514, file: !5474, line: 87, baseType: !7, size: 32, offset: 128)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !5514, file: !5474, line: 88, baseType: !7, size: 32, offset: 160)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5469, file: !5414, line: 220, baseType: !5523, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync_serial_settings", file: !5474, line: 44, baseType: !5525)
!5525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 40, size: 96, elements: !5526)
!5526 = !{!5527, !5528, !5529}
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "clock_rate", scope: !5525, file: !5474, line: 41, baseType: !7, size: 32)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_type", scope: !5525, file: !5474, line: 42, baseType: !7, size: 32, offset: 32)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "loopback", scope: !5525, file: !5474, line: 43, baseType: !227, size: 16, offset: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "te1", scope: !5469, file: !5414, line: 221, baseType: !5531, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_typedef, name: "te1_settings", file: !5474, line: 51, baseType: !5533)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5474, line: 46, size: 128, elements: !5534)
!5534 = !{!5535, !5536, !5537, !5538}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "clock_rate", scope: !5533, file: !5474, line: 47, baseType: !7, size: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "clock_type", scope: !5533, file: !5474, line: 48, baseType: !7, size: 32, offset: 32)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "loopback", scope: !5533, file: !5474, line: 49, baseType: !227, size: 16, offset: 64)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "slot_map", scope: !5533, file: !5474, line: 50, baseType: !7, size: 32, offset: 96)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !5397, file: !5398, line: 56, baseType: !5540, size: 64, offset: 192)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{null, !5396, !5067}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "ts_info", scope: !5397, file: !5398, line: 59, baseType: !5544, size: 64, offset: 256)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{!103, !5396, !5547}
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_ts_info", file: !4848, line: 1452, size: 352, elements: !5549)
!5549 = !{!5550, !5551, !5552, !5553, !5554, !5556, !5557}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5548, file: !4848, line: 1453, baseType: !408, size: 32)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "so_timestamping", scope: !5548, file: !4848, line: 1454, baseType: !408, size: 32, offset: 32)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "phc_index", scope: !5548, file: !4848, line: 1455, baseType: !1402, size: 32, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "tx_types", scope: !5548, file: !4848, line: 1456, baseType: !408, size: 32, offset: 96)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "tx_reserved", scope: !5548, file: !4848, line: 1457, baseType: !5555, size: 96, offset: 128)
!5555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 96, elements: !258)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "rx_filters", scope: !5548, file: !4848, line: 1458, baseType: !408, size: 32, offset: 224)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "rx_reserved", scope: !5548, file: !4848, line: 1459, baseType: !5555, size: 96, offset: 256)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5397, file: !5398, line: 62, baseType: !4241, size: 64, offset: 320)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "psec", scope: !5068, file: !148, line: 748, baseType: !5560, size: 64, offset: 10944)
!5560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5561, size: 64)
!5561 = !DICompositeType(tag: DW_TAG_structure_type, name: "pse_control", file: !148, line: 748, flags: DIFlagFwdDecl)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "mdix", scope: !5068, file: !148, line: 750, baseType: !215, size: 8, offset: 11008)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "mdix_ctrl", scope: !5068, file: !148, line: 751, baseType: !215, size: 8, offset: 11016)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "pma_extable", scope: !5068, file: !148, line: 753, baseType: !103, size: 32, offset: 11040)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "link_down_events", scope: !5068, file: !148, line: 755, baseType: !7, size: 32, offset: 11072)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "phy_link_change", scope: !5068, file: !148, line: 757, baseType: !5567, size: 64, offset: 11136)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{null, !5067, !1458}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_link", scope: !5068, file: !148, line: 758, baseType: !5571, size: 64, offset: 11200)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{null, !5158}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "config_init", scope: !5049, file: !148, line: 910, baseType: !5064, size: 64, offset: 1664)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5049, file: !148, line: 916, baseType: !5064, size: 64, offset: 1728)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !5049, file: !148, line: 922, baseType: !5064, size: 64, offset: 1792)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate_matching", scope: !5049, file: !148, line: 933, baseType: !5578, size: 64, offset: 1856)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!103, !5067, !5118}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5049, file: !148, line: 938, baseType: !5064, size: 64, offset: 1920)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5049, file: !148, line: 940, baseType: !5064, size: 64, offset: 1984)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "config_aneg", scope: !5049, file: !148, line: 948, baseType: !5064, size: 64, offset: 2048)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "aneg_done", scope: !5049, file: !148, line: 951, baseType: !5064, size: 64, offset: 2112)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !5049, file: !148, line: 954, baseType: !5064, size: 64, offset: 2176)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "config_intr", scope: !5049, file: !148, line: 961, baseType: !5064, size: 64, offset: 2240)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "handle_interrupt", scope: !5049, file: !148, line: 964, baseType: !5588, size: 64, offset: 2304)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{!5591, !5067}
!5591 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !4831, line: 17, baseType: !4830)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5049, file: !148, line: 967, baseType: !5593, size: 64, offset: 2368)
!5593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5594, size: 64)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{null, !5067}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "match_phy_device", scope: !5049, file: !148, line: 974, baseType: !5064, size: 64, offset: 2432)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "set_wol", scope: !5049, file: !148, line: 982, baseType: !5598, size: 64, offset: 2496)
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5599, size: 64)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!103, !5067, !5601}
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_wolinfo", file: !4848, line: 211, size: 160, elements: !5603)
!5603 = !{!5604, !5605, !5606, !5607}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5602, file: !4848, line: 212, baseType: !408, size: 32)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5602, file: !4848, line: 213, baseType: !408, size: 32, offset: 32)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "wolopts", scope: !5602, file: !4848, line: 214, baseType: !408, size: 32, offset: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "sopass", scope: !5602, file: !4848, line: 215, baseType: !5608, size: 48, offset: 96)
!5608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 48, elements: !1445)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "get_wol", scope: !5049, file: !148, line: 988, baseType: !5610, size: 64, offset: 2560)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !5067, !5601}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "link_change_notify", scope: !5049, file: !148, line: 998, baseType: !5593, size: 64, offset: 2624)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "read_mmd", scope: !5049, file: !148, line: 1010, baseType: !5615, size: 64, offset: 2688)
!5615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5616, size: 64)
!5616 = !DISubroutineType(types: !5617)
!5617 = !{!103, !5067, !103, !225}
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "write_mmd", scope: !5049, file: !148, line: 1022, baseType: !5619, size: 64, offset: 2752)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!103, !5067, !103, !225, !225}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !5049, file: !148, line: 1026, baseType: !5064, size: 64, offset: 2816)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !5049, file: !148, line: 1028, baseType: !5624, size: 64, offset: 2880)
!5624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5625, size: 64)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!103, !5067, !103}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "module_info", scope: !5049, file: !148, line: 1034, baseType: !5628, size: 64, offset: 2944)
!5628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5629, size: 64)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{!103, !5067, !5631}
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_modinfo", file: !4848, line: 393, size: 352, elements: !5633)
!5633 = !{!5634, !5635, !5636, !5637}
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5632, file: !4848, line: 394, baseType: !408, size: 32)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5632, file: !4848, line: 395, baseType: !408, size: 32, offset: 32)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "eeprom_len", scope: !5632, file: !4848, line: 396, baseType: !408, size: 32, offset: 64)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5632, file: !4848, line: 397, baseType: !5638, size: 256, offset: 96)
!5638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 256, elements: !1137)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "module_eeprom", scope: !5049, file: !148, line: 1041, baseType: !5640, size: 64, offset: 3008)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!103, !5067, !5643, !5652}
!5643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5644, size: 64)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_eeprom", file: !4848, line: 344, size: 128, elements: !5645)
!5645 = !{!5646, !5647, !5648, !5649, !5650}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5644, file: !4848, line: 345, baseType: !408, size: 32)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5644, file: !4848, line: 346, baseType: !408, size: 32, offset: 32)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5644, file: !4848, line: 347, baseType: !408, size: 32, offset: 64)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5644, file: !4848, line: 348, baseType: !408, size: 32, offset: 96)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5644, file: !4848, line: 349, baseType: !5651, offset: 128)
!5651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !1359)
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "cable_test_start", scope: !5049, file: !148, line: 1045, baseType: !5064, size: 64, offset: 3072)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "cable_test_tdr_start", scope: !5049, file: !148, line: 1048, baseType: !5655, size: 64, offset: 3136)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!103, !5067, !5658}
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5659, size: 64)
!5659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5660)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_tdr_config", file: !148, line: 787, size: 128, elements: !5661)
!5661 = !{!5662, !5663, !5664, !5665}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5660, file: !148, line: 788, baseType: !407, size: 32)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5660, file: !148, line: 789, baseType: !407, size: 32, offset: 32)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !5660, file: !148, line: 790, baseType: !407, size: 32, offset: 64)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !5660, file: !148, line: 791, baseType: !3928, size: 8, offset: 96)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "cable_test_get_status", scope: !5049, file: !148, line: 1055, baseType: !5667, size: 64, offset: 3200)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!103, !5067, !3670}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "get_sset_count", scope: !5049, file: !148, line: 1059, baseType: !5064, size: 64, offset: 3264)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "get_strings", scope: !5049, file: !148, line: 1061, baseType: !5672, size: 64, offset: 3328)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{null, !5067, !5652}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "get_stats", scope: !5049, file: !148, line: 1063, baseType: !5676, size: 64, offset: 3392)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !5067, !5679, !4519}
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_stats", file: !4848, line: 920, size: 64, elements: !5681)
!5681 = !{!5682, !5683, !5684}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5680, file: !4848, line: 921, baseType: !408, size: 32)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "n_stats", scope: !5680, file: !4848, line: 922, baseType: !408, size: 32, offset: 32)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5680, file: !4848, line: 923, baseType: !5685, offset: 64)
!5685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !1359)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "get_tunable", scope: !5049, file: !148, line: 1068, baseType: !5687, size: 64, offset: 3456)
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5688, size: 64)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!103, !5067, !5690, !329}
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 64)
!5691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_tunable", file: !4848, line: 253, size: 128, elements: !5692)
!5692 = !{!5693, !5694, !5695, !5696, !5697}
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5691, file: !4848, line: 254, baseType: !408, size: 32)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5691, file: !4848, line: 255, baseType: !408, size: 32, offset: 32)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !5691, file: !4848, line: 256, baseType: !408, size: 32, offset: 64)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5691, file: !4848, line: 257, baseType: !408, size: 32, offset: 96)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5691, file: !4848, line: 258, baseType: !5698, offset: 128)
!5698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !1359)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "set_tunable", scope: !5049, file: !148, line: 1071, baseType: !5700, size: 64, offset: 3520)
!5700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5701, size: 64)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!103, !5067, !5690, !2187}
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "set_loopback", scope: !5049, file: !148, line: 1075, baseType: !5704, size: 64, offset: 3584)
!5704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5705, size: 64)
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!103, !5067, !1458}
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "get_sqi", scope: !5049, file: !148, line: 1077, baseType: !5064, size: 64, offset: 3648)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "get_sqi_max", scope: !5049, file: !148, line: 1079, baseType: !5064, size: 64, offset: 3712)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "get_plca_cfg", scope: !5049, file: !148, line: 1083, baseType: !5710, size: 64, offset: 3776)
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!103, !5067, !5713}
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_plca_cfg", file: !148, line: 827, size: 224, elements: !5715)
!5715 = !{!5716, !5717, !5718, !5719, !5720, !5721, !5722}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5714, file: !148, line: 828, baseType: !103, size: 32)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5714, file: !148, line: 829, baseType: !103, size: 32, offset: 32)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5714, file: !148, line: 830, baseType: !103, size: 32, offset: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "node_cnt", scope: !5714, file: !148, line: 831, baseType: !103, size: 32, offset: 96)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "to_tmr", scope: !5714, file: !148, line: 832, baseType: !103, size: 32, offset: 128)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "burst_cnt", scope: !5714, file: !148, line: 833, baseType: !103, size: 32, offset: 160)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "burst_tmr", scope: !5714, file: !148, line: 834, baseType: !103, size: 32, offset: 192)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "set_plca_cfg", scope: !5049, file: !148, line: 1086, baseType: !5724, size: 64, offset: 3840)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!103, !5067, !5727}
!5727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5728, size: 64)
!5728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5714)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "get_plca_status", scope: !5049, file: !148, line: 1089, baseType: !5730, size: 64, offset: 3904)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = !DISubroutineType(types: !5732)
!5732 = !{!103, !5067, !5733}
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_plca_status", file: !148, line: 848, size: 8, elements: !5735)
!5735 = !{!5736}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "pst", scope: !5734, file: !148, line: 849, baseType: !1458, size: 8)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "led_brightness_set", scope: !5049, file: !148, line: 1098, baseType: !5738, size: 64, offset: 3968)
!5738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5739, size: 64)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!103, !5067, !215, !4836}
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "led_blink_set", scope: !5049, file: !148, line: 1109, baseType: !5742, size: 64, offset: 4032)
!5742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5743, size: 64)
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!103, !5067, !215, !4172, !4172}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "led_hw_is_supported", scope: !5049, file: !148, line: 1120, baseType: !5746, size: 64, offset: 4096)
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!103, !5067, !215, !307}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "led_hw_control_set", scope: !5049, file: !148, line: 1130, baseType: !5746, size: 64, offset: 4160)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "led_hw_control_get", scope: !5049, file: !148, line: 1142, baseType: !5751, size: 64, offset: 4224)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!103, !5067, !215, !4172}
!5754 = !{!5755}
!5755 = !DISubrange(count: 21)
!5756 = !DIGlobalVariableExpression(var: !5757, expr: !DIExpression())
!5757 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !5758, isLocal: true, isDefinition: true)
!5758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 312, elements: !5759)
!5759 = !{!5760}
!5760 = !DISubrange(count: 39)
!5761 = !DIGlobalVariableExpression(var: !5762, expr: !DIExpression())
!5762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !5763, isLocal: true, isDefinition: true)
!5763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 320, elements: !5764)
!5764 = !{!5765}
!5765 = !DISubrange(count: 40)
!5766 = !DIGlobalVariableExpression(var: !5767, expr: !DIExpression())
!5767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 404, type: !5763, isLocal: true, isDefinition: true)
!5768 = !DIGlobalVariableExpression(var: !5769, expr: !DIExpression())
!5769 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !5770, isLocal: true, isDefinition: true)
!5770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 272, elements: !5771)
!5771 = !{!5772}
!5772 = !DISubrange(count: 34)
!5773 = !DIGlobalVariableExpression(var: !5774, expr: !DIExpression())
!5774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !4995, isLocal: true, isDefinition: true)
!5775 = !DIGlobalVariableExpression(var: !5776, expr: !DIExpression())
!5776 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !5777, isLocal: true, isDefinition: true)
!5777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 168, elements: !5754)
!5778 = !DIGlobalVariableExpression(var: !5779, expr: !DIExpression())
!5779 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !4985, isLocal: true, isDefinition: true)
!5780 = !DIGlobalVariableExpression(var: !5781, expr: !DIExpression())
!5781 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5782, file: !5783, line: 112, type: !329, isLocal: true, isDefinition: true)
!5782 = distinct !DISubprogram(name: "might_resched", scope: !5783, file: !5783, line: 110, type: !2597, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5783 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5784 = !DIGlobalVariableExpression(var: !5785, expr: !DIExpression())
!5785 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !5786, isLocal: true, isDefinition: true)
!5786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 264, elements: !5787)
!5787 = !{!5788}
!5788 = !DISubrange(count: 33)
!5789 = !DIGlobalVariableExpression(var: !5790, expr: !DIExpression())
!5790 = distinct !DIGlobalVariable(scope: null, file: !3, line: 790, type: !5791, isLocal: true, isDefinition: true)
!5791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 248, elements: !5792)
!5792 = !{!5793}
!5793 = !DISubrange(count: 31)
!5794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 312, elements: !5759)
!5795 = !{i32 7, !"Dwarf Version", i32 5}
!5796 = !{i32 2, !"Debug Info Version", i32 3}
!5797 = !{i32 1, !"wchar_size", i32 2}
!5798 = !{i32 8, !"cf-protection-branch", i32 1}
!5799 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5800 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5801 = !{i32 1, !"Code Model", i32 2}
!5802 = !{i32 1, !"override-stack-alignment", i32 8}
!5803 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5804 = distinct !DISubprogram(name: "__initstub__kmod_realtek__342_1096_phy_module_init6", scope: !3, file: !3, line: 1096, type: !3970, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5805 = !DILocation(line: 1096, column: 1, scope: !5804)
!5806 = distinct !DISubprogram(name: "phy_module_init", scope: !3, file: !3, line: 1096, type: !3970, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5807 = !DILocation(line: 1096, column: 1, scope: !5806)
!5808 = distinct !DISubprogram(name: "phy_module_exit", scope: !3, file: !3, line: 1096, type: !2597, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5809 = !DILocation(line: 1096, column: 1, scope: !5808)
!5810 = !DISubprogram(name: "phy_drivers_unregister", scope: !148, file: !148, line: 1907, type: !5811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{null, !5072, !103}
!5813 = !DISubprogram(name: "phy_drivers_register", scope: !148, file: !148, line: 1909, type: !5814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!103, !5072, !103, !152}
!5816 = distinct !DISubprogram(name: "rtl821x_read_page", scope: !3, file: !3, line: 87, type: !5065, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5817)
!5817 = !{!5818}
!5818 = !DILocalVariable(name: "phydev", arg: 1, scope: !5816, file: !3, line: 87, type: !5067)
!5819 = !DILocation(line: 87, column: 49, scope: !5816)
!5820 = !DILocation(line: 89, column: 20, scope: !5816)
!5821 = !DILocation(line: 89, column: 9, scope: !5816)
!5822 = !DILocation(line: 89, column: 2, scope: !5816)
!5823 = distinct !DISubprogram(name: "rtl821x_write_page", scope: !3, file: !3, line: 92, type: !5625, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5824)
!5824 = !{!5825, !5826}
!5825 = !DILocalVariable(name: "phydev", arg: 1, scope: !5823, file: !3, line: 92, type: !5067)
!5826 = !DILocalVariable(name: "page", arg: 2, scope: !5823, file: !3, line: 92, type: !103)
!5827 = !DILocation(line: 92, column: 50, scope: !5823)
!5828 = !DILocation(line: 92, column: 62, scope: !5823)
!5829 = !DILocation(line: 94, column: 21, scope: !5823)
!5830 = !DILocation(line: 94, column: 50, scope: !5823)
!5831 = !DILocation(line: 94, column: 9, scope: !5823)
!5832 = !DILocation(line: 94, column: 2, scope: !5823)
!5833 = !DISubprogram(name: "genphy_suspend", scope: !148, file: !148, line: 1826, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5834 = !DISubprogram(name: "genphy_resume", scope: !148, file: !148, line: 1827, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5835 = distinct !DISubprogram(name: "rtl8201_config_intr", scope: !3, file: !3, line: 164, type: !5065, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5836)
!5836 = !{!5837, !5838, !5839}
!5837 = !DILocalVariable(name: "phydev", arg: 1, scope: !5835, file: !3, line: 164, type: !5067)
!5838 = !DILocalVariable(name: "val", scope: !5835, file: !3, line: 166, type: !225)
!5839 = !DILocalVariable(name: "err", scope: !5835, file: !3, line: 167, type: !103)
!5840 = !DILocation(line: 164, column: 51, scope: !5835)
!5841 = !DILocation(line: 166, column: 2, scope: !5835)
!5842 = !DILocation(line: 166, column: 6, scope: !5835)
!5843 = !DILocation(line: 167, column: 2, scope: !5835)
!5844 = !DILocation(line: 167, column: 6, scope: !5835)
!5845 = !DILocation(line: 169, column: 6, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 169, column: 6)
!5847 = !DILocation(line: 169, column: 14, scope: !5846)
!5848 = !DILocation(line: 169, column: 25, scope: !5846)
!5849 = !DILocation(line: 169, column: 6, scope: !5835)
!5850 = !DILocation(line: 170, column: 31, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 169, column: 51)
!5852 = !DILocation(line: 170, column: 9, scope: !5851)
!5853 = !DILocation(line: 170, column: 7, scope: !5851)
!5854 = !DILocation(line: 171, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5851, file: !3, line: 171, column: 7)
!5856 = !DILocation(line: 171, column: 7, scope: !5851)
!5857 = !DILocation(line: 172, column: 11, scope: !5855)
!5858 = !DILocation(line: 172, column: 4, scope: !5855)
!5859 = !DILocation(line: 174, column: 7, scope: !5851)
!5860 = !DILocation(line: 175, column: 25, scope: !5851)
!5861 = !DILocation(line: 175, column: 52, scope: !5851)
!5862 = !DILocation(line: 175, column: 9, scope: !5851)
!5863 = !DILocation(line: 175, column: 7, scope: !5851)
!5864 = !DILocation(line: 176, column: 2, scope: !5851)
!5865 = !DILocation(line: 177, column: 7, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 176, column: 9)
!5867 = !DILocation(line: 178, column: 25, scope: !5866)
!5868 = !DILocation(line: 178, column: 52, scope: !5866)
!5869 = !DILocation(line: 178, column: 9, scope: !5866)
!5870 = !DILocation(line: 178, column: 7, scope: !5866)
!5871 = !DILocation(line: 179, column: 7, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 179, column: 7)
!5873 = !DILocation(line: 179, column: 7, scope: !5866)
!5874 = !DILocation(line: 180, column: 11, scope: !5872)
!5875 = !DILocation(line: 180, column: 4, scope: !5872)
!5876 = !DILocation(line: 182, column: 31, scope: !5866)
!5877 = !DILocation(line: 182, column: 9, scope: !5866)
!5878 = !DILocation(line: 182, column: 7, scope: !5866)
!5879 = !DILocation(line: 185, column: 9, scope: !5835)
!5880 = !DILocation(line: 185, column: 2, scope: !5835)
!5881 = !DILocation(line: 186, column: 1, scope: !5835)
!5882 = distinct !DISubprogram(name: "rtl8201_handle_interrupt", scope: !3, file: !3, line: 256, type: !5589, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5883)
!5883 = !{!5884, !5885}
!5884 = !DILocalVariable(name: "phydev", arg: 1, scope: !5882, file: !3, line: 256, type: !5067)
!5885 = !DILocalVariable(name: "irq_status", scope: !5882, file: !3, line: 258, type: !103)
!5886 = !DILocation(line: 256, column: 64, scope: !5882)
!5887 = !DILocation(line: 258, column: 2, scope: !5882)
!5888 = !DILocation(line: 258, column: 6, scope: !5882)
!5889 = !DILocation(line: 260, column: 24, scope: !5882)
!5890 = !DILocation(line: 260, column: 15, scope: !5882)
!5891 = !DILocation(line: 260, column: 13, scope: !5882)
!5892 = !DILocation(line: 261, column: 6, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 261, column: 6)
!5894 = !DILocation(line: 261, column: 17, scope: !5893)
!5895 = !DILocation(line: 261, column: 6, scope: !5882)
!5896 = !DILocation(line: 262, column: 13, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 261, column: 22)
!5898 = !DILocation(line: 262, column: 3, scope: !5897)
!5899 = !DILocation(line: 263, column: 3, scope: !5897)
!5900 = !DILocation(line: 266, column: 8, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5882, file: !3, line: 266, column: 6)
!5902 = !DILocation(line: 266, column: 19, scope: !5901)
!5903 = !DILocation(line: 266, column: 6, scope: !5882)
!5904 = !DILocation(line: 267, column: 3, scope: !5901)
!5905 = !DILocation(line: 269, column: 22, scope: !5882)
!5906 = !DILocation(line: 269, column: 2, scope: !5882)
!5907 = !DILocation(line: 271, column: 2, scope: !5882)
!5908 = !DILocation(line: 272, column: 1, scope: !5882)
!5909 = distinct !DISubprogram(name: "rtl8211_config_aneg", scope: !3, file: !3, line: 316, type: !5065, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5910)
!5910 = !{!5911, !5912}
!5911 = !DILocalVariable(name: "phydev", arg: 1, scope: !5909, file: !3, line: 316, type: !5067)
!5912 = !DILocalVariable(name: "ret", scope: !5909, file: !3, line: 318, type: !103)
!5913 = !DILocation(line: 316, column: 51, scope: !5909)
!5914 = !DILocation(line: 318, column: 2, scope: !5909)
!5915 = !DILocation(line: 318, column: 6, scope: !5909)
!5916 = !DILocation(line: 320, column: 27, scope: !5909)
!5917 = !DILocation(line: 320, column: 8, scope: !5909)
!5918 = !DILocation(line: 320, column: 6, scope: !5909)
!5919 = !DILocation(line: 321, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 321, column: 6)
!5921 = !DILocation(line: 321, column: 10, scope: !5920)
!5922 = !DILocation(line: 321, column: 6, scope: !5909)
!5923 = !DILocation(line: 322, column: 10, scope: !5920)
!5924 = !DILocation(line: 322, column: 3, scope: !5920)
!5925 = !DILocation(line: 327, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 327, column: 6)
!5927 = !DILocation(line: 327, column: 14, scope: !5926)
!5928 = !DILocation(line: 327, column: 20, scope: !5926)
!5929 = !DILocation(line: 327, column: 33, scope: !5926)
!5930 = !DILocation(line: 327, column: 36, scope: !5926)
!5931 = !DILocation(line: 327, column: 44, scope: !5926)
!5932 = !DILocation(line: 327, column: 52, scope: !5926)
!5933 = !DILocation(line: 327, column: 6, scope: !5909)
!5934 = !DILocation(line: 328, column: 13, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 327, column: 72)
!5936 = !DILocation(line: 328, column: 3, scope: !5935)
!5937 = !DILocation(line: 329, column: 13, scope: !5935)
!5938 = !DILocation(line: 329, column: 3, scope: !5935)
!5939 = !DILocation(line: 330, column: 2, scope: !5935)
!5940 = !DILocation(line: 331, column: 13, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5926, file: !3, line: 330, column: 9)
!5942 = !DILocation(line: 331, column: 3, scope: !5941)
!5943 = !DILocation(line: 332, column: 13, scope: !5941)
!5944 = !DILocation(line: 332, column: 3, scope: !5941)
!5945 = !DILocation(line: 335, column: 2, scope: !5909)
!5946 = !DILocation(line: 336, column: 1, scope: !5909)
!5947 = distinct !DISubprogram(name: "rtl8211b_suspend", scope: !3, file: !3, line: 513, type: !5065, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5948)
!5948 = !{!5949}
!5949 = !DILocalVariable(name: "phydev", arg: 1, scope: !5947, file: !3, line: 513, type: !5067)
!5950 = !DILocation(line: 513, column: 48, scope: !5947)
!5951 = !DILocation(line: 515, column: 12, scope: !5947)
!5952 = !DILocation(line: 515, column: 2, scope: !5947)
!5953 = !DILocation(line: 517, column: 24, scope: !5947)
!5954 = !DILocation(line: 517, column: 9, scope: !5947)
!5955 = !DILocation(line: 517, column: 2, scope: !5947)
!5956 = distinct !DISubprogram(name: "rtl8211b_resume", scope: !3, file: !3, line: 520, type: !5065, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5957)
!5957 = !{!5958}
!5958 = !DILocalVariable(name: "phydev", arg: 1, scope: !5956, file: !3, line: 520, type: !5067)
!5959 = !DILocation(line: 520, column: 47, scope: !5956)
!5960 = !DILocation(line: 522, column: 12, scope: !5956)
!5961 = !DILocation(line: 522, column: 2, scope: !5956)
!5962 = !DILocation(line: 524, column: 23, scope: !5956)
!5963 = !DILocation(line: 524, column: 9, scope: !5956)
!5964 = !DILocation(line: 524, column: 2, scope: !5956)
!5965 = distinct !DISubprogram(name: "rtl8211b_config_intr", scope: !3, file: !3, line: 188, type: !5065, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5966)
!5966 = !{!5967, !5968}
!5967 = !DILocalVariable(name: "phydev", arg: 1, scope: !5965, file: !3, line: 188, type: !5067)
!5968 = !DILocalVariable(name: "err", scope: !5965, file: !3, line: 190, type: !103)
!5969 = !DILocation(line: 188, column: 52, scope: !5965)
!5970 = !DILocation(line: 190, column: 2, scope: !5965)
!5971 = !DILocation(line: 190, column: 6, scope: !5965)
!5972 = !DILocation(line: 192, column: 6, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5965, file: !3, line: 192, column: 6)
!5974 = !DILocation(line: 192, column: 14, scope: !5973)
!5975 = !DILocation(line: 192, column: 25, scope: !5973)
!5976 = !DILocation(line: 192, column: 6, scope: !5965)
!5977 = !DILocation(line: 193, column: 31, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 192, column: 51)
!5979 = !DILocation(line: 193, column: 9, scope: !5978)
!5980 = !DILocation(line: 193, column: 7, scope: !5978)
!5981 = !DILocation(line: 194, column: 7, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 194, column: 7)
!5983 = !DILocation(line: 194, column: 7, scope: !5978)
!5984 = !DILocation(line: 195, column: 11, scope: !5982)
!5985 = !DILocation(line: 195, column: 4, scope: !5982)
!5986 = !DILocation(line: 197, column: 19, scope: !5978)
!5987 = !DILocation(line: 197, column: 9, scope: !5978)
!5988 = !DILocation(line: 197, column: 7, scope: !5978)
!5989 = !DILocation(line: 199, column: 2, scope: !5978)
!5990 = !DILocation(line: 200, column: 19, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 199, column: 9)
!5992 = !DILocation(line: 200, column: 9, scope: !5991)
!5993 = !DILocation(line: 200, column: 7, scope: !5991)
!5994 = !DILocation(line: 201, column: 7, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 201, column: 7)
!5996 = !DILocation(line: 201, column: 7, scope: !5991)
!5997 = !DILocation(line: 202, column: 11, scope: !5995)
!5998 = !DILocation(line: 202, column: 4, scope: !5995)
!5999 = !DILocation(line: 204, column: 31, scope: !5991)
!6000 = !DILocation(line: 204, column: 9, scope: !5991)
!6001 = !DILocation(line: 204, column: 7, scope: !5991)
!6002 = !DILocation(line: 207, column: 9, scope: !5965)
!6003 = !DILocation(line: 207, column: 2, scope: !5965)
!6004 = !DILocation(line: 208, column: 1, scope: !5965)
!6005 = distinct !DISubprogram(name: "rtl821x_handle_interrupt", scope: !3, file: !3, line: 274, type: !5589, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6006 = !{!6007, !6008, !6009}
!6007 = !DILocalVariable(name: "phydev", arg: 1, scope: !6005, file: !3, line: 274, type: !5067)
!6008 = !DILocalVariable(name: "irq_status", scope: !6005, file: !3, line: 276, type: !103)
!6009 = !DILocalVariable(name: "irq_enabled", scope: !6005, file: !3, line: 276, type: !103)
!6010 = !DILocation(line: 274, column: 64, scope: !6005)
!6011 = !DILocation(line: 276, column: 2, scope: !6005)
!6012 = !DILocation(line: 276, column: 6, scope: !6005)
!6013 = !DILocation(line: 276, column: 18, scope: !6005)
!6014 = !DILocation(line: 278, column: 24, scope: !6005)
!6015 = !DILocation(line: 278, column: 15, scope: !6005)
!6016 = !DILocation(line: 278, column: 13, scope: !6005)
!6017 = !DILocation(line: 279, column: 6, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 279, column: 6)
!6019 = !DILocation(line: 279, column: 17, scope: !6018)
!6020 = !DILocation(line: 279, column: 6, scope: !6005)
!6021 = !DILocation(line: 280, column: 13, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6018, file: !3, line: 279, column: 22)
!6023 = !DILocation(line: 280, column: 3, scope: !6022)
!6024 = !DILocation(line: 281, column: 3, scope: !6022)
!6025 = !DILocation(line: 284, column: 25, scope: !6005)
!6026 = !DILocation(line: 284, column: 16, scope: !6005)
!6027 = !DILocation(line: 284, column: 14, scope: !6005)
!6028 = !DILocation(line: 285, column: 6, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 285, column: 6)
!6030 = !DILocation(line: 285, column: 18, scope: !6029)
!6031 = !DILocation(line: 285, column: 6, scope: !6005)
!6032 = !DILocation(line: 286, column: 13, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 285, column: 23)
!6034 = !DILocation(line: 286, column: 3, scope: !6033)
!6035 = !DILocation(line: 287, column: 3, scope: !6033)
!6036 = !DILocation(line: 290, column: 8, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 290, column: 6)
!6038 = !DILocation(line: 290, column: 21, scope: !6037)
!6039 = !DILocation(line: 290, column: 19, scope: !6037)
!6040 = !DILocation(line: 290, column: 6, scope: !6005)
!6041 = !DILocation(line: 291, column: 3, scope: !6037)
!6042 = !DILocation(line: 293, column: 22, scope: !6005)
!6043 = !DILocation(line: 293, column: 2, scope: !6005)
!6044 = !DILocation(line: 295, column: 2, scope: !6005)
!6045 = !DILocation(line: 296, column: 1, scope: !6005)
!6046 = distinct !DISubprogram(name: "rtl8211c_config_init", scope: !3, file: !3, line: 338, type: !5065, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6047)
!6047 = !{!6048}
!6048 = !DILocalVariable(name: "phydev", arg: 1, scope: !6046, file: !3, line: 338, type: !5067)
!6049 = !DILocation(line: 338, column: 52, scope: !6046)
!6050 = !DILocation(line: 341, column: 22, scope: !6046)
!6051 = !DILocation(line: 341, column: 9, scope: !6046)
!6052 = !DILocation(line: 341, column: 2, scope: !6046)
!6053 = distinct !DISubprogram(name: "rtl8211e_config_intr", scope: !3, file: !3, line: 210, type: !5065, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6054)
!6054 = !{!6055, !6056}
!6055 = !DILocalVariable(name: "phydev", arg: 1, scope: !6053, file: !3, line: 210, type: !5067)
!6056 = !DILocalVariable(name: "err", scope: !6053, file: !3, line: 212, type: !103)
!6057 = !DILocation(line: 210, column: 52, scope: !6053)
!6058 = !DILocation(line: 212, column: 2, scope: !6053)
!6059 = !DILocation(line: 212, column: 6, scope: !6053)
!6060 = !DILocation(line: 214, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6053, file: !3, line: 214, column: 6)
!6062 = !DILocation(line: 214, column: 14, scope: !6061)
!6063 = !DILocation(line: 214, column: 25, scope: !6061)
!6064 = !DILocation(line: 214, column: 6, scope: !6053)
!6065 = !DILocation(line: 215, column: 31, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 214, column: 51)
!6067 = !DILocation(line: 215, column: 9, scope: !6066)
!6068 = !DILocation(line: 215, column: 7, scope: !6066)
!6069 = !DILocation(line: 216, column: 7, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 216, column: 7)
!6071 = !DILocation(line: 216, column: 7, scope: !6066)
!6072 = !DILocation(line: 217, column: 11, scope: !6070)
!6073 = !DILocation(line: 217, column: 4, scope: !6070)
!6074 = !DILocation(line: 219, column: 19, scope: !6066)
!6075 = !DILocation(line: 219, column: 9, scope: !6066)
!6076 = !DILocation(line: 219, column: 7, scope: !6066)
!6077 = !DILocation(line: 221, column: 2, scope: !6066)
!6078 = !DILocation(line: 222, column: 19, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 221, column: 9)
!6080 = !DILocation(line: 222, column: 9, scope: !6079)
!6081 = !DILocation(line: 222, column: 7, scope: !6079)
!6082 = !DILocation(line: 223, column: 7, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 223, column: 7)
!6084 = !DILocation(line: 223, column: 7, scope: !6079)
!6085 = !DILocation(line: 224, column: 11, scope: !6083)
!6086 = !DILocation(line: 224, column: 4, scope: !6083)
!6087 = !DILocation(line: 226, column: 31, scope: !6079)
!6088 = !DILocation(line: 226, column: 9, scope: !6079)
!6089 = !DILocation(line: 226, column: 7, scope: !6079)
!6090 = !DILocation(line: 229, column: 9, scope: !6053)
!6091 = !DILocation(line: 229, column: 2, scope: !6053)
!6092 = !DILocation(line: 230, column: 1, scope: !6053)
!6093 = distinct !DISubprogram(name: "rtl8211e_config_init", scope: !3, file: !3, line: 465, type: !5065, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6094)
!6094 = !{!6095, !6096, !6097, !6098, !6099}
!6095 = !DILocalVariable(name: "phydev", arg: 1, scope: !6093, file: !3, line: 465, type: !5067)
!6096 = !DILocalVariable(name: "ret", scope: !6093, file: !3, line: 467, type: !103)
!6097 = !DILocalVariable(name: "oldpage", scope: !6093, file: !3, line: 467, type: !103)
!6098 = !DILocalVariable(name: "val", scope: !6093, file: !3, line: 468, type: !225)
!6099 = !DILabel(scope: !6093, name: "err_restore_page", file: !3, line: 509)
!6100 = !DILocation(line: 465, column: 52, scope: !6093)
!6101 = !DILocation(line: 467, column: 2, scope: !6093)
!6102 = !DILocation(line: 467, column: 6, scope: !6093)
!6103 = !DILocation(line: 467, column: 15, scope: !6093)
!6104 = !DILocation(line: 468, column: 2, scope: !6093)
!6105 = !DILocation(line: 468, column: 6, scope: !6093)
!6106 = !DILocation(line: 471, column: 10, scope: !6093)
!6107 = !DILocation(line: 471, column: 18, scope: !6093)
!6108 = !DILocation(line: 471, column: 2, scope: !6093)
!6109 = !DILocation(line: 473, column: 7, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 471, column: 29)
!6111 = !DILocation(line: 474, column: 3, scope: !6110)
!6112 = !DILocation(line: 476, column: 7, scope: !6110)
!6113 = !DILocation(line: 477, column: 3, scope: !6110)
!6114 = !DILocation(line: 479, column: 7, scope: !6110)
!6115 = !DILocation(line: 480, column: 3, scope: !6110)
!6116 = !DILocation(line: 482, column: 7, scope: !6110)
!6117 = !DILocation(line: 483, column: 3, scope: !6110)
!6118 = !DILocation(line: 485, column: 3, scope: !6110)
!6119 = !DILocation(line: 497, column: 28, scope: !6093)
!6120 = !DILocation(line: 497, column: 12, scope: !6093)
!6121 = !DILocation(line: 497, column: 10, scope: !6093)
!6122 = !DILocation(line: 498, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 498, column: 6)
!6124 = !DILocation(line: 498, column: 14, scope: !6123)
!6125 = !DILocation(line: 498, column: 6, scope: !6093)
!6126 = !DILocation(line: 499, column: 3, scope: !6123)
!6127 = !DILocation(line: 501, column: 20, scope: !6093)
!6128 = !DILocation(line: 501, column: 8, scope: !6093)
!6129 = !DILocation(line: 501, column: 6, scope: !6093)
!6130 = !DILocation(line: 502, column: 6, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 502, column: 6)
!6132 = !DILocation(line: 502, column: 6, scope: !6093)
!6133 = !DILocation(line: 503, column: 3, scope: !6131)
!6134 = !DILocation(line: 505, column: 21, scope: !6093)
!6135 = !DILocation(line: 507, column: 7, scope: !6093)
!6136 = !DILocation(line: 505, column: 8, scope: !6093)
!6137 = !DILocation(line: 505, column: 6, scope: !6093)
!6138 = !DILocation(line: 505, column: 2, scope: !6093)
!6139 = !DILocation(line: 509, column: 1, scope: !6093)
!6140 = !DILocation(line: 510, column: 26, scope: !6093)
!6141 = !DILocation(line: 510, column: 34, scope: !6093)
!6142 = !DILocation(line: 510, column: 43, scope: !6093)
!6143 = !DILocation(line: 510, column: 9, scope: !6093)
!6144 = !DILocation(line: 510, column: 2, scope: !6093)
!6145 = !DILocation(line: 511, column: 1, scope: !6093)
!6146 = distinct !DISubprogram(name: "rtl8211f_config_init", scope: !3, file: !3, line: 345, type: !5065, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6147)
!6147 = !{!6148, !6149, !6160, !6161, !6162, !6163}
!6148 = !DILocalVariable(name: "phydev", arg: 1, scope: !6146, file: !3, line: 345, type: !5067)
!6149 = !DILocalVariable(name: "priv", scope: !6146, file: !3, line: 347, type: !6150)
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6151, size: 64)
!6151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl821x_priv", file: !3, line: 80, size: 128, elements: !6152)
!6152 = !{!6153, !6154, !6155, !6156}
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "phycr1", scope: !6151, file: !3, line: 81, baseType: !225, size: 16)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "phycr2", scope: !6151, file: !3, line: 82, baseType: !225, size: 16, offset: 16)
!6155 = !DIDerivedType(tag: DW_TAG_member, name: "has_phycr2", scope: !6151, file: !3, line: 83, baseType: !1458, size: 8, offset: 32)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !6151, file: !3, line: 84, baseType: !6157, size: 64, offset: 64)
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6158, size: 64)
!6158 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !6159, line: 17, flags: DIFlagFwdDecl)
!6159 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1429a43eaf99e9312dde348d6bc82f22")
!6160 = !DILocalVariable(name: "dev", scope: !6146, file: !3, line: 348, type: !4241)
!6161 = !DILocalVariable(name: "val_txdly", scope: !6146, file: !3, line: 349, type: !225)
!6162 = !DILocalVariable(name: "val_rxdly", scope: !6146, file: !3, line: 349, type: !225)
!6163 = !DILocalVariable(name: "ret", scope: !6146, file: !3, line: 350, type: !103)
!6164 = !DILocation(line: 345, column: 52, scope: !6146)
!6165 = !DILocation(line: 347, column: 2, scope: !6146)
!6166 = !DILocation(line: 347, column: 23, scope: !6146)
!6167 = !DILocation(line: 347, column: 30, scope: !6146)
!6168 = !DILocation(line: 347, column: 38, scope: !6146)
!6169 = !DILocation(line: 348, column: 2, scope: !6146)
!6170 = !DILocation(line: 348, column: 17, scope: !6146)
!6171 = !DILocation(line: 348, column: 24, scope: !6146)
!6172 = !DILocation(line: 348, column: 32, scope: !6146)
!6173 = !DILocation(line: 348, column: 37, scope: !6146)
!6174 = !DILocation(line: 349, column: 2, scope: !6146)
!6175 = !DILocation(line: 349, column: 6, scope: !6146)
!6176 = !DILocation(line: 349, column: 17, scope: !6146)
!6177 = !DILocation(line: 350, column: 2, scope: !6146)
!6178 = !DILocation(line: 350, column: 6, scope: !6146)
!6179 = !DILocation(line: 352, column: 33, scope: !6146)
!6180 = !DILocation(line: 354, column: 12, scope: !6146)
!6181 = !DILocation(line: 354, column: 18, scope: !6146)
!6182 = !DILocation(line: 352, column: 8, scope: !6146)
!6183 = !DILocation(line: 352, column: 6, scope: !6146)
!6184 = !DILocation(line: 355, column: 6, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 355, column: 6)
!6186 = !DILocation(line: 355, column: 10, scope: !6185)
!6187 = !DILocation(line: 355, column: 6, scope: !6146)
!6188 = !DILocation(line: 356, column: 3, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 356, column: 3)
!6190 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 355, column: 15)
!6191 = !DILocation(line: 356, column: 3, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 356, column: 3)
!6193 = !DILocation(line: 358, column: 10, scope: !6190)
!6194 = !DILocation(line: 358, column: 3, scope: !6190)
!6195 = !DILocation(line: 361, column: 10, scope: !6146)
!6196 = !DILocation(line: 361, column: 18, scope: !6146)
!6197 = !DILocation(line: 361, column: 2, scope: !6146)
!6198 = !DILocation(line: 363, column: 13, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 361, column: 29)
!6200 = !DILocation(line: 364, column: 13, scope: !6199)
!6201 = !DILocation(line: 365, column: 3, scope: !6199)
!6202 = !DILocation(line: 368, column: 13, scope: !6199)
!6203 = !DILocation(line: 369, column: 13, scope: !6199)
!6204 = !DILocation(line: 370, column: 3, scope: !6199)
!6205 = !DILocation(line: 373, column: 13, scope: !6199)
!6206 = !DILocation(line: 374, column: 13, scope: !6199)
!6207 = !DILocation(line: 375, column: 3, scope: !6199)
!6208 = !DILocation(line: 378, column: 13, scope: !6199)
!6209 = !DILocation(line: 379, column: 13, scope: !6199)
!6210 = !DILocation(line: 380, column: 3, scope: !6199)
!6211 = !DILocation(line: 383, column: 3, scope: !6199)
!6212 = !DILocation(line: 386, column: 33, scope: !6146)
!6213 = !DILocation(line: 387, column: 12, scope: !6146)
!6214 = !DILocation(line: 386, column: 8, scope: !6146)
!6215 = !DILocation(line: 386, column: 6, scope: !6146)
!6216 = !DILocation(line: 388, column: 6, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 388, column: 6)
!6218 = !DILocation(line: 388, column: 10, scope: !6217)
!6219 = !DILocation(line: 388, column: 6, scope: !6146)
!6220 = !DILocation(line: 389, column: 3, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 389, column: 3)
!6222 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 388, column: 15)
!6223 = !DILocation(line: 389, column: 3, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 389, column: 3)
!6225 = !DILocation(line: 390, column: 10, scope: !6222)
!6226 = !DILocation(line: 390, column: 3, scope: !6222)
!6227 = !DILocation(line: 391, column: 13, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6217, file: !3, line: 391, column: 13)
!6229 = !DILocation(line: 391, column: 13, scope: !6217)
!6230 = !DILocation(line: 395, column: 2, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 391, column: 18)
!6232 = !DILocation(line: 401, column: 33, scope: !6146)
!6233 = !DILocation(line: 402, column: 12, scope: !6146)
!6234 = !DILocation(line: 401, column: 8, scope: !6146)
!6235 = !DILocation(line: 401, column: 6, scope: !6146)
!6236 = !DILocation(line: 403, column: 6, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 403, column: 6)
!6238 = !DILocation(line: 403, column: 10, scope: !6237)
!6239 = !DILocation(line: 403, column: 6, scope: !6146)
!6240 = !DILocation(line: 404, column: 3, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 404, column: 3)
!6242 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 403, column: 15)
!6243 = !DILocation(line: 404, column: 3, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 404, column: 3)
!6245 = !DILocation(line: 405, column: 10, scope: !6242)
!6246 = !DILocation(line: 405, column: 3, scope: !6242)
!6247 = !DILocation(line: 406, column: 13, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 406, column: 13)
!6249 = !DILocation(line: 406, column: 13, scope: !6237)
!6250 = !DILocation(line: 410, column: 2, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 406, column: 18)
!6252 = !DILocation(line: 416, column: 6, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6146, file: !3, line: 416, column: 6)
!6254 = !DILocation(line: 416, column: 12, scope: !6253)
!6255 = !{i8 0, i8 2}
!6256 = !DILocation(line: 416, column: 6, scope: !6146)
!6257 = !DILocation(line: 417, column: 26, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 416, column: 24)
!6259 = !DILocation(line: 418, column: 32, scope: !6258)
!6260 = !DILocation(line: 418, column: 38, scope: !6258)
!6261 = !DILocation(line: 417, column: 9, scope: !6258)
!6262 = !DILocation(line: 417, column: 7, scope: !6258)
!6263 = !DILocation(line: 419, column: 7, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 419, column: 7)
!6265 = !DILocation(line: 419, column: 11, scope: !6264)
!6266 = !DILocation(line: 419, column: 7, scope: !6258)
!6267 = !DILocation(line: 420, column: 4, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 420, column: 4)
!6269 = distinct !DILexicalBlock(scope: !6264, file: !3, line: 419, column: 16)
!6270 = !DILocation(line: 420, column: 4, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 420, column: 4)
!6272 = !DILocation(line: 422, column: 11, scope: !6269)
!6273 = !DILocation(line: 422, column: 4, scope: !6269)
!6274 = !DILocation(line: 425, column: 28, scope: !6258)
!6275 = !DILocation(line: 425, column: 10, scope: !6258)
!6276 = !DILocation(line: 425, column: 3, scope: !6258)
!6277 = !DILocation(line: 428, column: 2, scope: !6146)
!6278 = !DILocation(line: 429, column: 1, scope: !6146)
!6279 = distinct !DISubprogram(name: "rtl821x_probe", scope: !3, file: !3, line: 97, type: !5065, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6280 = !{!6281, !6282, !6283, !6284, !6285}
!6281 = !DILocalVariable(name: "phydev", arg: 1, scope: !6279, file: !3, line: 97, type: !5067)
!6282 = !DILocalVariable(name: "dev", scope: !6279, file: !3, line: 99, type: !4241)
!6283 = !DILocalVariable(name: "priv", scope: !6279, file: !3, line: 100, type: !6150)
!6284 = !DILocalVariable(name: "phy_id", scope: !6279, file: !3, line: 101, type: !407)
!6285 = !DILocalVariable(name: "ret", scope: !6279, file: !3, line: 102, type: !103)
!6286 = !DILocation(line: 97, column: 45, scope: !6279)
!6287 = !DILocation(line: 99, column: 2, scope: !6279)
!6288 = !DILocation(line: 99, column: 17, scope: !6279)
!6289 = !DILocation(line: 99, column: 24, scope: !6279)
!6290 = !DILocation(line: 99, column: 32, scope: !6279)
!6291 = !DILocation(line: 99, column: 37, scope: !6279)
!6292 = !DILocation(line: 100, column: 2, scope: !6279)
!6293 = !DILocation(line: 100, column: 23, scope: !6279)
!6294 = !DILocation(line: 101, column: 2, scope: !6279)
!6295 = !DILocation(line: 101, column: 6, scope: !6279)
!6296 = !DILocation(line: 101, column: 15, scope: !6279)
!6297 = !DILocation(line: 101, column: 23, scope: !6279)
!6298 = !DILocation(line: 101, column: 28, scope: !6279)
!6299 = !DILocation(line: 102, column: 2, scope: !6279)
!6300 = !DILocation(line: 102, column: 6, scope: !6279)
!6301 = !DILocation(line: 104, column: 22, scope: !6279)
!6302 = !DILocation(line: 104, column: 9, scope: !6279)
!6303 = !DILocation(line: 104, column: 7, scope: !6279)
!6304 = !DILocation(line: 105, column: 7, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 105, column: 6)
!6306 = !DILocation(line: 105, column: 6, scope: !6279)
!6307 = !DILocation(line: 106, column: 3, scope: !6305)
!6308 = !DILocation(line: 108, column: 44, scope: !6279)
!6309 = !DILocation(line: 108, column: 14, scope: !6279)
!6310 = !DILocation(line: 108, column: 2, scope: !6279)
!6311 = !DILocation(line: 108, column: 8, scope: !6279)
!6312 = !DILocation(line: 108, column: 12, scope: !6279)
!6313 = !DILocation(line: 109, column: 13, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 109, column: 6)
!6315 = !DILocation(line: 109, column: 19, scope: !6314)
!6316 = !DILocation(line: 109, column: 6, scope: !6314)
!6317 = !DILocation(line: 109, column: 6, scope: !6279)
!6318 = !DILocation(line: 110, column: 24, scope: !6314)
!6319 = !DILocation(line: 110, column: 37, scope: !6314)
!6320 = !DILocation(line: 110, column: 43, scope: !6314)
!6321 = !DILocation(line: 110, column: 29, scope: !6314)
!6322 = !DILocation(line: 110, column: 10, scope: !6314)
!6323 = !DILocation(line: 110, column: 3, scope: !6314)
!6324 = !DILocation(line: 113, column: 23, scope: !6279)
!6325 = !DILocation(line: 113, column: 8, scope: !6279)
!6326 = !DILocation(line: 113, column: 6, scope: !6279)
!6327 = !DILocation(line: 114, column: 6, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 114, column: 6)
!6329 = !DILocation(line: 114, column: 10, scope: !6328)
!6330 = !DILocation(line: 114, column: 6, scope: !6279)
!6331 = !DILocation(line: 115, column: 10, scope: !6328)
!6332 = !DILocation(line: 115, column: 3, scope: !6328)
!6333 = !DILocation(line: 117, column: 17, scope: !6279)
!6334 = !DILocation(line: 117, column: 21, scope: !6279)
!6335 = !DILocation(line: 117, column: 2, scope: !6279)
!6336 = !DILocation(line: 117, column: 8, scope: !6279)
!6337 = !DILocation(line: 117, column: 15, scope: !6279)
!6338 = !DILocation(line: 118, column: 28, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 118, column: 6)
!6340 = !DILocation(line: 118, column: 33, scope: !6339)
!6341 = !DILocation(line: 118, column: 6, scope: !6339)
!6342 = !DILocation(line: 118, column: 6, scope: !6279)
!6343 = !DILocation(line: 119, column: 3, scope: !6339)
!6344 = !DILocation(line: 119, column: 9, scope: !6339)
!6345 = !DILocation(line: 119, column: 16, scope: !6339)
!6346 = !DILocation(line: 121, column: 23, scope: !6279)
!6347 = !DILocation(line: 121, column: 30, scope: !6279)
!6348 = !DILocation(line: 121, column: 21, scope: !6279)
!6349 = !DILocation(line: 121, column: 2, scope: !6279)
!6350 = !DILocation(line: 121, column: 8, scope: !6279)
!6351 = !DILocation(line: 121, column: 19, scope: !6279)
!6352 = !DILocation(line: 122, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6279, file: !3, line: 122, column: 6)
!6354 = !DILocation(line: 122, column: 12, scope: !6353)
!6355 = !DILocation(line: 122, column: 6, scope: !6279)
!6356 = !DILocation(line: 123, column: 24, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 122, column: 24)
!6358 = !DILocation(line: 123, column: 9, scope: !6357)
!6359 = !DILocation(line: 123, column: 7, scope: !6357)
!6360 = !DILocation(line: 124, column: 7, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 124, column: 7)
!6362 = !DILocation(line: 124, column: 11, scope: !6361)
!6363 = !DILocation(line: 124, column: 7, scope: !6357)
!6364 = !DILocation(line: 125, column: 11, scope: !6361)
!6365 = !DILocation(line: 125, column: 4, scope: !6361)
!6366 = !DILocation(line: 127, column: 18, scope: !6357)
!6367 = !DILocation(line: 127, column: 22, scope: !6357)
!6368 = !DILocation(line: 127, column: 3, scope: !6357)
!6369 = !DILocation(line: 127, column: 9, scope: !6357)
!6370 = !DILocation(line: 127, column: 16, scope: !6357)
!6371 = !DILocation(line: 128, column: 29, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 128, column: 7)
!6373 = !DILocation(line: 128, column: 34, scope: !6372)
!6374 = !DILocation(line: 128, column: 7, scope: !6372)
!6375 = !DILocation(line: 128, column: 7, scope: !6357)
!6376 = !DILocation(line: 129, column: 4, scope: !6372)
!6377 = !DILocation(line: 129, column: 10, scope: !6372)
!6378 = !DILocation(line: 129, column: 17, scope: !6372)
!6379 = !DILocation(line: 130, column: 2, scope: !6357)
!6380 = !DILocation(line: 132, column: 17, scope: !6279)
!6381 = !DILocation(line: 132, column: 2, scope: !6279)
!6382 = !DILocation(line: 132, column: 10, scope: !6279)
!6383 = !DILocation(line: 132, column: 15, scope: !6279)
!6384 = !DILocation(line: 134, column: 2, scope: !6279)
!6385 = !DILocation(line: 135, column: 1, scope: !6279)
!6386 = distinct !DISubprogram(name: "rtl821x_suspend", scope: !3, file: !3, line: 431, type: !5065, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6387)
!6387 = !{!6388, !6389, !6390}
!6388 = !DILocalVariable(name: "phydev", arg: 1, scope: !6386, file: !3, line: 431, type: !5067)
!6389 = !DILocalVariable(name: "priv", scope: !6386, file: !3, line: 433, type: !6150)
!6390 = !DILocalVariable(name: "ret", scope: !6386, file: !3, line: 434, type: !103)
!6391 = !DILocation(line: 431, column: 47, scope: !6386)
!6392 = !DILocation(line: 433, column: 2, scope: !6386)
!6393 = !DILocation(line: 433, column: 23, scope: !6386)
!6394 = !DILocation(line: 433, column: 30, scope: !6386)
!6395 = !DILocation(line: 433, column: 38, scope: !6386)
!6396 = !DILocation(line: 434, column: 2, scope: !6386)
!6397 = !DILocation(line: 434, column: 6, scope: !6386)
!6398 = !DILocation(line: 436, column: 7, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 436, column: 6)
!6400 = !DILocation(line: 436, column: 15, scope: !6399)
!6401 = !DILocation(line: 436, column: 6, scope: !6386)
!6402 = !DILocation(line: 437, column: 24, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6399, file: !3, line: 436, column: 28)
!6404 = !DILocation(line: 437, column: 9, scope: !6403)
!6405 = !DILocation(line: 437, column: 7, scope: !6403)
!6406 = !DILocation(line: 439, column: 7, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6403, file: !3, line: 439, column: 7)
!6408 = !DILocation(line: 439, column: 7, scope: !6403)
!6409 = !DILocation(line: 440, column: 11, scope: !6407)
!6410 = !DILocation(line: 440, column: 4, scope: !6407)
!6411 = !DILocation(line: 442, column: 25, scope: !6403)
!6412 = !DILocation(line: 442, column: 31, scope: !6403)
!6413 = !DILocation(line: 442, column: 3, scope: !6403)
!6414 = !DILocation(line: 443, column: 2, scope: !6403)
!6415 = !DILocation(line: 445, column: 9, scope: !6386)
!6416 = !DILocation(line: 445, column: 2, scope: !6386)
!6417 = !DILocation(line: 446, column: 1, scope: !6386)
!6418 = distinct !DISubprogram(name: "rtl821x_resume", scope: !3, file: !3, line: 448, type: !5065, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6419)
!6419 = !{!6420, !6421, !6422}
!6420 = !DILocalVariable(name: "phydev", arg: 1, scope: !6418, file: !3, line: 448, type: !5067)
!6421 = !DILocalVariable(name: "priv", scope: !6418, file: !3, line: 450, type: !6150)
!6422 = !DILocalVariable(name: "ret", scope: !6418, file: !3, line: 451, type: !103)
!6423 = !DILocation(line: 448, column: 46, scope: !6418)
!6424 = !DILocation(line: 450, column: 2, scope: !6418)
!6425 = !DILocation(line: 450, column: 23, scope: !6418)
!6426 = !DILocation(line: 450, column: 30, scope: !6418)
!6427 = !DILocation(line: 450, column: 38, scope: !6418)
!6428 = !DILocation(line: 451, column: 2, scope: !6418)
!6429 = !DILocation(line: 451, column: 6, scope: !6418)
!6430 = !DILocation(line: 453, column: 7, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 453, column: 6)
!6432 = !DILocation(line: 453, column: 15, scope: !6431)
!6433 = !DILocation(line: 453, column: 6, scope: !6418)
!6434 = !DILocation(line: 454, column: 22, scope: !6431)
!6435 = !DILocation(line: 454, column: 28, scope: !6431)
!6436 = !DILocation(line: 454, column: 3, scope: !6431)
!6437 = !DILocation(line: 456, column: 22, scope: !6418)
!6438 = !DILocation(line: 456, column: 8, scope: !6418)
!6439 = !DILocation(line: 456, column: 6, scope: !6418)
!6440 = !DILocation(line: 457, column: 6, scope: !6441)
!6441 = distinct !DILexicalBlock(scope: !6418, file: !3, line: 457, column: 6)
!6442 = !DILocation(line: 457, column: 10, scope: !6441)
!6443 = !DILocation(line: 457, column: 6, scope: !6418)
!6444 = !DILocation(line: 458, column: 10, scope: !6441)
!6445 = !DILocation(line: 458, column: 3, scope: !6441)
!6446 = !DILocation(line: 460, column: 2, scope: !6418)
!6447 = !DILocation(line: 462, column: 2, scope: !6418)
!6448 = !DILocation(line: 463, column: 1, scope: !6418)
!6449 = distinct !DISubprogram(name: "rtlgen_read_status", scope: !3, file: !3, line: 579, type: !5065, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6450)
!6450 = !{!6451, !6452}
!6451 = !DILocalVariable(name: "phydev", arg: 1, scope: !6449, file: !3, line: 579, type: !5067)
!6452 = !DILocalVariable(name: "ret", scope: !6449, file: !3, line: 581, type: !103)
!6453 = !DILocation(line: 579, column: 50, scope: !6449)
!6454 = !DILocation(line: 581, column: 2, scope: !6449)
!6455 = !DILocation(line: 581, column: 6, scope: !6449)
!6456 = !DILocation(line: 583, column: 27, scope: !6449)
!6457 = !DILocation(line: 583, column: 8, scope: !6449)
!6458 = !DILocation(line: 583, column: 6, scope: !6449)
!6459 = !DILocation(line: 584, column: 6, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6449, file: !3, line: 584, column: 6)
!6461 = !DILocation(line: 584, column: 10, scope: !6460)
!6462 = !DILocation(line: 584, column: 6, scope: !6449)
!6463 = !DILocation(line: 585, column: 10, scope: !6460)
!6464 = !DILocation(line: 585, column: 3, scope: !6460)
!6465 = !DILocation(line: 587, column: 26, scope: !6449)
!6466 = !DILocation(line: 587, column: 9, scope: !6449)
!6467 = !DILocation(line: 587, column: 2, scope: !6449)
!6468 = !DILocation(line: 588, column: 1, scope: !6449)
!6469 = distinct !DISubprogram(name: "rtl8211f_config_intr", scope: !3, file: !3, line: 232, type: !5065, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6470)
!6470 = !{!6471, !6472, !6473}
!6471 = !DILocalVariable(name: "phydev", arg: 1, scope: !6469, file: !3, line: 232, type: !5067)
!6472 = !DILocalVariable(name: "val", scope: !6469, file: !3, line: 234, type: !225)
!6473 = !DILocalVariable(name: "err", scope: !6469, file: !3, line: 235, type: !103)
!6474 = !DILocation(line: 232, column: 52, scope: !6469)
!6475 = !DILocation(line: 234, column: 2, scope: !6469)
!6476 = !DILocation(line: 234, column: 6, scope: !6469)
!6477 = !DILocation(line: 235, column: 2, scope: !6469)
!6478 = !DILocation(line: 235, column: 6, scope: !6469)
!6479 = !DILocation(line: 237, column: 6, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 237, column: 6)
!6481 = !DILocation(line: 237, column: 14, scope: !6480)
!6482 = !DILocation(line: 237, column: 25, scope: !6480)
!6483 = !DILocation(line: 237, column: 6, scope: !6469)
!6484 = !DILocation(line: 238, column: 32, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 237, column: 51)
!6486 = !DILocation(line: 238, column: 9, scope: !6485)
!6487 = !DILocation(line: 238, column: 7, scope: !6485)
!6488 = !DILocation(line: 239, column: 7, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6485, file: !3, line: 239, column: 7)
!6490 = !DILocation(line: 239, column: 7, scope: !6485)
!6491 = !DILocation(line: 240, column: 11, scope: !6489)
!6492 = !DILocation(line: 240, column: 4, scope: !6489)
!6493 = !DILocation(line: 242, column: 7, scope: !6485)
!6494 = !DILocation(line: 243, column: 25, scope: !6485)
!6495 = !DILocation(line: 243, column: 54, scope: !6485)
!6496 = !DILocation(line: 243, column: 9, scope: !6485)
!6497 = !DILocation(line: 243, column: 7, scope: !6485)
!6498 = !DILocation(line: 244, column: 2, scope: !6485)
!6499 = !DILocation(line: 245, column: 7, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 244, column: 9)
!6501 = !DILocation(line: 246, column: 25, scope: !6500)
!6502 = !DILocation(line: 246, column: 54, scope: !6500)
!6503 = !DILocation(line: 246, column: 9, scope: !6500)
!6504 = !DILocation(line: 246, column: 7, scope: !6500)
!6505 = !DILocation(line: 247, column: 7, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6500, file: !3, line: 247, column: 7)
!6507 = !DILocation(line: 247, column: 7, scope: !6500)
!6508 = !DILocation(line: 248, column: 11, scope: !6506)
!6509 = !DILocation(line: 248, column: 4, scope: !6506)
!6510 = !DILocation(line: 250, column: 32, scope: !6500)
!6511 = !DILocation(line: 250, column: 9, scope: !6500)
!6512 = !DILocation(line: 250, column: 7, scope: !6500)
!6513 = !DILocation(line: 253, column: 9, scope: !6469)
!6514 = !DILocation(line: 253, column: 2, scope: !6469)
!6515 = !DILocation(line: 254, column: 1, scope: !6469)
!6516 = distinct !DISubprogram(name: "rtl8211f_handle_interrupt", scope: !3, file: !3, line: 298, type: !5589, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6517)
!6517 = !{!6518, !6519}
!6518 = !DILocalVariable(name: "phydev", arg: 1, scope: !6516, file: !3, line: 298, type: !5067)
!6519 = !DILocalVariable(name: "irq_status", scope: !6516, file: !3, line: 300, type: !103)
!6520 = !DILocation(line: 298, column: 65, scope: !6516)
!6521 = !DILocation(line: 300, column: 2, scope: !6516)
!6522 = !DILocation(line: 300, column: 6, scope: !6516)
!6523 = !DILocation(line: 302, column: 30, scope: !6516)
!6524 = !DILocation(line: 302, column: 15, scope: !6516)
!6525 = !DILocation(line: 302, column: 13, scope: !6516)
!6526 = !DILocation(line: 303, column: 6, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 303, column: 6)
!6528 = !DILocation(line: 303, column: 17, scope: !6527)
!6529 = !DILocation(line: 303, column: 6, scope: !6516)
!6530 = !DILocation(line: 304, column: 13, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 303, column: 22)
!6532 = !DILocation(line: 304, column: 3, scope: !6531)
!6533 = !DILocation(line: 305, column: 3, scope: !6531)
!6534 = !DILocation(line: 308, column: 8, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 308, column: 6)
!6536 = !DILocation(line: 308, column: 19, scope: !6535)
!6537 = !DILocation(line: 308, column: 6, scope: !6516)
!6538 = !DILocation(line: 309, column: 3, scope: !6535)
!6539 = !DILocation(line: 311, column: 22, scope: !6516)
!6540 = !DILocation(line: 311, column: 2, scope: !6516)
!6541 = !DILocation(line: 313, column: 2, scope: !6516)
!6542 = !DILocation(line: 314, column: 1, scope: !6516)
!6543 = distinct !DISubprogram(name: "rtlgen_resume", scope: !3, file: !3, line: 756, type: !5065, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6544)
!6544 = !{!6545, !6546}
!6545 = !DILocalVariable(name: "phydev", arg: 1, scope: !6543, file: !3, line: 756, type: !5067)
!6546 = !DILocalVariable(name: "ret", scope: !6543, file: !3, line: 758, type: !103)
!6547 = !DILocation(line: 756, column: 45, scope: !6543)
!6548 = !DILocation(line: 758, column: 2, scope: !6543)
!6549 = !DILocation(line: 758, column: 6, scope: !6543)
!6550 = !DILocation(line: 758, column: 26, scope: !6543)
!6551 = !DILocation(line: 758, column: 12, scope: !6543)
!6552 = !DILocation(line: 761, column: 2, scope: !6543)
!6553 = !DILocation(line: 763, column: 9, scope: !6543)
!6554 = !DILocation(line: 764, column: 1, scope: !6543)
!6555 = !DILocation(line: 763, column: 2, scope: !6543)
!6556 = distinct !DISubprogram(name: "rtlgen_match_phy_device", scope: !3, file: !3, line: 744, type: !5065, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6557)
!6557 = !{!6558}
!6558 = !DILocalVariable(name: "phydev", arg: 1, scope: !6556, file: !3, line: 744, type: !5067)
!6559 = !DILocation(line: 744, column: 55, scope: !6556)
!6560 = !DILocation(line: 746, column: 9, scope: !6556)
!6561 = !DILocation(line: 746, column: 17, scope: !6556)
!6562 = !DILocation(line: 746, column: 24, scope: !6556)
!6563 = !DILocation(line: 746, column: 45, scope: !6556)
!6564 = !DILocation(line: 747, column: 34, scope: !6556)
!6565 = !DILocation(line: 747, column: 10, scope: !6556)
!6566 = !DILocation(line: 747, column: 9, scope: !6556)
!6567 = !DILocation(line: 0, scope: !6556)
!6568 = !DILocation(line: 746, column: 2, scope: !6556)
!6569 = distinct !DISubprogram(name: "rtlgen_read_mmd", scope: !3, file: !3, line: 590, type: !5616, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6570)
!6570 = !{!6571, !6572, !6573, !6574}
!6571 = !DILocalVariable(name: "phydev", arg: 1, scope: !6569, file: !3, line: 590, type: !5067)
!6572 = !DILocalVariable(name: "devnum", arg: 2, scope: !6569, file: !3, line: 590, type: !103)
!6573 = !DILocalVariable(name: "regnum", arg: 3, scope: !6569, file: !3, line: 590, type: !225)
!6574 = !DILocalVariable(name: "ret", scope: !6569, file: !3, line: 592, type: !103)
!6575 = !DILocation(line: 590, column: 47, scope: !6569)
!6576 = !DILocation(line: 590, column: 59, scope: !6569)
!6577 = !DILocation(line: 590, column: 71, scope: !6569)
!6578 = !DILocation(line: 592, column: 2, scope: !6569)
!6579 = !DILocation(line: 592, column: 6, scope: !6569)
!6580 = !DILocation(line: 594, column: 6, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6569, file: !3, line: 594, column: 6)
!6582 = !DILocation(line: 594, column: 13, scope: !6581)
!6583 = !DILocation(line: 594, column: 29, scope: !6581)
!6584 = !DILocation(line: 594, column: 32, scope: !6581)
!6585 = !DILocation(line: 594, column: 39, scope: !6581)
!6586 = !DILocation(line: 594, column: 6, scope: !6569)
!6587 = !DILocation(line: 595, column: 22, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 594, column: 61)
!6589 = !DILocation(line: 595, column: 3, scope: !6588)
!6590 = !DILocation(line: 596, column: 20, scope: !6588)
!6591 = !DILocation(line: 596, column: 9, scope: !6588)
!6592 = !DILocation(line: 596, column: 7, scope: !6588)
!6593 = !DILocation(line: 597, column: 22, scope: !6588)
!6594 = !DILocation(line: 597, column: 3, scope: !6588)
!6595 = !DILocation(line: 598, column: 2, scope: !6588)
!6596 = !DILocation(line: 598, column: 13, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 598, column: 13)
!6598 = !DILocation(line: 598, column: 20, scope: !6597)
!6599 = !DILocation(line: 598, column: 35, scope: !6597)
!6600 = !DILocation(line: 598, column: 38, scope: !6597)
!6601 = !DILocation(line: 598, column: 45, scope: !6597)
!6602 = !DILocation(line: 598, column: 13, scope: !6581)
!6603 = !DILocation(line: 599, column: 22, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6597, file: !3, line: 598, column: 65)
!6605 = !DILocation(line: 599, column: 3, scope: !6604)
!6606 = !DILocation(line: 600, column: 20, scope: !6604)
!6607 = !DILocation(line: 600, column: 9, scope: !6604)
!6608 = !DILocation(line: 600, column: 7, scope: !6604)
!6609 = !DILocation(line: 601, column: 22, scope: !6604)
!6610 = !DILocation(line: 601, column: 3, scope: !6604)
!6611 = !DILocation(line: 602, column: 2, scope: !6604)
!6612 = !DILocation(line: 602, column: 13, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6597, file: !3, line: 602, column: 13)
!6614 = !DILocation(line: 602, column: 20, scope: !6613)
!6615 = !DILocation(line: 602, column: 35, scope: !6613)
!6616 = !DILocation(line: 602, column: 38, scope: !6613)
!6617 = !DILocation(line: 602, column: 45, scope: !6613)
!6618 = !DILocation(line: 602, column: 13, scope: !6597)
!6619 = !DILocation(line: 603, column: 22, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 602, column: 68)
!6621 = !DILocation(line: 603, column: 3, scope: !6620)
!6622 = !DILocation(line: 604, column: 20, scope: !6620)
!6623 = !DILocation(line: 604, column: 9, scope: !6620)
!6624 = !DILocation(line: 604, column: 7, scope: !6620)
!6625 = !DILocation(line: 605, column: 22, scope: !6620)
!6626 = !DILocation(line: 605, column: 3, scope: !6620)
!6627 = !DILocation(line: 606, column: 2, scope: !6620)
!6628 = !DILocation(line: 607, column: 7, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 606, column: 9)
!6630 = !DILocation(line: 610, column: 9, scope: !6569)
!6631 = !DILocation(line: 611, column: 1, scope: !6569)
!6632 = !DILocation(line: 610, column: 2, scope: !6569)
!6633 = distinct !DISubprogram(name: "rtlgen_write_mmd", scope: !3, file: !3, line: 613, type: !5620, scopeLine: 615, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6634)
!6634 = !{!6635, !6636, !6637, !6638, !6639}
!6635 = !DILocalVariable(name: "phydev", arg: 1, scope: !6633, file: !3, line: 613, type: !5067)
!6636 = !DILocalVariable(name: "devnum", arg: 2, scope: !6633, file: !3, line: 613, type: !103)
!6637 = !DILocalVariable(name: "regnum", arg: 3, scope: !6633, file: !3, line: 613, type: !225)
!6638 = !DILocalVariable(name: "val", arg: 4, scope: !6633, file: !3, line: 614, type: !225)
!6639 = !DILocalVariable(name: "ret", scope: !6633, file: !3, line: 616, type: !103)
!6640 = !DILocation(line: 613, column: 48, scope: !6633)
!6641 = !DILocation(line: 613, column: 60, scope: !6633)
!6642 = !DILocation(line: 613, column: 72, scope: !6633)
!6643 = !DILocation(line: 614, column: 12, scope: !6633)
!6644 = !DILocation(line: 616, column: 2, scope: !6633)
!6645 = !DILocation(line: 616, column: 6, scope: !6633)
!6646 = !DILocation(line: 618, column: 6, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 618, column: 6)
!6648 = !DILocation(line: 618, column: 13, scope: !6647)
!6649 = !DILocation(line: 618, column: 28, scope: !6647)
!6650 = !DILocation(line: 618, column: 31, scope: !6647)
!6651 = !DILocation(line: 618, column: 38, scope: !6647)
!6652 = !DILocation(line: 618, column: 6, scope: !6633)
!6653 = !DILocation(line: 619, column: 22, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 618, column: 58)
!6655 = !DILocation(line: 619, column: 3, scope: !6654)
!6656 = !DILocation(line: 620, column: 21, scope: !6654)
!6657 = !DILocation(line: 620, column: 35, scope: !6654)
!6658 = !DILocation(line: 620, column: 9, scope: !6654)
!6659 = !DILocation(line: 620, column: 7, scope: !6654)
!6660 = !DILocation(line: 621, column: 22, scope: !6654)
!6661 = !DILocation(line: 621, column: 3, scope: !6654)
!6662 = !DILocation(line: 622, column: 2, scope: !6654)
!6663 = !DILocation(line: 623, column: 7, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6647, file: !3, line: 622, column: 9)
!6665 = !DILocation(line: 626, column: 9, scope: !6633)
!6666 = !DILocation(line: 627, column: 1, scope: !6633)
!6667 = !DILocation(line: 626, column: 2, scope: !6633)
!6668 = distinct !DISubprogram(name: "rtl822x_get_features", scope: !3, file: !3, line: 670, type: !5065, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6669)
!6669 = !{!6670, !6671}
!6670 = !DILocalVariable(name: "phydev", arg: 1, scope: !6668, file: !3, line: 670, type: !5067)
!6671 = !DILocalVariable(name: "val", scope: !6668, file: !3, line: 672, type: !103)
!6672 = !DILocation(line: 670, column: 52, scope: !6668)
!6673 = !DILocation(line: 672, column: 2, scope: !6668)
!6674 = !DILocation(line: 672, column: 6, scope: !6668)
!6675 = !DILocation(line: 674, column: 23, scope: !6668)
!6676 = !DILocation(line: 674, column: 8, scope: !6668)
!6677 = !DILocation(line: 674, column: 6, scope: !6668)
!6678 = !DILocation(line: 675, column: 6, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 675, column: 6)
!6680 = !DILocation(line: 675, column: 10, scope: !6679)
!6681 = !DILocation(line: 675, column: 6, scope: !6668)
!6682 = !DILocation(line: 676, column: 10, scope: !6679)
!6683 = !DILocation(line: 676, column: 3, scope: !6679)
!6684 = !DILocation(line: 679, column: 5, scope: !6668)
!6685 = !DILocation(line: 679, column: 13, scope: !6668)
!6686 = !DILocation(line: 679, column: 24, scope: !6668)
!6687 = !DILocation(line: 679, column: 28, scope: !6668)
!6688 = !DILocation(line: 678, column: 2, scope: !6668)
!6689 = !DILocation(line: 681, column: 5, scope: !6668)
!6690 = !DILocation(line: 681, column: 13, scope: !6668)
!6691 = !DILocation(line: 681, column: 24, scope: !6668)
!6692 = !DILocation(line: 681, column: 28, scope: !6668)
!6693 = !DILocation(line: 680, column: 2, scope: !6668)
!6694 = !DILocation(line: 683, column: 5, scope: !6668)
!6695 = !DILocation(line: 683, column: 13, scope: !6668)
!6696 = !DILocation(line: 683, column: 24, scope: !6668)
!6697 = !DILocation(line: 683, column: 28, scope: !6668)
!6698 = !DILocation(line: 682, column: 2, scope: !6668)
!6699 = !DILocation(line: 685, column: 31, scope: !6668)
!6700 = !DILocation(line: 685, column: 9, scope: !6668)
!6701 = !DILocation(line: 685, column: 2, scope: !6668)
!6702 = !DILocation(line: 686, column: 1, scope: !6668)
!6703 = distinct !DISubprogram(name: "rtl822x_config_aneg", scope: !3, file: !3, line: 688, type: !5065, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6704)
!6704 = !{!6705, !6706, !6707}
!6705 = !DILocalVariable(name: "phydev", arg: 1, scope: !6703, file: !3, line: 688, type: !5067)
!6706 = !DILocalVariable(name: "ret", scope: !6703, file: !3, line: 690, type: !103)
!6707 = !DILocalVariable(name: "adv2500", scope: !6708, file: !3, line: 693, type: !225)
!6708 = distinct !DILexicalBlock(scope: !6709, file: !3, line: 692, column: 41)
!6709 = distinct !DILexicalBlock(scope: !6703, file: !3, line: 692, column: 6)
!6710 = !DILocation(line: 688, column: 51, scope: !6703)
!6711 = !DILocation(line: 690, column: 2, scope: !6703)
!6712 = !DILocation(line: 690, column: 6, scope: !6703)
!6713 = !DILocation(line: 692, column: 6, scope: !6709)
!6714 = !DILocation(line: 692, column: 14, scope: !6709)
!6715 = !DILocation(line: 692, column: 22, scope: !6709)
!6716 = !DILocation(line: 692, column: 6, scope: !6703)
!6717 = !DILocation(line: 693, column: 3, scope: !6708)
!6718 = !DILocation(line: 693, column: 7, scope: !6708)
!6719 = !DILocation(line: 696, column: 11, scope: !6720)
!6720 = distinct !DILexicalBlock(scope: !6708, file: !3, line: 695, column: 7)
!6721 = !DILocation(line: 696, column: 19, scope: !6720)
!6722 = !DILocation(line: 695, column: 7, scope: !6720)
!6723 = !DILocation(line: 695, column: 7, scope: !6708)
!6724 = !DILocation(line: 697, column: 12, scope: !6720)
!6725 = !DILocation(line: 697, column: 4, scope: !6720)
!6726 = !DILocation(line: 699, column: 34, scope: !6708)
!6727 = !DILocation(line: 700, column: 31, scope: !6708)
!6728 = !DILocation(line: 699, column: 9, scope: !6708)
!6729 = !DILocation(line: 699, column: 7, scope: !6708)
!6730 = !DILocation(line: 701, column: 7, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6708, file: !3, line: 701, column: 7)
!6732 = !DILocation(line: 701, column: 11, scope: !6731)
!6733 = !DILocation(line: 701, column: 7, scope: !6708)
!6734 = !DILocation(line: 702, column: 11, scope: !6731)
!6735 = !DILocation(line: 702, column: 4, scope: !6731)
!6736 = !DILocation(line: 703, column: 2, scope: !6709)
!6737 = !DILocation(line: 703, column: 2, scope: !6708)
!6738 = !DILocation(line: 705, column: 30, scope: !6703)
!6739 = !DILocation(line: 705, column: 38, scope: !6703)
!6740 = !DILocation(line: 705, column: 9, scope: !6703)
!6741 = !DILocation(line: 705, column: 2, scope: !6703)
!6742 = !DILocation(line: 706, column: 1, scope: !6703)
!6743 = distinct !DISubprogram(name: "rtl822x_read_status", scope: !3, file: !3, line: 708, type: !5065, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6744)
!6744 = !{!6745, !6746, !6747}
!6745 = !DILocalVariable(name: "phydev", arg: 1, scope: !6743, file: !3, line: 708, type: !5067)
!6746 = !DILocalVariable(name: "ret", scope: !6743, file: !3, line: 710, type: !103)
!6747 = !DILocalVariable(name: "lpadv", scope: !6748, file: !3, line: 713, type: !103)
!6748 = distinct !DILexicalBlock(scope: !6749, file: !3, line: 712, column: 41)
!6749 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 712, column: 6)
!6750 = !DILocation(line: 708, column: 51, scope: !6743)
!6751 = !DILocation(line: 710, column: 2, scope: !6743)
!6752 = !DILocation(line: 710, column: 6, scope: !6743)
!6753 = !DILocation(line: 712, column: 6, scope: !6749)
!6754 = !DILocation(line: 712, column: 14, scope: !6749)
!6755 = !DILocation(line: 712, column: 22, scope: !6749)
!6756 = !DILocation(line: 712, column: 6, scope: !6743)
!6757 = !DILocation(line: 713, column: 3, scope: !6748)
!6758 = !DILocation(line: 713, column: 7, scope: !6748)
!6759 = !DILocation(line: 713, column: 30, scope: !6748)
!6760 = !DILocation(line: 713, column: 15, scope: !6748)
!6761 = !DILocation(line: 715, column: 7, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6748, file: !3, line: 715, column: 7)
!6763 = !DILocation(line: 715, column: 13, scope: !6762)
!6764 = !DILocation(line: 715, column: 7, scope: !6748)
!6765 = !DILocation(line: 716, column: 11, scope: !6762)
!6766 = !DILocation(line: 716, column: 4, scope: !6762)
!6767 = !DILocation(line: 719, column: 4, scope: !6748)
!6768 = !DILocation(line: 719, column: 12, scope: !6748)
!6769 = !DILocation(line: 719, column: 28, scope: !6748)
!6770 = !DILocation(line: 719, column: 34, scope: !6748)
!6771 = !DILocation(line: 718, column: 3, scope: !6748)
!6772 = !DILocation(line: 721, column: 4, scope: !6748)
!6773 = !DILocation(line: 721, column: 12, scope: !6748)
!6774 = !DILocation(line: 721, column: 28, scope: !6748)
!6775 = !DILocation(line: 721, column: 34, scope: !6748)
!6776 = !DILocation(line: 720, column: 3, scope: !6748)
!6777 = !DILocation(line: 723, column: 4, scope: !6748)
!6778 = !DILocation(line: 723, column: 12, scope: !6748)
!6779 = !DILocation(line: 723, column: 28, scope: !6748)
!6780 = !DILocation(line: 723, column: 34, scope: !6748)
!6781 = !DILocation(line: 722, column: 3, scope: !6748)
!6782 = !DILocation(line: 724, column: 2, scope: !6749)
!6783 = !DILocation(line: 724, column: 2, scope: !6748)
!6784 = !DILocation(line: 726, column: 27, scope: !6743)
!6785 = !DILocation(line: 726, column: 8, scope: !6743)
!6786 = !DILocation(line: 726, column: 6, scope: !6743)
!6787 = !DILocation(line: 727, column: 6, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 727, column: 6)
!6789 = !DILocation(line: 727, column: 10, scope: !6788)
!6790 = !DILocation(line: 727, column: 6, scope: !6743)
!6791 = !DILocation(line: 728, column: 10, scope: !6788)
!6792 = !DILocation(line: 728, column: 3, scope: !6788)
!6793 = !DILocation(line: 730, column: 26, scope: !6743)
!6794 = !DILocation(line: 730, column: 9, scope: !6743)
!6795 = !DILocation(line: 730, column: 2, scope: !6743)
!6796 = !DILocation(line: 731, column: 1, scope: !6743)
!6797 = distinct !DISubprogram(name: "rtl8226_match_phy_device", scope: !3, file: !3, line: 750, type: !5065, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6798)
!6798 = !{!6799}
!6799 = !DILocalVariable(name: "phydev", arg: 1, scope: !6797, file: !3, line: 750, type: !5067)
!6800 = !DILocation(line: 750, column: 56, scope: !6797)
!6801 = !DILocation(line: 752, column: 9, scope: !6797)
!6802 = !DILocation(line: 752, column: 17, scope: !6797)
!6803 = !DILocation(line: 752, column: 24, scope: !6797)
!6804 = !DILocation(line: 752, column: 45, scope: !6797)
!6805 = !DILocation(line: 753, column: 33, scope: !6797)
!6806 = !DILocation(line: 753, column: 9, scope: !6797)
!6807 = !DILocation(line: 0, scope: !6797)
!6808 = !DILocation(line: 752, column: 2, scope: !6797)
!6809 = distinct !DISubprogram(name: "rtl822x_read_mmd", scope: !3, file: !3, line: 629, type: !5616, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6810)
!6810 = !{!6811, !6812, !6813, !6814}
!6811 = !DILocalVariable(name: "phydev", arg: 1, scope: !6809, file: !3, line: 629, type: !5067)
!6812 = !DILocalVariable(name: "devnum", arg: 2, scope: !6809, file: !3, line: 629, type: !103)
!6813 = !DILocalVariable(name: "regnum", arg: 3, scope: !6809, file: !3, line: 629, type: !225)
!6814 = !DILocalVariable(name: "ret", scope: !6809, file: !3, line: 631, type: !103)
!6815 = !DILocation(line: 629, column: 48, scope: !6809)
!6816 = !DILocation(line: 629, column: 60, scope: !6809)
!6817 = !DILocation(line: 629, column: 72, scope: !6809)
!6818 = !DILocation(line: 631, column: 2, scope: !6809)
!6819 = !DILocation(line: 631, column: 6, scope: !6809)
!6820 = !DILocation(line: 631, column: 28, scope: !6809)
!6821 = !DILocation(line: 631, column: 36, scope: !6809)
!6822 = !DILocation(line: 631, column: 44, scope: !6809)
!6823 = !DILocation(line: 631, column: 12, scope: !6809)
!6824 = !DILocation(line: 633, column: 6, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6809, file: !3, line: 633, column: 6)
!6826 = !DILocation(line: 633, column: 10, scope: !6825)
!6827 = !DILocation(line: 633, column: 6, scope: !6809)
!6828 = !DILocation(line: 634, column: 10, scope: !6825)
!6829 = !DILocation(line: 634, column: 3, scope: !6825)
!6830 = !DILocation(line: 636, column: 6, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6809, file: !3, line: 636, column: 6)
!6832 = !DILocation(line: 636, column: 13, scope: !6831)
!6833 = !DILocation(line: 636, column: 29, scope: !6831)
!6834 = !DILocation(line: 636, column: 32, scope: !6831)
!6835 = !DILocation(line: 636, column: 39, scope: !6831)
!6836 = !DILocation(line: 636, column: 6, scope: !6809)
!6837 = !DILocation(line: 637, column: 22, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6831, file: !3, line: 636, column: 62)
!6839 = !DILocation(line: 637, column: 3, scope: !6838)
!6840 = !DILocation(line: 638, column: 20, scope: !6838)
!6841 = !DILocation(line: 638, column: 9, scope: !6838)
!6842 = !DILocation(line: 638, column: 7, scope: !6838)
!6843 = !DILocation(line: 639, column: 22, scope: !6838)
!6844 = !DILocation(line: 639, column: 3, scope: !6838)
!6845 = !DILocation(line: 640, column: 2, scope: !6838)
!6846 = !DILocation(line: 640, column: 13, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6831, file: !3, line: 640, column: 13)
!6848 = !DILocation(line: 640, column: 20, scope: !6847)
!6849 = !DILocation(line: 640, column: 35, scope: !6847)
!6850 = !DILocation(line: 640, column: 38, scope: !6847)
!6851 = !DILocation(line: 640, column: 45, scope: !6847)
!6852 = !DILocation(line: 640, column: 13, scope: !6831)
!6853 = !DILocation(line: 641, column: 22, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 640, column: 66)
!6855 = !DILocation(line: 641, column: 3, scope: !6854)
!6856 = !DILocation(line: 642, column: 20, scope: !6854)
!6857 = !DILocation(line: 642, column: 9, scope: !6854)
!6858 = !DILocation(line: 642, column: 7, scope: !6854)
!6859 = !DILocation(line: 643, column: 22, scope: !6854)
!6860 = !DILocation(line: 643, column: 3, scope: !6854)
!6861 = !DILocation(line: 644, column: 2, scope: !6854)
!6862 = !DILocation(line: 644, column: 13, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 644, column: 13)
!6864 = !DILocation(line: 644, column: 20, scope: !6863)
!6865 = !DILocation(line: 644, column: 35, scope: !6863)
!6866 = !DILocation(line: 644, column: 38, scope: !6863)
!6867 = !DILocation(line: 644, column: 45, scope: !6863)
!6868 = !DILocation(line: 644, column: 13, scope: !6847)
!6869 = !DILocation(line: 645, column: 22, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6863, file: !3, line: 644, column: 69)
!6871 = !DILocation(line: 645, column: 3, scope: !6870)
!6872 = !DILocation(line: 646, column: 20, scope: !6870)
!6873 = !DILocation(line: 646, column: 9, scope: !6870)
!6874 = !DILocation(line: 646, column: 7, scope: !6870)
!6875 = !DILocation(line: 647, column: 22, scope: !6870)
!6876 = !DILocation(line: 647, column: 3, scope: !6870)
!6877 = !DILocation(line: 648, column: 2, scope: !6870)
!6878 = !DILocation(line: 650, column: 9, scope: !6809)
!6879 = !DILocation(line: 650, column: 2, scope: !6809)
!6880 = !DILocation(line: 651, column: 1, scope: !6809)
!6881 = distinct !DISubprogram(name: "rtl822x_write_mmd", scope: !3, file: !3, line: 653, type: !5620, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6882 = !{!6883, !6884, !6885, !6886, !6887}
!6883 = !DILocalVariable(name: "phydev", arg: 1, scope: !6881, file: !3, line: 653, type: !5067)
!6884 = !DILocalVariable(name: "devnum", arg: 2, scope: !6881, file: !3, line: 653, type: !103)
!6885 = !DILocalVariable(name: "regnum", arg: 3, scope: !6881, file: !3, line: 653, type: !225)
!6886 = !DILocalVariable(name: "val", arg: 4, scope: !6881, file: !3, line: 654, type: !225)
!6887 = !DILocalVariable(name: "ret", scope: !6881, file: !3, line: 656, type: !103)
!6888 = !DILocation(line: 653, column: 49, scope: !6881)
!6889 = !DILocation(line: 653, column: 61, scope: !6881)
!6890 = !DILocation(line: 653, column: 73, scope: !6881)
!6891 = !DILocation(line: 654, column: 13, scope: !6881)
!6892 = !DILocation(line: 656, column: 2, scope: !6881)
!6893 = !DILocation(line: 656, column: 6, scope: !6881)
!6894 = !DILocation(line: 656, column: 29, scope: !6881)
!6895 = !DILocation(line: 656, column: 37, scope: !6881)
!6896 = !DILocation(line: 656, column: 45, scope: !6881)
!6897 = !DILocation(line: 656, column: 53, scope: !6881)
!6898 = !DILocation(line: 656, column: 12, scope: !6881)
!6899 = !DILocation(line: 658, column: 6, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 658, column: 6)
!6901 = !DILocation(line: 658, column: 10, scope: !6900)
!6902 = !DILocation(line: 658, column: 6, scope: !6881)
!6903 = !DILocation(line: 659, column: 10, scope: !6900)
!6904 = !DILocation(line: 659, column: 3, scope: !6900)
!6905 = !DILocation(line: 661, column: 6, scope: !6906)
!6906 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 661, column: 6)
!6907 = !DILocation(line: 661, column: 13, scope: !6906)
!6908 = !DILocation(line: 661, column: 28, scope: !6906)
!6909 = !DILocation(line: 661, column: 31, scope: !6906)
!6910 = !DILocation(line: 661, column: 38, scope: !6906)
!6911 = !DILocation(line: 661, column: 6, scope: !6881)
!6912 = !DILocation(line: 662, column: 22, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6906, file: !3, line: 661, column: 59)
!6914 = !DILocation(line: 662, column: 3, scope: !6913)
!6915 = !DILocation(line: 663, column: 21, scope: !6913)
!6916 = !DILocation(line: 663, column: 35, scope: !6913)
!6917 = !DILocation(line: 663, column: 9, scope: !6913)
!6918 = !DILocation(line: 663, column: 7, scope: !6913)
!6919 = !DILocation(line: 664, column: 22, scope: !6913)
!6920 = !DILocation(line: 664, column: 3, scope: !6913)
!6921 = !DILocation(line: 665, column: 2, scope: !6913)
!6922 = !DILocation(line: 667, column: 9, scope: !6881)
!6923 = !DILocation(line: 667, column: 2, scope: !6881)
!6924 = !DILocation(line: 668, column: 1, scope: !6881)
!6925 = distinct !DISubprogram(name: "rtl8366rb_config_init", scope: !3, file: !3, line: 527, type: !5065, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6926)
!6926 = !{!6927, !6928}
!6927 = !DILocalVariable(name: "phydev", arg: 1, scope: !6925, file: !3, line: 527, type: !5067)
!6928 = !DILocalVariable(name: "ret", scope: !6925, file: !3, line: 529, type: !103)
!6929 = !DILocation(line: 527, column: 53, scope: !6925)
!6930 = !DILocation(line: 529, column: 2, scope: !6925)
!6931 = !DILocation(line: 529, column: 6, scope: !6925)
!6932 = !DILocation(line: 531, column: 21, scope: !6925)
!6933 = !DILocation(line: 531, column: 8, scope: !6925)
!6934 = !DILocation(line: 531, column: 6, scope: !6925)
!6935 = !DILocation(line: 533, column: 6, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 533, column: 6)
!6937 = !DILocation(line: 533, column: 6, scope: !6925)
!6938 = !DILocation(line: 534, column: 3, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6940, file: !3, line: 534, column: 3)
!6940 = distinct !DILexicalBlock(scope: !6936, file: !3, line: 533, column: 11)
!6941 = !DILocation(line: 534, column: 3, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6939, file: !3, line: 534, column: 3)
!6943 = !DILocation(line: 536, column: 2, scope: !6940)
!6944 = !DILocation(line: 538, column: 9, scope: !6925)
!6945 = !DILocation(line: 539, column: 1, scope: !6925)
!6946 = !DILocation(line: 538, column: 2, scope: !6925)
!6947 = distinct !DISubprogram(name: "genphy_no_config_intr", scope: !148, file: !148, line: 1837, type: !5065, scopeLine: 1838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6948)
!6948 = !{!6949}
!6949 = !DILocalVariable(name: "phydev", arg: 1, scope: !6947, file: !148, line: 1837, type: !5067)
!6950 = !DILocation(line: 1837, column: 60, scope: !6947)
!6951 = !DILocation(line: 1839, column: 2, scope: !6947)
!6952 = distinct !DISubprogram(name: "rtl9000a_config_init", scope: !3, file: !3, line: 766, type: !5065, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6953)
!6953 = !{!6954}
!6954 = !DILocalVariable(name: "phydev", arg: 1, scope: !6952, file: !3, line: 766, type: !5067)
!6955 = !DILocation(line: 766, column: 52, scope: !6952)
!6956 = !DILocation(line: 768, column: 2, scope: !6952)
!6957 = !DILocation(line: 768, column: 10, scope: !6952)
!6958 = !DILocation(line: 768, column: 18, scope: !6952)
!6959 = !DILocation(line: 769, column: 2, scope: !6952)
!6960 = !DILocation(line: 769, column: 10, scope: !6952)
!6961 = !DILocation(line: 769, column: 16, scope: !6952)
!6962 = !DILocation(line: 770, column: 2, scope: !6952)
!6963 = !DILocation(line: 770, column: 10, scope: !6952)
!6964 = !DILocation(line: 770, column: 17, scope: !6952)
!6965 = !DILocation(line: 772, column: 2, scope: !6952)
!6966 = distinct !DISubprogram(name: "rtl9000a_config_aneg", scope: !3, file: !3, line: 775, type: !5065, scopeLine: 776, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6967)
!6967 = !{!6968, !6969, !6970}
!6968 = !DILocalVariable(name: "phydev", arg: 1, scope: !6966, file: !3, line: 775, type: !5067)
!6969 = !DILocalVariable(name: "ret", scope: !6966, file: !3, line: 777, type: !103)
!6970 = !DILocalVariable(name: "ctl", scope: !6966, file: !3, line: 778, type: !225)
!6971 = !DILocation(line: 775, column: 52, scope: !6966)
!6972 = !DILocation(line: 777, column: 2, scope: !6966)
!6973 = !DILocation(line: 777, column: 6, scope: !6966)
!6974 = !DILocation(line: 778, column: 2, scope: !6966)
!6975 = !DILocation(line: 778, column: 6, scope: !6966)
!6976 = !DILocation(line: 780, column: 10, scope: !6966)
!6977 = !DILocation(line: 780, column: 18, scope: !6966)
!6978 = !DILocation(line: 780, column: 2, scope: !6966)
!6979 = !DILocation(line: 782, column: 7, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6966, file: !3, line: 780, column: 36)
!6981 = !DILocation(line: 783, column: 3, scope: !6980)
!6982 = !DILocation(line: 788, column: 3, scope: !6980)
!6983 = !DILocation(line: 790, column: 3, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6980, file: !3, line: 790, column: 3)
!6985 = !DILocation(line: 790, column: 3, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6984, file: !3, line: 790, column: 3)
!6987 = !DILocation(line: 791, column: 3, scope: !6980)
!6988 = !DILocation(line: 794, column: 27, scope: !6966)
!6989 = !DILocation(line: 794, column: 68, scope: !6966)
!6990 = !DILocation(line: 794, column: 8, scope: !6966)
!6991 = !DILocation(line: 794, column: 6, scope: !6966)
!6992 = !DILocation(line: 795, column: 6, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6966, file: !3, line: 795, column: 6)
!6994 = !DILocation(line: 795, column: 10, scope: !6993)
!6995 = !DILocation(line: 795, column: 6, scope: !6966)
!6996 = !DILocation(line: 796, column: 27, scope: !6993)
!6997 = !DILocation(line: 796, column: 9, scope: !6993)
!6998 = !DILocation(line: 796, column: 7, scope: !6993)
!6999 = !DILocation(line: 796, column: 3, scope: !6993)
!7000 = !DILocation(line: 798, column: 9, scope: !6966)
!7001 = !DILocation(line: 798, column: 2, scope: !6966)
!7002 = !DILocation(line: 799, column: 1, scope: !6966)
!7003 = distinct !DISubprogram(name: "rtl9000a_read_status", scope: !3, file: !3, line: 801, type: !5065, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7004)
!7004 = !{!7005, !7006}
!7005 = !DILocalVariable(name: "phydev", arg: 1, scope: !7003, file: !3, line: 801, type: !5067)
!7006 = !DILocalVariable(name: "ret", scope: !7003, file: !3, line: 803, type: !103)
!7007 = !DILocation(line: 801, column: 52, scope: !7003)
!7008 = !DILocation(line: 803, column: 2, scope: !7003)
!7009 = !DILocation(line: 803, column: 6, scope: !7003)
!7010 = !DILocation(line: 805, column: 2, scope: !7003)
!7011 = !DILocation(line: 805, column: 10, scope: !7003)
!7012 = !DILocation(line: 805, column: 27, scope: !7003)
!7013 = !DILocation(line: 806, column: 2, scope: !7003)
!7014 = !DILocation(line: 806, column: 10, scope: !7003)
!7015 = !DILocation(line: 806, column: 29, scope: !7003)
!7016 = !DILocation(line: 808, column: 27, scope: !7003)
!7017 = !DILocation(line: 808, column: 8, scope: !7003)
!7018 = !DILocation(line: 808, column: 6, scope: !7003)
!7019 = !DILocation(line: 809, column: 6, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 809, column: 6)
!7021 = !DILocation(line: 809, column: 6, scope: !7003)
!7022 = !DILocation(line: 810, column: 10, scope: !7020)
!7023 = !DILocation(line: 810, column: 3, scope: !7020)
!7024 = !DILocation(line: 812, column: 17, scope: !7003)
!7025 = !DILocation(line: 812, column: 8, scope: !7003)
!7026 = !DILocation(line: 812, column: 6, scope: !7003)
!7027 = !DILocation(line: 813, column: 6, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 813, column: 6)
!7029 = !DILocation(line: 813, column: 10, scope: !7028)
!7030 = !DILocation(line: 813, column: 6, scope: !7003)
!7031 = !DILocation(line: 814, column: 10, scope: !7028)
!7032 = !DILocation(line: 814, column: 3, scope: !7028)
!7033 = !DILocation(line: 815, column: 6, scope: !7034)
!7034 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 815, column: 6)
!7035 = !DILocation(line: 815, column: 10, scope: !7034)
!7036 = !DILocation(line: 815, column: 6, scope: !7003)
!7037 = !DILocation(line: 816, column: 3, scope: !7034)
!7038 = !DILocation(line: 816, column: 11, scope: !7034)
!7039 = !DILocation(line: 816, column: 28, scope: !7034)
!7040 = !DILocation(line: 818, column: 3, scope: !7034)
!7041 = !DILocation(line: 818, column: 11, scope: !7034)
!7042 = !DILocation(line: 818, column: 28, scope: !7034)
!7043 = !DILocation(line: 820, column: 17, scope: !7003)
!7044 = !DILocation(line: 820, column: 8, scope: !7003)
!7045 = !DILocation(line: 820, column: 6, scope: !7003)
!7046 = !DILocation(line: 821, column: 6, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 821, column: 6)
!7048 = !DILocation(line: 821, column: 10, scope: !7047)
!7049 = !DILocation(line: 821, column: 6, scope: !7003)
!7050 = !DILocation(line: 822, column: 10, scope: !7047)
!7051 = !DILocation(line: 822, column: 3, scope: !7047)
!7052 = !DILocation(line: 823, column: 6, scope: !7053)
!7053 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 823, column: 6)
!7054 = !DILocation(line: 823, column: 10, scope: !7053)
!7055 = !DILocation(line: 823, column: 6, scope: !7003)
!7056 = !DILocation(line: 824, column: 3, scope: !7053)
!7057 = !DILocation(line: 824, column: 11, scope: !7053)
!7058 = !DILocation(line: 824, column: 30, scope: !7053)
!7059 = !DILocation(line: 826, column: 3, scope: !7053)
!7060 = !DILocation(line: 826, column: 11, scope: !7053)
!7061 = !DILocation(line: 826, column: 30, scope: !7053)
!7062 = !DILocation(line: 828, column: 2, scope: !7003)
!7063 = !DILocation(line: 829, column: 1, scope: !7003)
!7064 = distinct !DISubprogram(name: "rtl9000a_config_intr", scope: !3, file: !3, line: 840, type: !5065, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7065)
!7065 = !{!7066, !7067, !7068}
!7066 = !DILocalVariable(name: "phydev", arg: 1, scope: !7064, file: !3, line: 840, type: !5067)
!7067 = !DILocalVariable(name: "val", scope: !7064, file: !3, line: 842, type: !225)
!7068 = !DILocalVariable(name: "err", scope: !7064, file: !3, line: 843, type: !103)
!7069 = !DILocation(line: 840, column: 52, scope: !7064)
!7070 = !DILocation(line: 842, column: 2, scope: !7064)
!7071 = !DILocation(line: 842, column: 6, scope: !7064)
!7072 = !DILocation(line: 843, column: 2, scope: !7064)
!7073 = !DILocation(line: 843, column: 6, scope: !7064)
!7074 = !DILocation(line: 845, column: 6, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !7064, file: !3, line: 845, column: 6)
!7076 = !DILocation(line: 845, column: 14, scope: !7075)
!7077 = !DILocation(line: 845, column: 25, scope: !7075)
!7078 = !DILocation(line: 845, column: 6, scope: !7064)
!7079 = !DILocation(line: 846, column: 32, scope: !7080)
!7080 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 845, column: 51)
!7081 = !DILocation(line: 846, column: 9, scope: !7080)
!7082 = !DILocation(line: 846, column: 7, scope: !7080)
!7083 = !DILocation(line: 847, column: 7, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7080, file: !3, line: 847, column: 7)
!7085 = !DILocation(line: 847, column: 7, scope: !7080)
!7086 = !DILocation(line: 848, column: 11, scope: !7084)
!7087 = !DILocation(line: 848, column: 4, scope: !7084)
!7088 = !DILocation(line: 850, column: 7, scope: !7080)
!7089 = !DILocation(line: 851, column: 25, scope: !7080)
!7090 = !DILocation(line: 851, column: 56, scope: !7080)
!7091 = !DILocation(line: 851, column: 9, scope: !7080)
!7092 = !DILocation(line: 851, column: 7, scope: !7080)
!7093 = !DILocation(line: 852, column: 2, scope: !7080)
!7094 = !DILocation(line: 853, column: 7, scope: !7095)
!7095 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 852, column: 9)
!7096 = !DILocation(line: 854, column: 25, scope: !7095)
!7097 = !DILocation(line: 854, column: 56, scope: !7095)
!7098 = !DILocation(line: 854, column: 9, scope: !7095)
!7099 = !DILocation(line: 854, column: 7, scope: !7095)
!7100 = !DILocation(line: 855, column: 7, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7095, file: !3, line: 855, column: 7)
!7102 = !DILocation(line: 855, column: 7, scope: !7095)
!7103 = !DILocation(line: 856, column: 11, scope: !7101)
!7104 = !DILocation(line: 856, column: 4, scope: !7101)
!7105 = !DILocation(line: 858, column: 32, scope: !7095)
!7106 = !DILocation(line: 858, column: 9, scope: !7095)
!7107 = !DILocation(line: 858, column: 7, scope: !7095)
!7108 = !DILocation(line: 861, column: 25, scope: !7064)
!7109 = !DILocation(line: 861, column: 56, scope: !7064)
!7110 = !DILocation(line: 861, column: 9, scope: !7064)
!7111 = !DILocation(line: 861, column: 2, scope: !7064)
!7112 = !DILocation(line: 862, column: 1, scope: !7064)
!7113 = distinct !DISubprogram(name: "rtl9000a_handle_interrupt", scope: !3, file: !3, line: 864, type: !5589, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7114)
!7114 = !{!7115, !7116}
!7115 = !DILocalVariable(name: "phydev", arg: 1, scope: !7113, file: !3, line: 864, type: !5067)
!7116 = !DILocalVariable(name: "irq_status", scope: !7113, file: !3, line: 866, type: !103)
!7117 = !DILocation(line: 864, column: 65, scope: !7113)
!7118 = !DILocation(line: 866, column: 2, scope: !7113)
!7119 = !DILocation(line: 866, column: 6, scope: !7113)
!7120 = !DILocation(line: 868, column: 24, scope: !7113)
!7121 = !DILocation(line: 868, column: 15, scope: !7113)
!7122 = !DILocation(line: 868, column: 13, scope: !7113)
!7123 = !DILocation(line: 869, column: 6, scope: !7124)
!7124 = distinct !DILexicalBlock(scope: !7113, file: !3, line: 869, column: 6)
!7125 = !DILocation(line: 869, column: 17, scope: !7124)
!7126 = !DILocation(line: 869, column: 6, scope: !7113)
!7127 = !DILocation(line: 870, column: 13, scope: !7128)
!7128 = distinct !DILexicalBlock(scope: !7124, file: !3, line: 869, column: 22)
!7129 = !DILocation(line: 870, column: 3, scope: !7128)
!7130 = !DILocation(line: 871, column: 3, scope: !7128)
!7131 = !DILocation(line: 874, column: 8, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7113, file: !3, line: 874, column: 6)
!7133 = !DILocation(line: 874, column: 19, scope: !7132)
!7134 = !DILocation(line: 874, column: 6, scope: !7113)
!7135 = !DILocation(line: 875, column: 3, scope: !7132)
!7136 = !DILocation(line: 877, column: 22, scope: !7113)
!7137 = !DILocation(line: 877, column: 2, scope: !7113)
!7138 = !DILocation(line: 879, column: 2, scope: !7113)
!7139 = !DILocation(line: 880, column: 1, scope: !7113)
!7140 = distinct !DISubprogram(name: "__phy_read", scope: !148, file: !148, line: 1265, type: !7141, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7143)
!7141 = !DISubroutineType(types: !7142)
!7142 = !{!103, !5067, !407}
!7143 = !{!7144, !7145}
!7144 = !DILocalVariable(name: "phydev", arg: 1, scope: !7140, file: !148, line: 1265, type: !5067)
!7145 = !DILocalVariable(name: "regnum", arg: 2, scope: !7140, file: !148, line: 1265, type: !407)
!7146 = !DILocation(line: 1265, column: 49, scope: !7140)
!7147 = !DILocation(line: 1265, column: 61, scope: !7140)
!7148 = !DILocation(line: 1267, column: 24, scope: !7140)
!7149 = !DILocation(line: 1267, column: 32, scope: !7140)
!7150 = !DILocation(line: 1267, column: 37, scope: !7140)
!7151 = !DILocation(line: 1267, column: 42, scope: !7140)
!7152 = !DILocation(line: 1267, column: 50, scope: !7140)
!7153 = !DILocation(line: 1267, column: 55, scope: !7140)
!7154 = !DILocation(line: 1267, column: 61, scope: !7140)
!7155 = !DILocation(line: 1267, column: 9, scope: !7140)
!7156 = !DILocation(line: 1267, column: 2, scope: !7140)
!7157 = !DISubprogram(name: "__mdiobus_read", scope: !4731, file: !4731, line: 538, type: !7158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7158 = !DISubroutineType(types: !7159)
!7159 = !{!103, !4197, !103, !407}
!7160 = distinct !DISubprogram(name: "__phy_write", scope: !148, file: !148, line: 1293, type: !7161, scopeLine: 1294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7163)
!7161 = !DISubroutineType(types: !7162)
!7162 = !{!103, !5067, !407, !225}
!7163 = !{!7164, !7165, !7166}
!7164 = !DILocalVariable(name: "phydev", arg: 1, scope: !7160, file: !148, line: 1293, type: !5067)
!7165 = !DILocalVariable(name: "regnum", arg: 2, scope: !7160, file: !148, line: 1293, type: !407)
!7166 = !DILocalVariable(name: "val", arg: 3, scope: !7160, file: !148, line: 1293, type: !225)
!7167 = !DILocation(line: 1293, column: 50, scope: !7160)
!7168 = !DILocation(line: 1293, column: 62, scope: !7160)
!7169 = !DILocation(line: 1293, column: 74, scope: !7160)
!7170 = !DILocation(line: 1295, column: 25, scope: !7160)
!7171 = !DILocation(line: 1295, column: 33, scope: !7160)
!7172 = !DILocation(line: 1295, column: 38, scope: !7160)
!7173 = !DILocation(line: 1295, column: 43, scope: !7160)
!7174 = !DILocation(line: 1295, column: 51, scope: !7160)
!7175 = !DILocation(line: 1295, column: 56, scope: !7160)
!7176 = !DILocation(line: 1295, column: 62, scope: !7160)
!7177 = !DILocation(line: 1296, column: 11, scope: !7160)
!7178 = !DILocation(line: 1295, column: 9, scope: !7160)
!7179 = !DILocation(line: 1295, column: 2, scope: !7160)
!7180 = !DISubprogram(name: "__mdiobus_write", scope: !4731, file: !4731, line: 539, type: !7181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7181 = !DISubroutineType(types: !7182)
!7182 = !{!103, !4197, !103, !407, !225}
!7183 = distinct !DISubprogram(name: "rtl8201_ack_interrupt", scope: !3, file: !3, line: 137, type: !5065, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7184)
!7184 = !{!7185, !7186}
!7185 = !DILocalVariable(name: "phydev", arg: 1, scope: !7183, file: !3, line: 137, type: !5067)
!7186 = !DILocalVariable(name: "err", scope: !7183, file: !3, line: 139, type: !103)
!7187 = !DILocation(line: 137, column: 53, scope: !7183)
!7188 = !DILocation(line: 139, column: 2, scope: !7183)
!7189 = !DILocation(line: 139, column: 6, scope: !7183)
!7190 = !DILocation(line: 141, column: 17, scope: !7183)
!7191 = !DILocation(line: 141, column: 8, scope: !7183)
!7192 = !DILocation(line: 141, column: 6, scope: !7183)
!7193 = !DILocation(line: 143, column: 10, scope: !7183)
!7194 = !DILocation(line: 143, column: 14, scope: !7183)
!7195 = !DILocation(line: 143, column: 9, scope: !7183)
!7196 = !DILocation(line: 143, column: 21, scope: !7183)
!7197 = !DILocation(line: 144, column: 1, scope: !7183)
!7198 = !DILocation(line: 143, column: 2, scope: !7183)
!7199 = !DISubprogram(name: "phy_write_paged", scope: !148, file: !148, line: 1653, type: !7200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7200 = !DISubroutineType(types: !7201)
!7201 = !{!103, !5067, !103, !407, !225}
!7202 = distinct !DISubprogram(name: "phy_read", scope: !148, file: !148, line: 1239, type: !7141, scopeLine: 1240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7203)
!7203 = !{!7204, !7205}
!7204 = !DILocalVariable(name: "phydev", arg: 1, scope: !7202, file: !148, line: 1239, type: !5067)
!7205 = !DILocalVariable(name: "regnum", arg: 2, scope: !7202, file: !148, line: 1239, type: !407)
!7206 = !DILocation(line: 1239, column: 47, scope: !7202)
!7207 = !DILocation(line: 1239, column: 59, scope: !7202)
!7208 = !DILocation(line: 1241, column: 22, scope: !7202)
!7209 = !DILocation(line: 1241, column: 30, scope: !7202)
!7210 = !DILocation(line: 1241, column: 35, scope: !7202)
!7211 = !DILocation(line: 1241, column: 40, scope: !7202)
!7212 = !DILocation(line: 1241, column: 48, scope: !7202)
!7213 = !DILocation(line: 1241, column: 53, scope: !7202)
!7214 = !DILocation(line: 1241, column: 59, scope: !7202)
!7215 = !DILocation(line: 1241, column: 9, scope: !7202)
!7216 = !DILocation(line: 1241, column: 2, scope: !7202)
!7217 = !DISubprogram(name: "mdiobus_read", scope: !4731, file: !4731, line: 545, type: !7158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7218 = !DISubprogram(name: "phy_error", scope: !148, file: !148, line: 1911, type: !5594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7219 = !DISubprogram(name: "phy_trigger_machine", scope: !148, file: !148, line: 1914, type: !5594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7220 = distinct !DISubprogram(name: "genphy_config_aneg", scope: !148, file: !148, line: 1832, type: !5065, scopeLine: 1833, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7221)
!7221 = !{!7222}
!7222 = !DILocalVariable(name: "phydev", arg: 1, scope: !7220, file: !148, line: 1832, type: !5067)
!7223 = !DILocation(line: 1832, column: 57, scope: !7220)
!7224 = !DILocation(line: 1834, column: 30, scope: !7220)
!7225 = !DILocation(line: 1834, column: 9, scope: !7220)
!7226 = !DILocation(line: 1834, column: 2, scope: !7220)
!7227 = distinct !DISubprogram(name: "phy_write", scope: !148, file: !148, line: 1280, type: !7161, scopeLine: 1281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7228)
!7228 = !{!7229, !7230, !7231}
!7229 = !DILocalVariable(name: "phydev", arg: 1, scope: !7227, file: !148, line: 1280, type: !5067)
!7230 = !DILocalVariable(name: "regnum", arg: 2, scope: !7227, file: !148, line: 1280, type: !407)
!7231 = !DILocalVariable(name: "val", arg: 3, scope: !7227, file: !148, line: 1280, type: !225)
!7232 = !DILocation(line: 1280, column: 48, scope: !7227)
!7233 = !DILocation(line: 1280, column: 60, scope: !7227)
!7234 = !DILocation(line: 1280, column: 72, scope: !7227)
!7235 = !DILocation(line: 1282, column: 23, scope: !7227)
!7236 = !DILocation(line: 1282, column: 31, scope: !7227)
!7237 = !DILocation(line: 1282, column: 36, scope: !7227)
!7238 = !DILocation(line: 1282, column: 41, scope: !7227)
!7239 = !DILocation(line: 1282, column: 49, scope: !7227)
!7240 = !DILocation(line: 1282, column: 54, scope: !7227)
!7241 = !DILocation(line: 1282, column: 60, scope: !7227)
!7242 = !DILocation(line: 1282, column: 68, scope: !7227)
!7243 = !DILocation(line: 1282, column: 9, scope: !7227)
!7244 = !DILocation(line: 1282, column: 2, scope: !7227)
!7245 = !DISubprogram(name: "__genphy_config_aneg", scope: !148, file: !148, line: 1819, type: !5705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7246 = !DISubprogram(name: "mdiobus_write", scope: !4731, file: !4731, line: 547, type: !7181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7247 = distinct !DISubprogram(name: "rtl821x_ack_interrupt", scope: !3, file: !3, line: 146, type: !5065, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7248)
!7248 = !{!7249, !7250}
!7249 = !DILocalVariable(name: "phydev", arg: 1, scope: !7247, file: !3, line: 146, type: !5067)
!7250 = !DILocalVariable(name: "err", scope: !7247, file: !3, line: 148, type: !103)
!7251 = !DILocation(line: 146, column: 53, scope: !7247)
!7252 = !DILocation(line: 148, column: 2, scope: !7247)
!7253 = !DILocation(line: 148, column: 6, scope: !7247)
!7254 = !DILocation(line: 150, column: 17, scope: !7247)
!7255 = !DILocation(line: 150, column: 8, scope: !7247)
!7256 = !DILocation(line: 150, column: 6, scope: !7247)
!7257 = !DILocation(line: 152, column: 10, scope: !7247)
!7258 = !DILocation(line: 152, column: 14, scope: !7247)
!7259 = !DILocation(line: 152, column: 9, scope: !7247)
!7260 = !DILocation(line: 152, column: 21, scope: !7247)
!7261 = !DILocation(line: 153, column: 1, scope: !7247)
!7262 = !DILocation(line: 152, column: 2, scope: !7247)
!7263 = distinct !DISubprogram(name: "phy_set_bits", scope: !148, file: !148, line: 1424, type: !7161, scopeLine: 1425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7264 = !{!7265, !7266, !7267}
!7265 = !DILocalVariable(name: "phydev", arg: 1, scope: !7263, file: !148, line: 1424, type: !5067)
!7266 = !DILocalVariable(name: "regnum", arg: 2, scope: !7263, file: !148, line: 1424, type: !407)
!7267 = !DILocalVariable(name: "val", arg: 3, scope: !7263, file: !148, line: 1424, type: !225)
!7268 = !DILocation(line: 1424, column: 51, scope: !7263)
!7269 = !DILocation(line: 1424, column: 63, scope: !7263)
!7270 = !DILocation(line: 1424, column: 75, scope: !7263)
!7271 = !DILocation(line: 1426, column: 20, scope: !7263)
!7272 = !DILocation(line: 1426, column: 28, scope: !7263)
!7273 = !DILocation(line: 1426, column: 39, scope: !7263)
!7274 = !DILocation(line: 1426, column: 9, scope: !7263)
!7275 = !DILocation(line: 1426, column: 2, scope: !7263)
!7276 = !DISubprogram(name: "phy_modify", scope: !148, file: !148, line: 1380, type: !7277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7277 = !DISubroutineType(types: !7278)
!7278 = !{!103, !5067, !407, !225, !225}
!7279 = !DISubprogram(name: "phy_select_page", scope: !148, file: !148, line: 1650, type: !5625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7280 = !DISubprogram(name: "__phy_modify", scope: !148, file: !148, line: 1379, type: !7277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7281 = !DISubprogram(name: "phy_restore_page", scope: !148, file: !148, line: 1651, type: !7282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7282 = !DISubroutineType(types: !7283)
!7283 = !{!103, !5067, !103, !103}
!7284 = !DISubprogram(name: "phy_modify_paged_changed", scope: !148, file: !148, line: 1654, type: !7285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7285 = !DISubroutineType(types: !7286)
!7286 = !{!103, !5067, !103, !407, !225, !225}
!7287 = !DISubprogram(name: "_dev_err", scope: !7288, file: !7288, line: 50, type: !7289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7288 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!7289 = !DISubroutineType(types: !7290)
!7290 = !{null, !4261, !176, null}
!7291 = distinct !DISubprogram(name: "ERR_PTR", scope: !7292, file: !7292, line: 39, type: !7293, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7295)
!7292 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!7293 = !DISubroutineType(types: !7294)
!7294 = !{!329, !293}
!7295 = !{!7296}
!7296 = !DILocalVariable(name: "error", arg: 1, scope: !7291, file: !7292, line: 39, type: !293)
!7297 = !DILocation(line: 39, column: 48, scope: !7291)
!7298 = !DILocation(line: 41, column: 18, scope: !7291)
!7299 = !DILocation(line: 41, column: 9, scope: !7291)
!7300 = !DILocation(line: 41, column: 2, scope: !7291)
!7301 = !DISubprogram(name: "phy_modify_paged", scope: !148, file: !148, line: 1656, type: !7285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7302 = !DISubprogram(name: "genphy_soft_reset", scope: !148, file: !148, line: 1829, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7303 = distinct !DISubprogram(name: "devm_kzalloc", scope: !88, file: !88, line: 312, type: !7304, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7306)
!7304 = !DISubroutineType(types: !7305)
!7305 = !{!329, !4241, !304, !703}
!7306 = !{!7307, !7308, !7309}
!7307 = !DILocalVariable(name: "dev", arg: 1, scope: !7303, file: !88, line: 312, type: !4241)
!7308 = !DILocalVariable(name: "size", arg: 2, scope: !7303, file: !88, line: 312, type: !304)
!7309 = !DILocalVariable(name: "gfp", arg: 3, scope: !7303, file: !88, line: 312, type: !703)
!7310 = !DILocation(line: 312, column: 49, scope: !7303)
!7311 = !DILocation(line: 312, column: 61, scope: !7303)
!7312 = !DILocation(line: 312, column: 73, scope: !7303)
!7313 = !DILocation(line: 314, column: 22, scope: !7303)
!7314 = !DILocation(line: 314, column: 27, scope: !7303)
!7315 = !DILocation(line: 314, column: 33, scope: !7303)
!7316 = !DILocation(line: 314, column: 37, scope: !7303)
!7317 = !DILocation(line: 314, column: 9, scope: !7303)
!7318 = !DILocation(line: 314, column: 2, scope: !7303)
!7319 = distinct !DISubprogram(name: "devm_clk_get_optional_enabled", scope: !6159, file: !6159, line: 946, type: !7320, scopeLine: 948, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7322)
!7320 = !DISubroutineType(types: !7321)
!7321 = !{!6157, !4241, !176}
!7322 = !{!7323, !7324}
!7323 = !DILocalVariable(name: "dev", arg: 1, scope: !7319, file: !6159, line: 946, type: !4241)
!7324 = !DILocalVariable(name: "id", arg: 2, scope: !7319, file: !6159, line: 947, type: !176)
!7325 = !DILocation(line: 946, column: 72, scope: !7319)
!7326 = !DILocation(line: 947, column: 20, scope: !7319)
!7327 = !DILocation(line: 949, column: 2, scope: !7319)
!7328 = distinct !DISubprogram(name: "IS_ERR", scope: !7292, file: !7292, line: 59, type: !7329, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7331)
!7329 = !DISubroutineType(types: !7330)
!7330 = !{!1458, !2187}
!7331 = !{!7332}
!7332 = !DILocalVariable(name: "ptr", arg: 1, scope: !7328, file: !7292, line: 59, type: !2187)
!7333 = !DILocation(line: 59, column: 60, scope: !7328)
!7334 = !DILocation(line: 61, column: 9, scope: !7328)
!7335 = !DILocation(line: 61, column: 2, scope: !7328)
!7336 = !DISubprogram(name: "dev_err_probe", scope: !7288, file: !7288, line: 278, type: !7337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7337 = !DISubroutineType(types: !7338)
!7338 = !{!103, !4261, !103, !176, null}
!7339 = distinct !DISubprogram(name: "PTR_ERR", scope: !7292, file: !7292, line: 49, type: !7340, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7342)
!7340 = !DISubroutineType(types: !7341)
!7341 = !{!293, !2187}
!7342 = !{!7343}
!7343 = !DILocalVariable(name: "ptr", arg: 1, scope: !7339, file: !7292, line: 49, type: !2187)
!7344 = !DILocation(line: 49, column: 61, scope: !7339)
!7345 = !DILocation(line: 51, column: 16, scope: !7339)
!7346 = !DILocation(line: 51, column: 9, scope: !7339)
!7347 = !DILocation(line: 51, column: 2, scope: !7339)
!7348 = !DISubprogram(name: "phy_read_paged", scope: !148, file: !148, line: 1652, type: !7349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7349 = !DISubroutineType(types: !7350)
!7350 = !{!103, !5067, !103, !407}
!7351 = distinct !DISubprogram(name: "of_property_read_bool", scope: !4543, file: !4543, line: 1220, type: !7352, scopeLine: 1222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7356)
!7352 = !DISubroutineType(types: !7353)
!7353 = !{!1458, !7354, !176}
!7354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7355, size: 64)
!7355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4542)
!7356 = !{!7357, !7358, !7359}
!7357 = !DILocalVariable(name: "np", arg: 1, scope: !7351, file: !4543, line: 1220, type: !7354)
!7358 = !DILocalVariable(name: "propname", arg: 2, scope: !7351, file: !4543, line: 1221, type: !176)
!7359 = !DILocalVariable(name: "prop", scope: !7351, file: !4543, line: 1223, type: !4653)
!7360 = !DILocation(line: 1220, column: 68, scope: !7351)
!7361 = !DILocation(line: 1221, column: 19, scope: !7351)
!7362 = !DILocation(line: 1223, column: 2, scope: !7351)
!7363 = !DILocation(line: 1223, column: 19, scope: !7351)
!7364 = !DILocation(line: 1223, column: 43, scope: !7351)
!7365 = !DILocation(line: 1223, column: 47, scope: !7351)
!7366 = !DILocation(line: 1223, column: 26, scope: !7351)
!7367 = !DILocation(line: 1225, column: 9, scope: !7351)
!7368 = !DILocation(line: 1226, column: 1, scope: !7351)
!7369 = !DILocation(line: 1225, column: 2, scope: !7351)
!7370 = !DISubprogram(name: "devm_kmalloc", scope: !88, file: !88, line: 305, type: !7304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7371 = distinct !DISubprogram(name: "of_find_property", scope: !4543, file: !4543, line: 592, type: !7372, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7374)
!7372 = !DISubroutineType(types: !7373)
!7373 = !{!4653, !7354, !176, !605}
!7374 = !{!7375, !7376, !7377}
!7375 = !DILocalVariable(name: "np", arg: 1, scope: !7371, file: !4543, line: 592, type: !7354)
!7376 = !DILocalVariable(name: "name", arg: 2, scope: !7371, file: !4543, line: 593, type: !176)
!7377 = !DILocalVariable(name: "lenp", arg: 3, scope: !7371, file: !4543, line: 594, type: !605)
!7378 = !DILocation(line: 592, column: 75, scope: !7371)
!7379 = !DILocation(line: 593, column: 19, scope: !7371)
!7380 = !DILocation(line: 594, column: 12, scope: !7371)
!7381 = !DILocation(line: 596, column: 2, scope: !7371)
!7382 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !6159, file: !6159, line: 1083, type: !7383, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7385)
!7383 = !DISubroutineType(types: !7384)
!7384 = !{null, !6157}
!7385 = !{!7386}
!7386 = !DILocalVariable(name: "clk", arg: 1, scope: !7382, file: !6159, line: 1083, type: !6157)
!7387 = !DILocation(line: 1083, column: 54, scope: !7382)
!7388 = !DILocation(line: 1085, column: 14, scope: !7382)
!7389 = !DILocation(line: 1085, column: 2, scope: !7382)
!7390 = !DILocation(line: 1086, column: 16, scope: !7382)
!7391 = !DILocation(line: 1086, column: 2, scope: !7382)
!7392 = !DILocation(line: 1087, column: 1, scope: !7382)
!7393 = distinct !DISubprogram(name: "clk_disable", scope: !6159, file: !6159, line: 996, type: !7383, scopeLine: 996, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7394)
!7394 = !{!7395}
!7395 = !DILocalVariable(name: "clk", arg: 1, scope: !7393, file: !6159, line: 996, type: !6157)
!7396 = !DILocation(line: 996, column: 44, scope: !7393)
!7397 = !DILocation(line: 996, column: 50, scope: !7393)
!7398 = distinct !DISubprogram(name: "clk_unprepare", scope: !6159, file: !6159, line: 343, type: !7383, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7399)
!7399 = !{!7400}
!7400 = !DILocalVariable(name: "clk", arg: 1, scope: !7398, file: !6159, line: 343, type: !6157)
!7401 = !DILocation(line: 343, column: 46, scope: !7398)
!7402 = !DILocation(line: 345, column: 2, scope: !7398)
!7403 = !DILocation(line: 345, column: 2, scope: !7404)
!7404 = distinct !DILexicalBlock(scope: !7398, file: !6159, line: 345, column: 2)
!7405 = !DILocation(line: 346, column: 1, scope: !7398)
!7406 = !DILocation(line: 112, column: 2, scope: !7407)
!7407 = distinct !DILexicalBlock(scope: !5782, file: !5783, line: 112, column: 2)
!7408 = !DILocation(line: 112, column: 2, scope: !5782)
!7409 = !DILocation(line: 113, column: 1, scope: !5782)
!7410 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !6159, file: !6159, line: 1068, type: !7411, scopeLine: 1069, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7413)
!7411 = !DISubroutineType(types: !7412)
!7412 = !{!103, !6157}
!7413 = !{!7414, !7415}
!7414 = !DILocalVariable(name: "clk", arg: 1, scope: !7410, file: !6159, line: 1068, type: !6157)
!7415 = !DILocalVariable(name: "ret", scope: !7410, file: !6159, line: 1070, type: !103)
!7416 = !DILocation(line: 1068, column: 50, scope: !7410)
!7417 = !DILocation(line: 1070, column: 2, scope: !7410)
!7418 = !DILocation(line: 1070, column: 6, scope: !7410)
!7419 = !DILocation(line: 1072, column: 20, scope: !7410)
!7420 = !DILocation(line: 1072, column: 8, scope: !7410)
!7421 = !DILocation(line: 1072, column: 6, scope: !7410)
!7422 = !DILocation(line: 1073, column: 6, scope: !7423)
!7423 = distinct !DILexicalBlock(scope: !7410, file: !6159, line: 1073, column: 6)
!7424 = !DILocation(line: 1073, column: 6, scope: !7410)
!7425 = !DILocation(line: 1074, column: 10, scope: !7423)
!7426 = !DILocation(line: 1074, column: 3, scope: !7423)
!7427 = !DILocation(line: 1075, column: 19, scope: !7410)
!7428 = !DILocation(line: 1075, column: 8, scope: !7410)
!7429 = !DILocation(line: 1075, column: 6, scope: !7410)
!7430 = !DILocation(line: 1076, column: 6, scope: !7431)
!7431 = distinct !DILexicalBlock(scope: !7410, file: !6159, line: 1076, column: 6)
!7432 = !DILocation(line: 1076, column: 6, scope: !7410)
!7433 = !DILocation(line: 1077, column: 17, scope: !7431)
!7434 = !DILocation(line: 1077, column: 3, scope: !7431)
!7435 = !DILocation(line: 1079, column: 9, scope: !7410)
!7436 = !DILocation(line: 1079, column: 2, scope: !7410)
!7437 = !DILocation(line: 1080, column: 1, scope: !7410)
!7438 = !DISubprogram(name: "msleep", scope: !7439, file: !7439, line: 61, type: !7440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7439 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!7440 = !DISubroutineType(types: !7441)
!7441 = !{null, !7}
!7442 = distinct !DISubprogram(name: "clk_prepare", scope: !6159, file: !6159, line: 311, type: !7411, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7443)
!7443 = !{!7444}
!7444 = !DILocalVariable(name: "clk", arg: 1, scope: !7442, file: !6159, line: 311, type: !6157)
!7445 = !DILocation(line: 311, column: 43, scope: !7442)
!7446 = !DILocation(line: 313, column: 2, scope: !7442)
!7447 = !DILocation(line: 313, column: 2, scope: !7448)
!7448 = distinct !DILexicalBlock(scope: !7442, file: !6159, line: 313, column: 2)
!7449 = !DILocation(line: 314, column: 2, scope: !7442)
!7450 = distinct !DISubprogram(name: "clk_enable", scope: !6159, file: !6159, line: 985, type: !7411, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7451)
!7451 = !{!7452}
!7452 = !DILocalVariable(name: "clk", arg: 1, scope: !7450, file: !6159, line: 985, type: !6157)
!7453 = !DILocation(line: 985, column: 42, scope: !7450)
!7454 = !DILocation(line: 987, column: 2, scope: !7450)
!7455 = !DISubprogram(name: "genphy_read_status", scope: !148, file: !148, line: 1824, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7456 = distinct !DISubprogram(name: "rtlgen_get_speed", scope: !3, file: !3, line: 542, type: !5065, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7457)
!7457 = !{!7458, !7459}
!7458 = !DILocalVariable(name: "phydev", arg: 1, scope: !7456, file: !3, line: 542, type: !5067)
!7459 = !DILocalVariable(name: "val", scope: !7456, file: !3, line: 544, type: !103)
!7460 = !DILocation(line: 542, column: 48, scope: !7456)
!7461 = !DILocation(line: 544, column: 2, scope: !7456)
!7462 = !DILocation(line: 544, column: 6, scope: !7456)
!7463 = !DILocation(line: 546, column: 7, scope: !7464)
!7464 = distinct !DILexicalBlock(scope: !7456, file: !3, line: 546, column: 6)
!7465 = !DILocation(line: 546, column: 15, scope: !7464)
!7466 = !DILocation(line: 546, column: 6, scope: !7456)
!7467 = !DILocation(line: 547, column: 3, scope: !7464)
!7468 = !DILocation(line: 549, column: 23, scope: !7456)
!7469 = !DILocation(line: 549, column: 8, scope: !7456)
!7470 = !DILocation(line: 549, column: 6, scope: !7456)
!7471 = !DILocation(line: 550, column: 6, scope: !7472)
!7472 = distinct !DILexicalBlock(scope: !7456, file: !3, line: 550, column: 6)
!7473 = !DILocation(line: 550, column: 10, scope: !7472)
!7474 = !DILocation(line: 550, column: 6, scope: !7456)
!7475 = !DILocation(line: 551, column: 10, scope: !7472)
!7476 = !DILocation(line: 551, column: 3, scope: !7472)
!7477 = !DILocation(line: 553, column: 10, scope: !7456)
!7478 = !DILocation(line: 553, column: 14, scope: !7456)
!7479 = !DILocation(line: 553, column: 2, scope: !7456)
!7480 = !DILocation(line: 555, column: 3, scope: !7481)
!7481 = distinct !DILexicalBlock(scope: !7456, file: !3, line: 553, column: 35)
!7482 = !DILocation(line: 555, column: 11, scope: !7481)
!7483 = !DILocation(line: 555, column: 17, scope: !7481)
!7484 = !DILocation(line: 556, column: 3, scope: !7481)
!7485 = !DILocation(line: 558, column: 3, scope: !7481)
!7486 = !DILocation(line: 558, column: 11, scope: !7481)
!7487 = !DILocation(line: 558, column: 17, scope: !7481)
!7488 = !DILocation(line: 559, column: 3, scope: !7481)
!7489 = !DILocation(line: 561, column: 3, scope: !7481)
!7490 = !DILocation(line: 561, column: 11, scope: !7481)
!7491 = !DILocation(line: 561, column: 17, scope: !7481)
!7492 = !DILocation(line: 562, column: 3, scope: !7481)
!7493 = !DILocation(line: 564, column: 3, scope: !7481)
!7494 = !DILocation(line: 564, column: 11, scope: !7481)
!7495 = !DILocation(line: 564, column: 17, scope: !7481)
!7496 = !DILocation(line: 565, column: 3, scope: !7481)
!7497 = !DILocation(line: 567, column: 3, scope: !7481)
!7498 = !DILocation(line: 567, column: 11, scope: !7481)
!7499 = !DILocation(line: 567, column: 17, scope: !7481)
!7500 = !DILocation(line: 568, column: 3, scope: !7481)
!7501 = !DILocation(line: 570, column: 3, scope: !7481)
!7502 = !DILocation(line: 570, column: 11, scope: !7481)
!7503 = !DILocation(line: 570, column: 17, scope: !7481)
!7504 = !DILocation(line: 571, column: 3, scope: !7481)
!7505 = !DILocation(line: 573, column: 3, scope: !7481)
!7506 = !DILocation(line: 576, column: 2, scope: !7456)
!7507 = !DILocation(line: 577, column: 1, scope: !7456)
!7508 = distinct !DISubprogram(name: "rtl8211f_ack_interrupt", scope: !3, file: !3, line: 155, type: !5065, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7509)
!7509 = !{!7510, !7511}
!7510 = !DILocalVariable(name: "phydev", arg: 1, scope: !7508, file: !3, line: 155, type: !5067)
!7511 = !DILocalVariable(name: "err", scope: !7508, file: !3, line: 157, type: !103)
!7512 = !DILocation(line: 155, column: 54, scope: !7508)
!7513 = !DILocation(line: 157, column: 2, scope: !7508)
!7514 = !DILocation(line: 157, column: 6, scope: !7508)
!7515 = !DILocation(line: 159, column: 23, scope: !7508)
!7516 = !DILocation(line: 159, column: 8, scope: !7508)
!7517 = !DILocation(line: 159, column: 6, scope: !7508)
!7518 = !DILocation(line: 161, column: 10, scope: !7508)
!7519 = !DILocation(line: 161, column: 14, scope: !7508)
!7520 = !DILocation(line: 161, column: 9, scope: !7508)
!7521 = !DILocation(line: 161, column: 21, scope: !7508)
!7522 = !DILocation(line: 162, column: 1, scope: !7508)
!7523 = !DILocation(line: 161, column: 2, scope: !7508)
!7524 = distinct !DISubprogram(name: "rtlgen_supports_2_5gbps", scope: !3, file: !3, line: 733, type: !7525, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7527)
!7525 = !DISubroutineType(types: !7526)
!7526 = !{!1458, !5067}
!7527 = !{!7528, !7529}
!7528 = !DILocalVariable(name: "phydev", arg: 1, scope: !7524, file: !3, line: 733, type: !5067)
!7529 = !DILocalVariable(name: "val", scope: !7524, file: !3, line: 735, type: !103)
!7530 = !DILocation(line: 733, column: 56, scope: !7524)
!7531 = !DILocation(line: 735, column: 2, scope: !7524)
!7532 = !DILocation(line: 735, column: 6, scope: !7524)
!7533 = !DILocation(line: 737, column: 12, scope: !7524)
!7534 = !DILocation(line: 737, column: 2, scope: !7524)
!7535 = !DILocation(line: 738, column: 17, scope: !7524)
!7536 = !DILocation(line: 738, column: 8, scope: !7524)
!7537 = !DILocation(line: 738, column: 6, scope: !7524)
!7538 = !DILocation(line: 739, column: 12, scope: !7524)
!7539 = !DILocation(line: 739, column: 2, scope: !7524)
!7540 = !DILocation(line: 741, column: 9, scope: !7524)
!7541 = !DILocation(line: 741, column: 13, scope: !7524)
!7542 = !DILocation(line: 741, column: 18, scope: !7524)
!7543 = !DILocation(line: 741, column: 21, scope: !7524)
!7544 = !DILocation(line: 741, column: 25, scope: !7524)
!7545 = !DILocation(line: 0, scope: !7524)
!7546 = !DILocation(line: 742, column: 1, scope: !7524)
!7547 = !DILocation(line: 741, column: 2, scope: !7524)
!7548 = distinct !DISubprogram(name: "linkmode_mod_bit", scope: !7549, file: !7549, line: 60, type: !7550, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7554)
!7549 = !DIFile(filename: "./include/linux/linkmode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0ada951065a714be86835f4eaa41ef3")
!7550 = !DISubroutineType(types: !7551)
!7551 = !{null, !103, !7552, !103}
!7552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7553, size: 64)
!7553 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !307)
!7554 = !{!7555, !7556, !7557}
!7555 = !DILocalVariable(name: "nr", arg: 1, scope: !7548, file: !7549, line: 60, type: !103)
!7556 = !DILocalVariable(name: "addr", arg: 2, scope: !7548, file: !7549, line: 60, type: !7552)
!7557 = !DILocalVariable(name: "set", arg: 3, scope: !7548, file: !7549, line: 61, type: !103)
!7558 = !DILocation(line: 60, column: 41, scope: !7548)
!7559 = !DILocation(line: 60, column: 69, scope: !7548)
!7560 = !DILocation(line: 61, column: 13, scope: !7548)
!7561 = !DILocation(line: 63, column: 6, scope: !7562)
!7562 = distinct !DILexicalBlock(scope: !7548, file: !7549, line: 63, column: 6)
!7563 = !DILocation(line: 63, column: 6, scope: !7548)
!7564 = !DILocation(line: 64, column: 20, scope: !7562)
!7565 = !DILocation(line: 64, column: 24, scope: !7562)
!7566 = !DILocation(line: 64, column: 3, scope: !7562)
!7567 = !DILocation(line: 66, column: 22, scope: !7562)
!7568 = !DILocation(line: 66, column: 26, scope: !7562)
!7569 = !DILocation(line: 66, column: 3, scope: !7562)
!7570 = !DILocation(line: 67, column: 1, scope: !7548)
!7571 = !DISubprogram(name: "genphy_read_abilities", scope: !148, file: !148, line: 1814, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7572 = distinct !DISubprogram(name: "linkmode_set_bit", scope: !7549, file: !7549, line: 41, type: !7573, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7575)
!7573 = !DISubroutineType(types: !7574)
!7574 = !{null, !103, !7552}
!7575 = !{!7576, !7577}
!7576 = !DILocalVariable(name: "nr", arg: 1, scope: !7572, file: !7549, line: 41, type: !103)
!7577 = !DILocalVariable(name: "addr", arg: 2, scope: !7572, file: !7549, line: 41, type: !7552)
!7578 = !DILocation(line: 41, column: 41, scope: !7572)
!7579 = !DILocation(line: 41, column: 69, scope: !7572)
!7580 = !DILocation(line: 43, column: 2, scope: !7572)
!7581 = !DILocation(line: 44, column: 1, scope: !7572)
!7582 = distinct !DISubprogram(name: "linkmode_clear_bit", scope: !7549, file: !7549, line: 55, type: !7573, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7583)
!7583 = !{!7584, !7585}
!7584 = !DILocalVariable(name: "nr", arg: 1, scope: !7582, file: !7549, line: 55, type: !103)
!7585 = !DILocalVariable(name: "addr", arg: 2, scope: !7582, file: !7549, line: 55, type: !7552)
!7586 = !DILocation(line: 55, column: 43, scope: !7582)
!7587 = !DILocation(line: 55, column: 71, scope: !7582)
!7588 = !DILocation(line: 57, column: 2, scope: !7582)
!7589 = !DILocation(line: 58, column: 1, scope: !7582)
!7590 = distinct !DISubprogram(name: "generic___set_bit", scope: !7591, file: !7591, line: 28, type: !7592, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7594)
!7591 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!7592 = !DISubroutineType(types: !7593)
!7593 = !{null, !307, !7552}
!7594 = !{!7595, !7596, !7597, !7598}
!7595 = !DILocalVariable(name: "nr", arg: 1, scope: !7590, file: !7591, line: 28, type: !307)
!7596 = !DILocalVariable(name: "addr", arg: 2, scope: !7590, file: !7591, line: 28, type: !7552)
!7597 = !DILocalVariable(name: "mask", scope: !7590, file: !7591, line: 30, type: !307)
!7598 = !DILocalVariable(name: "p", scope: !7590, file: !7591, line: 31, type: !4172)
!7599 = !DILocation(line: 28, column: 33, scope: !7590)
!7600 = !DILocation(line: 28, column: 61, scope: !7590)
!7601 = !DILocation(line: 30, column: 2, scope: !7590)
!7602 = !DILocation(line: 30, column: 16, scope: !7590)
!7603 = !DILocation(line: 30, column: 23, scope: !7590)
!7604 = !DILocation(line: 31, column: 2, scope: !7590)
!7605 = !DILocation(line: 31, column: 17, scope: !7590)
!7606 = !DILocation(line: 31, column: 39, scope: !7590)
!7607 = !DILocation(line: 31, column: 47, scope: !7590)
!7608 = !DILocation(line: 31, column: 45, scope: !7590)
!7609 = !DILocation(line: 33, column: 9, scope: !7590)
!7610 = !DILocation(line: 33, column: 3, scope: !7590)
!7611 = !DILocation(line: 33, column: 6, scope: !7590)
!7612 = !DILocation(line: 34, column: 1, scope: !7590)
!7613 = distinct !DISubprogram(name: "___set_bit", scope: !7614, file: !7614, line: 26, type: !7592, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7615)
!7614 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7615 = !{!7616, !7617}
!7616 = !DILocalVariable(name: "nr", arg: 1, scope: !7613, file: !7614, line: 26, type: !307)
!7617 = !DILocalVariable(name: "addr", arg: 2, scope: !7613, file: !7614, line: 26, type: !7552)
!7618 = !DILocation(line: 26, column: 26, scope: !7613)
!7619 = !DILocation(line: 26, column: 54, scope: !7613)
!7620 = !DILocation(line: 28, column: 19, scope: !7613)
!7621 = !DILocation(line: 28, column: 26, scope: !7613)
!7622 = !DILocation(line: 28, column: 24, scope: !7613)
!7623 = !DILocation(line: 28, column: 2, scope: !7613)
!7624 = !DILocation(line: 29, column: 17, scope: !7613)
!7625 = !DILocation(line: 29, column: 21, scope: !7613)
!7626 = !DILocation(line: 29, column: 2, scope: !7613)
!7627 = !DILocation(line: 30, column: 1, scope: !7613)
!7628 = distinct !DISubprogram(name: "instrument_write", scope: !7629, file: !7629, line: 38, type: !7630, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7635)
!7629 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7630 = !DISubroutineType(types: !7631)
!7631 = !{null, !7632, !304}
!7632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7633, size: 64)
!7633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7634)
!7634 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7635 = !{!7636, !7637}
!7636 = !DILocalVariable(name: "v", arg: 1, scope: !7628, file: !7629, line: 38, type: !7632)
!7637 = !DILocalVariable(name: "size", arg: 2, scope: !7628, file: !7629, line: 38, type: !304)
!7638 = !DILocation(line: 38, column: 67, scope: !7628)
!7639 = !DILocation(line: 38, column: 77, scope: !7628)
!7640 = !DILocation(line: 40, column: 20, scope: !7628)
!7641 = !DILocation(line: 40, column: 23, scope: !7628)
!7642 = !DILocation(line: 40, column: 2, scope: !7628)
!7643 = !DILocation(line: 41, column: 2, scope: !7628)
!7644 = !DILocation(line: 42, column: 1, scope: !7628)
!7645 = distinct !DISubprogram(name: "arch___set_bit", scope: !7646, file: !7646, line: 66, type: !7592, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7647)
!7646 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7647 = !{!7648, !7649}
!7648 = !DILocalVariable(name: "nr", arg: 1, scope: !7645, file: !7646, line: 66, type: !307)
!7649 = !DILocalVariable(name: "addr", arg: 2, scope: !7645, file: !7646, line: 66, type: !7552)
!7650 = !DILocation(line: 66, column: 30, scope: !7645)
!7651 = !DILocation(line: 66, column: 58, scope: !7645)
!7652 = !DILocation(line: 68, column: 44, scope: !7645)
!7653 = !DILocation(line: 68, column: 56, scope: !7645)
!7654 = !DILocation(line: 68, column: 2, scope: !7645)
!7655 = !{i64 2147764300}
!7656 = !DILocation(line: 69, column: 1, scope: !7645)
!7657 = distinct !DISubprogram(name: "kasan_check_write", scope: !7658, file: !7658, line: 44, type: !7659, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7661)
!7658 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7659 = !DISubroutineType(types: !7660)
!7660 = !{!1458, !7632, !7}
!7661 = !{!7662, !7663}
!7662 = !DILocalVariable(name: "p", arg: 1, scope: !7657, file: !7658, line: 44, type: !7632)
!7663 = !DILocalVariable(name: "size", arg: 2, scope: !7657, file: !7658, line: 44, type: !7)
!7664 = !DILocation(line: 44, column: 59, scope: !7657)
!7665 = !DILocation(line: 44, column: 75, scope: !7657)
!7666 = !DILocation(line: 46, column: 2, scope: !7657)
!7667 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7668, file: !7668, line: 229, type: !7669, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7671)
!7668 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7669 = !DISubroutineType(types: !7670)
!7670 = !{null, !7632, !304, !103}
!7671 = !{!7672, !7673, !7674}
!7672 = !DILocalVariable(name: "ptr", arg: 1, scope: !7667, file: !7668, line: 229, type: !7632)
!7673 = !DILocalVariable(name: "size", arg: 2, scope: !7667, file: !7668, line: 229, type: !304)
!7674 = !DILocalVariable(name: "type", arg: 3, scope: !7667, file: !7668, line: 230, type: !103)
!7675 = !DILocation(line: 229, column: 60, scope: !7667)
!7676 = !DILocation(line: 229, column: 72, scope: !7667)
!7677 = !DILocation(line: 230, column: 15, scope: !7667)
!7678 = !DILocation(line: 230, column: 23, scope: !7667)
!7679 = distinct !DISubprogram(name: "generic___clear_bit", scope: !7591, file: !7591, line: 37, type: !7592, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7680)
!7680 = !{!7681, !7682, !7683, !7684}
!7681 = !DILocalVariable(name: "nr", arg: 1, scope: !7679, file: !7591, line: 37, type: !307)
!7682 = !DILocalVariable(name: "addr", arg: 2, scope: !7679, file: !7591, line: 37, type: !7552)
!7683 = !DILocalVariable(name: "mask", scope: !7679, file: !7591, line: 39, type: !307)
!7684 = !DILocalVariable(name: "p", scope: !7679, file: !7591, line: 40, type: !4172)
!7685 = !DILocation(line: 37, column: 35, scope: !7679)
!7686 = !DILocation(line: 37, column: 63, scope: !7679)
!7687 = !DILocation(line: 39, column: 2, scope: !7679)
!7688 = !DILocation(line: 39, column: 16, scope: !7679)
!7689 = !DILocation(line: 39, column: 23, scope: !7679)
!7690 = !DILocation(line: 40, column: 2, scope: !7679)
!7691 = !DILocation(line: 40, column: 17, scope: !7679)
!7692 = !DILocation(line: 40, column: 39, scope: !7679)
!7693 = !DILocation(line: 40, column: 47, scope: !7679)
!7694 = !DILocation(line: 40, column: 45, scope: !7679)
!7695 = !DILocation(line: 42, column: 9, scope: !7679)
!7696 = !DILocation(line: 42, column: 8, scope: !7679)
!7697 = !DILocation(line: 42, column: 3, scope: !7679)
!7698 = !DILocation(line: 42, column: 5, scope: !7679)
!7699 = !DILocation(line: 43, column: 1, scope: !7679)
!7700 = distinct !DISubprogram(name: "___clear_bit", scope: !7614, file: !7614, line: 42, type: !7592, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7701)
!7701 = !{!7702, !7703}
!7702 = !DILocalVariable(name: "nr", arg: 1, scope: !7700, file: !7614, line: 42, type: !307)
!7703 = !DILocalVariable(name: "addr", arg: 2, scope: !7700, file: !7614, line: 42, type: !7552)
!7704 = !DILocation(line: 42, column: 28, scope: !7700)
!7705 = !DILocation(line: 42, column: 56, scope: !7700)
!7706 = !DILocation(line: 44, column: 19, scope: !7700)
!7707 = !DILocation(line: 44, column: 26, scope: !7700)
!7708 = !DILocation(line: 44, column: 24, scope: !7700)
!7709 = !DILocation(line: 44, column: 2, scope: !7700)
!7710 = !DILocation(line: 45, column: 19, scope: !7700)
!7711 = !DILocation(line: 45, column: 23, scope: !7700)
!7712 = !DILocation(line: 45, column: 2, scope: !7700)
!7713 = !DILocation(line: 46, column: 1, scope: !7700)
!7714 = distinct !DISubprogram(name: "arch___clear_bit", scope: !7646, file: !7646, line: 92, type: !7592, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7715)
!7715 = !{!7716, !7717}
!7716 = !DILocalVariable(name: "nr", arg: 1, scope: !7714, file: !7646, line: 92, type: !307)
!7717 = !DILocalVariable(name: "addr", arg: 2, scope: !7714, file: !7646, line: 92, type: !7552)
!7718 = !DILocation(line: 92, column: 32, scope: !7714)
!7719 = !DILocation(line: 92, column: 60, scope: !7714)
!7720 = !DILocation(line: 94, column: 44, scope: !7714)
!7721 = !DILocation(line: 94, column: 56, scope: !7714)
!7722 = !DILocation(line: 94, column: 2, scope: !7714)
!7723 = !{i64 2147765845}
!7724 = !DILocation(line: 95, column: 1, scope: !7714)
!7725 = distinct !DISubprogram(name: "linkmode_test_bit", scope: !7549, file: !7549, line: 69, type: !7726, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7730)
!7726 = !DISubroutineType(types: !7727)
!7727 = !{!103, !103, !7728}
!7728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7729, size: 64)
!7729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7553)
!7730 = !{!7731, !7732}
!7731 = !DILocalVariable(name: "nr", arg: 1, scope: !7725, file: !7549, line: 69, type: !103)
!7732 = !DILocalVariable(name: "addr", arg: 2, scope: !7725, file: !7549, line: 69, type: !7728)
!7733 = !DILocation(line: 69, column: 41, scope: !7725)
!7734 = !DILocation(line: 69, column: 75, scope: !7725)
!7735 = !DILocation(line: 71, column: 9, scope: !7725)
!7736 = !DILocation(line: 71, column: 2, scope: !7725)
!7737 = distinct !DISubprogram(name: "const_test_bit", scope: !7591, file: !7591, line: 166, type: !7738, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7740)
!7738 = !DISubroutineType(types: !7739)
!7739 = !{!1458, !307, !7728}
!7740 = !{!7741, !7742, !7743, !7744, !7745}
!7741 = !DILocalVariable(name: "nr", arg: 1, scope: !7737, file: !7591, line: 166, type: !307)
!7742 = !DILocalVariable(name: "addr", arg: 2, scope: !7737, file: !7591, line: 166, type: !7728)
!7743 = !DILocalVariable(name: "p", scope: !7737, file: !7591, line: 168, type: !4955)
!7744 = !DILocalVariable(name: "mask", scope: !7737, file: !7591, line: 169, type: !307)
!7745 = !DILocalVariable(name: "val", scope: !7737, file: !7591, line: 170, type: !307)
!7746 = !DILocation(line: 166, column: 30, scope: !7737)
!7747 = !DILocation(line: 166, column: 64, scope: !7737)
!7748 = !DILocation(line: 168, column: 2, scope: !7737)
!7749 = !DILocation(line: 168, column: 23, scope: !7737)
!7750 = !DILocation(line: 168, column: 50, scope: !7737)
!7751 = !DILocation(line: 168, column: 57, scope: !7737)
!7752 = !DILocation(line: 168, column: 55, scope: !7737)
!7753 = !DILocation(line: 169, column: 2, scope: !7737)
!7754 = !DILocation(line: 169, column: 16, scope: !7737)
!7755 = !DILocation(line: 169, column: 23, scope: !7737)
!7756 = !DILocation(line: 170, column: 2, scope: !7737)
!7757 = !DILocation(line: 170, column: 16, scope: !7737)
!7758 = !DILocation(line: 170, column: 23, scope: !7737)
!7759 = !DILocation(line: 170, column: 22, scope: !7737)
!7760 = !DILocation(line: 172, column: 12, scope: !7737)
!7761 = !DILocation(line: 172, column: 18, scope: !7737)
!7762 = !DILocation(line: 172, column: 16, scope: !7737)
!7763 = !DILocation(line: 172, column: 10, scope: !7737)
!7764 = !DILocation(line: 172, column: 9, scope: !7737)
!7765 = !DILocation(line: 173, column: 1, scope: !7737)
!7766 = !DILocation(line: 172, column: 2, scope: !7737)
!7767 = distinct !DISubprogram(name: "_test_bit", scope: !7614, file: !7614, line: 139, type: !7738, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7768)
!7768 = !{!7769, !7770}
!7769 = !DILocalVariable(name: "nr", arg: 1, scope: !7767, file: !7614, line: 139, type: !307)
!7770 = !DILocalVariable(name: "addr", arg: 2, scope: !7767, file: !7614, line: 139, type: !7728)
!7771 = !DILocation(line: 139, column: 25, scope: !7767)
!7772 = !DILocation(line: 139, column: 59, scope: !7767)
!7773 = !DILocation(line: 141, column: 25, scope: !7767)
!7774 = !DILocation(line: 141, column: 32, scope: !7767)
!7775 = !DILocation(line: 141, column: 30, scope: !7767)
!7776 = !DILocation(line: 141, column: 2, scope: !7767)
!7777 = !DILocation(line: 142, column: 23, scope: !7767)
!7778 = !DILocation(line: 142, column: 27, scope: !7767)
!7779 = !DILocation(line: 142, column: 9, scope: !7767)
!7780 = !DILocation(line: 142, column: 2, scope: !7767)
!7781 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7629, file: !7629, line: 66, type: !7630, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7782)
!7782 = !{!7783, !7784}
!7783 = !DILocalVariable(name: "v", arg: 1, scope: !7781, file: !7629, line: 66, type: !7632)
!7784 = !DILocalVariable(name: "size", arg: 2, scope: !7781, file: !7629, line: 66, type: !304)
!7785 = !DILocation(line: 66, column: 73, scope: !7781)
!7786 = !DILocation(line: 66, column: 83, scope: !7781)
!7787 = !DILocation(line: 68, column: 19, scope: !7781)
!7788 = !DILocation(line: 68, column: 22, scope: !7781)
!7789 = !DILocation(line: 68, column: 2, scope: !7781)
!7790 = !DILocation(line: 69, column: 2, scope: !7781)
!7791 = !DILocation(line: 70, column: 1, scope: !7781)
!7792 = distinct !DISubprogram(name: "arch_test_bit", scope: !7646, file: !7646, line: 237, type: !7738, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7793)
!7793 = !{!7794, !7795}
!7794 = !DILocalVariable(name: "nr", arg: 1, scope: !7792, file: !7646, line: 237, type: !307)
!7795 = !DILocalVariable(name: "addr", arg: 2, scope: !7792, file: !7646, line: 237, type: !7728)
!7796 = !DILocation(line: 237, column: 29, scope: !7792)
!7797 = !DILocation(line: 237, column: 63, scope: !7792)
!7798 = !DILocation(line: 239, column: 30, scope: !7792)
!7799 = !DILocation(line: 239, column: 9, scope: !7792)
!7800 = !DILocation(line: 239, column: 54, scope: !7792)
!7801 = !DILocation(line: 239, column: 58, scope: !7792)
!7802 = !DILocation(line: 239, column: 36, scope: !7792)
!7803 = !DILocation(line: 240, column: 26, scope: !7792)
!7804 = !DILocation(line: 240, column: 30, scope: !7792)
!7805 = !DILocation(line: 240, column: 8, scope: !7792)
!7806 = !DILocation(line: 239, column: 2, scope: !7792)
!7807 = distinct !DISubprogram(name: "kasan_check_read", scope: !7658, file: !7658, line: 40, type: !7659, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7808)
!7808 = !{!7809, !7810}
!7809 = !DILocalVariable(name: "p", arg: 1, scope: !7807, file: !7658, line: 40, type: !7632)
!7810 = !DILocalVariable(name: "size", arg: 2, scope: !7807, file: !7658, line: 40, type: !7)
!7811 = !DILocation(line: 40, column: 58, scope: !7807)
!7812 = !DILocation(line: 40, column: 74, scope: !7807)
!7813 = !DILocation(line: 42, column: 2, scope: !7807)
!7814 = distinct !DISubprogram(name: "constant_test_bit", scope: !7646, file: !7646, line: 204, type: !7815, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7817)
!7815 = !DISubroutineType(types: !7816)
!7816 = !{!1458, !293, !7728}
!7817 = !{!7818, !7819}
!7818 = !DILocalVariable(name: "nr", arg: 1, scope: !7814, file: !7646, line: 204, type: !293)
!7819 = !DILocalVariable(name: "addr", arg: 2, scope: !7814, file: !7646, line: 204, type: !7728)
!7820 = !DILocation(line: 204, column: 52, scope: !7814)
!7821 = !DILocation(line: 204, column: 86, scope: !7814)
!7822 = !DILocation(line: 206, column: 19, scope: !7814)
!7823 = !DILocation(line: 206, column: 22, scope: !7814)
!7824 = !DILocation(line: 206, column: 15, scope: !7814)
!7825 = !DILocation(line: 207, column: 4, scope: !7814)
!7826 = !DILocation(line: 207, column: 9, scope: !7814)
!7827 = !DILocation(line: 207, column: 12, scope: !7814)
!7828 = !DILocation(line: 206, column: 44, scope: !7814)
!7829 = !DILocation(line: 207, column: 37, scope: !7814)
!7830 = !DILocation(line: 206, column: 2, scope: !7814)
!7831 = distinct !DISubprogram(name: "variable_test_bit", scope: !7646, file: !7646, line: 224, type: !7815, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7832)
!7832 = !{!7833, !7834, !7835}
!7833 = !DILocalVariable(name: "nr", arg: 1, scope: !7831, file: !7646, line: 224, type: !293)
!7834 = !DILocalVariable(name: "addr", arg: 2, scope: !7831, file: !7646, line: 224, type: !7728)
!7835 = !DILocalVariable(name: "oldbit", scope: !7831, file: !7646, line: 226, type: !1458)
!7836 = !DILocation(line: 224, column: 52, scope: !7831)
!7837 = !DILocation(line: 224, column: 86, scope: !7831)
!7838 = !DILocation(line: 226, column: 2, scope: !7831)
!7839 = !DILocation(line: 226, column: 7, scope: !7831)
!7840 = !DILocation(line: 231, column: 33, scope: !7831)
!7841 = !DILocation(line: 231, column: 46, scope: !7831)
!7842 = !DILocation(line: 228, column: 2, scope: !7831)
!7843 = !{i64 2147777054, i64 2147777128}
!7844 = !DILocation(line: 233, column: 9, scope: !7831)
!7845 = !DILocation(line: 234, column: 1, scope: !7831)
!7846 = !DILocation(line: 233, column: 2, scope: !7831)
!7847 = !DISubprogram(name: "_dev_warn", scope: !7288, file: !7288, line: 52, type: !7289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7848 = !DISubprogram(name: "phy_modify_changed", scope: !148, file: !148, line: 1377, type: !7277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7849 = !DISubprogram(name: "genphy_update_link", scope: !148, file: !148, line: 1821, type: !5065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7850 = distinct !DISubprogram(name: "rtl9000a_ack_interrupt", scope: !3, file: !3, line: 831, type: !5065, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7851)
!7851 = !{!7852, !7853}
!7852 = !DILocalVariable(name: "phydev", arg: 1, scope: !7850, file: !3, line: 831, type: !5067)
!7853 = !DILocalVariable(name: "err", scope: !7850, file: !3, line: 833, type: !103)
!7854 = !DILocation(line: 831, column: 54, scope: !7850)
!7855 = !DILocation(line: 833, column: 2, scope: !7850)
!7856 = !DILocation(line: 833, column: 6, scope: !7850)
!7857 = !DILocation(line: 835, column: 17, scope: !7850)
!7858 = !DILocation(line: 835, column: 8, scope: !7850)
!7859 = !DILocation(line: 835, column: 6, scope: !7850)
!7860 = !DILocation(line: 837, column: 10, scope: !7850)
!7861 = !DILocation(line: 837, column: 14, scope: !7850)
!7862 = !DILocation(line: 837, column: 9, scope: !7850)
!7863 = !DILocation(line: 837, column: 21, scope: !7850)
!7864 = !DILocation(line: 838, column: 1, scope: !7850)
!7865 = !DILocation(line: 837, column: 2, scope: !7850)
