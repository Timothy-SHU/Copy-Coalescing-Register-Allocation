; ModuleID = 'drivers/net/ethernet/realtek/r8169_phy_config.c'
source_filename = "drivers/net/ethernet/realtek/r8169_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i16, i16 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.u64_stats_sync = type {}

@r8169_hw_phy_config.phy_configs = internal constant [44 x ptr] [ptr @rtl8169s_hw_phy_config, ptr @rtl8169s_hw_phy_config, ptr @rtl8169sb_hw_phy_config, ptr @rtl8169scd_hw_phy_config, ptr @rtl8169sce_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr null, ptr @rtl8168bb_hw_phy_config, ptr @rtl8401_hw_phy_config, ptr @rtl8168bef_hw_phy_config, ptr @rtl8168cp_1_hw_phy_config, ptr @rtl8168c_1_hw_phy_config, ptr @rtl8168c_2_hw_phy_config, ptr @rtl8168c_3_hw_phy_config, ptr @rtl8168c_3_hw_phy_config, ptr @rtl8168cp_2_hw_phy_config, ptr @rtl8168cp_2_hw_phy_config, ptr @rtl8168d_1_hw_phy_config, ptr @rtl8168d_2_hw_phy_config, ptr @rtl8168d_4_hw_phy_config, ptr @rtl8105e_hw_phy_config, ptr @rtl8105e_hw_phy_config, ptr null, ptr @rtl8168e_1_hw_phy_config, ptr @rtl8168e_1_hw_phy_config, ptr @rtl8168e_2_hw_phy_config, ptr @rtl8168f_1_hw_phy_config, ptr @rtl8168f_2_hw_phy_config, ptr @rtl8402_hw_phy_config, ptr @rtl8411_hw_phy_config, ptr @rtl8106e_hw_phy_config, ptr @rtl8168g_1_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168h_2_hw_phy_config, ptr @rtl8168h_2_hw_phy_config, ptr @rtl8168ep_2_hw_phy_config, ptr @rtl8117_hw_phy_config, ptr @rtl8117_hw_phy_config, ptr @rtl8125a_2_hw_phy_config, ptr @rtl8125b_hw_phy_config], align 16, !dbg !0
@rtl8169s_hw_phy_config.phy_reg_init = internal constant [51 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 6, i16 110 }, %struct.phy_reg { i16 8, i16 1800 }, %struct.phy_reg { i16 21, i16 16384 }, %struct.phy_reg { i16 24, i16 26055 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 -191 }, %struct.phy_reg { i16 2, i16 -8352 }, %struct.phy_reg { i16 1, i16 320 }, %struct.phy_reg { i16 0, i16 119 }, %struct.phy_reg { i16 4, i16 30720 }, %struct.phy_reg { i16 4, i16 28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3847 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -191 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 320 }, %struct.phy_reg { i16 0, i16 187 }, %struct.phy_reg { i16 4, i16 -18432 }, %struct.phy_reg { i16 4, i16 -20480 }, %struct.phy_reg { i16 3, i16 -8383 }, %struct.phy_reg { i16 2, i16 -9120 }, %struct.phy_reg { i16 1, i16 25408 }, %struct.phy_reg { i16 0, i16 125 }, %struct.phy_reg { i16 4, i16 -10240 }, %struct.phy_reg { i16 4, i16 -12288 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4106 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 11, i16 0 }, %struct.phy_reg { i16 0, i16 -28160 }], align 16, !dbg !5579
@rtl8169scd_hw_phy_config.phy_reg_init = internal constant [35 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4122 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 16, i16 -3045 }, %struct.phy_reg { i16 20, i16 -1196 }, %struct.phy_reg { i16 24, i16 -2617 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5595
@rtl8169sce_hw_phy_config.phy_reg_init = internal constant [42 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4122 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 11, i16 -31616 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 24, i16 26567 }, %struct.phy_reg { i16 4, i16 8192 }, %struct.phy_reg { i16 3, i16 47 }, %struct.phy_reg { i16 2, i16 17248 }, %struct.phy_reg { i16 1, i16 265 }, %struct.phy_reg { i16 0, i16 12322 }, %struct.phy_reg { i16 4, i16 10240 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5604
@rtl8102e_hw_phy_config.phy_reg_init = internal constant [4 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 8, i16 17437 }, %struct.phy_reg { i16 1, i16 -28416 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5613
@rtl8168c_1_hw_phy_config.phy_reg_init = internal constant [17 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 0, i16 -30508 }, %struct.phy_reg { i16 1, i16 -32079 }, %struct.phy_reg { i16 3, i16 28674 }, %struct.phy_reg { i16 8, i16 -25040 }, %struct.phy_reg { i16 9, i16 496 }, %struct.phy_reg { i16 10, i16 21760 }, %struct.phy_reg { i16 12, i16 200 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 18, i16 -16234 }, %struct.phy_reg { i16 22, i16 10 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 9, i16 8192 }, %struct.phy_reg { i16 9, i16 0 }], align 16, !dbg !5620
@rtl8168c_2_hw_phy_config.phy_reg_init = internal constant [15 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 29, i16 15768 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 12, i16 32440 }, %struct.phy_reg { i16 6, i16 1889 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 22, i16 3850 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5629
@rtl8168c_3_hw_phy_config.phy_reg_init = internal constant [9 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 29, i16 15768 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 12, i16 32440 }, %struct.phy_reg { i16 6, i16 21601 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 22, i16 3850 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5638
@rtl8168d_1_phy_reg_init_0 = internal constant [26 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 6, i16 16484 }, %struct.phy_reg { i16 7, i16 10339 }, %struct.phy_reg { i16 8, i16 1436 }, %struct.phy_reg { i16 9, i16 9908 }, %struct.phy_reg { i16 10, i16 27161 }, %struct.phy_reg { i16 11, i16 -9016 }, %struct.phy_reg { i16 16, i16 -3987 }, %struct.phy_reg { i16 20, i16 32616 }, %struct.phy_reg { i16 24, i16 32729 }, %struct.phy_reg { i16 28, i16 -3841 }, %struct.phy_reg { i16 29, i16 15772 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 18, i16 -2913 }, %struct.phy_reg { i16 19, i16 1803 }, %struct.phy_reg { i16 26, i16 1453 }, %struct.phy_reg { i16 20, i16 -27456 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 6, i16 21857 }, %struct.phy_reg { i16 31, i16 5 }, %struct.phy_reg { i16 5, i16 -31950 }, %struct.phy_reg { i16 6, i16 21857 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 13, i16 -1920 }], align 16, !dbg !5647
@rtl8168d_1_common.set = internal constant [8 x i16] [i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108], align 16, !dbg !5652
@.str = private unnamed_addr constant [32 x i8] c"chipset not ready for firmware\0A\00", align 1, !dbg !5662
@rtl8168e_1_hw_phy_config.phy_reg_init = internal constant [7 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 11, i16 27680 }, %struct.phy_reg { i16 7, i16 10354 }, %struct.phy_reg { i16 28, i16 -4097 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 20, i16 25632 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5664
@rtl8106e_hw_phy_config.phy_reg_init = internal constant [4 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 4 }, %struct.phy_reg { i16 16, i16 -16257 }, %struct.phy_reg { i16 25, i16 28720 }, %struct.phy_reg { i16 31, i16 0 }], align 16, !dbg !5671

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @r8169_hw_phy_config(ptr noundef %tp, ptr noundef %phydev, i32 noundef %ver) #0 align 16 !dbg !2 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  %ver.addr = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5678, metadata !DIExpression()), !dbg !5696
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5679, metadata !DIExpression()), !dbg !5697
  store i32 %ver, ptr %ver.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ver.addr, metadata !5680, metadata !DIExpression()), !dbg !5698
  %0 = load i32, ptr %ver.addr, align 4, !dbg !5699
  %idxprom = zext i32 %0 to i64, !dbg !5701
  %arrayidx = getelementptr [44 x ptr], ptr @r8169_hw_phy_config.phy_configs, i64 0, i64 %idxprom, !dbg !5701
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !5701
  %tobool = icmp ne ptr %1, null, !dbg !5701
  br i1 %tobool, label %if.then, label %if.end, !dbg !5702

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ver.addr, align 4, !dbg !5703
  %idxprom1 = zext i32 %2 to i64, !dbg !5704
  %arrayidx2 = getelementptr [44 x ptr], ptr @r8169_hw_phy_config.phy_configs, i64 0, i64 %idxprom1, !dbg !5704
  %3 = load ptr, ptr %arrayidx2, align 8, !dbg !5704
  %4 = load ptr, ptr %tp.addr, align 8, !dbg !5705
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5706
  call void %3(ptr noundef %4, ptr noundef %5) #6, !dbg !5704
  br label %if.end, !dbg !5704

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5707
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169s_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5581 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5585, metadata !DIExpression()), !dbg !5708
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5586, metadata !DIExpression()), !dbg !5709
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5710
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8169s_hw_phy_config.phy_reg_init, i32 noundef 51) #6, !dbg !5710
  ret void, !dbg !5711
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169sb_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5712 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5714, metadata !DIExpression()), !dbg !5716
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5715, metadata !DIExpression()), !dbg !5717
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5718
  %call = call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2, i32 noundef 1, i16 noundef zeroext -28464) #6, !dbg !5719
  ret void, !dbg !5720
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169scd_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5597 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5599, metadata !DIExpression()), !dbg !5721
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5600, metadata !DIExpression()), !dbg !5722
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5723
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8169scd_hw_phy_config.phy_reg_init, i32 noundef 35) #6, !dbg !5723
  ret void, !dbg !5724
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8169sce_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5606 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5608, metadata !DIExpression()), !dbg !5725
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5609, metadata !DIExpression()), !dbg !5726
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5727
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8169sce_hw_phy_config.phy_reg_init, i32 noundef 42) #6, !dbg !5727
  ret void, !dbg !5728
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8102e_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5615 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5617, metadata !DIExpression()), !dbg !5729
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5618, metadata !DIExpression()), !dbg !5730
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5731
  %call = call i32 @phy_set_bits(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 4096) #6, !dbg !5732
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5733
  %call1 = call i32 @phy_set_bits(ptr noundef %1, i32 noundef 25, i16 noundef zeroext 8192) #6, !dbg !5734
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5735
  %call2 = call i32 @phy_set_bits(ptr noundef %2, i32 noundef 16, i16 noundef zeroext -32768) #6, !dbg !5736
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5737
  call void @__rtl_writephy_batch(ptr noundef %3, ptr noundef @rtl8102e_hw_phy_config.phy_reg_init, i32 noundef 4) #6, !dbg !5737
  ret void, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168bb_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5739 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5741, metadata !DIExpression()), !dbg !5743
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5742, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5745
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 31, i16 noundef zeroext 1) #6, !dbg !5746
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5747
  %call1 = call i32 @phy_set_bits(ptr noundef %1, i32 noundef 22, i16 noundef zeroext 1) #6, !dbg !5748
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5749
  %call2 = call i32 @phy_write(ptr noundef %2, i32 noundef 16, i16 noundef zeroext -3045) #6, !dbg !5750
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5751
  %call3 = call i32 @phy_write(ptr noundef %3, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !5752
  ret void, !dbg !5753
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8401_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5754 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5756, metadata !DIExpression()), !dbg !5758
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5757, metadata !DIExpression()), !dbg !5759
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5760
  %call = call i32 @phy_set_bits(ptr noundef %0, i32 noundef 17, i16 noundef zeroext 4096) #6, !dbg !5761
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5762
  %call1 = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 3) #6, !dbg !5763
  ret void, !dbg !5764
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168bef_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5765 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5767, metadata !DIExpression()), !dbg !5769
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5768, metadata !DIExpression()), !dbg !5770
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5771
  %call = call i32 @phy_write_paged(ptr noundef %0, i32 noundef 1, i32 noundef 16, i16 noundef zeroext -3045) #6, !dbg !5772
  ret void, !dbg !5773
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168cp_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5774 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5776, metadata !DIExpression()), !dbg !5778
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5777, metadata !DIExpression()), !dbg !5779
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5780
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 29, i16 noundef zeroext 3840) #6, !dbg !5781
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5782
  %call1 = call i32 @phy_write_paged(ptr noundef %1, i32 noundef 2, i32 noundef 12, i16 noundef zeroext 7880) #6, !dbg !5783
  ret void, !dbg !5784
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168c_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5622 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5624, metadata !DIExpression()), !dbg !5785
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5625, metadata !DIExpression()), !dbg !5786
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5787
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8168c_1_hw_phy_config.phy_reg_init, i32 noundef 17) #6, !dbg !5787
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5788
  %call = call i32 @phy_set_bits(ptr noundef %1, i32 noundef 20, i16 noundef zeroext 32) #6, !dbg !5789
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5790
  %call1 = call i32 @phy_set_bits(ptr noundef %2, i32 noundef 13, i16 noundef zeroext 32) #6, !dbg !5791
  ret void, !dbg !5792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168c_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5631 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5633, metadata !DIExpression()), !dbg !5793
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5634, metadata !DIExpression()), !dbg !5794
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5795
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8168c_2_hw_phy_config.phy_reg_init, i32 noundef 15) #6, !dbg !5795
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5796
  %call = call i32 @phy_set_bits(ptr noundef %1, i32 noundef 22, i16 noundef zeroext 1) #6, !dbg !5797
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5798
  %call1 = call i32 @phy_set_bits(ptr noundef %2, i32 noundef 20, i16 noundef zeroext 32) #6, !dbg !5799
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5800
  %call2 = call i32 @phy_set_bits(ptr noundef %3, i32 noundef 13, i16 noundef zeroext 32) #6, !dbg !5801
  ret void, !dbg !5802
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168c_3_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5640 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5642, metadata !DIExpression()), !dbg !5803
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5643, metadata !DIExpression()), !dbg !5804
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5805
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8168c_3_hw_phy_config.phy_reg_init, i32 noundef 9) #6, !dbg !5805
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5806
  %call = call i32 @phy_set_bits(ptr noundef %1, i32 noundef 22, i16 noundef zeroext 1) #6, !dbg !5807
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5808
  %call1 = call i32 @phy_set_bits(ptr noundef %2, i32 noundef 20, i16 noundef zeroext 32) #6, !dbg !5809
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5810
  %call2 = call i32 @phy_set_bits(ptr noundef %3, i32 noundef 13, i16 noundef zeroext 32) #6, !dbg !5811
  ret void, !dbg !5812
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168cp_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5813 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5815, metadata !DIExpression()), !dbg !5817
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5816, metadata !DIExpression()), !dbg !5818
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5819
  %call = call i32 @phy_set_bits(ptr noundef %0, i32 noundef 20, i16 noundef zeroext 32) #6, !dbg !5820
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5821
  %call1 = call i32 @phy_set_bits(ptr noundef %1, i32 noundef 13, i16 noundef zeroext 32) #6, !dbg !5822
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5823
  %call2 = call i32 @phy_write_paged(ptr noundef %2, i32 noundef 1, i32 noundef 29, i16 noundef zeroext 15768) #6, !dbg !5824
  ret void, !dbg !5825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168d_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5826 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5828, metadata !DIExpression()), !dbg !5830
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5829, metadata !DIExpression()), !dbg !5831
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5832
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8168d_1_phy_reg_init_0, i32 noundef 26) #6, !dbg !5832
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5833
  %call = call i32 @phy_write(ptr noundef %1, i32 noundef 31, i16 noundef zeroext 2) #6, !dbg !5834
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5835
  %call1 = call i32 @phy_modify(ptr noundef %2, i32 noundef 11, i16 noundef zeroext 239, i16 noundef zeroext 16) #6, !dbg !5836
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5837
  %call2 = call i32 @phy_modify(ptr noundef %3, i32 noundef 12, i16 noundef zeroext 23808, i16 noundef zeroext -24064) #6, !dbg !5838
  %4 = load ptr, ptr %tp.addr, align 8, !dbg !5839
  %call3 = call zeroext i8 @rtl8168d_efuse_read(ptr noundef %4, i32 noundef 1) #6, !dbg !5841
  %conv = zext i8 %call3 to i32, !dbg !5841
  %cmp = icmp eq i32 %conv, 177, !dbg !5842
  br i1 %cmp, label %if.then, label %if.else, !dbg !5843

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5844
  call void @rtl8168d_1_common(ptr noundef %5) #6, !dbg !5846
  br label %if.end, !dbg !5847

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !5848
  %call5 = call i32 @phy_write_paged(ptr noundef %6, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 26210) #6, !dbg !5850
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !5851
  call void @r8168d_phy_param(ptr noundef %7, i16 noundef zeroext -31952, i16 noundef zeroext -1, i16 noundef zeroext 26210) #6, !dbg !5852
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !5853
  %call6 = call i32 @phy_write(ptr noundef %8, i32 noundef 31, i16 noundef zeroext 2) #6, !dbg !5854
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !5855
  %call7 = call i32 @phy_set_bits(ptr noundef %9, i32 noundef 13, i16 noundef zeroext 768) #6, !dbg !5856
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !5857
  %call8 = call i32 @phy_set_bits(ptr noundef %10, i32 noundef 15, i16 noundef zeroext 16) #6, !dbg !5858
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !5859
  %call9 = call i32 @phy_write(ptr noundef %11, i32 noundef 31, i16 noundef zeroext 2) #6, !dbg !5860
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !5861
  %call10 = call i32 @phy_modify(ptr noundef %12, i32 noundef 2, i16 noundef zeroext 1536, i16 noundef zeroext 256) #6, !dbg !5862
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !5863
  %call11 = call i32 @phy_clear_bits(ptr noundef %13, i32 noundef 3, i16 noundef zeroext -8192) #6, !dbg !5864
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !5865
  %call12 = call i32 @phy_write(ptr noundef %14, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !5866
  %15 = load ptr, ptr %tp.addr, align 8, !dbg !5867
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !5868
  call void @rtl8168d_apply_firmware_cond(ptr noundef %15, ptr noundef %16, i16 noundef zeroext -16640) #6, !dbg !5869
  ret void, !dbg !5870
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168d_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5871 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5873, metadata !DIExpression()), !dbg !5875
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5874, metadata !DIExpression()), !dbg !5876
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5877
  call void @__rtl_writephy_batch(ptr noundef %0, ptr noundef @rtl8168d_1_phy_reg_init_0, i32 noundef 26) #6, !dbg !5877
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !5878
  %call = call zeroext i8 @rtl8168d_efuse_read(ptr noundef %1, i32 noundef 1) #6, !dbg !5880
  %conv = zext i8 %call to i32, !dbg !5880
  %cmp = icmp eq i32 %conv, 177, !dbg !5881
  br i1 %cmp, label %if.then, label %if.else, !dbg !5882

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5883
  call void @rtl8168d_1_common(ptr noundef %2) #6, !dbg !5885
  br label %if.end, !dbg !5886

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5887
  %call2 = call i32 @phy_write_paged(ptr noundef %3, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 9794) #6, !dbg !5889
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5890
  call void @r8168d_phy_param(ptr noundef %4, i16 noundef zeroext -31952, i16 noundef zeroext -1, i16 noundef zeroext 9794) #6, !dbg !5891
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5892
  %call3 = call i32 @phy_write(ptr noundef %5, i32 noundef 31, i16 noundef zeroext 2) #6, !dbg !5893
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !5894
  %call4 = call i32 @phy_modify(ptr noundef %6, i32 noundef 2, i16 noundef zeroext 1536, i16 noundef zeroext 256) #6, !dbg !5895
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !5896
  %call5 = call i32 @phy_clear_bits(ptr noundef %7, i32 noundef 3, i16 noundef zeroext -8192) #6, !dbg !5897
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !5898
  %call6 = call i32 @phy_write(ptr noundef %8, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !5899
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !5900
  %call7 = call i32 @phy_modify_paged(ptr noundef %9, i32 noundef 2, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 23) #6, !dbg !5901
  %10 = load ptr, ptr %tp.addr, align 8, !dbg !5902
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !5903
  call void @rtl8168d_apply_firmware_cond(ptr noundef %10, ptr noundef %11, i16 noundef zeroext -19712) #6, !dbg !5904
  ret void, !dbg !5905
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168d_4_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5906 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5908, metadata !DIExpression()), !dbg !5910
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5909, metadata !DIExpression()), !dbg !5911
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5912
  %call = call i32 @phy_write_paged(ptr noundef %0, i32 noundef 1, i32 noundef 23, i16 noundef zeroext 3264) #6, !dbg !5913
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5914
  call void @r8168d_modify_extpage(ptr noundef %1, i32 noundef 45, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 64) #6, !dbg !5915
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5916
  %call1 = call i32 @phy_set_bits(ptr noundef %2, i32 noundef 13, i16 noundef zeroext 32) #6, !dbg !5917
  ret void, !dbg !5918
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8105e_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5919 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5921, metadata !DIExpression()), !dbg !5923
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5922, metadata !DIExpression()), !dbg !5924
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !5925
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 24, i16 noundef zeroext 784) #6, !dbg !5926
  call void @msleep(i32 noundef 100) #6, !dbg !5927
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !5928
  call void @r8169_apply_firmware(ptr noundef %1) #6, !dbg !5929
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5930
  %call1 = call i32 @phy_write_paged(ptr noundef %2, i32 noundef 5, i32 noundef 26, i16 noundef zeroext 0) #6, !dbg !5931
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5932
  %call2 = call i32 @phy_write_paged(ptr noundef %3, i32 noundef 4, i32 noundef 28, i16 noundef zeroext 0) #6, !dbg !5933
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5934
  %call3 = call i32 @phy_write_paged(ptr noundef %4, i32 noundef 1, i32 noundef 21, i16 noundef zeroext 30465) #6, !dbg !5935
  ret void, !dbg !5936
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168e_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5666 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5668, metadata !DIExpression()), !dbg !5937
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5669, metadata !DIExpression()), !dbg !5938
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !5939
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !5940
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5941
  call void @r8168d_phy_param(ptr noundef %1, i16 noundef zeroext -29824, i16 noundef zeroext -1, i16 noundef zeroext -14186) #6, !dbg !5942
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5943
  call void @__rtl_writephy_batch(ptr noundef %2, ptr noundef @rtl8168e_1_hw_phy_config.phy_reg_init, i32 noundef 7) #6, !dbg !5943
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5944
  call void @r8168d_modify_extpage(ptr noundef %3, i32 noundef 47, i32 noundef 21, i16 noundef zeroext -1, i16 noundef zeroext 6425) #6, !dbg !5945
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5946
  call void @r8168d_modify_extpage(ptr noundef %4, i32 noundef 172, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 6) #6, !dbg !5947
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5948
  call void @r8168d_modify_extpage(ptr noundef %5, i32 noundef 35, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 6) #6, !dbg !5949
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !5950
  %call = call i32 @phy_modify_paged(ptr noundef %6, i32 noundef 2, i32 noundef 8, i16 noundef zeroext 32512, i16 noundef zeroext -32768) #6, !dbg !5951
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !5952
  call void @r8168d_modify_extpage(ptr noundef %7, i32 noundef 45, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 80) #6, !dbg !5953
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !5954
  %call1 = call i32 @phy_set_bits(ptr noundef %8, i32 noundef 20, i16 noundef zeroext -32768) #6, !dbg !5955
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !5956
  call void @r8168d_phy_param(ptr noundef %9, i16 noundef zeroext -29818, i16 noundef zeroext 0, i16 noundef zeroext 1) #6, !dbg !5957
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !5958
  call void @r8168d_phy_param(ptr noundef %10, i16 noundef zeroext -29819, i16 noundef zeroext 8192, i16 noundef zeroext 0) #6, !dbg !5959
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !5960
  call void @r8168d_modify_extpage(ptr noundef %11, i32 noundef 32, i32 noundef 21, i16 noundef zeroext 4352, i16 noundef zeroext 0) #6, !dbg !5961
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !5962
  %call2 = call i32 @phy_write_paged(ptr noundef %12, i32 noundef 6, i32 noundef 0, i16 noundef zeroext 23040) #6, !dbg !5963
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !5964
  %call3 = call i32 @phy_write_mmd(ptr noundef %13, i32 noundef 7, i32 noundef 60, i16 noundef zeroext 0) #6, !dbg !5965
  ret void, !dbg !5966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168e_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5967 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5969, metadata !DIExpression()), !dbg !5971
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5970, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !5973
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !5974
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !5975
  call void @r8168d_modify_extpage(ptr noundef %1, i32 noundef 172, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 6) #6, !dbg !5976
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !5977
  %call = call i32 @phy_write_paged(ptr noundef %2, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #6, !dbg !5978
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !5979
  call void @r8168d_phy_param(ptr noundef %3, i16 noundef zeroext -29861, i16 noundef zeroext -1, i16 noundef zeroext -28126) #6, !dbg !5980
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !5981
  call void @r8168d_phy_param(ptr noundef %4, i16 noundef zeroext -29843, i16 noundef zeroext -1, i16 noundef zeroext -32768) #6, !dbg !5982
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !5983
  call void @r8168d_phy_param(ptr noundef %5, i16 noundef zeroext -29834, i16 noundef zeroext -1, i16 noundef zeroext -32768) #6, !dbg !5984
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !5985
  %call1 = call i32 @phy_write(ptr noundef %6, i32 noundef 31, i16 noundef zeroext 5) #6, !dbg !5986
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !5987
  %call2 = call i32 @phy_write(ptr noundef %7, i32 noundef 5, i16 noundef zeroext -29824) #6, !dbg !5988
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !5989
  %call3 = call i32 @phy_set_bits(ptr noundef %8, i32 noundef 23, i16 noundef zeroext 6) #6, !dbg !5990
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !5991
  %call4 = call i32 @phy_write(ptr noundef %9, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !5992
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !5993
  call void @r8168d_modify_extpage(ptr noundef %10, i32 noundef 45, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 16) #6, !dbg !5994
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !5995
  %call5 = call i32 @phy_set_bits(ptr noundef %11, i32 noundef 20, i16 noundef zeroext -32768) #6, !dbg !5996
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !5997
  call void @r8168d_phy_param(ptr noundef %12, i16 noundef zeroext -29818, i16 noundef zeroext 0, i16 noundef zeroext 1) #6, !dbg !5998
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !5999
  call void @r8168d_phy_param(ptr noundef %13, i16 noundef zeroext -29819, i16 noundef zeroext 0, i16 noundef zeroext 16384) #6, !dbg !6000
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6001
  call void @rtl8168f_config_eee_phy(ptr noundef %14) #6, !dbg !6002
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6003
  %call6 = call i32 @phy_write(ptr noundef %15, i32 noundef 31, i16 noundef zeroext 3) #6, !dbg !6004
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6005
  %call7 = call i32 @phy_set_bits(ptr noundef %16, i32 noundef 25, i16 noundef zeroext 1) #6, !dbg !6006
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6007
  %call8 = call i32 @phy_set_bits(ptr noundef %17, i32 noundef 16, i16 noundef zeroext 1024) #6, !dbg !6008
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6009
  %call9 = call i32 @phy_write(ptr noundef %18, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6010
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6011
  %call10 = call i32 @phy_modify_paged(ptr noundef %19, i32 noundef 5, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 256) #6, !dbg !6012
  ret void, !dbg !6013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168f_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6014 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6016, metadata !DIExpression()), !dbg !6018
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6017, metadata !DIExpression()), !dbg !6019
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6020
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6021
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6022
  %call = call i32 @phy_write_paged(ptr noundef %1, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #6, !dbg !6023
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6024
  call void @r8168d_phy_param(ptr noundef %2, i16 noundef zeroext -29867, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6025
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6026
  call void @r8168d_phy_param(ptr noundef %3, i16 noundef zeroext -29858, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6027
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6028
  call void @r8168d_phy_param(ptr noundef %4, i16 noundef zeroext -29849, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6029
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6030
  call void @r8168d_phy_param(ptr noundef %5, i16 noundef zeroext -29840, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6031
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6032
  call void @r8168d_modify_extpage(ptr noundef %6, i32 noundef 120, i32 noundef 23, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6033
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6034
  call void @r8168d_modify_extpage(ptr noundef %7, i32 noundef 120, i32 noundef 25, i16 noundef zeroext -1, i16 noundef zeroext 251) #6, !dbg !6035
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6036
  call void @r8168d_phy_param(ptr noundef %8, i16 noundef zeroext -29831, i16 noundef zeroext -1, i16 noundef zeroext -22016) #6, !dbg !6037
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6038
  %call1 = call i32 @phy_write_paged(ptr noundef %9, i32 noundef 3, i32 noundef 1, i16 noundef zeroext 12938) #6, !dbg !6039
  %10 = load ptr, ptr %tp.addr, align 8, !dbg !6040
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6041
  call void @rtl8168f_hw_phy_config(ptr noundef %10, ptr noundef %11) #6, !dbg !6042
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6043
  call void @r8168d_phy_param(ptr noundef %12, i16 noundef zeroext -29819, i16 noundef zeroext 0, i16 noundef zeroext 16384) #6, !dbg !6044
  ret void, !dbg !6045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168f_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6046 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6048, metadata !DIExpression()), !dbg !6050
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6049, metadata !DIExpression()), !dbg !6051
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6052
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6053
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !6054
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6055
  call void @rtl8168f_hw_phy_config(ptr noundef %1, ptr noundef %2) #6, !dbg !6056
  ret void, !dbg !6057
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8402_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6058 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6060, metadata !DIExpression()), !dbg !6062
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6061, metadata !DIExpression()), !dbg !6063
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6064
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 24, i16 noundef zeroext 784) #6, !dbg !6065
  call void @msleep(i32 noundef 20) #6, !dbg !6066
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !6067
  call void @r8169_apply_firmware(ptr noundef %1) #6, !dbg !6068
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6069
  %call1 = call i32 @phy_write(ptr noundef %2, i32 noundef 31, i16 noundef zeroext 4) #6, !dbg !6070
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6071
  %call2 = call i32 @phy_write(ptr noundef %3, i32 noundef 16, i16 noundef zeroext 16415) #6, !dbg !6072
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6073
  %call3 = call i32 @phy_write(ptr noundef %4, i32 noundef 25, i16 noundef zeroext 28720) #6, !dbg !6074
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6075
  %call4 = call i32 @phy_write(ptr noundef %5, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6076
  ret void, !dbg !6077
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8411_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6078 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6080, metadata !DIExpression()), !dbg !6082
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6081, metadata !DIExpression()), !dbg !6083
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6084
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6085
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !6086
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6087
  call void @rtl8168f_hw_phy_config(ptr noundef %1, ptr noundef %2) #6, !dbg !6088
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6089
  call void @r8168d_phy_param(ptr noundef %3, i16 noundef zeroext -29819, i16 noundef zeroext 0, i16 noundef zeroext 16384) #6, !dbg !6090
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6091
  %call = call i32 @phy_write_paged(ptr noundef %4, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #6, !dbg !6092
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6093
  call void @r8168d_phy_param(ptr noundef %5, i16 noundef zeroext -29867, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6094
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6095
  call void @r8168d_phy_param(ptr noundef %6, i16 noundef zeroext -29858, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6096
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6097
  call void @r8168d_phy_param(ptr noundef %7, i16 noundef zeroext -29849, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6098
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6099
  call void @r8168d_phy_param(ptr noundef %8, i16 noundef zeroext -29840, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6100
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6101
  call void @r8168d_modify_extpage(ptr noundef %9, i32 noundef 120, i32 noundef 23, i16 noundef zeroext -1, i16 noundef zeroext 0) #6, !dbg !6102
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6103
  call void @r8168d_modify_extpage(ptr noundef %10, i32 noundef 120, i32 noundef 25, i16 noundef zeroext -1, i16 noundef zeroext 170) #6, !dbg !6104
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6105
  call void @r8168d_phy_param(ptr noundef %11, i16 noundef zeroext -29831, i16 noundef zeroext -1, i16 noundef zeroext -22016) #6, !dbg !6106
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6107
  %call1 = call i32 @phy_write_paged(ptr noundef %12, i32 noundef 3, i32 noundef 1, i16 noundef zeroext 12938) #6, !dbg !6108
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6109
  call void @r8168d_phy_param(ptr noundef %13, i16 noundef zeroext -29868, i16 noundef zeroext 2048, i16 noundef zeroext 0) #6, !dbg !6110
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6111
  call void @r8168d_phy_param(ptr noundef %14, i16 noundef zeroext -29859, i16 noundef zeroext 2048, i16 noundef zeroext 0) #6, !dbg !6112
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6113
  call void @r8168d_phy_param(ptr noundef %15, i16 noundef zeroext -30084, i16 noundef zeroext 256, i16 noundef zeroext 0) #6, !dbg !6114
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6115
  call void @r8168d_phy_param(ptr noundef %16, i16 noundef zeroext -30081, i16 noundef zeroext 0, i16 noundef zeroext 256) #6, !dbg !6116
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6117
  call void @r8168d_phy_param(ptr noundef %17, i16 noundef zeroext -30078, i16 noundef zeroext 256, i16 noundef zeroext 0) #6, !dbg !6118
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6119
  call void @r8168d_phy_param(ptr noundef %18, i16 noundef zeroext -30075, i16 noundef zeroext 256, i16 noundef zeroext 0) #6, !dbg !6120
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6121
  call void @r8168d_phy_param(ptr noundef %19, i16 noundef zeroext -30072, i16 noundef zeroext 256, i16 noundef zeroext 0) #6, !dbg !6122
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6123
  call void @r8168d_phy_param(ptr noundef %20, i16 noundef zeroext -29819, i16 noundef zeroext 0, i16 noundef zeroext -32768) #6, !dbg !6124
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6125
  %call2 = call i32 @phy_write(ptr noundef %21, i32 noundef 31, i16 noundef zeroext 3) #6, !dbg !6126
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6127
  %call3 = call i32 @phy_clear_bits(ptr noundef %22, i32 noundef 25, i16 noundef zeroext 1) #6, !dbg !6128
  %23 = load ptr, ptr %phydev.addr, align 8, !dbg !6129
  %call4 = call i32 @phy_clear_bits(ptr noundef %23, i32 noundef 16, i16 noundef zeroext 1024) #6, !dbg !6130
  %24 = load ptr, ptr %phydev.addr, align 8, !dbg !6131
  %call5 = call i32 @phy_write(ptr noundef %24, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6132
  ret void, !dbg !6133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8106e_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !5673 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5675, metadata !DIExpression()), !dbg !6134
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5676, metadata !DIExpression()), !dbg !6135
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6136
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 24, i16 noundef zeroext 784) #6, !dbg !6137
  call void @msleep(i32 noundef 100) #6, !dbg !6138
  %1 = load ptr, ptr %tp.addr, align 8, !dbg !6139
  call void @r8169_apply_firmware(ptr noundef %1) #6, !dbg !6140
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6141
  call void @__rtl_writephy_batch(ptr noundef %2, ptr noundef @rtl8106e_hw_phy_config.phy_reg_init, i32 noundef 4) #6, !dbg !6141
  ret void, !dbg !6142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168g_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6143 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6145, metadata !DIExpression()), !dbg !6148
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6146, metadata !DIExpression()), !dbg !6149
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6147, metadata !DIExpression()), !dbg !6151
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6152
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6153
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6154
  %call = call i32 @phy_read_paged(ptr noundef %1, i32 noundef 2630, i32 noundef 16) #6, !dbg !6155
  store i32 %call, ptr %ret, align 4, !dbg !6156
  %2 = load i32, ptr %ret, align 4, !dbg !6157
  %conv = sext i32 %2 to i64, !dbg !6157
  %and = and i64 %conv, 256, !dbg !6159
  %tobool = icmp ne i64 %and, 0, !dbg !6159
  br i1 %tobool, label %if.then, label %if.else, !dbg !6160

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6161
  %call1 = call i32 @phy_modify_paged(ptr noundef %3, i32 noundef 3020, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 0) #6, !dbg !6162
  br label %if.end, !dbg !6162

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6163
  %call2 = call i32 @phy_modify_paged(ptr noundef %4, i32 noundef 3020, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext -32768) #6, !dbg !6164
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6165
  %call3 = call i32 @phy_read_paged(ptr noundef %5, i32 noundef 2630, i32 noundef 19) #6, !dbg !6166
  store i32 %call3, ptr %ret, align 4, !dbg !6167
  %6 = load i32, ptr %ret, align 4, !dbg !6168
  %conv4 = sext i32 %6 to i64, !dbg !6168
  %and5 = and i64 %conv4, 256, !dbg !6170
  %tobool6 = icmp ne i64 %and5, 0, !dbg !6170
  br i1 %tobool6, label %if.then7, label %if.else9, !dbg !6171

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6172
  %call8 = call i32 @phy_modify_paged(ptr noundef %7, i32 noundef 3137, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 2) #6, !dbg !6173
  br label %if.end11, !dbg !6173

if.else9:                                         ; preds = %if.end
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6174
  %call10 = call i32 @phy_modify_paged(ptr noundef %8, i32 noundef 3137, i32 noundef 21, i16 noundef zeroext 2, i16 noundef zeroext 0) #6, !dbg !6175
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6176
  %call12 = call i32 @phy_modify_paged(ptr noundef %9, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 12) #6, !dbg !6177
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6178
  call void @rtl8168g_phy_adjust_10m_aldps(ptr noundef %10) #6, !dbg !6179
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6180
  %call13 = call i32 @phy_modify_paged(ptr noundef %11, i32 noundef 2635, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #6, !dbg !6181
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6182
  call void @r8168g_phy_param(ptr noundef %12, i16 noundef zeroext -32750, i16 noundef zeroext 0, i16 noundef zeroext -32768) #6, !dbg !6183
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6184
  %call14 = call i32 @phy_modify_paged(ptr noundef %13, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #6, !dbg !6185
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6186
  %call15 = call i32 @phy_write(ptr noundef %14, i32 noundef 31, i16 noundef zeroext 3021) #6, !dbg !6187
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6188
  %call16 = call i32 @phy_write(ptr noundef %15, i32 noundef 20, i16 noundef zeroext 20581) #6, !dbg !6189
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6190
  %call17 = call i32 @phy_write(ptr noundef %16, i32 noundef 20, i16 noundef zeroext -12187) #6, !dbg !6191
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6192
  %call18 = call i32 @phy_write(ptr noundef %17, i32 noundef 31, i16 noundef zeroext 3016) #6, !dbg !6193
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6194
  %call19 = call i32 @phy_write(ptr noundef %18, i32 noundef 17, i16 noundef zeroext 22101) #6, !dbg !6195
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6196
  %call20 = call i32 @phy_write(ptr noundef %19, i32 noundef 31, i16 noundef zeroext 3021) #6, !dbg !6197
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6198
  %call21 = call i32 @phy_write(ptr noundef %20, i32 noundef 20, i16 noundef zeroext 4197) #6, !dbg !6199
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6200
  %call22 = call i32 @phy_write(ptr noundef %21, i32 noundef 20, i16 noundef zeroext -28571) #6, !dbg !6201
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6202
  %call23 = call i32 @phy_write(ptr noundef %22, i32 noundef 20, i16 noundef zeroext 4197) #6, !dbg !6203
  %23 = load ptr, ptr %phydev.addr, align 8, !dbg !6204
  %call24 = call i32 @phy_write(ptr noundef %23, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6205
  %24 = load ptr, ptr %phydev.addr, align 8, !dbg !6206
  call void @rtl8168g_disable_aldps(ptr noundef %24) #6, !dbg !6207
  %25 = load ptr, ptr %phydev.addr, align 8, !dbg !6208
  call void @rtl8168g_config_eee_phy(ptr noundef %25) #6, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6210
  ret void, !dbg !6210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168g_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6211 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6213, metadata !DIExpression()), !dbg !6215
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6214, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6217
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6218
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6219
  call void @rtl8168g_config_eee_phy(ptr noundef %1) #6, !dbg !6220
  ret void, !dbg !6221
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168h_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6222 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  %ioffset = alloca i16, align 2
  %rlen = alloca i16, align 2
  %data = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6224, metadata !DIExpression()), !dbg !6229
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6225, metadata !DIExpression()), !dbg !6230
  call void @llvm.lifetime.start.p0(i64 2, ptr %ioffset) #7, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %ioffset, metadata !6226, metadata !DIExpression()), !dbg !6232
  call void @llvm.lifetime.start.p0(i64 2, ptr %rlen) #7, !dbg !6231
  call void @llvm.dbg.declare(metadata ptr %rlen, metadata !6227, metadata !DIExpression()), !dbg !6233
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #7, !dbg !6234
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6228, metadata !DIExpression()), !dbg !6235
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6236
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6237
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6238
  call void @r8168g_phy_param(ptr noundef %1, i16 noundef zeroext -32630, i16 noundef zeroext 63, i16 noundef zeroext 10) #6, !dbg !6239
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6240
  call void @r8168g_phy_param(ptr noundef %2, i16 noundef zeroext 2065, i16 noundef zeroext 0, i16 noundef zeroext 2048) #6, !dbg !6241
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6242
  %call = call i32 @phy_modify_paged(ptr noundef %3, i32 noundef 2626, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 2) #6, !dbg !6243
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6244
  call void @rtl8168g_enable_gphy_10m(ptr noundef %4) #6, !dbg !6245
  %5 = load ptr, ptr %tp.addr, align 8, !dbg !6246
  %call1 = call zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr noundef %5) #6, !dbg !6247
  store i16 %call1, ptr %ioffset, align 2, !dbg !6248
  %6 = load i16, ptr %ioffset, align 2, !dbg !6249
  %conv = zext i16 %6 to i32, !dbg !6249
  %cmp = icmp ne i32 %conv, 65535, !dbg !6251
  br i1 %cmp, label %if.then, label %if.end, !dbg !6252

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6253
  %8 = load i16, ptr %ioffset, align 2, !dbg !6254
  %call3 = call i32 @phy_write_paged(ptr noundef %7, i32 noundef 3023, i32 noundef 22, i16 noundef zeroext %8) #6, !dbg !6255
  br label %if.end, !dbg !6255

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6256
  %call4 = call i32 @phy_read_paged(ptr noundef %9, i32 noundef 3021, i32 noundef 22) #6, !dbg !6257
  store i32 %call4, ptr %data, align 4, !dbg !6258
  %10 = load i32, ptr %data, align 4, !dbg !6259
  %and = and i32 %10, 15, !dbg !6259
  store i32 %and, ptr %data, align 4, !dbg !6259
  store i16 0, ptr %rlen, align 2, !dbg !6260
  %11 = load i32, ptr %data, align 4, !dbg !6261
  %cmp5 = icmp ugt i32 %11, 3, !dbg !6263
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !6264

if.then7:                                         ; preds = %if.end
  %12 = load i32, ptr %data, align 4, !dbg !6265
  %sub = sub i32 %12, 3, !dbg !6266
  %conv8 = trunc i32 %sub to i16, !dbg !6265
  store i16 %conv8, ptr %rlen, align 2, !dbg !6267
  br label %if.end9, !dbg !6268

if.end9:                                          ; preds = %if.then7, %if.end
  %13 = load i16, ptr %rlen, align 2, !dbg !6269
  %conv10 = zext i16 %13 to i32, !dbg !6269
  %14 = load i16, ptr %rlen, align 2, !dbg !6270
  %conv11 = zext i16 %14 to i32, !dbg !6270
  %shl = shl i32 %conv11, 4, !dbg !6271
  %or = or i32 %conv10, %shl, !dbg !6272
  %15 = load i16, ptr %rlen, align 2, !dbg !6273
  %conv12 = zext i16 %15 to i32, !dbg !6273
  %shl13 = shl i32 %conv12, 8, !dbg !6274
  %or14 = or i32 %or, %shl13, !dbg !6275
  %16 = load i16, ptr %rlen, align 2, !dbg !6276
  %conv15 = zext i16 %16 to i32, !dbg !6276
  %shl16 = shl i32 %conv15, 12, !dbg !6277
  %or17 = or i32 %or14, %shl16, !dbg !6278
  store i32 %or17, ptr %data, align 4, !dbg !6279
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6280
  %18 = load i32, ptr %data, align 4, !dbg !6281
  %conv18 = trunc i32 %18 to i16, !dbg !6281
  %call19 = call i32 @phy_write_paged(ptr noundef %17, i32 noundef 3021, i32 noundef 23, i16 noundef zeroext %conv18) #6, !dbg !6282
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6283
  %call20 = call i32 @phy_modify_paged(ptr noundef %19, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 128, i16 noundef zeroext 0) #6, !dbg !6284
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6285
  %call21 = call i32 @phy_modify_paged(ptr noundef %20, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 1, i16 noundef zeroext 0) #6, !dbg !6286
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6287
  call void @rtl8168g_disable_aldps(ptr noundef %21) #6, !dbg !6288
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6289
  call void @rtl8168g_config_eee_phy(ptr noundef %22) #6, !dbg !6290
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #7, !dbg !6291
  call void @llvm.lifetime.end.p0(i64 2, ptr %rlen) #7, !dbg !6291
  call void @llvm.lifetime.end.p0(i64 2, ptr %ioffset) #7, !dbg !6291
  ret void, !dbg !6291
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168ep_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6292 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6294, metadata !DIExpression()), !dbg !6296
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6295, metadata !DIExpression()), !dbg !6297
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6298
  call void @rtl8168g_phy_adjust_10m_aldps(ptr noundef %0) #6, !dbg !6299
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6300
  call void @r8168g_phy_param(ptr noundef %1, i16 noundef zeroext -32750, i16 noundef zeroext 0, i16 noundef zeroext -32768) #6, !dbg !6301
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6302
  %call = call i32 @phy_modify_paged(ptr noundef %2, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #6, !dbg !6303
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6304
  call void @r8168g_phy_param(ptr noundef %3, i16 noundef zeroext -32525, i16 noundef zeroext -256, i16 noundef zeroext -29952) #6, !dbg !6305
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6306
  call void @r8168g_phy_param(ptr noundef %4, i16 noundef zeroext -32528, i16 noundef zeroext -256, i16 noundef zeroext 14848) #6, !dbg !6307
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6308
  call void @r8168g_phy_param(ptr noundef %5, i16 noundef zeroext -32529, i16 noundef zeroext -256, i16 noundef zeroext 1280) #6, !dbg !6309
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6310
  call void @r8168g_phy_param(ptr noundef %6, i16 noundef zeroext -32522, i16 noundef zeroext -256, i16 noundef zeroext 28160) #6, !dbg !6311
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6312
  call void @r8168g_phy_param(ptr noundef %7, i16 noundef zeroext -32532, i16 noundef zeroext -256, i16 noundef zeroext 26624) #6, !dbg !6313
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6314
  call void @r8168g_phy_param(ptr noundef %8, i16 noundef zeroext -32531, i16 noundef zeroext -256, i16 noundef zeroext 31744) #6, !dbg !6315
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6316
  call void @r8168g_phy_param(ptr noundef %9, i16 noundef zeroext -32526, i16 noundef zeroext -256, i16 noundef zeroext -3072) #6, !dbg !6317
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6318
  call void @r8168g_phy_param(ptr noundef %10, i16 noundef zeroext -32524, i16 noundef zeroext -256, i16 noundef zeroext -31488) #6, !dbg !6319
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6320
  call void @r8168g_phy_param(ptr noundef %11, i16 noundef zeroext -32496, i16 noundef zeroext -256, i16 noundef zeroext -22528) #6, !dbg !6321
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6322
  call void @r8168g_phy_param(ptr noundef %12, i16 noundef zeroext -32497, i16 noundef zeroext -256, i16 noundef zeroext 7424) #6, !dbg !6323
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6324
  call void @r8168g_phy_param(ptr noundef %13, i16 noundef zeroext -32495, i16 noundef zeroext -256, i16 noundef zeroext -2816) #6, !dbg !6325
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6326
  call void @r8168g_phy_param(ptr noundef %14, i16 noundef zeroext -32493, i16 noundef zeroext -256, i16 noundef zeroext 24832) #6, !dbg !6327
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6328
  call void @r8168g_phy_param(ptr noundef %15, i16 noundef zeroext -32491, i16 noundef zeroext -256, i16 noundef zeroext -28160) #6, !dbg !6329
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6330
  call void @r8168g_phy_param(ptr noundef %16, i16 noundef zeroext -32498, i16 noundef zeroext -256, i16 noundef zeroext 1024) #6, !dbg !6331
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6332
  call void @r8168g_phy_param(ptr noundef %17, i16 noundef zeroext -32500, i16 noundef zeroext -256, i16 noundef zeroext 31744) #6, !dbg !6333
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6334
  call void @r8168g_phy_param(ptr noundef %18, i16 noundef zeroext -32501, i16 noundef zeroext -256, i16 noundef zeroext 23040) #6, !dbg !6335
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6336
  call void @r8168g_phy_param(ptr noundef %19, i16 noundef zeroext -32559, i16 noundef zeroext -256, i16 noundef zeroext -256) #6, !dbg !6337
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6338
  call void @r8168g_phy_param(ptr noundef %20, i16 noundef zeroext -32563, i16 noundef zeroext -256, i16 noundef zeroext -25088) #6, !dbg !6339
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6340
  call void @r8168g_phy_param(ptr noundef %21, i16 noundef zeroext -32557, i16 noundef zeroext -256, i16 noundef zeroext 3584) #6, !dbg !6341
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6342
  call void @r8168g_phy_param(ptr noundef %22, i16 noundef zeroext -32555, i16 noundef zeroext -256, i16 noundef zeroext -13824) #6, !dbg !6343
  %23 = load ptr, ptr %phydev.addr, align 8, !dbg !6344
  call void @r8168g_phy_param(ptr noundef %23, i16 noundef zeroext -32553, i16 noundef zeroext -256, i16 noundef zeroext -31744) #6, !dbg !6345
  %24 = load ptr, ptr %phydev.addr, align 8, !dbg !6346
  %call1 = call i32 @phy_write(ptr noundef %24, i32 noundef 31, i16 noundef zeroext 3021) #6, !dbg !6347
  %25 = load ptr, ptr %phydev.addr, align 8, !dbg !6348
  %call2 = call i32 @phy_write(ptr noundef %25, i32 noundef 20, i16 noundef zeroext 20581) #6, !dbg !6349
  %26 = load ptr, ptr %phydev.addr, align 8, !dbg !6350
  %call3 = call i32 @phy_write(ptr noundef %26, i32 noundef 20, i16 noundef zeroext -12187) #6, !dbg !6351
  %27 = load ptr, ptr %phydev.addr, align 8, !dbg !6352
  %call4 = call i32 @phy_write(ptr noundef %27, i32 noundef 31, i16 noundef zeroext 3016) #6, !dbg !6353
  %28 = load ptr, ptr %phydev.addr, align 8, !dbg !6354
  %call5 = call i32 @phy_write(ptr noundef %28, i32 noundef 18, i16 noundef zeroext 237) #6, !dbg !6355
  %29 = load ptr, ptr %phydev.addr, align 8, !dbg !6356
  %call6 = call i32 @phy_write(ptr noundef %29, i32 noundef 31, i16 noundef zeroext 3021) #6, !dbg !6357
  %30 = load ptr, ptr %phydev.addr, align 8, !dbg !6358
  %call7 = call i32 @phy_write(ptr noundef %30, i32 noundef 20, i16 noundef zeroext 4197) #6, !dbg !6359
  %31 = load ptr, ptr %phydev.addr, align 8, !dbg !6360
  %call8 = call i32 @phy_write(ptr noundef %31, i32 noundef 20, i16 noundef zeroext -28571) #6, !dbg !6361
  %32 = load ptr, ptr %phydev.addr, align 8, !dbg !6362
  %call9 = call i32 @phy_write(ptr noundef %32, i32 noundef 20, i16 noundef zeroext 4197) #6, !dbg !6363
  %33 = load ptr, ptr %phydev.addr, align 8, !dbg !6364
  %call10 = call i32 @phy_write(ptr noundef %33, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6365
  %34 = load ptr, ptr %phydev.addr, align 8, !dbg !6366
  call void @rtl8168g_disable_aldps(ptr noundef %34) #6, !dbg !6367
  %35 = load ptr, ptr %phydev.addr, align 8, !dbg !6368
  call void @rtl8168g_config_eee_phy(ptr noundef %35) #6, !dbg !6369
  ret void, !dbg !6370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8117_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6371 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6373, metadata !DIExpression()), !dbg !6375
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6374, metadata !DIExpression()), !dbg !6376
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6377
  call void @r8168g_phy_param(ptr noundef %0, i16 noundef zeroext -32626, i16 noundef zeroext -256, i16 noundef zeroext 18432) #6, !dbg !6378
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6379
  call void @r8168g_phy_param(ptr noundef %1, i16 noundef zeroext -32624, i16 noundef zeroext -256, i16 noundef zeroext -13312) #6, !dbg !6380
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6381
  call void @r8168g_phy_param(ptr noundef %2, i16 noundef zeroext -32622, i16 noundef zeroext -256, i16 noundef zeroext -20480) #6, !dbg !6382
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6383
  call void @r8168g_phy_param(ptr noundef %3, i16 noundef zeroext -32632, i16 noundef zeroext -256, i16 noundef zeroext 24576) #6, !dbg !6384
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6385
  call void @r8168g_phy_param(ptr noundef %4, i16 noundef zeroext -32629, i16 noundef zeroext 16128, i16 noundef zeroext 2816) #6, !dbg !6386
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6387
  call void @r8168g_phy_param(ptr noundef %5, i16 noundef zeroext -32627, i16 noundef zeroext 7936, i16 noundef zeroext 1536) #6, !dbg !6388
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6389
  call void @r8168g_phy_param(ptr noundef %6, i16 noundef zeroext -32628, i16 noundef zeroext -256, i16 noundef zeroext -20480) #6, !dbg !6390
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6391
  call void @r8168g_phy_param(ptr noundef %7, i16 noundef zeroext -32608, i16 noundef zeroext -256, i16 noundef zeroext 10240) #6, !dbg !6392
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6393
  call void @r8168g_phy_param(ptr noundef %8, i16 noundef zeroext -32606, i16 noundef zeroext -256, i16 noundef zeroext 20480) #6, !dbg !6394
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6395
  call void @r8168g_phy_param(ptr noundef %9, i16 noundef zeroext -32613, i16 noundef zeroext -2048, i16 noundef zeroext -20480) #6, !dbg !6396
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6397
  call void @r8168g_phy_param(ptr noundef %10, i16 noundef zeroext -32614, i16 noundef zeroext -256, i16 noundef zeroext 19200) #6, !dbg !6398
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6399
  call void @r8168g_phy_param(ptr noundef %11, i16 noundef zeroext -32611, i16 noundef zeroext 16128, i16 noundef zeroext 2048) #6, !dbg !6400
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6401
  call void @r8168g_phy_param(ptr noundef %12, i16 noundef zeroext -32607, i16 noundef zeroext -256, i16 noundef zeroext 28672) #6, !dbg !6402
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6403
  call void @r8168g_phy_param(ptr noundef %13, i16 noundef zeroext -32609, i16 noundef zeroext 7936, i16 noundef zeroext 768) #6, !dbg !6404
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6405
  call void @r8168g_phy_param(ptr noundef %14, i16 noundef zeroext -32610, i16 noundef zeroext -256, i16 noundef zeroext -30720) #6, !dbg !6406
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6407
  call void @r8168g_phy_param(ptr noundef %15, i16 noundef zeroext -32590, i16 noundef zeroext -256, i16 noundef zeroext 8704) #6, !dbg !6408
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6409
  call void @r8168g_phy_param(ptr noundef %16, i16 noundef zeroext -32595, i16 noundef zeroext -2048, i16 noundef zeroext -26624) #6, !dbg !6410
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6411
  call void @r8168g_phy_param(ptr noundef %17, i16 noundef zeroext -32593, i16 noundef zeroext 16128, i16 noundef zeroext 2048) #6, !dbg !6412
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6413
  call void @r8168g_phy_param(ptr noundef %18, i16 noundef zeroext -32589, i16 noundef zeroext -256, i16 noundef zeroext 28416) #6, !dbg !6414
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6415
  call void @r8168g_phy_param(ptr noundef %19, i16 noundef zeroext -32591, i16 noundef zeroext 7936, i16 noundef zeroext 768) #6, !dbg !6416
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6417
  call void @r8168g_phy_param(ptr noundef %20, i16 noundef zeroext -32592, i16 noundef zeroext -256, i16 noundef zeroext -27904) #6, !dbg !6418
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6419
  call void @r8168g_phy_param(ptr noundef %21, i16 noundef zeroext -32751, i16 noundef zeroext 0, i16 noundef zeroext 2048) #6, !dbg !6420
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6421
  call void @rtl8168g_enable_gphy_10m(ptr noundef %22) #6, !dbg !6422
  %23 = load ptr, ptr %phydev.addr, align 8, !dbg !6423
  call void @r8168g_phy_param(ptr noundef %23, i16 noundef zeroext -32746, i16 noundef zeroext 0, i16 noundef zeroext 1024) #6, !dbg !6424
  %24 = load ptr, ptr %phydev.addr, align 8, !dbg !6425
  call void @rtl8168g_disable_aldps(ptr noundef %24) #6, !dbg !6426
  %25 = load ptr, ptr %phydev.addr, align 8, !dbg !6427
  call void @rtl8168h_config_eee_phy(ptr noundef %25) #6, !dbg !6428
  ret void, !dbg !6429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8125a_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6430 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6432, metadata !DIExpression()), !dbg !6435
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6433, metadata !DIExpression()), !dbg !6436
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !6437
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6434, metadata !DIExpression()), !dbg !6438
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6439
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 16) #6, !dbg !6440
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6441
  %call1 = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2769, i32 noundef 19, i16 noundef zeroext 1023, i16 noundef zeroext 1023) #6, !dbg !6442
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6443
  %call2 = call i32 @phy_modify_paged(ptr noundef %2, i32 noundef 2771, i32 noundef 17, i16 noundef zeroext 63, i16 noundef zeroext 6) #6, !dbg !6444
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6445
  %call3 = call i32 @phy_modify_paged(ptr noundef %3, i32 noundef 2752, i32 noundef 20, i16 noundef zeroext 4352, i16 noundef zeroext 0) #6, !dbg !6446
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6447
  %call4 = call i32 @phy_modify_paged(ptr noundef %4, i32 noundef 2764, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 2) #6, !dbg !6448
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6449
  %call5 = call i32 @phy_modify_paged(ptr noundef %5, i32 noundef 2772, i32 noundef 16, i16 noundef zeroext 231, i16 noundef zeroext 68) #6, !dbg !6450
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6451
  %call6 = call i32 @phy_modify_paged(ptr noundef %6, i32 noundef 2753, i32 noundef 18, i16 noundef zeroext 128, i16 noundef zeroext 0) #6, !dbg !6452
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6453
  %call7 = call i32 @phy_modify_paged(ptr noundef %7, i32 noundef 2760, i32 noundef 16, i16 noundef zeroext 768, i16 noundef zeroext 0) #6, !dbg !6454
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6455
  %call8 = call i32 @phy_modify_paged(ptr noundef %8, i32 noundef 2757, i32 noundef 23, i16 noundef zeroext 7, i16 noundef zeroext 2) #6, !dbg !6456
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6457
  %call9 = call i32 @phy_write_paged(ptr noundef %9, i32 noundef 2772, i32 noundef 22, i16 noundef zeroext 168) #6, !dbg !6458
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6459
  %call10 = call i32 @phy_write_paged(ptr noundef %10, i32 noundef 2757, i32 noundef 22, i16 noundef zeroext 511) #6, !dbg !6460
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6461
  %call11 = call i32 @phy_modify_paged(ptr noundef %11, i32 noundef 2760, i32 noundef 21, i16 noundef zeroext 240, i16 noundef zeroext 48) #6, !dbg !6462
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6463
  %call12 = call i32 @phy_write(ptr noundef %12, i32 noundef 31, i16 noundef zeroext 2951) #6, !dbg !6464
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6465
  %call13 = call i32 @phy_write(ptr noundef %13, i32 noundef 22, i16 noundef zeroext -32606) #6, !dbg !6466
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6467
  %call14 = call i32 @phy_write(ptr noundef %14, i32 noundef 23, i16 noundef zeroext 339) #6, !dbg !6468
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6469
  %call15 = call i32 @phy_write(ptr noundef %15, i32 noundef 22, i16 noundef zeroext -32612) #6, !dbg !6470
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6471
  %call16 = call i32 @phy_write(ptr noundef %16, i32 noundef 23, i16 noundef zeroext 339) #6, !dbg !6472
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6473
  %call17 = call i32 @phy_write(ptr noundef %17, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6474
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6475
  %call18 = call i32 @phy_write(ptr noundef %18, i32 noundef 31, i16 noundef zeroext 2627) #6, !dbg !6476
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6477
  %call19 = call i32 @phy_write(ptr noundef %19, i32 noundef 19, i16 noundef zeroext -32333) #6, !dbg !6478
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6479
  %call20 = call i32 @phy_write(ptr noundef %20, i32 noundef 20, i16 noundef zeroext 67) #6, !dbg !6480
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6481
  %call21 = call i32 @phy_write(ptr noundef %21, i32 noundef 20, i16 noundef zeroext 167) #6, !dbg !6482
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6483
  %call22 = call i32 @phy_write(ptr noundef %22, i32 noundef 20, i16 noundef zeroext 214) #6, !dbg !6484
  %23 = load ptr, ptr %phydev.addr, align 8, !dbg !6485
  %call23 = call i32 @phy_write(ptr noundef %23, i32 noundef 20, i16 noundef zeroext 236) #6, !dbg !6486
  %24 = load ptr, ptr %phydev.addr, align 8, !dbg !6487
  %call24 = call i32 @phy_write(ptr noundef %24, i32 noundef 20, i16 noundef zeroext 246) #6, !dbg !6488
  %25 = load ptr, ptr %phydev.addr, align 8, !dbg !6489
  %call25 = call i32 @phy_write(ptr noundef %25, i32 noundef 20, i16 noundef zeroext 251) #6, !dbg !6490
  %26 = load ptr, ptr %phydev.addr, align 8, !dbg !6491
  %call26 = call i32 @phy_write(ptr noundef %26, i32 noundef 20, i16 noundef zeroext 253) #6, !dbg !6492
  %27 = load ptr, ptr %phydev.addr, align 8, !dbg !6493
  %call27 = call i32 @phy_write(ptr noundef %27, i32 noundef 20, i16 noundef zeroext 255) #6, !dbg !6494
  %28 = load ptr, ptr %phydev.addr, align 8, !dbg !6495
  %call28 = call i32 @phy_write(ptr noundef %28, i32 noundef 20, i16 noundef zeroext 187) #6, !dbg !6496
  %29 = load ptr, ptr %phydev.addr, align 8, !dbg !6497
  %call29 = call i32 @phy_write(ptr noundef %29, i32 noundef 20, i16 noundef zeroext 88) #6, !dbg !6498
  %30 = load ptr, ptr %phydev.addr, align 8, !dbg !6499
  %call30 = call i32 @phy_write(ptr noundef %30, i32 noundef 20, i16 noundef zeroext 41) #6, !dbg !6500
  %31 = load ptr, ptr %phydev.addr, align 8, !dbg !6501
  %call31 = call i32 @phy_write(ptr noundef %31, i32 noundef 20, i16 noundef zeroext 19) #6, !dbg !6502
  %32 = load ptr, ptr %phydev.addr, align 8, !dbg !6503
  %call32 = call i32 @phy_write(ptr noundef %32, i32 noundef 20, i16 noundef zeroext 9) #6, !dbg !6504
  %33 = load ptr, ptr %phydev.addr, align 8, !dbg !6505
  %call33 = call i32 @phy_write(ptr noundef %33, i32 noundef 20, i16 noundef zeroext 4) #6, !dbg !6506
  %34 = load ptr, ptr %phydev.addr, align 8, !dbg !6507
  %call34 = call i32 @phy_write(ptr noundef %34, i32 noundef 20, i16 noundef zeroext 2) #6, !dbg !6508
  store i32 0, ptr %i, align 4, !dbg !6509
  br label %for.cond, !dbg !6511

for.cond:                                         ; preds = %for.inc, %entry
  %35 = load i32, ptr %i, align 4, !dbg !6512
  %cmp = icmp slt i32 %35, 25, !dbg !6514
  br i1 %cmp, label %for.body, label %for.end, !dbg !6515

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %phydev.addr, align 8, !dbg !6516
  %call35 = call i32 @phy_write(ptr noundef %36, i32 noundef 20, i16 noundef zeroext 0) #6, !dbg !6517
  br label %for.inc, !dbg !6517

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !dbg !6518
  %inc = add i32 %37, 1, !dbg !6518
  store i32 %inc, ptr %i, align 4, !dbg !6518
  br label %for.cond, !dbg !6519, !llvm.loop !6520

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %phydev.addr, align 8, !dbg !6524
  %call36 = call i32 @phy_write(ptr noundef %38, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6525
  %39 = load ptr, ptr %phydev.addr, align 8, !dbg !6526
  call void @r8168g_phy_param(ptr noundef %39, i16 noundef zeroext -32169, i16 noundef zeroext -1, i16 noundef zeroext 527) #6, !dbg !6527
  %40 = load ptr, ptr %phydev.addr, align 8, !dbg !6528
  call void @r8168g_phy_param(ptr noundef %40, i16 noundef zeroext -32534, i16 noundef zeroext -1, i16 noundef zeroext 30787) #6, !dbg !6529
  %41 = load ptr, ptr %tp.addr, align 8, !dbg !6530
  call void @r8169_apply_firmware(ptr noundef %41) #6, !dbg !6531
  %42 = load ptr, ptr %phydev.addr, align 8, !dbg !6532
  %call37 = call i32 @phy_modify_paged(ptr noundef %42, i32 noundef 3334, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 8192) #6, !dbg !6533
  %43 = load ptr, ptr %phydev.addr, align 8, !dbg !6534
  call void @r8168g_phy_param(ptr noundef %43, i16 noundef zeroext -32350, i16 noundef zeroext 0, i16 noundef zeroext 256) #6, !dbg !6535
  %44 = load ptr, ptr %phydev.addr, align 8, !dbg !6536
  %call38 = call i32 @phy_modify_paged(ptr noundef %44, i32 noundef 2900, i32 noundef 22, i16 noundef zeroext -256, i16 noundef zeroext -9472) #6, !dbg !6537
  %45 = load ptr, ptr %phydev.addr, align 8, !dbg !6538
  %call39 = call i32 @phy_modify_paged(ptr noundef %45, i32 noundef 2629, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #6, !dbg !6539
  %46 = load ptr, ptr %phydev.addr, align 8, !dbg !6540
  %call40 = call i32 @phy_modify_paged(ptr noundef %46, i32 noundef 2653, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 32) #6, !dbg !6541
  %47 = load ptr, ptr %phydev.addr, align 8, !dbg !6542
  %call41 = call i32 @phy_modify_paged(ptr noundef %47, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 16, i16 noundef zeroext 0) #6, !dbg !6543
  %48 = load ptr, ptr %phydev.addr, align 8, !dbg !6544
  %call42 = call i32 @phy_modify_paged(ptr noundef %48, i32 noundef 2694, i32 noundef 21, i16 noundef zeroext 1, i16 noundef zeroext 0) #6, !dbg !6545
  %49 = load ptr, ptr %phydev.addr, align 8, !dbg !6546
  call void @rtl8168g_enable_gphy_10m(ptr noundef %49) #6, !dbg !6547
  %50 = load ptr, ptr %phydev.addr, align 8, !dbg !6548
  call void @rtl8168g_disable_aldps(ptr noundef %50) #6, !dbg !6549
  %51 = load ptr, ptr %phydev.addr, align 8, !dbg !6550
  call void @rtl8125a_config_eee_phy(ptr noundef %51) #6, !dbg !6551
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !6552
  ret void, !dbg !6552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8125b_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6553 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6555, metadata !DIExpression()), !dbg !6557
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6556, metadata !DIExpression()), !dbg !6558
  %0 = load ptr, ptr %tp.addr, align 8, !dbg !6559
  call void @r8169_apply_firmware(ptr noundef %0) #6, !dbg !6560
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6561
  %call = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #6, !dbg !6562
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6563
  %call1 = call i32 @phy_modify_paged(ptr noundef %2, i32 noundef 2756, i32 noundef 19, i16 noundef zeroext 240, i16 noundef zeroext 144) #6, !dbg !6564
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6565
  %call2 = call i32 @phy_modify_paged(ptr noundef %3, i32 noundef 2771, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 1) #6, !dbg !6566
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6567
  %call3 = call i32 @phy_write(ptr noundef %4, i32 noundef 31, i16 noundef zeroext 2951) #6, !dbg !6568
  %5 = load ptr, ptr %phydev.addr, align 8, !dbg !6569
  %call4 = call i32 @phy_write(ptr noundef %5, i32 noundef 22, i16 noundef zeroext -32523) #6, !dbg !6570
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6571
  %call5 = call i32 @phy_write(ptr noundef %6, i32 noundef 23, i16 noundef zeroext 30222) #6, !dbg !6572
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6573
  %call6 = call i32 @phy_write(ptr noundef %7, i32 noundef 22, i16 noundef zeroext -32505) #6, !dbg !6574
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6575
  %call7 = call i32 @phy_write(ptr noundef %8, i32 noundef 23, i16 noundef zeroext 13838) #6, !dbg !6576
  %9 = load ptr, ptr %phydev.addr, align 8, !dbg !6577
  %call8 = call i32 @phy_write(ptr noundef %9, i32 noundef 22, i16 noundef zeroext -31407) #6, !dbg !6578
  %10 = load ptr, ptr %phydev.addr, align 8, !dbg !6579
  %call9 = call i32 @phy_modify(ptr noundef %10, i32 noundef 23, i16 noundef zeroext -256, i16 noundef zeroext 2048) #6, !dbg !6580
  %11 = load ptr, ptr %phydev.addr, align 8, !dbg !6581
  %call10 = call i32 @phy_write(ptr noundef %11, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6582
  %12 = load ptr, ptr %phydev.addr, align 8, !dbg !6583
  %call11 = call i32 @phy_modify_paged(ptr noundef %12, i32 noundef 3056, i32 noundef 16, i16 noundef zeroext -8192, i16 noundef zeroext -24576) #6, !dbg !6584
  %13 = load ptr, ptr %phydev.addr, align 8, !dbg !6585
  %call12 = call i32 @phy_modify_paged(ptr noundef %13, i32 noundef 3060, i32 noundef 19, i16 noundef zeroext 3840, i16 noundef zeroext 768) #6, !dbg !6586
  %14 = load ptr, ptr %phydev.addr, align 8, !dbg !6587
  call void @r8168g_phy_param(ptr noundef %14, i16 noundef zeroext -32700, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6588
  %15 = load ptr, ptr %phydev.addr, align 8, !dbg !6589
  call void @r8168g_phy_param(ptr noundef %15, i16 noundef zeroext -32694, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6590
  %16 = load ptr, ptr %phydev.addr, align 8, !dbg !6591
  call void @r8168g_phy_param(ptr noundef %16, i16 noundef zeroext -32688, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6592
  %17 = load ptr, ptr %phydev.addr, align 8, !dbg !6593
  call void @r8168g_phy_param(ptr noundef %17, i16 noundef zeroext -32682, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6594
  %18 = load ptr, ptr %phydev.addr, align 8, !dbg !6595
  call void @r8168g_phy_param(ptr noundef %18, i16 noundef zeroext -32676, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6596
  %19 = load ptr, ptr %phydev.addr, align 8, !dbg !6597
  call void @r8168g_phy_param(ptr noundef %19, i16 noundef zeroext -32670, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6598
  %20 = load ptr, ptr %phydev.addr, align 8, !dbg !6599
  call void @r8168g_phy_param(ptr noundef %20, i16 noundef zeroext -32664, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6600
  %21 = load ptr, ptr %phydev.addr, align 8, !dbg !6601
  call void @r8168g_phy_param(ptr noundef %21, i16 noundef zeroext -32658, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6602
  %22 = load ptr, ptr %phydev.addr, align 8, !dbg !6603
  call void @r8168g_phy_param(ptr noundef %22, i16 noundef zeroext -32652, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6604
  %23 = load ptr, ptr %phydev.addr, align 8, !dbg !6605
  call void @r8168g_phy_param(ptr noundef %23, i16 noundef zeroext -32646, i16 noundef zeroext -1, i16 noundef zeroext 9239) #6, !dbg !6606
  %24 = load ptr, ptr %phydev.addr, align 8, !dbg !6607
  %call13 = call i32 @phy_modify_paged(ptr noundef %24, i32 noundef 2636, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 64) #6, !dbg !6608
  %25 = load ptr, ptr %phydev.addr, align 8, !dbg !6609
  %call14 = call i32 @phy_modify_paged(ptr noundef %25, i32 noundef 3064, i32 noundef 18, i16 noundef zeroext -8192, i16 noundef zeroext -24576) #6, !dbg !6610
  %26 = load ptr, ptr %phydev.addr, align 8, !dbg !6611
  call void @rtl8125_legacy_force_mode(ptr noundef %26) #6, !dbg !6612
  %27 = load ptr, ptr %phydev.addr, align 8, !dbg !6613
  call void @rtl8168g_disable_aldps(ptr noundef %27) #6, !dbg !6614
  %28 = load ptr, ptr %phydev.addr, align 8, !dbg !6615
  call void @rtl8125b_config_eee_phy(ptr noundef %28) #6, !dbg !6616
  ret void, !dbg !6617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rtl_writephy_batch(ptr noundef %phydev, ptr noundef %regs, i32 noundef %len) #0 align 16 !dbg !6618 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6623, metadata !DIExpression()), !dbg !6626
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6624, metadata !DIExpression()), !dbg !6627
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6625, metadata !DIExpression()), !dbg !6628
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6629
  call void @phy_lock_mdio_bus(ptr noundef %0) #6, !dbg !6630
  br label %while.cond, !dbg !6631

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %len.addr, align 4, !dbg !6632
  %dec = add i32 %1, -1, !dbg !6632
  store i32 %dec, ptr %len.addr, align 4, !dbg !6632
  %cmp = icmp sgt i32 %1, 0, !dbg !6633
  br i1 %cmp, label %while.body, label %while.end, !dbg !6631

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6634
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !6636
  %reg = getelementptr inbounds %struct.phy_reg, ptr %3, i32 0, i32 0, !dbg !6637
  %4 = load i16, ptr %reg, align 2, !dbg !6637
  %conv = zext i16 %4 to i32, !dbg !6636
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !6638
  %val = getelementptr inbounds %struct.phy_reg, ptr %5, i32 0, i32 1, !dbg !6639
  %6 = load i16, ptr %val, align 2, !dbg !6639
  %call = call i32 @__phy_write(ptr noundef %2, i32 noundef %conv, i16 noundef zeroext %6) #6, !dbg !6640
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !6641
  %incdec.ptr = getelementptr %struct.phy_reg, ptr %7, i32 1, !dbg !6641
  store ptr %incdec.ptr, ptr %regs.addr, align 8, !dbg !6641
  br label %while.cond, !dbg !6631, !llvm.loop !6642

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %phydev.addr, align 8, !dbg !6644
  call void @phy_unlock_mdio_bus(ptr noundef %8) #6, !dbg !6645
  ret void, !dbg !6646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @phy_lock_mdio_bus(ptr noundef %phydev) #2 align 16 !dbg !6647 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6649, metadata !DIExpression()), !dbg !6650
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6651
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !6652
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !6653
  %1 = load ptr, ptr %bus, align 8, !dbg !6653
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 10, !dbg !6654
  call void @mutex_lock(ptr noundef %mdio_lock) #6, !dbg !6655
  ret void, !dbg !6656
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__phy_write(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 16 !dbg !6657 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6661, metadata !DIExpression()), !dbg !6664
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6662, metadata !DIExpression()), !dbg !6665
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6663, metadata !DIExpression()), !dbg !6666
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6667
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !6668
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !6669
  %1 = load ptr, ptr %bus, align 8, !dbg !6669
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6670
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !6671
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !6672
  %3 = load i32, ptr %addr, align 8, !dbg !6672
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !6673
  %5 = load i16, ptr %val.addr, align 2, !dbg !6674
  %call = call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #6, !dbg !6675
  ret i32 %call, !dbg !6676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @phy_unlock_mdio_bus(ptr noundef %phydev) #2 align 16 !dbg !6677 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6679, metadata !DIExpression()), !dbg !6680
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6681
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !6682
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !6683
  %1 = load ptr, ptr %bus, align 8, !dbg !6683
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 10, !dbg !6684
  call void @mutex_unlock(ptr noundef %mdio_lock) #6, !dbg !6685
  ret void, !dbg !6686
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6687 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6691 dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6694 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6695 dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_set_bits(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 16 !dbg !6698 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6700, metadata !DIExpression()), !dbg !6703
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6701, metadata !DIExpression()), !dbg !6704
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6702, metadata !DIExpression()), !dbg !6705
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6706
  %1 = load i32, ptr %regnum.addr, align 4, !dbg !6707
  %2 = load i16, ptr %val.addr, align 2, !dbg !6708
  %call = call i32 @phy_modify(ptr noundef %0, i32 noundef %1, i16 noundef zeroext 0, i16 noundef zeroext %2) #6, !dbg !6709
  ret i32 %call, !dbg !6710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6711 dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_write(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 16 !dbg !6714 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6716, metadata !DIExpression()), !dbg !6719
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6717, metadata !DIExpression()), !dbg !6720
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6718, metadata !DIExpression()), !dbg !6721
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6722
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !6723
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !6724
  %1 = load ptr, ptr %bus, align 8, !dbg !6724
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6725
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !6726
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !6727
  %3 = load i32, ptr %addr, align 8, !dbg !6727
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !6728
  %5 = load i16, ptr %val.addr, align 2, !dbg !6729
  %call = call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5) #6, !dbg !6730
  ret i32 %call, !dbg !6731
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6732 dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6733 dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6736 dso_local zeroext i8 @rtl8168d_efuse_read(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168d_1_common(ptr noundef %phydev) #0 align 16 !dbg !5654 {
entry:
  %phydev.addr = alloca ptr, align 8
  %val = alloca i16, align 2
  %i = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !5656, metadata !DIExpression()), !dbg !6739
  call void @llvm.lifetime.start.p0(i64 2, ptr %val) #7, !dbg !6740
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5657, metadata !DIExpression()), !dbg !6741
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6742
  %call = call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 26266) #6, !dbg !6743
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6744
  call void @r8168d_phy_param(ptr noundef %1, i16 noundef zeroext -31952, i16 noundef zeroext -1, i16 noundef zeroext 26266) #6, !dbg !6745
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6746
  %call1 = call i32 @phy_write(ptr noundef %2, i32 noundef 31, i16 noundef zeroext 2) #6, !dbg !6747
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6748
  %call2 = call i32 @phy_read(ptr noundef %3, i32 noundef 13) #6, !dbg !6749
  %conv = trunc i32 %call2 to i16, !dbg !6749
  store i16 %conv, ptr %val, align 2, !dbg !6750
  %4 = load i16, ptr %val, align 2, !dbg !6751
  %conv3 = zext i16 %4 to i32, !dbg !6751
  %and = and i32 %conv3, 255, !dbg !6752
  %cmp = icmp ne i32 %and, 108, !dbg !6753
  br i1 %cmp, label %if.then, label %if.end, !dbg !6754

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !6755
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5658, metadata !DIExpression()), !dbg !6756
  %5 = load i16, ptr %val, align 2, !dbg !6757
  %conv5 = zext i16 %5 to i32, !dbg !6757
  %and6 = and i32 %conv5, 65280, !dbg !6757
  %conv7 = trunc i32 %and6 to i16, !dbg !6757
  store i16 %conv7, ptr %val, align 2, !dbg !6757
  store i32 0, ptr %i, align 4, !dbg !6758
  br label %for.cond, !dbg !6760

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4, !dbg !6761
  %conv8 = sext i32 %6 to i64, !dbg !6761
  %cmp9 = icmp ult i64 %conv8, 8, !dbg !6763
  br i1 %cmp9, label %for.body, label %for.end, !dbg !6764

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6765
  %8 = load i16, ptr %val, align 2, !dbg !6766
  %conv11 = zext i16 %8 to i32, !dbg !6766
  %9 = load i32, ptr %i, align 4, !dbg !6767
  %idxprom = sext i32 %9 to i64, !dbg !6768
  %arrayidx = getelementptr [8 x i16], ptr @rtl8168d_1_common.set, i64 0, i64 %idxprom, !dbg !6768
  %10 = load i16, ptr %arrayidx, align 2, !dbg !6768
  %conv12 = zext i16 %10 to i32, !dbg !6768
  %or = or i32 %conv11, %conv12, !dbg !6769
  %conv13 = trunc i32 %or to i16, !dbg !6766
  %call14 = call i32 @phy_write(ptr noundef %7, i32 noundef 13, i16 noundef zeroext %conv13) #6, !dbg !6770
  br label %for.inc, !dbg !6770

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !6771
  %inc = add i32 %11, 1, !dbg !6771
  store i32 %inc, ptr %i, align 4, !dbg !6771
  br label %for.cond, !dbg !6772, !llvm.loop !6773

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !6775
  br label %if.end, !dbg !6776

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 2, ptr %val) #7, !dbg !6777
  ret void, !dbg !6777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @r8168d_phy_param(ptr noundef %phydev, i16 noundef zeroext %parm, i16 noundef zeroext %mask, i16 noundef zeroext %val) #0 align 16 !dbg !6778 {
entry:
  %phydev.addr = alloca ptr, align 8
  %parm.addr = alloca i16, align 2
  %mask.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %oldpage = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6782, metadata !DIExpression()), !dbg !6787
  store i16 %parm, ptr %parm.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %parm.addr, metadata !6783, metadata !DIExpression()), !dbg !6788
  store i16 %mask, ptr %mask.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6784, metadata !DIExpression()), !dbg !6789
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6785, metadata !DIExpression()), !dbg !6790
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldpage) #7, !dbg !6791
  call void @llvm.dbg.declare(metadata ptr %oldpage, metadata !6786, metadata !DIExpression()), !dbg !6792
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6793
  %call = call i32 @phy_select_page(ptr noundef %0, i32 noundef 5) #6, !dbg !6794
  store i32 %call, ptr %oldpage, align 4, !dbg !6792
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6795
  %2 = load i16, ptr %parm.addr, align 2, !dbg !6796
  %call1 = call i32 @__phy_write(ptr noundef %1, i32 noundef 5, i16 noundef zeroext %2) #6, !dbg !6797
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6798
  %4 = load i16, ptr %mask.addr, align 2, !dbg !6799
  %5 = load i16, ptr %val.addr, align 2, !dbg !6800
  %call2 = call i32 @__phy_modify(ptr noundef %3, i32 noundef 6, i16 noundef zeroext %4, i16 noundef zeroext %5) #6, !dbg !6801
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6802
  %7 = load i32, ptr %oldpage, align 4, !dbg !6803
  %call3 = call i32 @phy_restore_page(ptr noundef %6, i32 noundef %7, i32 noundef 0) #6, !dbg !6804
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldpage) #7, !dbg !6805
  ret void, !dbg !6805
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_clear_bits(ptr noundef %phydev, i32 noundef %regnum, i16 noundef zeroext %val) #2 align 16 !dbg !6806 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6808, metadata !DIExpression()), !dbg !6811
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6809, metadata !DIExpression()), !dbg !6812
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6810, metadata !DIExpression()), !dbg !6813
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6814
  %1 = load i32, ptr %regnum.addr, align 4, !dbg !6815
  %2 = load i16, ptr %val.addr, align 2, !dbg !6816
  %call = call i32 @phy_modify(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext 0) #6, !dbg !6817
  ret i32 %call, !dbg !6818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168d_apply_firmware_cond(ptr noundef %tp, ptr noundef %phydev, i16 noundef zeroext %val) #0 align 16 !dbg !6819 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  %reg_val = alloca i16, align 2
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6823, metadata !DIExpression()), !dbg !6827
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6824, metadata !DIExpression()), !dbg !6828
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6825, metadata !DIExpression()), !dbg !6829
  call void @llvm.lifetime.start.p0(i64 2, ptr %reg_val) #7, !dbg !6830
  call void @llvm.dbg.declare(metadata ptr %reg_val, metadata !6826, metadata !DIExpression()), !dbg !6831
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6832
  %call = call i32 @phy_write(ptr noundef %0, i32 noundef 31, i16 noundef zeroext 5) #6, !dbg !6833
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6834
  %call1 = call i32 @phy_write(ptr noundef %1, i32 noundef 5, i16 noundef zeroext 27) #6, !dbg !6835
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6836
  %call2 = call i32 @phy_read(ptr noundef %2, i32 noundef 6) #6, !dbg !6837
  %conv = trunc i32 %call2 to i16, !dbg !6837
  store i16 %conv, ptr %reg_val, align 2, !dbg !6838
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6839
  %call3 = call i32 @phy_write(ptr noundef %3, i32 noundef 31, i16 noundef zeroext 0) #6, !dbg !6840
  %4 = load i16, ptr %reg_val, align 2, !dbg !6841
  %conv4 = zext i16 %4 to i32, !dbg !6841
  %5 = load i16, ptr %val.addr, align 2, !dbg !6843
  %conv5 = zext i16 %5 to i32, !dbg !6843
  %cmp = icmp ne i32 %conv4, %conv5, !dbg !6844
  br i1 %cmp, label %if.then, label %if.else, !dbg !6845

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6846

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6848

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6848

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6846
  %mdio = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 0, !dbg !6846
  %dev = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 0, !dbg !6846
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef @.str) #8, !dbg !6846
  br label %if.end, !dbg !6850

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %tp.addr, align 8, !dbg !6851
  call void @r8169_apply_firmware(ptr noundef %7) #6, !dbg !6852
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr %reg_val) #7, !dbg !6853
  ret void, !dbg !6853
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @phy_read(ptr noundef %phydev, i32 noundef %regnum) #2 align 16 !dbg !6854 {
entry:
  %phydev.addr = alloca ptr, align 8
  %regnum.addr = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6858, metadata !DIExpression()), !dbg !6860
  store i32 %regnum, ptr %regnum.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regnum.addr, metadata !6859, metadata !DIExpression()), !dbg !6861
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6862
  %mdio = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 0, !dbg !6863
  %bus = getelementptr inbounds %struct.mdio_device, ptr %mdio, i32 0, i32 1, !dbg !6864
  %1 = load ptr, ptr %bus, align 8, !dbg !6864
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6865
  %mdio1 = getelementptr inbounds %struct.phy_device, ptr %2, i32 0, i32 0, !dbg !6866
  %addr = getelementptr inbounds %struct.mdio_device, ptr %mdio1, i32 0, i32 6, !dbg !6867
  %3 = load i32, ptr %addr, align 8, !dbg !6867
  %4 = load i32, ptr %regnum.addr, align 4, !dbg !6868
  %call = call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef %4) #6, !dbg !6869
  ret i32 %call, !dbg !6870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6871 dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6874 dso_local i32 @phy_select_page(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6875 dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6876 dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6879 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6883 dso_local void @r8169_apply_firmware(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @r8168d_modify_extpage(ptr noundef %phydev, i32 noundef %extpage, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) #0 align 16 !dbg !6886 {
entry:
  %phydev.addr = alloca ptr, align 8
  %extpage.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %oldpage = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6890, metadata !DIExpression()), !dbg !6896
  store i32 %extpage, ptr %extpage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %extpage.addr, metadata !6891, metadata !DIExpression()), !dbg !6897
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !6892, metadata !DIExpression()), !dbg !6898
  store i16 %mask, ptr %mask.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6893, metadata !DIExpression()), !dbg !6899
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6894, metadata !DIExpression()), !dbg !6900
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldpage) #7, !dbg !6901
  call void @llvm.dbg.declare(metadata ptr %oldpage, metadata !6895, metadata !DIExpression()), !dbg !6902
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6903
  %call = call i32 @phy_select_page(ptr noundef %0, i32 noundef 7) #6, !dbg !6904
  store i32 %call, ptr %oldpage, align 4, !dbg !6902
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6905
  %2 = load i32, ptr %extpage.addr, align 4, !dbg !6906
  %conv = trunc i32 %2 to i16, !dbg !6906
  %call1 = call i32 @__phy_write(ptr noundef %1, i32 noundef 30, i16 noundef zeroext %conv) #6, !dbg !6907
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6908
  %4 = load i32, ptr %reg.addr, align 4, !dbg !6909
  %5 = load i16, ptr %mask.addr, align 2, !dbg !6910
  %6 = load i16, ptr %val.addr, align 2, !dbg !6911
  %call2 = call i32 @__phy_modify(ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6) #6, !dbg !6912
  %7 = load ptr, ptr %phydev.addr, align 8, !dbg !6913
  %8 = load i32, ptr %oldpage, align 4, !dbg !6914
  %call3 = call i32 @phy_restore_page(ptr noundef %7, i32 noundef %8, i32 noundef 0) #6, !dbg !6915
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldpage) #7, !dbg !6916
  ret void, !dbg !6916
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6917 dso_local void @msleep(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6921 dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168f_config_eee_phy(ptr noundef %phydev) #0 align 16 !dbg !6922 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6924, metadata !DIExpression()), !dbg !6925
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6926
  call void @r8168d_modify_extpage(ptr noundef %0, i32 noundef 32, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 256) #6, !dbg !6927
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6928
  call void @r8168d_phy_param(ptr noundef %1, i16 noundef zeroext -29819, i16 noundef zeroext 0, i16 noundef zeroext 8192) #6, !dbg !6929
  ret void, !dbg !6930
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168f_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 16 !dbg !6931 {
entry:
  %tp.addr = alloca ptr, align 8
  %phydev.addr = alloca ptr, align 8
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !6933, metadata !DIExpression()), !dbg !6935
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6934, metadata !DIExpression()), !dbg !6936
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6937
  call void @r8168d_phy_param(ptr noundef %0, i16 noundef zeroext -29824, i16 noundef zeroext 0, i16 noundef zeroext 6) #6, !dbg !6938
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6939
  call void @r8168d_modify_extpage(ptr noundef %1, i32 noundef 45, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 16) #6, !dbg !6940
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6941
  %call = call i32 @phy_set_bits(ptr noundef %2, i32 noundef 20, i16 noundef zeroext -32768) #6, !dbg !6942
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6943
  call void @r8168d_phy_param(ptr noundef %3, i16 noundef zeroext -29818, i16 noundef zeroext 0, i16 noundef zeroext 1) #6, !dbg !6944
  %4 = load ptr, ptr %phydev.addr, align 8, !dbg !6945
  call void @rtl8168f_config_eee_phy(ptr noundef %4) #6, !dbg !6946
  ret void, !dbg !6947
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6948 dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168g_phy_adjust_10m_aldps(ptr noundef %phydev) #0 align 16 !dbg !6951 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6953, metadata !DIExpression()), !dbg !6954
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6955
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #6, !dbg !6956
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6957
  %call1 = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #6, !dbg !6958
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !6959
  call void @r8168g_phy_param(ptr noundef %2, i16 noundef zeroext -32636, i16 noundef zeroext 24576, i16 noundef zeroext 0) #6, !dbg !6960
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6961
  %call2 = call i32 @phy_modify_paged(ptr noundef %3, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #6, !dbg !6962
  ret void, !dbg !6963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @r8168g_phy_param(ptr noundef %phydev, i16 noundef zeroext %parm, i16 noundef zeroext %mask, i16 noundef zeroext %val) #0 align 16 !dbg !6964 {
entry:
  %phydev.addr = alloca ptr, align 8
  %parm.addr = alloca i16, align 2
  %mask.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %oldpage = alloca i32, align 4
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6966, metadata !DIExpression()), !dbg !6971
  store i16 %parm, ptr %parm.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %parm.addr, metadata !6967, metadata !DIExpression()), !dbg !6972
  store i16 %mask, ptr %mask.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6968, metadata !DIExpression()), !dbg !6973
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6969, metadata !DIExpression()), !dbg !6974
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldpage) #7, !dbg !6975
  call void @llvm.dbg.declare(metadata ptr %oldpage, metadata !6970, metadata !DIExpression()), !dbg !6976
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6977
  %call = call i32 @phy_select_page(ptr noundef %0, i32 noundef 2627) #6, !dbg !6978
  store i32 %call, ptr %oldpage, align 4, !dbg !6976
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !6979
  %2 = load i16, ptr %parm.addr, align 2, !dbg !6980
  %call1 = call i32 @__phy_write(ptr noundef %1, i32 noundef 19, i16 noundef zeroext %2) #6, !dbg !6981
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !6982
  %4 = load i16, ptr %mask.addr, align 2, !dbg !6983
  %5 = load i16, ptr %val.addr, align 2, !dbg !6984
  %call2 = call i32 @__phy_modify(ptr noundef %3, i32 noundef 20, i16 noundef zeroext %4, i16 noundef zeroext %5) #6, !dbg !6985
  %6 = load ptr, ptr %phydev.addr, align 8, !dbg !6986
  %7 = load i32, ptr %oldpage, align 4, !dbg !6987
  %call3 = call i32 @phy_restore_page(ptr noundef %6, i32 noundef %7, i32 noundef 0) #6, !dbg !6988
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldpage) #7, !dbg !6989
  ret void, !dbg !6989
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168g_disable_aldps(ptr noundef %phydev) #0 align 16 !dbg !6990 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6992, metadata !DIExpression()), !dbg !6993
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !6994
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #6, !dbg !6995
  ret void, !dbg !6996
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168g_config_eee_phy(ptr noundef %phydev) #0 align 16 !dbg !6997 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !6999, metadata !DIExpression()), !dbg !7000
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7001
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #6, !dbg !7002
  ret void, !dbg !7003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168g_enable_gphy_10m(ptr noundef %phydev) #0 align 16 !dbg !7004 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7006, metadata !DIExpression()), !dbg !7007
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7008
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #6, !dbg !7009
  ret void, !dbg !7010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7011 dso_local zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8168h_config_eee_phy(ptr noundef %phydev) #0 align 16 !dbg !7014 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7016, metadata !DIExpression()), !dbg !7017
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7018
  call void @rtl8168g_config_eee_phy(ptr noundef %0) #6, !dbg !7019
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7020
  %call = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #6, !dbg !7021
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7022
  %call1 = call i32 @phy_modify_paged(ptr noundef %2, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #6, !dbg !7023
  ret void, !dbg !7024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8125a_config_eee_phy(ptr noundef %phydev) #0 align 16 !dbg !7025 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7027, metadata !DIExpression()), !dbg !7028
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7029
  call void @rtl8168h_config_eee_phy(ptr noundef %0) #6, !dbg !7030
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7031
  %call = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #6, !dbg !7032
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7033
  %call1 = call i32 @phy_modify_paged(ptr noundef %2, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #6, !dbg !7034
  ret void, !dbg !7035
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8125_legacy_force_mode(ptr noundef %phydev) #0 align 16 !dbg !7036 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7038, metadata !DIExpression()), !dbg !7039
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7040
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2651, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 0) #6, !dbg !7041
  ret void, !dbg !7042
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtl8125b_config_eee_phy(ptr noundef %phydev) #0 align 16 !dbg !7043 {
entry:
  %phydev.addr = alloca ptr, align 8
  store ptr %phydev, ptr %phydev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phydev.addr, metadata !7045, metadata !DIExpression()), !dbg !7046
  %0 = load ptr, ptr %phydev.addr, align 8, !dbg !7047
  %call = call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #6, !dbg !7048
  %1 = load ptr, ptr %phydev.addr, align 8, !dbg !7049
  %call1 = call i32 @phy_modify_paged(ptr noundef %1, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #6, !dbg !7050
  %2 = load ptr, ptr %phydev.addr, align 8, !dbg !7051
  %call2 = call i32 @phy_modify_paged(ptr noundef %2, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 128, i16 noundef zeroext 0) #6, !dbg !7052
  %3 = load ptr, ptr %phydev.addr, align 8, !dbg !7053
  %call3 = call i32 @phy_modify_paged(ptr noundef %3, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 512, i16 noundef zeroext 0) #6, !dbg !7054
  ret void, !dbg !7055
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!5575}
!llvm.module.flags = !{!5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694}
!llvm.ident = !{!5695}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "phy_configs", scope: !2, file: !3, line: 1110, type: !5681, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "r8169_hw_phy_config", scope: !3, file: !3, line: 1107, type: !4, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5677)
!3 = !DIFile(filename: "drivers/net/ethernet/realtek/r8169_phy_config.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80a41e2bda65470e664558326f1bb6a1")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !9, !5528}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtl8169_private", file: !8, line: 73, flags: DIFlagFwdDecl)
!8 = !DIFile(filename: "drivers/net/ethernet/realtek/r8169.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "890bf555cc96c38bd15c1d228b62e03b")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_device", file: !11, line: 634, size: 11264, elements: !12)
!11 = !DIFile(filename: "./include/linux/phy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "314b95e2c49d6373114a8f2977268af7")
!12 = !{!13, !4760, !5011, !5034, !5035, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5332, !5333, !5340, !5341, !5342, !5343, !5346, !5349, !5350, !5513, !5516, !5517, !5518, !5519, !5520, !5524}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "mdio", scope: !10, file: !11, line: 635, baseType: !14, size: 6592)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_device", file: !15, line: 28, size: 6592, elements: !16)
!15 = !DIFile(filename: "./include/linux/mdio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7e329aaa4a41f6bd61bafcd94e0d6a6")
!16 = !{!17, !4655, !4745, !4746, !4747, !4751, !4752, !4753, !4754, !4755, !4758, !4759}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !14, file: !15, line: 29, baseType: !18, size: 5824)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !19, line: 705, size: 5824, elements: !20)
!19 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!20 = !{!21, !4141, !4143, !4146, !4147, !4201, !4292, !4293, !4294, !4295, !4296, !4309, !4415, !4428, !4438, !4442, !4444, !4445, !4446, !4450, !4457, !4458, !4461, !4464, !4468, !4572, !4573, !4574, !4575, !4576, !4577, !4607, !4608, !4609, !4612, !4615, !4643, !4650, !4651, !4652, !4653, !4654}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !18, file: !19, line: 706, baseType: !22, size: 512)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !23, line: 64, size: 512, elements: !24)
!23 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!24 = !{!25, !29, !36, !38, !128, !4027, !4131, !4136, !4137, !4138, !4139, !4140}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !22, file: !23, line: 65, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !22, file: !23, line: 66, baseType: !30, size: 128, offset: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !31, line: 190, size: 128, elements: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !31, line: 191, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !30, file: !31, line: 191, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !22, file: !23, line: 67, baseType: !37, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !22, file: !23, line: 68, baseType: !39, size: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !23, line: 168, size: 768, elements: !41)
!41 = !{!42, !43, !87, !88}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !40, file: !23, line: 169, baseType: !30, size: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !40, file: !23, line: 170, baseType: !44, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !45, line: 29, baseType: !46)
!45 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !45, line: 17, size: 32, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, scope: !46, file: !45, line: 18, baseType: !49, size: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !46, file: !45, line: 18, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !49, file: !45, line: 19, baseType: !52, size: 32)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !53, line: 14, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !52, file: !53, line: 15, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !57, line: 44, baseType: !58)
!57 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !57, line: 14, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !57, line: 15, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !57, line: 15, size: 32, elements: !62)
!62 = !{!63, !69, !79}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !61, file: !57, line: 16, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !31, line: 174, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 172, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !65, file: !31, line: 173, baseType: !68, size: 32)
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !57, line: 24, baseType: !70, size: 16)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !61, file: !57, line: 24, size: 16, elements: !71)
!71 = !{!72, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !70, file: !57, line: 25, baseType: !73, size: 8)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !74, line: 17, baseType: !75)
!74 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !76, line: 21, baseType: !77)
!76 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !70, file: !57, line: 26, baseType: !73, size: 8, offset: 8)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !57, line: 28, baseType: !80, size: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !61, file: !57, line: 28, size: 32, elements: !81)
!81 = !{!82, !86}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !80, file: !57, line: 29, baseType: !83, size: 16)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !74, line: 19, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !76, line: 24, baseType: !85)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !80, file: !57, line: 30, baseType: !83, size: 16, offset: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !40, file: !23, line: 171, baseType: !22, size: 512, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !40, file: !23, line: 172, baseType: !89, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !23, line: 133, size: 192, elements: !92)
!92 = !{!93, !100, !105}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !91, file: !23, line: 134, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!68, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !23, line: 135, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!26, !98}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !91, file: !23, line: 136, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!68, !98, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !23, line: 125, size: 20736, elements: !112)
!112 = !{!113, !118, !122, !123, !127}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !111, file: !23, line: 126, baseType: !114, size: 192)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 192, elements: !116)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!116 = !{!117}
!117 = !DISubrange(count: 3)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !111, file: !23, line: 127, baseType: !119, size: 4096, offset: 192)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 4096, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !111, file: !23, line: 128, baseType: !68, size: 32, offset: 4288)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !111, file: !23, line: 129, baseType: !124, size: 16384, offset: 4320)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 16384, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 2048)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !111, file: !23, line: 130, baseType: !68, size: 32, offset: 20704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !22, file: !23, line: 69, baseType: !129, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !23, line: 116, size: 384, elements: !132)
!132 = !{!133, !137, !166, !3982, !4017, !4021}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !131, file: !23, line: 117, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !37}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !131, file: !23, line: 118, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !141, line: 254, size: 128, elements: !142)
!141 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!142 = !{!143, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !140, file: !141, line: 255, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !37, !152, !115}
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !31, line: 66, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !149, line: 73, baseType: !150)
!149 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !149, line: 15, baseType: !151)
!151 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !141, line: 30, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !141, line: 31, baseType: !26, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !153, file: !141, line: 32, baseType: !157, size: 16, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !31, line: 24, baseType: !85)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !140, file: !141, line: 256, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!147, !37, !152, !26, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 61, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !149, line: 72, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !149, line: 16, baseType: !165)
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !131, file: !23, line: 119, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !141, line: 84, size: 320, elements: !171)
!171 = !{!172, !173, !177, !3978, !3980}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !141, line: 85, baseType: !26, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !170, file: !141, line: 86, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!157, !37, !152, !68}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !170, file: !141, line: 88, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!157, !37, !181, !68}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !141, line: 175, size: 512, elements: !183)
!183 = !{!184, !185, !186, !188, !3969, !3973, !3974}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !182, file: !141, line: 176, baseType: !153, size: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !182, file: !141, line: 177, baseType: !162, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !182, file: !141, line: 178, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !182, file: !141, line: 179, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !194, line: 472, size: 1536, align: 64, elements: !195)
!194 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!195 = !{!196, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3963, !3964, !3965, !3966, !3967, !3968}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !193, file: !194, line: 473, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !194, line: 641, size: 4800, elements: !199)
!199 = !{!200, !201, !202, !211, !212, !219, !220, !223, !224, !3735, !3736, !3737, !3738, !3739, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3779, !3782, !3783, !3784, !3793, !3794, !3795, !3796}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !198, file: !194, line: 642, baseType: !157, size: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !198, file: !194, line: 643, baseType: !85, size: 16, offset: 16)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !198, file: !194, line: 644, baseType: !203, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !204, line: 23, baseType: !205)
!204 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 21, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !205, file: !204, line: 22, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !31, line: 37, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !149, line: 49, baseType: !210)
!210 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !198, file: !194, line: 645, baseType: !30, size: 128, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !198, file: !194, line: 646, baseType: !213, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !204, line: 28, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 26, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !214, file: !204, line: 27, baseType: !217, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !31, line: 38, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !149, line: 50, baseType: !210)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !198, file: !194, line: 647, baseType: !210, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !198, file: !194, line: 650, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !194, line: 607, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !198, file: !194, line: 651, baseType: !221, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !198, file: !194, line: 654, baseType: !225, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !194, line: 1966, size: 2048, align: 512, elements: !228)
!228 = !{!229, !3569, !3579, !3583, !3587, !3591, !3595, !3599, !3603, !3607, !3611, !3612, !3616, !3620, !3657, !3686, !3690, !3696, !3700, !3704, !3708, !3712, !3716, !3722, !3726}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !227, file: !194, line: 1967, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !197, !233, !210}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !235, line: 82, size: 1536, elements: !236)
!235 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!236 = !{!237, !238, !248, !256, !257, !277, !278, !282, !295, !3552, !3553, !3554, !3555, !3561, !3562, !3563}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !234, file: !235, line: 84, baseType: !210, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !234, file: !235, line: 85, baseType: !239, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !240, line: 275, baseType: !241)
!240 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !240, line: 275, size: 32, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !241, file: !240, line: 275, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !240, line: 69, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !240, line: 64, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !245, file: !240, line: 65, baseType: !210, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !234, file: !235, line: 86, baseType: !249, size: 128, offset: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !250, line: 38, size: 128, elements: !251)
!250 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !250, line: 39, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !249, file: !250, line: 39, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !234, file: !235, line: 87, baseType: !233, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !234, file: !235, line: 88, baseType: !258, size: 128, offset: 256)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !235, line: 49, size: 128, elements: !259)
!259 = !{!260, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !235, line: 50, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !235, line: 50, size: 64, elements: !262)
!262 = !{!263, !270}
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !235, line: 51, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !261, file: !235, line: 51, size: 64, elements: !265)
!265 = !{!266, !269}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !264, file: !235, line: 52, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !74, line: 21, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !76, line: 27, baseType: !210)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !235, line: 52, baseType: !267, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !261, file: !235, line: 54, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !74, line: 23, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !76, line: 31, baseType: !273)
!273 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !235, line: 56, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !234, file: !235, line: 89, baseType: !197, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !234, file: !235, line: 91, baseType: !279, size: 256, offset: 448)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !234, file: !235, line: 94, baseType: !283, size: 64, offset: 704)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !284, line: 25, size: 64, elements: !285)
!284 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 26, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 26, size: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !287, file: !284, line: 28, baseType: !272, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !284, line: 30, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !287, file: !284, line: 30, size: 64, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !291, file: !284, line: 31, baseType: !44, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !291, file: !284, line: 32, baseType: !68, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !234, file: !235, line: 95, baseType: !296, size: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !235, line: 128, size: 1024, align: 512, elements: !299)
!299 = !{!300, !304, !305, !312, !318, !322, !326, !330, !331, !335, !339, !3542, !3546}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !298, file: !235, line: 129, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!68, !233, !210}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !298, file: !235, line: 130, baseType: !301, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !298, file: !235, line: 131, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!68, !309, !311}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !298, file: !235, line: 132, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!68, !309, !210, !26, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !298, file: !235, line: 134, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!68, !309}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !298, file: !235, line: 135, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!68, !233}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !298, file: !235, line: 136, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !233}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !298, file: !235, line: 137, baseType: !327, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !298, file: !235, line: 138, baseType: !332, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !233, !197}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !298, file: !235, line: 139, baseType: !336, size: 64, offset: 576)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!115, !233, !115, !68}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !298, file: !235, line: 140, baseType: !340, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !3541}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !345, line: 70, size: 256, elements: !346)
!345 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!346 = !{!347, !348, !3537, !3538}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !344, file: !345, line: 71, baseType: !233, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !344, file: !345, line: 72, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !194, line: 1190, size: 10752, elements: !351)
!351 = !{!352, !353, !356, !357, !358, !362, !848, !999, !1039, !1129, !1133, !1134, !1135, !1136, !1137, !1146, !1147, !1148, !1149, !1154, !1158, !1159, !1162, !1165, !1168, !1171, !1172, !1173, !1214, !3470, !3471, !3472, !3473, !3474, !3475, !3478, !3480, !3487, !3488, !3489, !3490, !3491, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !350, file: !194, line: 1191, baseType: !30, size: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !350, file: !194, line: 1192, baseType: !354, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !31, line: 21, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !31, line: 18, baseType: !267)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !350, file: !194, line: 1193, baseType: !77, size: 8, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !350, file: !194, line: 1194, baseType: !165, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !350, file: !194, line: 1195, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !31, line: 52, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !149, line: 88, baseType: !361)
!361 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !350, file: !194, line: 1196, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !194, line: 2366, size: 576, elements: !365)
!365 = !{!366, !367, !368, !374, !378, !382, !386, !833, !834, !838, !840, !841, !842, !844, !845, !846, !847}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !194, line: 2367, baseType: !26, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !364, file: !194, line: 2368, baseType: !68, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !364, file: !194, line: 2376, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!68, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !345, line: 21, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !364, file: !194, line: 2377, baseType: !375, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !194, line: 75, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !364, file: !194, line: 2378, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!233, !363, !68, !26, !187}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !364, file: !194, line: 2380, baseType: !383, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !349}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !364, file: !194, line: 2381, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !389, line: 402, size: 9216, align: 512, elements: !390)
!389 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!390 = !{!391, !398, !399, !403, !425, !451, !452, !453, !454, !458, !463, !464, !484, !540, !541, !542, !543, !544, !547, !548, !549, !557, !561, !588, !609, !610, !611, !612, !621, !644, !645, !648, !651, !652, !653, !654, !655, !656, !657, !662, !663, !791, !799, !800, !801, !803, !807, !808, !812, !813, !814, !815, !817, !818, !819, !826, !827, !828, !832}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !388, file: !389, line: 403, baseType: !392, size: 32)
!392 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !389, line: 312, baseType: !210, size: 32, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!395 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!396 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!397 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !388, file: !389, line: 406, baseType: !30, size: 128, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !388, file: !389, line: 409, baseType: !400, size: 448, offset: 192)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 448, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 56)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !388, file: !389, line: 417, baseType: !404, size: 768, offset: 640)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !389, line: 45, size: 768, elements: !405)
!405 = !{!406, !407, !408, !409, !412}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !404, file: !389, line: 46, baseType: !22, size: 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !404, file: !389, line: 47, baseType: !387, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !404, file: !389, line: 48, baseType: !37, size: 64, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !404, file: !389, line: 49, baseType: !410, size: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !389, line: 49, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !404, file: !389, line: 50, baseType: !413, size: 64, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !415, line: 26, size: 256, elements: !416)
!415 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !414, file: !415, line: 27, baseType: !210, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !414, file: !415, line: 28, baseType: !419, size: 192, offset: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !420, line: 43, size: 192, elements: !421)
!420 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!421 = !{!422, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !419, file: !420, line: 44, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !53, line: 23, baseType: !52)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !419, file: !420, line: 45, baseType: !30, size: 128, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !388, file: !389, line: 418, baseType: !426, size: 64, offset: 1408)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !389, line: 53, size: 448, elements: !428)
!428 = !{!429, !430, !435, !439, !443, !447}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !427, file: !389, line: 54, baseType: !153, size: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !427, file: !389, line: 55, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!147, !426, !434, !115}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !427, file: !389, line: 57, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!147, !426, !434, !26, !162}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !427, file: !389, line: 59, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !387, !26}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !427, file: !389, line: 60, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!68, !387}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !427, file: !389, line: 61, baseType: !448, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !387}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !388, file: !389, line: 419, baseType: !26, size: 64, offset: 1472)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !388, file: !389, line: 420, baseType: !26, size: 64, offset: 1536)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !388, file: !389, line: 421, baseType: !37, size: 64, offset: 1600)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !388, file: !389, line: 424, baseType: !455, size: 64, offset: 1664)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !389, line: 424, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !388, file: !389, line: 425, baseType: !459, size: 64, offset: 1728)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !74, line: 20, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !76, line: 26, baseType: !68)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !388, file: !389, line: 426, baseType: !210, size: 32, offset: 1792)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !388, file: !389, line: 435, baseType: !465, size: 256, offset: 1856)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !466, line: 66, size: 256, elements: !467)
!466 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!467 = !{!468, !477, !478, !483}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !465, file: !466, line: 67, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !470, line: 13, baseType: !471)
!470 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !31, line: 181, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 179, size: 64, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !472, file: !31, line: 180, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !74, line: 22, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !76, line: 30, baseType: !361)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !465, file: !466, line: 68, baseType: !423, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !465, file: !466, line: 70, baseType: !479, size: 32, offset: 96)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !480, line: 15, size: 32, elements: !481)
!480 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !479, file: !480, line: 20, baseType: !64, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !465, file: !466, line: 72, baseType: !30, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !388, file: !389, line: 437, baseType: !485, size: 64, offset: 2112)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !487, line: 69, size: 320, elements: !488)
!487 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!488 = !{!489, !490, !491, !511, !513, !517, !518}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !487, line: 70, baseType: !26, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !486, file: !487, line: 71, baseType: !387, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !486, file: !487, line: 72, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !487, line: 47, size: 256, elements: !495)
!495 = !{!496, !497, !503, !507}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !487, line: 49, baseType: !210, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !494, file: !487, line: 51, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!68, !26, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !494, file: !487, line: 53, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!68, !115, !501}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !494, file: !487, line: 55, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !187}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !486, file: !487, line: 73, baseType: !512, size: 16, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !486, file: !487, line: 74, baseType: !514, size: 8, offset: 208)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !74, line: 16, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !76, line: 20, baseType: !516)
!516 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !487, line: 75, baseType: !73, size: 8, offset: 216)
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !487, line: 76, baseType: !519, size: 64, offset: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !487, line: 76, size: 64, elements: !520)
!520 = !{!521, !522, !529}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !519, file: !487, line: 77, baseType: !187, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !519, file: !487, line: 78, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !487, line: 86, size: 128, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !525, file: !487, line: 87, baseType: !210, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !525, file: !487, line: 88, baseType: !115, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !519, file: !487, line: 79, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !487, line: 92, size: 256, elements: !533)
!533 = !{!534, !535, !536, !538, !539}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !532, file: !487, line: 94, baseType: !210, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !532, file: !487, line: 95, baseType: !210, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !532, file: !487, line: 96, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !532, file: !487, line: 97, baseType: !492, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !532, file: !487, line: 98, baseType: !187, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !388, file: !389, line: 438, baseType: !210, size: 32, offset: 2176)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !388, file: !389, line: 441, baseType: !210, size: 32, offset: 2208)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !388, file: !389, line: 442, baseType: !455, size: 64, offset: 2240)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !388, file: !389, line: 443, baseType: !459, size: 64, offset: 2304)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !388, file: !389, line: 444, baseType: !545, size: 8, offset: 2368)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !546)
!546 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !388, file: !389, line: 451, baseType: !545, size: 8, offset: 2376)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !388, file: !389, line: 454, baseType: !210, size: 32, offset: 2400)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !388, file: !389, line: 455, baseType: !550, size: 64, offset: 2432)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !552, line: 23, size: 96, elements: !553)
!552 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!553 = !{!554, !555, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !551, file: !552, line: 24, baseType: !68, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !551, file: !552, line: 24, baseType: !68, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !551, file: !552, line: 24, baseType: !68, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !388, file: !389, line: 458, baseType: !558, size: 64, offset: 2496)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!68}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !388, file: !389, line: 460, baseType: !562, size: 4032, align: 512, offset: 2560)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 4032, elements: !586)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !389, line: 362, size: 576, elements: !564)
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !563, file: !389, line: 363, baseType: !187, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !563, file: !389, line: 364, baseType: !210, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !563, file: !389, line: 367, baseType: !568, size: 448, offset: 128)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !389, line: 319, size: 448, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !568, file: !389, line: 320, baseType: !387, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !389, line: 321, baseType: !572, size: 384, offset: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !573, line: 40, size: 384, elements: !574)
!573 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !572, file: !573, line: 41, baseType: !576, size: 384, align: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 384, align: 64, elements: !584)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !578, line: 5, size: 192, align: 64, elements: !579)
!578 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!579 = !{!580, !581, !583}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !577, file: !578, line: 6, baseType: !165, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !577, file: !578, line: 7, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !577, file: !578, line: 8, baseType: !582, size: 64, offset: 128)
!584 = !{!585}
!585 = !DISubrange(count: 2)
!586 = !{!587}
!587 = !DISubrange(count: 7)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !388, file: !389, line: 463, baseType: !589, size: 192, offset: 6592)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !590, line: 8, size: 192, elements: !591)
!590 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!591 = !{!592, !593, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !589, file: !590, line: 10, baseType: !210, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !589, file: !590, line: 11, baseType: !594, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !589, file: !590, line: 12, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !598, line: 59, size: 48, elements: !599)
!598 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!599 = !{!600, !604, !605, !606, !607, !608}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !597, file: !598, line: 60, baseType: !601, size: 16)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !74, line: 18, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !76, line: 23, baseType: !603)
!603 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !597, file: !598, line: 61, baseType: !601, size: 16, offset: 16)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !597, file: !598, line: 63, baseType: !210, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !597, file: !598, line: 64, baseType: !210, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !598, line: 65, baseType: !210, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !597, file: !598, line: 66, baseType: !210, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !388, file: !389, line: 465, baseType: !165, size: 64, offset: 6784)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !388, file: !389, line: 469, baseType: !210, size: 32, offset: 6848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !388, file: !389, line: 470, baseType: !30, size: 128, offset: 6912)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !388, file: !389, line: 471, baseType: !613, size: 64, offset: 7040)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !615, line: 33, size: 96, elements: !616)
!615 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!616 = !{!617, !618, !619, !620}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !614, file: !615, line: 37, baseType: !68, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !614, file: !615, line: 43, baseType: !68, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !614, file: !615, line: 45, baseType: !85, size: 16, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !615, line: 47, baseType: !85, size: 16, offset: 80)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !388, file: !389, line: 476, baseType: !622, size: 64, offset: 7104)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !389, line: 378, size: 256, elements: !624)
!624 = !{!625, !641, !642, !643}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !623, file: !389, line: 379, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !628, line: 204, baseType: !629)
!628 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !628, line: 197, size: 192, elements: !630)
!630 = !{!631, !633, !634, !635, !637, !639}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !629, file: !628, line: 198, baseType: !632, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !628, line: 21, baseType: !268)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !629, file: !628, line: 199, baseType: !77, size: 8, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !629, file: !628, line: 200, baseType: !77, size: 8, offset: 40)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !629, file: !628, line: 201, baseType: !636, size: 16, offset: 48)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !628, line: 17, baseType: !84)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !629, file: !628, line: 202, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !628, line: 16, baseType: !272)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !629, file: !628, line: 203, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !628, line: 22, baseType: !272)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !623, file: !389, line: 380, baseType: !210, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !623, file: !389, line: 381, baseType: !115, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !623, file: !389, line: 382, baseType: !115, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !388, file: !389, line: 477, baseType: !623, size: 256, offset: 7168)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !388, file: !389, line: 480, baseType: !646, size: 64, offset: 7424)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !389, line: 480, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !388, file: !389, line: 483, baseType: !649, size: 64, offset: 7488)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !389, line: 483, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !388, file: !389, line: 488, baseType: !115, size: 64, offset: 7552)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !388, file: !389, line: 492, baseType: !187, size: 64, offset: 7616)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !388, file: !389, line: 493, baseType: !210, size: 32, offset: 7680)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !388, file: !389, line: 495, baseType: !187, size: 64, offset: 7744)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !388, file: !389, line: 496, baseType: !210, size: 32, offset: 7808)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !388, file: !389, line: 499, baseType: !210, size: 32, offset: 7840)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !388, file: !389, line: 500, baseType: !658, size: 64, offset: 7872)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !660, line: 45, baseType: !661)
!660 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !388, file: !389, line: 503, baseType: !210, size: 32, offset: 7936)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !388, file: !389, line: 504, baseType: !664, size: 64, offset: 8000)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !667, line: 96, size: 192, elements: !668)
!667 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!668 = !{!669, !670, !751, !755}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !666, file: !667, line: 97, baseType: !210, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !666, file: !667, line: 98, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !667, line: 24, size: 3072, elements: !673)
!673 = !{!674, !676, !677, !678, !679, !703, !704, !705, !706, !724, !736, !737, !748, !749, !750}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !672, file: !667, line: 26, baseType: !675, size: 128)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 128, elements: !584)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !672, file: !667, line: 27, baseType: !675, size: 128, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !672, file: !667, line: 28, baseType: !68, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !667, line: 31, baseType: !44, size: 32, align: 512, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !672, file: !667, line: 32, baseType: !680, size: 960, offset: 576)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !681, line: 206, size: 960, elements: !682)
!681 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!682 = !{!683, !692, !697, !699, !700, !702}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !680, file: !681, line: 207, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !31, line: 232, size: 128, align: 64, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !31, line: 233, baseType: !684, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !685, file: !31, line: 234, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !684}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !680, file: !681, line: 208, baseType: !693, size: 256, offset: 64)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 256, elements: !695)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!695 = !{!696}
!696 = !DISubrange(count: 4)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !680, file: !681, line: 209, baseType: !698, size: 256, offset: 320)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !695)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !680, file: !681, line: 213, baseType: !151, size: 64, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !680, file: !681, line: 215, baseType: !701, size: 256, offset: 640)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !695)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 216, baseType: !73, size: 8, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !672, file: !667, line: 33, baseType: !165, size: 64, offset: 1536)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !672, file: !667, line: 34, baseType: !165, size: 64, offset: 1600)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !672, file: !667, line: 35, baseType: !545, size: 8, offset: 1664)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !672, file: !667, line: 36, baseType: !707, size: 320, offset: 1728)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !708, line: 11, size: 320, elements: !709)
!708 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!709 = !{!710, !717, !718, !723}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !707, file: !708, line: 16, baseType: !711, size: 128)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !31, line: 198, size: 128, elements: !712)
!712 = !{!713, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !31, line: 199, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !711, file: !31, line: 199, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !707, file: !708, line: 17, baseType: !165, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !707, file: !708, line: 18, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !708, line: 19, baseType: !267, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !672, file: !667, line: 37, baseType: !725, size: 256, offset: 2048)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !726, line: 98, size: 256, elements: !727)
!726 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!727 = !{!728, !729, !730}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !725, file: !726, line: 99, baseType: !469, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !725, file: !726, line: 100, baseType: !30, size: 128, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !725, file: !726, line: 101, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !726, line: 21, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !672, file: !667, line: 38, baseType: !685, size: 128, align: 64, offset: 2304)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !672, file: !667, line: 39, baseType: !738, size: 64, offset: 2432)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !667, line: 49, size: 768, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !667, line: 50, baseType: !44, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !739, file: !667, line: 51, baseType: !698, size: 256, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !739, file: !667, line: 53, baseType: !698, size: 256, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !739, file: !667, line: 54, baseType: !165, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !739, file: !667, line: 55, baseType: !738, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !739, file: !667, line: 56, baseType: !68, size: 32, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !739, file: !667, line: 57, baseType: !68, size: 32, offset: 736)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !672, file: !667, line: 40, baseType: !165, size: 64, offset: 2496)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !672, file: !667, line: 42, baseType: !68, size: 32, offset: 2560)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !672, file: !667, line: 43, baseType: !665, size: 64, offset: 2624)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !666, file: !667, line: 99, baseType: !752, offset: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !753, line: 211, elements: !754)
!753 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!754 = !{}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !666, file: !667, line: 100, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !667, line: 63, size: 3008, elements: !758)
!758 = !{!759, !760, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !790}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !667, line: 64, baseType: !738, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !757, file: !667, line: 65, baseType: !761, size: 192, offset: 64)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 192, elements: !116)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !757, file: !667, line: 67, baseType: !68, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !757, file: !667, line: 68, baseType: !465, size: 256, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !757, file: !667, line: 69, baseType: !44, size: 32, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !757, file: !667, line: 70, baseType: !465, size: 256, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !757, file: !667, line: 71, baseType: !165, size: 64, offset: 896)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !757, file: !667, line: 72, baseType: !165, size: 64, offset: 960)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !757, file: !667, line: 73, baseType: !165, size: 64, offset: 1024)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !757, file: !667, line: 74, baseType: !165, size: 64, offset: 1088)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !757, file: !667, line: 75, baseType: !165, size: 64, offset: 1152)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !757, file: !667, line: 76, baseType: !165, size: 64, offset: 1216)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !757, file: !667, line: 77, baseType: !165, size: 64, offset: 1280)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !757, file: !667, line: 78, baseType: !165, size: 64, offset: 1344)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !757, file: !667, line: 79, baseType: !545, size: 8, offset: 1408)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !757, file: !667, line: 80, baseType: !165, size: 64, offset: 1472)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !757, file: !667, line: 81, baseType: !465, size: 256, offset: 1536)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !757, file: !667, line: 82, baseType: !414, size: 256, offset: 1792)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !757, file: !667, line: 84, baseType: !64, size: 32, offset: 2048)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !757, file: !667, line: 87, baseType: !165, size: 64, offset: 2112)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !757, file: !667, line: 88, baseType: !165, size: 64, offset: 2176)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !757, file: !667, line: 89, baseType: !782, size: 704, offset: 2240)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !726, line: 111, size: 704, elements: !783)
!783 = !{!784, !785, !786, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !782, file: !726, line: 112, baseType: !725, size: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !782, file: !726, line: 113, baseType: !707, size: 320, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !782, file: !726, line: 116, baseType: !787, size: 64, offset: 576)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !726, line: 18, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !782, file: !726, line: 117, baseType: !68, size: 32, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !757, file: !667, line: 90, baseType: !665, size: 64, offset: 2944)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !388, file: !389, line: 515, baseType: !792, size: 64, offset: 8064)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !794, line: 117, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !793, file: !794, line: 118, baseType: !461, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !793, file: !794, line: 119, baseType: !461, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !793, file: !794, line: 120, baseType: !151, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !388, file: !389, line: 516, baseType: !210, size: 32, offset: 8128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !388, file: !389, line: 519, baseType: !210, size: 32, offset: 8160)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !388, file: !389, line: 520, baseType: !802, size: 64, offset: 8192)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !388, file: !389, line: 523, baseType: !804, size: 64, offset: 8256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !389, line: 523, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !388, file: !389, line: 524, baseType: !210, size: 32, offset: 8320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !388, file: !389, line: 525, baseType: !809, size: 64, offset: 8384)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !389, line: 525, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !388, file: !389, line: 526, baseType: !210, size: 32, offset: 8448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !388, file: !389, line: 533, baseType: !187, size: 64, offset: 8512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !388, file: !389, line: 534, baseType: !210, size: 32, offset: 8576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !388, file: !389, line: 535, baseType: !816, size: 64, offset: 8640)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !388, file: !389, line: 536, baseType: !210, size: 32, offset: 8704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !388, file: !389, line: 539, baseType: !68, size: 32, offset: 8736)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !388, file: !389, line: 540, baseType: !820, size: 64, offset: 8768)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !822, line: 32, size: 64, elements: !823)
!822 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !821, file: !822, line: 33, baseType: !461, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !821, file: !822, line: 34, baseType: !461, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !388, file: !389, line: 563, baseType: !30, size: 128, offset: 8832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !388, file: !389, line: 565, baseType: !30, size: 128, offset: 8960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !388, file: !389, line: 568, baseType: !829, size: 64, offset: 9088)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !388, file: !389, line: 570, baseType: !64, size: 32, offset: 9152)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !194, line: 2382, baseType: !363, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !364, file: !194, line: 2383, baseType: !835, size: 64, offset: 512)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !31, line: 194, size: 64, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !835, file: !31, line: 195, baseType: !714, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !364, file: !194, line: 2385, baseType: !839, offset: 576)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !753, line: 206, elements: !754)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !364, file: !194, line: 2386, baseType: !839, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !364, file: !194, line: 2387, baseType: !839, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !364, file: !194, line: 2388, baseType: !843, offset: 576)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, elements: !116)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !364, file: !194, line: 2390, baseType: !839, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !364, file: !194, line: 2391, baseType: !839, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !364, file: !194, line: 2392, baseType: !839, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !364, file: !194, line: 2393, baseType: !839, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !350, file: !194, line: 1197, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !194, line: 2057, size: 1664, elements: !852)
!852 = !{!853, !857, !861, !862, !866, !872, !876, !877, !878, !882, !890, !894, !895, !896, !902, !906, !907, !914, !915, !916, !917, !921, !925, !980, !997, !998}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !851, file: !194, line: 2058, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!197, !349}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !851, file: !194, line: 2059, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !197}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !851, file: !194, line: 2060, baseType: !858, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !851, file: !194, line: 2062, baseType: !863, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !197, !68}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !851, file: !194, line: 2063, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!68, !197, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !194, line: 309, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !851, file: !194, line: 2064, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!68, !197}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !851, file: !194, line: 2065, baseType: !858, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !851, file: !194, line: 2066, baseType: !383, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !851, file: !194, line: 2067, baseType: !879, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!68, !349, !68}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !851, file: !194, line: 2068, baseType: !883, size: 64, offset: 576)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!68, !349, !886}
!886 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !194, line: 2052, baseType: !210, size: 32, elements: !887)
!887 = !{!888, !889}
!888 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!889 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !851, file: !194, line: 2069, baseType: !891, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!68, !349}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !851, file: !194, line: 2070, baseType: !883, size: 64, offset: 704)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !851, file: !194, line: 2071, baseType: !891, size: 64, offset: 768)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !851, file: !194, line: 2072, baseType: !897, size: 64, offset: 832)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!68, !233, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !194, line: 62, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !851, file: !194, line: 2073, baseType: !903, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!68, !349, !594, !115}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !851, file: !194, line: 2074, baseType: !383, size: 64, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !851, file: !194, line: 2076, baseType: !908, size: 64, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!68, !911, !233}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !913, line: 66, flags: DIFlagFwdDecl)
!913 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !851, file: !194, line: 2077, baseType: !908, size: 64, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !851, file: !194, line: 2078, baseType: !908, size: 64, offset: 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !851, file: !194, line: 2079, baseType: !908, size: 64, offset: 1216)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !851, file: !194, line: 2081, baseType: !918, size: 64, offset: 1280)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!147, !349, !68, !115, !162, !359}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !851, file: !194, line: 2082, baseType: !922, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!147, !349, !68, !26, !162, !359}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !851, file: !194, line: 2083, baseType: !926, size: 64, offset: 1408)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!929, !197}
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !932, line: 296, size: 1664, elements: !933)
!932 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !942, !963, !964, !965}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !931, file: !932, line: 297, baseType: !711, size: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !931, file: !932, line: 298, baseType: !30, size: 128, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !931, file: !932, line: 299, baseType: !30, size: 128, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !931, file: !932, line: 300, baseType: !30, size: 128, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !931, file: !932, line: 301, baseType: !465, size: 256, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !931, file: !932, line: 302, baseType: !44, size: 32, offset: 768)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !931, file: !932, line: 303, baseType: !64, size: 32, offset: 800)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !931, file: !932, line: 304, baseType: !349, size: 64, offset: 832)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !931, file: !932, line: 305, baseType: !943, size: 64, offset: 896)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !932, line: 68, size: 64, elements: !944)
!944 = !{!945, !957}
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !932, line: 69, baseType: !946, size: 32)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !943, file: !932, line: 69, size: 32, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !946, file: !932, line: 70, baseType: !203, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !946, file: !932, line: 71, baseType: !213, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !946, file: !932, line: 72, baseType: !951, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !952, line: 24, baseType: !953)
!952 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !952, line: 22, size: 32, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !953, file: !952, line: 23, baseType: !956, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !952, line: 20, baseType: !209)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !943, file: !932, line: 74, baseType: !958, size: 32, offset: 32)
!958 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !932, line: 54, baseType: !210, size: 32, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIEnumerator(name: "USRQUOTA", value: 0)
!961 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!962 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !931, file: !932, line: 306, baseType: !359, size: 64, offset: 960)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !931, file: !932, line: 307, baseType: !165, size: 64, offset: 1024)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !931, file: !932, line: 308, baseType: !966, size: 576, offset: 1088)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !932, line: 205, size: 576, elements: !967)
!967 = !{!968, !970, !971, !972, !973, !974, !975, !976, !979}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !966, file: !932, line: 206, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !932, line: 66, baseType: !361)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !966, file: !932, line: 207, baseType: !969, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !966, file: !932, line: 208, baseType: !969, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !966, file: !932, line: 209, baseType: !969, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !966, file: !932, line: 210, baseType: !969, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !966, file: !932, line: 211, baseType: !969, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !966, file: !932, line: 212, baseType: !969, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !966, file: !932, line: 213, baseType: !977, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !978, line: 8, baseType: !476)
!978 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !966, file: !932, line: 214, baseType: !977, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !851, file: !194, line: 2085, baseType: !981, size: 64, offset: 1472)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!151, !349, !984}
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !986, line: 15, size: 256, elements: !987)
!986 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!987 = !{!988, !990, !991, !992, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !985, file: !986, line: 16, baseType: !989, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 154, baseType: !210)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !985, file: !986, line: 19, baseType: !68, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !985, file: !986, line: 26, baseType: !165, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !985, file: !986, line: 33, baseType: !165, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !985, file: !986, line: 36, baseType: !994, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !996, line: 33, flags: DIFlagFwdDecl)
!996 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!997 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !851, file: !194, line: 2087, baseType: !981, size: 64, offset: 1536)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !851, file: !194, line: 2089, baseType: !383, size: 64, offset: 1600)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !350, file: !194, line: 1198, baseType: !1000, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !932, line: 324, size: 704, elements: !1003)
!1003 = !{!1004, !1008, !1012, !1016, !1017, !1018, !1019, !1020, !1025, !1030, !1034}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1002, file: !932, line: 325, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!68, !930}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1002, file: !932, line: 326, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!930, !349, !68}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1002, file: !932, line: 327, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !930}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1002, file: !932, line: 328, baseType: !1005, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1002, file: !932, line: 329, baseType: !1005, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1002, file: !932, line: 330, baseType: !1005, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1002, file: !932, line: 331, baseType: !879, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1002, file: !932, line: 334, baseType: !1021, size: 64, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024, !197}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1002, file: !932, line: 335, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!68, !197, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1002, file: !932, line: 337, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!68, !197, !1024}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1002, file: !932, line: 339, baseType: !1035, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!68, !349, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !350, file: !194, line: 1199, baseType: !1040, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !932, line: 430, size: 704, elements: !1043)
!1043 = !{!1044, !1055, !1056, !1060, !1061, !1062, !1077, !1100, !1104, !1105, !1128}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1042, file: !932, line: 431, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!68, !349, !68, !68, !1048}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1051, line: 8, size: 128, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1050, file: !1051, line: 9, baseType: !343, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1050, file: !1051, line: 10, baseType: !233, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1042, file: !932, line: 432, baseType: !879, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1042, file: !932, line: 433, baseType: !1057, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!68, !349, !210}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1042, file: !932, line: 434, baseType: !1057, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1042, file: !932, line: 435, baseType: !879, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1042, file: !932, line: 436, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!68, !349, !68, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !932, line: 417, size: 256, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1067, file: !932, line: 418, baseType: !68, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1067, file: !932, line: 419, baseType: !210, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1067, file: !932, line: 420, baseType: !210, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1067, file: !932, line: 422, baseType: !210, size: 32, offset: 96)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1067, file: !932, line: 423, baseType: !210, size: 32, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1067, file: !932, line: 424, baseType: !210, size: 32, offset: 160)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1067, file: !932, line: 425, baseType: !210, size: 32, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1067, file: !932, line: 426, baseType: !210, size: 32, offset: 224)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1042, file: !932, line: 437, baseType: !1078, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!68, !349, !943, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !932, line: 345, size: 960, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1082, file: !932, line: 346, baseType: !68, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1082, file: !932, line: 347, baseType: !271, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1082, file: !932, line: 348, baseType: !271, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1082, file: !932, line: 349, baseType: !271, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1082, file: !932, line: 350, baseType: !271, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1082, file: !932, line: 351, baseType: !271, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1082, file: !932, line: 352, baseType: !271, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1082, file: !932, line: 353, baseType: !475, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1082, file: !932, line: 355, baseType: !475, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1082, file: !932, line: 356, baseType: !68, size: 32, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1082, file: !932, line: 357, baseType: !68, size: 32, offset: 608)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1082, file: !932, line: 358, baseType: !271, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1082, file: !932, line: 359, baseType: !271, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1082, file: !932, line: 360, baseType: !271, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1082, file: !932, line: 361, baseType: !475, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1082, file: !932, line: 362, baseType: !68, size: 32, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1042, file: !932, line: 438, baseType: !1101, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!68, !349, !1038, !1081}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1042, file: !932, line: 440, baseType: !1078, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1042, file: !932, line: 441, baseType: !1106, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!68, !349, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !932, line: 411, size: 1408, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1110, file: !932, line: 412, baseType: !210, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1110, file: !932, line: 413, baseType: !1114, size: 1344, offset: 64)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 1344, elements: !116)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !932, line: 397, size: 448, elements: !1116)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1127}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1115, file: !932, line: 398, baseType: !210, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1115, file: !932, line: 399, baseType: !210, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1115, file: !932, line: 401, baseType: !210, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1115, file: !932, line: 402, baseType: !210, size: 32, offset: 96)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1115, file: !932, line: 403, baseType: !210, size: 32, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1115, file: !932, line: 404, baseType: !210, size: 32, offset: 160)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1115, file: !932, line: 405, baseType: !210, size: 32, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1115, file: !932, line: 406, baseType: !273, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1115, file: !932, line: 407, baseType: !1126, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !31, line: 132, baseType: !271)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1115, file: !932, line: 408, baseType: !1126, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1042, file: !932, line: 442, baseType: !1057, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !350, file: !194, line: 1200, baseType: !1130, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !194, line: 54, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !350, file: !194, line: 1201, baseType: !165, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !350, file: !194, line: 1202, baseType: !165, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !350, file: !194, line: 1203, baseType: !165, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !350, file: !194, line: 1204, baseType: !233, size: 64, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !350, file: !194, line: 1205, baseType: !1138, size: 320, offset: 896)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1139, line: 48, size: 320, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1140 = !{!1141, !1142, !1143, !1144, !1145}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1138, file: !1139, line: 49, baseType: !469, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1138, file: !1139, line: 55, baseType: !469, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1138, file: !1139, line: 57, baseType: !479, size: 32, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1138, file: !1139, line: 59, baseType: !423, size: 32, offset: 160)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1138, file: !1139, line: 60, baseType: !30, size: 128, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !350, file: !194, line: 1206, baseType: !68, size: 32, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !350, file: !194, line: 1207, baseType: !64, size: 32, offset: 1248)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !350, file: !194, line: 1209, baseType: !187, size: 64, offset: 1280)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !350, file: !194, line: 1211, baseType: !1150, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !194, line: 1211, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !350, file: !194, line: 1223, baseType: !1155, size: 64, offset: 1408)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !250, line: 34, size: 64, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1155, file: !250, line: 35, baseType: !253, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !350, file: !194, line: 1224, baseType: !30, size: 128, offset: 1472)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !350, file: !194, line: 1225, baseType: !1160, size: 64, offset: 1600)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !194, line: 1225, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !350, file: !194, line: 1226, baseType: !1163, size: 64, offset: 1664)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !194, line: 1226, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !350, file: !194, line: 1227, baseType: !1166, size: 64, offset: 1728)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !194, line: 50, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !350, file: !194, line: 1228, baseType: !1169, size: 64, offset: 1792)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !194, line: 1228, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !350, file: !194, line: 1229, baseType: !711, size: 128, offset: 1856)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !350, file: !194, line: 1230, baseType: !210, size: 32, offset: 1984)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !350, file: !194, line: 1231, baseType: !1174, size: 2496, offset: 2048)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !932, line: 521, size: 2496, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1180, !1212}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1174, file: !932, line: 522, baseType: !210, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1174, file: !932, line: 523, baseType: !1138, size: 320, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1174, file: !932, line: 524, baseType: !1179, size: 192, offset: 384)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 192, elements: !116)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1174, file: !932, line: 525, baseType: !1181, size: 1728, offset: 576)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 1728, elements: !116)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !932, line: 222, size: 576, elements: !1183)
!1183 = !{!1184, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1182, file: !932, line: 223, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !932, line: 445, size: 256, elements: !1187)
!1187 = !{!1188, !1189, !1202, !1203}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1186, file: !932, line: 446, baseType: !68, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1186, file: !932, line: 447, baseType: !1190, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !932, line: 312, size: 512, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1192, file: !932, line: 313, baseType: !879, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1192, file: !932, line: 314, baseType: !879, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1192, file: !932, line: 315, baseType: !879, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1192, file: !932, line: 316, baseType: !879, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1192, file: !932, line: 317, baseType: !1005, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1192, file: !932, line: 318, baseType: !1005, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1192, file: !932, line: 319, baseType: !1005, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1192, file: !932, line: 320, baseType: !1035, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1186, file: !932, line: 448, baseType: !387, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1186, file: !932, line: 449, baseType: !1185, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1182, file: !932, line: 224, baseType: !68, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1182, file: !932, line: 226, baseType: !30, size: 128, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1182, file: !932, line: 227, baseType: !165, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1182, file: !932, line: 228, baseType: !210, size: 32, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1182, file: !932, line: 229, baseType: !210, size: 32, offset: 352)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1182, file: !932, line: 230, baseType: !969, size: 64, offset: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1182, file: !932, line: 231, baseType: !969, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1182, file: !932, line: 232, baseType: !187, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1174, file: !932, line: 526, baseType: !1213, size: 192, offset: 2304)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 192, elements: !116)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !350, file: !194, line: 1233, baseType: !1215, size: 2368, offset: 4544)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !194, line: 1184, size: 2368, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1215, file: !194, line: 1185, baseType: !85, size: 16)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1215, file: !194, line: 1186, baseType: !85, size: 16, offset: 16)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1215, file: !194, line: 1187, baseType: !1220, size: 2304, offset: 64)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 2304, elements: !116)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1222, line: 12, size: 768, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1223 = !{!1224, !1238, !1239, !3468, !3469}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1221, file: !1222, line: 13, baseType: !1225, size: 384)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1226, line: 17, size: 384, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1227 = !{!1228, !1229, !1230, !1237}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1225, file: !1226, line: 18, baseType: !68, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1225, file: !1226, line: 19, baseType: !68, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1225, file: !1226, line: 20, baseType: !1231, size: 192, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1232, line: 41, baseType: !1233)
!1232 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1232, line: 37, size: 192, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1233, file: !1232, line: 38, baseType: !44, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1233, file: !1232, line: 39, baseType: !30, size: 128, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1225, file: !1226, line: 22, baseType: !685, size: 128, align: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1221, file: !1222, line: 14, baseType: !537, size: 64, offset: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1221, file: !1222, line: 15, baseType: !1240, size: 64, offset: 448)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1241, line: 16, size: 64, elements: !1242)
!1241 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1240, file: !1241, line: 17, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !913, line: 746, size: 58368, elements: !1246)
!1246 = !{!1247, !1255, !1256, !1257, !1263, !1264, !1265, !1266, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1337, !1348, !1448, !1452, !1455, !1486, !1487, !1488, !1489, !1500, !1502, !1503, !1504, !1505, !1506, !1507, !1518, !1519, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1536, !1537, !1544, !1545, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2602, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2650, !2656, !2657, !2658, !2659, !2660, !2664, !2667, !2674, !2679, !2682, !2685, !2688, !2714, !2852, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2890, !2891, !2892, !2901, !2909, !2910, !2911, !2912, !2913, !2918, !2919, !2920, !2923, !2924, !2927, !2930, !2933, !2941, !2944, !2945, !3031, !3032, !3033, !3034, !3035, !3041, !3042, !3043, !3044, !3047, !3048, !3051, !3065, !3066, !3069, !3070, !3071, !3074, !3075, !3076, !3077, !3078, !3079, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3111, !3112, !3118, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3130, !3208, !3210, !3211, !3212, !3213, !3214, !3215, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3245, !3246, !3247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1245, file: !913, line: 752, baseType: !1248, size: 192)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1249, line: 56, size: 192, elements: !1250)
!1249 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1249, line: 57, baseType: !165, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1248, file: !1249, line: 58, baseType: !165, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1248, file: !1249, line: 59, baseType: !267, size: 32, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1248, file: !1249, line: 61, baseType: !267, size: 32, offset: 160)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1245, file: !913, line: 754, baseType: !210, size: 32, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1245, file: !913, line: 767, baseType: !187, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1245, file: !913, line: 768, baseType: !1258, size: 32, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1259, line: 113, baseType: !1260)
!1259 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1259, line: 111, size: 32, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1260, file: !1259, line: 112, baseType: !64, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !913, line: 770, baseType: !210, size: 32, offset: 352)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1245, file: !913, line: 771, baseType: !210, size: 32, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1245, file: !913, line: 774, baseType: !68, size: 32, offset: 416)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1245, file: !913, line: 775, baseType: !1267, size: 128, offset: 448)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1268, line: 58, size: 128, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1269 = !{!1270, !1276, !1281, !1282}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1267, file: !1268, line: 59, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1272, line: 60, size: 64, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1271, file: !1272, line: 61, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 60, baseType: !1277, size: 32, offset: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 60, size: 32, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1277, file: !1268, line: 61, baseType: !210, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1277, file: !1268, line: 62, baseType: !64, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1267, file: !1268, line: 65, baseType: !83, size: 16, offset: 96)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1267, file: !1268, line: 65, baseType: !83, size: 16, offset: 112)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1245, file: !913, line: 776, baseType: !210, size: 32, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1245, file: !913, line: 777, baseType: !165, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1245, file: !913, line: 778, baseType: !1244, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1245, file: !913, line: 787, baseType: !68, size: 32, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1245, file: !913, line: 788, baseType: !68, size: 32, offset: 800)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1245, file: !913, line: 790, baseType: !68, size: 32, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1245, file: !913, line: 792, baseType: !68, size: 32, offset: 864)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1245, file: !913, line: 793, baseType: !68, size: 32, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1245, file: !913, line: 794, baseType: !68, size: 32, offset: 928)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1245, file: !913, line: 795, baseType: !210, size: 32, offset: 960)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1245, file: !913, line: 797, baseType: !1294, size: 2048, offset: 1024)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !913, line: 551, size: 2048, elements: !1295)
!1295 = !{!1296, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1316, !1319, !1320, !1321}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1294, file: !913, line: 553, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !913, line: 411, size: 128, elements: !1298)
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1297, file: !913, line: 412, baseType: !165, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1297, file: !913, line: 413, baseType: !267, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1294, file: !913, line: 554, baseType: !577, size: 192, align: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1294, file: !913, line: 555, baseType: !271, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1294, file: !913, line: 556, baseType: !271, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1294, file: !913, line: 558, baseType: !30, size: 128, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1294, file: !913, line: 559, baseType: !210, size: 32, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1294, file: !913, line: 561, baseType: !271, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1294, file: !913, line: 562, baseType: !271, size: 64, offset: 704)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1294, file: !913, line: 563, baseType: !271, size: 64, offset: 768)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1294, file: !913, line: 564, baseType: !271, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1294, file: !913, line: 565, baseType: !475, size: 64, offset: 896)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1294, file: !913, line: 566, baseType: !271, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1294, file: !913, line: 568, baseType: !271, size: 64, offset: 1024)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1294, file: !913, line: 571, baseType: !68, size: 32, offset: 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1294, file: !913, line: 572, baseType: !1315, size: 64, offset: 1152)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1294, file: !913, line: 574, baseType: !1317, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !913, line: 49, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1294, file: !913, line: 576, baseType: !1317, size: 64, offset: 1280)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1294, file: !913, line: 578, baseType: !165, size: 64, offset: 1344)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1294, file: !913, line: 588, baseType: !1322, size: 512, align: 512, offset: 1536)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !913, line: 497, size: 512, align: 512, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1322, file: !913, line: 498, baseType: !271, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1322, file: !913, line: 499, baseType: !271, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1322, file: !913, line: 500, baseType: !271, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1322, file: !913, line: 501, baseType: !267, size: 32, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1322, file: !913, line: 502, baseType: !267, size: 32, offset: 224)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1322, file: !913, line: 503, baseType: !165, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1322, file: !913, line: 504, baseType: !165, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1322, file: !913, line: 505, baseType: !165, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1322, file: !913, line: 506, baseType: !1333, size: 64, align: 64, offset: 448)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !913, line: 445, size: 64, align: 64, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1333, file: !913, line: 446, baseType: !210, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1333, file: !913, line: 447, baseType: !210, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1245, file: !913, line: 798, baseType: !1338, size: 384, offset: 3072)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !913, line: 592, size: 384, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1338, file: !913, line: 593, baseType: !30, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1338, file: !913, line: 594, baseType: !165, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1338, file: !913, line: 595, baseType: !165, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1338, file: !913, line: 596, baseType: !210, size: 32, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1338, file: !913, line: 597, baseType: !85, size: 16, offset: 288)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1338, file: !913, line: 598, baseType: !85, size: 16, offset: 304)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1338, file: !913, line: 600, baseType: !1347, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1245, file: !913, line: 799, baseType: !1349, size: 1792, offset: 3456)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !913, line: 610, size: 1792, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1445, !1446}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1349, file: !913, line: 611, baseType: !577, size: 192, align: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1349, file: !913, line: 618, baseType: !271, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1349, file: !913, line: 619, baseType: !271, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1349, file: !913, line: 620, baseType: !271, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1349, file: !913, line: 621, baseType: !271, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1349, file: !913, line: 622, baseType: !271, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1349, file: !913, line: 629, baseType: !475, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1349, file: !913, line: 630, baseType: !271, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1349, file: !913, line: 631, baseType: !210, size: 32, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1349, file: !913, line: 653, baseType: !210, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1349, file: !913, line: 654, baseType: !210, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1349, file: !913, line: 655, baseType: !210, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1349, file: !913, line: 656, baseType: !210, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1349, file: !913, line: 662, baseType: !1365, size: 512, offset: 704)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1366, line: 118, size: 512, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!1367 = !{!1368, !1376, !1377, !1386, !1441, !1442, !1443, !1444}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1365, file: !1366, line: 119, baseType: !1369, size: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1370, line: 9, size: 256, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1369, file: !1370, line: 10, baseType: !577, size: 192, align: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1369, file: !1370, line: 11, baseType: !1374, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1375, line: 29, baseType: !475)
!1375 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1365, file: !1366, line: 120, baseType: !1374, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1365, file: !1366, line: 121, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1381, !1385}
!1381 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1366, line: 65, baseType: !210, size: 32, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!1384 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1365, file: !1366, line: 122, baseType: !1387, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1366, line: 159, size: 512, align: 512, elements: !1389)
!1389 = !{!1390, !1415, !1416, !1419, !1424, !1425, !1436, !1440}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1388, file: !1366, line: 160, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1366, line: 215, size: 4608, align: 512, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !1366, line: 216, baseType: !423, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1392, file: !1366, line: 217, baseType: !210, size: 32, offset: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1392, file: !1366, line: 218, baseType: !210, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1392, file: !1366, line: 219, baseType: !210, size: 32, offset: 96)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1392, file: !1366, line: 220, baseType: !210, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1392, file: !1366, line: 221, baseType: !210, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1392, file: !1366, line: 222, baseType: !210, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1392, file: !1366, line: 223, baseType: !210, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1392, file: !1366, line: 224, baseType: !210, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1392, file: !1366, line: 226, baseType: !210, size: 32, offset: 160)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1392, file: !1366, line: 227, baseType: !85, size: 16, offset: 192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1392, file: !1366, line: 228, baseType: !85, size: 16, offset: 208)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1392, file: !1366, line: 229, baseType: !210, size: 32, offset: 224)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1392, file: !1366, line: 235, baseType: !1374, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1392, file: !1366, line: 236, baseType: !1385, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1392, file: !1366, line: 237, baseType: !1374, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1392, file: !1366, line: 238, baseType: !1385, size: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1392, file: !1366, line: 239, baseType: !1412, size: 4096, align: 512, offset: 512)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1388, size: 4096, align: 512, elements: !1413)
!1413 = !{!1414}
!1414 = !DISubrange(count: 8)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1388, file: !1366, line: 161, baseType: !210, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1388, file: !1366, line: 162, baseType: !1417, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !31, line: 32, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !149, line: 96, baseType: !68)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1388, file: !1366, line: 163, baseType: !1420, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !240, line: 274, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !240, line: 274, size: 32, elements: !1422)
!1422 = !{!1423}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1421, file: !240, line: 274, baseType: !244, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1388, file: !1366, line: 164, baseType: !1385, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1388, file: !1366, line: 165, baseType: !1426, size: 128, offset: 256)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1370, line: 14, size: 128, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1426, file: !1370, line: 15, baseType: !1429, size: 128)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !578, line: 26, size: 128, elements: !1430)
!1430 = !{!1431, !1435}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1429, file: !578, line: 27, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !578, line: 12, size: 64, elements: !1433)
!1433 = !{!1434}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1432, file: !578, line: 13, baseType: !582, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1429, file: !578, line: 28, baseType: !582, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1388, file: !1366, line: 166, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1374}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1388, file: !1366, line: 167, baseType: !1374, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1365, file: !1366, line: 123, baseType: !73, size: 8, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1365, file: !1366, line: 124, baseType: !73, size: 8, offset: 456)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1365, file: !1366, line: 125, baseType: !73, size: 8, offset: 464)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1365, file: !1366, line: 126, baseType: !73, size: 8, offset: 472)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1349, file: !913, line: 671, baseType: !1365, size: 512, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1349, file: !913, line: 679, baseType: !1447, size: 64, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1245, file: !913, line: 800, baseType: !1449, size: 64, offset: 5248)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !913, line: 800, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1245, file: !913, line: 809, baseType: !1453, size: 64, offset: 5312)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !913, line: 70, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1245, file: !913, line: 825, baseType: !1456, size: 2048, align: 512, offset: 5632)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !913, line: 509, size: 2048, align: 512, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1456, file: !913, line: 511, baseType: !271, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1456, file: !913, line: 512, baseType: !271, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1456, file: !913, line: 513, baseType: !271, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1456, file: !913, line: 514, baseType: !271, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1456, file: !913, line: 515, baseType: !271, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1456, file: !913, line: 516, baseType: !271, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1456, file: !913, line: 518, baseType: !271, size: 64, offset: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1456, file: !913, line: 519, baseType: !271, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1456, file: !913, line: 520, baseType: !475, size: 64, offset: 512)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1456, file: !913, line: 522, baseType: !271, size: 64, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1456, file: !913, line: 523, baseType: !271, size: 64, offset: 640)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1456, file: !913, line: 524, baseType: !475, size: 64, offset: 704)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1456, file: !913, line: 526, baseType: !475, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1456, file: !913, line: 527, baseType: !271, size: 64, offset: 832)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1456, file: !913, line: 529, baseType: !271, size: 64, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1456, file: !913, line: 530, baseType: !271, size: 64, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1456, file: !913, line: 531, baseType: !271, size: 64, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1456, file: !913, line: 532, baseType: !271, size: 64, offset: 1088)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1456, file: !913, line: 533, baseType: !271, size: 64, offset: 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1456, file: !913, line: 535, baseType: !271, size: 64, offset: 1216)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1456, file: !913, line: 536, baseType: !271, size: 64, offset: 1280)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1456, file: !913, line: 537, baseType: !271, size: 64, offset: 1344)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1456, file: !913, line: 538, baseType: !271, size: 64, offset: 1408)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1456, file: !913, line: 539, baseType: !271, size: 64, offset: 1472)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1456, file: !913, line: 540, baseType: !271, size: 64, offset: 1536)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1456, file: !913, line: 541, baseType: !271, size: 64, offset: 1600)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1456, file: !913, line: 542, baseType: !271, size: 64, offset: 1664)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1456, file: !913, line: 543, baseType: !271, size: 64, offset: 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1245, file: !913, line: 833, baseType: !210, size: 32, offset: 7680)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1245, file: !913, line: 836, baseType: !210, size: 32, offset: 7712)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1245, file: !913, line: 837, baseType: !68, size: 32, offset: 7744)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1245, file: !913, line: 838, baseType: !1490, size: 64, offset: 7808)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1493, line: 19, baseType: !1494)
!1493 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1493, line: 19, size: 64, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1494, file: !1493, line: 19, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 1)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1245, file: !913, line: 839, baseType: !1501, size: 64, offset: 7872)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1245, file: !913, line: 840, baseType: !1492, size: 64, offset: 7936)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1245, file: !913, line: 841, baseType: !187, size: 64, offset: 8000)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1245, file: !913, line: 843, baseType: !85, size: 16, offset: 8064)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1245, file: !913, line: 845, baseType: !85, size: 16, offset: 8080)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1245, file: !913, line: 848, baseType: !68, size: 32, offset: 8096)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1245, file: !913, line: 849, baseType: !1508, size: 32, offset: 8128)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !913, line: 718, size: 32, elements: !1509)
!1509 = !{!1510, !1517}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1508, file: !913, line: 724, baseType: !1511, size: 32)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !913, line: 719, size: 32, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1511, file: !913, line: 720, baseType: !73, size: 8)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1511, file: !913, line: 721, baseType: !73, size: 8, offset: 8)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1511, file: !913, line: 722, baseType: !73, size: 8, offset: 16)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1511, file: !913, line: 723, baseType: !73, size: 8, offset: 24)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1508, file: !913, line: 725, baseType: !267, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1245, file: !913, line: 850, baseType: !30, size: 128, offset: 8192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1245, file: !913, line: 851, baseType: !1520, size: 64, offset: 8320)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !913, line: 60, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1245, file: !913, line: 855, baseType: !165, size: 64, offset: 8384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1245, file: !913, line: 856, baseType: !73, size: 8, offset: 8448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1245, file: !913, line: 857, baseType: !73, size: 8, offset: 8456)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1245, file: !913, line: 858, baseType: !68, size: 32, offset: 8480)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1245, file: !913, line: 859, baseType: !30, size: 128, offset: 8512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1245, file: !913, line: 860, baseType: !68, size: 32, offset: 8640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1245, file: !913, line: 861, baseType: !30, size: 128, offset: 8704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1245, file: !913, line: 873, baseType: !1530, size: 256, offset: 8832)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !913, line: 376, size: 256, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1535}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1530, file: !913, line: 381, baseType: !165, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1530, file: !913, line: 384, baseType: !273, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1530, file: !913, line: 389, baseType: !273, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1530, file: !913, line: 392, baseType: !273, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1245, file: !913, line: 875, baseType: !30, size: 128, offset: 9088)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1245, file: !913, line: 877, baseType: !1538, size: 320, offset: 9216)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1539, line: 86, size: 320, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1538, file: !1539, line: 87, baseType: !68, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1538, file: !1539, line: 88, baseType: !30, size: 128, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1538, file: !1539, line: 89, baseType: !30, size: 128, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1245, file: !913, line: 878, baseType: !577, size: 192, align: 64, offset: 9536)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1245, file: !913, line: 881, baseType: !1546, size: 64, offset: 9728)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !996, line: 733, size: 10240, elements: !1548)
!1548 = !{!1549, !2515}
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !996, line: 734, baseType: !1550, size: 10240)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !996, line: 734, size: 10240, elements: !1551)
!1551 = !{!1552, !1556, !1569, !2391, !2392, !2393, !2394, !2395, !2396, !2403, !2404, !2405, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2444, !2446, !2449, !2494, !2495, !2496, !2499, !2500, !2501, !2504, !2505, !2506, !2513, !2514}
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !996, line: 739, baseType: !1553, size: 512, align: 512)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !996, line: 739, size: 512, align: 512, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1553, file: !996, line: 747, baseType: !64, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1550, file: !996, line: 750, baseType: !1557, size: 128, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1558, line: 218, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1559 = !{!1560, !1567, !1568}
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !1558, line: 219, baseType: !1561, size: 32)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1557, file: !1558, line: 219, size: 32, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1561, file: !1558, line: 220, baseType: !44, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1561, file: !1558, line: 221, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1558, line: 197, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1558, line: 197, elements: !754)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1557, file: !1558, line: 223, baseType: !210, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1557, file: !1558, line: 224, baseType: !187, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1550, file: !996, line: 752, baseType: !1570, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!165, !1573, !165, !165, !165, !165}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !194, line: 994, size: 1856, align: 64, elements: !1575)
!1575 = !{!1576, !1582, !1583, !1585, !1586, !1587, !1588, !1589, !1647, !1837, !1846, !1847, !1848, !2381, !2382, !2383, !2384, !2386, !2387, !2390}
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !194, line: 995, baseType: !1577, size: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !194, line: 995, size: 128, elements: !1578)
!1578 = !{!1579, !1580, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1577, file: !194, line: 996, baseType: !1271, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1577, file: !194, line: 997, baseType: !685, size: 128, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1577, file: !194, line: 998, baseType: !210, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1574, file: !194, line: 1005, baseType: !44, size: 32, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1574, file: !194, line: 1006, baseType: !1584, size: 32, offset: 160)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !31, line: 156, baseType: !210)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1574, file: !194, line: 1007, baseType: !469, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1574, file: !194, line: 1008, baseType: !465, size: 256, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1574, file: !194, line: 1009, baseType: !359, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1574, file: !194, line: 1010, baseType: !210, size: 32, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1574, file: !194, line: 1011, baseType: !1590, size: 256, offset: 640)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !194, line: 948, size: 256, elements: !1591)
!1591 = !{!1592, !1613, !1636, !1644, !1645, !1646}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !194, line: 949, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1594, line: 34, baseType: !1595)
!1594 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1594, line: 25, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1595, file: !1594, line: 26, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1599, line: 27, baseType: !1600)
!1599 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1599, line: 13, size: 64, elements: !1601)
!1601 = !{!1602, !1612}
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !1599, line: 14, baseType: !1603, size: 32)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !1599, line: 14, size: 32, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1603, file: !1599, line: 15, baseType: !64, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1603, file: !1599, line: 16, baseType: !1607, size: 32)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1603, file: !1599, line: 16, size: 32, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1607, file: !1599, line: 18, baseType: !73, size: 8)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1607, file: !1599, line: 19, baseType: !1611, size: 24, offset: 8)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 24, elements: !116)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1600, file: !1599, line: 26, baseType: !56, size: 32, offset: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1590, file: !194, line: 950, baseType: !1614, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1616, line: 59, size: 768, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1617 = !{!1618, !1619, !1620, !1621, !1623, !1624, !1625, !1626}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1615, file: !1616, line: 61, baseType: !1258, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1615, file: !1616, line: 62, baseType: !210, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1615, file: !1616, line: 63, baseType: !44, size: 32, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1615, file: !1616, line: 65, baseType: !1622, size: 256, offset: 128)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 256, elements: !695)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1615, file: !1616, line: 66, baseType: !835, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1615, file: !1616, line: 68, baseType: !1231, size: 192, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1615, file: !1616, line: 69, baseType: !685, size: 128, align: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1615, file: !1616, line: 70, baseType: !1627, offset: 768)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, elements: !1634)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1616, line: 54, size: 128, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1628, file: !1616, line: 55, baseType: !68, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1628, file: !1616, line: 56, baseType: !1632, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1616, line: 56, flags: DIFlagFwdDecl)
!1634 = !{!1635}
!1635 = !DISubrange(count: -1)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1590, file: !194, line: 951, baseType: !1637, size: 32, offset: 128)
!1637 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1616, line: 9, baseType: !210, size: 32, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643}
!1639 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1640 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1641 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1642 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1643 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1590, file: !194, line: 952, baseType: !203, size: 32, offset: 160)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1590, file: !194, line: 952, baseType: !203, size: 32, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1590, file: !194, line: 953, baseType: !68, size: 32, offset: 224)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1574, file: !194, line: 1012, baseType: !1648, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1651, line: 110, size: 1472, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1669, !1670, !1671, !1672, !1673, !1674, !1782, !1783, !1784, !1785, !1786, !1817, !1820, !1824, !1832}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1650, file: !1651, line: 111, baseType: !469, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1650, file: !1651, line: 112, baseType: !203, size: 32, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1650, file: !1651, line: 113, baseType: !213, size: 32, offset: 96)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1650, file: !1651, line: 114, baseType: !203, size: 32, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1650, file: !1651, line: 115, baseType: !213, size: 32, offset: 160)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1650, file: !1651, line: 116, baseType: !203, size: 32, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1650, file: !1651, line: 117, baseType: !213, size: 32, offset: 224)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1650, file: !1651, line: 118, baseType: !203, size: 32, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1650, file: !1651, line: 119, baseType: !213, size: 32, offset: 288)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1650, file: !1651, line: 120, baseType: !210, size: 32, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1650, file: !1651, line: 121, baseType: !1664, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1665, line: 24, baseType: !1666)
!1665 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1665, line: 24, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1666, file: !1665, line: 24, baseType: !271, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1650, file: !1651, line: 122, baseType: !1664, size: 64, offset: 448)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1650, file: !1651, line: 123, baseType: !1664, size: 64, offset: 512)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1650, file: !1651, line: 124, baseType: !1664, size: 64, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1650, file: !1651, line: 125, baseType: !1664, size: 64, offset: 640)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1650, file: !1651, line: 127, baseType: !77, size: 8, offset: 704)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1650, file: !1651, line: 129, baseType: !1675, size: 64, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1677, line: 195, size: 1728, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1678 = !{!1679, !1680, !1683, !1688, !1689, !1692, !1693, !1698, !1699, !1700, !1701, !1704, !1705, !1706, !1707, !1708, !1746, !1767}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1676, file: !1677, line: 196, baseType: !1258, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1676, file: !1677, line: 197, baseType: !1681, size: 32, offset: 32)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1677, line: 28, baseType: !1682)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !31, line: 104, baseType: !461)
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1677, line: 198, baseType: !1684, size: 192, offset: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1677, line: 198, size: 192, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1684, file: !1677, line: 199, baseType: !30, size: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1684, file: !1677, line: 200, baseType: !577, size: 192, align: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1676, file: !1677, line: 205, baseType: !1138, size: 320, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1676, file: !1677, line: 206, baseType: !1690, size: 64, offset: 576)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1677, line: 206, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1676, file: !1677, line: 207, baseType: !187, size: 64, offset: 640)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1677, line: 208, baseType: !1694, size: 64, offset: 704)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1677, line: 208, size: 64, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1694, file: !1677, line: 209, baseType: !977, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1694, file: !1677, line: 210, baseType: !977, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1676, file: !1677, line: 212, baseType: !977, size: 64, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1676, file: !1677, line: 213, baseType: !203, size: 32, offset: 832)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1676, file: !1677, line: 214, baseType: !213, size: 32, offset: 864)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1676, file: !1677, line: 215, baseType: !1702, size: 32, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1677, line: 31, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 110, baseType: !267)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1676, file: !1677, line: 216, baseType: !85, size: 16, offset: 928)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1676, file: !1677, line: 217, baseType: !85, size: 16, offset: 944)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1676, file: !1677, line: 221, baseType: !603, size: 16, offset: 960)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1676, file: !1677, line: 228, baseType: !165, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1677, line: 245, baseType: !1709, size: 320, offset: 1088)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1677, line: 245, size: 320, elements: !1710)
!1710 = !{!1711, !1738}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1709, file: !1677, line: 246, baseType: !1712, size: 320)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1677, line: 114, size: 320, elements: !1713)
!1713 = !{!1714, !1715, !1727, !1730, !1737}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1712, file: !1677, line: 116, baseType: !165, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !1677, line: 117, baseType: !1716, size: 64, offset: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !1677, line: 117, size: 64, elements: !1717)
!1717 = !{!1718, !1726}
!1718 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !1677, line: 118, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !1677, line: 118, size: 64, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1719, file: !1677, line: 120, baseType: !83, size: 16)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1719, file: !1677, line: 121, baseType: !1723, size: 48, offset: 16)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 48, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 6)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1716, file: !1677, line: 127, baseType: !165, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1712, file: !1677, line: 129, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1677, line: 102, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1712, file: !1677, line: 130, baseType: !1731, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1677, line: 108, size: 192, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !1677, line: 109, baseType: !685, size: 128, align: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1732, file: !1677, line: 110, baseType: !1258, size: 32, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1732, file: !1677, line: 111, baseType: !545, size: 8, offset: 160)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1712, file: !1677, line: 131, baseType: !26, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1677, line: 247, baseType: !1739, size: 320)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1709, file: !1677, line: 247, size: 320, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1739, file: !1677, line: 248, baseType: !165, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1739, file: !1677, line: 249, baseType: !165, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1739, file: !1677, line: 250, baseType: !1728, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1739, file: !1677, line: 251, baseType: !1731, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1739, file: !1677, line: 252, baseType: !115, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1677, line: 260, baseType: !1747, size: 256, offset: 1408)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1677, line: 260, size: 256, elements: !1748)
!1748 = !{!1749, !1755}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1747, file: !1677, line: 261, baseType: !1750, size: 256)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1677, line: 134, size: 256, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1750, file: !1677, line: 135, baseType: !187, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1750, file: !1677, line: 136, baseType: !1754, size: 256)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 256, elements: !695)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1747, file: !1677, line: 262, baseType: !1756, size: 256)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1747, file: !1677, line: 262, size: 256, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1756, file: !1677, line: 264, baseType: !30, size: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1756, file: !1677, line: 265, baseType: !1760, size: 128, offset: 128)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1761, line: 22, size: 128, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1762 = !{!1763, !1766}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1760, file: !1761, line: 23, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1761, line: 23, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1760, file: !1761, line: 24, baseType: !165, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1676, file: !1677, line: 280, baseType: !1768, size: 64, offset: 1664)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1677, line: 176, size: 192, elements: !1770)
!1770 = !{!1771, !1780, !1781}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1769, file: !1677, line: 177, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1677, line: 171, baseType: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!68, !1675, !1776, !1778, !1675}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1750)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1769, file: !1677, line: 178, baseType: !1675, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1769, file: !1677, line: 179, baseType: !1728, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1650, file: !1651, line: 130, baseType: !1675, size: 64, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1650, file: !1651, line: 131, baseType: !1675, size: 64, offset: 896)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1650, file: !1651, line: 132, baseType: !1675, size: 64, offset: 960)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1650, file: !1651, line: 135, baseType: !187, size: 64, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1650, file: !1651, line: 137, baseType: !1787, size: 64, offset: 1088)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1789, line: 14, size: 1088, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1790 = !{!1791, !1792, !1801, !1802, !1803, !1804, !1805, !1806}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1788, file: !1789, line: 15, baseType: !1258, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1788, file: !1789, line: 17, baseType: !1793, size: 320, offset: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1794, line: 22, size: 320, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1795 = !{!1796, !1797, !1798, !1799}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !1794, line: 23, baseType: !423, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1793, file: !1794, line: 24, baseType: !475, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1793, file: !1794, line: 26, baseType: !30, size: 128, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1793, file: !1794, line: 28, baseType: !1800, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1788, file: !1789, line: 19, baseType: !165, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1788, file: !1789, line: 20, baseType: !469, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1788, file: !1789, line: 23, baseType: !711, size: 128, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1788, file: !1789, line: 24, baseType: !203, size: 32, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1788, file: !1789, line: 29, baseType: !469, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1788, file: !1789, line: 36, baseType: !1807, size: 320, offset: 768)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1808, line: 15, size: 320, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !1808, line: 16, baseType: !423, size: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1807, file: !1808, line: 18, baseType: !68, size: 32, offset: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1807, file: !1808, line: 19, baseType: !68, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1807, file: !1808, line: 20, baseType: !68, size: 32, offset: 96)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1807, file: !1808, line: 21, baseType: !68, size: 32, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1807, file: !1808, line: 22, baseType: !165, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1807, file: !1808, line: 23, baseType: !165, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1650, file: !1651, line: 138, baseType: !1818, size: 64, offset: 1152)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !204, line: 18, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1650, file: !1651, line: 139, baseType: !1821, size: 64, offset: 1216)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1823, line: 16, flags: DIFlagFwdDecl)
!1823 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1650, file: !1651, line: 140, baseType: !1825, size: 64, offset: 1280)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1651, line: 25, size: 64, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1826, file: !1651, line: 26, baseType: !64, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1826, file: !1651, line: 27, baseType: !68, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1826, file: !1651, line: 28, baseType: !1831, offset: 64)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, elements: !1634)
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1651, line: 142, baseType: !1833, size: 128, offset: 1344)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1650, file: !1651, line: 142, size: 128, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1833, file: !1651, line: 143, baseType: !68, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1833, file: !1651, line: 144, baseType: !685, size: 128, align: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1574, file: !194, line: 1013, baseType: !1838, size: 256, offset: 960)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !194, line: 970, size: 256, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1838, file: !194, line: 971, baseType: !165, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1838, file: !194, line: 972, baseType: !210, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1838, file: !194, line: 973, baseType: !210, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1838, file: !194, line: 974, baseType: !210, size: 32, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1838, file: !194, line: 975, baseType: !210, size: 32, offset: 160)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1838, file: !194, line: 976, baseType: !359, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1574, file: !194, line: 1014, baseType: !1050, size: 128, offset: 1216)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1574, file: !194, line: 1015, baseType: !197, size: 64, offset: 1344)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1574, file: !194, line: 1016, baseType: !1849, size: 64, offset: 1408)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !194, line: 1914, size: 2112, elements: !1852)
!1852 = !{!1853, !1854, !1858, !1863, !1867, !2266, !2267, !2273, !2286, !2294, !2298, !2299, !2303, !2304, !2308, !2313, !2314, !2318, !2322, !2328, !2329, !2333, !2334, !2340, !2344, !2348, !2354, !2358, !2362, !2366, !2370, !2371, !2377}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1851, file: !194, line: 1915, baseType: !387, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1851, file: !194, line: 1916, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!359, !1573, !359, !68}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1851, file: !194, line: 1917, baseType: !1859, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!147, !1573, !115, !162, !1862}
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1851, file: !194, line: 1918, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!147, !1573, !26, !162, !1862}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1851, file: !194, line: 1919, baseType: !1868, size: 64, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!147, !1871, !1893}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !194, line: 373, size: 384, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1880, !1881, !1882, !1883}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1872, file: !194, line: 374, baseType: !1573, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1872, file: !194, line: 375, baseType: !359, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1872, file: !194, line: 376, baseType: !1877, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1871, !151}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1872, file: !194, line: 377, baseType: !187, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1872, file: !194, line: 378, baseType: !68, size: 32, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1872, file: !194, line: 379, baseType: !83, size: 16, offset: 288)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !194, line: 380, baseType: !1884, size: 64, offset: 320)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !194, line: 380, size: 64, elements: !1885)
!1885 = !{!1886, !1889}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1884, file: !194, line: 386, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !194, line: 386, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1884, file: !194, line: 395, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!147, !187}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1895, line: 41, size: 320, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1907, !2261}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1894, file: !1895, line: 42, baseType: !73, size: 8)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1894, file: !1895, line: 43, baseType: !545, size: 8, offset: 8)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1894, file: !1895, line: 44, baseType: !545, size: 8, offset: 16)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1894, file: !1895, line: 45, baseType: !545, size: 8, offset: 24)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1894, file: !1895, line: 46, baseType: !545, size: 8, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 47, baseType: !1903, size: 64, offset: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 47, size: 64, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1903, file: !1895, line: 48, baseType: !162, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1903, file: !1895, line: 49, baseType: !68, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 61, baseType: !1908, size: 128, offset: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 61, size: 128, elements: !1909)
!1909 = !{!1910, !1916}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1908, file: !1895, line: 67, baseType: !1911, size: 128)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1912, line: 17, size: 128, elements: !1913)
!1912 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1911, file: !1912, line: 19, baseType: !187, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1911, file: !1912, line: 20, baseType: !163, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1895, line: 68, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1908, file: !1895, line: 68, size: 128, elements: !1918)
!1918 = !{!1919, !2260}
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1895, line: 69, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1917, file: !1895, line: 69, size: 64, elements: !1921)
!1921 = !{!1922, !1925, !1932, !2251, !2259}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1920, file: !1895, line: 71, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1911)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1920, file: !1895, line: 72, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1928)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1895, line: 17, size: 128, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1928, file: !1895, line: 18, baseType: !187, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1928, file: !1895, line: 19, baseType: !162, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1920, file: !1895, line: 73, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1936, line: 31, size: 128, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1937 = !{!1938, !2249, !2250}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1935, file: !1936, line: 32, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !996, line: 74, size: 512, align: 128, elements: !1941)
!1941 = !{!1942, !1943, !2243, !2248}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !996, line: 75, baseType: !165, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !996, line: 83, baseType: !1944, size: 320, offset: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !996, line: 83, size: 320, elements: !1945)
!1945 = !{!1946, !1967, !1981, !1985, !2242}
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !996, line: 84, baseType: !1947, size: 320)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !996, line: 84, size: 320, elements: !1948)
!1948 = !{!1949, !1960, !1961, !1966}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !996, line: 90, baseType: !1950, size: 128)
!1950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1947, file: !996, line: 90, size: 128, elements: !1951)
!1951 = !{!1952, !1953, !1958, !1959}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1950, file: !996, line: 91, baseType: !30, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !996, line: 94, baseType: !1954, size: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1950, file: !996, line: 94, size: 128, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1954, file: !996, line: 96, baseType: !187, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1954, file: !996, line: 98, baseType: !210, size: 32, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1950, file: !996, line: 102, baseType: !30, size: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1950, file: !996, line: 103, baseType: !30, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1947, file: !996, line: 106, baseType: !192, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !996, line: 107, baseType: !1962, size: 64, offset: 192)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1947, file: !996, line: 107, size: 64, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1962, file: !996, line: 108, baseType: !165, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1962, file: !996, line: 109, baseType: !165, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1947, file: !996, line: 117, baseType: !165, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !996, line: 119, baseType: !1968, size: 320)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !996, line: 119, size: 320, elements: !1969)
!1969 = !{!1970, !1971, !1974, !1975, !1976}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1968, file: !996, line: 124, baseType: !165, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1968, file: !996, line: 125, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !996, line: 125, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1968, file: !996, line: 126, baseType: !165, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1968, file: !996, line: 127, baseType: !165, size: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1968, file: !996, line: 128, baseType: !1977, size: 64, offset: 256)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1968, file: !996, line: 128, size: 64, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1977, file: !996, line: 133, baseType: !165, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1977, file: !996, line: 138, baseType: !469, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !996, line: 141, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !996, line: 141, size: 64, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1982, file: !996, line: 142, baseType: !165, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !996, line: 144, baseType: !1986, size: 128)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !996, line: 144, size: 128, elements: !1987)
!1987 = !{!1988, !2241}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1986, file: !996, line: 146, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1991, line: 126, size: 1216, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1992 = !{!1993, !2003, !2024, !2025, !2033, !2034, !2035, !2223, !2224, !2225}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1990, file: !1991, line: 127, baseType: !1994, size: 384)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1991, line: 21, size: 384, elements: !1995)
!1995 = !{!1996, !1997, !1999, !2000, !2001, !2002}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1994, file: !1991, line: 22, baseType: !165, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1994, file: !1991, line: 23, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1994, file: !1991, line: 24, baseType: !1998, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1994, file: !1991, line: 25, baseType: !165, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1994, file: !1991, line: 26, baseType: !165, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1994, file: !1991, line: 27, baseType: !165, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1990, file: !1991, line: 128, baseType: !2004, size: 128, offset: 384)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2005, line: 105, size: 128, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2006 = !{!2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2004, file: !2005, line: 110, baseType: !165, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2004, file: !2005, line: 118, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2005, line: 95, size: 448, elements: !2011)
!2011 = !{!2012, !2013, !2019, !2020, !2021, !2022, !2023}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2010, file: !2005, line: 96, baseType: !469, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2010, file: !2005, line: 97, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2005, line: 60, baseType: !2016)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2010, file: !2005, line: 98, baseType: !2014, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2010, file: !2005, line: 99, baseType: !545, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2010, file: !2005, line: 100, baseType: !545, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2010, file: !2005, line: 101, baseType: !685, size: 128, align: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2010, file: !2005, line: 102, baseType: !2018, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1990, file: !1991, line: 129, baseType: !414, size: 256, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1990, file: !1991, line: 130, baseType: !2026, size: 32, offset: 768)
!2026 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1991, line: 68, baseType: !210, size: 32, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2031, !2032}
!2028 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!2029 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!2030 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!2031 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!2032 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1990, file: !1991, line: 131, baseType: !210, size: 32, offset: 800)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1990, file: !1991, line: 132, baseType: !165, size: 64, offset: 832)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1990, file: !1991, line: 133, baseType: !2036, size: 64, offset: 896)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1991, line: 77, size: 192, elements: !2039)
!2039 = !{!2040, !2044, !2219}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2038, file: !1991, line: 83, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1939}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2038, file: !1991, line: 89, baseType: !2045, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !996, line: 1184, baseType: !210)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2051, line: 512, size: 896, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2052 = !{!2053, !2171, !2187, !2194, !2201, !2211, !2212, !2213, !2215, !2217}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2051, line: 513, baseType: !2054, size: 320)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2050, file: !2051, line: 513, size: 320, elements: !2055)
!2055 = !{!2056, !2167, !2168, !2169, !2170}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2054, file: !2051, line: 514, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !996, line: 625, size: 1344, elements: !2059)
!2059 = !{!2060, !2069, !2070, !2078, !2085, !2086, !2091, !2092, !2097, !2098, !2101, !2160, !2161, !2162, !2163, !2164, !2165}
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2058, file: !996, line: 628, baseType: !2061, size: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2058, file: !996, line: 628, size: 128, elements: !2062)
!2062 = !{!2063, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !996, line: 629, baseType: !2064, size: 128)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2061, file: !996, line: 629, size: 128, elements: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2064, file: !996, line: 631, baseType: !165, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2064, file: !996, line: 632, baseType: !165, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2061, file: !996, line: 635, baseType: !685, size: 128, align: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2058, file: !996, line: 639, baseType: !1546, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2058, file: !996, line: 640, baseType: !2071, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2072, line: 297, baseType: !2073)
!2072 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2072, line: 297, size: 64, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2073, file: !2072, line: 297, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2077, line: 19, baseType: !165)
!2077 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !2058, file: !996, line: 646, baseType: !2079, size: 64, offset: 256)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2058, file: !996, line: 646, size: 64, elements: !2080)
!2080 = !{!2081, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2079, file: !996, line: 647, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !996, line: 542, baseType: !165)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2079, file: !996, line: 648, baseType: !2083, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2058, file: !996, line: 666, baseType: !68, size: 32, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2058, file: !996, line: 667, baseType: !2087, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !996, line: 579, size: 320, elements: !2089)
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2088, file: !996, line: 580, baseType: !1138, size: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2058, file: !996, line: 670, baseType: !545, size: 8, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2058, file: !996, line: 681, baseType: !2093, size: 256, offset: 512)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !996, line: 678, size: 256, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2093, file: !996, line: 679, baseType: !577, size: 192, align: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2093, file: !996, line: 680, baseType: !165, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2058, file: !996, line: 689, baseType: !30, size: 128, offset: 768)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2058, file: !996, line: 691, baseType: !2099, size: 64, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !996, line: 691, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2058, file: !996, line: 694, baseType: !2102, size: 64, offset: 960)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2051, line: 563, size: 1024, elements: !2105)
!2105 = !{!2106, !2110, !2111, !2115, !2119, !2123, !2124, !2128, !2132, !2136, !2137, !2138, !2142, !2146, !2152, !2156}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2104, file: !2051, line: 564, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2057}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2104, file: !2051, line: 569, baseType: !2107, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2104, file: !2051, line: 571, baseType: !2112, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!68, !2057, !165}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2104, file: !2051, line: 572, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!68, !2057}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2104, file: !2051, line: 578, baseType: !2120, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!68, !2057, !165, !165, !165}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2104, file: !2051, line: 580, baseType: !2045, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2104, file: !2051, line: 581, baseType: !2125, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!2048, !2049, !210}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2104, file: !2051, line: 582, baseType: !2129, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!2048, !2049, !165, !165}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2104, file: !2051, line: 584, baseType: !2133, size: 64, offset: 512)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!165, !2057}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2104, file: !2051, line: 588, baseType: !2045, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2104, file: !2051, line: 591, baseType: !2045, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2104, file: !2051, line: 597, baseType: !2139, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!68, !2057, !165, !187, !68, !68}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !2051, line: 603, baseType: !2143, size: 64, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!26, !2057}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2104, file: !2051, line: 613, baseType: !2147, size: 64, offset: 832)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!68, !2057, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !913, line: 54, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2104, file: !2051, line: 625, baseType: !2153, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!2150, !2057, !165}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2104, file: !2051, line: 633, baseType: !2157, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1939, !2057, !165}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2058, file: !996, line: 697, baseType: !165, size: 64, offset: 1024)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2058, file: !996, line: 699, baseType: !1573, size: 64, offset: 1088)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2058, file: !996, line: 700, baseType: !187, size: 64, offset: 1152)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2058, file: !996, line: 711, baseType: !469, size: 64, offset: 1216)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2058, file: !996, line: 717, baseType: !2150, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2058, file: !996, line: 722, baseType: !2166, offset: 1344)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !996, line: 570, elements: !754)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2054, file: !2051, line: 515, baseType: !989, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2054, file: !2051, line: 516, baseType: !165, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2054, file: !2051, line: 517, baseType: !165, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2054, file: !2051, line: 518, baseType: !165, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !2051, line: 520, baseType: !2172, size: 32, offset: 320)
!2172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !996, line: 1325, baseType: !210, size: 32, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2174 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!2175 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!2176 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!2177 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!2178 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!2179 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!2180 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!2181 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!2182 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!2183 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!2184 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!2185 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!2186 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2050, file: !2051, line: 522, baseType: !2188, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2077, line: 22, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2077, line: 22, size: 64, elements: !2191)
!2191 = !{!2192}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2190, file: !2077, line: 22, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2077, line: 15, baseType: !165)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2050, file: !2051, line: 524, baseType: !2195, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2072, line: 372, baseType: !2197)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2072, line: 372, size: 64, elements: !2198)
!2198 = !{!2199}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2197, file: !2072, line: 372, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2077, line: 16, baseType: !165)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !2050, file: !2051, line: 527, baseType: !2202, size: 64, offset: 512)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2050, file: !2051, line: 527, size: 64, elements: !2203)
!2203 = !{!2204, !2210}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2202, file: !2051, line: 528, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2077, line: 21, baseType: !2206)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2077, line: 21, size: 64, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2206, file: !2077, line: 21, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2077, line: 14, baseType: !165)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2202, file: !2051, line: 529, baseType: !2189, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2050, file: !2051, line: 534, baseType: !1939, size: 64, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2050, file: !2051, line: 535, baseType: !1939, size: 64, offset: 640)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2050, file: !2051, line: 541, baseType: !2214, size: 64, offset: 704)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2050, file: !2051, line: 545, baseType: !2216, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2050, file: !2051, line: 549, baseType: !2218, size: 64, offset: 832)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2072, line: 520, baseType: !1939)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2038, file: !1991, line: 100, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!68, !1989, !165, !165, !68}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1990, file: !1991, line: 134, baseType: !187, size: 64, offset: 960)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1990, file: !1991, line: 135, baseType: !68, size: 32, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1991, line: 136, baseType: !2226, size: 128, offset: 1088)
!2226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1991, line: 136, size: 128, elements: !2227)
!2227 = !{!2228, !2234}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2226, file: !1991, line: 137, baseType: !2229, size: 128)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2230, line: 6, size: 128, elements: !2231)
!2230 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2229, file: !2230, line: 7, baseType: !271, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2229, file: !2230, line: 8, baseType: !271, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, scope: !2226, file: !1991, line: 138, baseType: !2235)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2226, file: !1991, line: 138, elements: !2236)
!2236 = !{!2237, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2235, file: !1991, line: 138, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2235, file: !1991, line: 138, elements: !754)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2235, file: !1991, line: 138, baseType: !2240)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2229, elements: !1634)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1986, file: !996, line: 147, baseType: !187, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1944, file: !996, line: 161, baseType: !685, size: 128, align: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !996, line: 164, baseType: !2244, size: 32, offset: 384)
!2244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !996, line: 164, size: 32, elements: !2245)
!2245 = !{!2246, !2247}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2244, file: !996, line: 169, baseType: !64, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2244, file: !996, line: 177, baseType: !210, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1940, file: !996, line: 181, baseType: !64, size: 32, offset: 416)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1935, file: !1936, line: 33, baseType: !210, size: 32, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1935, file: !1936, line: 34, baseType: !210, size: 32, offset: 96)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1920, file: !1895, line: 74, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2254, line: 296, size: 128, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2253, file: !2254, line: 297, baseType: !44, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2253, file: !2254, line: 299, baseType: !989, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2253, file: !2254, line: 300, baseType: !187, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1920, file: !1895, line: 75, baseType: !187, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1917, file: !1895, line: 77, baseType: !162, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1895, line: 80, baseType: !2262, size: 64, offset: 256)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !1895, line: 80, size: 64, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2262, file: !1895, line: 81, baseType: !165, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2262, file: !1895, line: 82, baseType: !359, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1851, file: !194, line: 1920, baseType: !1868, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1851, file: !194, line: 1921, baseType: !2268, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!68, !1871, !2271, !210}
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !194, line: 53, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1851, file: !194, line: 1923, baseType: !2274, size: 64, offset: 448)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!68, !1573, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !194, line: 1858, size: 128, elements: !2279)
!2279 = !{!2280, !2285}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2278, file: !194, line: 1859, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !194, line: 1855, baseType: !2282)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!545, !2277, !26, !68, !359, !271, !210}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2278, file: !194, line: 1860, baseType: !359, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1851, file: !194, line: 1924, baseType: !2287, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2290, !1573, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2291, line: 59, baseType: !210)
!2291 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !194, line: 61, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1851, file: !194, line: 1925, baseType: !2295, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!151, !1573, !210, !165}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1851, file: !194, line: 1926, baseType: !2295, size: 64, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1851, file: !194, line: 1927, baseType: !2300, size: 64, offset: 704)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!68, !1573, !2057}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1851, file: !194, line: 1928, baseType: !165, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1851, file: !194, line: 1929, baseType: !2305, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!68, !197, !1573}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1851, file: !194, line: 1930, baseType: !2309, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!68, !1573, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !194, line: 1061, baseType: !187)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1851, file: !194, line: 1931, baseType: !2305, size: 64, offset: 960)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1851, file: !194, line: 1932, baseType: !2315, size: 64, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!68, !1573, !359, !359, !68}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1851, file: !194, line: 1933, baseType: !2319, size: 64, offset: 1088)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!68, !68, !1573, !68}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1851, file: !194, line: 1934, baseType: !2323, size: 64, offset: 1152)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!68, !1573, !68, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !194, line: 1063, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1851, file: !194, line: 1935, baseType: !1570, size: 64, offset: 1216)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1851, file: !194, line: 1936, baseType: !2330, size: 64, offset: 1280)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!68, !68}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1851, file: !194, line: 1937, baseType: !2323, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1851, file: !194, line: 1938, baseType: !2335, size: 64, offset: 1408)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!147, !2338, !1573, !1862, !162, !210}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !913, line: 59, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1851, file: !194, line: 1939, baseType: !2341, size: 64, offset: 1472)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!147, !1573, !1862, !2338, !162, !210}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1851, file: !194, line: 1940, baseType: !2345, size: 64, offset: 1536)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{null, !1573}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1851, file: !194, line: 1941, baseType: !2349, size: 64, offset: 1600)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!68, !1573, !68, !2352, !2353}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1851, file: !194, line: 1942, baseType: !2355, size: 64, offset: 1664)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!151, !1573, !68, !359, !359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1851, file: !194, line: 1944, baseType: !2359, size: 64, offset: 1728)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !911, !1573}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1851, file: !194, line: 1948, baseType: !2363, size: 64, offset: 1792)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!147, !1573, !359, !1573, !359, !162, !210}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1851, file: !194, line: 1950, baseType: !2367, size: 64, offset: 1856)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!359, !1573, !359, !1573, !359, !359, !210}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1851, file: !194, line: 1953, baseType: !2315, size: 64, offset: 1920)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1851, file: !194, line: 1954, baseType: !2372, size: 64, offset: 1984)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!68, !2375, !210}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !194, line: 1911, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1851, file: !194, line: 1955, baseType: !2378, size: 64, offset: 2048)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!68, !2375, !2271, !210}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1574, file: !194, line: 1018, baseType: !271, size: 64, offset: 1472)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1574, file: !194, line: 1020, baseType: !187, size: 64, offset: 1536)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1574, file: !194, line: 1023, baseType: !187, size: 64, offset: 1600)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1574, file: !194, line: 1027, baseType: !2385, size: 64, offset: 1664)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1574, file: !194, line: 1029, baseType: !192, size: 64, offset: 1728)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1574, file: !194, line: 1030, baseType: !2388, size: 32, offset: 1792)
!2388 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2389, line: 8, baseType: !267)
!2389 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1574, file: !194, line: 1031, baseType: !2388, size: 32, offset: 1824)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1550, file: !996, line: 756, baseType: !165, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1550, file: !996, line: 757, baseType: !165, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1550, file: !996, line: 760, baseType: !165, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1550, file: !996, line: 761, baseType: !165, size: 64, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1550, file: !996, line: 763, baseType: !165, size: 64, offset: 960)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1550, file: !996, line: 764, baseType: !2397, size: 64, offset: 1024)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2072, line: 299, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2072, line: 299, size: 64, elements: !2400)
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2399, file: !2072, line: 299, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2077, line: 18, baseType: !165)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1550, file: !996, line: 773, baseType: !64, size: 32, offset: 1088)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1550, file: !996, line: 785, baseType: !64, size: 32, offset: 1120)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1550, file: !996, line: 795, baseType: !2406, size: 64, offset: 1152)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !996, line: 726, size: 128, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2407, file: !996, line: 727, baseType: !271, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2407, file: !996, line: 728, baseType: !68, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1550, file: !996, line: 801, baseType: !165, size: 64, offset: 1216)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1550, file: !996, line: 804, baseType: !469, size: 64, offset: 1280)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1550, file: !996, line: 806, baseType: !68, size: 32, offset: 1344)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1550, file: !996, line: 808, baseType: !44, size: 32, offset: 1376)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1550, file: !996, line: 823, baseType: !1138, size: 320, offset: 1408)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1550, file: !996, line: 825, baseType: !30, size: 128, offset: 1728)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1550, file: !996, line: 845, baseType: !68, size: 32, offset: 1856)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1550, file: !996, line: 849, baseType: !165, size: 64, offset: 1920)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1550, file: !996, line: 850, baseType: !165, size: 64, offset: 1984)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1550, file: !996, line: 852, baseType: !165, size: 64, offset: 2048)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1550, file: !996, line: 853, baseType: !165, size: 64, offset: 2112)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1550, file: !996, line: 854, baseType: !471, size: 64, offset: 2176)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1550, file: !996, line: 855, baseType: !165, size: 64, offset: 2240)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1550, file: !996, line: 856, baseType: !165, size: 64, offset: 2304)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1550, file: !996, line: 857, baseType: !165, size: 64, offset: 2368)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1550, file: !996, line: 858, baseType: !165, size: 64, offset: 2432)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1550, file: !996, line: 865, baseType: !244, size: 32, offset: 2496)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1550, file: !996, line: 867, baseType: !44, size: 32, offset: 2528)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1550, file: !996, line: 869, baseType: !165, size: 64, offset: 2560)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1550, file: !996, line: 869, baseType: !165, size: 64, offset: 2624)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1550, file: !996, line: 869, baseType: !165, size: 64, offset: 2688)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1550, file: !996, line: 869, baseType: !165, size: 64, offset: 2752)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1550, file: !996, line: 870, baseType: !165, size: 64, offset: 2816)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1550, file: !996, line: 870, baseType: !165, size: 64, offset: 2880)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1550, file: !996, line: 870, baseType: !165, size: 64, offset: 2944)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1550, file: !996, line: 871, baseType: !165, size: 64, offset: 3008)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1550, file: !996, line: 871, baseType: !165, size: 64, offset: 3072)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1550, file: !996, line: 871, baseType: !165, size: 64, offset: 3136)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1550, file: !996, line: 871, baseType: !165, size: 64, offset: 3200)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1550, file: !996, line: 873, baseType: !2441, size: 3328, offset: 3264)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 3328, elements: !2442)
!2442 = !{!2443}
!2443 = !DISubrange(count: 52)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1550, file: !996, line: 875, baseType: !2445, size: 1280, offset: 6592)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1793, size: 1280, elements: !695)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1550, file: !996, line: 877, baseType: !2447, size: 64, offset: 7872)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !996, line: 877, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1550, file: !996, line: 880, baseType: !2450, size: 1088, offset: 7936)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2451, line: 72, baseType: !2452)
!2451 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2451, line: 23, size: 1088, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2461, !2462, !2463, !2464, !2491, !2492, !2493}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2452, file: !2451, line: 28, baseType: !271, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2452, file: !2451, line: 38, baseType: !471, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2452, file: !2451, line: 40, baseType: !165, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2452, file: !2451, line: 43, baseType: !1138, size: 320, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2452, file: !2451, line: 44, baseType: !2459, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2451, line: 44, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2452, file: !2451, line: 48, baseType: !165, size: 64, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2452, file: !2451, line: 59, baseType: !465, size: 256, offset: 640)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2452, file: !2451, line: 60, baseType: !187, size: 64, offset: 896)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2452, file: !2451, line: 61, baseType: !2465, size: 64, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2468, line: 13, size: 1216, elements: !2469)
!2468 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2467, file: !2468, line: 14, baseType: !187, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2467, file: !2468, line: 15, baseType: !165, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2467, file: !2468, line: 17, baseType: !165, size: 64, offset: 128)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2467, file: !2468, line: 17, baseType: !165, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2467, file: !2468, line: 18, baseType: !165, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2467, file: !2468, line: 18, baseType: !165, size: 64, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2467, file: !2468, line: 19, baseType: !2477, size: 64, offset: 384)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2467, file: !2468, line: 21, baseType: !151, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2467, file: !2468, line: 23, baseType: !151, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2467, file: !2468, line: 24, baseType: !151, size: 64, offset: 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2467, file: !2468, line: 25, baseType: !151, size: 64, offset: 640)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2467, file: !2468, line: 26, baseType: !151, size: 64, offset: 704)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2467, file: !2468, line: 27, baseType: !151, size: 64, offset: 768)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2467, file: !2468, line: 28, baseType: !151, size: 64, offset: 832)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2467, file: !2468, line: 29, baseType: !151, size: 64, offset: 896)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2467, file: !2468, line: 30, baseType: !151, size: 64, offset: 960)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2467, file: !2468, line: 31, baseType: !151, size: 64, offset: 1024)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2467, file: !2468, line: 32, baseType: !151, size: 64, offset: 1088)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2467, file: !2468, line: 33, baseType: !151, size: 64, offset: 1152)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2452, file: !2451, line: 63, baseType: !64, size: 32, offset: 1024)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2452, file: !2451, line: 69, baseType: !83, size: 16, offset: 1056)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2452, file: !2451, line: 70, baseType: !601, size: 16, offset: 1072)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1550, file: !996, line: 882, baseType: !165, size: 64, offset: 9024)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1550, file: !996, line: 885, baseType: !44, size: 32, offset: 9088)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1550, file: !996, line: 886, baseType: !2497, size: 64, offset: 9152)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !996, line: 732, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1550, file: !996, line: 901, baseType: !1818, size: 64, offset: 9216)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1550, file: !996, line: 904, baseType: !1573, size: 64, offset: 9280)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1550, file: !996, line: 906, baseType: !2502, size: 64, offset: 9344)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !996, line: 906, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1550, file: !996, line: 930, baseType: !64, size: 32, offset: 9408)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1550, file: !996, line: 933, baseType: !64, size: 32, offset: 9440)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1550, file: !996, line: 935, baseType: !2507, size: 64, offset: 9472)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2508, line: 103, size: 64, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!2509 = !{!2510}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2507, file: !2508, line: 104, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !2508, line: 101, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1550, file: !996, line: 940, baseType: !469, size: 64, offset: 9536)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1550, file: !996, line: 942, baseType: !725, size: 256, offset: 9600)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1547, file: !996, line: 986, baseType: !2516, offset: 10240)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, elements: !1634)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1245, file: !913, line: 882, baseType: !1546, size: 64, offset: 9792)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1245, file: !913, line: 884, baseType: !68, size: 32, offset: 9856)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1245, file: !913, line: 885, baseType: !68, size: 32, offset: 9888)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1245, file: !913, line: 886, baseType: !68, size: 32, offset: 9920)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1245, file: !913, line: 888, baseType: !68, size: 32, offset: 9952)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1245, file: !913, line: 890, baseType: !165, size: 64, offset: 9984)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1245, file: !913, line: 893, baseType: !210, size: 32, offset: 10048)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1245, file: !913, line: 896, baseType: !210, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1245, file: !913, line: 897, baseType: !210, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1245, file: !913, line: 898, baseType: !210, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1245, file: !913, line: 899, baseType: !210, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1245, file: !913, line: 919, baseType: !210, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1245, file: !913, line: 922, baseType: !210, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1245, file: !913, line: 923, baseType: !210, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1245, file: !913, line: 925, baseType: !210, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1245, file: !913, line: 939, baseType: !210, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1245, file: !913, line: 941, baseType: !210, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1245, file: !913, line: 944, baseType: !210, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1245, file: !913, line: 956, baseType: !210, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1245, file: !913, line: 962, baseType: !210, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1245, file: !913, line: 966, baseType: !210, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1245, file: !913, line: 969, baseType: !165, size: 64, offset: 10176)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1245, file: !913, line: 971, baseType: !2540, size: 448, offset: 10240)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2541, line: 25, size: 448, elements: !2542)
!2541 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2542 = !{!2543, !2544, !2549}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2540, file: !2541, line: 26, baseType: !165, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2540, file: !2541, line: 27, baseType: !2545, size: 64, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!151, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !2541, line: 28, baseType: !2550, size: 320, offset: 128)
!2550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2540, file: !2541, line: 28, size: 320, elements: !2551)
!2551 = !{!2552, !2562, !2592}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2550, file: !2541, line: 37, baseType: !2553, size: 320)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2541, line: 30, size: 320, elements: !2554)
!2554 = !{!2555, !2557, !2558, !2559, !2560, !2561}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2553, file: !2541, line: 31, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2553, file: !2541, line: 32, baseType: !267, size: 32, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2553, file: !2541, line: 33, baseType: !267, size: 32, offset: 96)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2553, file: !2541, line: 34, baseType: !267, size: 32, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2553, file: !2541, line: 35, baseType: !271, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2553, file: !2541, line: 36, baseType: !2556, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2550, file: !2541, line: 47, baseType: !2563, size: 192)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2541, line: 39, size: 192, elements: !2564)
!2564 = !{!2565, !2566, !2572, !2591}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2563, file: !2541, line: 40, baseType: !1417, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2563, file: !2541, line: 41, baseType: !2567, size: 32, offset: 32)
!2567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2541, line: 16, baseType: !210, size: 32, elements: !2568)
!2568 = !{!2569, !2570, !2571}
!2569 = !DIEnumerator(name: "TT_NONE", value: 0)
!2570 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2571 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2572 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !2541, line: 42, baseType: !2573, size: 64, offset: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2563, file: !2541, line: 42, size: 64, elements: !2574)
!2574 = !{!2575, !2583}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2573, file: !2541, line: 43, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2578, line: 7, size: 128, elements: !2579)
!2578 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2579 = !{!2580, !2582}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2577, file: !2578, line: 8, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !149, line: 93, baseType: !361)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2577, file: !2578, line: 9, baseType: !361, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2573, file: !2541, line: 44, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2586, line: 7, size: 64, elements: !2587)
!2586 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2587 = !{!2588, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2585, file: !2586, line: 8, baseType: !2589, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2586, line: 5, baseType: !461)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2585, file: !2586, line: 9, baseType: !461, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2563, file: !2541, line: 46, baseType: !271, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2550, file: !2541, line: 55, baseType: !2593, size: 256)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2550, file: !2541, line: 49, size: 256, elements: !2594)
!2594 = !{!2595, !2598, !2599, !2600, !2601}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2593, file: !2541, line: 50, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2541, line: 14, flags: DIFlagFwdDecl)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2593, file: !2541, line: 51, baseType: !68, size: 32, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2593, file: !2541, line: 52, baseType: !68, size: 32, offset: 96)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2593, file: !2541, line: 53, baseType: !165, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2593, file: !2541, line: 54, baseType: !165, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1245, file: !913, line: 973, baseType: !2603, size: 32, offset: 10688)
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !31, line: 27, baseType: !2604)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !149, line: 28, baseType: !68)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1245, file: !913, line: 974, baseType: !2603, size: 32, offset: 10720)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1245, file: !913, line: 978, baseType: !165, size: 64, offset: 10752)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1245, file: !913, line: 987, baseType: !1244, size: 64, offset: 10816)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1245, file: !913, line: 990, baseType: !1244, size: 64, offset: 10880)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1245, file: !913, line: 995, baseType: !30, size: 128, offset: 10944)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1245, file: !913, line: 996, baseType: !30, size: 128, offset: 11072)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1245, file: !913, line: 997, baseType: !1244, size: 64, offset: 11200)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1245, file: !913, line: 1005, baseType: !30, size: 128, offset: 11264)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1245, file: !913, line: 1006, baseType: !30, size: 128, offset: 11392)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1245, file: !913, line: 1009, baseType: !1614, size: 64, offset: 11520)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1245, file: !913, line: 1010, baseType: !2616, size: 512, offset: 11584)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 512, elements: !695)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1245, file: !913, line: 1011, baseType: !30, size: 128, offset: 12096)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1245, file: !913, line: 1012, baseType: !30, size: 128, offset: 12224)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1245, file: !913, line: 1014, baseType: !413, size: 64, offset: 12352)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1245, file: !913, line: 1017, baseType: !594, size: 64, offset: 12416)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1245, file: !913, line: 1020, baseType: !594, size: 64, offset: 12480)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1245, file: !913, line: 1023, baseType: !187, size: 64, offset: 12544)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1245, file: !913, line: 1025, baseType: !271, size: 64, offset: 12608)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1245, file: !913, line: 1026, baseType: !271, size: 64, offset: 12672)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1245, file: !913, line: 1031, baseType: !271, size: 64, offset: 12736)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1245, file: !913, line: 1032, baseType: !2627, size: 192, offset: 12800)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !913, line: 324, size: 192, elements: !2628)
!2628 = !{!2629, !2630, !2631}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2627, file: !913, line: 326, baseType: !271, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2627, file: !913, line: 327, baseType: !271, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2627, file: !913, line: 328, baseType: !423, size: 32, offset: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1245, file: !913, line: 1041, baseType: !165, size: 64, offset: 12992)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1245, file: !913, line: 1042, baseType: !165, size: 64, offset: 13056)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1245, file: !913, line: 1045, baseType: !271, size: 64, offset: 13120)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1245, file: !913, line: 1048, baseType: !271, size: 64, offset: 13184)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1245, file: !913, line: 1051, baseType: !165, size: 64, offset: 13248)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1245, file: !913, line: 1052, baseType: !165, size: 64, offset: 13312)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1245, file: !913, line: 1055, baseType: !2639, size: 640, offset: 13376)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2640, line: 132, size: 640, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2641 = !{!2642, !2648, !2649}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2639, file: !2640, line: 133, baseType: !2643, size: 576)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2644, size: 576, elements: !116)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2640, line: 117, size: 192, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2644, file: !2640, line: 118, baseType: !271, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2644, file: !2640, line: 119, baseType: !1426, size: 128, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2639, file: !2640, line: 134, baseType: !210, size: 32, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2639, file: !2640, line: 135, baseType: !210, size: 32, offset: 608)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1245, file: !913, line: 1058, baseType: !2651, size: 448, offset: 14016)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2640, line: 144, size: 448, elements: !2652)
!2652 = !{!2653, !2654, !2655}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2651, file: !2640, line: 145, baseType: !685, size: 128, align: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2651, file: !2640, line: 146, baseType: !465, size: 256, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2651, file: !2640, line: 147, baseType: !210, size: 32, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1245, file: !913, line: 1064, baseType: !1648, size: 64, offset: 14464)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1245, file: !913, line: 1067, baseType: !1648, size: 64, offset: 14528)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1245, file: !913, line: 1070, baseType: !1648, size: 64, offset: 14592)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1245, file: !913, line: 1074, baseType: !1675, size: 64, offset: 14656)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1245, file: !913, line: 1084, baseType: !2661, size: 128, offset: 14720)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !2662)
!2662 = !{!2663}
!2663 = !DISubrange(count: 16)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1245, file: !913, line: 1086, baseType: !2665, size: 64, offset: 14848)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !913, line: 55, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1245, file: !913, line: 1089, baseType: !2668, size: 64, offset: 14912)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2669, line: 12, size: 64, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2670 = !{!2671}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2668, file: !2669, line: 13, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2669, line: 8, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1245, file: !913, line: 1090, baseType: !2675, size: 128, offset: 14976)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2676, line: 13, size: 128, elements: !2677)
!2676 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2677 = !{!2678}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2675, file: !2676, line: 14, baseType: !30, size: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1245, file: !913, line: 1097, baseType: !2680, size: 64, offset: 15104)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !913, line: 50, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1245, file: !913, line: 1100, baseType: !2683, size: 64, offset: 15168)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !913, line: 1100, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1245, file: !913, line: 1103, baseType: !2686, size: 64, offset: 15232)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !913, line: 53, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1245, file: !913, line: 1107, baseType: !2689, size: 64, offset: 15296)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2691, line: 31, size: 576, elements: !2692)
!2691 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2692 = !{!2693, !2694, !2697, !2700, !2703, !2704, !2707, !2710, !2711}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2690, file: !2691, line: 32, baseType: !1258, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2690, file: !2691, line: 33, baseType: !2695, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2691, line: 9, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2690, file: !2691, line: 34, baseType: !2698, size: 64, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2691, line: 10, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2690, file: !2691, line: 35, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2691, line: 8, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2690, file: !2691, line: 36, baseType: !1632, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2690, file: !2691, line: 37, baseType: !2705, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1677, line: 34, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2690, file: !2691, line: 38, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2691, line: 38, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2690, file: !2691, line: 39, baseType: !2708, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2690, file: !2691, line: 40, baseType: !2712, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2691, line: 12, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1245, file: !913, line: 1110, baseType: !2715, size: 64, offset: 15360)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2717, line: 93, size: 8768, elements: !2718)
!2717 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2766, !2775, !2776, !2778, !2779, !2780, !2783, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2821, !2822, !2829, !2839, !2842, !2843, !2846, !2847, !2848, !2849, !2850, !2851}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2716, file: !2717, line: 94, baseType: !1258, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2716, file: !2717, line: 95, baseType: !64, size: 32, offset: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2716, file: !2717, line: 96, baseType: !68, size: 32, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2716, file: !2717, line: 97, baseType: !68, size: 32, offset: 96)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2716, file: !2717, line: 98, baseType: !30, size: 128, offset: 128)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2716, file: !2717, line: 100, baseType: !1231, size: 192, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2716, file: !2717, line: 103, baseType: !1244, size: 64, offset: 448)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2716, file: !2717, line: 106, baseType: !2727, size: 192, offset: 512)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1823, line: 32, size: 192, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2727, file: !1823, line: 33, baseType: !30, size: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2727, file: !1823, line: 34, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2732, line: 25, baseType: !2733)
!2732 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2732, line: 23, size: 64, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2733, file: !2732, line: 24, baseType: !1497, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2716, file: !2717, line: 109, baseType: !835, size: 64, offset: 704)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2716, file: !2717, line: 112, baseType: !68, size: 32, offset: 768)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2716, file: !2717, line: 114, baseType: !68, size: 32, offset: 800)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2716, file: !2717, line: 115, baseType: !1244, size: 64, offset: 832)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2716, file: !2717, line: 118, baseType: !68, size: 32, offset: 896)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2716, file: !2717, line: 119, baseType: !210, size: 32, offset: 928)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2716, file: !2717, line: 121, baseType: !2743, size: 64, offset: 960)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2717, line: 80, size: 448, elements: !2745)
!2745 = !{!2746, !2747, !2753}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2744, file: !2717, line: 81, baseType: !64, size: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2744, file: !2717, line: 82, baseType: !2748, size: 128, offset: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2717, line: 75, size: 128, elements: !2749)
!2749 = !{!2750, !2751}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2748, file: !2717, line: 76, baseType: !1244, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2748, file: !2717, line: 77, baseType: !2752, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2744, file: !2717, line: 83, baseType: !414, size: 256, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2716, file: !2717, line: 132, baseType: !210, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2716, file: !2717, line: 133, baseType: !210, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2716, file: !2717, line: 138, baseType: !210, size: 32, offset: 1056)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2716, file: !2717, line: 139, baseType: !30, size: 128, offset: 1088)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2716, file: !2717, line: 142, baseType: !1365, size: 512, offset: 1216)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2716, file: !2717, line: 143, baseType: !1374, size: 64, offset: 1728)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2716, file: !2717, line: 150, baseType: !2761, size: 256, offset: 1792)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 256, elements: !584)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2717, line: 38, size: 128, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2762, file: !2717, line: 39, baseType: !271, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2762, file: !2717, line: 40, baseType: !271, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2716, file: !2717, line: 156, baseType: !2767, size: 192, offset: 2048)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2717, line: 66, size: 192, elements: !2768)
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2767, file: !2717, line: 67, baseType: !2770, size: 192)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2717, line: 47, size: 192, elements: !2771)
!2771 = !{!2772, !2773, !2774}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2770, file: !2717, line: 48, baseType: !471, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2770, file: !2717, line: 49, baseType: !471, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2770, file: !2717, line: 50, baseType: !471, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2716, file: !2717, line: 160, baseType: !2639, size: 640, offset: 2240)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2716, file: !2717, line: 163, baseType: !2777, size: 256, offset: 2880)
!2777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1614, size: 256, elements: !695)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2716, file: !2717, line: 169, baseType: !1614, size: 64, offset: 3136)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2716, file: !2717, line: 172, baseType: !68, size: 32, offset: 3200)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2716, file: !2717, line: 174, baseType: !2781, size: 64, offset: 3264)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2717, line: 174, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2716, file: !2717, line: 185, baseType: !2784, size: 64, offset: 3328)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !240, line: 860, baseType: !2785)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 853, size: 64, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2785, file: !240, line: 858, baseType: !239, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2785, file: !240, line: 859, baseType: !44, size: 32, offset: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2716, file: !2717, line: 186, baseType: !271, size: 64, offset: 3392)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2716, file: !2717, line: 186, baseType: !271, size: 64, offset: 3456)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2716, file: !2717, line: 186, baseType: !271, size: 64, offset: 3520)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2716, file: !2717, line: 186, baseType: !271, size: 64, offset: 3584)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2716, file: !2717, line: 187, baseType: !271, size: 64, offset: 3648)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2716, file: !2717, line: 188, baseType: !271, size: 64, offset: 3712)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2716, file: !2717, line: 189, baseType: !2627, size: 192, offset: 3776)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2716, file: !2717, line: 190, baseType: !165, size: 64, offset: 3968)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2716, file: !2717, line: 190, baseType: !165, size: 64, offset: 4032)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2716, file: !2717, line: 190, baseType: !165, size: 64, offset: 4096)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2716, file: !2717, line: 190, baseType: !165, size: 64, offset: 4160)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2716, file: !2717, line: 191, baseType: !165, size: 64, offset: 4224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2716, file: !2717, line: 191, baseType: !165, size: 64, offset: 4288)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2716, file: !2717, line: 191, baseType: !165, size: 64, offset: 4352)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2716, file: !2717, line: 191, baseType: !165, size: 64, offset: 4416)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2716, file: !2717, line: 192, baseType: !165, size: 64, offset: 4480)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2716, file: !2717, line: 192, baseType: !165, size: 64, offset: 4544)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2716, file: !2717, line: 192, baseType: !165, size: 64, offset: 4608)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2716, file: !2717, line: 192, baseType: !165, size: 64, offset: 4672)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2716, file: !2717, line: 193, baseType: !165, size: 64, offset: 4736)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2716, file: !2717, line: 193, baseType: !165, size: 64, offset: 4800)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2716, file: !2717, line: 194, baseType: !2811, size: 448, offset: 4864)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2812, line: 12, size: 448, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2811, file: !2812, line: 15, baseType: !271, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2811, file: !2812, line: 17, baseType: !271, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2811, file: !2812, line: 19, baseType: !271, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2811, file: !2812, line: 21, baseType: !271, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2811, file: !2812, line: 29, baseType: !271, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2811, file: !2812, line: 35, baseType: !271, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2811, file: !2812, line: 44, baseType: !271, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2716, file: !2717, line: 202, baseType: !273, size: 64, offset: 5312)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2716, file: !2717, line: 213, baseType: !2823, size: 2048, offset: 5376)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2824, size: 2048, elements: !2662)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2825, line: 43, size: 128, elements: !2826)
!2825 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2824, file: !2825, line: 44, baseType: !164, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2824, file: !2825, line: 45, baseType: !164, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2716, file: !2717, line: 216, baseType: !2830, size: 448, offset: 7424)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2717, line: 30, size: 448, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2830, file: !2717, line: 31, baseType: !68, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2830, file: !2717, line: 32, baseType: !151, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2830, file: !2717, line: 33, baseType: !165, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2830, file: !2717, line: 34, baseType: !271, size: 64, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2830, file: !2717, line: 34, baseType: !271, size: 64, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2830, file: !2717, line: 35, baseType: !165, size: 64, offset: 320)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2830, file: !2717, line: 35, baseType: !165, size: 64, offset: 384)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2716, file: !2717, line: 219, baseType: !2840, size: 64, offset: 7872)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2717, line: 219, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2716, file: !2717, line: 222, baseType: !210, size: 32, offset: 7936)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2716, file: !2717, line: 223, baseType: !2844, size: 64, offset: 8000)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2717, line: 223, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2716, file: !2717, line: 230, baseType: !545, size: 8, offset: 8064)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2716, file: !2717, line: 231, baseType: !603, size: 16, offset: 8080)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2716, file: !2717, line: 232, baseType: !603, size: 16, offset: 8096)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2716, file: !2717, line: 234, baseType: !1546, size: 64, offset: 8128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2716, file: !2717, line: 237, baseType: !465, size: 256, offset: 8192)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2716, file: !2717, line: 243, baseType: !1138, size: 320, offset: 8448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1245, file: !913, line: 1111, baseType: !2853, size: 64, offset: 15424)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2717, line: 20, size: 16640, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2854, file: !2717, line: 21, baseType: !44, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2854, file: !2717, line: 22, baseType: !1258, size: 32, offset: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2854, file: !2717, line: 23, baseType: !1231, size: 192, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2854, file: !2717, line: 24, baseType: !2860, size: 16384, offset: 256)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, size: 16384, elements: !120)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1823, line: 51, size: 256, elements: !2862)
!2862 = !{!2863}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2861, file: !1823, line: 52, baseType: !2864, size: 256)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1823, line: 37, size: 256, elements: !2865)
!2865 = !{!2866, !2873, !2874, !2878}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2864, file: !1823, line: 39, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2868, line: 83, baseType: !2869)
!2868 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2868, line: 82, baseType: !2871)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !68}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2864, file: !1823, line: 40, baseType: !165, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2864, file: !1823, line: 46, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2868, line: 86, baseType: !2876)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2868, line: 85, baseType: !830)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2864, file: !1823, line: 48, baseType: !2731, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1245, file: !913, line: 1112, baseType: !2731, size: 64, offset: 15488)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1245, file: !913, line: 1113, baseType: !2731, size: 64, offset: 15552)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1245, file: !913, line: 1115, baseType: !2731, size: 64, offset: 15616)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1245, file: !913, line: 1116, baseType: !2727, size: 192, offset: 15680)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1245, file: !913, line: 1117, baseType: !165, size: 64, offset: 15872)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1245, file: !913, line: 1118, baseType: !162, size: 64, offset: 15936)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1245, file: !913, line: 1119, baseType: !210, size: 32, offset: 16000)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1245, file: !913, line: 1121, baseType: !684, size: 64, offset: 16064)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1245, file: !913, line: 1125, baseType: !2888, size: 64, offset: 16128)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !913, line: 43, flags: DIFlagFwdDecl)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1245, file: !913, line: 1127, baseType: !203, size: 32, offset: 16192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1245, file: !913, line: 1128, baseType: !210, size: 32, offset: 16224)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1245, file: !913, line: 1130, baseType: !2893, size: 128, offset: 16256)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2894, line: 37, size: 128, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2895 = !{!2896, !2897, !2898}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2893, file: !2894, line: 38, baseType: !68, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2893, file: !2894, line: 39, baseType: !64, size: 32, offset: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2893, file: !2894, line: 40, baseType: !2899, size: 64, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2894, line: 24, flags: DIFlagFwdDecl)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1245, file: !913, line: 1131, baseType: !2902, size: 256, offset: 16384)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2903, line: 12, size: 256, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2904 = !{!2905, !2906, !2907, !2908}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2902, file: !2903, line: 13, baseType: !115, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2902, file: !2903, line: 14, baseType: !165, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2902, file: !2903, line: 15, baseType: !165, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2902, file: !2903, line: 16, baseType: !545, size: 8, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1245, file: !913, line: 1134, baseType: !271, size: 64, offset: 16640)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1245, file: !913, line: 1135, baseType: !271, size: 64, offset: 16704)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1245, file: !913, line: 1138, baseType: !44, size: 32, offset: 16768)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1245, file: !913, line: 1141, baseType: !423, size: 32, offset: 16800)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1245, file: !913, line: 1143, baseType: !2914, size: 64, offset: 16832)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !913, line: 735, size: 64, elements: !2915)
!2915 = !{!2916}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2914, file: !913, line: 736, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1245, file: !913, line: 1147, baseType: !1429, size: 128, offset: 16896)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1245, file: !913, line: 1149, baseType: !1244, size: 64, offset: 17024)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1245, file: !913, line: 1151, baseType: !2921, size: 64, offset: 17088)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !913, line: 1151, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1245, file: !913, line: 1188, baseType: !187, size: 64, offset: 17152)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1245, file: !913, line: 1191, baseType: !2925, size: 64, offset: 17216)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !913, line: 44, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1245, file: !913, line: 1194, baseType: !2928, size: 64, offset: 17280)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !913, line: 45, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1245, file: !913, line: 1197, baseType: !2931, size: 64, offset: 17344)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !913, line: 61, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1245, file: !913, line: 1199, baseType: !2934, size: 64, offset: 17408)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2936, line: 99, size: 128, elements: !2937)
!2936 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2935, file: !2936, line: 100, baseType: !469, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2935, file: !2936, line: 101, baseType: !64, size: 32, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2935, file: !2936, line: 103, baseType: !85, size: 16, offset: 96)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1245, file: !913, line: 1202, baseType: !2942, size: 64, offset: 17472)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !913, line: 48, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1245, file: !913, line: 1205, baseType: !165, size: 64, offset: 17536)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1245, file: !913, line: 1206, baseType: !2946, size: 64, offset: 17600)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1823, line: 14, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1823, line: 12, size: 384, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !1823, line: 13, baseType: !2951, size: 384)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2948, file: !1823, line: 13, size: 384, elements: !2952)
!2952 = !{!2953, !2954, !2955, !2956}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2951, file: !1823, line: 13, baseType: !68, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2951, file: !1823, line: 13, baseType: !68, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2951, file: !1823, line: 13, baseType: !68, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2951, file: !1823, line: 13, baseType: !2957, size: 256, offset: 128)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2958, line: 37, size: 256, elements: !2959)
!2958 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2959 = !{!2960, !2965, !2978, !2984, !2993, !3020, !3025}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2957, file: !2958, line: 42, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 39, size: 64, elements: !2962)
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2961, file: !2958, line: 40, baseType: !2604, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2961, file: !2958, line: 41, baseType: !209, size: 32, offset: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2957, file: !2958, line: 50, baseType: !2966, size: 192)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 45, size: 192, elements: !2967)
!2967 = !{!2968, !2970, !2971, !2977}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2966, file: !2958, line: 46, baseType: !2969, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !149, line: 95, baseType: !68)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2966, file: !2958, line: 47, baseType: !68, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2966, file: !2958, line: 48, baseType: !2972, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2958, line: 11, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2958, line: 8, size: 64, elements: !2974)
!2974 = !{!2975, !2976}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2973, file: !2958, line: 9, baseType: !68, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2973, file: !2958, line: 10, baseType: !187, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2966, file: !2958, line: 49, baseType: !68, size: 32, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2957, file: !2958, line: 57, baseType: !2979, size: 128)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 53, size: 128, elements: !2980)
!2980 = !{!2981, !2982, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2979, file: !2958, line: 54, baseType: !2604, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2979, file: !2958, line: 55, baseType: !209, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2979, file: !2958, line: 56, baseType: !2972, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2957, file: !2958, line: 66, baseType: !2985, size: 256)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 60, size: 256, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2992}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2985, file: !2958, line: 61, baseType: !2604, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2985, file: !2958, line: 62, baseType: !209, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2985, file: !2958, line: 63, baseType: !68, size: 32, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2985, file: !2958, line: 64, baseType: !2991, size: 64, offset: 128)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !149, line: 94, baseType: !150)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2985, file: !2958, line: 65, baseType: !2991, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2957, file: !2958, line: 105, baseType: !2994, size: 256)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 69, size: 256, elements: !2995)
!2995 = !{!2996, !2997}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2994, file: !2958, line: 70, baseType: !187, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2994, file: !2958, line: 79, baseType: !2998, size: 192, offset: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2994, file: !2958, line: 79, size: 192, elements: !2999)
!2999 = !{!3000, !3001, !3002, !3009, !3014}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2998, file: !2958, line: 81, baseType: !68, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2998, file: !2958, line: 86, baseType: !603, size: 16)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2998, file: !2958, line: 92, baseType: !3003, size: 192)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2958, line: 88, size: 192, elements: !3004)
!3004 = !{!3005, !3007, !3008}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3003, file: !2958, line: 89, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !1413)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3003, file: !2958, line: 90, baseType: !187, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3003, file: !2958, line: 91, baseType: !187, size: 64, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2998, file: !2958, line: 97, baseType: !3010, size: 96)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2958, line: 94, size: 96, elements: !3011)
!3011 = !{!3012, !3013}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3010, file: !2958, line: 95, baseType: !3006, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3010, file: !2958, line: 96, baseType: !268, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2998, file: !2958, line: 103, baseType: !3015, size: 128)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2998, file: !2958, line: 99, size: 128, elements: !3016)
!3016 = !{!3017, !3018, !3019}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3015, file: !2958, line: 100, baseType: !165, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3015, file: !2958, line: 101, baseType: !268, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3015, file: !2958, line: 102, baseType: !268, size: 32, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2957, file: !2958, line: 111, baseType: !3021, size: 128)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 108, size: 128, elements: !3022)
!3022 = !{!3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3021, file: !2958, line: 109, baseType: !151, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3021, file: !2958, line: 110, baseType: !68, size: 32, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2957, file: !2958, line: 118, baseType: !3026, size: 128)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2958, line: 114, size: 128, elements: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3026, file: !2958, line: 115, baseType: !187, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3026, file: !2958, line: 116, baseType: !68, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3026, file: !2958, line: 117, baseType: !210, size: 32, offset: 96)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1245, file: !913, line: 1208, baseType: !2811, size: 448, offset: 17664)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1245, file: !913, line: 1215, baseType: !271, size: 64, offset: 18112)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1245, file: !913, line: 1217, baseType: !271, size: 64, offset: 18176)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1245, file: !913, line: 1219, baseType: !271, size: 64, offset: 18240)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1245, file: !913, line: 1223, baseType: !3036, size: 64, offset: 18304)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3037, line: 99, baseType: !3038)
!3037 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3037, line: 99, size: 64, elements: !3039)
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3038, file: !3037, line: 99, baseType: !1497, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1245, file: !913, line: 1225, baseType: !239, size: 32, offset: 18368)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1245, file: !913, line: 1226, baseType: !68, size: 32, offset: 18400)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1245, file: !913, line: 1227, baseType: !68, size: 32, offset: 18432)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1245, file: !913, line: 1231, baseType: !3045, size: 64, offset: 18496)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !913, line: 1231, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1245, file: !913, line: 1233, baseType: !30, size: 128, offset: 18560)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1245, file: !913, line: 1240, baseType: !3049, size: 64, offset: 18688)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !913, line: 62, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1245, file: !913, line: 1242, baseType: !3052, size: 64, offset: 18752)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3054, line: 392, size: 96, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3055 = !{!3056, !3062, !3064}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3053, file: !3054, line: 393, baseType: !3057, size: 32)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3054, line: 388, size: 32, elements: !3058)
!3058 = !{!3059}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3057, file: !3054, line: 389, baseType: !3060, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3061, line: 46, baseType: !267)
!3061 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3053, file: !3054, line: 394, baseType: !3063, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3061, line: 42, baseType: !461)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3053, file: !3054, line: 395, baseType: !3060, size: 32, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1245, file: !913, line: 1244, baseType: !30, size: 128, offset: 18816)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1245, file: !913, line: 1245, baseType: !3067, size: 64, offset: 18944)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !913, line: 51, flags: DIFlagFwdDecl)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1245, file: !913, line: 1246, baseType: !465, size: 256, offset: 19008)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1245, file: !913, line: 1247, baseType: !210, size: 32, offset: 19264)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1245, file: !913, line: 1250, baseType: !3072, size: 64, offset: 19328)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !913, line: 57, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1245, file: !913, line: 1251, baseType: !465, size: 256, offset: 19392)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1245, file: !913, line: 1252, baseType: !30, size: 128, offset: 19648)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1245, file: !913, line: 1259, baseType: !2150, size: 64, offset: 19776)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1245, file: !913, line: 1260, baseType: !603, size: 16, offset: 19840)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1245, file: !913, line: 1261, baseType: !603, size: 16, offset: 19856)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1245, file: !913, line: 1314, baseType: !3080, size: 64, offset: 19904)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3082, line: 62, size: 256, align: 256, elements: !3083)
!3082 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3083 = !{!3084, !3085, !3086, !3087, !3088, !3089, !3090}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3081, file: !3082, line: 75, baseType: !268, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3081, file: !3082, line: 90, baseType: !268, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3081, file: !3082, line: 112, baseType: !272, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3081, file: !3082, line: 132, baseType: !268, size: 32, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3081, file: !3082, line: 140, baseType: !268, size: 32, offset: 160)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3081, file: !3082, line: 149, baseType: !268, size: 32, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3081, file: !3082, line: 154, baseType: !3091, offset: 224)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, elements: !1634)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1245, file: !913, line: 1315, baseType: !267, size: 32, offset: 19968)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1245, file: !913, line: 1316, baseType: !267, size: 32, offset: 20000)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1245, file: !913, line: 1321, baseType: !165, size: 64, offset: 20032)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1245, file: !913, line: 1325, baseType: !68, size: 32, offset: 20096)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1245, file: !913, line: 1326, baseType: !68, size: 32, offset: 20128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1245, file: !913, line: 1327, baseType: !68, size: 32, offset: 20160)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1245, file: !913, line: 1328, baseType: !68, size: 32, offset: 20192)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1245, file: !913, line: 1329, baseType: !685, size: 128, align: 64, offset: 20224)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1245, file: !913, line: 1332, baseType: !3101, size: 128, offset: 20352)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3102, line: 51, size: 128, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3103 = !{!3104, !3109, !3110}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3101, file: !3102, line: 60, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3106, line: 7, size: 64, elements: !3107)
!3106 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3105, file: !3106, line: 12, baseType: !1494, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3101, file: !3102, line: 63, baseType: !545, size: 8, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3101, file: !3102, line: 70, baseType: !545, size: 8, offset: 72)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1245, file: !913, line: 1335, baseType: !2338, size: 64, offset: 20480)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1245, file: !913, line: 1337, baseType: !3113, size: 128, offset: 20544)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3102, line: 39, size: 128, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3113, file: !3102, line: 40, baseType: !1939, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3113, file: !3102, line: 42, baseType: !268, size: 32, offset: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3113, file: !3102, line: 43, baseType: !268, size: 32, offset: 96)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1245, file: !913, line: 1340, baseType: !3119, size: 64, offset: 20672)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !913, line: 69, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1245, file: !913, line: 1351, baseType: !68, size: 32, offset: 20736)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1245, file: !913, line: 1352, baseType: !68, size: 32, offset: 20768)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1245, file: !913, line: 1354, baseType: !165, size: 64, offset: 20800)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1245, file: !913, line: 1364, baseType: !271, size: 64, offset: 20864)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1245, file: !913, line: 1365, baseType: !271, size: 64, offset: 20928)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1245, file: !913, line: 1412, baseType: !165, size: 64, offset: 20992)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1245, file: !913, line: 1453, baseType: !3128, size: 64, offset: 21056)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !913, line: 1453, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1245, file: !913, line: 1457, baseType: !3131, size: 64, offset: 21120)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !2508, line: 61, size: 576, elements: !3133)
!3133 = !{!3134, !3141, !3160, !3163, !3164, !3197, !3207}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3132, file: !2508, line: 62, baseType: !3135, size: 32)
!3135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !2508, line: 51, baseType: !210, size: 32, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3138 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3139 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3140 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3141 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !2508, line: 64, baseType: !3142, size: 192, offset: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3132, file: !2508, line: 64, size: 192, elements: !3143)
!3143 = !{!3144, !3155}
!3144 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !2508, line: 65, baseType: !3145, size: 192)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3142, file: !2508, line: 65, size: 192, elements: !3146)
!3146 = !{!3147, !3154}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3145, file: !2508, line: 66, baseType: !3148, size: 128)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3149, line: 50, size: 128, elements: !3150)
!3149 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3150 = !{!3151, !3152, !3153}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3148, file: !3149, line: 52, baseType: !165, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3148, file: !3149, line: 54, baseType: !210, size: 32, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3148, file: !3149, line: 55, baseType: !210, size: 32, offset: 96)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3145, file: !2508, line: 67, baseType: !165, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !2508, line: 70, baseType: !3156, size: 192)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3142, file: !2508, line: 70, size: 192, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3156, file: !2508, line: 71, baseType: !685, size: 128, align: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3156, file: !2508, line: 72, baseType: !165, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3132, file: !2508, line: 76, baseType: !3161, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !2508, line: 76, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3132, file: !2508, line: 77, baseType: !165, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3132, file: !2508, line: 79, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3149, line: 25, size: 256, elements: !3167)
!3167 = !{!3168, !3174, !3178}
!3168 = !DIDerivedType(tag: DW_TAG_member, scope: !3166, file: !3149, line: 26, baseType: !3169, size: 128)
!3169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3166, file: !3149, line: 26, size: 128, elements: !3170)
!3170 = !{!3171, !3173}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3169, file: !3149, line: 27, baseType: !3172, size: 128)
!3172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !2662)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3169, file: !3149, line: 28, baseType: !3172, size: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3166, file: !3149, line: 31, baseType: !3175, size: 64, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3177)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3149, line: 23, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !3166, file: !3149, line: 33, baseType: !3179, size: 64, offset: 192)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3166, file: !3149, line: 33, size: 64, elements: !3180)
!3180 = !{!3181, !3187, !3192}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3179, file: !3149, line: 38, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !3149, line: 34, size: 64, elements: !3183)
!3183 = !{!3184, !3185, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3182, file: !3149, line: 35, baseType: !461, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3182, file: !3149, line: 36, baseType: !73, size: 8, offset: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3182, file: !3149, line: 37, baseType: !73, size: 8, offset: 40)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3179, file: !3149, line: 42, baseType: !3188, size: 16)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !3149, line: 39, size: 16, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3188, file: !3149, line: 40, baseType: !73, size: 8)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3188, file: !3149, line: 41, baseType: !73, size: 8, offset: 8)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3179, file: !3149, line: 46, baseType: !3193, size: 16)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3179, file: !3149, line: 43, size: 16, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3193, file: !3149, line: 44, baseType: !73, size: 8)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3193, file: !3149, line: 45, baseType: !73, size: 8, offset: 8)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3132, file: !2508, line: 81, baseType: !3198, size: 64, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !2508, line: 85, size: 384, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3199, file: !2508, line: 86, baseType: !3161, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3199, file: !2508, line: 87, baseType: !165, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3199, file: !2508, line: 88, baseType: !165, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3199, file: !2508, line: 89, baseType: !165, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3199, file: !2508, line: 90, baseType: !545, size: 8, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3199, file: !2508, line: 92, baseType: !3198, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3132, file: !2508, line: 82, baseType: !210, size: 32, offset: 512)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1245, file: !913, line: 1463, baseType: !3209, offset: 21184)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !913, line: 739, elements: !754)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1245, file: !913, line: 1470, baseType: !685, size: 128, align: 64, offset: 21184)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1245, file: !913, line: 1471, baseType: !1258, size: 32, offset: 21312)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1245, file: !913, line: 1472, baseType: !68, size: 32, offset: 21344)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1245, file: !913, line: 1474, baseType: !1244, size: 64, offset: 21376)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1245, file: !913, line: 1475, baseType: !707, size: 320, offset: 21440)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1245, file: !913, line: 1478, baseType: !3216, size: 64, offset: 21760)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3218, line: 49, size: 512, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3226, !3227, !3228, !3230}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3217, file: !3218, line: 50, baseType: !3216, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3217, file: !3218, line: 51, baseType: !187, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3217, file: !3218, line: 52, baseType: !165, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3217, file: !3218, line: 53, baseType: !165, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3217, file: !3218, line: 54, baseType: !3225, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3217, file: !3218, line: 56, baseType: !210, size: 32, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3217, file: !3218, line: 58, baseType: !210, size: 32, offset: 352)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3217, file: !3218, line: 59, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !31, line: 159, baseType: !271)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3217, file: !3218, line: 60, baseType: !2477, size: 64, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1245, file: !913, line: 1482, baseType: !1258, size: 32, offset: 21824)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1245, file: !913, line: 1489, baseType: !187, size: 64, offset: 21888)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1245, file: !913, line: 1504, baseType: !187, size: 64, offset: 21952)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1245, file: !913, line: 1505, baseType: !272, size: 64, offset: 22016)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1245, file: !913, line: 1506, baseType: !271, size: 64, offset: 22080)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1245, file: !913, line: 1507, baseType: !272, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1245, file: !913, line: 1508, baseType: !272, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1245, file: !913, line: 1509, baseType: !272, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1245, file: !913, line: 1510, baseType: !685, size: 128, align: 64, offset: 22208)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1245, file: !913, line: 1511, baseType: !68, size: 32, offset: 22336)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1245, file: !913, line: 1515, baseType: !3242, size: 64, offset: 22400)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1272, line: 56, size: 64, elements: !3243)
!3243 = !{!3244}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3242, file: !1272, line: 57, baseType: !1275, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1245, file: !913, line: 1518, baseType: !3242, size: 64, offset: 22464)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1245, file: !913, line: 1528, baseType: !685, size: 128, align: 64, offset: 22528)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1245, file: !913, line: 1552, baseType: !3248, size: 35328, offset: 23040)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3249, line: 430, size: 35328, elements: !3250)
!3249 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3250 = !{!3251, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3280, !3281, !3282, !3283, !3284, !3285, !3288, !3289, !3290, !3291}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3248, file: !3249, line: 432, baseType: !3252, size: 192)
!3252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3253, size: 192, elements: !116)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3254, line: 16, size: 64, elements: !3255)
!3254 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3253, file: !3254, line: 17, baseType: !83, size: 16)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3253, file: !3254, line: 18, baseType: !83, size: 16, offset: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3253, file: !3254, line: 19, baseType: !83, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3253, file: !3254, line: 19, baseType: !83, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3253, file: !3254, line: 19, baseType: !83, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3253, file: !3254, line: 19, baseType: !83, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3253, file: !3254, line: 19, baseType: !83, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3253, file: !3254, line: 20, baseType: !83, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3253, file: !3254, line: 20, baseType: !83, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3253, file: !3254, line: 20, baseType: !83, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3253, file: !3254, line: 20, baseType: !83, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3253, file: !3254, line: 20, baseType: !83, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3253, file: !3254, line: 20, baseType: !83, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3248, file: !3249, line: 436, baseType: !165, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3248, file: !3249, line: 440, baseType: !85, size: 16, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3248, file: !3249, line: 441, baseType: !85, size: 16, offset: 272)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3248, file: !3249, line: 442, baseType: !85, size: 16, offset: 288)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3248, file: !3249, line: 443, baseType: !85, size: 16, offset: 304)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3248, file: !3249, line: 447, baseType: !165, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3248, file: !3249, line: 448, baseType: !165, size: 64, offset: 384)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3248, file: !3249, line: 459, baseType: !3277, size: 256, offset: 448)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3278, size: 256, elements: !695)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3249, line: 428, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3248, file: !3249, line: 461, baseType: !165, size: 64, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3248, file: !3249, line: 463, baseType: !165, size: 64, offset: 768)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3248, file: !3249, line: 465, baseType: !165, size: 64, offset: 832)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3248, file: !3249, line: 466, baseType: !165, size: 64, offset: 896)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3248, file: !3249, line: 467, baseType: !165, size: 64, offset: 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3248, file: !3249, line: 473, baseType: !3286, size: 64, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3249, line: 10, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3248, file: !3249, line: 480, baseType: !165, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3248, file: !3249, line: 482, baseType: !210, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3248, file: !3249, line: 491, baseType: !267, size: 32, offset: 1184)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3248, file: !3249, line: 501, baseType: !3292, size: 33792, offset: 1536)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3293, line: 448, size: 33792, elements: !3294)
!3293 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3294 = !{!3295, !3296, !3297, !3459, !3460, !3466, !3467}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3292, file: !3293, line: 461, baseType: !210, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3292, file: !3293, line: 468, baseType: !165, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3292, file: !3293, line: 476, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3293, line: 356, size: 33280, align: 512, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3299, file: !3293, line: 358, baseType: !210, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3299, file: !3293, line: 361, baseType: !210, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3299, file: !3293, line: 364, baseType: !271, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3299, file: !3293, line: 367, baseType: !271, size: 64, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3299, file: !3293, line: 370, baseType: !271, size: 64, offset: 192)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3299, file: !3293, line: 373, baseType: !210, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3299, file: !3293, line: 376, baseType: !210, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3299, file: !3293, line: 391, baseType: !210, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3299, file: !3293, line: 394, baseType: !210, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3299, file: !3293, line: 397, baseType: !3311, size: 32768, offset: 512)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3293, line: 348, size: 32768, elements: !3312)
!3312 = !{!3313, !3328, !3365, !3442, !3455}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3311, file: !3293, line: 349, baseType: !3314, size: 896)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3293, line: 12, size: 896, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3327}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3314, file: !3293, line: 13, baseType: !267, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3314, file: !3293, line: 14, baseType: !267, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3314, file: !3293, line: 15, baseType: !267, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3314, file: !3293, line: 16, baseType: !267, size: 32, offset: 96)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3314, file: !3293, line: 17, baseType: !267, size: 32, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3314, file: !3293, line: 18, baseType: !267, size: 32, offset: 160)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3314, file: !3293, line: 19, baseType: !267, size: 32, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3314, file: !3293, line: 22, baseType: !3324, size: 640, offset: 224)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 640, elements: !3325)
!3325 = !{!3326}
!3326 = !DISubrange(count: 20)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3314, file: !3293, line: 25, baseType: !267, size: 32, offset: 864)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3311, file: !3293, line: 350, baseType: !3329, size: 4096, align: 128)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3293, line: 34, size: 4096, align: 128, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3350, !3351, !3352, !3354, !3356, !3360}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3329, file: !3293, line: 35, baseType: !83, size: 16)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3329, file: !3293, line: 36, baseType: !83, size: 16, offset: 16)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3329, file: !3293, line: 37, baseType: !83, size: 16, offset: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3329, file: !3293, line: 38, baseType: !83, size: 16, offset: 48)
!3335 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !3293, line: 39, baseType: !3336, size: 128, offset: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3329, file: !3293, line: 39, size: 128, elements: !3337)
!3337 = !{!3338, !3343}
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3336, file: !3293, line: 40, baseType: !3339, size: 128)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3336, file: !3293, line: 40, size: 128, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3339, file: !3293, line: 41, baseType: !271, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3339, file: !3293, line: 42, baseType: !271, size: 64, offset: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, scope: !3336, file: !3293, line: 44, baseType: !3344, size: 128)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3336, file: !3293, line: 44, size: 128, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3344, file: !3293, line: 45, baseType: !267, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3344, file: !3293, line: 46, baseType: !267, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3344, file: !3293, line: 47, baseType: !267, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3344, file: !3293, line: 48, baseType: !267, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3329, file: !3293, line: 51, baseType: !267, size: 32, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3329, file: !3293, line: 52, baseType: !267, size: 32, offset: 224)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3329, file: !3293, line: 55, baseType: !3353, size: 1024, offset: 256)
!3353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 1024, elements: !280)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3329, file: !3293, line: 58, baseType: !3355, size: 2048, offset: 1280)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 2048, elements: !120)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3329, file: !3293, line: 60, baseType: !3357, size: 384, offset: 3328)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 384, elements: !3358)
!3358 = !{!3359}
!3359 = !DISubrange(count: 12)
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !3293, line: 62, baseType: !3361, size: 384, offset: 3712)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3329, file: !3293, line: 62, size: 384, elements: !3362)
!3362 = !{!3363, !3364}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3361, file: !3293, line: 63, baseType: !3357, size: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3361, file: !3293, line: 64, baseType: !3357, size: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3311, file: !3293, line: 351, baseType: !3366, size: 1088)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3293, line: 79, size: 1088, elements: !3367)
!3367 = !{!3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3441}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3366, file: !3293, line: 80, baseType: !267, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3366, file: !3293, line: 81, baseType: !267, size: 32, offset: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3366, file: !3293, line: 82, baseType: !267, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3366, file: !3293, line: 83, baseType: !267, size: 32, offset: 96)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3366, file: !3293, line: 84, baseType: !267, size: 32, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3366, file: !3293, line: 85, baseType: !267, size: 32, offset: 160)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3366, file: !3293, line: 86, baseType: !267, size: 32, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3366, file: !3293, line: 88, baseType: !3324, size: 640, offset: 224)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3366, file: !3293, line: 89, baseType: !73, size: 8, offset: 864)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3366, file: !3293, line: 90, baseType: !73, size: 8, offset: 872)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3366, file: !3293, line: 91, baseType: !73, size: 8, offset: 880)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3366, file: !3293, line: 92, baseType: !73, size: 8, offset: 888)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3366, file: !3293, line: 93, baseType: !73, size: 8, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3366, file: !3293, line: 94, baseType: !73, size: 8, offset: 904)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3366, file: !3293, line: 95, baseType: !3383, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3385, line: 11, size: 128, elements: !3386)
!3385 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3386 = !{!3387, !3388}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3384, file: !3385, line: 12, baseType: !151, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3384, file: !3385, line: 13, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3391, line: 103, size: 1344, elements: !3392)
!3391 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3421, !3422, !3423}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3390, file: !3391, line: 109, baseType: !165, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3390, file: !3391, line: 110, baseType: !165, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3390, file: !3391, line: 111, baseType: !165, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3390, file: !3391, line: 112, baseType: !165, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3390, file: !3391, line: 113, baseType: !165, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3390, file: !3391, line: 114, baseType: !165, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3390, file: !3391, line: 117, baseType: !165, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3390, file: !3391, line: 118, baseType: !165, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3390, file: !3391, line: 119, baseType: !165, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3390, file: !3391, line: 120, baseType: !165, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3390, file: !3391, line: 121, baseType: !165, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3390, file: !3391, line: 122, baseType: !165, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3390, file: !3391, line: 123, baseType: !165, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3390, file: !3391, line: 124, baseType: !165, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3390, file: !3391, line: 125, baseType: !165, size: 64, offset: 896)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3390, file: !3391, line: 139, baseType: !165, size: 64, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3390, file: !3391, line: 142, baseType: !165, size: 64, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3391, line: 144, baseType: !3411, size: 64, offset: 1088)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3391, line: 144, size: 64, elements: !3412)
!3412 = !{!3413, !3414, !3415}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3411, file: !3391, line: 146, baseType: !83, size: 16)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3411, file: !3391, line: 148, baseType: !271, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3411, file: !3391, line: 150, baseType: !3416, size: 64)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3391, line: 59, size: 64, elements: !3417)
!3417 = !{!3418, !3419, !3420}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3416, file: !3391, line: 61, baseType: !271, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3416, file: !3391, line: 63, baseType: !271, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3416, file: !3391, line: 65, baseType: !271, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3390, file: !3391, line: 153, baseType: !165, size: 64, offset: 1152)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3390, file: !3391, line: 154, baseType: !165, size: 64, offset: 1216)
!3423 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3391, line: 156, baseType: !3424, size: 64, offset: 1280)
!3424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3391, line: 156, size: 64, elements: !3425)
!3425 = !{!3426, !3427, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3424, file: !3391, line: 158, baseType: !83, size: 16)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3424, file: !3391, line: 160, baseType: !271, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3424, file: !3391, line: 162, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3391, line: 69, size: 64, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3429, file: !3391, line: 71, baseType: !271, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3429, file: !3391, line: 73, baseType: !271, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3429, file: !3391, line: 75, baseType: !271, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3429, file: !3391, line: 77, baseType: !271, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3429, file: !3391, line: 80, baseType: !271, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3429, file: !3391, line: 83, baseType: !271, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3429, file: !3391, line: 86, baseType: !271, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3429, file: !3391, line: 88, baseType: !271, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3429, file: !3391, line: 93, baseType: !271, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3429, file: !3391, line: 100, baseType: !271, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3366, file: !3293, line: 96, baseType: !267, size: 32, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3311, file: !3293, line: 352, baseType: !3443, size: 4608, align: 512)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3293, line: 333, size: 4608, align: 512, elements: !3444)
!3444 = !{!3445, !3446, !3453}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3443, file: !3293, line: 334, baseType: !3329, size: 4096, align: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3443, file: !3293, line: 335, baseType: !3447, size: 512, offset: 4096)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3293, line: 312, size: 512, elements: !3448)
!3448 = !{!3449, !3450, !3451}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3447, file: !3293, line: 313, baseType: !271, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3447, file: !3293, line: 314, baseType: !271, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3447, file: !3293, line: 315, baseType: !3452, size: 384, offset: 128)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !1724)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3443, file: !3293, line: 336, baseType: !3454, offset: 4608)
!3454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !1634)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3311, file: !3293, line: 353, baseType: !3456, size: 32768)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32768, elements: !3457)
!3457 = !{!3458}
!3458 = !DISubrange(count: 4096)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3292, file: !3293, line: 484, baseType: !3298, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3292, file: !3293, line: 491, baseType: !3461, size: 128, offset: 256)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3293, line: 404, size: 128, elements: !3462)
!3462 = !{!3463, !3464, !3465}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3461, file: !3293, line: 424, baseType: !271, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3461, file: !3293, line: 432, baseType: !210, size: 32, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3461, file: !3293, line: 440, baseType: !210, size: 32, offset: 96)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3292, file: !3293, line: 498, baseType: !3461, size: 128, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3292, file: !3293, line: 508, baseType: !3299, size: 33280, align: 512, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1221, file: !1222, line: 16, baseType: !1231, size: 192, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1221, file: !1222, line: 17, baseType: !64, size: 32, offset: 704)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !350, file: !194, line: 1240, baseType: !187, size: 64, offset: 6912)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !350, file: !194, line: 1243, baseType: !267, size: 32, offset: 6976)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !350, file: !194, line: 1245, baseType: !977, size: 64, offset: 7040)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !350, file: !194, line: 1246, baseType: !977, size: 64, offset: 7104)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !350, file: !194, line: 1248, baseType: !268, size: 32, offset: 7168)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !350, file: !194, line: 1249, baseType: !3476, size: 64, offset: 7232)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !194, line: 634, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !350, file: !194, line: 1252, baseType: !3479, size: 256, offset: 7296)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !280)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !350, file: !194, line: 1253, baseType: !3481, size: 128, offset: 7552)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3482, line: 21, baseType: !3483)
!3482 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3482, line: 19, size: 128, elements: !3484)
!3484 = !{!3485}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3483, file: !3482, line: 20, baseType: !3486, size: 128)
!3486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !2662)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !350, file: !194, line: 1255, baseType: !210, size: 32, offset: 7680)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !350, file: !194, line: 1261, baseType: !465, size: 256, offset: 7744)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !350, file: !194, line: 1267, baseType: !26, size: 64, offset: 8000)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !350, file: !194, line: 1269, baseType: !296, size: 64, offset: 8064)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !350, file: !194, line: 1271, baseType: !3492, size: 448, offset: 8128)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !986, line: 63, size: 448, elements: !3493)
!3493 = !{!3494, !3499, !3500, !3501, !3502, !3503, !3504}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3492, file: !986, line: 64, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!165, !3498, !984}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3492, file: !986, line: 66, baseType: !3495, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3492, file: !986, line: 69, baseType: !151, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3492, file: !986, line: 70, baseType: !68, size: 32, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !986, line: 71, baseType: !210, size: 32, offset: 224)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3492, file: !986, line: 74, baseType: !30, size: 128, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3492, file: !986, line: 85, baseType: !3505, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !350, file: !194, line: 1274, baseType: !469, size: 64, offset: 8576)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !350, file: !194, line: 1280, baseType: !469, size: 64, offset: 8640)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !350, file: !194, line: 1283, baseType: !68, size: 32, offset: 8704)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !350, file: !194, line: 1286, baseType: !2388, size: 32, offset: 8736)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !350, file: !194, line: 1289, baseType: !787, size: 64, offset: 8768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !350, file: !194, line: 1290, baseType: !835, size: 64, offset: 8832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !350, file: !194, line: 1297, baseType: !1818, size: 64, offset: 8896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !350, file: !194, line: 1304, baseType: !3514, size: 64, offset: 8960)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3515, line: 49, size: 64, elements: !3516)
!3515 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3516 = !{!3517}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3514, file: !3515, line: 50, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3515, line: 41, size: 512, align: 512, elements: !3520)
!3520 = !{!3521, !3522, !3527}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3519, file: !3515, line: 43, baseType: !44, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3519, file: !3515, line: 45, baseType: !3523, size: 192, offset: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3515, line: 29, size: 192, elements: !3524)
!3524 = !{!3525, !3526}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3523, file: !3515, line: 30, baseType: !30, size: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3523, file: !3515, line: 32, baseType: !151, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3519, file: !3515, line: 46, baseType: !151, size: 64, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !350, file: !194, line: 1305, baseType: !3514, size: 64, offset: 9024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !350, file: !194, line: 1306, baseType: !685, size: 128, align: 64, offset: 9088)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !350, file: !194, line: 1307, baseType: !725, size: 256, offset: 9216)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !350, file: !194, line: 1309, baseType: !465, size: 256, offset: 9472)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !350, file: !194, line: 1314, baseType: !68, size: 32, offset: 9728)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !350, file: !194, line: 1317, baseType: !44, size: 32, align: 512, offset: 10240)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !350, file: !194, line: 1318, baseType: !30, size: 128, offset: 10304)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !350, file: !194, line: 1320, baseType: !44, size: 32, offset: 10432)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !350, file: !194, line: 1321, baseType: !30, size: 128, offset: 10496)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !344, file: !345, line: 73, baseType: !68, size: 32, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !344, file: !345, line: 74, baseType: !3539, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1665, line: 42, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !298, file: !235, line: 141, baseType: !3543, size: 64, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!68, !1048, !545}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !298, file: !235, line: 142, baseType: !3547, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!233, !233, !3550}
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !234, file: !235, line: 96, baseType: !349, size: 64, offset: 832)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !234, file: !235, line: 97, baseType: !165, size: 64, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !234, file: !235, line: 98, baseType: !187, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_member, scope: !234, file: !235, line: 100, baseType: !3556, size: 128, offset: 1024)
!3556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !235, line: 100, size: 128, elements: !3557)
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3556, file: !235, line: 101, baseType: !30, size: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3556, file: !235, line: 102, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !234, file: !235, line: 104, baseType: !30, size: 128, offset: 1152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !234, file: !235, line: 105, baseType: !30, size: 128, offset: 1280)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !234, file: !235, line: 113, baseType: !3564, size: 128, offset: 1408)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !234, file: !235, line: 109, size: 128, elements: !3565)
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3564, file: !235, line: 110, baseType: !711, size: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3564, file: !235, line: 111, baseType: !249, size: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3564, file: !235, line: 112, baseType: !685, size: 128, align: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !227, file: !194, line: 1968, baseType: !3570, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!26, !233, !197, !3573}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3575, line: 10, size: 128, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3576 = !{!3577, !3578}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3574, file: !3575, line: 11, baseType: !508, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3574, file: !3575, line: 12, baseType: !187, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !227, file: !194, line: 1969, baseType: !3580, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!68, !3539, !197, !68}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !227, file: !194, line: 1970, baseType: !3584, size: 64, offset: 192)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!221, !197, !68, !545}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !227, file: !194, line: 1972, baseType: !3588, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!68, !233, !115, !68}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !227, file: !194, line: 1974, baseType: !3592, size: 64, offset: 320)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!68, !3539, !197, !233, !157, !545}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !227, file: !194, line: 1976, baseType: !3596, size: 64, offset: 384)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!68, !233, !197, !233}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !227, file: !194, line: 1977, baseType: !3600, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!68, !197, !233}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !227, file: !194, line: 1978, baseType: !3604, size: 64, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!68, !3539, !197, !233, !26}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !227, file: !194, line: 1980, baseType: !3608, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!68, !3539, !197, !233, !157}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !227, file: !194, line: 1982, baseType: !3600, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !227, file: !194, line: 1983, baseType: !3613, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!68, !3539, !197, !233, !157, !354}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !227, file: !194, line: 1985, baseType: !3617, size: 64, offset: 768)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!68, !3539, !197, !233, !197, !233, !210}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !227, file: !194, line: 1987, baseType: !3621, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!68, !3539, !233, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !194, line: 226, size: 640, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3639, !3648, !3649, !3654, !3655, !3656}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3625, file: !194, line: 227, baseType: !210, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3625, file: !194, line: 228, baseType: !157, size: 16, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !194, line: 241, baseType: !3630, size: 32, offset: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3625, file: !194, line: 241, size: 32, elements: !3631)
!3631 = !{!3632, !3633}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3630, file: !194, line: 242, baseType: !203, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3630, file: !194, line: 243, baseType: !3634, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3635, line: 16, baseType: !3636)
!3635 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3635, line: 14, size: 32, elements: !3637)
!3637 = !{!3638}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3636, file: !3635, line: 15, baseType: !208, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, scope: !3625, file: !194, line: 245, baseType: !3640, size: 32, offset: 96)
!3640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3625, file: !194, line: 245, size: 32, elements: !3641)
!3641 = !{!3642, !3643}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3640, file: !194, line: 246, baseType: !213, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3640, file: !194, line: 247, baseType: !3644, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3635, line: 20, baseType: !3645)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3635, line: 18, size: 32, elements: !3646)
!3646 = !{!3647}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3645, file: !3635, line: 19, baseType: !217, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3625, file: !194, line: 249, baseType: !359, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3625, file: !194, line: 250, baseType: !3650, size: 128, offset: 192)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !978, line: 13, size: 128, elements: !3651)
!3651 = !{!3652, !3653}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3650, file: !978, line: 14, baseType: !977, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3650, file: !978, line: 15, baseType: !151, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3625, file: !194, line: 251, baseType: !3650, size: 128, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3625, file: !194, line: 252, baseType: !3650, size: 128, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3625, file: !194, line: 259, baseType: !1573, size: 64, offset: 576)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !227, file: !194, line: 1988, baseType: !3658, size: 64, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!68, !3539, !1048, !3661, !267, !210}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3663, line: 22, size: 1280, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3662, file: !3663, line: 23, baseType: !267, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3662, file: !3663, line: 24, baseType: !157, size: 16, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3662, file: !3663, line: 25, baseType: !210, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3662, file: !3663, line: 26, baseType: !1703, size: 32, offset: 96)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3662, file: !3663, line: 27, baseType: !271, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3662, file: !3663, line: 28, baseType: !271, size: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3662, file: !3663, line: 41, baseType: !271, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3662, file: !3663, line: 42, baseType: !354, size: 32, offset: 320)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3662, file: !3663, line: 43, baseType: !354, size: 32, offset: 352)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3662, file: !3663, line: 44, baseType: !203, size: 32, offset: 384)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3662, file: !3663, line: 45, baseType: !213, size: 32, offset: 416)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3662, file: !3663, line: 46, baseType: !359, size: 64, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3662, file: !3663, line: 47, baseType: !3650, size: 128, offset: 512)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3662, file: !3663, line: 48, baseType: !3650, size: 128, offset: 640)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3662, file: !3663, line: 49, baseType: !3650, size: 128, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3662, file: !3663, line: 50, baseType: !3650, size: 128, offset: 896)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3662, file: !3663, line: 51, baseType: !271, size: 64, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3662, file: !3663, line: 52, baseType: !271, size: 64, offset: 1088)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3662, file: !3663, line: 53, baseType: !267, size: 32, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3662, file: !3663, line: 54, baseType: !267, size: 32, offset: 1184)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3662, file: !3663, line: 55, baseType: !271, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !227, file: !194, line: 1990, baseType: !3687, size: 64, offset: 960)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!147, !233, !115, !162}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !227, file: !194, line: 1991, baseType: !3691, size: 64, offset: 1024)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!68, !197, !3694, !271, !271}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !194, line: 55, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !227, file: !194, line: 1993, baseType: !3697, size: 64, offset: 1088)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!68, !197, !68}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !227, file: !194, line: 1994, baseType: !3701, size: 64, offset: 1152)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!68, !197, !233, !1573, !210, !157}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !227, file: !194, line: 1997, baseType: !3705, size: 64, offset: 1216)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!68, !3539, !197, !1573, !157}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !227, file: !194, line: 1999, baseType: !3709, size: 64, offset: 1280)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!221, !3539, !233, !68}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !227, file: !194, line: 2001, baseType: !3713, size: 64, offset: 1344)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!68, !3539, !233, !221, !68}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !227, file: !194, line: 2003, baseType: !3717, size: 64, offset: 1408)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!68, !3539, !233, !3720}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !194, line: 76, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !227, file: !194, line: 2005, baseType: !3723, size: 64, offset: 1472)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!68, !233, !3720}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !227, file: !194, line: 2006, baseType: !3727, size: 64, offset: 1536)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!3730, !197}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !194, line: 3192, size: 192, elements: !3732)
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3731, file: !194, line: 3193, baseType: !2253, size: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3731, file: !194, line: 3194, baseType: !267, size: 32, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !198, file: !194, line: 655, baseType: !349, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !198, file: !194, line: 656, baseType: !192, size: 64, offset: 512)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !198, file: !194, line: 659, baseType: !187, size: 64, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !198, file: !194, line: 663, baseType: !165, size: 64, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 671, baseType: !3740, size: 32, offset: 704)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !194, line: 671, size: 32, elements: !3741)
!3741 = !{!3742, !3744}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3740, file: !194, line: 672, baseType: !3743, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3740, file: !194, line: 673, baseType: !210, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !198, file: !194, line: 675, baseType: !354, size: 32, offset: 736)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !198, file: !194, line: 676, baseType: !359, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !198, file: !194, line: 677, baseType: !3650, size: 128, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !198, file: !194, line: 678, baseType: !3650, size: 128, offset: 960)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !198, file: !194, line: 679, baseType: !3650, size: 128, offset: 1088)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !198, file: !194, line: 680, baseType: !44, size: 32, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !198, file: !194, line: 681, baseType: !85, size: 16, offset: 1248)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !198, file: !194, line: 682, baseType: !73, size: 8, offset: 1264)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !198, file: !194, line: 683, baseType: !73, size: 8, offset: 1272)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !198, file: !194, line: 684, baseType: !1126, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !198, file: !194, line: 691, baseType: !165, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !198, file: !194, line: 692, baseType: !1138, size: 320, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !198, file: !194, line: 694, baseType: !165, size: 64, offset: 1728)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !198, file: !194, line: 695, baseType: !165, size: 64, offset: 1792)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !198, file: !194, line: 697, baseType: !711, size: 128, offset: 1856)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !198, file: !194, line: 698, baseType: !30, size: 128, offset: 1984)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !198, file: !194, line: 707, baseType: !30, size: 128, offset: 2112)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !198, file: !194, line: 708, baseType: !30, size: 128, offset: 2240)
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 709, baseType: !3764, size: 128, offset: 2368)
!3764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !194, line: 709, size: 128, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3764, file: !194, line: 710, baseType: !835, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3764, file: !194, line: 711, baseType: !685, size: 128, align: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !198, file: !194, line: 713, baseType: !471, size: 64, offset: 2496)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !198, file: !194, line: 714, baseType: !471, size: 64, offset: 2560)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !198, file: !194, line: 715, baseType: !64, size: 32, offset: 2624)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !198, file: !194, line: 716, baseType: !64, size: 32, offset: 2656)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !198, file: !194, line: 717, baseType: !64, size: 32, offset: 2688)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !198, file: !194, line: 719, baseType: !64, size: 32, offset: 2720)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 721, baseType: !3775, size: 64, offset: 2752)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !194, line: 721, size: 64, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3775, file: !194, line: 722, baseType: !1849, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3775, file: !194, line: 723, baseType: !858, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !198, file: !194, line: 725, baseType: !3780, size: 64, offset: 2816)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !194, line: 725, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !198, file: !194, line: 726, baseType: !193, size: 1536, align: 64, offset: 2880)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !198, file: !194, line: 727, baseType: !30, size: 128, offset: 4416)
!3784 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !194, line: 728, baseType: !3785, size: 64, offset: 4544)
!3785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !194, line: 728, size: 64, elements: !3786)
!3786 = !{!3787, !3788, !3791, !3792}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3785, file: !194, line: 729, baseType: !2338, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3785, file: !194, line: 730, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !194, line: 730, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3785, file: !194, line: 731, baseType: !115, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3785, file: !194, line: 732, baseType: !210, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !198, file: !194, line: 735, baseType: !268, size: 32, offset: 4608)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !198, file: !194, line: 738, baseType: !268, size: 32, offset: 4640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !198, file: !194, line: 739, baseType: !3476, size: 64, offset: 4672)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !198, file: !194, line: 750, baseType: !187, size: 64, offset: 4736)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !193, file: !194, line: 474, baseType: !2253, size: 128, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !193, file: !194, line: 475, baseType: !1138, size: 320, offset: 192)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !193, file: !194, line: 476, baseType: !989, size: 32, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !193, file: !194, line: 477, baseType: !64, size: 32, offset: 544)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !193, file: !194, line: 482, baseType: !1429, size: 128, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !193, file: !194, line: 483, baseType: !165, size: 64, offset: 704)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !193, file: !194, line: 484, baseType: !165, size: 64, offset: 768)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !193, file: !194, line: 485, baseType: !3805, size: 64, offset: 832)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !194, line: 404, size: 1280, elements: !3808)
!3808 = !{!3809, !3813, !3883, !3887, !3891, !3897, !3901, !3905, !3910, !3914, !3918, !3922, !3923, !3934, !3938, !3942, !3947, !3951, !3958, !3959}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3807, file: !194, line: 405, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!68, !1939, !870}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3807, file: !194, line: 406, baseType: !3814, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!68, !1573, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !996, line: 293, size: 1536, elements: !3819)
!3819 = !{!3820, !3850, !3864}
!3820 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !996, line: 295, baseType: !3821, size: 512)
!3821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !996, line: 295, size: 512, elements: !3822)
!3822 = !{!3823, !3849}
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !996, line: 296, baseType: !3824, size: 448)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3821, file: !996, line: 296, size: 448, elements: !3825)
!3825 = !{!3826, !3827, !3836, !3837, !3838, !3847, !3848}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3824, file: !996, line: 298, baseType: !165, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !996, line: 299, baseType: !3828, size: 128, offset: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3824, file: !996, line: 299, size: 128, elements: !3829)
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3828, file: !996, line: 300, baseType: !30, size: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !996, line: 302, baseType: !3832, size: 128)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !996, line: 302, size: 128, elements: !3833)
!3833 = !{!3834, !3835}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3832, file: !996, line: 303, baseType: !187, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3832, file: !996, line: 305, baseType: !210, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3824, file: !996, line: 310, baseType: !192, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3824, file: !996, line: 311, baseType: !165, size: 64, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !996, line: 312, baseType: !3839, size: 64, offset: 320)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3824, file: !996, line: 312, size: 64, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3839, file: !996, line: 313, baseType: !187, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3839, file: !996, line: 314, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !996, line: 257, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !996, line: 255, size: 64, elements: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3844, file: !996, line: 256, baseType: !165, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3824, file: !996, line: 316, baseType: !64, size: 32, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3824, file: !996, line: 317, baseType: !64, size: 32, offset: 416)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3821, file: !996, line: 323, baseType: !1940, size: 512, align: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !996, line: 325, baseType: !3851, size: 512, offset: 512)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !996, line: 325, size: 512, elements: !3852)
!3852 = !{!3853, !3863}
!3853 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !996, line: 326, baseType: !3854, size: 320)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3851, file: !996, line: 326, size: 320, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3854, file: !996, line: 327, baseType: !165, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3854, file: !996, line: 328, baseType: !165, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3854, file: !996, line: 329, baseType: !165, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3854, file: !996, line: 331, baseType: !64, size: 32, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3854, file: !996, line: 332, baseType: !64, size: 32, offset: 224)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3854, file: !996, line: 333, baseType: !64, size: 32, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3854, file: !996, line: 335, baseType: !210, size: 32, offset: 288)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3851, file: !996, line: 339, baseType: !1940, size: 512, align: 128)
!3864 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !996, line: 341, baseType: !3865, size: 512, offset: 1024)
!3865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !996, line: 341, size: 512, elements: !3866)
!3866 = !{!3867, !3876, !3882}
!3867 = !DIDerivedType(tag: DW_TAG_member, scope: !3865, file: !996, line: 342, baseType: !3868, size: 384)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3865, file: !996, line: 342, size: 384, elements: !3869)
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3875}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3868, file: !996, line: 343, baseType: !165, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3868, file: !996, line: 344, baseType: !165, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3868, file: !996, line: 346, baseType: !187, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3868, file: !996, line: 347, baseType: !187, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3868, file: !996, line: 348, baseType: !187, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3868, file: !996, line: 349, baseType: !187, size: 64, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_member, scope: !3865, file: !996, line: 352, baseType: !3877, size: 256)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3865, file: !996, line: 352, size: 256, elements: !3878)
!3878 = !{!3879, !3880, !3881}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3877, file: !996, line: 353, baseType: !165, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3877, file: !996, line: 354, baseType: !165, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3877, file: !996, line: 356, baseType: !30, size: 128, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3865, file: !996, line: 359, baseType: !1940, size: 512, align: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3807, file: !194, line: 409, baseType: !3884, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!68, !192, !870}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3807, file: !194, line: 412, baseType: !3888, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!545, !192, !3817}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3807, file: !194, line: 414, baseType: !3892, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !194, line: 310, flags: DIFlagFwdDecl)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3807, file: !194, line: 416, baseType: !3898, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!68, !1573, !192, !359, !210, !3225, !2353}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3807, file: !194, line: 419, baseType: !3902, size: 64, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!68, !1573, !192, !359, !210, !210, !1939, !187}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3807, file: !194, line: 424, baseType: !3906, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!3909, !192, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !31, line: 131, baseType: !271)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3807, file: !194, line: 425, baseType: !3911, size: 64, offset: 512)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !3817, !162, !162}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3807, file: !194, line: 426, baseType: !3915, size: 64, offset: 576)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!545, !3817, !989}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3807, file: !194, line: 427, baseType: !3919, size: 64, offset: 640)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !3817}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3807, file: !194, line: 428, baseType: !1868, size: 64, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3807, file: !194, line: 433, baseType: !3924, size: 64, offset: 768)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!68, !192, !3817, !3817, !3927}
!3927 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !3928, line: 15, baseType: !210, size: 32, elements: !3929)
!3928 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!3929 = !{!3930, !3931, !3932, !3933}
!3930 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!3931 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!3932 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!3933 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3807, file: !194, line: 435, baseType: !3935, size: 64, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!68, !3817}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3807, file: !194, line: 436, baseType: !3939, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!545, !3817, !162, !162}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3807, file: !194, line: 438, baseType: !3943, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3817, !3946, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3807, file: !194, line: 439, baseType: !3948, size: 64, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!68, !192, !1939}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3807, file: !194, line: 442, baseType: !3952, size: 64, offset: 1088)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!68, !3955, !1573, !3957}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !194, line: 66, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3807, file: !194, line: 444, baseType: !2345, size: 64, offset: 1152)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3807, file: !194, line: 445, baseType: !3960, size: 64, offset: 1216)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!68, !1871, !1893}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !194, line: 486, baseType: !165, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !193, file: !194, line: 487, baseType: !1138, size: 320, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !193, file: !194, line: 488, baseType: !2388, size: 32, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !193, file: !194, line: 489, baseType: !44, size: 32, offset: 1312)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !193, file: !194, line: 490, baseType: !30, size: 128, offset: 1344)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !193, file: !194, line: 491, baseType: !187, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !182, file: !141, line: 180, baseType: !3970, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!147, !1573, !37, !181, !115, !359, !162}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !182, file: !141, line: 182, baseType: !3970, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !182, file: !141, line: 184, baseType: !3975, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!68, !1573, !37, !181, !2057}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !170, file: !141, line: 90, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !170, file: !141, line: 91, baseType: !3981, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !131, file: !23, line: 120, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3986, !98}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3989, line: 39, size: 384, elements: !3990)
!3989 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!3990 = !{!3991, !3997, !4001, !4005, !4012, !4016}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3988, file: !3989, line: 40, baseType: !3992, size: 32)
!3992 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3989, line: 26, baseType: !210, size: 32, elements: !3993)
!3993 = !{!3994, !3995, !3996}
!3994 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!3995 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!3996 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3988, file: !3989, line: 41, baseType: !3998, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!545}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3988, file: !3989, line: 42, baseType: !4002, size: 64, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!187}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3988, file: !3989, line: 43, baseType: !4006, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!2477, !4009}
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !4011, line: 17, flags: DIFlagFwdDecl)
!4011 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3988, file: !3989, line: 44, baseType: !4013, size: 64, offset: 256)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!2477}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3988, file: !3989, line: 45, baseType: !508, size: 64, offset: 320)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !131, file: !23, line: 121, baseType: !4018, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!2477, !98}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !131, file: !23, line: 122, baseType: !4022, size: 64, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !98, !4025, !4026}
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !22, file: !23, line: 70, baseType: !4028, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4030, line: 190, size: 1152, elements: !4031)
!4030 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4123, !4124, !4125, !4126, !4127, !4130}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4029, file: !4030, line: 191, baseType: !64, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4029, file: !4030, line: 192, baseType: !64, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4029, file: !4030, line: 202, baseType: !4028, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4029, file: !4030, line: 203, baseType: !26, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4029, file: !4030, line: 205, baseType: !577, size: 192, align: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4029, file: !4030, line: 207, baseType: !2477, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4029, file: !4030, line: 208, baseType: !210, size: 32, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4029, file: !4030, line: 209, baseType: !4040, size: 256, offset: 512)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4029, file: !4030, line: 209, size: 256, elements: !4041)
!4041 = !{!4042, !4051, !4055}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4040, file: !4030, line: 210, baseType: !4043, size: 256)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4030, line: 153, size: 256, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4050}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4043, file: !4030, line: 154, baseType: !165, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4043, file: !4030, line: 156, baseType: !1432, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4043, file: !4030, line: 162, baseType: !4048, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4030, line: 162, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4043, file: !4030, line: 167, baseType: !165, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4040, file: !4030, line: 211, baseType: !4052, size: 64)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4030, line: 170, size: 64, elements: !4053)
!4053 = !{!4054}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4052, file: !4030, line: 171, baseType: !4028, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4040, file: !4030, line: 212, baseType: !4056, size: 256)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4030, line: 174, size: 256, elements: !4057)
!4057 = !{!4058, !4118, !4121, !4122}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4056, file: !4030, line: 175, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4061)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4030, line: 271, size: 768, elements: !4062)
!4062 = !{!4063, !4083, !4087, !4091, !4095, !4099, !4103, !4107, !4108, !4109, !4110, !4114}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4061, file: !4030, line: 276, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!68, !4067}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4030, line: 251, size: 1216, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4068, file: !4030, line: 253, baseType: !4028, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4068, file: !4030, line: 254, baseType: !1573, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4068, file: !4030, line: 255, baseType: !911, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4068, file: !4030, line: 256, baseType: !187, size: 64, offset: 192)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4068, file: !4030, line: 259, baseType: !465, size: 256, offset: 256)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4068, file: !4030, line: 260, baseType: !465, size: 256, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4068, file: !4030, line: 261, baseType: !68, size: 32, offset: 768)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4068, file: !4030, line: 262, baseType: !30, size: 128, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4068, file: !4030, line: 263, baseType: !115, size: 64, offset: 960)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4068, file: !4030, line: 265, baseType: !162, size: 64, offset: 1024)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4068, file: !4030, line: 266, baseType: !545, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4068, file: !4030, line: 267, baseType: !545, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4068, file: !4030, line: 268, baseType: !2102, size: 64, offset: 1152)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4061, file: !4030, line: 277, baseType: !4084, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !4067}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4061, file: !4030, line: 290, baseType: !4088, size: 64, offset: 128)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!68, !911, !187}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4061, file: !4030, line: 292, baseType: !4092, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!187, !911, !1862}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4061, file: !4030, line: 293, baseType: !4096, size: 64, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!187, !911, !187, !1862}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4061, file: !4030, line: 294, baseType: !4100, size: 64, offset: 320)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !911, !187}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4061, file: !4030, line: 296, baseType: !4104, size: 64, offset: 384)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!147, !4067, !115, !162, !359}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4061, file: !4030, line: 306, baseType: !162, size: 64, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4061, file: !4030, line: 313, baseType: !545, size: 8, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4061, file: !4030, line: 314, baseType: !4104, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4061, file: !4030, line: 317, baseType: !4111, size: 64, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!2290, !4067, !2292}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4061, file: !4030, line: 320, baseType: !4115, size: 64, offset: 704)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!68, !4067, !2057}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4056, file: !4030, line: 176, baseType: !4119, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4030, line: 35, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4056, file: !4030, line: 177, baseType: !359, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4056, file: !4030, line: 178, baseType: !4028, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4029, file: !4030, line: 215, baseType: !187, size: 64, offset: 768)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4029, file: !4030, line: 221, baseType: !271, size: 64, offset: 832)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4029, file: !4030, line: 223, baseType: !85, size: 16, offset: 896)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4029, file: !4030, line: 224, baseType: !157, size: 16, offset: 912)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4029, file: !4030, line: 225, baseType: !4128, size: 64, offset: 960)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4030, line: 36, flags: DIFlagFwdDecl)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4029, file: !4030, line: 227, baseType: !685, size: 128, align: 64, offset: 1024)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !22, file: !23, line: 71, baseType: !4132, size: 32, offset: 448)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4133, line: 19, size: 32, elements: !4134)
!4133 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4134 = !{!4135}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4132, file: !4133, line: 20, baseType: !1258, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !22, file: !23, line: 73, baseType: !210, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !22, file: !23, line: 74, baseType: !210, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !22, file: !23, line: 75, baseType: !210, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !22, file: !23, line: 76, baseType: !210, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !22, file: !23, line: 77, baseType: !210, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !18, file: !19, line: 707, baseType: !4142, size: 64, offset: 512)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !18, file: !19, line: 709, baseType: !4144, size: 64, offset: 576)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !19, line: 37, flags: DIFlagFwdDecl)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !18, file: !19, line: 711, baseType: !26, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !18, file: !19, line: 712, baseType: !4148, size: 64, offset: 704)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !19, line: 89, size: 384, elements: !4151)
!4151 = !{!4152, !4153, !4154, !4160, !4165, !4169}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4150, file: !19, line: 90, baseType: !26, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4150, file: !19, line: 91, baseType: !167, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4150, file: !19, line: 92, baseType: !4155, size: 64, offset: 128)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!68, !4158, !110}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4150, file: !19, line: 93, baseType: !4161, size: 64, offset: 192)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!115, !4158, !4164, !4025, !4026}
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4150, file: !19, line: 95, baseType: !4166, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{null, !4142}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4150, file: !19, line: 97, baseType: !4170, size: 64, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !4173, line: 286, size: 1472, elements: !4174)
!4173 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!4174 = !{!4175, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4172, file: !4173, line: 287, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!68, !4142}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4172, file: !4173, line: 288, baseType: !4166, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4172, file: !4173, line: 289, baseType: !4176, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4172, file: !4173, line: 290, baseType: !4176, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4172, file: !4173, line: 291, baseType: !4176, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4172, file: !4173, line: 292, baseType: !4176, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4172, file: !4173, line: 293, baseType: !4176, size: 64, offset: 384)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4172, file: !4173, line: 294, baseType: !4176, size: 64, offset: 448)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4172, file: !4173, line: 295, baseType: !4176, size: 64, offset: 512)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4172, file: !4173, line: 296, baseType: !4176, size: 64, offset: 576)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4172, file: !4173, line: 297, baseType: !4176, size: 64, offset: 640)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4172, file: !4173, line: 298, baseType: !4176, size: 64, offset: 704)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4172, file: !4173, line: 299, baseType: !4176, size: 64, offset: 768)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4172, file: !4173, line: 300, baseType: !4176, size: 64, offset: 832)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4172, file: !4173, line: 301, baseType: !4176, size: 64, offset: 896)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4172, file: !4173, line: 302, baseType: !4176, size: 64, offset: 960)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4172, file: !4173, line: 303, baseType: !4176, size: 64, offset: 1024)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4172, file: !4173, line: 304, baseType: !4176, size: 64, offset: 1088)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4172, file: !4173, line: 305, baseType: !4176, size: 64, offset: 1152)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4172, file: !4173, line: 306, baseType: !4176, size: 64, offset: 1216)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4172, file: !4173, line: 307, baseType: !4176, size: 64, offset: 1280)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4172, file: !4173, line: 308, baseType: !4176, size: 64, offset: 1344)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4172, file: !4173, line: 309, baseType: !4176, size: 64, offset: 1408)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !18, file: !19, line: 714, baseType: !4202, size: 64, offset: 768)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4204)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4205, line: 80, size: 1344, elements: !4206)
!4205 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4291}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4204, file: !4205, line: 81, baseType: !26, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4204, file: !4205, line: 82, baseType: !26, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4204, file: !4205, line: 83, baseType: !167, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4204, file: !4205, line: 84, baseType: !167, size: 64, offset: 192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4204, file: !4205, line: 85, baseType: !167, size: 64, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4204, file: !4205, line: 87, baseType: !4213, size: 64, offset: 320)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!68, !4142, !4216}
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !4218, line: 96, size: 1152, elements: !4219)
!4218 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!4219 = !{!4220, !4221, !4222, !4223, !4224, !4225, !4231, !4244, !4254, !4255, !4256, !4257, !4258, !4266, !4267, !4268, !4269, !4270, !4271}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4217, file: !4218, line: 97, baseType: !26, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4217, file: !4218, line: 98, baseType: !4202, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4217, file: !4218, line: 100, baseType: !387, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4217, file: !4218, line: 101, baseType: !26, size: 64, offset: 192)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4217, file: !4218, line: 103, baseType: !545, size: 8, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4217, file: !4218, line: 104, baseType: !4226, size: 32, offset: 288)
!4226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !4218, line: 45, baseType: !210, size: 32, elements: !4227)
!4227 = !{!4228, !4229, !4230}
!4228 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!4229 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!4230 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4217, file: !4218, line: 106, baseType: !4232, size: 64, offset: 320)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4234)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4235, line: 282, size: 1600, elements: !4236)
!4235 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4236 = !{!4237, !4238, !4239, !4243}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4234, file: !4235, line: 283, baseType: !3479, size: 256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4234, file: !4235, line: 284, baseType: !3479, size: 256, offset: 256)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4234, file: !4235, line: 285, baseType: !4240, size: 1024, offset: 512)
!4240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !4241)
!4241 = !{!4242}
!4242 = !DISubrange(count: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4234, file: !4235, line: 286, baseType: !2477, size: 64, offset: 1536)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4217, file: !4218, line: 107, baseType: !4245, size: 64, offset: 384)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4235, line: 217, size: 256, elements: !4248)
!4248 = !{!4249, !4250, !4252, !4253}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4247, file: !4235, line: 218, baseType: !3486, size: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4247, file: !4235, line: 219, baseType: !4251, size: 64, offset: 128)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4235, line: 15, baseType: !165)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4247, file: !4235, line: 220, baseType: !268, size: 32, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4247, file: !4235, line: 221, baseType: !268, size: 32, offset: 224)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4217, file: !4218, line: 109, baseType: !4176, size: 64, offset: 448)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4217, file: !4218, line: 110, baseType: !4166, size: 64, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4217, file: !4218, line: 111, baseType: !4176, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4217, file: !4218, line: 112, baseType: !4166, size: 64, offset: 640)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4217, file: !4218, line: 113, baseType: !4259, size: 64, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!68, !4142, !4262}
!4262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !4173, line: 60, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !4173, line: 58, size: 32, elements: !4264)
!4264 = !{!4265}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4263, file: !4173, line: 59, baseType: !68, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4217, file: !4218, line: 114, baseType: !4176, size: 64, offset: 768)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4217, file: !4218, line: 115, baseType: !167, size: 64, offset: 832)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4217, file: !4218, line: 116, baseType: !167, size: 64, offset: 896)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4217, file: !4218, line: 118, baseType: !4170, size: 64, offset: 960)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4217, file: !4218, line: 119, baseType: !4166, size: 64, offset: 1024)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4217, file: !4218, line: 121, baseType: !4272, size: 64, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !4218, line: 121, flags: DIFlagFwdDecl)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4204, file: !4205, line: 88, baseType: !4155, size: 64, offset: 384)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4204, file: !4205, line: 89, baseType: !4176, size: 64, offset: 448)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4204, file: !4205, line: 90, baseType: !4166, size: 64, offset: 512)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4204, file: !4205, line: 91, baseType: !4166, size: 64, offset: 576)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4204, file: !4205, line: 92, baseType: !4166, size: 64, offset: 640)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4204, file: !4205, line: 94, baseType: !4176, size: 64, offset: 704)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4204, file: !4205, line: 95, baseType: !4176, size: 64, offset: 768)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4204, file: !4205, line: 97, baseType: !4259, size: 64, offset: 832)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4204, file: !4205, line: 98, baseType: !4176, size: 64, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4204, file: !4205, line: 100, baseType: !4176, size: 64, offset: 960)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4204, file: !4205, line: 102, baseType: !4176, size: 64, offset: 1024)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4204, file: !4205, line: 103, baseType: !4166, size: 64, offset: 1088)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4204, file: !4205, line: 105, baseType: !4170, size: 64, offset: 1152)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4204, file: !4205, line: 107, baseType: !4288, size: 64, offset: 1216)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4205, line: 107, flags: DIFlagFwdDecl)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4204, file: !4205, line: 109, baseType: !545, size: 8, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !18, file: !19, line: 715, baseType: !4216, size: 64, offset: 832)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !18, file: !19, line: 717, baseType: !187, size: 64, offset: 896)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !18, file: !19, line: 719, baseType: !187, size: 64, offset: 960)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 721, baseType: !465, size: 256, offset: 1024)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !18, file: !19, line: 725, baseType: !4297, size: 448, offset: 1280)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !19, line: 517, size: 448, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4297, file: !19, line: 518, baseType: !30, size: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4297, file: !19, line: 519, baseType: !30, size: 128, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4297, file: !19, line: 520, baseType: !30, size: 128, offset: 256)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4297, file: !19, line: 521, baseType: !4303, size: 32, offset: 384)
!4303 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !19, line: 487, baseType: !210, size: 32, elements: !4304)
!4304 = !{!4305, !4306, !4307, !4308}
!4305 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!4306 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!4307 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!4308 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !18, file: !19, line: 726, baseType: !4310, size: 2496, offset: 1728)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !4173, line: 663, size: 2496, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4387, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4408, !4412}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4310, file: !4173, line: 664, baseType: !4262, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4310, file: !4173, line: 665, baseType: !210, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4310, file: !4173, line: 666, baseType: !210, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4310, file: !4173, line: 667, baseType: !545, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4310, file: !4173, line: 668, baseType: !545, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4310, file: !4173, line: 669, baseType: !545, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4310, file: !4173, line: 670, baseType: !545, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4310, file: !4173, line: 671, baseType: !545, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4310, file: !4173, line: 672, baseType: !545, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4310, file: !4173, line: 673, baseType: !545, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4310, file: !4173, line: 674, baseType: !545, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4310, file: !4173, line: 675, baseType: !267, size: 32, offset: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4310, file: !4173, line: 676, baseType: !44, size: 32, offset: 96)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4310, file: !4173, line: 678, baseType: !30, size: 128, offset: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4310, file: !4173, line: 679, baseType: !414, size: 256, offset: 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4310, file: !4173, line: 680, baseType: !4328, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4330, line: 43, size: 1536, elements: !4331)
!4330 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4331 = !{!4332, !4333, !4334, !4335, !4336, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4329, file: !4330, line: 44, baseType: !26, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4329, file: !4330, line: 45, baseType: !68, size: 32, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4329, file: !4330, line: 46, baseType: !30, size: 128, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4329, file: !4330, line: 47, baseType: !44, size: 32, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4329, file: !4330, line: 48, baseType: !4337, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !4173, line: 629, flags: DIFlagFwdDecl)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4329, file: !4330, line: 49, baseType: !707, size: 320, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4329, file: !4330, line: 50, baseType: !165, size: 64, offset: 704)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4329, file: !4330, line: 51, baseType: !1374, size: 64, offset: 768)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4329, file: !4330, line: 52, baseType: !1374, size: 64, offset: 832)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4329, file: !4330, line: 53, baseType: !1374, size: 64, offset: 896)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4329, file: !4330, line: 54, baseType: !1374, size: 64, offset: 960)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4329, file: !4330, line: 55, baseType: !1374, size: 64, offset: 1024)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4329, file: !4330, line: 56, baseType: !165, size: 64, offset: 1088)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4329, file: !4330, line: 57, baseType: !165, size: 64, offset: 1152)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4329, file: !4330, line: 58, baseType: !165, size: 64, offset: 1216)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4329, file: !4330, line: 59, baseType: !165, size: 64, offset: 1280)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4329, file: !4330, line: 60, baseType: !165, size: 64, offset: 1344)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4329, file: !4330, line: 61, baseType: !4142, size: 64, offset: 1408)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4329, file: !4330, line: 62, baseType: !545, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4329, file: !4330, line: 63, baseType: !545, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4310, file: !4173, line: 681, baseType: !545, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4310, file: !4173, line: 682, baseType: !545, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4310, file: !4173, line: 683, baseType: !545, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4310, file: !4173, line: 684, baseType: !210, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4310, file: !4173, line: 685, baseType: !210, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4310, file: !4173, line: 690, baseType: !1365, size: 512, offset: 640)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4310, file: !4173, line: 691, baseType: !271, size: 64, offset: 1152)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4310, file: !4173, line: 692, baseType: !725, size: 256, offset: 1216)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4310, file: !4173, line: 693, baseType: !1231, size: 192, offset: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4310, file: !4173, line: 694, baseType: !4337, size: 64, offset: 1664)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4310, file: !4173, line: 695, baseType: !64, size: 32, offset: 1728)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4310, file: !4173, line: 696, baseType: !64, size: 32, offset: 1760)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4310, file: !4173, line: 697, baseType: !210, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4310, file: !4173, line: 698, baseType: !210, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4310, file: !4173, line: 699, baseType: !210, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4310, file: !4173, line: 700, baseType: !210, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4310, file: !4173, line: 701, baseType: !210, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4310, file: !4173, line: 702, baseType: !210, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4310, file: !4173, line: 703, baseType: !545, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4310, file: !4173, line: 704, baseType: !210, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4310, file: !4173, line: 705, baseType: !210, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4310, file: !4173, line: 706, baseType: !210, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4310, file: !4173, line: 707, baseType: !210, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4310, file: !4173, line: 708, baseType: !210, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4310, file: !4173, line: 709, baseType: !210, size: 32, offset: 1824)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4310, file: !4173, line: 710, baseType: !4380, size: 32, offset: 1856)
!4380 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !4173, line: 620, baseType: !210, size: 32, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385, !4386}
!4382 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!4383 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!4384 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!4385 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!4386 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4310, file: !4173, line: 711, baseType: !4388, size: 32, offset: 1888)
!4388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !4173, line: 597, baseType: !68, size: 32, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394}
!4390 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!4391 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!4392 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!4393 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!4394 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4310, file: !4173, line: 712, baseType: !4388, size: 32, offset: 1920)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4310, file: !4173, line: 713, baseType: !68, size: 32, offset: 1952)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4310, file: !4173, line: 714, baseType: !68, size: 32, offset: 1984)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4310, file: !4173, line: 715, baseType: !271, size: 64, offset: 2048)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4310, file: !4173, line: 716, baseType: !271, size: 64, offset: 2112)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4310, file: !4173, line: 717, baseType: !271, size: 64, offset: 2176)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4310, file: !4173, line: 718, baseType: !271, size: 64, offset: 2240)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4310, file: !4173, line: 720, baseType: !4403, size: 64, offset: 2304)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !4173, line: 632, size: 64, elements: !4405)
!4405 = !{!4406, !4407}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4404, file: !4173, line: 633, baseType: !44, size: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4404, file: !4173, line: 634, baseType: !210, size: 32, offset: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4310, file: !4173, line: 721, baseType: !4409, size: 64, offset: 2368)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{null, !4142, !461}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4310, file: !4173, line: 722, baseType: !4413, size: 64, offset: 2432)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !4173, line: 722, flags: DIFlagFwdDecl)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !18, file: !19, line: 727, baseType: !4416, size: 64, offset: 4224)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !4173, line: 742, size: 1792, elements: !4418)
!4418 = !{!4419, !4420, !4421, !4425, !4426, !4427}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4417, file: !4173, line: 743, baseType: !4172, size: 1472)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4417, file: !4173, line: 744, baseType: !4176, size: 64, offset: 1472)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4417, file: !4173, line: 745, baseType: !4422, size: 64, offset: 1536)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{null, !4142, !545}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4417, file: !4173, line: 746, baseType: !4176, size: 64, offset: 1600)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4417, file: !4173, line: 747, baseType: !4166, size: 64, offset: 1664)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4417, file: !4173, line: 748, baseType: !4166, size: 64, offset: 1728)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !18, file: !19, line: 736, baseType: !4429, size: 128, offset: 4288)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !19, line: 529, size: 128, elements: !4430)
!4430 = !{!4431, !4435}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4429, file: !19, line: 531, baseType: !4432, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4434, line: 13, flags: DIFlagFwdDecl)
!4434 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4429, file: !19, line: 532, baseType: !4436, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !19, line: 49, flags: DIFlagFwdDecl)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !18, file: !19, line: 738, baseType: !4439, size: 64, offset: 4416)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4441)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !19, line: 738, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !18, file: !19, line: 740, baseType: !4443, size: 64, offset: 4480)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !18, file: !19, line: 741, baseType: !271, size: 64, offset: 4544)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !18, file: !19, line: 746, baseType: !271, size: 64, offset: 4608)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !18, file: !19, line: 747, baseType: !4447, size: 64, offset: 4672)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4449)
!4449 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !19, line: 747, flags: DIFlagFwdDecl)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !18, file: !19, line: 749, baseType: !4451, size: 64, offset: 4736)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !19, line: 428, size: 128, elements: !4453)
!4453 = !{!4454, !4455, !4456}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4452, file: !19, line: 433, baseType: !210, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4452, file: !19, line: 434, baseType: !210, size: 32, offset: 32)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4452, file: !19, line: 435, baseType: !165, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !18, file: !19, line: 751, baseType: !30, size: 128, offset: 4800)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !18, file: !19, line: 762, baseType: !4459, size: 64, offset: 4928)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !19, line: 762, flags: DIFlagFwdDecl)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !18, file: !19, line: 770, baseType: !4462, offset: 4992)
!4462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4463, line: 5, elements: !754)
!4463 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !18, file: !19, line: 772, baseType: !4465, size: 64, offset: 4992)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4467, line: 18, flags: DIFlagFwdDecl)
!4467 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !18, file: !19, line: 773, baseType: !4469, size: 64, offset: 5056)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4471, line: 41, size: 512, elements: !4472)
!4471 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4472 = !{!4473, !4474, !4568, !4569, !4570, !4571}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4470, file: !4471, line: 42, baseType: !4469, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4470, file: !4471, line: 43, baseType: !4475, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4477)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4471, line: 125, size: 1408, elements: !4478)
!4478 = !{!4479, !4483, !4487, !4493, !4497, !4498, !4503, !4507, !4511, !4515, !4519, !4520, !4524, !4528, !4532, !4543, !4544, !4545, !4546, !4556, !4560, !4564}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4477, file: !4471, line: 126, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!4469, !4469}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4477, file: !4471, line: 127, baseType: !4484, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{null, !4469}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4477, file: !4471, line: 128, baseType: !4488, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!545, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4470)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4477, file: !4471, line: 129, baseType: !4494, size: 64, offset: 192)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!2477, !4491, !4158}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4477, file: !4471, line: 131, baseType: !4488, size: 64, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4477, file: !4471, line: 133, baseType: !4499, size: 64, offset: 320)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!4502, !4491}
!4502 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4471, line: 132, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4477, file: !4471, line: 134, baseType: !4504, size: 64, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!545, !4491, !26}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4477, file: !4471, line: 136, baseType: !4508, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!68, !4491, !26, !210, !187, !162}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4477, file: !4471, line: 141, baseType: !4512, size: 64, offset: 512)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!68, !4491, !26, !802, !162}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4477, file: !4471, line: 144, baseType: !4516, size: 64, offset: 576)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!26, !4491}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4477, file: !4471, line: 145, baseType: !4516, size: 64, offset: 640)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4477, file: !4471, line: 146, baseType: !4521, size: 64, offset: 704)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!4469, !4491}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4477, file: !4471, line: 148, baseType: !4525, size: 64, offset: 768)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!4469, !4491, !4469}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4477, file: !4471, line: 151, baseType: !4529, size: 64, offset: 832)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!4469, !4491, !26}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4477, file: !4471, line: 153, baseType: !4533, size: 64, offset: 896)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!68, !4491, !26, !26, !210, !210, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4471, line: 94, size: 640, elements: !4538)
!4538 = !{!4539, !4540, !4541}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4537, file: !4471, line: 95, baseType: !4469, size: 64)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4537, file: !4471, line: 96, baseType: !210, size: 32, offset: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4537, file: !4471, line: 97, baseType: !4542, size: 512, offset: 128)
!4542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 512, elements: !1413)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4477, file: !4471, line: 158, baseType: !4525, size: 64, offset: 960)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4477, file: !4471, line: 161, baseType: !4521, size: 64, offset: 1024)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4477, file: !4471, line: 163, baseType: !4480, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4477, file: !4471, line: 164, baseType: !4547, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!68, !4491, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4471, line: 73, size: 128, elements: !4552)
!4552 = !{!4553, !4554, !4555}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4551, file: !4471, line: 74, baseType: !210, size: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4551, file: !4471, line: 75, baseType: !210, size: 32, offset: 32)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4551, file: !4471, line: 76, baseType: !4491, size: 64, offset: 64)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4477, file: !4471, line: 166, baseType: !4557, size: 64, offset: 1216)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!187, !4469, !68}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4477, file: !4471, line: 167, baseType: !4561, size: 64, offset: 1280)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!68, !4491, !210}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4477, file: !4471, line: 168, baseType: !4565, size: 64, offset: 1344)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!68, !4469}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4470, file: !4471, line: 44, baseType: !4142, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4470, file: !4471, line: 45, baseType: !30, size: 128, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4470, file: !4471, line: 46, baseType: !30, size: 128, offset: 320)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4470, file: !4471, line: 47, baseType: !73, size: 8, offset: 448)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !18, file: !19, line: 776, baseType: !68, size: 32, offset: 5120)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !18, file: !19, line: 778, baseType: !354, size: 32, offset: 5152)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !19, line: 779, baseType: !267, size: 32, offset: 5184)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !18, file: !19, line: 781, baseType: !44, size: 32, offset: 5216)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !18, file: !19, line: 782, baseType: !30, size: 128, offset: 5248)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !18, file: !19, line: 784, baseType: !4578, size: 64, offset: 5376)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4580)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4581, line: 52, size: 768, elements: !4582)
!4581 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4591, !4595, !4596, !4597, !4598, !4602, !4606}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4580, file: !4581, line: 53, baseType: !26, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4580, file: !4581, line: 55, baseType: !167, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4580, file: !4581, line: 56, baseType: !167, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4580, file: !4581, line: 58, baseType: !4155, size: 64, offset: 192)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4580, file: !4581, line: 59, baseType: !4588, size: 64, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!115, !4158, !4164}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4580, file: !4581, line: 61, baseType: !4592, size: 64, offset: 320)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4578}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4580, file: !4581, line: 62, baseType: !4166, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4580, file: !4581, line: 64, baseType: !4176, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4580, file: !4581, line: 66, baseType: !3986, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4580, file: !4581, line: 67, baseType: !4599, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!2477, !4158}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4580, file: !4581, line: 69, baseType: !4603, size: 64, offset: 640)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !4158, !4025, !4026}
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4580, file: !4581, line: 71, baseType: !4170, size: 64, offset: 704)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !18, file: !19, line: 785, baseType: !167, size: 64, offset: 5440)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !18, file: !19, line: 787, baseType: !4166, size: 64, offset: 5504)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !18, file: !19, line: 788, baseType: !4610, size: 64, offset: 5568)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !19, line: 46, flags: DIFlagFwdDecl)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !18, file: !19, line: 789, baseType: !4613, size: 64, offset: 5632)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !19, line: 48, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !18, file: !19, line: 791, baseType: !4616, size: 64, offset: 5696)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !19, line: 597, size: 128, elements: !4618)
!4618 = !{!4619, !4629, !4635, !4641, !4642}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4617, file: !19, line: 598, baseType: !4620, size: 32)
!4620 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !19, line: 547, baseType: !210, size: 32, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4627, !4628}
!4622 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!4623 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!4624 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!4625 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!4626 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!4627 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!4628 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4617, file: !19, line: 599, baseType: !4630, size: 32, offset: 32)
!4630 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !19, line: 564, baseType: !210, size: 32, elements: !4631)
!4631 = !{!4632, !4633, !4634}
!4632 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!4633 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!4634 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4617, file: !19, line: 600, baseType: !4636, size: 32, offset: 64)
!4636 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !19, line: 577, baseType: !210, size: 32, elements: !4637)
!4637 = !{!4638, !4639, !4640}
!4638 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!4639 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!4640 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4617, file: !19, line: 601, baseType: !545, size: 8, offset: 96)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4617, file: !19, line: 602, baseType: !545, size: 8, offset: 104)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !18, file: !19, line: 793, baseType: !4644, size: 32, offset: 5760)
!4644 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !19, line: 503, baseType: !210, size: 32, elements: !4645)
!4645 = !{!4646, !4647, !4648, !4649}
!4646 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!4647 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!4648 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!4649 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !18, file: !19, line: 795, baseType: !545, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !18, file: !19, line: 796, baseType: !545, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !18, file: !19, line: 797, baseType: !545, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !18, file: !19, line: 798, baseType: !545, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !18, file: !19, line: 799, baseType: !545, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !14, file: !15, line: 31, baseType: !4656, size: 64, offset: 5824)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mii_bus", file: !11, line: 370, size: 20992, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4665, !4666, !4670, !4674, !4678, !4682, !4686, !4711, !4712, !4713, !4720, !4721, !4724, !4725, !4726, !4728, !4729, !4730, !4734, !4735}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4657, file: !11, line: 371, baseType: !387, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4657, file: !11, line: 372, baseType: !26, size: 64, offset: 64)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4657, file: !11, line: 373, baseType: !4662, size: 488, offset: 128)
!4662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 488, elements: !4663)
!4663 = !{!4664}
!4664 = !DISubrange(count: 61)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4657, file: !11, line: 374, baseType: !187, size: 64, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4657, file: !11, line: 376, baseType: !4667, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!68, !4656, !68, !68}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4657, file: !11, line: 378, baseType: !4671, size: 64, offset: 768)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!68, !4656, !68, !68, !83}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "read_c45", scope: !4657, file: !11, line: 380, baseType: !4675, size: 64, offset: 832)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!68, !4656, !68, !68, !68}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "write_c45", scope: !4657, file: !11, line: 382, baseType: !4679, size: 64, offset: 896)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!68, !4656, !68, !68, !68, !83}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4657, file: !11, line: 385, baseType: !4683, size: 64, offset: 960)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!68, !4656}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4657, file: !11, line: 388, baseType: !4687, size: 8192, offset: 1024)
!4687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4688, size: 8192, elements: !280)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_bus_stats", file: !11, line: 319, size: 256, elements: !4689)
!4689 = !{!4690, !4706, !4707, !4708, !4709}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "transfers", scope: !4688, file: !11, line: 320, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64_stats_t", file: !4692, line: 75, baseType: !4693)
!4692 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4692, line: 73, size: 64, elements: !4694)
!4694 = !{!4695}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !4693, file: !4692, line: 74, baseType: !4696, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !4697, line: 26, baseType: !4698)
!4697 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4697, line: 24, size: 64, elements: !4699)
!4699 = !{!4700}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4698, file: !4697, line: 25, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !4702, line: 12, baseType: !4703)
!4702 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4702, line: 10, size: 64, elements: !4704)
!4704 = !{!4705}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !4703, file: !4702, line: 11, baseType: !469, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4688, file: !11, line: 321, baseType: !4691, size: 64, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "writes", scope: !4688, file: !11, line: 322, baseType: !4691, size: 64, offset: 128)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "reads", scope: !4688, file: !11, line: 323, baseType: !4691, size: 64, offset: 192)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !4688, file: !11, line: 325, baseType: !4710, offset: 256)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4692, line: 64, elements: !754)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mdio_lock", scope: !4657, file: !11, line: 394, baseType: !465, size: 256, offset: 9216)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4657, file: !11, line: 397, baseType: !4142, size: 64, offset: 9472)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4657, file: !11, line: 404, baseType: !4714, size: 32, offset: 9536)
!4714 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !4657, file: !11, line: 399, baseType: !210, size: 32, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719}
!4716 = !DIEnumerator(name: "MDIOBUS_ALLOCATED", value: 1)
!4717 = !DIEnumerator(name: "MDIOBUS_REGISTERED", value: 2)
!4718 = !DIEnumerator(name: "MDIOBUS_UNREGISTERED", value: 3)
!4719 = !DIEnumerator(name: "MDIOBUS_RELEASED", value: 4)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4657, file: !11, line: 407, baseType: !18, size: 5824, offset: 9600)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "mdio_map", scope: !4657, file: !11, line: 410, baseType: !4722, size: 2048, offset: 15424)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4723, size: 2048, elements: !280)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "phy_mask", scope: !4657, file: !11, line: 413, baseType: !267, size: 32, offset: 17472)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "phy_ignore_ta_mask", scope: !4657, file: !11, line: 416, baseType: !267, size: 32, offset: 17504)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4657, file: !11, line: 422, baseType: !4727, size: 1024, offset: 17536)
!4727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, elements: !280)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "reset_delay_us", scope: !4657, file: !11, line: 425, baseType: !68, size: 32, offset: 18560)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "reset_post_delay_us", scope: !4657, file: !11, line: 427, baseType: !68, size: 32, offset: 18592)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "reset_gpiod", scope: !4657, file: !11, line: 429, baseType: !4731, size: 64, offset: 18624)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4733, line: 23, flags: DIFlagFwdDecl)
!4733 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "shared_lock", scope: !4657, file: !11, line: 432, baseType: !465, size: 256, offset: 18688)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !4657, file: !11, line: 435, baseType: !4736, size: 2048, offset: 18944)
!4736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4737, size: 2048, elements: !280)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_package_shared", file: !11, line: 340, size: 256, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4743, !4744}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4738, file: !11, line: 341, baseType: !68, size: 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4738, file: !11, line: 342, baseType: !1258, size: 32, offset: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4738, file: !11, line: 343, baseType: !165, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "priv_size", scope: !4738, file: !11, line: 344, baseType: !162, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4738, file: !11, line: 352, baseType: !187, size: 64, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "modalias", scope: !14, file: !15, line: 32, baseType: !3479, size: 256, offset: 5888)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "bus_match", scope: !14, file: !15, line: 34, baseType: !4213, size: 64, offset: 6144)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "device_free", scope: !14, file: !15, line: 35, baseType: !4748, size: 64, offset: 6208)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !4723}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "device_remove", scope: !14, file: !15, line: 36, baseType: !4748, size: 64, offset: 6272)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !14, file: !15, line: 39, baseType: !68, size: 32, offset: 6336)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !15, line: 40, baseType: !68, size: 32, offset: 6368)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "reset_gpio", scope: !14, file: !15, line: 41, baseType: !4731, size: 64, offset: 6400)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ctrl", scope: !14, file: !15, line: 42, baseType: !4756, size: 64, offset: 6464)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !15, line: 15, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "reset_assert_delay", scope: !14, file: !15, line: 43, baseType: !210, size: 32, offset: 6528)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "reset_deassert_delay", scope: !14, file: !15, line: 44, baseType: !210, size: 32, offset: 6560)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !10, file: !11, line: 639, baseType: !4761, size: 64, offset: 6592)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_driver", file: !11, line: 892, size: 4288, elements: !4763)
!4763 = !{!4764, !4769, !4770, !4771, !4772, !4775, !4776, !4777, !4781, !4782, !4783, !4784, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4842, !4846, !4847, !4860, !4864, !4865, !4869, !4873, !4874, !4878, !4890, !4904, !4905, !4917, !4921, !4922, !4926, !4937, !4950, !4954, !4958, !4959, !4960, !4974, !4980, !4988, !4998, !5002, !5006, !5007}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "mdiodrv", scope: !4762, file: !11, line: 893, baseType: !4765, size: 1216)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mdio_driver_common", file: !15, line: 53, size: 1216, elements: !4766)
!4766 = !{!4767, !4768}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4765, file: !15, line: 54, baseType: !4217, size: 1152)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4765, file: !15, line: 55, baseType: !68, size: 32, offset: 1152)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id", scope: !4762, file: !11, line: 894, baseType: !267, size: 32, offset: 1216)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4762, file: !11, line: 895, baseType: !115, size: 64, offset: 1280)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id_mask", scope: !4762, file: !11, line: 896, baseType: !267, size: 32, offset: 1344)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4762, file: !11, line: 897, baseType: !4773, size: 64, offset: 1408)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4762, file: !11, line: 898, baseType: !267, size: 32, offset: 1472)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4762, file: !11, line: 899, baseType: !2477, size: 64, offset: 1536)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !4762, file: !11, line: 904, baseType: !4778, size: 64, offset: 1600)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!68, !9}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "config_init", scope: !4762, file: !11, line: 910, baseType: !4778, size: 64, offset: 1664)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4762, file: !11, line: 916, baseType: !4778, size: 64, offset: 1728)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !4762, file: !11, line: 922, baseType: !4778, size: 64, offset: 1792)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "get_rate_matching", scope: !4762, file: !11, line: 933, baseType: !4785, size: 64, offset: 1856)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!68, !9, !4788}
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "phy_interface_t", file: !11, line: 169, baseType: !4789)
!4789 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 132, baseType: !210, size: 32, elements: !4790)
!4790 = !{!4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824}
!4791 = !DIEnumerator(name: "PHY_INTERFACE_MODE_NA", value: 0)
!4792 = !DIEnumerator(name: "PHY_INTERFACE_MODE_INTERNAL", value: 1)
!4793 = !DIEnumerator(name: "PHY_INTERFACE_MODE_MII", value: 2)
!4794 = !DIEnumerator(name: "PHY_INTERFACE_MODE_GMII", value: 3)
!4795 = !DIEnumerator(name: "PHY_INTERFACE_MODE_SGMII", value: 4)
!4796 = !DIEnumerator(name: "PHY_INTERFACE_MODE_TBI", value: 5)
!4797 = !DIEnumerator(name: "PHY_INTERFACE_MODE_REVMII", value: 6)
!4798 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RMII", value: 7)
!4799 = !DIEnumerator(name: "PHY_INTERFACE_MODE_REVRMII", value: 8)
!4800 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII", value: 9)
!4801 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII_ID", value: 10)
!4802 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII_RXID", value: 11)
!4803 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RGMII_TXID", value: 12)
!4804 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RTBI", value: 13)
!4805 = !DIEnumerator(name: "PHY_INTERFACE_MODE_SMII", value: 14)
!4806 = !DIEnumerator(name: "PHY_INTERFACE_MODE_XGMII", value: 15)
!4807 = !DIEnumerator(name: "PHY_INTERFACE_MODE_XLGMII", value: 16)
!4808 = !DIEnumerator(name: "PHY_INTERFACE_MODE_MOCA", value: 17)
!4809 = !DIEnumerator(name: "PHY_INTERFACE_MODE_PSGMII", value: 18)
!4810 = !DIEnumerator(name: "PHY_INTERFACE_MODE_QSGMII", value: 19)
!4811 = !DIEnumerator(name: "PHY_INTERFACE_MODE_TRGMII", value: 20)
!4812 = !DIEnumerator(name: "PHY_INTERFACE_MODE_100BASEX", value: 21)
!4813 = !DIEnumerator(name: "PHY_INTERFACE_MODE_1000BASEX", value: 22)
!4814 = !DIEnumerator(name: "PHY_INTERFACE_MODE_2500BASEX", value: 23)
!4815 = !DIEnumerator(name: "PHY_INTERFACE_MODE_5GBASER", value: 24)
!4816 = !DIEnumerator(name: "PHY_INTERFACE_MODE_RXAUI", value: 25)
!4817 = !DIEnumerator(name: "PHY_INTERFACE_MODE_XAUI", value: 26)
!4818 = !DIEnumerator(name: "PHY_INTERFACE_MODE_10GBASER", value: 27)
!4819 = !DIEnumerator(name: "PHY_INTERFACE_MODE_25GBASER", value: 28)
!4820 = !DIEnumerator(name: "PHY_INTERFACE_MODE_USXGMII", value: 29)
!4821 = !DIEnumerator(name: "PHY_INTERFACE_MODE_10GKR", value: 30)
!4822 = !DIEnumerator(name: "PHY_INTERFACE_MODE_QUSGMII", value: 31)
!4823 = !DIEnumerator(name: "PHY_INTERFACE_MODE_1000BASEKX", value: 32)
!4824 = !DIEnumerator(name: "PHY_INTERFACE_MODE_MAX", value: 33)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4762, file: !11, line: 938, baseType: !4778, size: 64, offset: 1920)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4762, file: !11, line: 940, baseType: !4778, size: 64, offset: 1984)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "config_aneg", scope: !4762, file: !11, line: 948, baseType: !4778, size: 64, offset: 2048)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "aneg_done", scope: !4762, file: !11, line: 951, baseType: !4778, size: 64, offset: 2112)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4762, file: !11, line: 954, baseType: !4778, size: 64, offset: 2176)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "config_intr", scope: !4762, file: !11, line: 961, baseType: !4778, size: 64, offset: 2240)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "handle_interrupt", scope: !4762, file: !11, line: 964, baseType: !4832, size: 64, offset: 2304)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!4835, !9}
!4835 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !4836, line: 17, baseType: !4837)
!4836 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!4837 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !4836, line: 11, baseType: !210, size: 32, elements: !4838)
!4838 = !{!4839, !4840, !4841}
!4839 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!4840 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!4841 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4762, file: !11, line: 967, baseType: !4843, size: 64, offset: 2368)
!4843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4844, size: 64)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{null, !9}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "match_phy_device", scope: !4762, file: !11, line: 974, baseType: !4778, size: 64, offset: 2432)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "set_wol", scope: !4762, file: !11, line: 982, baseType: !4848, size: 64, offset: 2496)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!68, !9, !4851}
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_wolinfo", file: !4853, line: 211, size: 160, elements: !4854)
!4853 = !DIFile(filename: "./include/uapi/linux/ethtool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9220d03792ac517f4e9c9f8e4448f58")
!4854 = !{!4855, !4856, !4857, !4858}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4852, file: !4853, line: 212, baseType: !268, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !4852, file: !4853, line: 213, baseType: !268, size: 32, offset: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "wolopts", scope: !4852, file: !4853, line: 214, baseType: !268, size: 32, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "sopass", scope: !4852, file: !4853, line: 215, baseType: !4859, size: 48, offset: 96)
!4859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 48, elements: !1724)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "get_wol", scope: !4762, file: !11, line: 988, baseType: !4861, size: 64, offset: 2560)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !9, !4851}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "link_change_notify", scope: !4762, file: !11, line: 998, baseType: !4843, size: 64, offset: 2624)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "read_mmd", scope: !4762, file: !11, line: 1010, baseType: !4866, size: 64, offset: 2688)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!68, !9, !68, !83}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "write_mmd", scope: !4762, file: !11, line: 1022, baseType: !4870, size: 64, offset: 2752)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!68, !9, !68, !83, !83}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !4762, file: !11, line: 1026, baseType: !4778, size: 64, offset: 2816)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !4762, file: !11, line: 1028, baseType: !4875, size: 64, offset: 2880)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!68, !9, !68}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "module_info", scope: !4762, file: !11, line: 1034, baseType: !4879, size: 64, offset: 2944)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!68, !9, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_modinfo", file: !4853, line: 393, size: 352, elements: !4884)
!4884 = !{!4885, !4886, !4887, !4888}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4883, file: !4853, line: 394, baseType: !268, size: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4883, file: !4853, line: 395, baseType: !268, size: 32, offset: 32)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "eeprom_len", scope: !4883, file: !4853, line: 396, baseType: !268, size: 32, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4883, file: !4853, line: 397, baseType: !4889, size: 256, offset: 96)
!4889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 256, elements: !1413)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "module_eeprom", scope: !4762, file: !11, line: 1041, baseType: !4891, size: 64, offset: 3008)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!68, !9, !4894, !4903}
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_eeprom", file: !4853, line: 344, size: 128, elements: !4896)
!4896 = !{!4897, !4898, !4899, !4900, !4901}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4895, file: !4853, line: 345, baseType: !268, size: 32)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4895, file: !4853, line: 346, baseType: !268, size: 32, offset: 32)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4895, file: !4853, line: 347, baseType: !268, size: 32, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4895, file: !4853, line: 348, baseType: !268, size: 32, offset: 96)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4895, file: !4853, line: 349, baseType: !4902, offset: 128)
!4902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, elements: !1634)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "cable_test_start", scope: !4762, file: !11, line: 1045, baseType: !4778, size: 64, offset: 3072)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "cable_test_tdr_start", scope: !4762, file: !11, line: 1048, baseType: !4906, size: 64, offset: 3136)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!68, !9, !4909}
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4911)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_tdr_config", file: !11, line: 787, size: 128, elements: !4912)
!4912 = !{!4913, !4914, !4915, !4916}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4911, file: !11, line: 788, baseType: !267, size: 32)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !4911, file: !11, line: 789, baseType: !267, size: 32, offset: 32)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !4911, file: !11, line: 790, baseType: !267, size: 32, offset: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !4911, file: !11, line: 791, baseType: !514, size: 8, offset: 96)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "cable_test_get_status", scope: !4762, file: !11, line: 1055, baseType: !4918, size: 64, offset: 3200)
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{!68, !9, !3946}
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "get_sset_count", scope: !4762, file: !11, line: 1059, baseType: !4778, size: 64, offset: 3264)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "get_strings", scope: !4762, file: !11, line: 1061, baseType: !4923, size: 64, offset: 3328)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{null, !9, !4903}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "get_stats", scope: !4762, file: !11, line: 1063, baseType: !4927, size: 64, offset: 3392)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{null, !9, !4930, !4443}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_stats", file: !4853, line: 920, size: 64, elements: !4932)
!4932 = !{!4933, !4934, !4935}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4931, file: !4853, line: 921, baseType: !268, size: 32)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "n_stats", scope: !4931, file: !4853, line: 922, baseType: !268, size: 32, offset: 32)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4931, file: !4853, line: 923, baseType: !4936, offset: 64)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !1634)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "get_tunable", scope: !4762, file: !11, line: 1068, baseType: !4938, size: 64, offset: 3456)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!68, !9, !4941, !187}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_tunable", file: !4853, line: 253, size: 128, elements: !4943)
!4943 = !{!4944, !4945, !4946, !4947, !4948}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !4942, file: !4853, line: 254, baseType: !268, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4942, file: !4853, line: 255, baseType: !268, size: 32, offset: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !4942, file: !4853, line: 256, baseType: !268, size: 32, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4942, file: !4853, line: 257, baseType: !268, size: 32, offset: 96)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4942, file: !4853, line: 258, baseType: !4949, offset: 128)
!4949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, elements: !1634)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "set_tunable", scope: !4762, file: !11, line: 1071, baseType: !4951, size: 64, offset: 3520)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!68, !9, !4941, !2477}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "set_loopback", scope: !4762, file: !11, line: 1075, baseType: !4955, size: 64, offset: 3584)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!68, !9, !545}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "get_sqi", scope: !4762, file: !11, line: 1077, baseType: !4778, size: 64, offset: 3648)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "get_sqi_max", scope: !4762, file: !11, line: 1079, baseType: !4778, size: 64, offset: 3712)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "get_plca_cfg", scope: !4762, file: !11, line: 1083, baseType: !4961, size: 64, offset: 3776)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!68, !9, !4964}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_plca_cfg", file: !11, line: 827, size: 224, elements: !4966)
!4966 = !{!4967, !4968, !4969, !4970, !4971, !4972, !4973}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4965, file: !11, line: 828, baseType: !68, size: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4965, file: !11, line: 829, baseType: !68, size: 32, offset: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4965, file: !11, line: 830, baseType: !68, size: 32, offset: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "node_cnt", scope: !4965, file: !11, line: 831, baseType: !68, size: 32, offset: 96)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "to_tmr", scope: !4965, file: !11, line: 832, baseType: !68, size: 32, offset: 128)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "burst_cnt", scope: !4965, file: !11, line: 833, baseType: !68, size: 32, offset: 160)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "burst_tmr", scope: !4965, file: !11, line: 834, baseType: !68, size: 32, offset: 192)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "set_plca_cfg", scope: !4762, file: !11, line: 1086, baseType: !4975, size: 64, offset: 3840)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!68, !9, !4978}
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4965)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "get_plca_status", scope: !4762, file: !11, line: 1089, baseType: !4981, size: 64, offset: 3904)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!68, !9, !4984}
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_plca_status", file: !11, line: 848, size: 8, elements: !4986)
!4986 = !{!4987}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "pst", scope: !4985, file: !11, line: 849, baseType: !545, size: 8)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "led_brightness_set", scope: !4762, file: !11, line: 1098, baseType: !4989, size: 64, offset: 3968)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!68, !9, !73, !4992}
!4992 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !4733, line: 33, baseType: !210, size: 32, elements: !4993)
!4993 = !{!4994, !4995, !4996, !4997}
!4994 = !DIEnumerator(name: "LED_OFF", value: 0)
!4995 = !DIEnumerator(name: "LED_ON", value: 1)
!4996 = !DIEnumerator(name: "LED_HALF", value: 127)
!4997 = !DIEnumerator(name: "LED_FULL", value: 255)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "led_blink_set", scope: !4762, file: !11, line: 1109, baseType: !4999, size: 64, offset: 4032)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!68, !9, !73, !816, !816}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "led_hw_is_supported", scope: !4762, file: !11, line: 1120, baseType: !5003, size: 64, offset: 4096)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!68, !9, !73, !165}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "led_hw_control_set", scope: !4762, file: !11, line: 1130, baseType: !5003, size: 64, offset: 4160)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "led_hw_control_get", scope: !4762, file: !11, line: 1142, baseType: !5008, size: 64, offset: 4224)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!68, !9, !73, !816}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "devlink", scope: !10, file: !11, line: 641, baseType: !5012, size: 64, offset: 6656)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_link", file: !19, line: 824, size: 6656, elements: !5014)
!5014 = !{!5015, !5016, !5017, !5018, !5019, !5020, !5029, !5030, !5031, !5032, !5033}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "supplier", scope: !5013, file: !19, line: 825, baseType: !4142, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "s_node", scope: !5013, file: !19, line: 826, baseType: !30, size: 128, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !5013, file: !19, line: 827, baseType: !4142, size: 64, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "c_node", scope: !5013, file: !19, line: 828, baseType: !30, size: 128, offset: 256)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "link_dev", scope: !5013, file: !19, line: 829, baseType: !18, size: 5824, offset: 384)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5013, file: !19, line: 830, baseType: !5021, size: 32, offset: 6208)
!5021 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_link_state", file: !19, line: 447, baseType: !68, size: 32, elements: !5022)
!5022 = !{!5023, !5024, !5025, !5026, !5027, !5028}
!5023 = !DIEnumerator(name: "DL_STATE_NONE", value: -1)
!5024 = !DIEnumerator(name: "DL_STATE_DORMANT", value: 0)
!5025 = !DIEnumerator(name: "DL_STATE_AVAILABLE", value: 1)
!5026 = !DIEnumerator(name: "DL_STATE_CONSUMER_PROBE", value: 2)
!5027 = !DIEnumerator(name: "DL_STATE_ACTIVE", value: 3)
!5028 = !DIEnumerator(name: "DL_STATE_SUPPLIER_UNBIND", value: 4)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5013, file: !19, line: 831, baseType: !267, size: 32, offset: 6240)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_active", scope: !5013, file: !19, line: 832, baseType: !1258, size: 32, offset: 6272)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !5013, file: !19, line: 833, baseType: !4132, size: 32, offset: 6304)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "rm_work", scope: !5013, file: !19, line: 834, baseType: !725, size: 256, offset: 6336)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "supplier_preactivated", scope: !5013, file: !19, line: 835, baseType: !545, size: 8, offset: 6592)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "phy_id", scope: !10, file: !11, line: 643, baseType: !267, size: 32, offset: 6720)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "c45_ids", scope: !10, file: !11, line: 645, baseType: !5036, size: 1088, offset: 6752)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_c45_device_ids", file: !11, line: 530, size: 1088, elements: !5037)
!5037 = !{!5038, !5039, !5040}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "devices_in_package", scope: !5036, file: !11, line: 531, baseType: !267, size: 32)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "mmds_present", scope: !5036, file: !11, line: 532, baseType: !267, size: 32, offset: 32)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "device_ids", scope: !5036, file: !11, line: 533, baseType: !3353, size: 1024, offset: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "is_c45", scope: !10, file: !11, line: 646, baseType: !210, size: 1, offset: 7840, flags: DIFlagBitField, extraData: i64 7840)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "is_internal", scope: !10, file: !11, line: 647, baseType: !210, size: 1, offset: 7841, flags: DIFlagBitField, extraData: i64 7840)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "is_pseudo_fixed_link", scope: !10, file: !11, line: 648, baseType: !210, size: 1, offset: 7842, flags: DIFlagBitField, extraData: i64 7840)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "is_gigabit_capable", scope: !10, file: !11, line: 649, baseType: !210, size: 1, offset: 7843, flags: DIFlagBitField, extraData: i64 7840)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "has_fixups", scope: !10, file: !11, line: 650, baseType: !210, size: 1, offset: 7844, flags: DIFlagBitField, extraData: i64 7840)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !10, file: !11, line: 651, baseType: !210, size: 1, offset: 7845, flags: DIFlagBitField, extraData: i64 7840)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_by_mdio_bus", scope: !10, file: !11, line: 652, baseType: !210, size: 1, offset: 7846, flags: DIFlagBitField, extraData: i64 7840)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_links", scope: !10, file: !11, line: 653, baseType: !210, size: 1, offset: 7847, flags: DIFlagBitField, extraData: i64 7840)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "loopback_enabled", scope: !10, file: !11, line: 654, baseType: !210, size: 1, offset: 7848, flags: DIFlagBitField, extraData: i64 7840)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "downshifted_rate", scope: !10, file: !11, line: 655, baseType: !210, size: 1, offset: 7849, flags: DIFlagBitField, extraData: i64 7840)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "is_on_sfp_module", scope: !10, file: !11, line: 656, baseType: !210, size: 1, offset: 7850, flags: DIFlagBitField, extraData: i64 7840)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "mac_managed_pm", scope: !10, file: !11, line: 657, baseType: !210, size: 1, offset: 7851, flags: DIFlagBitField, extraData: i64 7840)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "wol_enabled", scope: !10, file: !11, line: 658, baseType: !210, size: 1, offset: 7852, flags: DIFlagBitField, extraData: i64 7840)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "autoneg", scope: !10, file: !11, line: 660, baseType: !210, size: 1, offset: 7853, flags: DIFlagBitField, extraData: i64 7840)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !10, file: !11, line: 662, baseType: !210, size: 1, offset: 7854, flags: DIFlagBitField, extraData: i64 7840)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "autoneg_complete", scope: !10, file: !11, line: 663, baseType: !210, size: 1, offset: 7855, flags: DIFlagBitField, extraData: i64 7840)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !10, file: !11, line: 666, baseType: !210, size: 1, offset: 7856, flags: DIFlagBitField, extraData: i64 7840)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspended", scope: !10, file: !11, line: 667, baseType: !210, size: 1, offset: 7857, flags: DIFlagBitField, extraData: i64 7840)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_rerun", scope: !10, file: !11, line: 668, baseType: !210, size: 1, offset: 7858, flags: DIFlagBitField, extraData: i64 7840)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "rate_matching", scope: !10, file: !11, line: 670, baseType: !68, size: 32, offset: 7872)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !10, file: !11, line: 672, baseType: !5062, size: 32, offset: 7904)
!5062 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_state", file: !11, line: 511, baseType: !210, size: 32, elements: !5063)
!5063 = !{!5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071}
!5064 = !DIEnumerator(name: "PHY_DOWN", value: 0)
!5065 = !DIEnumerator(name: "PHY_READY", value: 1)
!5066 = !DIEnumerator(name: "PHY_HALTED", value: 2)
!5067 = !DIEnumerator(name: "PHY_ERROR", value: 3)
!5068 = !DIEnumerator(name: "PHY_UP", value: 4)
!5069 = !DIEnumerator(name: "PHY_RUNNING", value: 5)
!5070 = !DIEnumerator(name: "PHY_NOLINK", value: 6)
!5071 = !DIEnumerator(name: "PHY_CABLETEST", value: 7)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !10, file: !11, line: 674, baseType: !267, size: 32, offset: 7936)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !10, file: !11, line: 676, baseType: !4788, size: 32, offset: 7968)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !10, file: !11, line: 682, baseType: !68, size: 32, offset: 8000)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "duplex", scope: !10, file: !11, line: 683, baseType: !68, size: 32, offset: 8032)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !10, file: !11, line: 684, baseType: !68, size: 32, offset: 8064)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !10, file: !11, line: 685, baseType: !68, size: 32, offset: 8096)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "asym_pause", scope: !10, file: !11, line: 686, baseType: !68, size: 32, offset: 8128)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "master_slave_get", scope: !10, file: !11, line: 687, baseType: !73, size: 8, offset: 8160)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "master_slave_set", scope: !10, file: !11, line: 688, baseType: !73, size: 8, offset: 8168)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "master_slave_state", scope: !10, file: !11, line: 689, baseType: !73, size: 8, offset: 8176)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !10, file: !11, line: 693, baseType: !5083, size: 128, offset: 8192)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !584)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "advertising", scope: !10, file: !11, line: 694, baseType: !5083, size: 128, offset: 8320)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "lp_advertising", scope: !10, file: !11, line: 695, baseType: !5083, size: 128, offset: 8448)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "adv_old", scope: !10, file: !11, line: 697, baseType: !5083, size: 128, offset: 8576)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "supported_eee", scope: !10, file: !11, line: 699, baseType: !5083, size: 128, offset: 8704)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "advertising_eee", scope: !10, file: !11, line: 700, baseType: !5083, size: 128, offset: 8832)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "eee_enabled", scope: !10, file: !11, line: 701, baseType: !545, size: 8, offset: 8960)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "host_interfaces", scope: !10, file: !11, line: 704, baseType: !1497, size: 64, offset: 9024)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "eee_broken_modes", scope: !10, file: !11, line: 707, baseType: !267, size: 32, offset: 9088)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !10, file: !11, line: 716, baseType: !30, size: 128, offset: 9152)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !10, file: !11, line: 722, baseType: !68, size: 32, offset: 9280)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !10, file: !11, line: 726, baseType: !187, size: 64, offset: 9344)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !10, file: !11, line: 730, baseType: !4737, size: 64, offset: 9408)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "skb", scope: !10, file: !11, line: 733, baseType: !5097, size: 64, offset: 9472)
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5098, size: 64)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !5099, line: 840, size: 1792, elements: !5100)
!5099 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!5100 = !{!5101, !5120, !5121, !5126, !5130, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5315, !5317, !5318, !5320, !5321, !5322, !5323}
!5101 = !DIDerivedType(tag: DW_TAG_member, scope: !5098, file: !5099, line: 841, baseType: !5102, size: 192)
!5102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5098, file: !5099, line: 841, size: 192, elements: !5103)
!5103 = !{!5104, !5117, !5118, !5119}
!5104 = !DIDerivedType(tag: DW_TAG_member, scope: !5102, file: !5099, line: 842, baseType: !5105, size: 192)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5102, file: !5099, line: 842, size: 192, elements: !5106)
!5106 = !{!5107, !5108, !5109}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5105, file: !5099, line: 844, baseType: !5097, size: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5105, file: !5099, line: 845, baseType: !5097, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, scope: !5105, file: !5099, line: 847, baseType: !5110, size: 64, offset: 128)
!5110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5105, file: !5099, line: 847, size: 64, elements: !5111)
!5111 = !{!5112, !5116}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5110, file: !5099, line: 848, baseType: !5113, size: 64)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !5115, line: 8, flags: DIFlagFwdDecl)
!5115 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !5110, file: !5099, line: 853, baseType: !165, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !5102, file: !5099, line: 856, baseType: !577, size: 192, align: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5102, file: !5099, line: 857, baseType: !30, size: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !5102, file: !5099, line: 858, baseType: !1271, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !5098, file: !5099, line: 861, baseType: !4009, size: 64, offset: 192)
!5121 = !DIDerivedType(tag: DW_TAG_member, scope: !5098, file: !5099, line: 863, baseType: !5122, size: 64, offset: 256)
!5122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5098, file: !5099, line: 863, size: 64, elements: !5123)
!5123 = !{!5124, !5125}
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !5122, file: !5099, line: 864, baseType: !1374, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !5122, file: !5099, line: 865, baseType: !271, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !5098, file: !5099, line: 873, baseType: !5127, size: 384, align: 64, offset: 320)
!5127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 384, elements: !5128)
!5128 = !{!5129}
!5129 = !DISubrange(count: 48)
!5130 = !DIDerivedType(tag: DW_TAG_member, scope: !5098, file: !5099, line: 875, baseType: !5131, size: 128, offset: 704)
!5131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5098, file: !5099, line: 875, size: 128, elements: !5132)
!5132 = !{!5133, !5141}
!5133 = !DIDerivedType(tag: DW_TAG_member, scope: !5131, file: !5099, line: 876, baseType: !5134, size: 128)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5131, file: !5099, line: 876, size: 128, elements: !5135)
!5135 = !{!5136, !5137}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !5134, file: !5099, line: 877, baseType: !165, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !5134, file: !5099, line: 878, baseType: !5138, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{null, !5097}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !5131, file: !5099, line: 880, baseType: !30, size: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !5098, file: !5099, line: 887, baseType: !165, size: 64, offset: 832)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5098, file: !5099, line: 889, baseType: !210, size: 32, offset: 896)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !5098, file: !5099, line: 890, baseType: !210, size: 32, offset: 928)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !5098, file: !5099, line: 891, baseType: !84, size: 16, offset: 960)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !5098, file: !5099, line: 892, baseType: !84, size: 16, offset: 976)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !5098, file: !5099, line: 897, baseType: !84, size: 16, offset: 992)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !5098, file: !5099, line: 908, baseType: !5149, offset: 1008)
!5149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, elements: !5150)
!5150 = !{!5151}
!5151 = !DISubrange(count: 0)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !5098, file: !5099, line: 910, baseType: !75, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !5098, file: !5099, line: 911, baseType: !75, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !5098, file: !5099, line: 912, baseType: !75, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !5098, file: !5099, line: 913, baseType: !75, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !5098, file: !5099, line: 914, baseType: !75, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !5098, file: !5099, line: 915, baseType: !75, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !5098, file: !5099, line: 916, baseType: !75, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !5098, file: !5099, line: 918, baseType: !75, size: 8, offset: 1016)
!5160 = !DIDerivedType(tag: DW_TAG_member, scope: !5098, file: !5099, line: 924, baseType: !5161, size: 448, offset: 1024)
!5161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5098, file: !5099, line: 924, size: 448, elements: !5162)
!5162 = !{!5163, !5240}
!5163 = !DIDerivedType(tag: DW_TAG_member, scope: !5161, file: !5099, line: 924, baseType: !5164, size: 448)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5161, file: !5099, line: 924, size: 448, elements: !5165)
!5165 = !{!5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5188, !5189, !5190, !5191, !5192, !5193, !5194, !5204, !5205, !5206, !5207, !5217, !5222, !5223, !5228, !5233, !5234, !5235, !5236, !5237, !5238, !5239}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !5164, file: !5099, line: 924, baseType: !5149)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !5164, file: !5099, line: 924, baseType: !75, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !5164, file: !5099, line: 924, baseType: !75, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !5164, file: !5099, line: 924, baseType: !5149, offset: 8)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !5164, file: !5099, line: 924, baseType: !75, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !5164, file: !5099, line: 924, baseType: !75, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !5164, file: !5099, line: 924, baseType: !75, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 32)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !5164, file: !5099, line: 924, baseType: !83, size: 16, offset: 48)
!5194 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !5099, line: 924, baseType: !5195, size: 32, offset: 64)
!5195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !5099, line: 924, size: 32, elements: !5196)
!5196 = !{!5197, !5199}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5195, file: !5099, line: 924, baseType: !5198, size: 32)
!5198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !2291, line: 44, baseType: !268)
!5199 = !DIDerivedType(tag: DW_TAG_member, scope: !5195, file: !5099, line: 924, baseType: !5200, size: 32)
!5200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5195, file: !5099, line: 924, size: 32, elements: !5201)
!5201 = !{!5202, !5203}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !5200, file: !5099, line: 924, baseType: !84, size: 16)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !5200, file: !5099, line: 924, baseType: !84, size: 16, offset: 16)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5164, file: !5099, line: 924, baseType: !268, size: 32, offset: 96)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !5164, file: !5099, line: 924, baseType: !68, size: 32, offset: 128)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5164, file: !5099, line: 924, baseType: !268, size: 32, offset: 160)
!5207 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !5099, line: 924, baseType: !5208, size: 32, offset: 192)
!5208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !5099, line: 924, size: 32, elements: !5209)
!5209 = !{!5210, !5211}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !5208, file: !5099, line: 924, baseType: !267, size: 32)
!5211 = !DIDerivedType(tag: DW_TAG_member, scope: !5208, file: !5099, line: 924, baseType: !5212, size: 32)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5208, file: !5099, line: 924, size: 32, elements: !5213)
!5213 = !{!5214, !5216}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !5212, file: !5099, line: 924, baseType: !5215, size: 16)
!5215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !2291, line: 37, baseType: !84)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !5212, file: !5099, line: 924, baseType: !84, size: 16, offset: 16)
!5217 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !5099, line: 924, baseType: !5218, size: 32, offset: 224)
!5218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !5099, line: 924, size: 32, elements: !5219)
!5219 = !{!5220, !5221}
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !5218, file: !5099, line: 924, baseType: !210, size: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !5218, file: !5099, line: 924, baseType: !210, size: 32)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !5164, file: !5099, line: 924, baseType: !268, size: 32, offset: 256)
!5223 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !5099, line: 924, baseType: !5224, size: 32, offset: 288)
!5224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !5099, line: 924, size: 32, elements: !5225)
!5225 = !{!5226, !5227}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !5224, file: !5099, line: 924, baseType: !268, size: 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !5224, file: !5099, line: 924, baseType: !268, size: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, scope: !5164, file: !5099, line: 924, baseType: !5229, size: 16, offset: 320)
!5229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5164, file: !5099, line: 924, size: 16, elements: !5230)
!5230 = !{!5231, !5232}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !5229, file: !5099, line: 924, baseType: !5215, size: 16)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !5229, file: !5099, line: 924, baseType: !75, size: 8)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 336)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 352)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 368)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5164, file: !5099, line: 924, baseType: !5215, size: 16, offset: 384)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 400)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 416)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !5164, file: !5099, line: 924, baseType: !84, size: 16, offset: 432)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !5161, file: !5099, line: 924, baseType: !5241, size: 448)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5161, file: !5099, line: 924, size: 448, elements: !5242)
!5242 = !{!5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5280, !5281, !5282, !5283, !5292, !5297, !5298, !5303, !5308, !5309, !5310, !5311, !5312, !5313, !5314}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !5241, file: !5099, line: 924, baseType: !5149)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !5241, file: !5099, line: 924, baseType: !75, size: 3, flags: DIFlagBitField, extraData: i64 0)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !5241, file: !5099, line: 924, baseType: !75, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !5241, file: !5099, line: 924, baseType: !5149, offset: 8)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !5241, file: !5099, line: 924, baseType: !75, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !5241, file: !5099, line: 924, baseType: !75, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !5241, file: !5099, line: 924, baseType: !75, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !5241, file: !5099, line: 924, baseType: !83, size: 16, offset: 48)
!5271 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !5099, line: 924, baseType: !5272, size: 32, offset: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !5099, line: 924, size: 32, elements: !5273)
!5273 = !{!5274, !5275}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !5272, file: !5099, line: 924, baseType: !5198, size: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, scope: !5272, file: !5099, line: 924, baseType: !5276, size: 32)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5272, file: !5099, line: 924, size: 32, elements: !5277)
!5277 = !{!5278, !5279}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !5276, file: !5099, line: 924, baseType: !84, size: 16)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !5276, file: !5099, line: 924, baseType: !84, size: 16, offset: 16)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5241, file: !5099, line: 924, baseType: !268, size: 32, offset: 96)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !5241, file: !5099, line: 924, baseType: !68, size: 32, offset: 128)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5241, file: !5099, line: 924, baseType: !268, size: 32, offset: 160)
!5283 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !5099, line: 924, baseType: !5284, size: 32, offset: 192)
!5284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !5099, line: 924, size: 32, elements: !5285)
!5285 = !{!5286, !5287}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !5284, file: !5099, line: 924, baseType: !267, size: 32)
!5287 = !DIDerivedType(tag: DW_TAG_member, scope: !5284, file: !5099, line: 924, baseType: !5288, size: 32)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5284, file: !5099, line: 924, size: 32, elements: !5289)
!5289 = !{!5290, !5291}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !5288, file: !5099, line: 924, baseType: !5215, size: 16)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !5288, file: !5099, line: 924, baseType: !84, size: 16, offset: 16)
!5292 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !5099, line: 924, baseType: !5293, size: 32, offset: 224)
!5293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !5099, line: 924, size: 32, elements: !5294)
!5294 = !{!5295, !5296}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !5293, file: !5099, line: 924, baseType: !210, size: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !5293, file: !5099, line: 924, baseType: !210, size: 32)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !5241, file: !5099, line: 924, baseType: !268, size: 32, offset: 256)
!5298 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !5099, line: 924, baseType: !5299, size: 32, offset: 288)
!5299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !5099, line: 924, size: 32, elements: !5300)
!5300 = !{!5301, !5302}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !5299, file: !5099, line: 924, baseType: !268, size: 32)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !5299, file: !5099, line: 924, baseType: !268, size: 32)
!5303 = !DIDerivedType(tag: DW_TAG_member, scope: !5241, file: !5099, line: 924, baseType: !5304, size: 16, offset: 320)
!5304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5241, file: !5099, line: 924, size: 16, elements: !5305)
!5305 = !{!5306, !5307}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !5304, file: !5099, line: 924, baseType: !5215, size: 16)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !5304, file: !5099, line: 924, baseType: !75, size: 8)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 336)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 352)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 368)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5241, file: !5099, line: 924, baseType: !5215, size: 16, offset: 384)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 400)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 416)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !5241, file: !5099, line: 924, baseType: !84, size: 16, offset: 432)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5098, file: !5099, line: 1047, baseType: !5316, size: 32, offset: 1472)
!5316 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !5099, line: 683, baseType: !210)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5098, file: !5099, line: 1048, baseType: !5316, size: 32, offset: 1504)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5098, file: !5099, line: 1049, baseType: !5319, size: 64, offset: 1536)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5098, file: !5099, line: 1050, baseType: !5319, size: 64, offset: 1600)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !5098, file: !5099, line: 1051, baseType: !210, size: 32, offset: 1664)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5098, file: !5099, line: 1052, baseType: !1258, size: 32, offset: 1696)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !5098, file: !5099, line: 1056, baseType: !5324, size: 64, offset: 1728)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5325, size: 64)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !5099, line: 4679, size: 64, elements: !5326)
!5326 = !{!5327, !5328, !5330, !5331}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5325, file: !5099, line: 4680, baseType: !1258, size: 32)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5325, file: !5099, line: 4681, baseType: !5329, size: 8, offset: 32)
!5329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8, elements: !1498)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !5325, file: !5099, line: 4682, baseType: !73, size: 8, offset: 40)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5325, file: !5099, line: 4683, baseType: !3091, align: 64, offset: 64)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "ehdr", scope: !10, file: !11, line: 734, baseType: !187, size: 64, offset: 9536)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "nest", scope: !10, file: !11, line: 735, baseType: !5334, size: 64, offset: 9600)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !5336, line: 229, size: 32, elements: !5337)
!5336 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!5337 = !{!5338, !5339}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !5335, file: !5336, line: 230, baseType: !84, size: 16)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !5335, file: !5336, line: 231, baseType: !84, size: 16, offset: 16)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "state_queue", scope: !10, file: !11, line: 738, baseType: !782, size: 704, offset: 9664)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !10, file: !11, line: 740, baseType: !465, size: 256, offset: 10368)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "sfp_bus_attached", scope: !10, file: !11, line: 743, baseType: !545, size: 8, offset: 10624)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "sfp_bus", scope: !10, file: !11, line: 744, baseType: !5344, size: 64, offset: 10688)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = !DICompositeType(tag: DW_TAG_structure_type, name: "sfp_bus", file: !11, line: 307, flags: DIFlagFwdDecl)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "phylink", scope: !10, file: !11, line: 745, baseType: !5347, size: 64, offset: 10752)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DICompositeType(tag: DW_TAG_structure_type, name: "phylink", file: !11, line: 306, flags: DIFlagFwdDecl)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "attached_dev", scope: !10, file: !11, line: 746, baseType: !5113, size: 64, offset: 10816)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "mii_ts", scope: !10, file: !11, line: 747, baseType: !5351, size: 64, offset: 10880)
!5351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5352, size: 64)
!5352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mii_timestamper", file: !5353, line: 46, size: 384, elements: !5354)
!5353 = !DIFile(filename: "./include/linux/mii_timestamper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c4cca89849e255c97d62d9a989cc313")
!5354 = !{!5355, !5359, !5363, !5493, !5497, !5512}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "rxtstamp", scope: !5352, file: !5353, line: 47, baseType: !5356, size: 64)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5357, size: 64)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!545, !5351, !5097, !68}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "txtstamp", scope: !5352, file: !5353, line: 50, baseType: !5360, size: 64, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{null, !5351, !5097, !68}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "hwtstamp", scope: !5352, file: !5353, line: 53, baseType: !5364, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!68, !5351, !5367}
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifreq", file: !5369, line: 234, size: 320, elements: !5370)
!5369 = !DIFile(filename: "./include/uapi/linux/if.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93196a4816a542b4a9187fa76f3e230a")
!5370 = !{!5371, !5375}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifrn", scope: !5368, file: !5369, line: 239, baseType: !5372, size: 128)
!5372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5368, file: !5369, line: 236, size: 128, elements: !5373)
!5373 = !{!5374}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "ifrn_name", scope: !5372, file: !5369, line: 238, baseType: !2661, size: 128)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "ifr_ifru", scope: !5368, file: !5369, line: 255, baseType: !5376, size: 192, offset: 128)
!5376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5368, file: !5369, line: 241, size: 192, elements: !5377)
!5377 = !{!5378, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405, !5414, !5415, !5416, !5417}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_addr", scope: !5376, file: !5369, line: 242, baseType: !5379, size: 128)
!5379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !4011, line: 34, size: 128, elements: !5380)
!5380 = !{!5381, !5385}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !5379, file: !4011, line: 35, baseType: !5382, size: 16)
!5382 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !4011, line: 28, baseType: !5383)
!5383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_sa_family_t", file: !5384, line: 10, baseType: !85)
!5384 = !DIFile(filename: "./include/uapi/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9188d06e118bd729d386f60af56244e2")
!5385 = !DIDerivedType(tag: DW_TAG_member, scope: !5379, file: !4011, line: 36, baseType: !5386, size: 112, offset: 16)
!5386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5379, file: !4011, line: 36, size: 112, elements: !5387)
!5387 = !{!5388, !5392}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data_min", scope: !5386, file: !4011, line: 37, baseType: !5389, size: 112)
!5389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 112, elements: !5390)
!5390 = !{!5391}
!5391 = !DISubrange(count: 14)
!5392 = !DIDerivedType(tag: DW_TAG_member, scope: !5386, file: !4011, line: 38, baseType: !5393)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5386, file: !4011, line: 38, elements: !5394)
!5394 = !{!5395, !5397}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_sa_data", scope: !5393, file: !4011, line: 38, baseType: !5396)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5393, file: !4011, line: 38, elements: !754)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !5393, file: !4011, line: 38, baseType: !3091)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_dstaddr", scope: !5376, file: !5369, line: 243, baseType: !5379, size: 128)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_broadaddr", scope: !5376, file: !5369, line: 244, baseType: !5379, size: 128)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_netmask", scope: !5376, file: !5369, line: 245, baseType: !5379, size: 128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_hwaddr", scope: !5376, file: !5369, line: 246, baseType: !5379, size: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_flags", scope: !5376, file: !5369, line: 247, baseType: !603, size: 16)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_ivalue", scope: !5376, file: !5369, line: 248, baseType: !68, size: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_mtu", scope: !5376, file: !5369, line: 249, baseType: !68, size: 32)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_map", scope: !5376, file: !5369, line: 250, baseType: !5406, size: 192)
!5406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifmap", file: !5369, line: 196, size: 192, elements: !5407)
!5407 = !{!5408, !5409, !5410, !5411, !5412, !5413}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "mem_start", scope: !5406, file: !5369, line: 197, baseType: !165, size: 64)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "mem_end", scope: !5406, file: !5369, line: 198, baseType: !165, size: 64, offset: 64)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "base_addr", scope: !5406, file: !5369, line: 199, baseType: !85, size: 16, offset: 128)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5406, file: !5369, line: 200, baseType: !77, size: 8, offset: 144)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5406, file: !5369, line: 201, baseType: !77, size: 8, offset: 152)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5406, file: !5369, line: 202, baseType: !77, size: 8, offset: 160)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_slave", scope: !5376, file: !5369, line: 251, baseType: !2661, size: 128)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_newname", scope: !5376, file: !5369, line: 252, baseType: !2661, size: 128)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_data", scope: !5376, file: !5369, line: 253, baseType: !187, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "ifru_settings", scope: !5376, file: !5369, line: 254, baseType: !5418, size: 128)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "if_settings", file: !5369, line: 207, size: 128, elements: !5419)
!5419 = !{!5420, !5421, !5422}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5418, file: !5369, line: 208, baseType: !210, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5418, file: !5369, line: 209, baseType: !210, size: 32, offset: 32)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "ifs_ifsu", scope: !5418, file: !5369, line: 222, baseType: !5423, size: 64, offset: 64)
!5423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5418, file: !5369, line: 210, size: 64, elements: !5424)
!5424 = !{!5425, !5433, !5440, !5452, !5458, !5465, !5476, !5484}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "raw_hdlc", scope: !5423, file: !5369, line: 212, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_hdlc_proto", file: !5428, line: 56, baseType: !5429)
!5428 = !DIFile(filename: "./include/uapi/linux/hdlc/ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "68005b9568aa1ef0327f8e1be2ee5f84")
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 53, size: 32, elements: !5430)
!5430 = !{!5431, !5432}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !5429, file: !5428, line: 54, baseType: !85, size: 16)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5429, file: !5428, line: 55, baseType: !85, size: 16, offset: 16)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "cisco", scope: !5423, file: !5369, line: 213, baseType: !5434, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "cisco_proto", file: !5428, line: 80, baseType: !5436)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 77, size: 64, elements: !5437)
!5437 = !{!5438, !5439}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !5436, file: !5428, line: 78, baseType: !210, size: 32)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5436, file: !5428, line: 79, baseType: !210, size: 32, offset: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "fr", scope: !5423, file: !5369, line: 214, baseType: !5441, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_typedef, name: "fr_proto", file: !5428, line: 66, baseType: !5443)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 58, size: 192, elements: !5444)
!5444 = !{!5445, !5446, !5447, !5448, !5449, !5450, !5451}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "t391", scope: !5443, file: !5428, line: 59, baseType: !210, size: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "t392", scope: !5443, file: !5428, line: 60, baseType: !210, size: 32, offset: 32)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "n391", scope: !5443, file: !5428, line: 61, baseType: !210, size: 32, offset: 64)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "n392", scope: !5443, file: !5428, line: 62, baseType: !210, size: 32, offset: 96)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "n393", scope: !5443, file: !5428, line: 63, baseType: !210, size: 32, offset: 128)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "lmi", scope: !5443, file: !5428, line: 64, baseType: !85, size: 16, offset: 160)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "dce", scope: !5443, file: !5428, line: 65, baseType: !85, size: 16, offset: 176)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "fr_pvc", scope: !5423, file: !5369, line: 215, baseType: !5453, size: 64)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_typedef, name: "fr_proto_pvc", file: !5428, line: 70, baseType: !5455)
!5455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 68, size: 32, elements: !5456)
!5456 = !{!5457}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !5455, file: !5428, line: 69, baseType: !210, size: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "fr_pvc_info", scope: !5423, file: !5369, line: 216, baseType: !5459, size: 64)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_typedef, name: "fr_proto_pvc_info", file: !5428, line: 75, baseType: !5461)
!5461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 72, size: 160, elements: !5462)
!5462 = !{!5463, !5464}
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "dlci", scope: !5461, file: !5428, line: 73, baseType: !210, size: 32)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !5461, file: !5428, line: 74, baseType: !2661, size: 128, offset: 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "x25", scope: !5423, file: !5369, line: 217, baseType: !5466, size: 64)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_typedef, name: "x25_hdlc_proto", file: !5428, line: 89, baseType: !5468)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 82, size: 192, elements: !5469)
!5469 = !{!5470, !5471, !5472, !5473, !5474, !5475}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "dce", scope: !5468, file: !5428, line: 83, baseType: !85, size: 16)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "modulo", scope: !5468, file: !5428, line: 84, baseType: !210, size: 32, offset: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !5468, file: !5428, line: 85, baseType: !210, size: 32, offset: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !5468, file: !5428, line: 86, baseType: !210, size: 32, offset: 96)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !5468, file: !5428, line: 87, baseType: !210, size: 32, offset: 128)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !5468, file: !5428, line: 88, baseType: !210, size: 32, offset: 160)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5423, file: !5369, line: 220, baseType: !5477, size: 64)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync_serial_settings", file: !5428, line: 44, baseType: !5479)
!5479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 40, size: 96, elements: !5480)
!5480 = !{!5481, !5482, !5483}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "clock_rate", scope: !5479, file: !5428, line: 41, baseType: !210, size: 32)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "clock_type", scope: !5479, file: !5428, line: 42, baseType: !210, size: 32, offset: 32)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "loopback", scope: !5479, file: !5428, line: 43, baseType: !85, size: 16, offset: 64)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "te1", scope: !5423, file: !5369, line: 221, baseType: !5485, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DIDerivedType(tag: DW_TAG_typedef, name: "te1_settings", file: !5428, line: 51, baseType: !5487)
!5487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5428, line: 46, size: 128, elements: !5488)
!5488 = !{!5489, !5490, !5491, !5492}
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "clock_rate", scope: !5487, file: !5428, line: 47, baseType: !210, size: 32)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "clock_type", scope: !5487, file: !5428, line: 48, baseType: !210, size: 32, offset: 32)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "loopback", scope: !5487, file: !5428, line: 49, baseType: !85, size: 16, offset: 64)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "slot_map", scope: !5487, file: !5428, line: 50, baseType: !210, size: 32, offset: 96)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !5352, file: !5353, line: 56, baseType: !5494, size: 64, offset: 192)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{null, !5351, !9}
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "ts_info", scope: !5352, file: !5353, line: 59, baseType: !5498, size: 64, offset: 256)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!68, !5351, !5501}
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethtool_ts_info", file: !4853, line: 1452, size: 352, elements: !5503)
!5503 = !{!5504, !5505, !5506, !5507, !5508, !5510, !5511}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5502, file: !4853, line: 1453, baseType: !268, size: 32)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "so_timestamping", scope: !5502, file: !4853, line: 1454, baseType: !268, size: 32, offset: 32)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "phc_index", scope: !5502, file: !4853, line: 1455, baseType: !462, size: 32, offset: 64)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "tx_types", scope: !5502, file: !4853, line: 1456, baseType: !268, size: 32, offset: 96)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "tx_reserved", scope: !5502, file: !4853, line: 1457, baseType: !5509, size: 96, offset: 128)
!5509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 96, elements: !116)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "rx_filters", scope: !5502, file: !4853, line: 1458, baseType: !268, size: 32, offset: 224)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "rx_reserved", scope: !5502, file: !4853, line: 1459, baseType: !5509, size: 96, offset: 256)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5352, file: !5353, line: 62, baseType: !4142, size: 64, offset: 320)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "psec", scope: !10, file: !11, line: 748, baseType: !5514, size: 64, offset: 10944)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DICompositeType(tag: DW_TAG_structure_type, name: "pse_control", file: !11, line: 748, flags: DIFlagFwdDecl)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "mdix", scope: !10, file: !11, line: 750, baseType: !73, size: 8, offset: 11008)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "mdix_ctrl", scope: !10, file: !11, line: 751, baseType: !73, size: 8, offset: 11016)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "pma_extable", scope: !10, file: !11, line: 753, baseType: !68, size: 32, offset: 11040)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "link_down_events", scope: !10, file: !11, line: 755, baseType: !210, size: 32, offset: 11072)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "phy_link_change", scope: !10, file: !11, line: 757, baseType: !5521, size: 64, offset: 11136)
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = !DISubroutineType(types: !5523)
!5523 = !{null, !9, !545}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_link", scope: !10, file: !11, line: 758, baseType: !5525, size: 64, offset: 11200)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = !DISubroutineType(types: !5527)
!5527 = !{null, !5113}
!5528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mac_version", file: !8, line: 14, baseType: !210, size: 32, elements: !5529)
!5529 = !{!5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574}
!5530 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_02", value: 0)
!5531 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_03", value: 1)
!5532 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_04", value: 2)
!5533 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_05", value: 3)
!5534 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_06", value: 4)
!5535 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_07", value: 5)
!5536 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_08", value: 6)
!5537 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_09", value: 7)
!5538 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_10", value: 8)
!5539 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_11", value: 9)
!5540 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_14", value: 10)
!5541 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_17", value: 11)
!5542 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_18", value: 12)
!5543 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_19", value: 13)
!5544 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_20", value: 14)
!5545 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_21", value: 15)
!5546 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_22", value: 16)
!5547 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_23", value: 17)
!5548 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_24", value: 18)
!5549 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_25", value: 19)
!5550 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_26", value: 20)
!5551 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_28", value: 21)
!5552 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_29", value: 22)
!5553 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_30", value: 23)
!5554 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_31", value: 24)
!5555 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_32", value: 25)
!5556 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_33", value: 26)
!5557 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_34", value: 27)
!5558 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_35", value: 28)
!5559 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_36", value: 29)
!5560 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_37", value: 30)
!5561 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_38", value: 31)
!5562 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_39", value: 32)
!5563 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_40", value: 33)
!5564 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_42", value: 34)
!5565 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_43", value: 35)
!5566 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_44", value: 36)
!5567 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_46", value: 37)
!5568 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_48", value: 38)
!5569 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_51", value: 39)
!5570 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_52", value: 40)
!5571 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_53", value: 41)
!5572 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_61", value: 42)
!5573 = !DIEnumerator(name: "RTL_GIGA_MAC_VER_63", value: 43)
!5574 = !DIEnumerator(name: "RTL_GIGA_MAC_NONE", value: 44)
!5575 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/net/ethernet/realtek/.r8169_phy_config.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/net/ethernet/realtek/r8169\22 -D KBUILD_BASENAME=\22r8169_phy_config\22 -D KBUILD_MODNAME=\22r8169\22 -D __KBUILD_MODNAME=kmod_r8169 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/net/ethernet/realtek/r8169_phy_config.ll drivers/net/ethernet/realtek/r8169_phy_config.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5576, retainedTypes: !5577, globals: !5578, splitDebugInlining: false, nameTableKind: None)
!5576 = !{!392, !886, !958, !1381, !1637, !2026, !2172, !2567, !3135, !3927, !3992, !4226, !4303, !4380, !4388, !4620, !4630, !4636, !4644, !4714, !4789, !4837, !4992, !5021, !5062, !5528}
!5577 = !{!187, !68}
!5578 = !{!0, !5579, !5595, !5604, !5613, !5620, !5629, !5638, !5647, !5652, !5662, !5664, !5671}
!5579 = !DIGlobalVariableExpression(var: !5580, expr: !DIExpression())
!5580 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5581, file: !3, line: 111, type: !5587, isLocal: true, isDefinition: true)
!5581 = distinct !DISubprogram(name: "rtl8169s_hw_phy_config", scope: !3, file: !3, line: 108, type: !5582, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5584)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{null, !6, !9}
!5584 = !{!5585, !5586}
!5585 = !DILocalVariable(name: "tp", arg: 1, scope: !5581, file: !3, line: 108, type: !6)
!5586 = !DILocalVariable(name: "phydev", arg: 2, scope: !5581, file: !3, line: 109, type: !9)
!5587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 1632, elements: !5593)
!5588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5589)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_reg", file: !3, line: 53, size: 32, elements: !5590)
!5590 = !{!5591, !5592}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !5589, file: !3, line: 54, baseType: !83, size: 16)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5589, file: !3, line: 55, baseType: !83, size: 16, offset: 16)
!5593 = !{!5594}
!5594 = !DISubrange(count: 51)
!5595 = !DIGlobalVariableExpression(var: !5596, expr: !DIExpression())
!5596 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5597, file: !3, line: 185, type: !5601, isLocal: true, isDefinition: true)
!5597 = distinct !DISubprogram(name: "rtl8169scd_hw_phy_config", scope: !3, file: !3, line: 182, type: !5582, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5598)
!5598 = !{!5599, !5600}
!5599 = !DILocalVariable(name: "tp", arg: 1, scope: !5597, file: !3, line: 182, type: !6)
!5600 = !DILocalVariable(name: "phydev", arg: 2, scope: !5597, file: !3, line: 183, type: !9)
!5601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 1120, elements: !5602)
!5602 = !{!5603}
!5603 = !DISubrange(count: 35)
!5604 = !DIGlobalVariableExpression(var: !5605, expr: !DIExpression())
!5605 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5606, file: !3, line: 231, type: !5610, isLocal: true, isDefinition: true)
!5606 = distinct !DISubprogram(name: "rtl8169sce_hw_phy_config", scope: !3, file: !3, line: 228, type: !5582, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5607)
!5607 = !{!5608, !5609}
!5608 = !DILocalVariable(name: "tp", arg: 1, scope: !5606, file: !3, line: 228, type: !6)
!5609 = !DILocalVariable(name: "phydev", arg: 2, scope: !5606, file: !3, line: 229, type: !9)
!5610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 1344, elements: !5611)
!5611 = !{!5612}
!5612 = !DISubrange(count: 42)
!5613 = !DIGlobalVariableExpression(var: !5614, expr: !DIExpression())
!5614 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5615, file: !3, line: 926, type: !5619, isLocal: true, isDefinition: true)
!5615 = distinct !DISubprogram(name: "rtl8102e_hw_phy_config", scope: !3, file: !3, line: 923, type: !5582, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5616)
!5616 = !{!5617, !5618}
!5617 = !DILocalVariable(name: "tp", arg: 1, scope: !5615, file: !3, line: 923, type: !6)
!5618 = !DILocalVariable(name: "phydev", arg: 2, scope: !5615, file: !3, line: 924, type: !9)
!5619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 128, elements: !695)
!5620 = !DIGlobalVariableExpression(var: !5621, expr: !DIExpression())
!5621 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5622, file: !3, line: 315, type: !5626, isLocal: true, isDefinition: true)
!5622 = distinct !DISubprogram(name: "rtl8168c_1_hw_phy_config", scope: !3, file: !3, line: 312, type: !5582, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5623)
!5623 = !{!5624, !5625}
!5624 = !DILocalVariable(name: "tp", arg: 1, scope: !5622, file: !3, line: 312, type: !6)
!5625 = !DILocalVariable(name: "phydev", arg: 2, scope: !5622, file: !3, line: 313, type: !9)
!5626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 544, elements: !5627)
!5627 = !{!5628}
!5628 = !DISubrange(count: 17)
!5629 = !DIGlobalVariableExpression(var: !5630, expr: !DIExpression())
!5630 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5631, file: !3, line: 344, type: !5635, isLocal: true, isDefinition: true)
!5631 = distinct !DISubprogram(name: "rtl8168c_2_hw_phy_config", scope: !3, file: !3, line: 341, type: !5582, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5632)
!5632 = !{!5633, !5634}
!5633 = !DILocalVariable(name: "tp", arg: 1, scope: !5631, file: !3, line: 341, type: !6)
!5634 = !DILocalVariable(name: "phydev", arg: 2, scope: !5631, file: !3, line: 342, type: !9)
!5635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 480, elements: !5636)
!5636 = !{!5637}
!5637 = !DISubrange(count: 15)
!5638 = !DIGlobalVariableExpression(var: !5639, expr: !DIExpression())
!5639 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5640, file: !3, line: 372, type: !5644, isLocal: true, isDefinition: true)
!5640 = distinct !DISubprogram(name: "rtl8168c_3_hw_phy_config", scope: !3, file: !3, line: 369, type: !5582, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5641)
!5641 = !{!5642, !5643}
!5642 = !DILocalVariable(name: "tp", arg: 1, scope: !5640, file: !3, line: 369, type: !6)
!5643 = !DILocalVariable(name: "phydev", arg: 2, scope: !5640, file: !3, line: 370, type: !9)
!5644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 288, elements: !5645)
!5645 = !{!5646}
!5646 = !DISubrange(count: 9)
!5647 = !DIGlobalVariableExpression(var: !5648, expr: !DIExpression())
!5648 = distinct !DIGlobalVariable(name: "rtl8168d_1_phy_reg_init_0", scope: !5575, file: !3, line: 391, type: !5649, isLocal: true, isDefinition: true)
!5649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 832, elements: !5650)
!5650 = !{!5651}
!5651 = !DISubrange(count: 26)
!5652 = !DIGlobalVariableExpression(var: !5653, expr: !DIExpression())
!5653 = distinct !DIGlobalVariable(name: "set", scope: !5654, file: !3, line: 460, type: !5661, isLocal: true, isDefinition: true)
!5654 = distinct !DISubprogram(name: "rtl8168d_1_common", scope: !3, file: !3, line: 449, type: !4844, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5655)
!5655 = !{!5656, !5657, !5658}
!5656 = !DILocalVariable(name: "phydev", arg: 1, scope: !5654, file: !3, line: 449, type: !9)
!5657 = !DILocalVariable(name: "val", scope: !5654, file: !3, line: 451, type: !83)
!5658 = !DILocalVariable(name: "i", scope: !5659, file: !3, line: 464, type: !68)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 459, column: 32)
!5660 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 459, column: 6)
!5661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 128, elements: !1413)
!5662 = !DIGlobalVariableExpression(var: !5663, expr: !DIExpression())
!5663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 444, type: !3479, isLocal: true, isDefinition: true)
!5664 = !DIGlobalVariableExpression(var: !5665, expr: !DIExpression())
!5665 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5666, file: !3, line: 541, type: !5670, isLocal: true, isDefinition: true)
!5666 = distinct !DISubprogram(name: "rtl8168e_1_hw_phy_config", scope: !3, file: !3, line: 538, type: !5582, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5667)
!5667 = !{!5668, !5669}
!5668 = !DILocalVariable(name: "tp", arg: 1, scope: !5666, file: !3, line: 538, type: !6)
!5669 = !DILocalVariable(name: "phydev", arg: 2, scope: !5666, file: !3, line: 539, type: !9)
!5670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5588, size: 224, elements: !586)
!5671 = !DIGlobalVariableExpression(var: !5672, expr: !DIExpression())
!5672 = distinct !DIGlobalVariable(name: "phy_reg_init", scope: !5673, file: !3, line: 980, type: !5619, isLocal: true, isDefinition: true)
!5673 = distinct !DISubprogram(name: "rtl8106e_hw_phy_config", scope: !3, file: !3, line: 977, type: !5582, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5674)
!5674 = !{!5675, !5676}
!5675 = !DILocalVariable(name: "tp", arg: 1, scope: !5673, file: !3, line: 977, type: !6)
!5676 = !DILocalVariable(name: "phydev", arg: 2, scope: !5673, file: !3, line: 978, type: !9)
!5677 = !{!5678, !5679, !5680}
!5678 = !DILocalVariable(name: "tp", arg: 1, scope: !2, file: !3, line: 1107, type: !6)
!5679 = !DILocalVariable(name: "phydev", arg: 2, scope: !2, file: !3, line: 1107, type: !9)
!5680 = !DILocalVariable(name: "ver", arg: 3, scope: !2, file: !3, line: 1108, type: !5528)
!5681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5682, size: 2816, elements: !5685)
!5682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5683)
!5683 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtl_phy_cfg_fct", file: !3, line: 17, baseType: !5684)
!5684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5685 = !{!5686}
!5686 = !DISubrange(count: 44)
!5687 = !{i32 7, !"Dwarf Version", i32 5}
!5688 = !{i32 2, !"Debug Info Version", i32 3}
!5689 = !{i32 1, !"wchar_size", i32 2}
!5690 = !{i32 8, !"cf-protection-branch", i32 1}
!5691 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5692 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5693 = !{i32 1, !"Code Model", i32 2}
!5694 = !{i32 1, !"override-stack-alignment", i32 8}
!5695 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5696 = !DILocation(line: 1107, column: 50, scope: !2)
!5697 = !DILocation(line: 1107, column: 73, scope: !2)
!5698 = !DILocation(line: 1108, column: 22, scope: !2)
!5699 = !DILocation(line: 1159, column: 18, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1159, column: 6)
!5701 = !DILocation(line: 1159, column: 6, scope: !5700)
!5702 = !DILocation(line: 1159, column: 6, scope: !2)
!5703 = !DILocation(line: 1160, column: 15, scope: !5700)
!5704 = !DILocation(line: 1160, column: 3, scope: !5700)
!5705 = !DILocation(line: 1160, column: 20, scope: !5700)
!5706 = !DILocation(line: 1160, column: 24, scope: !5700)
!5707 = !DILocation(line: 1161, column: 1, scope: !2)
!5708 = !DILocation(line: 108, column: 60, scope: !5581)
!5709 = !DILocation(line: 109, column: 27, scope: !5581)
!5710 = !DILocation(line: 173, column: 2, scope: !5581)
!5711 = !DILocation(line: 174, column: 1, scope: !5581)
!5712 = distinct !DISubprogram(name: "rtl8169sb_hw_phy_config", scope: !3, file: !3, line: 176, type: !5582, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5713)
!5713 = !{!5714, !5715}
!5714 = !DILocalVariable(name: "tp", arg: 1, scope: !5712, file: !3, line: 176, type: !6)
!5715 = !DILocalVariable(name: "phydev", arg: 2, scope: !5712, file: !3, line: 177, type: !9)
!5716 = !DILocation(line: 176, column: 61, scope: !5712)
!5717 = !DILocation(line: 177, column: 28, scope: !5712)
!5718 = !DILocation(line: 179, column: 18, scope: !5712)
!5719 = !DILocation(line: 179, column: 2, scope: !5712)
!5720 = !DILocation(line: 180, column: 1, scope: !5712)
!5721 = !DILocation(line: 182, column: 62, scope: !5597)
!5722 = !DILocation(line: 183, column: 29, scope: !5597)
!5723 = !DILocation(line: 225, column: 2, scope: !5597)
!5724 = !DILocation(line: 226, column: 1, scope: !5597)
!5725 = !DILocation(line: 228, column: 62, scope: !5606)
!5726 = !DILocation(line: 229, column: 29, scope: !5606)
!5727 = !DILocation(line: 279, column: 2, scope: !5606)
!5728 = !DILocation(line: 280, column: 1, scope: !5606)
!5729 = !DILocation(line: 923, column: 60, scope: !5615)
!5730 = !DILocation(line: 924, column: 27, scope: !5615)
!5731 = !DILocation(line: 933, column: 15, scope: !5615)
!5732 = !DILocation(line: 933, column: 2, scope: !5615)
!5733 = !DILocation(line: 934, column: 15, scope: !5615)
!5734 = !DILocation(line: 934, column: 2, scope: !5615)
!5735 = !DILocation(line: 935, column: 15, scope: !5615)
!5736 = !DILocation(line: 935, column: 2, scope: !5615)
!5737 = !DILocation(line: 937, column: 2, scope: !5615)
!5738 = !DILocation(line: 938, column: 1, scope: !5615)
!5739 = distinct !DISubprogram(name: "rtl8168bb_hw_phy_config", scope: !3, file: !3, line: 282, type: !5582, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5740)
!5740 = !{!5741, !5742}
!5741 = !DILocalVariable(name: "tp", arg: 1, scope: !5739, file: !3, line: 282, type: !6)
!5742 = !DILocalVariable(name: "phydev", arg: 2, scope: !5739, file: !3, line: 283, type: !9)
!5743 = !DILocation(line: 282, column: 61, scope: !5739)
!5744 = !DILocation(line: 283, column: 28, scope: !5739)
!5745 = !DILocation(line: 285, column: 12, scope: !5739)
!5746 = !DILocation(line: 285, column: 2, scope: !5739)
!5747 = !DILocation(line: 286, column: 15, scope: !5739)
!5748 = !DILocation(line: 286, column: 2, scope: !5739)
!5749 = !DILocation(line: 287, column: 12, scope: !5739)
!5750 = !DILocation(line: 287, column: 2, scope: !5739)
!5751 = !DILocation(line: 288, column: 12, scope: !5739)
!5752 = !DILocation(line: 288, column: 2, scope: !5739)
!5753 = !DILocation(line: 289, column: 1, scope: !5739)
!5754 = distinct !DISubprogram(name: "rtl8401_hw_phy_config", scope: !3, file: !3, line: 940, type: !5582, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5755)
!5755 = !{!5756, !5757}
!5756 = !DILocalVariable(name: "tp", arg: 1, scope: !5754, file: !3, line: 940, type: !6)
!5757 = !DILocalVariable(name: "phydev", arg: 2, scope: !5754, file: !3, line: 941, type: !9)
!5758 = !DILocation(line: 940, column: 59, scope: !5754)
!5759 = !DILocation(line: 941, column: 26, scope: !5754)
!5760 = !DILocation(line: 943, column: 15, scope: !5754)
!5761 = !DILocation(line: 943, column: 2, scope: !5754)
!5762 = !DILocation(line: 944, column: 19, scope: !5754)
!5763 = !DILocation(line: 944, column: 2, scope: !5754)
!5764 = !DILocation(line: 945, column: 1, scope: !5754)
!5765 = distinct !DISubprogram(name: "rtl8168bef_hw_phy_config", scope: !3, file: !3, line: 291, type: !5582, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5766)
!5766 = !{!5767, !5768}
!5767 = !DILocalVariable(name: "tp", arg: 1, scope: !5765, file: !3, line: 291, type: !6)
!5768 = !DILocalVariable(name: "phydev", arg: 2, scope: !5765, file: !3, line: 292, type: !9)
!5769 = !DILocation(line: 291, column: 62, scope: !5765)
!5770 = !DILocation(line: 292, column: 29, scope: !5765)
!5771 = !DILocation(line: 294, column: 18, scope: !5765)
!5772 = !DILocation(line: 294, column: 2, scope: !5765)
!5773 = !DILocation(line: 295, column: 1, scope: !5765)
!5774 = distinct !DISubprogram(name: "rtl8168cp_1_hw_phy_config", scope: !3, file: !3, line: 297, type: !5582, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5775)
!5775 = !{!5776, !5777}
!5776 = !DILocalVariable(name: "tp", arg: 1, scope: !5774, file: !3, line: 297, type: !6)
!5777 = !DILocalVariable(name: "phydev", arg: 2, scope: !5774, file: !3, line: 298, type: !9)
!5778 = !DILocation(line: 297, column: 63, scope: !5774)
!5779 = !DILocation(line: 298, column: 30, scope: !5774)
!5780 = !DILocation(line: 300, column: 12, scope: !5774)
!5781 = !DILocation(line: 300, column: 2, scope: !5774)
!5782 = !DILocation(line: 301, column: 18, scope: !5774)
!5783 = !DILocation(line: 301, column: 2, scope: !5774)
!5784 = !DILocation(line: 302, column: 1, scope: !5774)
!5785 = !DILocation(line: 312, column: 62, scope: !5622)
!5786 = !DILocation(line: 313, column: 29, scope: !5622)
!5787 = !DILocation(line: 335, column: 2, scope: !5622)
!5788 = !DILocation(line: 337, column: 15, scope: !5622)
!5789 = !DILocation(line: 337, column: 2, scope: !5622)
!5790 = !DILocation(line: 338, column: 15, scope: !5622)
!5791 = !DILocation(line: 338, column: 2, scope: !5622)
!5792 = !DILocation(line: 339, column: 1, scope: !5622)
!5793 = !DILocation(line: 341, column: 62, scope: !5631)
!5794 = !DILocation(line: 342, column: 29, scope: !5631)
!5795 = !DILocation(line: 362, column: 2, scope: !5631)
!5796 = !DILocation(line: 364, column: 15, scope: !5631)
!5797 = !DILocation(line: 364, column: 2, scope: !5631)
!5798 = !DILocation(line: 365, column: 15, scope: !5631)
!5799 = !DILocation(line: 365, column: 2, scope: !5631)
!5800 = !DILocation(line: 366, column: 15, scope: !5631)
!5801 = !DILocation(line: 366, column: 2, scope: !5631)
!5802 = !DILocation(line: 367, column: 1, scope: !5631)
!5803 = !DILocation(line: 369, column: 62, scope: !5640)
!5804 = !DILocation(line: 370, column: 29, scope: !5640)
!5805 = !DILocation(line: 384, column: 2, scope: !5640)
!5806 = !DILocation(line: 386, column: 15, scope: !5640)
!5807 = !DILocation(line: 386, column: 2, scope: !5640)
!5808 = !DILocation(line: 387, column: 15, scope: !5640)
!5809 = !DILocation(line: 387, column: 2, scope: !5640)
!5810 = !DILocation(line: 388, column: 15, scope: !5640)
!5811 = !DILocation(line: 388, column: 2, scope: !5640)
!5812 = !DILocation(line: 389, column: 1, scope: !5640)
!5813 = distinct !DISubprogram(name: "rtl8168cp_2_hw_phy_config", scope: !3, file: !3, line: 304, type: !5582, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5814)
!5814 = !{!5815, !5816}
!5815 = !DILocalVariable(name: "tp", arg: 1, scope: !5813, file: !3, line: 304, type: !6)
!5816 = !DILocalVariable(name: "phydev", arg: 2, scope: !5813, file: !3, line: 305, type: !9)
!5817 = !DILocation(line: 304, column: 63, scope: !5813)
!5818 = !DILocation(line: 305, column: 30, scope: !5813)
!5819 = !DILocation(line: 307, column: 15, scope: !5813)
!5820 = !DILocation(line: 307, column: 2, scope: !5813)
!5821 = !DILocation(line: 308, column: 15, scope: !5813)
!5822 = !DILocation(line: 308, column: 2, scope: !5813)
!5823 = !DILocation(line: 309, column: 18, scope: !5813)
!5824 = !DILocation(line: 309, column: 2, scope: !5813)
!5825 = !DILocation(line: 310, column: 1, scope: !5813)
!5826 = distinct !DISubprogram(name: "rtl8168d_1_hw_phy_config", scope: !3, file: !3, line: 472, type: !5582, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5827)
!5827 = !{!5828, !5829}
!5828 = !DILocalVariable(name: "tp", arg: 1, scope: !5826, file: !3, line: 472, type: !6)
!5829 = !DILocalVariable(name: "phydev", arg: 2, scope: !5826, file: !3, line: 473, type: !9)
!5830 = !DILocation(line: 472, column: 62, scope: !5826)
!5831 = !DILocation(line: 473, column: 29, scope: !5826)
!5832 = !DILocation(line: 475, column: 2, scope: !5826)
!5833 = !DILocation(line: 481, column: 12, scope: !5826)
!5834 = !DILocation(line: 481, column: 2, scope: !5826)
!5835 = !DILocation(line: 482, column: 13, scope: !5826)
!5836 = !DILocation(line: 482, column: 2, scope: !5826)
!5837 = !DILocation(line: 483, column: 13, scope: !5826)
!5838 = !DILocation(line: 483, column: 2, scope: !5826)
!5839 = !DILocation(line: 485, column: 26, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 485, column: 6)
!5841 = !DILocation(line: 485, column: 6, scope: !5840)
!5842 = !DILocation(line: 485, column: 36, scope: !5840)
!5843 = !DILocation(line: 485, column: 6, scope: !5826)
!5844 = !DILocation(line: 486, column: 21, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 485, column: 45)
!5846 = !DILocation(line: 486, column: 3, scope: !5845)
!5847 = !DILocation(line: 487, column: 2, scope: !5845)
!5848 = !DILocation(line: 488, column: 19, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 487, column: 9)
!5850 = !DILocation(line: 488, column: 3, scope: !5849)
!5851 = !DILocation(line: 489, column: 20, scope: !5849)
!5852 = !DILocation(line: 489, column: 3, scope: !5849)
!5853 = !DILocation(line: 493, column: 12, scope: !5826)
!5854 = !DILocation(line: 493, column: 2, scope: !5826)
!5855 = !DILocation(line: 494, column: 15, scope: !5826)
!5856 = !DILocation(line: 494, column: 2, scope: !5826)
!5857 = !DILocation(line: 495, column: 15, scope: !5826)
!5858 = !DILocation(line: 495, column: 2, scope: !5826)
!5859 = !DILocation(line: 498, column: 12, scope: !5826)
!5860 = !DILocation(line: 498, column: 2, scope: !5826)
!5861 = !DILocation(line: 499, column: 13, scope: !5826)
!5862 = !DILocation(line: 499, column: 2, scope: !5826)
!5863 = !DILocation(line: 500, column: 17, scope: !5826)
!5864 = !DILocation(line: 500, column: 2, scope: !5826)
!5865 = !DILocation(line: 501, column: 12, scope: !5826)
!5866 = !DILocation(line: 501, column: 2, scope: !5826)
!5867 = !DILocation(line: 503, column: 31, scope: !5826)
!5868 = !DILocation(line: 503, column: 35, scope: !5826)
!5869 = !DILocation(line: 503, column: 2, scope: !5826)
!5870 = !DILocation(line: 504, column: 1, scope: !5826)
!5871 = distinct !DISubprogram(name: "rtl8168d_2_hw_phy_config", scope: !3, file: !3, line: 506, type: !5582, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5872)
!5872 = !{!5873, !5874}
!5873 = !DILocalVariable(name: "tp", arg: 1, scope: !5871, file: !3, line: 506, type: !6)
!5874 = !DILocalVariable(name: "phydev", arg: 2, scope: !5871, file: !3, line: 507, type: !9)
!5875 = !DILocation(line: 506, column: 62, scope: !5871)
!5876 = !DILocation(line: 507, column: 29, scope: !5871)
!5877 = !DILocation(line: 509, column: 2, scope: !5871)
!5878 = !DILocation(line: 511, column: 26, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 511, column: 6)
!5880 = !DILocation(line: 511, column: 6, scope: !5879)
!5881 = !DILocation(line: 511, column: 36, scope: !5879)
!5882 = !DILocation(line: 511, column: 6, scope: !5871)
!5883 = !DILocation(line: 512, column: 21, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 511, column: 45)
!5885 = !DILocation(line: 512, column: 3, scope: !5884)
!5886 = !DILocation(line: 513, column: 2, scope: !5884)
!5887 = !DILocation(line: 514, column: 19, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 513, column: 9)
!5889 = !DILocation(line: 514, column: 3, scope: !5888)
!5890 = !DILocation(line: 515, column: 20, scope: !5888)
!5891 = !DILocation(line: 515, column: 3, scope: !5888)
!5892 = !DILocation(line: 519, column: 12, scope: !5871)
!5893 = !DILocation(line: 519, column: 2, scope: !5871)
!5894 = !DILocation(line: 520, column: 13, scope: !5871)
!5895 = !DILocation(line: 520, column: 2, scope: !5871)
!5896 = !DILocation(line: 521, column: 17, scope: !5871)
!5897 = !DILocation(line: 521, column: 2, scope: !5871)
!5898 = !DILocation(line: 522, column: 12, scope: !5871)
!5899 = !DILocation(line: 522, column: 2, scope: !5871)
!5900 = !DILocation(line: 525, column: 19, scope: !5871)
!5901 = !DILocation(line: 525, column: 2, scope: !5871)
!5902 = !DILocation(line: 527, column: 31, scope: !5871)
!5903 = !DILocation(line: 527, column: 35, scope: !5871)
!5904 = !DILocation(line: 527, column: 2, scope: !5871)
!5905 = !DILocation(line: 528, column: 1, scope: !5871)
!5906 = distinct !DISubprogram(name: "rtl8168d_4_hw_phy_config", scope: !3, file: !3, line: 530, type: !5582, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5907)
!5907 = !{!5908, !5909}
!5908 = !DILocalVariable(name: "tp", arg: 1, scope: !5906, file: !3, line: 530, type: !6)
!5909 = !DILocalVariable(name: "phydev", arg: 2, scope: !5906, file: !3, line: 531, type: !9)
!5910 = !DILocation(line: 530, column: 62, scope: !5906)
!5911 = !DILocation(line: 531, column: 29, scope: !5906)
!5912 = !DILocation(line: 533, column: 18, scope: !5906)
!5913 = !DILocation(line: 533, column: 2, scope: !5906)
!5914 = !DILocation(line: 534, column: 24, scope: !5906)
!5915 = !DILocation(line: 534, column: 2, scope: !5906)
!5916 = !DILocation(line: 535, column: 15, scope: !5906)
!5917 = !DILocation(line: 535, column: 2, scope: !5906)
!5918 = !DILocation(line: 536, column: 1, scope: !5906)
!5919 = distinct !DISubprogram(name: "rtl8105e_hw_phy_config", scope: !3, file: !3, line: 947, type: !5582, scopeLine: 949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5920)
!5920 = !{!5921, !5922}
!5921 = !DILocalVariable(name: "tp", arg: 1, scope: !5919, file: !3, line: 947, type: !6)
!5922 = !DILocalVariable(name: "phydev", arg: 2, scope: !5919, file: !3, line: 948, type: !9)
!5923 = !DILocation(line: 947, column: 60, scope: !5919)
!5924 = !DILocation(line: 948, column: 27, scope: !5919)
!5925 = !DILocation(line: 951, column: 12, scope: !5919)
!5926 = !DILocation(line: 951, column: 2, scope: !5919)
!5927 = !DILocation(line: 952, column: 2, scope: !5919)
!5928 = !DILocation(line: 954, column: 23, scope: !5919)
!5929 = !DILocation(line: 954, column: 2, scope: !5919)
!5930 = !DILocation(line: 956, column: 18, scope: !5919)
!5931 = !DILocation(line: 956, column: 2, scope: !5919)
!5932 = !DILocation(line: 957, column: 18, scope: !5919)
!5933 = !DILocation(line: 957, column: 2, scope: !5919)
!5934 = !DILocation(line: 958, column: 18, scope: !5919)
!5935 = !DILocation(line: 958, column: 2, scope: !5919)
!5936 = !DILocation(line: 959, column: 1, scope: !5919)
!5937 = !DILocation(line: 538, column: 62, scope: !5666)
!5938 = !DILocation(line: 539, column: 29, scope: !5666)
!5939 = !DILocation(line: 552, column: 23, scope: !5666)
!5940 = !DILocation(line: 552, column: 2, scope: !5666)
!5941 = !DILocation(line: 555, column: 19, scope: !5666)
!5942 = !DILocation(line: 555, column: 2, scope: !5666)
!5943 = !DILocation(line: 557, column: 2, scope: !5666)
!5944 = !DILocation(line: 560, column: 24, scope: !5666)
!5945 = !DILocation(line: 560, column: 2, scope: !5666)
!5946 = !DILocation(line: 562, column: 24, scope: !5666)
!5947 = !DILocation(line: 562, column: 2, scope: !5666)
!5948 = !DILocation(line: 565, column: 24, scope: !5666)
!5949 = !DILocation(line: 565, column: 2, scope: !5666)
!5950 = !DILocation(line: 568, column: 19, scope: !5666)
!5951 = !DILocation(line: 568, column: 2, scope: !5666)
!5952 = !DILocation(line: 571, column: 24, scope: !5666)
!5953 = !DILocation(line: 571, column: 2, scope: !5666)
!5954 = !DILocation(line: 572, column: 15, scope: !5666)
!5955 = !DILocation(line: 572, column: 2, scope: !5666)
!5956 = !DILocation(line: 574, column: 19, scope: !5666)
!5957 = !DILocation(line: 574, column: 2, scope: !5666)
!5958 = !DILocation(line: 575, column: 19, scope: !5666)
!5959 = !DILocation(line: 575, column: 2, scope: !5666)
!5960 = !DILocation(line: 577, column: 24, scope: !5666)
!5961 = !DILocation(line: 577, column: 2, scope: !5666)
!5962 = !DILocation(line: 578, column: 18, scope: !5666)
!5963 = !DILocation(line: 578, column: 2, scope: !5666)
!5964 = !DILocation(line: 580, column: 16, scope: !5666)
!5965 = !DILocation(line: 580, column: 2, scope: !5666)
!5966 = !DILocation(line: 581, column: 1, scope: !5666)
!5967 = distinct !DISubprogram(name: "rtl8168e_2_hw_phy_config", scope: !3, file: !3, line: 583, type: !5582, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !5968)
!5968 = !{!5969, !5970}
!5969 = !DILocalVariable(name: "tp", arg: 1, scope: !5967, file: !3, line: 583, type: !6)
!5970 = !DILocalVariable(name: "phydev", arg: 2, scope: !5967, file: !3, line: 584, type: !9)
!5971 = !DILocation(line: 583, column: 62, scope: !5967)
!5972 = !DILocation(line: 584, column: 29, scope: !5967)
!5973 = !DILocation(line: 586, column: 23, scope: !5967)
!5974 = !DILocation(line: 586, column: 2, scope: !5967)
!5975 = !DILocation(line: 589, column: 24, scope: !5967)
!5976 = !DILocation(line: 589, column: 2, scope: !5967)
!5977 = !DILocation(line: 592, column: 18, scope: !5967)
!5978 = !DILocation(line: 592, column: 2, scope: !5967)
!5979 = !DILocation(line: 595, column: 19, scope: !5967)
!5980 = !DILocation(line: 595, column: 2, scope: !5967)
!5981 = !DILocation(line: 596, column: 19, scope: !5967)
!5982 = !DILocation(line: 596, column: 2, scope: !5967)
!5983 = !DILocation(line: 597, column: 19, scope: !5967)
!5984 = !DILocation(line: 597, column: 2, scope: !5967)
!5985 = !DILocation(line: 600, column: 12, scope: !5967)
!5986 = !DILocation(line: 600, column: 2, scope: !5967)
!5987 = !DILocation(line: 601, column: 12, scope: !5967)
!5988 = !DILocation(line: 601, column: 2, scope: !5967)
!5989 = !DILocation(line: 602, column: 15, scope: !5967)
!5990 = !DILocation(line: 602, column: 2, scope: !5967)
!5991 = !DILocation(line: 603, column: 12, scope: !5967)
!5992 = !DILocation(line: 603, column: 2, scope: !5967)
!5993 = !DILocation(line: 606, column: 24, scope: !5967)
!5994 = !DILocation(line: 606, column: 2, scope: !5967)
!5995 = !DILocation(line: 607, column: 15, scope: !5967)
!5996 = !DILocation(line: 607, column: 2, scope: !5967)
!5997 = !DILocation(line: 610, column: 19, scope: !5967)
!5998 = !DILocation(line: 610, column: 2, scope: !5967)
!5999 = !DILocation(line: 613, column: 19, scope: !5967)
!6000 = !DILocation(line: 613, column: 2, scope: !5967)
!6001 = !DILocation(line: 615, column: 26, scope: !5967)
!6002 = !DILocation(line: 615, column: 2, scope: !5967)
!6003 = !DILocation(line: 618, column: 12, scope: !5967)
!6004 = !DILocation(line: 618, column: 2, scope: !5967)
!6005 = !DILocation(line: 619, column: 15, scope: !5967)
!6006 = !DILocation(line: 619, column: 2, scope: !5967)
!6007 = !DILocation(line: 620, column: 15, scope: !5967)
!6008 = !DILocation(line: 620, column: 2, scope: !5967)
!6009 = !DILocation(line: 621, column: 12, scope: !5967)
!6010 = !DILocation(line: 621, column: 2, scope: !5967)
!6011 = !DILocation(line: 622, column: 19, scope: !5967)
!6012 = !DILocation(line: 622, column: 2, scope: !5967)
!6013 = !DILocation(line: 623, column: 1, scope: !5967)
!6014 = distinct !DISubprogram(name: "rtl8168f_1_hw_phy_config", scope: !3, file: !3, line: 641, type: !5582, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6015)
!6015 = !{!6016, !6017}
!6016 = !DILocalVariable(name: "tp", arg: 1, scope: !6014, file: !3, line: 641, type: !6)
!6017 = !DILocalVariable(name: "phydev", arg: 2, scope: !6014, file: !3, line: 642, type: !9)
!6018 = !DILocation(line: 641, column: 62, scope: !6014)
!6019 = !DILocation(line: 642, column: 29, scope: !6014)
!6020 = !DILocation(line: 644, column: 23, scope: !6014)
!6021 = !DILocation(line: 644, column: 2, scope: !6014)
!6022 = !DILocation(line: 647, column: 18, scope: !6014)
!6023 = !DILocation(line: 647, column: 2, scope: !6014)
!6024 = !DILocation(line: 650, column: 19, scope: !6014)
!6025 = !DILocation(line: 650, column: 2, scope: !6014)
!6026 = !DILocation(line: 651, column: 19, scope: !6014)
!6027 = !DILocation(line: 651, column: 2, scope: !6014)
!6028 = !DILocation(line: 652, column: 19, scope: !6014)
!6029 = !DILocation(line: 652, column: 2, scope: !6014)
!6030 = !DILocation(line: 653, column: 19, scope: !6014)
!6031 = !DILocation(line: 653, column: 2, scope: !6014)
!6032 = !DILocation(line: 654, column: 24, scope: !6014)
!6033 = !DILocation(line: 654, column: 2, scope: !6014)
!6034 = !DILocation(line: 655, column: 24, scope: !6014)
!6035 = !DILocation(line: 655, column: 2, scope: !6014)
!6036 = !DILocation(line: 658, column: 19, scope: !6014)
!6037 = !DILocation(line: 658, column: 2, scope: !6014)
!6038 = !DILocation(line: 661, column: 18, scope: !6014)
!6039 = !DILocation(line: 661, column: 2, scope: !6014)
!6040 = !DILocation(line: 663, column: 25, scope: !6014)
!6041 = !DILocation(line: 663, column: 29, scope: !6014)
!6042 = !DILocation(line: 663, column: 2, scope: !6014)
!6043 = !DILocation(line: 666, column: 19, scope: !6014)
!6044 = !DILocation(line: 666, column: 2, scope: !6014)
!6045 = !DILocation(line: 667, column: 1, scope: !6014)
!6046 = distinct !DISubprogram(name: "rtl8168f_2_hw_phy_config", scope: !3, file: !3, line: 669, type: !5582, scopeLine: 671, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6047)
!6047 = !{!6048, !6049}
!6048 = !DILocalVariable(name: "tp", arg: 1, scope: !6046, file: !3, line: 669, type: !6)
!6049 = !DILocalVariable(name: "phydev", arg: 2, scope: !6046, file: !3, line: 670, type: !9)
!6050 = !DILocation(line: 669, column: 62, scope: !6046)
!6051 = !DILocation(line: 670, column: 29, scope: !6046)
!6052 = !DILocation(line: 672, column: 23, scope: !6046)
!6053 = !DILocation(line: 672, column: 2, scope: !6046)
!6054 = !DILocation(line: 674, column: 25, scope: !6046)
!6055 = !DILocation(line: 674, column: 29, scope: !6046)
!6056 = !DILocation(line: 674, column: 2, scope: !6046)
!6057 = !DILocation(line: 675, column: 1, scope: !6046)
!6058 = distinct !DISubprogram(name: "rtl8402_hw_phy_config", scope: !3, file: !3, line: 961, type: !5582, scopeLine: 963, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6059)
!6059 = !{!6060, !6061}
!6060 = !DILocalVariable(name: "tp", arg: 1, scope: !6058, file: !3, line: 961, type: !6)
!6061 = !DILocalVariable(name: "phydev", arg: 2, scope: !6058, file: !3, line: 962, type: !9)
!6062 = !DILocation(line: 961, column: 59, scope: !6058)
!6063 = !DILocation(line: 962, column: 26, scope: !6058)
!6064 = !DILocation(line: 965, column: 12, scope: !6058)
!6065 = !DILocation(line: 965, column: 2, scope: !6058)
!6066 = !DILocation(line: 966, column: 2, scope: !6058)
!6067 = !DILocation(line: 968, column: 23, scope: !6058)
!6068 = !DILocation(line: 968, column: 2, scope: !6058)
!6069 = !DILocation(line: 971, column: 12, scope: !6058)
!6070 = !DILocation(line: 971, column: 2, scope: !6058)
!6071 = !DILocation(line: 972, column: 12, scope: !6058)
!6072 = !DILocation(line: 972, column: 2, scope: !6058)
!6073 = !DILocation(line: 973, column: 12, scope: !6058)
!6074 = !DILocation(line: 973, column: 2, scope: !6058)
!6075 = !DILocation(line: 974, column: 12, scope: !6058)
!6076 = !DILocation(line: 974, column: 2, scope: !6058)
!6077 = !DILocation(line: 975, column: 1, scope: !6058)
!6078 = distinct !DISubprogram(name: "rtl8411_hw_phy_config", scope: !3, file: !3, line: 677, type: !5582, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6079)
!6079 = !{!6080, !6081}
!6080 = !DILocalVariable(name: "tp", arg: 1, scope: !6078, file: !3, line: 677, type: !6)
!6081 = !DILocalVariable(name: "phydev", arg: 2, scope: !6078, file: !3, line: 678, type: !9)
!6082 = !DILocation(line: 677, column: 59, scope: !6078)
!6083 = !DILocation(line: 678, column: 26, scope: !6078)
!6084 = !DILocation(line: 680, column: 23, scope: !6078)
!6085 = !DILocation(line: 680, column: 2, scope: !6078)
!6086 = !DILocation(line: 682, column: 25, scope: !6078)
!6087 = !DILocation(line: 682, column: 29, scope: !6078)
!6088 = !DILocation(line: 682, column: 2, scope: !6078)
!6089 = !DILocation(line: 685, column: 19, scope: !6078)
!6090 = !DILocation(line: 685, column: 2, scope: !6078)
!6091 = !DILocation(line: 688, column: 18, scope: !6078)
!6092 = !DILocation(line: 688, column: 2, scope: !6078)
!6093 = !DILocation(line: 691, column: 19, scope: !6078)
!6094 = !DILocation(line: 691, column: 2, scope: !6078)
!6095 = !DILocation(line: 692, column: 19, scope: !6078)
!6096 = !DILocation(line: 692, column: 2, scope: !6078)
!6097 = !DILocation(line: 693, column: 19, scope: !6078)
!6098 = !DILocation(line: 693, column: 2, scope: !6078)
!6099 = !DILocation(line: 694, column: 19, scope: !6078)
!6100 = !DILocation(line: 694, column: 2, scope: !6078)
!6101 = !DILocation(line: 695, column: 24, scope: !6078)
!6102 = !DILocation(line: 695, column: 2, scope: !6078)
!6103 = !DILocation(line: 696, column: 24, scope: !6078)
!6104 = !DILocation(line: 696, column: 2, scope: !6078)
!6105 = !DILocation(line: 699, column: 19, scope: !6078)
!6106 = !DILocation(line: 699, column: 2, scope: !6078)
!6107 = !DILocation(line: 702, column: 18, scope: !6078)
!6108 = !DILocation(line: 702, column: 2, scope: !6078)
!6109 = !DILocation(line: 705, column: 19, scope: !6078)
!6110 = !DILocation(line: 705, column: 2, scope: !6078)
!6111 = !DILocation(line: 706, column: 19, scope: !6078)
!6112 = !DILocation(line: 706, column: 2, scope: !6078)
!6113 = !DILocation(line: 707, column: 19, scope: !6078)
!6114 = !DILocation(line: 707, column: 2, scope: !6078)
!6115 = !DILocation(line: 708, column: 19, scope: !6078)
!6116 = !DILocation(line: 708, column: 2, scope: !6078)
!6117 = !DILocation(line: 709, column: 19, scope: !6078)
!6118 = !DILocation(line: 709, column: 2, scope: !6078)
!6119 = !DILocation(line: 710, column: 19, scope: !6078)
!6120 = !DILocation(line: 710, column: 2, scope: !6078)
!6121 = !DILocation(line: 711, column: 19, scope: !6078)
!6122 = !DILocation(line: 711, column: 2, scope: !6078)
!6123 = !DILocation(line: 714, column: 19, scope: !6078)
!6124 = !DILocation(line: 714, column: 2, scope: !6078)
!6125 = !DILocation(line: 717, column: 12, scope: !6078)
!6126 = !DILocation(line: 717, column: 2, scope: !6078)
!6127 = !DILocation(line: 718, column: 17, scope: !6078)
!6128 = !DILocation(line: 718, column: 2, scope: !6078)
!6129 = !DILocation(line: 719, column: 17, scope: !6078)
!6130 = !DILocation(line: 719, column: 2, scope: !6078)
!6131 = !DILocation(line: 720, column: 12, scope: !6078)
!6132 = !DILocation(line: 720, column: 2, scope: !6078)
!6133 = !DILocation(line: 721, column: 1, scope: !6078)
!6134 = !DILocation(line: 977, column: 60, scope: !5673)
!6135 = !DILocation(line: 978, column: 27, scope: !5673)
!6136 = !DILocation(line: 988, column: 12, scope: !5673)
!6137 = !DILocation(line: 988, column: 2, scope: !5673)
!6138 = !DILocation(line: 989, column: 2, scope: !5673)
!6139 = !DILocation(line: 991, column: 23, scope: !5673)
!6140 = !DILocation(line: 991, column: 2, scope: !5673)
!6141 = !DILocation(line: 993, column: 2, scope: !5673)
!6142 = !DILocation(line: 994, column: 1, scope: !5673)
!6143 = distinct !DISubprogram(name: "rtl8168g_1_hw_phy_config", scope: !3, file: !3, line: 741, type: !5582, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6144)
!6144 = !{!6145, !6146, !6147}
!6145 = !DILocalVariable(name: "tp", arg: 1, scope: !6143, file: !3, line: 741, type: !6)
!6146 = !DILocalVariable(name: "phydev", arg: 2, scope: !6143, file: !3, line: 742, type: !9)
!6147 = !DILocalVariable(name: "ret", scope: !6143, file: !3, line: 744, type: !68)
!6148 = !DILocation(line: 741, column: 62, scope: !6143)
!6149 = !DILocation(line: 742, column: 29, scope: !6143)
!6150 = !DILocation(line: 744, column: 2, scope: !6143)
!6151 = !DILocation(line: 744, column: 6, scope: !6143)
!6152 = !DILocation(line: 746, column: 23, scope: !6143)
!6153 = !DILocation(line: 746, column: 2, scope: !6143)
!6154 = !DILocation(line: 748, column: 23, scope: !6143)
!6155 = !DILocation(line: 748, column: 8, scope: !6143)
!6156 = !DILocation(line: 748, column: 6, scope: !6143)
!6157 = !DILocation(line: 749, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 749, column: 6)
!6159 = !DILocation(line: 749, column: 10, scope: !6158)
!6160 = !DILocation(line: 749, column: 6, scope: !6143)
!6161 = !DILocation(line: 750, column: 20, scope: !6158)
!6162 = !DILocation(line: 750, column: 3, scope: !6158)
!6163 = !DILocation(line: 752, column: 20, scope: !6158)
!6164 = !DILocation(line: 752, column: 3, scope: !6158)
!6165 = !DILocation(line: 754, column: 23, scope: !6143)
!6166 = !DILocation(line: 754, column: 8, scope: !6143)
!6167 = !DILocation(line: 754, column: 6, scope: !6143)
!6168 = !DILocation(line: 755, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 755, column: 6)
!6170 = !DILocation(line: 755, column: 10, scope: !6169)
!6171 = !DILocation(line: 755, column: 6, scope: !6143)
!6172 = !DILocation(line: 756, column: 20, scope: !6169)
!6173 = !DILocation(line: 756, column: 3, scope: !6169)
!6174 = !DILocation(line: 758, column: 20, scope: !6169)
!6175 = !DILocation(line: 758, column: 3, scope: !6169)
!6176 = !DILocation(line: 761, column: 19, scope: !6143)
!6177 = !DILocation(line: 761, column: 2, scope: !6143)
!6178 = !DILocation(line: 763, column: 32, scope: !6143)
!6179 = !DILocation(line: 763, column: 2, scope: !6143)
!6180 = !DILocation(line: 766, column: 19, scope: !6143)
!6181 = !DILocation(line: 766, column: 2, scope: !6143)
!6182 = !DILocation(line: 769, column: 19, scope: !6143)
!6183 = !DILocation(line: 769, column: 2, scope: !6143)
!6184 = !DILocation(line: 771, column: 19, scope: !6143)
!6185 = !DILocation(line: 771, column: 2, scope: !6143)
!6186 = !DILocation(line: 774, column: 12, scope: !6143)
!6187 = !DILocation(line: 774, column: 2, scope: !6143)
!6188 = !DILocation(line: 775, column: 12, scope: !6143)
!6189 = !DILocation(line: 775, column: 2, scope: !6143)
!6190 = !DILocation(line: 776, column: 12, scope: !6143)
!6191 = !DILocation(line: 776, column: 2, scope: !6143)
!6192 = !DILocation(line: 777, column: 12, scope: !6143)
!6193 = !DILocation(line: 777, column: 2, scope: !6143)
!6194 = !DILocation(line: 778, column: 12, scope: !6143)
!6195 = !DILocation(line: 778, column: 2, scope: !6143)
!6196 = !DILocation(line: 779, column: 12, scope: !6143)
!6197 = !DILocation(line: 779, column: 2, scope: !6143)
!6198 = !DILocation(line: 780, column: 12, scope: !6143)
!6199 = !DILocation(line: 780, column: 2, scope: !6143)
!6200 = !DILocation(line: 781, column: 12, scope: !6143)
!6201 = !DILocation(line: 781, column: 2, scope: !6143)
!6202 = !DILocation(line: 782, column: 12, scope: !6143)
!6203 = !DILocation(line: 782, column: 2, scope: !6143)
!6204 = !DILocation(line: 783, column: 12, scope: !6143)
!6205 = !DILocation(line: 783, column: 2, scope: !6143)
!6206 = !DILocation(line: 785, column: 25, scope: !6143)
!6207 = !DILocation(line: 785, column: 2, scope: !6143)
!6208 = !DILocation(line: 786, column: 26, scope: !6143)
!6209 = !DILocation(line: 786, column: 2, scope: !6143)
!6210 = !DILocation(line: 787, column: 1, scope: !6143)
!6211 = distinct !DISubprogram(name: "rtl8168g_2_hw_phy_config", scope: !3, file: !3, line: 789, type: !5582, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6212)
!6212 = !{!6213, !6214}
!6213 = !DILocalVariable(name: "tp", arg: 1, scope: !6211, file: !3, line: 789, type: !6)
!6214 = !DILocalVariable(name: "phydev", arg: 2, scope: !6211, file: !3, line: 790, type: !9)
!6215 = !DILocation(line: 789, column: 62, scope: !6211)
!6216 = !DILocation(line: 790, column: 29, scope: !6211)
!6217 = !DILocation(line: 792, column: 23, scope: !6211)
!6218 = !DILocation(line: 792, column: 2, scope: !6211)
!6219 = !DILocation(line: 793, column: 26, scope: !6211)
!6220 = !DILocation(line: 793, column: 2, scope: !6211)
!6221 = !DILocation(line: 794, column: 1, scope: !6211)
!6222 = distinct !DISubprogram(name: "rtl8168h_2_hw_phy_config", scope: !3, file: !3, line: 796, type: !5582, scopeLine: 798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6223)
!6223 = !{!6224, !6225, !6226, !6227, !6228}
!6224 = !DILocalVariable(name: "tp", arg: 1, scope: !6222, file: !3, line: 796, type: !6)
!6225 = !DILocalVariable(name: "phydev", arg: 2, scope: !6222, file: !3, line: 797, type: !9)
!6226 = !DILocalVariable(name: "ioffset", scope: !6222, file: !3, line: 799, type: !83)
!6227 = !DILocalVariable(name: "rlen", scope: !6222, file: !3, line: 799, type: !83)
!6228 = !DILocalVariable(name: "data", scope: !6222, file: !3, line: 800, type: !267)
!6229 = !DILocation(line: 796, column: 62, scope: !6222)
!6230 = !DILocation(line: 797, column: 29, scope: !6222)
!6231 = !DILocation(line: 799, column: 2, scope: !6222)
!6232 = !DILocation(line: 799, column: 6, scope: !6222)
!6233 = !DILocation(line: 799, column: 15, scope: !6222)
!6234 = !DILocation(line: 800, column: 2, scope: !6222)
!6235 = !DILocation(line: 800, column: 6, scope: !6222)
!6236 = !DILocation(line: 802, column: 23, scope: !6222)
!6237 = !DILocation(line: 802, column: 2, scope: !6222)
!6238 = !DILocation(line: 805, column: 19, scope: !6222)
!6239 = !DILocation(line: 805, column: 2, scope: !6222)
!6240 = !DILocation(line: 808, column: 19, scope: !6222)
!6241 = !DILocation(line: 808, column: 2, scope: !6222)
!6242 = !DILocation(line: 809, column: 19, scope: !6222)
!6243 = !DILocation(line: 809, column: 2, scope: !6222)
!6244 = !DILocation(line: 811, column: 27, scope: !6222)
!6245 = !DILocation(line: 811, column: 2, scope: !6222)
!6246 = !DILocation(line: 813, column: 44, scope: !6222)
!6247 = !DILocation(line: 813, column: 12, scope: !6222)
!6248 = !DILocation(line: 813, column: 10, scope: !6222)
!6249 = !DILocation(line: 814, column: 6, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 814, column: 6)
!6251 = !DILocation(line: 814, column: 14, scope: !6250)
!6252 = !DILocation(line: 814, column: 6, scope: !6222)
!6253 = !DILocation(line: 815, column: 19, scope: !6250)
!6254 = !DILocation(line: 815, column: 41, scope: !6250)
!6255 = !DILocation(line: 815, column: 3, scope: !6250)
!6256 = !DILocation(line: 818, column: 24, scope: !6222)
!6257 = !DILocation(line: 818, column: 9, scope: !6222)
!6258 = !DILocation(line: 818, column: 7, scope: !6222)
!6259 = !DILocation(line: 819, column: 7, scope: !6222)
!6260 = !DILocation(line: 820, column: 7, scope: !6222)
!6261 = !DILocation(line: 821, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 821, column: 6)
!6263 = !DILocation(line: 821, column: 11, scope: !6262)
!6264 = !DILocation(line: 821, column: 6, scope: !6222)
!6265 = !DILocation(line: 822, column: 10, scope: !6262)
!6266 = !DILocation(line: 822, column: 15, scope: !6262)
!6267 = !DILocation(line: 822, column: 8, scope: !6262)
!6268 = !DILocation(line: 822, column: 3, scope: !6262)
!6269 = !DILocation(line: 823, column: 9, scope: !6222)
!6270 = !DILocation(line: 823, column: 17, scope: !6222)
!6271 = !DILocation(line: 823, column: 22, scope: !6222)
!6272 = !DILocation(line: 823, column: 14, scope: !6222)
!6273 = !DILocation(line: 823, column: 31, scope: !6222)
!6274 = !DILocation(line: 823, column: 36, scope: !6222)
!6275 = !DILocation(line: 823, column: 28, scope: !6222)
!6276 = !DILocation(line: 823, column: 45, scope: !6222)
!6277 = !DILocation(line: 823, column: 50, scope: !6222)
!6278 = !DILocation(line: 823, column: 42, scope: !6222)
!6279 = !DILocation(line: 823, column: 7, scope: !6222)
!6280 = !DILocation(line: 824, column: 18, scope: !6222)
!6281 = !DILocation(line: 824, column: 40, scope: !6222)
!6282 = !DILocation(line: 824, column: 2, scope: !6222)
!6283 = !DILocation(line: 827, column: 19, scope: !6222)
!6284 = !DILocation(line: 827, column: 2, scope: !6222)
!6285 = !DILocation(line: 830, column: 19, scope: !6222)
!6286 = !DILocation(line: 830, column: 2, scope: !6222)
!6287 = !DILocation(line: 832, column: 25, scope: !6222)
!6288 = !DILocation(line: 832, column: 2, scope: !6222)
!6289 = !DILocation(line: 833, column: 26, scope: !6222)
!6290 = !DILocation(line: 833, column: 2, scope: !6222)
!6291 = !DILocation(line: 834, column: 1, scope: !6222)
!6292 = distinct !DISubprogram(name: "rtl8168ep_2_hw_phy_config", scope: !3, file: !3, line: 836, type: !5582, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6293)
!6293 = !{!6294, !6295}
!6294 = !DILocalVariable(name: "tp", arg: 1, scope: !6292, file: !3, line: 836, type: !6)
!6295 = !DILocalVariable(name: "phydev", arg: 2, scope: !6292, file: !3, line: 837, type: !9)
!6296 = !DILocation(line: 836, column: 63, scope: !6292)
!6297 = !DILocation(line: 837, column: 30, scope: !6292)
!6298 = !DILocation(line: 839, column: 32, scope: !6292)
!6299 = !DILocation(line: 839, column: 2, scope: !6292)
!6300 = !DILocation(line: 842, column: 19, scope: !6292)
!6301 = !DILocation(line: 842, column: 2, scope: !6292)
!6302 = !DILocation(line: 845, column: 19, scope: !6292)
!6303 = !DILocation(line: 845, column: 2, scope: !6292)
!6304 = !DILocation(line: 848, column: 19, scope: !6292)
!6305 = !DILocation(line: 848, column: 2, scope: !6292)
!6306 = !DILocation(line: 849, column: 19, scope: !6292)
!6307 = !DILocation(line: 849, column: 2, scope: !6292)
!6308 = !DILocation(line: 850, column: 19, scope: !6292)
!6309 = !DILocation(line: 850, column: 2, scope: !6292)
!6310 = !DILocation(line: 851, column: 19, scope: !6292)
!6311 = !DILocation(line: 851, column: 2, scope: !6292)
!6312 = !DILocation(line: 852, column: 19, scope: !6292)
!6313 = !DILocation(line: 852, column: 2, scope: !6292)
!6314 = !DILocation(line: 853, column: 19, scope: !6292)
!6315 = !DILocation(line: 853, column: 2, scope: !6292)
!6316 = !DILocation(line: 854, column: 19, scope: !6292)
!6317 = !DILocation(line: 854, column: 2, scope: !6292)
!6318 = !DILocation(line: 855, column: 19, scope: !6292)
!6319 = !DILocation(line: 855, column: 2, scope: !6292)
!6320 = !DILocation(line: 856, column: 19, scope: !6292)
!6321 = !DILocation(line: 856, column: 2, scope: !6292)
!6322 = !DILocation(line: 857, column: 19, scope: !6292)
!6323 = !DILocation(line: 857, column: 2, scope: !6292)
!6324 = !DILocation(line: 858, column: 19, scope: !6292)
!6325 = !DILocation(line: 858, column: 2, scope: !6292)
!6326 = !DILocation(line: 859, column: 19, scope: !6292)
!6327 = !DILocation(line: 859, column: 2, scope: !6292)
!6328 = !DILocation(line: 860, column: 19, scope: !6292)
!6329 = !DILocation(line: 860, column: 2, scope: !6292)
!6330 = !DILocation(line: 861, column: 19, scope: !6292)
!6331 = !DILocation(line: 861, column: 2, scope: !6292)
!6332 = !DILocation(line: 862, column: 19, scope: !6292)
!6333 = !DILocation(line: 862, column: 2, scope: !6292)
!6334 = !DILocation(line: 863, column: 19, scope: !6292)
!6335 = !DILocation(line: 863, column: 2, scope: !6292)
!6336 = !DILocation(line: 864, column: 19, scope: !6292)
!6337 = !DILocation(line: 864, column: 2, scope: !6292)
!6338 = !DILocation(line: 865, column: 19, scope: !6292)
!6339 = !DILocation(line: 865, column: 2, scope: !6292)
!6340 = !DILocation(line: 866, column: 19, scope: !6292)
!6341 = !DILocation(line: 866, column: 2, scope: !6292)
!6342 = !DILocation(line: 867, column: 19, scope: !6292)
!6343 = !DILocation(line: 867, column: 2, scope: !6292)
!6344 = !DILocation(line: 868, column: 19, scope: !6292)
!6345 = !DILocation(line: 868, column: 2, scope: !6292)
!6346 = !DILocation(line: 871, column: 12, scope: !6292)
!6347 = !DILocation(line: 871, column: 2, scope: !6292)
!6348 = !DILocation(line: 872, column: 12, scope: !6292)
!6349 = !DILocation(line: 872, column: 2, scope: !6292)
!6350 = !DILocation(line: 873, column: 12, scope: !6292)
!6351 = !DILocation(line: 873, column: 2, scope: !6292)
!6352 = !DILocation(line: 874, column: 12, scope: !6292)
!6353 = !DILocation(line: 874, column: 2, scope: !6292)
!6354 = !DILocation(line: 875, column: 12, scope: !6292)
!6355 = !DILocation(line: 875, column: 2, scope: !6292)
!6356 = !DILocation(line: 876, column: 12, scope: !6292)
!6357 = !DILocation(line: 876, column: 2, scope: !6292)
!6358 = !DILocation(line: 877, column: 12, scope: !6292)
!6359 = !DILocation(line: 877, column: 2, scope: !6292)
!6360 = !DILocation(line: 878, column: 12, scope: !6292)
!6361 = !DILocation(line: 878, column: 2, scope: !6292)
!6362 = !DILocation(line: 879, column: 12, scope: !6292)
!6363 = !DILocation(line: 879, column: 2, scope: !6292)
!6364 = !DILocation(line: 880, column: 12, scope: !6292)
!6365 = !DILocation(line: 880, column: 2, scope: !6292)
!6366 = !DILocation(line: 882, column: 25, scope: !6292)
!6367 = !DILocation(line: 882, column: 2, scope: !6292)
!6368 = !DILocation(line: 883, column: 26, scope: !6292)
!6369 = !DILocation(line: 883, column: 2, scope: !6292)
!6370 = !DILocation(line: 884, column: 1, scope: !6292)
!6371 = distinct !DISubprogram(name: "rtl8117_hw_phy_config", scope: !3, file: !3, line: 886, type: !5582, scopeLine: 888, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6372)
!6372 = !{!6373, !6374}
!6373 = !DILocalVariable(name: "tp", arg: 1, scope: !6371, file: !3, line: 886, type: !6)
!6374 = !DILocalVariable(name: "phydev", arg: 2, scope: !6371, file: !3, line: 887, type: !9)
!6375 = !DILocation(line: 886, column: 59, scope: !6371)
!6376 = !DILocation(line: 887, column: 26, scope: !6371)
!6377 = !DILocation(line: 890, column: 19, scope: !6371)
!6378 = !DILocation(line: 890, column: 2, scope: !6371)
!6379 = !DILocation(line: 891, column: 19, scope: !6371)
!6380 = !DILocation(line: 891, column: 2, scope: !6371)
!6381 = !DILocation(line: 892, column: 19, scope: !6371)
!6382 = !DILocation(line: 892, column: 2, scope: !6371)
!6383 = !DILocation(line: 894, column: 19, scope: !6371)
!6384 = !DILocation(line: 894, column: 2, scope: !6371)
!6385 = !DILocation(line: 895, column: 19, scope: !6371)
!6386 = !DILocation(line: 895, column: 2, scope: !6371)
!6387 = !DILocation(line: 896, column: 19, scope: !6371)
!6388 = !DILocation(line: 896, column: 2, scope: !6371)
!6389 = !DILocation(line: 897, column: 19, scope: !6371)
!6390 = !DILocation(line: 897, column: 2, scope: !6371)
!6391 = !DILocation(line: 898, column: 19, scope: !6371)
!6392 = !DILocation(line: 898, column: 2, scope: !6371)
!6393 = !DILocation(line: 899, column: 19, scope: !6371)
!6394 = !DILocation(line: 899, column: 2, scope: !6371)
!6395 = !DILocation(line: 900, column: 19, scope: !6371)
!6396 = !DILocation(line: 900, column: 2, scope: !6371)
!6397 = !DILocation(line: 901, column: 19, scope: !6371)
!6398 = !DILocation(line: 901, column: 2, scope: !6371)
!6399 = !DILocation(line: 902, column: 19, scope: !6371)
!6400 = !DILocation(line: 902, column: 2, scope: !6371)
!6401 = !DILocation(line: 903, column: 19, scope: !6371)
!6402 = !DILocation(line: 903, column: 2, scope: !6371)
!6403 = !DILocation(line: 904, column: 19, scope: !6371)
!6404 = !DILocation(line: 904, column: 2, scope: !6371)
!6405 = !DILocation(line: 905, column: 19, scope: !6371)
!6406 = !DILocation(line: 905, column: 2, scope: !6371)
!6407 = !DILocation(line: 906, column: 19, scope: !6371)
!6408 = !DILocation(line: 906, column: 2, scope: !6371)
!6409 = !DILocation(line: 907, column: 19, scope: !6371)
!6410 = !DILocation(line: 907, column: 2, scope: !6371)
!6411 = !DILocation(line: 908, column: 19, scope: !6371)
!6412 = !DILocation(line: 908, column: 2, scope: !6371)
!6413 = !DILocation(line: 909, column: 19, scope: !6371)
!6414 = !DILocation(line: 909, column: 2, scope: !6371)
!6415 = !DILocation(line: 910, column: 19, scope: !6371)
!6416 = !DILocation(line: 910, column: 2, scope: !6371)
!6417 = !DILocation(line: 911, column: 19, scope: !6371)
!6418 = !DILocation(line: 911, column: 2, scope: !6371)
!6419 = !DILocation(line: 913, column: 19, scope: !6371)
!6420 = !DILocation(line: 913, column: 2, scope: !6371)
!6421 = !DILocation(line: 915, column: 27, scope: !6371)
!6422 = !DILocation(line: 915, column: 2, scope: !6371)
!6423 = !DILocation(line: 917, column: 19, scope: !6371)
!6424 = !DILocation(line: 917, column: 2, scope: !6371)
!6425 = !DILocation(line: 919, column: 25, scope: !6371)
!6426 = !DILocation(line: 919, column: 2, scope: !6371)
!6427 = !DILocation(line: 920, column: 26, scope: !6371)
!6428 = !DILocation(line: 920, column: 2, scope: !6371)
!6429 = !DILocation(line: 921, column: 1, scope: !6371)
!6430 = distinct !DISubprogram(name: "rtl8125a_2_hw_phy_config", scope: !3, file: !3, line: 1001, type: !5582, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6431)
!6431 = !{!6432, !6433, !6434}
!6432 = !DILocalVariable(name: "tp", arg: 1, scope: !6430, file: !3, line: 1001, type: !6)
!6433 = !DILocalVariable(name: "phydev", arg: 2, scope: !6430, file: !3, line: 1002, type: !9)
!6434 = !DILocalVariable(name: "i", scope: !6430, file: !3, line: 1004, type: !68)
!6435 = !DILocation(line: 1001, column: 62, scope: !6430)
!6436 = !DILocation(line: 1002, column: 29, scope: !6430)
!6437 = !DILocation(line: 1004, column: 2, scope: !6430)
!6438 = !DILocation(line: 1004, column: 6, scope: !6430)
!6439 = !DILocation(line: 1006, column: 19, scope: !6430)
!6440 = !DILocation(line: 1006, column: 2, scope: !6430)
!6441 = !DILocation(line: 1007, column: 19, scope: !6430)
!6442 = !DILocation(line: 1007, column: 2, scope: !6430)
!6443 = !DILocation(line: 1008, column: 19, scope: !6430)
!6444 = !DILocation(line: 1008, column: 2, scope: !6430)
!6445 = !DILocation(line: 1009, column: 19, scope: !6430)
!6446 = !DILocation(line: 1009, column: 2, scope: !6430)
!6447 = !DILocation(line: 1010, column: 19, scope: !6430)
!6448 = !DILocation(line: 1010, column: 2, scope: !6430)
!6449 = !DILocation(line: 1011, column: 19, scope: !6430)
!6450 = !DILocation(line: 1011, column: 2, scope: !6430)
!6451 = !DILocation(line: 1012, column: 19, scope: !6430)
!6452 = !DILocation(line: 1012, column: 2, scope: !6430)
!6453 = !DILocation(line: 1013, column: 19, scope: !6430)
!6454 = !DILocation(line: 1013, column: 2, scope: !6430)
!6455 = !DILocation(line: 1014, column: 19, scope: !6430)
!6456 = !DILocation(line: 1014, column: 2, scope: !6430)
!6457 = !DILocation(line: 1015, column: 18, scope: !6430)
!6458 = !DILocation(line: 1015, column: 2, scope: !6430)
!6459 = !DILocation(line: 1016, column: 18, scope: !6430)
!6460 = !DILocation(line: 1016, column: 2, scope: !6430)
!6461 = !DILocation(line: 1017, column: 19, scope: !6430)
!6462 = !DILocation(line: 1017, column: 2, scope: !6430)
!6463 = !DILocation(line: 1019, column: 12, scope: !6430)
!6464 = !DILocation(line: 1019, column: 2, scope: !6430)
!6465 = !DILocation(line: 1020, column: 12, scope: !6430)
!6466 = !DILocation(line: 1020, column: 2, scope: !6430)
!6467 = !DILocation(line: 1021, column: 12, scope: !6430)
!6468 = !DILocation(line: 1021, column: 2, scope: !6430)
!6469 = !DILocation(line: 1022, column: 12, scope: !6430)
!6470 = !DILocation(line: 1022, column: 2, scope: !6430)
!6471 = !DILocation(line: 1023, column: 12, scope: !6430)
!6472 = !DILocation(line: 1023, column: 2, scope: !6430)
!6473 = !DILocation(line: 1024, column: 12, scope: !6430)
!6474 = !DILocation(line: 1024, column: 2, scope: !6430)
!6475 = !DILocation(line: 1026, column: 12, scope: !6430)
!6476 = !DILocation(line: 1026, column: 2, scope: !6430)
!6477 = !DILocation(line: 1027, column: 12, scope: !6430)
!6478 = !DILocation(line: 1027, column: 2, scope: !6430)
!6479 = !DILocation(line: 1028, column: 12, scope: !6430)
!6480 = !DILocation(line: 1028, column: 2, scope: !6430)
!6481 = !DILocation(line: 1029, column: 12, scope: !6430)
!6482 = !DILocation(line: 1029, column: 2, scope: !6430)
!6483 = !DILocation(line: 1030, column: 12, scope: !6430)
!6484 = !DILocation(line: 1030, column: 2, scope: !6430)
!6485 = !DILocation(line: 1031, column: 12, scope: !6430)
!6486 = !DILocation(line: 1031, column: 2, scope: !6430)
!6487 = !DILocation(line: 1032, column: 12, scope: !6430)
!6488 = !DILocation(line: 1032, column: 2, scope: !6430)
!6489 = !DILocation(line: 1033, column: 12, scope: !6430)
!6490 = !DILocation(line: 1033, column: 2, scope: !6430)
!6491 = !DILocation(line: 1034, column: 12, scope: !6430)
!6492 = !DILocation(line: 1034, column: 2, scope: !6430)
!6493 = !DILocation(line: 1035, column: 12, scope: !6430)
!6494 = !DILocation(line: 1035, column: 2, scope: !6430)
!6495 = !DILocation(line: 1036, column: 12, scope: !6430)
!6496 = !DILocation(line: 1036, column: 2, scope: !6430)
!6497 = !DILocation(line: 1037, column: 12, scope: !6430)
!6498 = !DILocation(line: 1037, column: 2, scope: !6430)
!6499 = !DILocation(line: 1038, column: 12, scope: !6430)
!6500 = !DILocation(line: 1038, column: 2, scope: !6430)
!6501 = !DILocation(line: 1039, column: 12, scope: !6430)
!6502 = !DILocation(line: 1039, column: 2, scope: !6430)
!6503 = !DILocation(line: 1040, column: 12, scope: !6430)
!6504 = !DILocation(line: 1040, column: 2, scope: !6430)
!6505 = !DILocation(line: 1041, column: 12, scope: !6430)
!6506 = !DILocation(line: 1041, column: 2, scope: !6430)
!6507 = !DILocation(line: 1042, column: 12, scope: !6430)
!6508 = !DILocation(line: 1042, column: 2, scope: !6430)
!6509 = !DILocation(line: 1043, column: 9, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6430, file: !3, line: 1043, column: 2)
!6511 = !DILocation(line: 1043, column: 7, scope: !6510)
!6512 = !DILocation(line: 1043, column: 14, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6510, file: !3, line: 1043, column: 2)
!6514 = !DILocation(line: 1043, column: 16, scope: !6513)
!6515 = !DILocation(line: 1043, column: 2, scope: !6510)
!6516 = !DILocation(line: 1044, column: 13, scope: !6513)
!6517 = !DILocation(line: 1044, column: 3, scope: !6513)
!6518 = !DILocation(line: 1043, column: 23, scope: !6513)
!6519 = !DILocation(line: 1043, column: 2, scope: !6513)
!6520 = distinct !{!6520, !6515, !6521, !6522, !6523}
!6521 = !DILocation(line: 1044, column: 33, scope: !6510)
!6522 = !{!"llvm.loop.mustprogress"}
!6523 = !{!"llvm.loop.unroll.disable"}
!6524 = !DILocation(line: 1045, column: 12, scope: !6430)
!6525 = !DILocation(line: 1045, column: 2, scope: !6430)
!6526 = !DILocation(line: 1047, column: 19, scope: !6430)
!6527 = !DILocation(line: 1047, column: 2, scope: !6430)
!6528 = !DILocation(line: 1048, column: 19, scope: !6430)
!6529 = !DILocation(line: 1048, column: 2, scope: !6430)
!6530 = !DILocation(line: 1050, column: 23, scope: !6430)
!6531 = !DILocation(line: 1050, column: 2, scope: !6430)
!6532 = !DILocation(line: 1052, column: 19, scope: !6430)
!6533 = !DILocation(line: 1052, column: 2, scope: !6430)
!6534 = !DILocation(line: 1054, column: 19, scope: !6430)
!6535 = !DILocation(line: 1054, column: 2, scope: !6430)
!6536 = !DILocation(line: 1056, column: 19, scope: !6430)
!6537 = !DILocation(line: 1056, column: 2, scope: !6430)
!6538 = !DILocation(line: 1057, column: 19, scope: !6430)
!6539 = !DILocation(line: 1057, column: 2, scope: !6430)
!6540 = !DILocation(line: 1058, column: 19, scope: !6430)
!6541 = !DILocation(line: 1058, column: 2, scope: !6430)
!6542 = !DILocation(line: 1059, column: 19, scope: !6430)
!6543 = !DILocation(line: 1059, column: 2, scope: !6430)
!6544 = !DILocation(line: 1060, column: 19, scope: !6430)
!6545 = !DILocation(line: 1060, column: 2, scope: !6430)
!6546 = !DILocation(line: 1061, column: 27, scope: !6430)
!6547 = !DILocation(line: 1061, column: 2, scope: !6430)
!6548 = !DILocation(line: 1063, column: 25, scope: !6430)
!6549 = !DILocation(line: 1063, column: 2, scope: !6430)
!6550 = !DILocation(line: 1064, column: 26, scope: !6430)
!6551 = !DILocation(line: 1064, column: 2, scope: !6430)
!6552 = !DILocation(line: 1065, column: 1, scope: !6430)
!6553 = distinct !DISubprogram(name: "rtl8125b_hw_phy_config", scope: !3, file: !3, line: 1067, type: !5582, scopeLine: 1069, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6554)
!6554 = !{!6555, !6556}
!6555 = !DILocalVariable(name: "tp", arg: 1, scope: !6553, file: !3, line: 1067, type: !6)
!6556 = !DILocalVariable(name: "phydev", arg: 2, scope: !6553, file: !3, line: 1068, type: !9)
!6557 = !DILocation(line: 1067, column: 60, scope: !6553)
!6558 = !DILocation(line: 1068, column: 27, scope: !6553)
!6559 = !DILocation(line: 1070, column: 23, scope: !6553)
!6560 = !DILocation(line: 1070, column: 2, scope: !6553)
!6561 = !DILocation(line: 1072, column: 19, scope: !6553)
!6562 = !DILocation(line: 1072, column: 2, scope: !6553)
!6563 = !DILocation(line: 1073, column: 19, scope: !6553)
!6564 = !DILocation(line: 1073, column: 2, scope: !6553)
!6565 = !DILocation(line: 1074, column: 19, scope: !6553)
!6566 = !DILocation(line: 1074, column: 2, scope: !6553)
!6567 = !DILocation(line: 1076, column: 12, scope: !6553)
!6568 = !DILocation(line: 1076, column: 2, scope: !6553)
!6569 = !DILocation(line: 1077, column: 12, scope: !6553)
!6570 = !DILocation(line: 1077, column: 2, scope: !6553)
!6571 = !DILocation(line: 1078, column: 12, scope: !6553)
!6572 = !DILocation(line: 1078, column: 2, scope: !6553)
!6573 = !DILocation(line: 1079, column: 12, scope: !6553)
!6574 = !DILocation(line: 1079, column: 2, scope: !6553)
!6575 = !DILocation(line: 1080, column: 12, scope: !6553)
!6576 = !DILocation(line: 1080, column: 2, scope: !6553)
!6577 = !DILocation(line: 1081, column: 12, scope: !6553)
!6578 = !DILocation(line: 1081, column: 2, scope: !6553)
!6579 = !DILocation(line: 1082, column: 13, scope: !6553)
!6580 = !DILocation(line: 1082, column: 2, scope: !6553)
!6581 = !DILocation(line: 1083, column: 12, scope: !6553)
!6582 = !DILocation(line: 1083, column: 2, scope: !6553)
!6583 = !DILocation(line: 1085, column: 19, scope: !6553)
!6584 = !DILocation(line: 1085, column: 2, scope: !6553)
!6585 = !DILocation(line: 1086, column: 19, scope: !6553)
!6586 = !DILocation(line: 1086, column: 2, scope: !6553)
!6587 = !DILocation(line: 1088, column: 19, scope: !6553)
!6588 = !DILocation(line: 1088, column: 2, scope: !6553)
!6589 = !DILocation(line: 1089, column: 19, scope: !6553)
!6590 = !DILocation(line: 1089, column: 2, scope: !6553)
!6591 = !DILocation(line: 1090, column: 19, scope: !6553)
!6592 = !DILocation(line: 1090, column: 2, scope: !6553)
!6593 = !DILocation(line: 1091, column: 19, scope: !6553)
!6594 = !DILocation(line: 1091, column: 2, scope: !6553)
!6595 = !DILocation(line: 1092, column: 19, scope: !6553)
!6596 = !DILocation(line: 1092, column: 2, scope: !6553)
!6597 = !DILocation(line: 1093, column: 19, scope: !6553)
!6598 = !DILocation(line: 1093, column: 2, scope: !6553)
!6599 = !DILocation(line: 1094, column: 19, scope: !6553)
!6600 = !DILocation(line: 1094, column: 2, scope: !6553)
!6601 = !DILocation(line: 1095, column: 19, scope: !6553)
!6602 = !DILocation(line: 1095, column: 2, scope: !6553)
!6603 = !DILocation(line: 1096, column: 19, scope: !6553)
!6604 = !DILocation(line: 1096, column: 2, scope: !6553)
!6605 = !DILocation(line: 1097, column: 19, scope: !6553)
!6606 = !DILocation(line: 1097, column: 2, scope: !6553)
!6607 = !DILocation(line: 1099, column: 19, scope: !6553)
!6608 = !DILocation(line: 1099, column: 2, scope: !6553)
!6609 = !DILocation(line: 1100, column: 19, scope: !6553)
!6610 = !DILocation(line: 1100, column: 2, scope: !6553)
!6611 = !DILocation(line: 1102, column: 28, scope: !6553)
!6612 = !DILocation(line: 1102, column: 2, scope: !6553)
!6613 = !DILocation(line: 1103, column: 25, scope: !6553)
!6614 = !DILocation(line: 1103, column: 2, scope: !6553)
!6615 = !DILocation(line: 1104, column: 26, scope: !6553)
!6616 = !DILocation(line: 1104, column: 2, scope: !6553)
!6617 = !DILocation(line: 1105, column: 1, scope: !6553)
!6618 = distinct !DISubprogram(name: "__rtl_writephy_batch", scope: !3, file: !3, line: 58, type: !6619, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6622)
!6619 = !DISubroutineType(types: !6620)
!6620 = !{null, !9, !6621, !68}
!6621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!6622 = !{!6623, !6624, !6625}
!6623 = !DILocalVariable(name: "phydev", arg: 1, scope: !6618, file: !3, line: 58, type: !9)
!6624 = !DILocalVariable(name: "regs", arg: 2, scope: !6618, file: !3, line: 59, type: !6621)
!6625 = !DILocalVariable(name: "len", arg: 3, scope: !6618, file: !3, line: 59, type: !68)
!6626 = !DILocation(line: 58, column: 53, scope: !6618)
!6627 = !DILocation(line: 59, column: 28, scope: !6618)
!6628 = !DILocation(line: 59, column: 38, scope: !6618)
!6629 = !DILocation(line: 61, column: 20, scope: !6618)
!6630 = !DILocation(line: 61, column: 2, scope: !6618)
!6631 = !DILocation(line: 63, column: 2, scope: !6618)
!6632 = !DILocation(line: 63, column: 12, scope: !6618)
!6633 = !DILocation(line: 63, column: 15, scope: !6618)
!6634 = !DILocation(line: 64, column: 15, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 63, column: 20)
!6636 = !DILocation(line: 64, column: 23, scope: !6635)
!6637 = !DILocation(line: 64, column: 29, scope: !6635)
!6638 = !DILocation(line: 64, column: 34, scope: !6635)
!6639 = !DILocation(line: 64, column: 40, scope: !6635)
!6640 = !DILocation(line: 64, column: 3, scope: !6635)
!6641 = !DILocation(line: 65, column: 7, scope: !6635)
!6642 = distinct !{!6642, !6631, !6643, !6522, !6523}
!6643 = !DILocation(line: 66, column: 2, scope: !6618)
!6644 = !DILocation(line: 68, column: 22, scope: !6618)
!6645 = !DILocation(line: 68, column: 2, scope: !6618)
!6646 = !DILocation(line: 69, column: 1, scope: !6618)
!6647 = distinct !DISubprogram(name: "phy_lock_mdio_bus", scope: !11, file: !11, line: 1797, type: !4844, scopeLine: 1798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6648)
!6648 = !{!6649}
!6649 = !DILocalVariable(name: "phydev", arg: 1, scope: !6647, file: !11, line: 1797, type: !9)
!6650 = !DILocation(line: 1797, column: 57, scope: !6647)
!6651 = !DILocation(line: 1799, column: 14, scope: !6647)
!6652 = !DILocation(line: 1799, column: 22, scope: !6647)
!6653 = !DILocation(line: 1799, column: 27, scope: !6647)
!6654 = !DILocation(line: 1799, column: 32, scope: !6647)
!6655 = !DILocation(line: 1799, column: 2, scope: !6647)
!6656 = !DILocation(line: 1800, column: 1, scope: !6647)
!6657 = distinct !DISubprogram(name: "__phy_write", scope: !11, file: !11, line: 1293, type: !6658, scopeLine: 1294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6660)
!6658 = !DISubroutineType(types: !6659)
!6659 = !{!68, !9, !267, !83}
!6660 = !{!6661, !6662, !6663}
!6661 = !DILocalVariable(name: "phydev", arg: 1, scope: !6657, file: !11, line: 1293, type: !9)
!6662 = !DILocalVariable(name: "regnum", arg: 2, scope: !6657, file: !11, line: 1293, type: !267)
!6663 = !DILocalVariable(name: "val", arg: 3, scope: !6657, file: !11, line: 1293, type: !83)
!6664 = !DILocation(line: 1293, column: 50, scope: !6657)
!6665 = !DILocation(line: 1293, column: 62, scope: !6657)
!6666 = !DILocation(line: 1293, column: 74, scope: !6657)
!6667 = !DILocation(line: 1295, column: 25, scope: !6657)
!6668 = !DILocation(line: 1295, column: 33, scope: !6657)
!6669 = !DILocation(line: 1295, column: 38, scope: !6657)
!6670 = !DILocation(line: 1295, column: 43, scope: !6657)
!6671 = !DILocation(line: 1295, column: 51, scope: !6657)
!6672 = !DILocation(line: 1295, column: 56, scope: !6657)
!6673 = !DILocation(line: 1295, column: 62, scope: !6657)
!6674 = !DILocation(line: 1296, column: 11, scope: !6657)
!6675 = !DILocation(line: 1295, column: 9, scope: !6657)
!6676 = !DILocation(line: 1295, column: 2, scope: !6657)
!6677 = distinct !DISubprogram(name: "phy_unlock_mdio_bus", scope: !11, file: !11, line: 1802, type: !4844, scopeLine: 1803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6678)
!6678 = !{!6679}
!6679 = !DILocalVariable(name: "phydev", arg: 1, scope: !6677, file: !11, line: 1802, type: !9)
!6680 = !DILocation(line: 1802, column: 59, scope: !6677)
!6681 = !DILocation(line: 1804, column: 16, scope: !6677)
!6682 = !DILocation(line: 1804, column: 24, scope: !6677)
!6683 = !DILocation(line: 1804, column: 29, scope: !6677)
!6684 = !DILocation(line: 1804, column: 34, scope: !6677)
!6685 = !DILocation(line: 1804, column: 2, scope: !6677)
!6686 = !DILocation(line: 1805, column: 1, scope: !6677)
!6687 = !DISubprogram(name: "mutex_lock", scope: !466, file: !466, line: 227, type: !6688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6688 = !DISubroutineType(types: !6689)
!6689 = !{null, !6690}
!6690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!6691 = !DISubprogram(name: "__mdiobus_write", scope: !15, file: !15, line: 539, type: !6692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6692 = !DISubroutineType(types: !6693)
!6693 = !{!68, !4656, !68, !267, !83}
!6694 = !DISubprogram(name: "mutex_unlock", scope: !466, file: !466, line: 246, type: !6688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6695 = !DISubprogram(name: "phy_write_paged", scope: !11, file: !11, line: 1653, type: !6696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6696 = !DISubroutineType(types: !6697)
!6697 = !{!68, !9, !68, !267, !83}
!6698 = distinct !DISubprogram(name: "phy_set_bits", scope: !11, file: !11, line: 1424, type: !6658, scopeLine: 1425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6699)
!6699 = !{!6700, !6701, !6702}
!6700 = !DILocalVariable(name: "phydev", arg: 1, scope: !6698, file: !11, line: 1424, type: !9)
!6701 = !DILocalVariable(name: "regnum", arg: 2, scope: !6698, file: !11, line: 1424, type: !267)
!6702 = !DILocalVariable(name: "val", arg: 3, scope: !6698, file: !11, line: 1424, type: !83)
!6703 = !DILocation(line: 1424, column: 51, scope: !6698)
!6704 = !DILocation(line: 1424, column: 63, scope: !6698)
!6705 = !DILocation(line: 1424, column: 75, scope: !6698)
!6706 = !DILocation(line: 1426, column: 20, scope: !6698)
!6707 = !DILocation(line: 1426, column: 28, scope: !6698)
!6708 = !DILocation(line: 1426, column: 39, scope: !6698)
!6709 = !DILocation(line: 1426, column: 9, scope: !6698)
!6710 = !DILocation(line: 1426, column: 2, scope: !6698)
!6711 = !DISubprogram(name: "phy_modify", scope: !11, file: !11, line: 1380, type: !6712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6712 = !DISubroutineType(types: !6713)
!6713 = !{!68, !9, !267, !83, !83}
!6714 = distinct !DISubprogram(name: "phy_write", scope: !11, file: !11, line: 1280, type: !6658, scopeLine: 1281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6715)
!6715 = !{!6716, !6717, !6718}
!6716 = !DILocalVariable(name: "phydev", arg: 1, scope: !6714, file: !11, line: 1280, type: !9)
!6717 = !DILocalVariable(name: "regnum", arg: 2, scope: !6714, file: !11, line: 1280, type: !267)
!6718 = !DILocalVariable(name: "val", arg: 3, scope: !6714, file: !11, line: 1280, type: !83)
!6719 = !DILocation(line: 1280, column: 48, scope: !6714)
!6720 = !DILocation(line: 1280, column: 60, scope: !6714)
!6721 = !DILocation(line: 1280, column: 72, scope: !6714)
!6722 = !DILocation(line: 1282, column: 23, scope: !6714)
!6723 = !DILocation(line: 1282, column: 31, scope: !6714)
!6724 = !DILocation(line: 1282, column: 36, scope: !6714)
!6725 = !DILocation(line: 1282, column: 41, scope: !6714)
!6726 = !DILocation(line: 1282, column: 49, scope: !6714)
!6727 = !DILocation(line: 1282, column: 54, scope: !6714)
!6728 = !DILocation(line: 1282, column: 60, scope: !6714)
!6729 = !DILocation(line: 1282, column: 68, scope: !6714)
!6730 = !DILocation(line: 1282, column: 9, scope: !6714)
!6731 = !DILocation(line: 1282, column: 2, scope: !6714)
!6732 = !DISubprogram(name: "mdiobus_write", scope: !15, file: !15, line: 547, type: !6692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6733 = !DISubprogram(name: "phy_modify_paged", scope: !11, file: !11, line: 1656, type: !6734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!68, !9, !68, !267, !83, !83}
!6736 = !DISubprogram(name: "rtl8168d_efuse_read", scope: !8, file: !8, line: 77, type: !6737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6737 = !DISubroutineType(types: !6738)
!6738 = !{!73, !6, !68}
!6739 = !DILocation(line: 449, column: 50, scope: !5654)
!6740 = !DILocation(line: 451, column: 2, scope: !5654)
!6741 = !DILocation(line: 451, column: 6, scope: !5654)
!6742 = !DILocation(line: 453, column: 18, scope: !5654)
!6743 = !DILocation(line: 453, column: 2, scope: !5654)
!6744 = !DILocation(line: 454, column: 19, scope: !5654)
!6745 = !DILocation(line: 454, column: 2, scope: !5654)
!6746 = !DILocation(line: 455, column: 12, scope: !5654)
!6747 = !DILocation(line: 455, column: 2, scope: !5654)
!6748 = !DILocation(line: 457, column: 17, scope: !5654)
!6749 = !DILocation(line: 457, column: 8, scope: !5654)
!6750 = !DILocation(line: 457, column: 6, scope: !5654)
!6751 = !DILocation(line: 459, column: 7, scope: !5660)
!6752 = !DILocation(line: 459, column: 11, scope: !5660)
!6753 = !DILocation(line: 459, column: 21, scope: !5660)
!6754 = !DILocation(line: 459, column: 6, scope: !5654)
!6755 = !DILocation(line: 464, column: 3, scope: !5659)
!6756 = !DILocation(line: 464, column: 7, scope: !5659)
!6757 = !DILocation(line: 466, column: 7, scope: !5659)
!6758 = !DILocation(line: 467, column: 10, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 467, column: 3)
!6760 = !DILocation(line: 467, column: 8, scope: !6759)
!6761 = !DILocation(line: 467, column: 15, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6759, file: !3, line: 467, column: 3)
!6763 = !DILocation(line: 467, column: 17, scope: !6762)
!6764 = !DILocation(line: 467, column: 3, scope: !6759)
!6765 = !DILocation(line: 468, column: 14, scope: !6762)
!6766 = !DILocation(line: 468, column: 28, scope: !6762)
!6767 = !DILocation(line: 468, column: 38, scope: !6762)
!6768 = !DILocation(line: 468, column: 34, scope: !6762)
!6769 = !DILocation(line: 468, column: 32, scope: !6762)
!6770 = !DILocation(line: 468, column: 4, scope: !6762)
!6771 = !DILocation(line: 467, column: 37, scope: !6762)
!6772 = !DILocation(line: 467, column: 3, scope: !6762)
!6773 = distinct !{!6773, !6764, !6774, !6522, !6523}
!6774 = !DILocation(line: 468, column: 40, scope: !6759)
!6775 = !DILocation(line: 469, column: 2, scope: !5660)
!6776 = !DILocation(line: 469, column: 2, scope: !5659)
!6777 = !DILocation(line: 470, column: 1, scope: !5654)
!6778 = distinct !DISubprogram(name: "r8168d_phy_param", scope: !3, file: !3, line: 31, type: !6779, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6781)
!6779 = !DISubroutineType(types: !6780)
!6780 = !{null, !9, !83, !83, !83}
!6781 = !{!6782, !6783, !6784, !6785, !6786}
!6782 = !DILocalVariable(name: "phydev", arg: 1, scope: !6778, file: !3, line: 31, type: !9)
!6783 = !DILocalVariable(name: "parm", arg: 2, scope: !6778, file: !3, line: 31, type: !83)
!6784 = !DILocalVariable(name: "mask", arg: 3, scope: !6778, file: !3, line: 32, type: !83)
!6785 = !DILocalVariable(name: "val", arg: 4, scope: !6778, file: !3, line: 32, type: !83)
!6786 = !DILocalVariable(name: "oldpage", scope: !6778, file: !3, line: 34, type: !68)
!6787 = !DILocation(line: 31, column: 49, scope: !6778)
!6788 = !DILocation(line: 31, column: 61, scope: !6778)
!6789 = !DILocation(line: 32, column: 13, scope: !6778)
!6790 = !DILocation(line: 32, column: 23, scope: !6778)
!6791 = !DILocation(line: 34, column: 2, scope: !6778)
!6792 = !DILocation(line: 34, column: 6, scope: !6778)
!6793 = !DILocation(line: 34, column: 32, scope: !6778)
!6794 = !DILocation(line: 34, column: 16, scope: !6778)
!6795 = !DILocation(line: 36, column: 14, scope: !6778)
!6796 = !DILocation(line: 36, column: 28, scope: !6778)
!6797 = !DILocation(line: 36, column: 2, scope: !6778)
!6798 = !DILocation(line: 37, column: 15, scope: !6778)
!6799 = !DILocation(line: 37, column: 29, scope: !6778)
!6800 = !DILocation(line: 37, column: 35, scope: !6778)
!6801 = !DILocation(line: 37, column: 2, scope: !6778)
!6802 = !DILocation(line: 39, column: 19, scope: !6778)
!6803 = !DILocation(line: 39, column: 27, scope: !6778)
!6804 = !DILocation(line: 39, column: 2, scope: !6778)
!6805 = !DILocation(line: 40, column: 1, scope: !6778)
!6806 = distinct !DISubprogram(name: "phy_clear_bits", scope: !11, file: !11, line: 1435, type: !6658, scopeLine: 1436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6807)
!6807 = !{!6808, !6809, !6810}
!6808 = !DILocalVariable(name: "phydev", arg: 1, scope: !6806, file: !11, line: 1435, type: !9)
!6809 = !DILocalVariable(name: "regnum", arg: 2, scope: !6806, file: !11, line: 1435, type: !267)
!6810 = !DILocalVariable(name: "val", arg: 3, scope: !6806, file: !11, line: 1435, type: !83)
!6811 = !DILocation(line: 1435, column: 53, scope: !6806)
!6812 = !DILocation(line: 1435, column: 65, scope: !6806)
!6813 = !DILocation(line: 1435, column: 77, scope: !6806)
!6814 = !DILocation(line: 1437, column: 20, scope: !6806)
!6815 = !DILocation(line: 1437, column: 28, scope: !6806)
!6816 = !DILocation(line: 1437, column: 36, scope: !6806)
!6817 = !DILocation(line: 1437, column: 9, scope: !6806)
!6818 = !DILocation(line: 1437, column: 2, scope: !6806)
!6819 = distinct !DISubprogram(name: "rtl8168d_apply_firmware_cond", scope: !3, file: !3, line: 432, type: !6820, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6822)
!6820 = !DISubroutineType(types: !6821)
!6821 = !{null, !6, !9, !83}
!6822 = !{!6823, !6824, !6825, !6826}
!6823 = !DILocalVariable(name: "tp", arg: 1, scope: !6819, file: !3, line: 432, type: !6)
!6824 = !DILocalVariable(name: "phydev", arg: 2, scope: !6819, file: !3, line: 433, type: !9)
!6825 = !DILocalVariable(name: "val", arg: 3, scope: !6819, file: !3, line: 434, type: !83)
!6826 = !DILocalVariable(name: "reg_val", scope: !6819, file: !3, line: 436, type: !83)
!6827 = !DILocation(line: 432, column: 66, scope: !6819)
!6828 = !DILocation(line: 433, column: 26, scope: !6819)
!6829 = !DILocation(line: 434, column: 11, scope: !6819)
!6830 = !DILocation(line: 436, column: 2, scope: !6819)
!6831 = !DILocation(line: 436, column: 6, scope: !6819)
!6832 = !DILocation(line: 438, column: 12, scope: !6819)
!6833 = !DILocation(line: 438, column: 2, scope: !6819)
!6834 = !DILocation(line: 439, column: 12, scope: !6819)
!6835 = !DILocation(line: 439, column: 2, scope: !6819)
!6836 = !DILocation(line: 440, column: 21, scope: !6819)
!6837 = !DILocation(line: 440, column: 12, scope: !6819)
!6838 = !DILocation(line: 440, column: 10, scope: !6819)
!6839 = !DILocation(line: 441, column: 12, scope: !6819)
!6840 = !DILocation(line: 441, column: 2, scope: !6819)
!6841 = !DILocation(line: 443, column: 6, scope: !6842)
!6842 = distinct !DILexicalBlock(scope: !6819, file: !3, line: 443, column: 6)
!6843 = !DILocation(line: 443, column: 17, scope: !6842)
!6844 = !DILocation(line: 443, column: 14, scope: !6842)
!6845 = !DILocation(line: 443, column: 6, scope: !6819)
!6846 = !DILocation(line: 444, column: 3, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6842, file: !3, line: 444, column: 3)
!6848 = !DILocation(line: 444, column: 3, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 444, column: 3)
!6850 = !DILocation(line: 444, column: 3, scope: !6842)
!6851 = !DILocation(line: 446, column: 24, scope: !6842)
!6852 = !DILocation(line: 446, column: 3, scope: !6842)
!6853 = !DILocation(line: 447, column: 1, scope: !6819)
!6854 = distinct !DISubprogram(name: "phy_read", scope: !11, file: !11, line: 1239, type: !6855, scopeLine: 1240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6857)
!6855 = !DISubroutineType(types: !6856)
!6856 = !{!68, !9, !267}
!6857 = !{!6858, !6859}
!6858 = !DILocalVariable(name: "phydev", arg: 1, scope: !6854, file: !11, line: 1239, type: !9)
!6859 = !DILocalVariable(name: "regnum", arg: 2, scope: !6854, file: !11, line: 1239, type: !267)
!6860 = !DILocation(line: 1239, column: 47, scope: !6854)
!6861 = !DILocation(line: 1239, column: 59, scope: !6854)
!6862 = !DILocation(line: 1241, column: 22, scope: !6854)
!6863 = !DILocation(line: 1241, column: 30, scope: !6854)
!6864 = !DILocation(line: 1241, column: 35, scope: !6854)
!6865 = !DILocation(line: 1241, column: 40, scope: !6854)
!6866 = !DILocation(line: 1241, column: 48, scope: !6854)
!6867 = !DILocation(line: 1241, column: 53, scope: !6854)
!6868 = !DILocation(line: 1241, column: 59, scope: !6854)
!6869 = !DILocation(line: 1241, column: 9, scope: !6854)
!6870 = !DILocation(line: 1241, column: 2, scope: !6854)
!6871 = !DISubprogram(name: "mdiobus_read", scope: !15, file: !15, line: 545, type: !6872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6872 = !DISubroutineType(types: !6873)
!6873 = !{!68, !4656, !68, !267}
!6874 = !DISubprogram(name: "phy_select_page", scope: !11, file: !11, line: 1650, type: !4876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6875 = !DISubprogram(name: "__phy_modify", scope: !11, file: !11, line: 1379, type: !6712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6876 = !DISubprogram(name: "phy_restore_page", scope: !11, file: !11, line: 1651, type: !6877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6877 = !DISubroutineType(types: !6878)
!6878 = !{!68, !9, !68, !68}
!6879 = !DISubprogram(name: "_dev_warn", scope: !6880, file: !6880, line: 52, type: !6881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6880 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6881 = !DISubroutineType(types: !6882)
!6882 = !{null, !4158, !26, null}
!6883 = !DISubprogram(name: "r8169_apply_firmware", scope: !8, file: !8, line: 75, type: !6884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6884 = !DISubroutineType(types: !6885)
!6885 = !{null, !6}
!6886 = distinct !DISubprogram(name: "r8168d_modify_extpage", scope: !3, file: !3, line: 20, type: !6887, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6889)
!6887 = !DISubroutineType(types: !6888)
!6888 = !{null, !9, !68, !68, !83, !83}
!6889 = !{!6890, !6891, !6892, !6893, !6894, !6895}
!6890 = !DILocalVariable(name: "phydev", arg: 1, scope: !6886, file: !3, line: 20, type: !9)
!6891 = !DILocalVariable(name: "extpage", arg: 2, scope: !6886, file: !3, line: 20, type: !68)
!6892 = !DILocalVariable(name: "reg", arg: 3, scope: !6886, file: !3, line: 21, type: !68)
!6893 = !DILocalVariable(name: "mask", arg: 4, scope: !6886, file: !3, line: 21, type: !83)
!6894 = !DILocalVariable(name: "val", arg: 5, scope: !6886, file: !3, line: 21, type: !83)
!6895 = !DILocalVariable(name: "oldpage", scope: !6886, file: !3, line: 23, type: !68)
!6896 = !DILocation(line: 20, column: 54, scope: !6886)
!6897 = !DILocation(line: 20, column: 66, scope: !6886)
!6898 = !DILocation(line: 21, column: 11, scope: !6886)
!6899 = !DILocation(line: 21, column: 20, scope: !6886)
!6900 = !DILocation(line: 21, column: 30, scope: !6886)
!6901 = !DILocation(line: 23, column: 2, scope: !6886)
!6902 = !DILocation(line: 23, column: 6, scope: !6886)
!6903 = !DILocation(line: 23, column: 32, scope: !6886)
!6904 = !DILocation(line: 23, column: 16, scope: !6886)
!6905 = !DILocation(line: 25, column: 14, scope: !6886)
!6906 = !DILocation(line: 25, column: 28, scope: !6886)
!6907 = !DILocation(line: 25, column: 2, scope: !6886)
!6908 = !DILocation(line: 26, column: 15, scope: !6886)
!6909 = !DILocation(line: 26, column: 23, scope: !6886)
!6910 = !DILocation(line: 26, column: 28, scope: !6886)
!6911 = !DILocation(line: 26, column: 34, scope: !6886)
!6912 = !DILocation(line: 26, column: 2, scope: !6886)
!6913 = !DILocation(line: 28, column: 19, scope: !6886)
!6914 = !DILocation(line: 28, column: 27, scope: !6886)
!6915 = !DILocation(line: 28, column: 2, scope: !6886)
!6916 = !DILocation(line: 29, column: 1, scope: !6886)
!6917 = !DISubprogram(name: "msleep", scope: !6918, file: !6918, line: 61, type: !6919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6918 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!6919 = !DISubroutineType(types: !6920)
!6920 = !{null, !210}
!6921 = !DISubprogram(name: "phy_write_mmd", scope: !11, file: !11, line: 1367, type: !6696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6922 = distinct !DISubprogram(name: "rtl8168f_config_eee_phy", scope: !3, file: !3, line: 73, type: !4844, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6923)
!6923 = !{!6924}
!6924 = !DILocalVariable(name: "phydev", arg: 1, scope: !6922, file: !3, line: 73, type: !9)
!6925 = !DILocation(line: 73, column: 56, scope: !6922)
!6926 = !DILocation(line: 75, column: 24, scope: !6922)
!6927 = !DILocation(line: 75, column: 2, scope: !6922)
!6928 = !DILocation(line: 76, column: 19, scope: !6922)
!6929 = !DILocation(line: 76, column: 2, scope: !6922)
!6930 = !DILocation(line: 77, column: 1, scope: !6922)
!6931 = distinct !DISubprogram(name: "rtl8168f_hw_phy_config", scope: !3, file: !3, line: 625, type: !5582, scopeLine: 627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6932)
!6932 = !{!6933, !6934}
!6933 = !DILocalVariable(name: "tp", arg: 1, scope: !6931, file: !3, line: 625, type: !6)
!6934 = !DILocalVariable(name: "phydev", arg: 2, scope: !6931, file: !3, line: 626, type: !9)
!6935 = !DILocation(line: 625, column: 60, scope: !6931)
!6936 = !DILocation(line: 626, column: 27, scope: !6931)
!6937 = !DILocation(line: 629, column: 19, scope: !6931)
!6938 = !DILocation(line: 629, column: 2, scope: !6931)
!6939 = !DILocation(line: 632, column: 24, scope: !6931)
!6940 = !DILocation(line: 632, column: 2, scope: !6931)
!6941 = !DILocation(line: 633, column: 15, scope: !6931)
!6942 = !DILocation(line: 633, column: 2, scope: !6931)
!6943 = !DILocation(line: 636, column: 19, scope: !6931)
!6944 = !DILocation(line: 636, column: 2, scope: !6931)
!6945 = !DILocation(line: 638, column: 26, scope: !6931)
!6946 = !DILocation(line: 638, column: 2, scope: !6931)
!6947 = !DILocation(line: 639, column: 1, scope: !6931)
!6948 = !DISubprogram(name: "phy_read_paged", scope: !11, file: !11, line: 1652, type: !6949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6949 = !DISubroutineType(types: !6950)
!6950 = !{!68, !9, !68, !267}
!6951 = distinct !DISubprogram(name: "rtl8168g_phy_adjust_10m_aldps", scope: !3, file: !3, line: 733, type: !4844, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6952)
!6952 = !{!6953}
!6953 = !DILocalVariable(name: "phydev", arg: 1, scope: !6951, file: !3, line: 733, type: !9)
!6954 = !DILocation(line: 733, column: 62, scope: !6951)
!6955 = !DILocation(line: 735, column: 19, scope: !6951)
!6956 = !DILocation(line: 735, column: 2, scope: !6951)
!6957 = !DILocation(line: 736, column: 19, scope: !6951)
!6958 = !DILocation(line: 736, column: 2, scope: !6951)
!6959 = !DILocation(line: 737, column: 19, scope: !6951)
!6960 = !DILocation(line: 737, column: 2, scope: !6951)
!6961 = !DILocation(line: 738, column: 19, scope: !6951)
!6962 = !DILocation(line: 738, column: 2, scope: !6951)
!6963 = !DILocation(line: 739, column: 1, scope: !6951)
!6964 = distinct !DISubprogram(name: "r8168g_phy_param", scope: !3, file: !3, line: 42, type: !6779, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6965)
!6965 = !{!6966, !6967, !6968, !6969, !6970}
!6966 = !DILocalVariable(name: "phydev", arg: 1, scope: !6964, file: !3, line: 42, type: !9)
!6967 = !DILocalVariable(name: "parm", arg: 2, scope: !6964, file: !3, line: 42, type: !83)
!6968 = !DILocalVariable(name: "mask", arg: 3, scope: !6964, file: !3, line: 43, type: !83)
!6969 = !DILocalVariable(name: "val", arg: 4, scope: !6964, file: !3, line: 43, type: !83)
!6970 = !DILocalVariable(name: "oldpage", scope: !6964, file: !3, line: 45, type: !68)
!6971 = !DILocation(line: 42, column: 49, scope: !6964)
!6972 = !DILocation(line: 42, column: 61, scope: !6964)
!6973 = !DILocation(line: 43, column: 13, scope: !6964)
!6974 = !DILocation(line: 43, column: 23, scope: !6964)
!6975 = !DILocation(line: 45, column: 2, scope: !6964)
!6976 = !DILocation(line: 45, column: 6, scope: !6964)
!6977 = !DILocation(line: 45, column: 32, scope: !6964)
!6978 = !DILocation(line: 45, column: 16, scope: !6964)
!6979 = !DILocation(line: 47, column: 14, scope: !6964)
!6980 = !DILocation(line: 47, column: 28, scope: !6964)
!6981 = !DILocation(line: 47, column: 2, scope: !6964)
!6982 = !DILocation(line: 48, column: 15, scope: !6964)
!6983 = !DILocation(line: 48, column: 29, scope: !6964)
!6984 = !DILocation(line: 48, column: 35, scope: !6964)
!6985 = !DILocation(line: 48, column: 2, scope: !6964)
!6986 = !DILocation(line: 50, column: 19, scope: !6964)
!6987 = !DILocation(line: 50, column: 27, scope: !6964)
!6988 = !DILocation(line: 50, column: 2, scope: !6964)
!6989 = !DILocation(line: 51, column: 1, scope: !6964)
!6990 = distinct !DISubprogram(name: "rtl8168g_disable_aldps", scope: !3, file: !3, line: 723, type: !4844, scopeLine: 724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6991)
!6991 = !{!6992}
!6992 = !DILocalVariable(name: "phydev", arg: 1, scope: !6990, file: !3, line: 723, type: !9)
!6993 = !DILocation(line: 723, column: 55, scope: !6990)
!6994 = !DILocation(line: 725, column: 19, scope: !6990)
!6995 = !DILocation(line: 725, column: 2, scope: !6990)
!6996 = !DILocation(line: 726, column: 1, scope: !6990)
!6997 = distinct !DISubprogram(name: "rtl8168g_config_eee_phy", scope: !3, file: !3, line: 79, type: !4844, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !6998)
!6998 = !{!6999}
!6999 = !DILocalVariable(name: "phydev", arg: 1, scope: !6997, file: !3, line: 79, type: !9)
!7000 = !DILocation(line: 79, column: 56, scope: !6997)
!7001 = !DILocation(line: 81, column: 19, scope: !6997)
!7002 = !DILocation(line: 81, column: 2, scope: !6997)
!7003 = !DILocation(line: 82, column: 1, scope: !6997)
!7004 = distinct !DISubprogram(name: "rtl8168g_enable_gphy_10m", scope: !3, file: !3, line: 728, type: !4844, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !7005)
!7005 = !{!7006}
!7006 = !DILocalVariable(name: "phydev", arg: 1, scope: !7004, file: !3, line: 728, type: !9)
!7007 = !DILocation(line: 728, column: 57, scope: !7004)
!7008 = !DILocation(line: 730, column: 19, scope: !7004)
!7009 = !DILocation(line: 730, column: 2, scope: !7004)
!7010 = !DILocation(line: 731, column: 1, scope: !7004)
!7011 = !DISubprogram(name: "rtl8168h_2_get_adc_bias_ioffset", scope: !8, file: !8, line: 76, type: !7012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7012 = !DISubroutineType(types: !7013)
!7013 = !{!83, !6}
!7014 = distinct !DISubprogram(name: "rtl8168h_config_eee_phy", scope: !3, file: !3, line: 84, type: !4844, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !7015)
!7015 = !{!7016}
!7016 = !DILocalVariable(name: "phydev", arg: 1, scope: !7014, file: !3, line: 84, type: !9)
!7017 = !DILocation(line: 84, column: 56, scope: !7014)
!7018 = !DILocation(line: 86, column: 26, scope: !7014)
!7019 = !DILocation(line: 86, column: 2, scope: !7014)
!7020 = !DILocation(line: 88, column: 19, scope: !7014)
!7021 = !DILocation(line: 88, column: 2, scope: !7014)
!7022 = !DILocation(line: 89, column: 19, scope: !7014)
!7023 = !DILocation(line: 89, column: 2, scope: !7014)
!7024 = !DILocation(line: 90, column: 1, scope: !7014)
!7025 = distinct !DISubprogram(name: "rtl8125a_config_eee_phy", scope: !3, file: !3, line: 92, type: !4844, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !7026)
!7026 = !{!7027}
!7027 = !DILocalVariable(name: "phydev", arg: 1, scope: !7025, file: !3, line: 92, type: !9)
!7028 = !DILocation(line: 92, column: 56, scope: !7025)
!7029 = !DILocation(line: 94, column: 26, scope: !7025)
!7030 = !DILocation(line: 94, column: 2, scope: !7025)
!7031 = !DILocation(line: 96, column: 19, scope: !7025)
!7032 = !DILocation(line: 96, column: 2, scope: !7025)
!7033 = !DILocation(line: 97, column: 19, scope: !7025)
!7034 = !DILocation(line: 97, column: 2, scope: !7025)
!7035 = !DILocation(line: 98, column: 1, scope: !7025)
!7036 = distinct !DISubprogram(name: "rtl8125_legacy_force_mode", scope: !3, file: !3, line: 996, type: !4844, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !7037)
!7037 = !{!7038}
!7038 = !DILocalVariable(name: "phydev", arg: 1, scope: !7036, file: !3, line: 996, type: !9)
!7039 = !DILocation(line: 996, column: 58, scope: !7036)
!7040 = !DILocation(line: 998, column: 19, scope: !7036)
!7041 = !DILocation(line: 998, column: 2, scope: !7036)
!7042 = !DILocation(line: 999, column: 1, scope: !7036)
!7043 = distinct !DISubprogram(name: "rtl8125b_config_eee_phy", scope: !3, file: !3, line: 100, type: !4844, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5575, retainedNodes: !7044)
!7044 = !{!7045}
!7045 = !DILocalVariable(name: "phydev", arg: 1, scope: !7043, file: !3, line: 100, type: !9)
!7046 = !DILocation(line: 100, column: 56, scope: !7043)
!7047 = !DILocation(line: 102, column: 19, scope: !7043)
!7048 = !DILocation(line: 102, column: 2, scope: !7043)
!7049 = !DILocation(line: 103, column: 19, scope: !7043)
!7050 = !DILocation(line: 103, column: 2, scope: !7043)
!7051 = !DILocation(line: 104, column: 19, scope: !7043)
!7052 = !DILocation(line: 104, column: 2, scope: !7043)
!7053 = !DILocation(line: 105, column: 19, scope: !7043)
!7054 = !DILocation(line: 105, column: 2, scope: !7043)
!7055 = !DILocation(line: 106, column: 1, scope: !7043)
